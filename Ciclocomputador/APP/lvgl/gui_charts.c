/*
 * gui_charts.c
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */

#include "gui_charts.h"
#include "lvgl.h"
#include "ui.h"

static lv_chart_series_t * alt_series;
static lv_chart_series_t * speed_series;

#define ALT_CHART_POINTS        120U
#define SPEED_CHART_POINTS      120U

static void chart_init(lv_obj_t * chart, lv_chart_series_t ** series, lv_color_t color,
                       int32_t y_min, int32_t y_max, uint32_t point_count);

static void chart_add_sample(lv_obj_t * chart, lv_chart_series_t * series, float value)
{
    int32_t rounded;

    if (chart == NULL || series == NULL)
        return;

    rounded = (int32_t)(value >= 0.0f ? value + 0.5f : value - 0.5f);
    lv_chart_set_next_value(chart, series, rounded);
}

void update_charts(float altitude, float speed)
{
    chart_add_sample(objects.chart_altimetria, alt_series, altitude);
    chart_add_sample(objects.chart_velocidad, speed_series, speed);
}

void charts_reset(void)
{
    if (objects.chart_altimetria != NULL && alt_series != NULL)
        lv_chart_set_all_values(objects.chart_altimetria, alt_series, LV_CHART_POINT_NONE);

    if (objects.chart_velocidad != NULL && speed_series != NULL)
        lv_chart_set_all_values(objects.chart_velocidad, speed_series, LV_CHART_POINT_NONE);
}

static void chart_init(lv_obj_t * chart, lv_chart_series_t ** series, lv_color_t color,
                       int32_t y_min, int32_t y_max, uint32_t point_count)
{
    if (chart == NULL || *series != NULL)
        return;

    lv_chart_set_type(chart, LV_CHART_TYPE_LINE);
    lv_chart_set_point_count(chart, point_count);
    lv_chart_set_axis_range(chart, LV_CHART_AXIS_PRIMARY_Y, y_min, y_max);
    lv_chart_set_update_mode(chart, LV_CHART_UPDATE_MODE_SHIFT);

    lv_obj_set_style_line_width(chart, 2, LV_PART_ITEMS);
    lv_obj_set_style_size(chart, 0, 0, LV_PART_INDICATOR);

    lv_obj_set_style_line_width(chart, 3, LV_PART_ITEMS);


    *series = lv_chart_add_series(chart, color, LV_CHART_AXIS_PRIMARY_Y);
    if (*series == NULL)
        return;

   // lv_chart_set_all_values(chart, *series, LV_CHART_POINT_NONE);
}

void charts_init(void)
{
    chart_init(objects.chart_altimetria, &alt_series,
               lv_palette_main(LV_PALETTE_BLUE), 0, 1000, ALT_CHART_POINTS);
    chart_init(objects.chart_velocidad, &speed_series,
               lv_palette_main(LV_PALETTE_GREEN), 0, 100, SPEED_CHART_POINTS);
}
