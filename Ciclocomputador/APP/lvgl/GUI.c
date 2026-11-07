#include "GUI.h"
#include "task.h"
#include "ui.h"
#include <stdio.h>
#include <math.h>
#include <stddef.h>
#include "fit_task.h"
#include "task_pulsador.h"

static void MaquinaConfiguracion(uint32_t ev) ;
static void maquina_sd(Evento_sd_t ev) ;
static void settings_ui_refresh(void) ;
static void settings_value_increase(uint8_t index) ;
static void altimetria_add_sample(float altitude);
static void altimetria_reset(void);


QueueHandle_t Queue_dashboard;
/* Cola propia del display. task_pulsador.c debe enviar los eventos aca
 * (no a Queue_evento_sd, porque esa cola la consume task_fit y se perderian eventos). */
QueueHandle_t Queue_display_eventos;

static lv_group_t * settings_group;

/* Estado de grabacion (valores REC_*) */
typedef enum {
    REC_IDLE = 0,
    REC_RECORDING,
    REC_PAUSED,
    REC_SAVING
} RecState_t;

typedef enum {
    SESSION_SIN_FIX = 0,
    SESSION_LISTO,
    SESSION_REC,
    SESSION_PAUSA,
    SESSION_GUARDANDO
} SessionStatus_t;

/* Configuracion editable desde la pantalla de ajustes.
 * TODO: mover esta estructura/variable a un modulo de configuracion compartido. */
typedef struct {
    uint16_t wheel_mm;
    uint8_t brightness;
    uint8_t units;
    int16_t altitude_offset;
} GuiConfig_t;

static GuiConfig_t config = { 2070, 100, 0, 0 };

static RecState_t s_rec = REC_IDLE;
static uint8_t s_last_satellites = 0;
static uint8_t s_page = SCREEN_ID_DASHBOARD_SCREEN;

static ConfigState_t s_config_state = CONFIG_UNSELECT;
static Config_index_t s_config_index = CFG_CIRCUNF;

#define ALT_HISTORY_SIZE        600U
#define ALT_SAMPLE_PERIOD_MS    1000U
#define ALT_CHART_POINTS        180U

static int16_t alt_history[ALT_HISTORY_SIZE];
static int16_t alt_snapshot[ALT_HISTORY_SIZE];
static volatile uint16_t alt_head;
static volatile uint16_t alt_count;
static TickType_t alt_last_sample_tick;
static uint8_t alt_has_sample;
static lv_chart_series_t * alt_series;
static uint16_t alt_last_render_head;
static uint16_t alt_last_render_count;
static int32_t alt_values[ALT_CHART_POINTS];

/* Funciones de notificacion/SD que deben implementarse fuera de este archivo */
void toast_show(const char *txt, uint32_t duration_ms);
void spinner_show(const char *txt);
void spinner_hide(void);
void msgbox_error(const char *msg);
const char * logger_get_last_error(void);

static lv_obj_t * toast_obj = NULL;

static void toast_delete_cb(lv_event_t * e)
{
    if (lv_event_get_target(e) == toast_obj)
        toast_obj = NULL;
}

void toast_show(const char *txt, uint32_t duration_ms)
{
    /* Si ya hay un toast, lo saco para que no se superpongan */
    if (toast_obj != NULL) {
        lv_obj_t * old = toast_obj;
        toast_obj = NULL;
        lv_obj_delete(old);
    }

    /* lv_layer_top() queda por encima de las pantallas y no se pierde
       si se cambia de screen */
    toast_obj = lv_obj_create(lv_layer_top());

    lv_obj_remove_style_all(toast_obj);
    lv_obj_set_size(toast_obj, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
    lv_obj_remove_flag(toast_obj, LV_OBJ_FLAG_SCROLLABLE);

    lv_obj_set_style_bg_color(toast_obj, lv_color_hex(0x1E1E1E), LV_PART_MAIN);
    lv_obj_set_style_bg_opa(toast_obj, LV_OPA_90, LV_PART_MAIN);
    lv_obj_set_style_radius(toast_obj, 12, LV_PART_MAIN);
    lv_obj_set_style_pad_hor(toast_obj, 24, LV_PART_MAIN);
    lv_obj_set_style_pad_ver(toast_obj, 12, LV_PART_MAIN);
    lv_obj_set_style_border_width(toast_obj, 0, LV_PART_MAIN);

    lv_obj_align(toast_obj, LV_ALIGN_CENTER, 0, 0);

    lv_obj_t * lbl = lv_label_create(toast_obj);
    lv_label_set_text(lbl, txt);
    lv_obj_set_style_text_color(lbl, lv_color_hex(0xFFFFFF), LV_PART_MAIN);
    lv_obj_set_style_text_font(lbl, &lv_font_montserrat_16, LV_PART_MAIN);
    lv_obj_center(lbl);

    lv_obj_add_event_cb(toast_obj, toast_delete_cb, LV_EVENT_DELETE, NULL);

    /* Se borra solo pasado duration_ms */
    lv_obj_delete_delayed(toast_obj, duration_ms);
}

static lv_obj_t * saving_obj = NULL;
static lv_obj_t * saving_lbl = NULL;
static lv_timer_t * saving_timer = NULL;
static uint8_t saving_dot_index = 0;

static void saving_toast_timer_cb(lv_timer_t * t)
{
    static const char * dots[] = { ".", "..", "..." };
    char txt[24];

    (void)t;

    if (saving_lbl == NULL)
        return;

    snprintf(txt, sizeof(txt), "Guardando%s", dots[saving_dot_index]);
    lv_label_set_text(saving_lbl, txt);

    saving_dot_index = (saving_dot_index + 1) % 3;
}

void spinner_show(const char *txt)
{
    (void)txt; /* el texto es fijo: "Guardando..." */

    if (saving_obj != NULL)
        return; /* ya esta visible */

    saving_obj = lv_obj_create(lv_layer_top());
    lv_obj_remove_style_all(saving_obj);
    lv_obj_set_size(saving_obj, 160, 48); /* ancho fijo: evita saltos */
    lv_obj_remove_flag(saving_obj, LV_OBJ_FLAG_SCROLLABLE);

    lv_obj_set_style_bg_color(saving_obj, lv_color_hex(0x000000), LV_PART_MAIN);
    lv_obj_set_style_bg_opa(saving_obj, LV_OPA_80, LV_PART_MAIN);
    lv_obj_set_style_radius(saving_obj, 12, LV_PART_MAIN);
    lv_obj_set_style_border_width(saving_obj, 0, LV_PART_MAIN);
    lv_obj_align(saving_obj, LV_ALIGN_BOTTOM_MID, 0, -20);

    saving_lbl = lv_label_create(saving_obj);
    lv_label_set_text(saving_lbl, "Guardando.");
    lv_obj_set_style_text_color(saving_lbl, lv_color_hex(0xFFFFFF), LV_PART_MAIN);
    lv_obj_set_style_text_font(saving_lbl, &lv_font_montserrat_16, LV_PART_MAIN);
    lv_obj_center(saving_lbl);

    saving_dot_index = 0;
    saving_timer = lv_timer_create(saving_toast_timer_cb, 400, NULL);
}

void spinner_hide(void)
{
    /* Primero el timer, despues el objeto */
    if (saving_timer != NULL) {
        lv_timer_delete(saving_timer);
        saving_timer = NULL;
    }

    if (saving_obj != NULL) {
        lv_obj_t * old = saving_obj;
        saving_obj = NULL;
        saving_lbl = NULL;
        lv_obj_delete(old);
    }
}

static lv_obj_t * error_box = NULL;
static lv_obj_t * error_text_lbl = NULL;
static lv_timer_t * error_timer = NULL;

static void error_box_deleted_cb(lv_event_t * e)
{
    if (lv_event_get_target(e) == error_box) {
        error_box = NULL;
        error_text_lbl = NULL;

        if (error_timer != NULL) {
            lv_timer_delete(error_timer);
            error_timer = NULL;
        }
    }
}

static void error_box_close(void)
{
    if (error_timer != NULL) {
        lv_timer_delete(error_timer);
        error_timer = NULL;
    }

    if (error_box == NULL)
        return;

    lv_obj_t * old = error_box;
    error_box = NULL;
    error_text_lbl = NULL;
    lv_msgbox_close(old);
}

static void error_box_timeout_cb(lv_timer_t * t)
{
    (void)t;
    error_timer = NULL; /* el timer se auto-borra al terminar */
    error_box_close();
}

static void error_box_accept_cb(lv_event_t * e)
{
    (void)e;
    error_box_close();
}

void msgbox_error(const char *msg)
{
    const char * txt = (msg != NULL) ? msg : "Error desconocido";

    if (error_box != NULL) {
        if (error_text_lbl != NULL)
            lv_label_set_text(error_text_lbl, txt);
        return;
    }

    error_box = lv_msgbox_create(NULL); /* NULL = modal en lv_layer_top() */
    if (error_box == NULL)
        return;

    lv_msgbox_add_title(error_box, "Error");
    error_text_lbl = lv_msgbox_add_text(error_box, txt);

    lv_obj_t * btn = lv_msgbox_add_footer_button(error_box, "Aceptar");
    lv_obj_add_event_cb(btn, error_box_accept_cb, LV_EVENT_CLICKED, NULL);

    lv_obj_add_event_cb(error_box, error_box_deleted_cb, LV_EVENT_DELETE, NULL);

    /* Respaldo por si no llega el evento del pulsador */
    error_timer = lv_timer_create(error_box_timeout_cb, 5000, NULL);
    if (error_timer != NULL)
        lv_timer_set_repeat_count(error_timer, 1);
}

const char * logger_get_last_error(void)
{
    return "Error de tarjeta SD";
}

void ui_init_groups(void)
{

    settings_group = lv_group_create();

    lv_group_add_obj(settings_group, objects.cont_circun);
    lv_group_add_obj(settings_group, objects.cont_brillo);
    lv_group_add_obj(settings_group,objects.cont_config_altitud);

    settings_ui_refresh();

    lv_obj_t *focus;
    focus=lv_group_get_focused(settings_group);
    lv_obj_clear_state(focus, LV_STATE_FOCUSED);
}

void dashboard_create(void)
{
	if (Queue_display_eventos == NULL)
		Queue_display_eventos = xQueueCreate(10, sizeof(uint8_t));

	Display1_INIT();
	ui_init();
	ui_init_groups();
	loadScreen(SCREEN_ID_DASHBOARD_SCREEN);
}

void float2string(float dato,char* buf){
	/* Se formatea siempre el valor absoluto: el signo lo agrega el llamador. */
	float valor = (dato < 0.0f) ? -dato : dato;
	int total_decimas = (int)(valor * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;

	snprintf(buf,20,"%d.%d",entero,decimal);
}

void update_data_display(Dashboard_data_t datos){
	altimetria_add_sample(datos.altitude);
	xQueueOverwrite(Queue_dashboard,&datos);
}

void update_dashboard(){
	Dashboard_data_t datos;
	char buf[30];

	if (xQueueReceive(Queue_dashboard, &datos, 0) != pdPASS) {
		return;
	}

	//Velocidad
	float2string(datos.speed, buf);
	lv_label_set_text(objects.lbl_velocidad, buf);


	//Tiempo
	//dashboard_set_time(datos.time);
	if (datos.time != NULL) {
		lv_label_set_text(objects.lbl_time, datos.time);
	}

	// Velocidad Media
	float2string(datos.avg_speed, buf);
	lv_label_set_text(objects.lbl_vel_media,buf);

	//Distancia
	float2string(datos.distance, buf);
	lv_label_set_text(objects.lbl_distance,buf);


	//Altura
	float2string(datos.altitude,&buf[1]);
	if(datos.altitude>=0){
		buf[0]='+';
	}else{
		buf[0]='-';
	}
	lv_label_set_text(objects.lbl_altura,buf);


	//Pendiente
	float2string(datos.slope,&buf[1]);
	if(datos.slope>=0){
		buf[0]='+';
	}else{
		buf[0]='-';
	}
	lv_label_set_text(objects.lbl_slope,buf);

	//Bateria
	snprintf(buf,4,"%d%%",datos.battery);
	lv_label_set_text(objects.lbl_bateria,buf);

	//Satelites
	snprintf(buf,8,"%d",datos.satellites);
	lv_label_set_text(objects.lbl_satelite,buf);
	s_last_satellites = datos.satellites;
}

static void altimetria_add_sample(float altitude)
{
    TickType_t now = xTaskGetTickCount();
    int32_t value;
    float rounded;

    rounded = (altitude >= 0.0f) ? (altitude + 0.5f) : (altitude - 0.5f);
    value = (int32_t)rounded;
    if (value > INT16_MAX) value = INT16_MAX;
    if (value < INT16_MIN) value = INT16_MIN;

    taskENTER_CRITICAL();
    if (alt_has_sample &&
        (now - alt_last_sample_tick) < pdMS_TO_TICKS(ALT_SAMPLE_PERIOD_MS)) {
        taskEXIT_CRITICAL();
        return;
    }

    alt_last_sample_tick = now;
    alt_has_sample = 1;
    alt_history[alt_head] = (int16_t)value;
    alt_head = (uint16_t)((alt_head + 1U) % ALT_HISTORY_SIZE);
    if (alt_count < ALT_HISTORY_SIZE)
        alt_count++;
    taskEXIT_CRITICAL();
}

static void altimetria_reset(void)
{
    taskENTER_CRITICAL();
    alt_head = 0;
    alt_count = 0;
    alt_has_sample = 0;
    taskEXIT_CRITICAL();

    alt_last_render_head = 0xFFFFU;
    alt_last_render_count = 0xFFFFU;
}

static void altimetria_chart_init(void)
{
    lv_obj_t * chart = objects.chart_altimetria;

    if (alt_series != NULL || chart == NULL)
        return;

    lv_chart_set_type(chart, LV_CHART_TYPE_LINE);
    lv_chart_set_point_count(chart, ALT_CHART_POINTS);
    lv_chart_set_div_line_count(chart, 4, 5);
    lv_obj_set_style_line_width(chart, 2, LV_PART_ITEMS);
    lv_obj_set_style_size(chart, 0, 0, LV_PART_INDICATOR);

    alt_series = lv_chart_add_series(chart, lv_color_hex(0x2196F3),
                                     LV_CHART_AXIS_PRIMARY_Y);
}

static void update_altimetria(void)
{
    lv_obj_t * chart = objects.chart_altimetria;
    uint16_t head;
    uint16_t count;
    uint16_t start;
    uint16_t i;
    int32_t min_value;
    int32_t max_value;

    altimetria_chart_init();
    if (chart == NULL || alt_series == NULL)
        return;

    taskENTER_CRITICAL();
    head = alt_head;
    count = alt_count;

    if (head == alt_last_render_head && count == alt_last_render_count) {
        taskEXIT_CRITICAL();
        return;
    }

    start = (uint16_t)((head + ALT_HISTORY_SIZE - count) % ALT_HISTORY_SIZE);
    for (i = 0; i < count; i++)
        alt_snapshot[i] = alt_history[(uint16_t)((start + i) % ALT_HISTORY_SIZE)];
    taskEXIT_CRITICAL();

    alt_last_render_head = head;
    alt_last_render_count = count;

    if (count == 0) {
        for (i = 0; i < ALT_CHART_POINTS; i++)
            alt_values[i] = 0;

        lv_chart_set_axis_range(chart, LV_CHART_AXIS_PRIMARY_Y, 0, 100);
    } else {
        if (count <= ALT_CHART_POINTS) {
            for (i = 0; i < count; i++)
                alt_values[i] = alt_snapshot[i];

            for (; i < ALT_CHART_POINTS; i++)
                alt_values[i] = alt_values[count - 1];
        } else {
            for (i = 0; i < ALT_CHART_POINTS; i++) {
                uint32_t first = (i * count) / ALT_CHART_POINTS;
                uint32_t last = ((i + 1U) * count) / ALT_CHART_POINTS;
                int32_t sum = 0;
                uint32_t n;

                if (last <= first)
                    last = first + 1U;

                for (n = first; n < last; n++)
                    sum += alt_snapshot[n];

                alt_values[i] = sum / (int32_t)(last - first);
            }
        }

        min_value = alt_values[0];
        max_value = alt_values[0];

        for (i = 1; i < ALT_CHART_POINTS; i++) {
            if (alt_values[i] < min_value) min_value = alt_values[i];
            if (alt_values[i] > max_value) max_value = alt_values[i];
        }

        if (max_value == min_value) {
            min_value -= 10;
            max_value += 10;
        } else {
            int32_t margin = (max_value - min_value) / 10;
            if (margin < 1) margin = 1;
            min_value -= margin;
            max_value += margin;
        }

        lv_chart_set_axis_range(chart, LV_CHART_AXIS_PRIMARY_Y, min_value, max_value);
    }

    lv_chart_set_series_values(chart, alt_series, alt_values, ALT_CHART_POINTS);
    lv_chart_refresh(chart);
}

static lv_obj_t * settings_group_item(uint8_t index)
{
    switch (index)
    {
        case CFG_CIRCUNF: return objects.cont_circun;
        case CFG_BRILLO:  return objects.cont_brillo;
        case CFG_ALTITUD: return objects.cont_config_altitud;
        default:          return NULL;   /* CFG_UNIDADES todavia no tiene objeto en la UI */
    }
}

static Config_index_t settings_move_index(Config_index_t index, int8_t dir)
{
    const int count = CFG_ALTITUD + 1;
    int i = (int)index;

    for (int n = 0; n < count; n++) {
        i = (i + dir + count) % count;
        if (settings_group_item((uint8_t)i) != NULL)
            return (Config_index_t)i;
    }
    return index;
}

static void settings_edit_enter(uint8_t index)
{
    lv_obj_t * obj = settings_group_item(index);
    if (obj != NULL) lv_group_focus_obj(obj);
}

static void settings_exit(void)
{
	lv_obj_t *focus;
	focus=lv_group_get_focused(settings_group);
	lv_obj_clear_state(focus, LV_STATE_FOCUSED);
    s_config_state = CONFIG_UNSELECT;
    s_config_index = CFG_CIRCUNF;
}

static void settings_save(void)
{
    /* TODO: persistir config (flash/SD) */
}

static void settings_cancel(void)
{
    settings_ui_refresh();
}

static void settings_value_decrease(uint8_t index)
{
    switch (index)
    {
        case CFG_CIRCUNF:
            if (config.wheel_mm > 0)
                config.wheel_mm -= 1;
            break;

        case CFG_BRILLO:
            if (config.brightness >= 5)
                config.brightness -= 5;
            break;

        case CFG_UNIDADES:
            config.units = !config.units;
            break;

        case CFG_ALTITUD:
            config.altitude_offset -= 1;
            break;
    }
}

static void settings_ui_refresh(void)
{
    char buf[16];
    lv_obj_t * obj;

    if (s_config_state == CONFIG_EDIT && s_config_index == CFG_CIRCUNF)
        snprintf(buf, sizeof(buf), "<%u>", (unsigned)config.wheel_mm);
    else
        snprintf(buf, sizeof(buf), "%u", (unsigned)config.wheel_mm);
    lv_label_set_text(objects.lbl_circunferencia, buf);

    if (s_config_state == CONFIG_EDIT && s_config_index == CFG_BRILLO)
        snprintf(buf, sizeof(buf), "<%u>", (unsigned)config.brightness);
    else
        snprintf(buf, sizeof(buf), "%u", (unsigned)config.brightness);
    lv_label_set_text(objects.lbl_brillo, buf);

    if (s_config_state == CONFIG_EDIT && s_config_index == CFG_ALTITUD)
        snprintf(buf, sizeof(buf), "<%d>", (int)config.altitude_offset);
    else
        snprintf(buf, sizeof(buf), "%d", (int)config.altitude_offset);
    lv_label_set_text(objects.lbl_config_altitud, buf);

    obj = settings_group_item(s_config_index);
    if (obj != NULL) lv_group_focus_obj(obj);
}

static void maquina_pagina(Evento_sd_t ev_sd, uint8_t ev_pulsador)
{
    uint8_t ev = ev_pulsador;

    (void)ev_sd;

    if (s_rec == REC_SAVING) return;

    switch (s_page) {
    case SCREEN_ID_DASHBOARD_SCREEN:
    	update_dashboard();
        if (ev == EV_BTN_NEXT){
        	s_page = SCREEN_ID_ALTIMETRIA_SCREEN;
        	loadScreen(SCREEN_ID_ALTIMETRIA_SCREEN);
        }
        break;
    case SCREEN_ID_ALTIMETRIA_SCREEN:
    	update_altimetria();
    	if(ev == EV_BTN_NEXT){
    		s_page = SCREEN_ID_SETTINGS_SCREEN;
    		loadScreen(SCREEN_ID_SETTINGS_SCREEN);
    	} else if (ev == EV_BTN_PREV) {
    		s_page = SCREEN_ID_DASHBOARD_SCREEN;
    		loadScreen(SCREEN_ID_DASHBOARD_SCREEN);
    	}
    	break;
    case SCREEN_ID_SETTINGS_SCREEN:
       MaquinaConfiguracion(ev);
       break;
    }
}

static uint8_t evento_para_sd(uint8_t ev)
{
    if (s_page != SCREEN_ID_DASHBOARD_SCREEN)
        return 0;

    if (s_rec == REC_SAVING)
        return 0;

    if (ev != EV_BTN_MENU_SHORT && ev != EV_BTN_MENU_LONG)
        return 0;

    return 1;
}


void vTaskLVGL(void *pvParameters)
{
	Evento_sd_t ev_sd = EV_NONE;
	uint8_t ev_pulsador = 0xFF;

	lv_init();
	dashboard_create();

    for (;;)
    {
        uint8_t ev;
        Evento_sd_t ev_aux;
        uint8_t ev_para_sd = 0;

        lv_timer_handler();

        //ACA RECIBE POR QUEUEU
        ev_pulsador = 0xFF;
        if (Queue_display_eventos != NULL) {
            if (xQueueReceive(Queue_display_eventos, &ev, 0) == pdPASS)
                ev_pulsador = ev;
        }

        ev_sd = EV_NONE;
        if (Queue_sd_eventos != NULL) {
            if (xQueueReceive(Queue_sd_eventos, &ev_aux, 0) == pdPASS)
                ev_sd = ev_aux;
        }

        if (error_box != NULL && ev_pulsador != 0xFF) {
            error_box_close();
            ev_pulsador = 0xFF; /* el pulsador solo cierra el modal */
        }

        if (ev_pulsador != 0xFF)
            ev_para_sd = evento_para_sd(ev_pulsador);

        maquina_pagina(ev_sd, ev_pulsador);
        maquina_sd(ev_sd);

        /* La GUI reenvia a task_fit solo los comandos de grabacion
         * emitidos desde el dashboard. */
        if (ev_para_sd && s_rec != REC_SAVING &&
            error_box == NULL && Queue_evento_sd != NULL) {
            xQueueSend(Queue_evento_sd, &ev_pulsador, 0);
        }

        vTaskDelay(pdMS_TO_TICKS(5));
    }
}


static void MaquinaConfiguracion(uint32_t ev){

	  switch (s_config_state)
	    {
	  	  	case CONFIG_UNSELECT:
	  	  		if(ev== EV_BTN_MENU_SHORT){
	  	  			s_config_state=CONFIG_SELECT;
	  	  			settings_ui_refresh();
	  	  		}else if(ev== EV_BTN_NEXT){
	  	  			s_page = SCREEN_ID_DASHBOARD_SCREEN;
	  	  			loadScreen(SCREEN_ID_DASHBOARD_SCREEN);
	  	  		}else if(ev == EV_BTN_PREV){
	  	  			s_page = SCREEN_ID_ALTIMETRIA_SCREEN;
	  	  		    loadScreen(SCREEN_ID_ALTIMETRIA_SCREEN);
	  	  		}
	  	  		break;
	        case CONFIG_SELECT:

	            if (ev == EV_BTN_NEXT)
	            {
	                s_config_index = settings_move_index(s_config_index, +1);
	                settings_ui_refresh();
	            }
	            else if (ev == EV_BTN_PREV)
	            {
	                s_config_index = settings_move_index(s_config_index, -1);
	                settings_ui_refresh();
	            }
	            else if (ev == EV_BTN_MENU_SHORT)
	            {
	                settings_edit_enter(s_config_index);
	                s_config_state = CONFIG_EDIT;
	                settings_ui_refresh();
	            }
	            else if (ev == EV_BTN_MENU_LONG)
	            {
	                settings_exit();
	            }

	            break;


	        case CONFIG_EDIT:

	            if (ev == EV_BTN_NEXT)
	            {
	                settings_value_increase(s_config_index);
	                settings_ui_refresh();
	            }
	            else if (ev == EV_BTN_PREV)
	            {
	                settings_value_decrease(s_config_index);
	                settings_ui_refresh();
	            }
	            else if (ev == EV_BTN_MENU_SHORT)
	            {
	                settings_save();
	                s_config_state = CONFIG_SELECT;
	                settings_ui_refresh();
	            }
	            else if (ev == EV_BTN_MENU_LONG)
	            {
	                settings_cancel();
	                s_config_state = CONFIG_SELECT;
	                settings_ui_refresh();
	            }

	            break;
	    }
}



static void update_estado_sesion(void)
{
    static SessionStatus_t last_status = (SessionStatus_t)-1;
    SessionStatus_t status;
    const char *text;
    lv_color_t color;

    switch (s_rec) {
    case REC_SAVING:
        status = SESSION_GUARDANDO;
        break;
    case REC_PAUSED:
        status = SESSION_PAUSA;
        break;
    case REC_RECORDING:
        status = SESSION_REC;
        break;
    case REC_IDLE:
    default:
        status = (s_last_satellites > 0) ? SESSION_LISTO : SESSION_SIN_FIX;
        break;
    }

    if (status == last_status)
        return;

    last_status = status;

    switch (status) {
    case SESSION_REC:
        text = "•rec";
        color = lv_color_hex(0xFF5252);
        break;
    case SESSION_PAUSA:
        text = "pausa";
        color = lv_color_hex(0xFFB74D);
        break;
    case SESSION_GUARDANDO:
        text = "guardando";
        color = lv_color_hex(0x64B5F6);
        break;
    case SESSION_LISTO:
        text = "listo";
        color = lv_color_hex(0x81C784);
        break;
    case SESSION_SIN_FIX:
    default:
        text = "sin fix";
        color = lv_color_hex(0xB0BEC5);
        break;
    }

    lv_label_set_text(objects.lbl_estado_sesion, text);
    lv_obj_set_style_text_color(objects.lbl_estado_sesion, color, 0);
}

static void maquina_sd(Evento_sd_t ev)
{
    // Se procesan en orden lógico, por si llegaron varios bits juntos

    if (ev == EV_REC_STARTED) {
        altimetria_reset();
        s_rec = REC_RECORDING;
        toast_show("Grabando", 2000);
    }
    if ((ev == EV_PAUSED) && s_rec == REC_RECORDING) {
        s_rec = REC_PAUSED;
        toast_show("Pausado", 2000);
    }
    if ((ev==EV_RESUMED) && s_rec == REC_PAUSED) {
        s_rec = REC_RECORDING;
        toast_show("Reanudado", 2000);
    }
    if (ev == EV_SAVING) {
        s_rec = REC_SAVING;
        spinner_show("Guardando");
    }
    if (ev == EV_SAVED) {                       // válido desde cualquier estado
        s_rec = REC_IDLE;
        spinner_hide();
        toast_show("Actividad guardada", 2000);
    }
    if (ev == EV_SAVE_ERROR) {
        s_rec = REC_IDLE;
        spinner_hide();
        msgbox_error(logger_get_last_error()); // modal, con botón aceptar
    }
    if (ev == EV_SD_ERROR) {
        if (s_rec != REC_SAVING) s_rec = REC_IDLE;   // no llegó a grabar
        msgbox_error(logger_get_last_error());
    }

    update_estado_sesion();
}



/* Duplicados: ahora se declaran al principio del archivo.
static ConfigState_t s_config_state = CONFIG_SELECT;
static uint8_t s_config_index = 0;
*/

/* Version anterior, reemplazada por settings_ui_refresh() definida arriba.
void settings_ui_refresh(){
	lv_group_focus_next(settings_group);
}
*/

static void settings_value_increase(uint8_t index)
{
    switch (index)
    {
        case CFG_CIRCUNF:
            config.wheel_mm += 1;
            break;

        case CFG_BRILLO:
            if (config.brightness <= 95)
                config.brightness += 5;
            break;

        case CFG_UNIDADES:
            config.units = !config.units;
            break;

        case CFG_ALTITUD:
            config.altitude_offset += 1;
            break;
    }
}


/* ============================================================
 * Codigo anterior (comentado, no borrar)
 * ============================================================ */

/*
void float2string(float dato,char* buf){
	int total_decimas = (int)(dato * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;

	snprintf(buf,20,"%d.%d",entero,decimal);
}

static void update_altimetria(){}

static void maquina_pagina(uint8_t ev_sd, uint8_t ev_pulsador)
{
    if (s_rec == REC_SAVING) return;

    switch (s_page) {
    case SCREEN_ID_DASHBOARD_SCREEN:
    	update_dashboard();
        if (ev == EV_BTN_NEXT){
        	s_page = SCREEN_ID_ALTIMETRIA_SCREEN;
        	loadScreen(SCREEN_ID_ALTIMETRIA_SCREEN);
        }
        break;
    case SCREEN_ID_ALTIMETRIA_SCREEN:
    	if(ev & EV_BTN_NEXT){
    		s_page = SCREEN_ID_SETTINGS_SCREEN;
    		loadScreen(SCREEN_ID_SETTINGS_SCREEN);
    	}
    	break;
    case SCREEN_ID_SETTINGS_SCREEN:
       MaquinaConfiguracion(ev);
       break;
    }
}

void vTaskLVGL(void *pvParameters)
{
	lv_init();
	dashboard_create();

    for (;;)
    {
        lv_timer_handler();

        //ACA RECIBE POR QUEUEU
        maquina_pagina(ev_sd,ev_pulsador);
        //maquina_sd(ev);

        vTaskDelay(pdMS_TO_TICKS(5));
    }
}

static void MaquinaConfiguracion(Evento_sd_t ev_sd,uint8_t ev_pulsador){

	Config_index_t s_config_index;
	  switch (s_config_state)
	    {
	        case CONFIG_SELECT:

	            if (ev == EV_BTN_NEXT)
	            {
	                s_config_index++;

	                if (s_config_index >= CFG_ALTITUD)
	                    s_config_index = 0;

	                settings_ui_refresh();
	            }
	            else if (ev == EV_BTN_PREV)
	            {
	                if (s_config_index == 0)
	                    s_config_index = CFG_ALTITUD - 1;
	                else
	                    s_config_index--;

	                settings_ui_refresh();
	            }
	            else if (ev == EV_BTN_MENU_SHORT)
	            {
	                settings_edit_enter(s_config_index);
	                s_config_state = CONFIG_EDIT;
	            }
	            else if (ev == EV_BTN_MENU_LONG)
	            {
	                settings_exit();
	            }

	            break;


	        case CONFIG_EDIT:

	            if (ev & EV_BTN_NEXT)
	            {
	                settings_value_increase(s_config_index);
	                settings_ui_refresh();
	            }
	            else if (ev_sd ==  EV_BTN_PREV)
	            {
	                settings_value_decrease(s_config_index);
	                settings_ui_refresh();
	            }
	            else if (ev_sd == EV_BTN_MENU_SHORT)
	            {
	                settings_save();
	                s_config_state = CONFIG_SELECT;
	                settings_ui_refresh();
	            }
	            else if (ev_sd == EV_BTN_MENU_LONG)
	            {
	                settings_cancel();
	                s_config_state = CONFIG_SELECT;
	                settings_ui_refresh();
	            }

	            break;
	    }
}
*/

