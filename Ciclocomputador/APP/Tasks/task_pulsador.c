/*
 * task_pulsador.c
 *
 *  Created on: 29 oct 2026
 *      Author: Nico trombetta
 */


#include "task_pulsador.h"
#include "gpio.h"
#include "fit_task.h"
#include "gui.h"

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
	gui_msg_t m;
	m.type=MSG_BUTTON;
	m.p.ev_button=evento;
	gui_post(&m);
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

    xTaskCreate(task_pulsador,
                    "Pulsador",
                    128,
                    NULL,
                    tskIDLE_PRIORITY + 2,
                    &TaskHandle_Pulsador);

}


