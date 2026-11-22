/*
 * fit_task.h
 *
 *  Created on: 28 oct 2026
 *      Author: Nico trombetta
 */

#ifndef TASKS_FIT_TASK_H_
#define TASKS_FIT_TASK_H_

#include <stdint.h>
#include "fit_example.h"
#include "fatfs.h"
#include "task_pulsador.h"



typedef struct{
	uint32_t distance;
	uint16_t speed;
	uint8_t cadence;
	uint32_t enhanced_altitude;
	int32_t position_lat;
	int32_t position_long;
}sd_telemetry_t;

typedef enum{
	EV_REC_STARTED,
	EV_PAUSED,
	EV_RESUMED,
	EV_SAVING,
	EV_SAVED,
	EV_SAVE_ERROR,
	EV_SD_ERROR,
	EV_NONE
}sd_event_t;

typedef enum { SD_MSG_DATA, SD_MSG_EVENT } sd_msg_type_t;

typedef struct {
    sd_msg_type_t type;
    union {
    	sd_telemetry_t data;
    	button_event_t event;     // o button_event_t si no lo cambias
    } p;
} sd_msg_t;

uint8_t sd_post_data(const sd_telemetry_t *d);
uint8_t sd_post_event(button_event_t ev);

void fit_task(void *p);
void init_task_fit(void);


#endif /* TASKS_FIT_TASK_H_ */
