/*
 * encode_fit.c
 *
 *  Created on: 24 oct 2026
 *      Author: Nico trombetta
 */

#define _CRT_SECURE_NO_WARNINGS

#include "stdio.h"
#include "string.h"
#include "fatfs.h"
#include "encode_fit.h"
#include "FreeRTOS.h"

FIT_UINT16 data_crc;

FRESULT WriteFileHeader(FIL *fp)
{
	FRESULT res;
	FIT_FILE_HDR file_header;
	UINT bw;

	file_header.header_size = FIT_FILE_HDR_SIZE;
	file_header.profile_version = FIT_PROFILE_VERSION;
	file_header.protocol_version = FIT_PROTOCOL_VERSION_20;
	memcpy((FIT_UINT8 *)&file_header.data_type, ".FIT", 4);
	file_header.data_size =  (FIT_UINT32)f_size(fp) - FIT_FILE_HDR_SIZE - sizeof(FIT_UINT16);
	file_header.crc = FitCRC_Calc16(&file_header, FIT_STRUCT_OFFSET(crc, FIT_FILE_HDR));

	// Volver al inicio y escribir el header
	res = f_lseek(fp, 0);
	if (res != FR_OK) return res;

	res = f_write(fp, &file_header, FIT_FILE_HDR_SIZE, &bw);
	if (res != FR_OK) return res;
	if (bw != FIT_FILE_HDR_SIZE) return FR_DISK_ERR;

	return FR_OK;
}

void WriteMessageDefinition(FIT_UINT8 local_mesg_number, const void *mesg_def_pointer, FIT_UINT16 mesg_def_size, FIL *fp)
{
	FIT_UINT8 header = local_mesg_number | FIT_HDR_TYPE_DEF_BIT;
	WriteData(&header, FIT_HDR_SIZE, fp);
	WriteData(mesg_def_pointer, mesg_def_size, fp);
}

void WriteMessageDefinitionWithDevFields
(
	FIT_UINT8 local_mesg_number,
	const void *mesg_def_pointer,
	FIT_UINT8 mesg_def_size,
	FIT_UINT8 number_dev_fields,
	FIT_DEV_FIELD_DEF *dev_field_definitions,
	FIL *fp
)
{
	FIT_UINT16 i;
	FIT_UINT8 header = local_mesg_number | FIT_HDR_TYPE_DEF_BIT | FIT_HDR_DEV_DATA_BIT;
	WriteData(&header, FIT_HDR_SIZE, fp);
	WriteData(mesg_def_pointer, mesg_def_size, fp);

	WriteData(&number_dev_fields, sizeof(FIT_UINT8), fp);
	for (i = 0; i < number_dev_fields; i++)
	{
		WriteData(&dev_field_definitions[i], sizeof(FIT_DEV_FIELD_DEF), fp);
	}
}

void WriteMessage(FIT_UINT8 local_mesg_number, const void *mesg_pointer, FIT_UINT16 mesg_size, FIL *fp)
{
	WriteData(&local_mesg_number, FIT_HDR_SIZE, fp);
	WriteData(mesg_pointer, mesg_size, fp);
}

void WriteDeveloperField(const void *data, FIT_UINT16 data_size, FIL *fp)
{
	WriteData(data, data_size, fp);
}

FRESULT WriteData(const void *data, FIT_UINT16 data_size, FIL *fp)
{
	FIT_UINT16 offset;
	UINT bw;

	FRESULT res = f_write(fp, data,data_size, &bw);

	for (offset = 0; offset < data_size; offset++)
		data_crc = FitCRC_Get16(data_crc, *((FIT_UINT8 *)data + offset));

	return res;
}





