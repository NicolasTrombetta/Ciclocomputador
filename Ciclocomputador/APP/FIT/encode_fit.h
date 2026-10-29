/*
 * encode_fit.h
 *
 *  Created on: 24 oct 2026
 *      Author: Nico trombetta
 */

#ifndef ENCODE_FIT_H_
#define ENCODE_FIT_H_


#include "fit_product.h"
#include "fit_crc.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "fatfs.h"




#define LOCAL_MESG_RECORD  0
#define LOCAL_MESG_EVENT   1


// 2 * PI (3.14159265)
#define TWOPI 6.2831853

// Number of semicircles per meter at the equator
#define SC_PER_M 107.173

///////////////////////////////////////////////////////////////////////
// Private Function Prototypes
///////////////////////////////////////////////////////////////////////

FRESULT WriteFileHeader(FIL *fp);
///////////////////////////////////////////////////////////////////////
// Creates a FIT file. Puts a place-holder for the file header on top of the file.
///////////////////////////////////////////////////////////////////////

void WriteMessageDefinition(FIT_UINT8 local_mesg_number, const void *mesg_def_pointer, FIT_UINT16 mesg_def_size, FIL *fp);
///////////////////////////////////////////////////////////////////////
// Appends a FIT message definition (including the definition header) to the end of a file.
///////////////////////////////////////////////////////////////////////

void WriteMessageDefinitionWithDevFields
(
	FIT_UINT8 local_mesg_number,
	const void *mesg_def_pointer,
	FIT_UINT8 mesg_def_size,
	FIT_UINT8 number_dev_fields,
	FIT_DEV_FIELD_DEF *dev_field_definitions,
	FIL *fp
);
///////////////////////////////////////////////////////////////////////
// Appends a FIT message definition (including the definition header)
// and additionalo dev field definition data to the end of a file.
///////////////////////////////////////////////////////////////////////

void WriteMessage(FIT_UINT8 local_mesg_number, const void *mesg_pointer, FIT_UINT16 mesg_size, FIL *fp);
///////////////////////////////////////////////////////////////////////
// Appends a FIT message (including the message header) to the end of a file.
///////////////////////////////////////////////////////////////////////

void WriteDeveloperField(const void* data, FIT_UINT16 data_size, FIL *fp);
///////////////////////////////////////////////////////////////////////
// Appends Developer Fields to a Message
///////////////////////////////////////////////////////////////////////

FRESULT WriteData(const void *data, FIT_UINT16 data_size, FIL *fp);
///////////////////////////////////////////////////////////////////////
// Writes data to the file and updates the data CRC.
///////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////
// Private Variables


void TaskSD(void* p);

#endif /* ENCODE_FIT_H_ */
