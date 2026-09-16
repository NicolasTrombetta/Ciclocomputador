#include <stdarg.h>
#include <stdio.h>
#include "dashboard_card.h"
#include "dashboard_styles.h"

dashboard_card_t dashboard_card_create(lv_obj_t *parent,
                                        const char *title,
                                        const char *unit,
                                        card_bg_t bg,
                                        card_size_t size,
                                        int col, int row,
                                        int col_span, int row_span)
{
    dashboard_card_t c;

    /* --- El rectángulo de fondo --- */
    c.card = lv_obj_create(parent);
    lv_obj_remove_style_all(c.card);
    lv_obj_add_style(c.card, (bg == CARD_BG_LIGHT) ? &style_card_light : &style_card_dark, 0);
    lv_obj_set_grid_cell(c.card,
                         LV_GRID_ALIGN_STRETCH, col, col_span,
                         LV_GRID_ALIGN_STRETCH, row, row_span);

    /* --- Layout interno: título arriba (fijo), resto del espacio para el valor --- */
    lv_obj_set_flex_flow(c.card, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_flex_align(c.card, LV_FLEX_ALIGN_START,
                           LV_FLEX_ALIGN_START, LV_FLEX_ALIGN_START);

    lv_obj_t *title_label = lv_label_create(c.card);
    lv_obj_add_style(title_label, &style_title, 0);
    lv_label_set_text(title_label, title);

    /* --- Contenedor que ocupa el espacio restante y centra verticalmente su contenido --- */
    lv_obj_t *value_container = lv_obj_create(c.card);
    lv_obj_remove_style_all(value_container);
    lv_obj_set_width(value_container, LV_PCT(100));
    lv_obj_set_flex_grow(value_container, 1);   /* ocupa todo el alto restante debajo del título */
    lv_obj_set_flex_flow(value_container, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_flex_align(value_container, LV_FLEX_ALIGN_CENTER,   /* centrado vertical dentro de este espacio */
    		 	 	 	 //(size == CARD_SIZE_HERO) ? LV_FLEX_ALIGN_CENTER : LV_FLEX_ALIGN_START,  /* anclado a la izquierda */
    					LV_FLEX_ALIGN_CENTER,
                           LV_FLEX_ALIGN_START);

/* Fila para "50" + "km/h": valor fijo a su lugar, unidad pegada a la derecha */
    lv_obj_t *value_row  = lv_obj_create(value_container);
    lv_obj_remove_style_all(value_row);
    lv_obj_set_size(value_row, LV_PCT(100), LV_SIZE_CONTENT);
    lv_obj_set_flex_flow(value_row, LV_FLEX_FLOW_ROW);
    lv_obj_set_flex_align(value_row, LV_FLEX_ALIGN_SPACE_BETWEEN,
                           LV_FLEX_ALIGN_END, LV_FLEX_ALIGN_END);
    lv_obj_set_style_pad_column(value_row, 4, 0);

    c.value_label = lv_label_create(value_row);
    lv_obj_add_style(c.value_label, (size == CARD_SIZE_HERO) ? &style_value_hero : &style_value_normal, 0);
    if (size == CARD_SIZE_HERO) lv_obj_set_flex_grow(c.value_label, 1);
    lv_label_set_text(c.value_label, "--");

    lv_obj_t *unit_label = lv_label_create(value_row);
    lv_obj_add_style(unit_label, &style_unit, 0);
    lv_label_set_text(unit_label, unit);

    return c;
}

void dashboard_card_set_value(dashboard_card_t *c, const char *fmt, ...)
{
    char buf[32];
    va_list args;
    va_start(args, fmt);
    vsnprintf(buf, sizeof(buf), fmt, args);
    va_end(args);
    lv_label_set_text(c->value_label, buf);
}
