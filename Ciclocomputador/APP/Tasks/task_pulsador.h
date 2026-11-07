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

// Navegación (tarea pulsadores)
#define EV_BTN_NEXT     0
#define EV_BTN_PREV     1
#define EV_BTN_MENU_LONG 2
#define EV_BTN_MENU_SHORT 3

extern TaskHandle_t TaskHandle_Pulsador;
extern QueueHandle_t Queue_display_eventos;

void init_task_pulsador(void);


#endif /* TASKS_TASK_PULSADOR_H_ */
