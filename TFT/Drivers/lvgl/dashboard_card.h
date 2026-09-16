#ifndef DASHBOARD_CARD_H
#define DASHBOARD_CARD_H

#include "lvgl.h"
#include <stdbool.h>

/* Fondo claro u oscuro, según el mockup */
typedef enum {
    CARD_BG_LIGHT,
    CARD_BG_DARK,
} card_bg_t;

/* NORMAL = las 6 cards chicas de la grilla (28px)
 * HERO   = la card grande de velocidad (40px) */
typedef enum {
    CARD_SIZE_NORMAL,
    CARD_SIZE_HERO,
} card_size_t;

typedef struct {
    lv_obj_t *card;
    lv_obj_t *value_label;
} dashboard_card_t;

/* col_span/row_span: cuántas celdas del grid ocupa (la card de VEL usa
 * col_span=2 para atravesar todo el ancho). */
dashboard_card_t dashboard_card_create(lv_obj_t *parent,
                                        const char *title,
                                        const char *unit,
                                        card_bg_t bg,
                                        card_size_t size,
                                        int col, int row,
                                        int col_span, int row_span);

/* Actualiza el valor de una card ya creada (soporta formato tipo printf) */
void dashboard_card_set_value(dashboard_card_t *c, const char *fmt, ...);

#endif /* DASHBOARD_CARD_H */
