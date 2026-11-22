/*
 * gui_nav.h
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */

#ifndef LVGL_GUI_NAV_H_
#define LVGL_GUI_NAV_H_

#include <stdint.h>
#include "fit_task.h"

void gui_nav_handle(sd_event_t ev_sd, uint8_t ev_btn);
uint8_t gui_nav_get_screen(void);
void    gui_nav_set_screen(uint8_t screen_id);

#endif /* LVGL_GUI_NAV_H_ */
