/*
 * task_pulsador.c
 *
 *  Created on: 29 oct 2026
 *      Author: Nico trombetta
 */


#include "task_pulsador.h"
#include "gpio.h"
#include "fit_task.h"

TaskHandle_t TaskHandle_Pulsador=NULL;

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
	 BaseType_t xHigherPriorityTaskWoken= pdFALSE;

	if(TaskHandle_Pulsador == NULL){
		return;
	}

	if(GPIO_Pin == Pulsador_next_Pin){
		vTaskNotifyGiveFromISR(TaskHandle_Pulsador, &xHigherPriorityTaskWoken);
	}else if(GPIO_Pin == Pulsador_menu_Pin){
		vTaskNotifyGiveFromISR(TaskHandle_Pulsador, &xHigherPriorityTaskWoken);
	}else if(GPIO_Pin == Pulsador_previus_Pin){
		vTaskNotifyGiveFromISR(TaskHandle_Pulsador, &xHigherPriorityTaskWoken);
	}

	portYIELD_FROM_ISR(xHigherPriorityTaskWoken);

}

void mandarEvento(uint8_t evento){
	/* La GUI decide si el evento se reenvia a task_fit (ver GUI.c). */
	/*
	if(Queue_evento_sd != NULL){
		xQueueSend(
				Queue_evento_sd,
				&evento,
				0
			  );
	}
	*/

	if(Queue_display_eventos != NULL){
		xQueueSend(
				Queue_display_eventos,
				&evento,
				0
			  );
	}
}

void task_pulsador(void *arg)
{

    for (;;) {

    	ulTaskNotifyTake(pdTRUE, portMAX_DELAY);

        vTaskDelay(pdMS_TO_TICKS(10));

        if(HAL_GPIO_ReadPin(Pulsador_next_GPIO_Port, Pulsador_next_Pin)==GPIO_PIN_RESET){
        	 mandarEvento(EV_BTN_NEXT);
        }else if(HAL_GPIO_ReadPin(Pulsador_previus_GPIO_Port, Pulsador_previus_Pin)==GPIO_PIN_RESET){
        	 mandarEvento(EV_BTN_PREV);
        }else if(HAL_GPIO_ReadPin(Pulsador_menu_GPIO_Port,Pulsador_menu_Pin)==GPIO_PIN_RESET){

        	if(!ulTaskNotifyTake(pdTRUE, 800)){
        	        mandarEvento(EV_BTN_MENU_LONG);
        	}else{
        	      mandarEvento(EV_BTN_MENU_SHORT);
        	}
        }
    }
}

void init_task_pulsador(void)
{
    if (TaskHandle_Pulsador != NULL)
        return;

    if (Queue_display_eventos == NULL)
        Queue_display_eventos = xQueueCreate(10, sizeof(uint8_t));

    if (xTaskCreate(task_pulsador,
                    "Pulsador",
                    128,
                    NULL,
                    tskIDLE_PRIORITY + 1,
                    &TaskHandle_Pulsador) != pdPASS) {
        TaskHandle_Pulsador = NULL;
    }
}


