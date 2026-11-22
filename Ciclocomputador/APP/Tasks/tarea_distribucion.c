/*
 * tarea_distribucion.c
 *
 *  Created on: 18 nov 2026
 *      Author: Nico trombetta
 */

#include "FreeRTOS.h"
#include "queue.h"
#include "tarea_distribuicion.h"
#include "fit_task.h"
#include "gui.h"


static QueueHandle_t queue_distribucion;
static msg_data_t buf;

void tarea_distribucion(void *p){
	sd_telemetry_t sd_data;
	gui_msg_t display_data;

	while(1){
		xQueueReceive(queue_distribucion, &buf, portMAX_DELAY);
		switch(buf.msg){
			case MSG_GPS:
				if(buf.gps.ns=='S'){
					sd_data.position_lat=-buf.gps.lat;
				}else{
					sd_data.position_lat=buf.gps.lat;
				}

				if(buf.gps.ns=='S'){
					sd_data.position_long=-buf.gps.lon;
				}else{
					sd_data.position_long=buf.gps.lon;
				}

				display_data.p.telemetry.satellites=buf.gps.sats;


				break;
			case MSG_BAROMETRO:
				sd_data.enhanced_altitude=buf.barometro;
				break;
			case MSG_BATERIA:
				display_data.p.telemetry.battery=buf.bateria;
				break;
			case MSG_HALL:
				display_data.p.telemetry.speed=buf.hall;
				sd_data.speed=buf.hall;
				break;
		}

		sd_post_data(&sd_data);

		display_data.type=MSG_TELEMETRY;
		gui_post(&display_data);
	}
}

void init_distribucion(void){
	queue_distribucion = xQueueCreate(5, sizeof(msg_data_t));		// ISR --> tarea_calculo

	xTaskCreate(tarea_distribucion, "distribucion",
	configMINIMAL_STACK_SIZE * 4,
	NULL,
	tskIDLE_PRIORITY + 1,
	NULL);
}

