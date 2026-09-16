#include "dashboard.h"
#include "dashboard_styles.h"
#include "dashboard_card.h"
#include "task.h"

/* --- Topbar --- */
static lv_obj_t *sat_label;
static lv_obj_t *battery_label;

/* --- Cards de la grilla --- */
static dashboard_card_t card_speed;      /* hero */
static dashboard_card_t card_distance;
static dashboard_card_t card_time;
static dashboard_card_t card_avg_speed;
static dashboard_card_t card_altitude;
static dashboard_card_t card_slope;
static dashboard_card_t card_extra;

/* 2 columnas iguales. 4 filas: la primera para el hero (VEL),
 * las otras 3 para los pares de cards chicas. Ajustá los LV_GRID_FR
 * si querés que el hero ocupe más o menos alto relativo. */
static lv_coord_t col_dsc[] = {LV_GRID_FR(1), LV_GRID_FR(1), LV_GRID_TEMPLATE_LAST};
static lv_coord_t row_dsc[] = {LV_GRID_FR(1), LV_GRID_FR(1), LV_GRID_FR(1), LV_GRID_FR(1),
                                LV_GRID_TEMPLATE_LAST};

QueueHandle_t Queue_dashboard;

static void create_topbar(lv_obj_t *parent)
{
    lv_obj_t *bar = lv_obj_create(parent);
    lv_obj_remove_style_all(bar);
    lv_obj_add_style(bar, &style_topbar, 0);
    lv_obj_set_width(bar, lv_pct(100));
    lv_obj_set_height(bar, LV_SIZE_CONTENT);
    lv_obj_set_flex_flow(bar, LV_FLEX_FLOW_ROW);
    lv_obj_set_flex_align(bar, LV_FLEX_ALIGN_SPACE_BETWEEN,
                           LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);

    sat_label = lv_label_create(bar);
    lv_obj_add_style(sat_label, &style_topbar_text, 0);
    lv_label_set_text(sat_label, "sat --");

    battery_label = lv_label_create(bar);
    lv_obj_add_style(battery_label, &style_topbar_text, 0);
    lv_label_set_text(battery_label, "--%");
}

void dashboard_create(void)
{
    dashboard_styles_init();

    lv_obj_t *scr = lv_scr_act();
    lv_obj_set_style_bg_color(scr, lv_color_hex(0xEAEAEA), 0);
    lv_obj_set_style_pad_all(scr, 0, 0);

    /* Contenedor raíz: columna -> [topbar][grid que crece] */
    lv_obj_t *root = lv_obj_create(scr);
    lv_obj_remove_style_all(root);
    lv_obj_set_size(root, lv_pct(100), lv_pct(100));
    lv_obj_set_flex_flow(root, LV_FLEX_FLOW_COLUMN);

    create_topbar(root);

    lv_obj_t *grid = lv_obj_create(root);
    lv_obj_remove_style_all(grid);
    lv_obj_set_width(grid, lv_pct(100));
    lv_obj_set_flex_grow(grid, 1);              /* ocupa todo el alto restante */
    lv_obj_set_style_pad_all(grid, 4, 0);
    lv_obj_set_style_pad_gap(grid, 4, 0);        /* separación entre cards, como en el mockup */
    lv_obj_set_grid_dsc_array(grid, col_dsc, row_dsc);
    lv_obj_set_layout(grid, LV_LAYOUT_GRID);

    /* Fila 0: card hero de velocidad, ocupa las 2 columnas */
    card_speed = dashboard_card_create(grid, "Velocidad", "km/h",
                                        CARD_BG_LIGHT, CARD_SIZE_HERO,
                                        0, 0, 2, 1);

    /* Fila 1 */
    card_distance = dashboard_card_create(grid, "Distancia", "Km",
    										CARD_BG_DARK, CARD_SIZE_NORMAL, 0, 1, 1, 1);
    card_time = dashboard_card_create(grid, "Tiempo", "",
    									CARD_BG_DARK, CARD_SIZE_NORMAL, 1, 1, 1, 1);

    /* Fila 2 */
    card_avg_speed = dashboard_card_create(grid, "Vel Media", "Km/h",
    										CARD_BG_LIGHT, CARD_SIZE_NORMAL, 0, 2, 1, 1);
    card_altitude = dashboard_card_create(grid, "Altura", "m",
                                           CARD_BG_LIGHT, CARD_SIZE_NORMAL, 1, 2, 1, 1);

    /* Fila 3 */
    card_slope = dashboard_card_create(grid, "Pendiente", "%",
                                        CARD_BG_DARK, CARD_SIZE_NORMAL, 0, 3, 1, 1);
    card_extra = dashboard_card_create(grid, "ACA ALGO", "Km",
                                        CARD_BG_DARK, CARD_SIZE_NORMAL, 1, 3, 1, 1);

    // Creo la cola para FreeRTOS
    //Queue_dashboard=xQueueCreate(1,sizeof(Dashboard_data_t));
}

/* --- Topbar --- */
void dashboard_set_satellites(int count)
{
    lv_label_set_text_fmt(sat_label, "sat %d", count);
}

void dashboard_set_battery(int percent)
{
    lv_label_set_text_fmt(battery_label, "%d%%", percent);
}

/* --- Métricas --- */
void dashboard_set_speed(float kmh)
{
		int total_decimas = (int)(kmh * 10.0f + 0.5f);
		int entero = total_decimas / 10;
		int decimal = total_decimas % 10;

    dashboard_card_set_value(&card_speed, "%d.%d",entero,decimal);
}

void dashboard_set_distance(float km)
{
	int total_decimas = (int)(km * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;

    dashboard_card_set_value(&card_distance, "%d.%d", entero,decimal);
}

void dashboard_set_time(const char *hhmmss)
{
    dashboard_card_set_value(&card_time, "%s", hhmmss);
}

void dashboard_set_avg_speed(float kmh)
{
	int total_decimas = (int)(kmh * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;
    dashboard_card_set_value(&card_avg_speed, "%d.%d", entero,decimal);
}

void dashboard_set_altitude(float meters)
{
	int total_decimas = (int)(meters * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;
    /* Formatea con signo, como "+356" en el mockup */
    dashboard_card_set_value(&card_altitude, "+%d", entero,decimal);
}

void dashboard_set_slope(float percent)
{
	int total_decimas = (int)(percent * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;

	if(percent>0){
		dashboard_card_set_value(&card_slope, "+%d.%d", entero,decimal);
	}else{
		dashboard_card_set_value(&card_slope, "%d.%d", entero,decimal);
	}
}

void dashboard_set_extra(float km)
{
	int total_decimas = (int)(km * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;
    dashboard_card_set_value(&card_extra, "%d.%d",entero,decimal);
}

void dashboard_update(Dashboard_data_t datos){
	xQueueOverwrite(Queue_dashboard,&datos);
}



void vTaskLVGL(void *pvParameters)
{
	lv_init();
	Display1_INIT();
	dashboard_create();

    Dashboard_data_t datos;

    for (;;)
    {
        // Executa las tareas internas de renderizado y timers de LVGL
        lv_timer_handler();


        //Lee los datos nuevos de la cola de msj.
        xQueueReceive(Queue_dashboard,&datos,portMAX_DELAY);

        dashboard_set_speed(datos.speed);
        dashboard_set_distance(datos.distance);

        dashboard_set_time(datos.time);
        dashboard_set_avg_speed(datos.avg_speed);
        dashboard_set_altitude(datos.altitude);
        dashboard_set_slope(datos.slope);
        dashboard_set_battery(datos.battery);
        dashboard_set_satellites(datos.satellites);

        // Cede el control a otras tareas por 5 milisegundos
        vTaskDelay(pdMS_TO_TICKS(5));
    }
}


