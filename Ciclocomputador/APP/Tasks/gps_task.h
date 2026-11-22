/*
 * gps_task.h
 *
 *  Created on: 11 nov 2026
 *      Author: Nico trombetta
 */

#ifndef TASKS_GPS_TASK_H_
#define TASKS_GPS_TASK_H_

#include <stdint.h>

typedef struct {			// Aca se guarda la trama entera
	uint8_t datos[512];
	uint16_t len;
} trama_t;

typedef struct {		// Aca se guardan los datos ya parseados
	uint32_t fecha;   	// ddmmyy
	uint32_t hora;    	// hhmmss
	char estado;		// A:active(buena señal) - V:void(sin señal)
	float lat;		// latitud
	char ns;         	// 'N' o 'S'
	float lon;		// longitud
	char ew;         	// 'E' o 'W'
	uint16_t sats;		// cantidad de satelites detectados
} gps_data_t;

void init_gps(void);

#endif /* TASKS_GPS_TASK_H_ */
