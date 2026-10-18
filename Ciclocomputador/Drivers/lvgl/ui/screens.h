#ifndef EEZ_LVGL_UI_SCREENS_H
#define EEZ_LVGL_UI_SCREENS_H

#include <lvgl/lvgl.h>

#ifdef __cplusplus
extern "C" {
#endif

// Screens

enum ScreensEnum {
    _SCREEN_ID_FIRST = 1,
    SCREEN_ID_DASHBOARD_SCREEN = 1,
    SCREEN_ID_SETTINGS_SCREEN = 2,
    _SCREEN_ID_LAST = 2
};

typedef struct _objects_t {
    lv_obj_t *dashboard_screen;
    lv_obj_t *settings_screen;
    lv_obj_t *grid_principal;
    lv_obj_t *cont_superior;
    lv_obj_t *lbl_hora;
    lv_obj_t *lbl_bateria;
    lv_obj_t *lbl_satelite;
    lv_obj_t *cont_velocidad;
    lv_obj_t *lbl_velocidad;
    lv_obj_t *obj0;
    lv_obj_t *obj1;
    lv_obj_t *cont_distancia;
    lv_obj_t *lbl_distance;
    lv_obj_t *obj2;
    lv_obj_t *obj3;
    lv_obj_t *cont_tiempo;
    lv_obj_t *lbl_time;
    lv_obj_t *obj4;
    lv_obj_t *cont_pendiente;
    lv_obj_t *lbl_slope;
    lv_obj_t *obj5;
    lv_obj_t *obj6;
    lv_obj_t *cont_acaalgo;
    lv_obj_t *lbl_acaalgo;
    lv_obj_t *obj7;
    lv_obj_t *obj8;
    lv_obj_t *cont_vel_media;
    lv_obj_t *lbl_vel_media;
    lv_obj_t *obj9;
    lv_obj_t *obj10;
    lv_obj_t *obj11;
    lv_obj_t *obj12;
    lv_obj_t *cont_altura;
    lv_obj_t *lbl_altura;
    lv_obj_t *obj13;
    lv_obj_t *obj14;
    lv_obj_t *obj15;
    lv_obj_t *cont_circun;
    lv_obj_t *obj16;
    lv_obj_t *obj17;
} objects_t;

extern objects_t objects;

void create_screen_dashboard_screen();
void tick_screen_dashboard_screen();

void create_screen_settings_screen();
void tick_screen_settings_screen();

void tick_screen_by_id(enum ScreensEnum screenId);
void tick_screen(int screen_index);

void create_screens();

#ifdef __cplusplus
}
#endif

#endif /*EEZ_LVGL_UI_SCREENS_H*/