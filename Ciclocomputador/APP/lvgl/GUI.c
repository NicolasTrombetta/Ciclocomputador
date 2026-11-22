#include <gui.h>
#include "task.h"
#include "ui.h"
#include <stdio.h>
#include <math.h>
#include <stddef.h>
#include "gui_charts.h"
#include "gui_notify.h"
#include "gui_settings.h"
#include "gui_nav.h"
#include "gui_session.h"
#include "gui_dashboard.h"

static QueueHandle_t s_queue_gui=NULL;

void gui_init(void)
{
	lv_init();
	display1_init();
	ui_init();
	ui_init_groups();
	charts_init();
	gui_session_set_satellites(0);

	s_queue_gui=xQueueCreate(10,sizeof(gui_msg_t));
}



uint8_t gui_post(const gui_msg_t *m){
	 if (s_queue_gui == NULL) return 0;
	return xQueueSend(s_queue_gui, m, 0) == pdPASS;
}

static void on_button(uint8_t btn)
{
    if (gui_modal_active()) {          // el pulsador solo cierra el modal
        error_box_close();
        return;
    }

    uint8_t cmd = gui_session_cmd_for_sd(btn);
    if (cmd!=EV_BTN_NONE)
    	sd_post_event(cmd);
    gui_nav_handle(EV_NONE, btn);
}

static void on_telemetry(const telemetry_t *t)
{
	gui_dashboard_apply(t);                         // labels
	gui_session_set_satellites(t->satellites);
}

static void on_rec_event(sd_event_t ev)
{
	gui_nav_handle(ev, EV_BTN_NONE);
	gui_session_handle(ev);
}

static void dispatch(const gui_msg_t *m)
{
    switch (m->type) {
    case MSG_BUTTON:    on_button(m->p.ev_button);     break;
    case MSG_REC_EVENT: on_rec_event(m->p.ev_sd);      break;
    case MSG_TELEMETRY: on_telemetry(&m->p.telemetry); break;
    }
}


void task_gui(void *pvParameters)
{
	gui_init();
	gui_msg_t m;

	for (;;) {
		uint32_t delay = lv_timer_handler();
		if (delay < 1) delay = 1;
		if (delay > 10) delay = 10;

		if (xQueueReceive(s_queue_gui, &m, pdMS_TO_TICKS(delay)) == pdPASS) {
		    do {
		        dispatch(&m);
		    } while (xQueueReceive(s_queue_gui, &m, 0) == pdPASS);
		}
	}
}


