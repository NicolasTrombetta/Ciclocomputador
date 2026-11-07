/*
 * fit_task.c
 *
 *  Created on: 28 oct 2026
 *      Author: Nico trombetta
 */

#include "fit_task.h"
#include "encode_fit.h"
#include "task_pulsador.h"
#include <string.h>

typedef enum {
    GRABANDO,
    PAUSADO,
    FINALIZANDO,
	ESPERANDO,
} Estado_sd_t;

QueueHandle_t Queue_evento_sd;
QueueHandle_t Queue_dato_sd;
QueueHandle_t Queue_sd_eventos;
QueueSetHandle_t Queue_set_sd;

static uint32_t blocks;
FIT_DATE_TIME timestamp=0;
FIL f;
extern FIT_UINT16 data_crc;

static void publicar_evento_sd(Evento_sd_t evento)
{
	if (Queue_sd_eventos != NULL)
		xQueueSend(Queue_sd_eventos, &evento, 0);
}

void task_fit(void *p){
	Estado_sd_t estado=ESPERANDO;

	DatoProcesamiento_t datoRecibido;
	uint8_t eventoRecibido;
	QueueSetMemberHandle_t miembroActivado;


	for(;;){
	miembroActivado = xQueueSelectFromSet(Queue_set_sd, portMAX_DELAY);

		if (miembroActivado == Queue_dato_sd) {
			  xQueueReceive(Queue_dato_sd, &datoRecibido, 0);
			  if(estado==GRABANDO){
				  escribirRecord(&datoRecibido);
			  }
		}else if (miembroActivado == Queue_evento_sd) {
				xQueueReceive(Queue_evento_sd, &eventoRecibido, 0);

				if(estado==GRABANDO){
					if(eventoRecibido==EV_BTN_MENU_SHORT){
						escribirEventoTimer(FIT_EVENT_TYPE_STOP_ALL, timestamp);
						estado=PAUSADO;
						publicar_evento_sd(EV_PAUSED);
					}else if(eventoRecibido==EV_BTN_MENU_LONG){
						publicar_evento_sd(EV_SAVING);
						cerrarArchivo();
						estado=ESPERANDO;
						publicar_evento_sd(EV_SAVED);
					}
				}else if(estado==PAUSADO){
					if(eventoRecibido==EV_BTN_MENU_SHORT){
						escribirEventoTimer(FIT_EVENT_TYPE_START, timestamp);
						estado=GRABANDO;
						publicar_evento_sd(EV_RESUMED);
					}else if(eventoRecibido==EV_BTN_MENU_LONG){
						publicar_evento_sd(EV_SAVING);
						cerrarArchivo();
						estado=ESPERANDO;
						publicar_evento_sd(EV_SAVED);
					}
				}else if(estado==ESPERANDO){
					if(eventoRecibido==EV_BTN_MENU_SHORT){
						if(crearArchivo("Prueba_2.fit")==FR_OK){
							estado=GRABANDO;
							publicar_evento_sd(EV_REC_STARTED);
						}else{
							publicar_evento_sd(EV_SD_ERROR);
						}
					}
				}

		}

	}
}

void init_task_fit(){
	 Queue_dato_sd= xQueueCreate(10,sizeof(DatoProcesamiento_t));
	 Queue_evento_sd=xQueueCreate(5,sizeof(uint8_t));
	 Queue_sd_eventos=xQueueCreate(10,sizeof(Evento_sd_t));

	 Queue_set_sd = xQueueCreateSet(15);

	 xQueueAddToSet(Queue_dato_sd, Queue_set_sd);
	 xQueueAddToSet(Queue_evento_sd, Queue_set_sd);

	 xTaskCreate(
			 	 task_fit,
				  "SD_Task",
				  2048,
				  NULL,
				  tskIDLE_PRIORITY + 2,
				  NULL
			  );

}

FRESULT crearArchivo(char *s){
		FRESULT res;


		 res = f_mount(&USERFatFS, USERPath, 1);
		 if (res != FR_OK) return res;

		 res= f_open(&f,s,FA_CREATE_ALWAYS | FA_WRITE | FA_READ);
		   if (res != FR_OK) {
			   f_mount(NULL, USERPath, 0);
		     return res;
		   }

		  	WriteFileHeader(&f);

		  	FIT_DATE_TIME timestamp = 1000000000; // 2021-09-08T01:46:40-0600Z in seconds since the FIT Epoch of 1989-12-31T:00:00:00Z

		  	// Write file id message.
		  	{
		  		FIT_UINT8 local_mesg_number = 0;
		  		FIT_FILE_ID_MESG file_id_mesg;
		  		Fit_InitMesg(fit_mesg_defs[FIT_MESG_FILE_ID], &file_id_mesg);

		  		file_id_mesg.time_created = timestamp;
		  		file_id_mesg.type = FIT_FILE_ACTIVITY;
		  		file_id_mesg.manufacturer = FIT_MANUFACTURER_DEVELOPMENT;
		  		WriteMessageDefinition(local_mesg_number, fit_mesg_defs[FIT_MESG_FILE_ID], FIT_FILE_ID_MESG_DEF_SIZE, &f);
		  		WriteMessage(local_mesg_number, &file_id_mesg, FIT_FILE_ID_MESG_SIZE, &f);
		  	}

		  	// Write Device Info message.
		  	{
		  		FIT_UINT8 local_mesg_number = 0;
		  		FIT_DEVICE_INFO_MESG device_info_mesg;
		  		Fit_InitMesg(fit_mesg_defs[FIT_MESG_DEVICE_INFO], &device_info_mesg);

		  		device_info_mesg.device_index = FIT_DEVICE_INDEX_CREATOR;
		  		device_info_mesg.manufacturer = FIT_MANUFACTURER_DEVELOPMENT;
		  		device_info_mesg.product = 0; // USE A UNIQUE ID FOR EACH OF YOUR PRODUCTS
		  		strcpy(device_info_mesg.product_name, "FIT Cookbook"); // Max 20 Chars
		  		device_info_mesg.serial_number = 123456;
		  		device_info_mesg.software_version = 100; // 1.0 * 100
		  		device_info_mesg.timestamp = timestamp;

		  		WriteMessageDefinition(local_mesg_number, fit_mesg_defs[FIT_MESG_DEVICE_INFO], FIT_DEVICE_INFO_MESG_DEF_SIZE, &f);
		  		WriteMessage(local_mesg_number, &device_info_mesg, FIT_DEVICE_INFO_MESG_SIZE, &f);
		  	}

		  	// Write Event message - START Event
		  	{
		  		FIT_UINT8 local_mesg_number = 0;
		  		FIT_EVENT_MESG event_mesg;
		  		Fit_InitMesg(fit_mesg_defs[FIT_MESG_EVENT], &event_mesg);

		  		event_mesg.timestamp = timestamp;
		  		event_mesg.event = FIT_EVENT_TIMER;
		  		event_mesg.event_type = FIT_EVENT_TYPE_START;

		  		WriteMessageDefinition(local_mesg_number, fit_mesg_defs[FIT_MESG_EVENT], FIT_EVENT_MESG_DEF_SIZE, &f);
		  		WriteMessage(local_mesg_number, &event_mesg, FIT_EVENT_MESG_SIZE, &f);
		  	}

		  	WriteMessageDefinition(LOCAL_MESG_RECORD, fit_mesg_defs[FIT_MESG_RECORD], FIT_RECORD_MESG_DEF_SIZE, &f);
		  	return res;
}


void escribirRecord(DatoProcesamiento_t *dato){
	FIT_RECORD_MESG record_mesg;
	Fit_InitMesg(fit_mesg_defs[FIT_MESG_RECORD], &record_mesg);

	record_mesg.timestamp = timestamp;
	record_mesg.distance = dato->distance;
	record_mesg.speed = dato->speed;
	record_mesg.cadence = 0;
	record_mesg.enhanced_altitude = dato->enhanced_altitude;
	record_mesg.position_lat = dato->position_lat;
	record_mesg.position_long = dato->position_long;

	WriteMessage(LOCAL_MESG_RECORD, &record_mesg, FIT_RECORD_MESG_SIZE, &f);

	timestamp++;
	blocks++;
}



void cerrarArchivo(){
	 	 UINT bw;
	    //f_size(&f);

	    f_lseek(&f, f_size(&f));
	    f_write(&f, &data_crc, sizeof(FIT_UINT16), &bw);
	    WriteFileHeader(&f);
	    f_sync(&f);
	    f_close(&f);
	    f_mount(NULL, USERPath, 0);
}

void escribirEventoTimer(FIT_EVENT_TYPE tipo, FIT_DATE_TIME ts){
	FIT_EVENT_MESG event_mesg;
	Fit_InitMesg(fit_mesg_defs[FIT_MESG_EVENT], &event_mesg);

	event_mesg.timestamp = ts;
	event_mesg.event = FIT_EVENT_TIMER;
	event_mesg.event_type = tipo;

	WriteMessage(LOCAL_MESG_EVENT, &event_mesg, FIT_EVENT_MESG_SIZE, &f);
}

