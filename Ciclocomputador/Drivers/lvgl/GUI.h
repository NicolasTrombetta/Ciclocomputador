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
void dashboard_update(Dashboard_data_t datos);
extern QueueHandle_t Queue_dashboard;

//task freeRTOS
void vTaskLVGL(void *pvParameters);

#endif /* DASHBOARD_H */
