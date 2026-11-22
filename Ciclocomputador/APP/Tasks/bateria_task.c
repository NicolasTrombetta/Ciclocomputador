/*
 * bateria_task.c
 *
 *  Created on: 18 nov 2026
 *      Author: Nico trombetta
 */

#include "bateria_task.h"
#include "freeRTOS.h"
#include "semphr.h"
#include "stdio.h"
#include "adc.h"
#include "string.h"
#include "stdlib.h"
#include "math.h"

#define ADC_BAT_0    (2234)   // 3,6V → 0 %
#define ADC_BAT_100  (2606)   // 4,2V → 100 %

TaskHandle_t tareaCalculoHandle = NULL;

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *hadc)
{
  if (hadc->Instance == ADC1)
  {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    uint32_t crudo = HAL_ADC_GetValue(hadc);

    xTaskNotifyFromISR(tareaCalculoHandle,
                       crudo,
                       eSetValueWithOverwrite,
                       &xHigherPriorityTaskWoken);

    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
  }
}

void tarea_bateria(void *p)
{
	uint32_t	crudo;
    int32_t  	porcentaje, n;

	while(1)
	{
		HAL_ADC_Start_IT(&hadc1);
		xTaskNotifyWait(0, 0xFFFFFFFF, &crudo, portMAX_DELAY);

        // Cálculo del porcentaje
        porcentaje = ((int32_t)crudo - ADC_BAT_0) * 100 / (ADC_BAT_100 - ADC_BAT_0);
        if (porcentaje < 0)   porcentaje = 0;     // por debajo de 3,6 V
        if (porcentaje > 100) porcentaje = 100;   // por encima de 4,2 V

        // Envío por cola a tarea_tx
//        if (msg.len > 0)
//            xQueueSend(cola_tx, &msg, 0);   // si la cola estuviera llena, descarta el mensaje

		vTaskDelay(pdMS_TO_TICKS(5000));	// delay de 5seg para el ADC
	}
}

void init_bateria(void){
	 xTaskCreate(tarea_bateria,
			  	  "tarea_bateria",
				  configMINIMAL_STACK_SIZE*4,
				  NULL,
				  tskIDLE_PRIORITY+1,
				  &tareaCalculoHandle);
}


