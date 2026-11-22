/*
 * gui_dashboard.c
 *
 *  Created on: 9 nov 2026
 *      Author: Nico trombetta
 */


#include "gui_dashboard.h"
#include <stdio.h>
#include <stddef.h>
#include "ui.h"
#include "gui_charts.h"
#include "gui_session.h"

static void float2string(float dato,char* buf){
	/* Se formatea siempre el valor absoluto: el signo lo agrega el llamador. */
	float valor = (dato < 0.0f) ? -dato : dato;
	int total_decimas = (int)(valor * 10.0f + 0.5f);
	int entero = total_decimas / 10;
	int decimal = total_decimas % 10;

	snprintf(buf,20,"%d.%d",entero,decimal);
}

void gui_dashboard_apply(const telemetry_t *t){
	char buf[30];

		update_charts(t->altitude, t->speed);

		//Velocidad
		float2string(t->speed, buf);
		lv_label_set_text(objects.lbl_velocidad, buf);


		//Tiempo
		snprintf(buf,sizeof(buf),"%d:%d:%d",t->time.hora,t->time.minuto,t->time.segundo);
		lv_label_set_text(objects.lbl_time,buf);


		// Velocidad Media
		float2string(t->avg_speed, buf);
		lv_label_set_text(objects.lbl_vel_media,buf);

		//Distancia
		float2string(t->distance, buf);
		lv_label_set_text(objects.lbl_distance,buf);


		//Altura
		if(t->altitude>=0){
			buf[0]='+';
		}else{
			buf[0]='-';
		}
		snprintf(buf,sizeof(buf),"%d",t->altitude);
		lv_label_set_text(objects.lbl_altura,buf);


		//Pendiente
		float2string(t->slope,&buf[1]);
		if(t->slope>=0){
			buf[0]='+';
		}else{
			buf[0]='-';
		}
		lv_label_set_text(objects.lbl_slope,buf);

		//Bateria
		snprintf(buf,sizeof(buf),"%d",t->battery);
		lv_label_set_text(objects.lbl_bateria,buf);

		//Satelites
		snprintf(buf,sizeof(buf),"%d",t->satellites);
		lv_label_set_text(objects.lbl_satelite,buf);

		gui_session_set_satellites(3);
}
