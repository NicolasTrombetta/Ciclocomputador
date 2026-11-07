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
#include "FreeRTOS.h"
#include "queue.h"


typedef struct{
	uint32_t distance;
	uint16_t speed;
	uint8_t cadence;
	uint32_t enhanced_altitude;
	int32_t position_lat;
	int32_t position_long;
}DatoProcesamiento_t;

typedef enum{
	EV_REC_STARTED,
	EV_PAUSED,
	EV_RESUMED,
	EV_SAVING,
	EV_SAVED,
	EV_SAVE_ERROR,
	EV_SD_ERROR,
	EV_NONE
}Evento_sd_t;

extern QueueHandle_t Queue_evento_sd;
extern QueueHandle_t Queue_dato_sd;
extern QueueHandle_t Queue_sd_eventos;
extern QueueSetHandle_t Queue_set_sd;

void escribirEventoTimer(FIT_EVENT_TYPE tipo, FIT_DATE_TIME ts);
void escribirRecord(DatoProcesamiento_t *dato);
FRESULT crearArchivo(char *s);
void cerrarArchivo(void);
void fit_task(void *p);
void init_task_fit(void);


#endif /* TASKS_FIT_TASK_H_ */
