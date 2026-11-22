/*
 * gui_nav.c
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */

#include "gui_nav.h"
#include "ui.h"
#include "task_pulsador.h"
#include "gui_settings.h"
#include "gui_session.h"

static uint8_t s_page = SCREEN_ID_DASHBOARD_SCREEN;

void gui_nav_handle(sd_event_t ev_sd, uint8_t ev_pulsador){
	uint8_t ev = ev_pulsador;

	(void)ev_sd;

	if (gui_session_state() == REC_SAVING) return;

	switch (s_page) {
	case SCREEN_ID_DASHBOARD_SCREEN:
		if (ev == EV_BTN_NEXT){
			s_page = SCREEN_ID_ALTIMETRIA_SCREEN;
			loadScreen(SCREEN_ID_ALTIMETRIA_SCREEN);
		}
		break;
	case SCREEN_ID_ALTIMETRIA_SCREEN:
		//lv_chart_refresh(objects);
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

uint8_t gui_nav_get_screen(void){
	return s_page;
}

void  gui_nav_set_screen(uint8_t screen_id){
	s_page=screen_id;
	loadScreen(s_page);
}
