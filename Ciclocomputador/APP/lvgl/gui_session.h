/*
 * gui_session.h
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */

#ifndef LVGL_GUI_SESSION_H_
#define LVGL_GUI_SESSION_H_

#include "fit_task.h"

typedef enum {
	REC_IDLE,
	REC_RECORDING,
	REC_PAUSED,
	REC_SAVING
} RecState_t;

typedef enum {
    SESSION_SIN_FIX,
    SESSION_LISTO,
    SESSION_REC,
    SESSION_PAUSA,
    SESSION_GUARDANDO
} SessionStatus_t;
void  		gui_session_handle(sd_event_t ev);      // ex maquina_sd
void  		gui_session_set_satellites(uint8_t satellites);
RecState_t 	gui_session_state(void);
uint8_t    	gui_session_cmd_for_sd(uint8_t btn_ev);  // ex evento_para_sd

#endif /* LVGL_GUI_SESSION_H_ */
