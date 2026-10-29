/*
 * sd_task.h
 *
 *  Created on: 28 oct 2026
 *      Author: Nico trombetta
 */

#ifndef TASKS_SD_TASK_H_
#define TASKS_SD_TASK_H_



#define SD_MAX_DATA   128      // alcanza para nombre, definiciones, records y header (14 B)

typedef enum {
    SD_OPEN,        // data = nombre (con '\0'), arg = flags FatFs (FA_WRITE | FA_CREATE_ALWAYS)
    SD_WRITE,       // data/len = bytes a agregar al final
    SD_WRITE_AT,    // data/len = bytes, arg = offset donde escribir (después vuelve al final)
    SD_SYNC,        // fuerza escritura a la tarjeta
    SD_CLOSE        // cierra el archivo
} sd_cmd_t;

typedef struct {
	FIL         *file;      // el FIL pertenece a quien manda el mensaje
    sd_cmd_t     cmd;
    uint32_t     arg;                 // flags (OPEN) u offset (WRITE_AT); ignorado en el resto
    uint16_t     len;                 // bytes válidos en data
    uint8_t      data[SD_MAX_DATA];
} sd_msg_t;

void task_sd(void *p);
void init_task_sd();

#endif /* TASKS_SD_TASK_H_ */
