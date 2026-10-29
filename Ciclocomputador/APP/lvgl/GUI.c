#include "GUI.h"
#include "task.h"
#include "ui.h"
#include <stdio.h>


QueueHandle_t Queue_dashboard;

void dashboard_create(void)
{
	Display1_INIT();
	ui_init();
}

void float2string(float dato,char* buf){
	int total_decimas = (int)(dato * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;

	snprintf(buf,20,"%d.%d",entero,decimal);
}

void dashboard_update(Dashboard_data_t datos){
	xQueueOverwrite(Queue_dashboard,&datos);
}

void update_queue(){
	Dashboard_data_t datos;
	char buf[30];

	xQueueReceive(Queue_dashboard,&datos,portMAX_DELAY);

	//Velocidad
	float2string(datos.speed, buf);
	lv_label_set_text(objects.lbl_velocidad, buf);


	//Tiempo
	//dashboard_set_time(datos.time);

	// Velocidad Media
	float2string(datos.avg_speed, &buf[1]);
	lv_label_set_text(objects.lbl_vel_media,buf);

	//Distancia
	float2string(datos.distance, buf);
	lv_label_set_text(objects.lbl_distance,buf);


	//Altura
	float2string(datos.altitude,&buf[1]);
	if(datos.slope>=0){
		buf[0]='+';
	}else{
		buf[0]='-';
	}
	lv_label_set_text(objects.lbl_altura,buf);


	//Pendiente
	float2string(datos.slope,&buf[1]);
	if(datos.slope>=0){
		buf[0]='+';
	}else{
		buf[0]='-';
	}
	lv_label_set_text(objects.lbl_slope,buf);

	//Bateria
	snprintf(buf,4,"%d",datos.battery);
	lv_label_set_text(objects.lbl_bateria,buf);

	//Satelites
	snprintf(buf,8,"%d",datos.satellites);
	lv_label_set_text(objects.lbl_satelite,buf);
}



void vTaskLVGL(void *pvParameters)
{
	lv_init();
	dashboard_create();

    for (;;)
    {
        lv_timer_handler();
        update_queue();
        vTaskDelay(pdMS_TO_TICKS(5));
    }
}


