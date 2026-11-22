/*
 * bmp280_task.c
 *
 *  Created on: 18 nov 2026
 *      Author: Nico trombetta
 */

#include "bmp280_task.h"
#include "freeRTOS.h"
#include "semphr.h"
#include "stdio.h"
#include "i2c.h"
#include "string.h"
#include "stdlib.h"
#include "math.h"

SemaphoreHandle_t sem_i2c;

uint8_t crudo[6];

uint16_t dig_T1, dig_P1;
int16_t  dig_T2, dig_T3, dig_P2, dig_P3, dig_P4, dig_P5, dig_P6, dig_P7, dig_P8, dig_P9;
int32_t  t_fine;

HAL_StatusTypeDef bmp_init(void)
{
	uint8_t c[24];
	uint8_t val;

	/* Leer los 24 bytes de calibración (0x88..0x9F) */
	if (HAL_I2C_Mem_Read(&hi2c1, 0x76<<1, 0x88, I2C_MEMADD_SIZE_8BIT, c, 24, 100) != HAL_OK)
		return HAL_ERROR;

	dig_T1 = (uint16_t)(c[1]  << 8 | c[0]);
	dig_T2 = (int16_t) (c[3]  << 8 | c[2]);
	dig_T3 = (int16_t) (c[5]  << 8 | c[4]);
	dig_P1 = (uint16_t)(c[7]  << 8 | c[6]);
	dig_P2 = (int16_t) (c[9]  << 8 | c[8]);
	dig_P3 = (int16_t) (c[11] << 8 | c[10]);
	dig_P4 = (int16_t) (c[13] << 8 | c[12]);
	dig_P5 = (int16_t) (c[15] << 8 | c[14]);
	dig_P6 = (int16_t) (c[17] << 8 | c[16]);
	dig_P7 = (int16_t) (c[19] << 8 | c[18]);
	dig_P8 = (int16_t) (c[21] << 8 | c[20]);
	dig_P9 = (int16_t) (c[23] << 8 | c[22]);

	/* config (0xF5): filtro IIR x16 */
	val = 0x10;
	if (HAL_I2C_Mem_Write(&hi2c1, 0x76<<1, 0xF5, I2C_MEMADD_SIZE_8BIT, &val, 1, 100) != HAL_OK)
		return HAL_ERROR;

	/* ctrl_meas (0xF4): temp x2, presión x16, modo normal (mide continuamente) */
	val = 0x57;
	if (HAL_I2C_Mem_Write(&hi2c1, 0x76<<1, 0xF4, I2C_MEMADD_SIZE_8BIT, &val, 1, 100) != HAL_OK)
		return HAL_ERROR;

	HAL_Delay(100);   // esperar la primera medición
	return HAL_OK;
}

/* ---------- Compensación (fórmulas del datasheet Bosch) ---------- */
int32_t bmp_comp_temp(int32_t adc_T)        // devuelve centésimas de °C
{
	int32_t var1 = ((((adc_T >> 3) - ((int32_t)dig_T1 << 1))) * dig_T2) >> 11;
	int32_t var2 = (((((adc_T >> 4) - (int32_t)dig_T1) *
	                  ((adc_T >> 4) - (int32_t)dig_T1)) >> 12) * dig_T3) >> 14;
	t_fine = var1 + var2;
	return (t_fine * 5 + 128) >> 8;
}

uint32_t bmp_comp_pres(int32_t adc_P)       // devuelve Pa (llamar DESPUÉS de comp_temp)
{
	int64_t var1 = (int64_t)t_fine - 128000;
	int64_t var2 = var1 * var1 * dig_P6;
	var2 += (var1 * dig_P5) << 17;
	var2 += ((int64_t)dig_P4) << 35;
	var1 = ((var1 * var1 * dig_P3) >> 8) + ((var1 * dig_P2) << 12);
	var1 = ((((int64_t)1) << 47) + var1) * dig_P1 >> 33;
	if (var1 == 0) return 0;

	int64_t pr = 1048576 - adc_P;
	pr = (((pr << 31) - var2) * 3125) / var1;
	var1 = ((int64_t)dig_P9 * (pr >> 13) * (pr >> 13)) >> 25;
	var2 = ((int64_t)dig_P8 * pr) >> 19;
	pr = ((pr + var1 + var2) >> 8) + ((int64_t)dig_P7 << 4);
	return (uint32_t)(pr >> 8);
}

/* Redondeo al entero más cercano, también para negativos */
int32_t redondear(float x)
{
	return (int32_t)(x >= 0 ? x + 0.5f : x - 0.5f);
}


void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c)
{
	if (hi2c->Instance == I2C1)
	{
		BaseType_t HigherPriorityTaskWoken = pdFALSE;
		xSemaphoreGiveFromISR(sem_i2c, &HigherPriorityTaskWoken);
		portYIELD_FROM_ISR(HigherPriorityTaskWoken);
	}
}


void tarea_i2c(void *p)
{
	while(1)
	{
		vTaskDelay(pdMS_TO_TICKS(1000));
		HAL_I2C_Mem_Read_IT(&hi2c1, 0x76<<1, 0xF7, I2C_MEMADD_SIZE_8BIT, crudo, 6);
	}
}

void tarea_barometro(void *p)
{
	uint8_t datos[6];
	float alt_ref = 0;
	uint8_t hay_ref = 0;

	while(1)
	{
		xSemaphoreTake(sem_i2c, portMAX_DELAY);
		memcpy(datos, crudo, 6);              // copiar antes de que otra lectura lo pise

		/* 1) Armar los valores crudos de 20 bits */
		int32_t adc_P = (int32_t)datos[0] << 12 | (int32_t)datos[1] << 4 | datos[2] >> 4;
		int32_t adc_T = (int32_t)datos[3] << 12 | (int32_t)datos[4] << 4 | datos[5] >> 4;

		/* 2) Compensar (primero temperatura: calcula t_fine que usa la presión) */
		int32_t  temp_centi = bmp_comp_temp(adc_T);   // 2534 = 25,34 °C
		uint32_t pres_pa    = bmp_comp_pres(adc_P);   // 101325 = nivel del mar

		/* 3) Altitud absoluta con atmósfera estándar (1013,25 hPa) */
		float alt_abs = 44330.0f * (1.0f - powf(pres_pa / 101325.0f, 0.190295f));

		/* 4) Altitud relativa: la primera lectura es el 0 m */
		if (!hay_ref) {
			alt_ref = alt_abs;
			hay_ref = 1;
		}
		float alt_rel = alt_abs - alt_ref;

		//Publicar dato
	}
}

void init_bmp280(void){

	sem_i2c = xSemaphoreCreateBinary();

	xTaskCreate(tarea_i2c,
					"tarea_i2c",
					configMINIMAL_STACK_SIZE * 2,
					NULL,
					tskIDLE_PRIORITY + 1,
					NULL);

	xTaskCreate(tarea_barometro,
				"tarea_barometro",
				configMINIMAL_STACK_SIZE * 8,
				NULL,
				tskIDLE_PRIORITY + 1,
				NULL);
}
