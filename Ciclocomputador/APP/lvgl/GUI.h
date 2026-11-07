#ifndef DASHBOARD_H
#define DASHBOARD_H

#include <stdint.h>
#include "FreeRTOS.h"
#include "queue.h"
#include "fit_task.h"   /* Evento_sd_t (maquina_sd) */

typedef struct{
		float speed;
		float altitude;
		float avg_speed;
		uint8_t battery;
		float distance;
		float slope;
		const char* time;
		uint8_t satellites;
}Dashboard_data_t;

typedef enum {
	CONFIG_UNSELECT,
    CONFIG_SELECT,
    CONFIG_EDIT
} ConfigState_t;

typedef enum {
    CFG_CIRCUNF,
    CFG_BRILLO,
    CFG_UNIDADES,
    CFG_ALTITUD,
}Config_index_t;


void dashboard_create(void);
void update_data_display(Dashboard_data_t datos);
extern QueueHandle_t Queue_dashboard;

/* Cola de eventos de navegacion del display.
 * task_pulsador.c debe enviar los eventos de botones aca (no a Queue_evento_sd,
 * que la consume task_fit). */
extern QueueHandle_t Queue_display_eventos;

/* Prototipos internos de GUI.c.
 * Se declaran static porque las funciones se definen static en GUI.c y algunas
 * se usan antes de su definicion. No deben usarse desde otros modulos.
 * TODO: mover estos prototipos dentro de GUI.c para poder borrarlos del header. */



//task freeRTOS
void vTaskLVGL(void *pvParameters);

#endif /* DASHBOARD_H */
