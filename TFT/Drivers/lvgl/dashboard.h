#ifndef DASHBOARD_H
#define DASHBOARD_H

#include <stdint.h>
#include "FreeRTOS.h"
#include "queue.h"

typedef struct{
	float speed;
	float distance;
	float altitude;
    float slope;
    char*  time;
	float avg_speed;
	uint8_t satellites;
	uint8_t battery;
}Dashboard_data_t;


void dashboard_create(void);

/* --- Topbar --- */
void dashboard_set_satellites(int count);
void dashboard_set_battery(int percent);

/* --- Métricas de la grilla --- */
void dashboard_set_speed(float kmh);           /* card hero */
void dashboard_set_distance(float km);
void dashboard_set_time(const char *hhmmss);   /* ej: "1:54:23" */
void dashboard_set_avg_speed(float kmh);
void dashboard_set_altitude(float meters);     /* se formatea con signo +/- */
void dashboard_set_slope(float percent);       /* se formatea con signo +/- */
void dashboard_set_extra(float km);

void dashboard_update(Dashboard_data_t datos);

extern QueueHandle_t Queue_dashboard;

//task freeRTOS
void vTaskLVGL(void *pvParameters);

#endif /* DASHBOARD_H */
