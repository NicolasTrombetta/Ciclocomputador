/*
 * gui_notify.c
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */

#include "gui_notify.h"
#include "lvgl.h"
#include <stdio.h>

static lv_obj_t * saving_obj = NULL;
static lv_obj_t * saving_lbl = NULL;
static lv_timer_t * saving_timer = NULL;
static uint8_t saving_dot_index = 0;

static lv_obj_t * error_box = NULL;
static lv_obj_t * error_text_lbl = NULL;
static lv_timer_t * error_timer = NULL;

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

void error_box_close(void)
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

uint8_t gui_modal_active(void){
	uint8_t ret=0;
	if(error_box!=NULL){
		ret=1;
	}
	return ret;
}
