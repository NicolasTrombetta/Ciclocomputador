/*
 * hall_task.c
 *
 *  Created on: 18 nov 2026
 *      Author: Nico trombetta
 */

#include "hall_task.h"
#include "freeRTOS.h"
#include "semphr.h"
#include "stdio.h"
#include "tim.h"
#include "string.h"
#include "stdlib.h"

#define BUF_TS_LEN            16            // timestamps guardados (cubre ~80 km/h en 1,5 s)
#define INTERVALO_MIN_US      50000UL       // < 50 ms entre pulsos = espurio (~160 km/h)
#define PERIODO_CALCULO_MS    500           // cada cuánto se calcula y se envía
#define VENTANA_US            1500000UL     // ventana de promediado: 1,5 s
#define TIMEOUT_US            3000000UL     // 3 s sin pulsos = detenida

//Buffer circular de timestamps (lo escribe la ISR y lo lee tarea_calculo)
volatile uint32_t buf_ts[BUF_TS_LEN];
volatile uint8_t  buf_head = 0;      // próxima posición a escribir
volatile uint8_t  buf_cant = 0;      // cantidad de timestamps válidos

// Rodado en décimas de pulgada (280 = 28", 275 = 27,5")
volatile uint16_t rodado_x10 = 280;

void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
{
	if (htim->Instance == TIM2 && htim->Channel == HAL_TIM_ACTIVE_CHANNEL_3)
	{
		uint32_t t = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_3);   // µs

		// Rechazo de espurios: intervalo menor al mínimo físico
		if (buf_cant > 0)
		{
			uint32_t ultimo = buf_ts[(buf_head + BUF_TS_LEN - 1) % BUF_TS_LEN];
			if ((t - ultimo) < INTERVALO_MIN_US)
			{
				return;
			}
		}

		buf_ts[buf_head] = t;
		buf_head = (buf_head + 1) % BUF_TS_LEN;
		if (buf_cant < BUF_TS_LEN)
		{
			buf_cant++;
		}

		HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);   // LED: un cambio por pulso válido
	}
}

void tarea_hall(void *p)
{
	uint32_t	ts[BUF_TS_LEN];		// copia local: ts[0] = más reciente
	uint8_t		cant, head;
	uint32_t	ahora;
	uint32_t	circ_mm;
	uint32_t	vel_kph;
	uint8_t		i, n;
	TickType_t	ultimo_despertar = xTaskGetTickCount();

	while (1)
	{
		vTaskDelayUntil(&ultimo_despertar, pdMS_TO_TICKS(PERIODO_CALCULO_MS));

		// Circunferencia = pi * rodado * 25,4 mm  ->  rodado_x10 * 7979,6 / 1000
		circ_mm = ((uint32_t) rodado_x10 * 79796UL + 5000UL) / 10000UL;

		// 1. Copia del buffer en sección crítica (la ISR no puede escribir mientras tanto)
		taskENTER_CRITICAL();
		ahora = __HAL_TIM_GET_COUNTER(&htim2);
		cant  = buf_cant;
		head  = buf_head;
		for (i = 0; i < cant; i++)
		{
			ts[i] = buf_ts[(head + BUF_TS_LEN - 1 - i) % BUF_TS_LEN];
		}
		taskEXIT_CRITICAL();

		vel_kph = 0;

		if (cant >= 1 && (ahora - ts[0]) >= TIMEOUT_US)
		{
			// 4b. Detenida: limpio el buffer (solo si no entró un pulso nuevo mientras tanto)
			taskENTER_CRITICAL();
			if (buf_head == head)
			{
				buf_cant = 0;
			}
			taskEXIT_CRITICAL();
		}
		else if (cant >= 2)
		{
			// 2. Pulsos dentro de la ventana (contando desde ahora hacia atrás)
			n = 0;
			while (n < cant && (ahora - ts[n]) <= VENTANA_US)
			{
				n++;
			}

			// 3. Menos de 2 en la ventana: uso los dos últimos aunque estén fuera
			if (n < 2)
			{
				n = 2;
			}

			// v = (n-1) * C / (t_ultimo - t_primero)
			// mm/us -> km/h: x 3600
			uint32_t dt_us = ts[0] - ts[n - 1];
			vel_kph = ((uint32_t)(n - 1) * circ_mm * 3600UL + dt_us / 2) / dt_us;

			// 4a. Cota decreciente: si ya pasó más que el último intervalo, va más lento
			uint32_t sin_pulso_us = ahora - ts[0];
			uint32_t ultimo_int   = ts[0] - ts[1];
			if (sin_pulso_us > ultimo_int)
			{
				uint32_t cota = (circ_mm * 3600UL + sin_pulso_us / 2) / sin_pulso_us;
				if (cota < vel_kph)
				{
					vel_kph = cota;
				}
			}
		}
	}
}

void init_hall(void){
	 xTaskCreate(tarea_hall,
			  	  "tarea_hall",
				  configMINIMAL_STACK_SIZE*4,
				  NULL,
				  tskIDLE_PRIORITY+2,
				  NULL);

}
