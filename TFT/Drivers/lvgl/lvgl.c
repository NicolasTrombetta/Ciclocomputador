/*
 * lvgl_config.c
 *
 *  Created on: 9 sept 2026
 *      Author: Nico trombetta
 */

#include "lvgl.h"
#include "ili9341.h"
#include "FreeRTOS.h"
#include "task.h"


static uint8_t buf1[15360];
lv_display_t * display1;

void my_flush_cb(lv_display_t * display, const lv_area_t * area, uint8_t * px_map)
{
	uint16_t width=area->x2-area->x1 +1;
	uint16_t heigth=area->y2-area->y1 + 1;

    ili9341_DrawRGBImage(area->x1, area->y1, width,heigth, px_map);

    lv_display_flush_ready(display);
}

void Display1_INIT(void){
	ili9341_Init();
	display1 = lv_display_create(240, 320);
	lv_display_set_buffers(display1, buf1, NULL, sizeof(buf1), LV_DISPLAY_RENDER_MODE_PARTIAL);
	lv_display_set_flush_cb(display1, my_flush_cb);
	lv_display_set_color_format(display1, LV_COLOR_FORMAT_RGB565_SWAPPED);
	lv_tick_set_cb(xTaskGetTickCount);
}



