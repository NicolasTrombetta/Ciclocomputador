/*
 * tarea_distribuicion.h
 *
 *  Created on: 18 nov 2026
 *      Author: Nico trombetta
 */

#ifndef TASKS_TAREA_DISTRIBUICION_H_
#define TASKS_TAREA_DISTRIBUICION_H_

#include <stdint.h>
#include "gps_task.h"

typedef enum{
	MSG_GPS,
	MSG_BAROMETRO,
	MSG_BATERIA,
	MSG_HALL,
}msg_t;

typedef struct{
	msg_t msg;
	union{
		gps_data_t gps;
		float barometro;
		uint8_t bateria;
		uint32_t hall;
	};
}msg_data_t;

void init_distribucion(void);

#endif /* TASKS_TAREA_DISTRIBUICION_H_ */
