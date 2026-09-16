#include "dashboard_styles.h"

lv_style_t style_topbar;
lv_style_t style_card_light;
lv_style_t style_card_dark;
lv_style_t style_topbar_text;
lv_style_t style_title;
lv_style_t style_value_normal;
lv_style_t style_value_hero;
lv_style_t style_unit;

void dashboard_styles_init(void)
{
    /* Franja superior: casi negra, sin bordes ni radio */
    lv_style_init(&style_topbar);
    lv_style_set_bg_color(&style_topbar, lv_color_hex(0x1C1C1C));
    lv_style_set_bg_opa(&style_topbar, LV_OPA_COVER);
    lv_style_set_pad_hor(&style_topbar, 12);
    lv_style_set_pad_ver(&style_topbar, 4);
    lv_style_set_radius(&style_topbar, 0);
    lv_style_set_border_width(&style_topbar, 0);

    /* Card clara (Distancia, Tiempo, Altura, Pendiente, VEL hero) */
    lv_style_init(&style_card_light);
    lv_style_set_bg_color(&style_card_light, lv_color_hex(0xD6D6D6));
    lv_style_set_bg_opa(&style_card_light, LV_OPA_COVER);
    lv_style_set_radius(&style_card_light, 0);      /* cambiá a 8-12 si querés esquinas redondeadas */
    lv_style_set_border_width(&style_card_light, 0);
    lv_style_set_pad_all(&style_card_light, 4);

    /* Card oscura (Vel Media, ACA ALGO) - mismo layout, distinto fondo */
    lv_style_init(&style_card_dark);
    lv_style_set_bg_color(&style_card_dark, lv_color_hex(0x9A9A9A));
    lv_style_set_bg_opa(&style_card_dark, LV_OPA_COVER);
    lv_style_set_radius(&style_card_dark, 0);
    lv_style_set_border_width(&style_card_dark, 0);
    lv_style_set_pad_all(&style_card_dark, 8);

    /* Texto claro para la topbar (fondo oscuro) */
    lv_style_init(&style_topbar_text);
    lv_style_set_text_color(&style_topbar_text, lv_color_hex(0xE0E0E0));
    lv_style_set_text_font(&style_topbar_text, &lv_font_montserrat_14);

    /* Título de cada card: gris oscuro, funciona sobre fondo claro u oscuro */
    lv_style_init(&style_title);
    lv_style_set_text_color(&style_title, lv_color_hex(0x3D3D3D));
    lv_style_set_text_font(&style_title, &lv_font_montserrat_16);

    /* Valor grande de las cards normales (28px) */
    lv_style_init(&style_value_normal);
    lv_style_set_text_color(&style_value_normal, lv_color_hex(0x1A1A1A));
    lv_style_set_text_font(&style_value_normal, &MontserratNumbers28);

    /* Valor de la card "hero" de velocidad (40px) */
    lv_style_init(&style_value_hero);
    lv_style_set_text_color(&style_value_hero, lv_color_hex(0x1A1A1A));
    lv_style_set_text_font(&style_value_hero, &MontserratNumbers40);
    lv_style_set_text_align(&style_value_hero, LV_TEXT_ALIGN_CENTER);

    /* Unidad chica al lado del valor ("km/h", "m", "%") */
    lv_style_init(&style_unit);
    lv_style_set_text_color(&style_unit, lv_color_hex(0x3D3D3D));
    lv_style_set_text_font(&style_unit, &lv_font_montserrat_14);
}
