/*
 * gui_settings.c
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */

#include "gui_settings.h"
#include "lvgl.h"
#include "ui.h"
#include "task_pulsador.h"
#include <stdio.h>
#include "gui_nav.h"

typedef struct {
    uint16_t wheel_mm;
    uint8_t brightness;
    uint8_t units;
    int16_t altitude_offset;
} GuiConfig_t;

typedef enum {
	CONFIG_UNSELECT,
    CONFIG_SELECT,
    CONFIG_EDIT
} ConfigState_t;

typedef enum {
    CFG_CIRCUNF,
    CFG_BRILLO,
    CFG_UNIDADES,
    CFG_ALTITUD,
}Config_index_t;

static GuiConfig_t config = { 2070, 100, 0, 0 };

static ConfigState_t s_config_state = CONFIG_UNSELECT;
static Config_index_t s_config_index = CFG_CIRCUNF;

static lv_group_t * settings_group;

static lv_obj_t * settings_group_item(uint8_t index);

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


void MaquinaConfiguracion(uint32_t ev){

	  switch (s_config_state)
	    {
	  	  	case CONFIG_UNSELECT:
	  	  		if(ev== EV_BTN_MENU_SHORT){
	  	  			s_config_state=CONFIG_SELECT;
	  	  			settings_ui_refresh();
	  	  		}else if(ev== EV_BTN_NEXT){
	  	  			gui_nav_set_screen(SCREEN_ID_DASHBOARD_SCREEN);
	  	  		}else if(ev == EV_BTN_PREV){
	  	  			gui_nav_set_screen(SCREEN_ID_ALTIMETRIA_SCREEN);
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
