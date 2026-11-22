/*
 * task_pulsador.h
 *
 *  Created on: 29 oct 2026
 *      Author: Nico trombetta
 */

#ifndef TASKS_TASK_PULSADOR_H_
#define TASKS_TASK_PULSADOR_H_

#include <stdint.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

typedef enum{
	EV_BTN_NEXT,
	EV_BTN_PREV,
	EV_BTN_MENU_LONG,
	EV_BTN_MENU_SHORT,
	EV_BTN_NONE
}button_event_t;

extern TaskHandle_t TaskHandle_Pulsador;

void init_task_pulsador(void);


#endif /* TASKS_TASK_PULSADOR_H_ */
