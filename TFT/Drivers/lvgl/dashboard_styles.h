#ifndef DASHBOARD_STYLES_H
#define DASHBOARD_STYLES_H

#include "lvgl.h"

/* --- Contenedores --- */
extern lv_style_t style_topbar;       /* franja superior oscura */
extern lv_style_t style_card_light;   /* card fondo claro */
extern lv_style_t style_card_dark;    /* card fondo gris oscuro */

/* --- Texto --- */
extern lv_style_t style_topbar_text;  /* texto claro sobre topbar oscura */
extern lv_style_t style_title;        /* título chico de cada card ("VEL", "Distancia"...) */
extern lv_style_t style_value_normal; /* valor de las cards chicas (28px) */
extern lv_style_t style_value_hero;   /* valor de la card grande de velocidad (40px) */
extern lv_style_t style_unit;         /* unidad chica al lado del valor ("km/h", "m"...) */

//extern const lv_font_t MontserratNumebers40;
//extern const lv_font_t MontserratNumebers28;

/* Llamar UNA sola vez al arrancar, antes de crear cualquier card. */
void dashboard_styles_init(void);

#endif /* DASHBOARD_STYLES_H */
