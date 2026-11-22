/*
 * gui_notify.h
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */

#ifndef LVGL_GUI_NOTIFY_H_
#define LVGL_GUI_NOTIFY_H_

#include <stdint.h>

void toast_show(const char *txt, uint32_t duration_ms);
void spinner_show(const char *txt);
void spinner_hide(void);
void msgbox_error(const char *msg);
void error_box_close(void);
const char * logger_get_last_error(void);
uint8_t gui_modal_active(void);

#endif /* LVGL_GUI_NOTIFY_H_ */
