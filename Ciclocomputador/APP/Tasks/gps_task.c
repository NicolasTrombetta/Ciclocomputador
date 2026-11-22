
#include "gps_task.h"
#include "freeRTOS.h"
#include "semphr.h"
#include "stdio.h"
#include "usart.h"
#include "string.h"
#include "stdlib.h"

#define ZONA_HORARIA  (-3)   // UTC-3 (Argentina)

static QueueHandle_t cola_rx;
static uint8_t buffer_dma[512];
uint32_t contador_ore;

// El GPS envia una trama cada 1 segundo.
// Envia toda la trama y lo que resta del segundo se calla.
// HAL_UARTEx_RxEventCallback() se llama cuando se deja de recibir algo.
// Entonces cuando el GPS se calla, envia la trama completa por cola.
void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef *huart, uint16_t Size) {
	if (huart->Instance == USART1) {
		BaseType_t xHigherPriorityTaskWoken = pdFALSE;
		static uint8_t delay = 0;

		if (delay == 10){
			trama_t trama;
			trama.len = (Size > sizeof(trama.datos)) ? sizeof(trama.datos) : Size;
			// Copia a trama.datos lo que le llega del GPS
			memcpy(trama.datos, buffer_dma, trama.len);
			// Envia la trama por cola para que la reciba tarea_tx
			xQueueSendFromISR(cola_rx, &trama, &xHigherPriorityTaskWoken);
		}

		delay++;
		delay%=11;
		// HAL_UARTEx_ReceiveToIdle_DMA copia los bytes que recibe al buffer en 2do plano
		// El primer llamado de esta funcion esta en el main
		HAL_UARTEx_ReceiveToIdle_DMA(&huart1, buffer_dma, sizeof(buffer_dma));
		portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
	}
}

// Entra aca en cado de overrun (recibe otro byte del GPS antes de leer el anterior)
// No deberia entrar nunca aca pero esta por las dudas
// contador_ore sirve para saber si entra aca alguna vez
void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart) {
	if (huart->Instance == USART1) {
		contador_ore++;
		__HAL_UART_CLEAR_OREFLAG(huart);
		HAL_UARTEx_ReceiveToIdle_DMA(&huart1, buffer_dma, sizeof(buffer_dma));
	}
}

// Devuelve el campo n-esimo (0 = identificador) de una sentencia NMEA.
// A diferencia de strtok_r, NO colapsa comas consecutivas: respeta campos vacios.
// Copia el resultado en 'destino' y lo deja null-terminated.
void campo_nmea(const char *linea, uint8_t indice, char *destino, uint16_t tam) {
	uint8_t campo_actual = 0;
	uint16_t escritos = 0;
	destino[0] = '\0';

	for (const char *p = linea; *p != '\0'; p++) {
		if (*p == ',') {
			campo_actual++;
			if (campo_actual > indice)
				break;
			continue;
		}
		if (campo_actual == indice) {
			if (*p == '*')
				break;              // llegamos al checksum, cortar
			if (escritos < tam - 1)
				destino[escritos++] = *p;
		}
	}
	destino[escritos] = '\0';
}

// Convierte fecha (ddmmyy) y hora (hhmmss) de UTC a hora local (ZONA_HORARIA).
// Si al restar las horas se pasa de 00:00, retrocede un dia
// (y mes / año si hace falta, contemplando bisiestos).
// Si la hora no es valida (GPS sin datos aun) copia todo sin tocar.
// Si solo la fecha no es valida, convierte la hora y deja la fecha como esta.
void utc_a_local(const char *fecha_utc, const char *hora_utc,
		char *fecha_local, char *hora_local) {
	static const uint8_t dias_mes[12] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

	strcpy(fecha_local, fecha_utc);
	strcpy(hora_local, hora_utc);

	if (strlen(hora_utc) != 6)
		return;

	int hh = (hora_utc[0] - '0') * 10 + (hora_utc[1] - '0');
	int mm = (hora_utc[2] - '0') * 10 + (hora_utc[3] - '0');
	int ss = (hora_utc[4] - '0') * 10 + (hora_utc[5] - '0');

	hh += ZONA_HORARIA;

	int cambio_dia = 0;
	if (hh < 0) {
		hh += 24;
		cambio_dia = -1;
	} else if (hh >= 24) {      // por si algun dia se usa una zona UTC+
		hh -= 24;
		cambio_dia = 1;
	}

	snprintf(hora_local, 7, "%02d%02d%02d", hh, mm, ss);

	if (strlen(fecha_utc) != 6 || cambio_dia == 0)
		return;

	int dia  = (fecha_utc[0] - '0') * 10 + (fecha_utc[1] - '0');
	int mes  = (fecha_utc[2] - '0') * 10 + (fecha_utc[3] - '0');
	int anio = (fecha_utc[4] - '0') * 10 + (fecha_utc[5] - '0');   // 20yy

	if (mes < 1 || mes > 12)
		return;

	int dias_este_mes = (mes == 2 && anio % 4 == 0) ? 29 : dias_mes[mes - 1];

	if (cambio_dia < 0) {
		dia--;
		if (dia < 1) {
			mes--;
			if (mes < 1) {
				mes = 12;
				anio = (anio + 99) % 100;   // 00 -> 99
			}
			dia = (mes == 2 && anio % 4 == 0) ? 29 : dias_mes[mes - 1];
		}
	} else {
		dia++;
		if (dia > dias_este_mes) {
			dia = 1;
			mes++;
			if (mes > 12) {
				mes = 1;
				anio = (anio + 1) % 100;
			}
		}
	}

	snprintf(fecha_local, 7, "%02d%02d%02d", dia, mes, anio);
}

// Recibe la trama cruda desde la HAL_UARTEx_RxEventCallback
// Parsea la trama y envia los datos que interesan a tarea_tx por cola
void tarea_gps(void *p) {
	trama_t trama;
	static gps_data_t gps_data = { 0 };
	char estado[2], fecha[7];

	while (1) {
		if (xQueueReceive(cola_rx, &trama, portMAX_DELAY) == pdPASS) {
			char buffer_completo[540];
			memcpy(buffer_completo, trama.datos, trama.len);
			buffer_completo[trama.len] = '\0';

			char *guardar_lineas;
			char *linea = strtok_r(buffer_completo, "\r\n", &guardar_lineas);

			while (linea != NULL) {

				if (strncmp(linea, "$GPRMC", 6) == 0) {

					campo_nmea(linea, 2, estado, sizeof(estado)); // A / V
					campo_nmea(linea, 9, fecha, sizeof(fecha));  // ddmmyy

					if (estado[0])
						gps_data.estado = estado[0];
					//if (fecha[0])
//						strncpy(gps_data.fecha, fecha,
//								sizeof(gps_data.fecha) - 1);
				} else if (strncmp(linea, "$GPGGA", 6) == 0) {
					char hora[7], lat[12], ns[2], lon[12], ew[2], sats[4];
					campo_nmea(linea, 1, hora, sizeof(hora)); // hhmmss.ss
					campo_nmea(linea, 2, lat, sizeof(lat));  // ddmm.mmmm
					campo_nmea(linea, 3, ns, sizeof(ns));   // N / S
					campo_nmea(linea, 4, lon, sizeof(lon));  // dddmm.mmmm
					campo_nmea(linea, 5, ew, sizeof(ew));   // E / W
					campo_nmea(linea, 7, sats, sizeof(sats)); // cant. satelites

					if (hora[0])
						//strncpy(gps_data.hora, hora, sizeof(gps_data.hora) - 1);

					if (lat[0])
						//strncpy(gps_data.lat, lat, sizeof(gps_data.lat) - 1);
						gps_data.lat=atof(lat);
					if (ns[0])
						gps_data.ns = ns[0];
					if (lon[0])
						//strncpy(gps_data.lon, lon, sizeof(gps_data.lon) - 1);
						gps_data.lon=atof(lon);
					if (ew[0])
						gps_data.ew = ew[0];
					if (sats[0])
						gps_data.sats = (uint16_t) atoi(sats);

					char fecha_local[7], hora_local[7];
					utc_a_local(fecha,hora,fecha_local,hora_local);

					gps_data.hora=atoi(hora_local);
					gps_data.fecha=atoi(fecha_local);

				}

				linea = strtok_r(NULL, "\r\n", &guardar_lineas);
			}
		}
	}
}

void init_gps(void){

		cola_rx = xQueueCreate(5, sizeof(trama_t));		// ISR --> tarea_calculo

		xTaskCreate(tarea_gps, "gps",
		configMINIMAL_STACK_SIZE * 4,
		NULL,
		tskIDLE_PRIORITY + 1,
		NULL);
}
