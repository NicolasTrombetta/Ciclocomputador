/*
 * gui_session.c
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */

#include "gui_session.h"
#include "lvgl.h"
#include "ui.h"
#include "gui_notify.h"
#include "gui_charts.h"
#include "gui_nav.h"
#include "task_pulsador.h"

static RecState_t s_rec = REC_IDLE;
static uint8_t s_satellites = 0;

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
    	status = (s_satellites > 0) ? SESSION_LISTO : SESSION_SIN_FIX;
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

void       gui_session_handle(sd_event_t ev){      // ex maquina_sd

	    if (ev == EV_REC_STARTED) {
	        charts_reset();
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

void gui_session_set_satellites(uint8_t satellites){
	s_satellites = satellites;
	update_estado_sesion();
}

RecState_t gui_session_state(void){
	return s_rec;
}

uint8_t    gui_session_cmd_for_sd(uint8_t btn_ev){ // ex evento_para_sd
	    if (gui_nav_get_screen() != SCREEN_ID_DASHBOARD_SCREEN)
	        return EV_BTN_NONE;

	    if (gui_session_state() == REC_SAVING)
	        return EV_BTN_NONE;

	    if (btn_ev != EV_BTN_MENU_SHORT && btn_ev != EV_BTN_MENU_LONG)
	        return EV_BTN_NONE;

	    return btn_ev;
}
