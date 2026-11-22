#ifndef DASHBOARD_H
#define DASHBOARD_H

#include <stdint.h>
#include "FreeRTOS.h"
#include "queue.h"
#include "task_pulsador.h"
#include "fit_task.h"

typedef struct{
	uint8_t hora;
	uint8_t minuto;
	uint8_t segundo;
}time_t;

typedef struct{
		float speed;
		int32_t altitude;
		float avg_speed;
		uint8_t battery;
		float distance;
		float slope;
		time_t time;
		uint8_t satellites;
}telemetry_t;

typedef enum {
    MSG_BUTTON,
    MSG_TELEMETRY,
    MSG_REC_EVENT,
    MSG_TICK,
} gui_msg_type_t;

typedef struct {
    gui_msg_type_t type;
    union {
        button_event_t  ev_button;
        telemetry_t telemetry;
        sd_event_t  ev_sd;
    } p;
} gui_msg_t;


void gui_init(void);
uint8_t gui_post(const gui_msg_t *m);

void task_gui(void *pvParameters);

#endif /* DASHBOARD_H */
