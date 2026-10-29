/**
  ******************************************************************************
  * @file    ili9341.c
  * @author  MCD Application Team
  * @version V1.0.2
  * @date    02-December-2014
  * @brief   This file includes the LCD driver for ILI9341 LCD.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2014 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
#include "ili9341.h"
#include "gpio.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "semphr.h"

/** @addtogroup BSP
  * @{
  */ 

/** @addtogroup Components
  * @{
  */ 
  
/** @addtogroup ILI9341
  * @brief This file provides a set of functions needed to drive the 
  *        ILI9341 LCD.
  * @{
  */

/** @defgroup ILI9341_Private_TypesDefinitions
  * @{
  */ 
/**
  * @}
  */ 

/** @defgroup ILI9341_Private_Defines
  * @{
  */
/**
  * @}
  */ 
  
/** @defgroup ILI9341_Private_Macros
  * @{
  */
/**
  * @}
  */  

/** @defgroup ILI9341_Private_Variables
  * @{
  */ 

/**
  * @}
  */ 
  
/** @defgroup ILI9341_Private_FunctionPrototypes
  * @{
  */

/**
  * @}
  */ 
  
/** @defgroup ILI9341_Private_Functions
  * @{
  */   

/**
  * @brief  Power on the LCD.
  * @param  None
  * @retval None
  */
void ili9341_Init(void)
{
  /* Initialize ILI9341 low level bus layer ----------------------------------*/
  LCD_IO_Init();
  
  /* Configure LCD */
  ili9341_WriteReg(0xCA);
  ili9341_WriteData(0xC3);
  ili9341_WriteData(0x08);
  ili9341_WriteData(0x50);
  ili9341_WriteReg(LCD_POWERB);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0xC1);
  ili9341_WriteData(0x30);
  ili9341_WriteReg(LCD_POWER_SEQ);
  ili9341_WriteData(0x64);
  ili9341_WriteData(0x03);
  ili9341_WriteData(0x12);
  ili9341_WriteData(0x81);
  ili9341_WriteReg(LCD_DTCA);
  ili9341_WriteData(0x85);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x78);
  ili9341_WriteReg(LCD_POWERA);
  ili9341_WriteData(0x39);
  ili9341_WriteData(0x2C);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x34);
  ili9341_WriteData(0x02);
  ili9341_WriteReg(LCD_PRC);
  ili9341_WriteData(0x20);
  ili9341_WriteReg(LCD_DTCB);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x00);
  ili9341_WriteReg(LCD_FRMCTR1);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x1B);
  ili9341_WriteReg(LCD_DFC);
  ili9341_WriteData(0x0A);
  ili9341_WriteData(0xA2);
  ili9341_WriteReg(LCD_POWER1);
  ili9341_WriteData(0x10);
  ili9341_WriteReg(LCD_POWER2);
  ili9341_WriteData(0x10);
  ili9341_WriteReg(LCD_VCOM1);
  ili9341_WriteData(0x45);
  ili9341_WriteData(0x15);
  ili9341_WriteReg(LCD_VCOM2);
  ili9341_WriteData(0x90);
  ili9341_WriteReg(LCD_MAC);
  ili9341_WriteData(0xC8);
  ili9341_WriteReg(LCD_3GAMMA_EN);
  ili9341_WriteData(0x00);
  ili9341_WriteReg(LCD_RGB_INTERFACE);
  ili9341_WriteData(0xC2);
  ili9341_WriteReg(LCD_DFC);
  ili9341_WriteData(0x0A);
  ili9341_WriteData(0xA7);
  ili9341_WriteData(0x27);
  ili9341_WriteData(0x04);
  
  /* Colomn address set */
  ili9341_WriteReg(LCD_COLUMN_ADDR);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0xEF);
  /* Page address set */
  ili9341_WriteReg(LCD_PAGE_ADDR);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x01);
  ili9341_WriteData(0x3F);
  ili9341_WriteReg(LCD_INTERFACE);
  ili9341_WriteData(0x01);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x00);
  
  ili9341_WriteReg(LCD_GRAM);
  LCD_Delay(200);
  
  ili9341_WriteReg(LCD_GAMMA);
  ili9341_WriteData(0x01);
  
  ili9341_WriteReg(LCD_PGAMMA);
  ili9341_WriteData(0x0F);
  ili9341_WriteData(0x29);
  ili9341_WriteData(0x24);
  ili9341_WriteData(0x0C);
  ili9341_WriteData(0x0E);
  ili9341_WriteData(0x09);
  ili9341_WriteData(0x4E);
  ili9341_WriteData(0x78);
  ili9341_WriteData(0x3C);
  ili9341_WriteData(0x09);
  ili9341_WriteData(0x13);
  ili9341_WriteData(0x05);
  ili9341_WriteData(0x17);
  ili9341_WriteData(0x11);
  ili9341_WriteData(0x00);
  ili9341_WriteReg(LCD_NGAMMA);
  ili9341_WriteData(0x00);
  ili9341_WriteData(0x16);
  ili9341_WriteData(0x1B);
  ili9341_WriteData(0x04);
  ili9341_WriteData(0x11);
  ili9341_WriteData(0x07);
  ili9341_WriteData(0x31);
  ili9341_WriteData(0x33);
  ili9341_WriteData(0x42);
  ili9341_WriteData(0x05);
  ili9341_WriteData(0x0C);
  ili9341_WriteData(0x0A);
  ili9341_WriteData(0x28);
  ili9341_WriteData(0x2F);
  ili9341_WriteData(0x0F);
  
  ili9341_WriteReg(LCD_SLEEP_OUT);
  /* Set Pixel Format to 16-bit/pixel (RGB565) */
    ili9341_WriteReg(0x3A);
    ili9341_WriteData(0x55); // 0x55 = 16 bits/pixel
  LCD_Delay(200);
  ili9341_WriteReg(LCD_DISPLAY_ON);
  /* GRAM start writing */
  //ili9341_WriteReg(LCD_GRAM);
}

/**
  * @brief  Disables the Display.
  * @param  None
  * @retval LCD Register Value.
  */
uint16_t ili9341_ReadID(void)
{
  LCD_IO_Init();
  return ((uint16_t)ili9341_ReadData(LCD_READ_ID4, LCD_READ_ID4_SIZE));
}

/**
  * @brief  Enables the Display.
  * @param  None
  * @retval None
  */
void ili9341_DisplayOn(void)
{
  /* Display On */
  ili9341_WriteReg(LCD_DISPLAY_ON);
}

/**
  * @brief  Disables the Display.
  * @param  None
  * @retval None
  */
void ili9341_DisplayOff(void)
{
  /* Display Off */
  ili9341_WriteReg(LCD_DISPLAY_OFF);
}

void ili9341_SetCursor(uint16_t x,uint16_t y){
	ili9341_SetDisplayWindow(x, y, 1, 1);
}

/**
  * @brief  Writes  to the selected LCD register.
  * @param  LCD_Reg: address of the selected register.
  * @retval None
  */
void ili9341_WriteReg(uint8_t LCD_Reg)
{
  LCD_IO_WriteReg(LCD_Reg);
}

/**
  * @brief  Writes data to the selected LCD register.
  * @param  LCD_Reg: address of the selected register.
  * @retval None
  */
void ili9341_WriteData(uint8_t RegValue)
{
  LCD_IO_WriteData(RegValue);
}


/**
  * @brief  Reads the selected LCD Register.
  * @param  RegValue: Address of the register to read
  * @param  ReadSize: Number of bytes to read
  * @retval LCD Register Value.
  */
uint32_t ili9341_ReadData(uint16_t RegValue, uint8_t ReadSize)
{
  /* Read a max of 4 bytes */
  return (LCD_IO_ReadData(RegValue, ReadSize));
}

/**
  * @brief  Writes a pixel.
  * @param  Xpos: specifies the x position.
  * @param  Ypos: specifies the y position.
  * @param  color: pixel color in RGB565 format.
  * @retval None
  */

void ili9341_WritePixel(uint16_t X, uint16_t Y, uint16_t Colour)
{
	    ili9341_SetCursor(X, Y);

	    ili9341_WriteReg(0x2C);
	    LCD_IO_CS_Select();
	    LCD_IO_DC_Data();

	    uint8_t Temp_Buffer2[2] = {Colour>>8, Colour};
	    LCD_IO_Transmit(Temp_Buffer2, 2);
	    LCD_IO_CS_Deselect();
}

void ili9341_SetDisplayWindow(uint16_t Xpos,uint16_t Ypos,uint16_t Width ,uint16_t Height){
	uint16_t Xend=Xpos+Width-1;
	uint16_t Yend=Ypos+Height-1;

	uint8_t XBuf[]={Xpos >> 8,Xpos & 0xFF,Xend >> 8,Xend & 0xFF};
	uint8_t YBuf[]={Ypos >> 8,Ypos & 0xFF,Yend >> 8,Yend & 0xFF};

	ili9341_WriteReg(0x2A);

	LCD_IO_CS_Select();
	LCD_IO_DC_Data();
	LCD_IO_Transmit(XBuf,4);

	ili9341_WriteReg(0x2B);
	LCD_IO_CS_Select();
	LCD_IO_DC_Data();
	LCD_IO_Transmit(YBuf,4);
	LCD_IO_CS_Deselect();
}

void ili9341_DrawHLine(uint16_t Xpos,uint16_t Ypos,uint16_t len,uint16_t Colour){

	uint8_t aux[ILI9341_LCD_PIXEL_WIDTH*2];
	uint8_t hi = Colour >> 8;
	uint8_t lo = Colour & 0xFF;

	for(int i=0;i<len;i++){
		aux[i*2]=hi;
		aux[i*2+1]=lo;
	}

	ili9341_SetDisplayWindow(Xpos, Ypos, len, 1);

	ili9341_WriteReg(0x2C);

	LCD_IO_CS_Select();
	LCD_IO_DC_Data();
	LCD_IO_Transmit((uint8_t*)aux,len*2);
	LCD_IO_CS_Deselect();

}

void ili9341_DrawVLine(uint16_t Xpos,uint16_t Ypos,uint16_t len,uint16_t Colour){
		uint8_t aux[ILI9341_LCD_PIXEL_HEIGHT*2];
		uint8_t hi = Colour >> 8;
		uint8_t lo = Colour & 0xFF;

		for(int i=0;i<len;i++){
			aux[i*2]=hi;
			aux[i*2+1]=lo;
		}

		ili9341_SetDisplayWindow(Xpos, Ypos,1, len);

		ili9341_WriteReg(0x2C);

		LCD_IO_CS_Select();
		LCD_IO_DC_Data();
		LCD_IO_Transmit((uint8_t*)aux,len*2);
		LCD_IO_CS_Deselect();
}

void ili9341_DrawFilledRectangle(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1,uint16_t colour){

	  	uint8_t buffer[256 * 2];   /* 256 píxeles, 2 bytes cada uno */
	    uint16_t xlen = x1 - x0;
	    uint16_t ylen = y1 - y0;
	    uint32_t totalPixels = (uint32_t)xlen * ylen;

	    /* Llenar el buffer UNA sola vez con el color, en orden big-endian */
	    uint8_t hi = (uint8_t)(colour >> 8);
	    uint8_t lo = (uint8_t)(colour & 0xFF);
	    for (int i = 0; i < 256; i++)
	    {
	        buffer[i * 2]     = hi;
	        buffer[i * 2 + 1] = lo;
	    }

	    ili9341_SetDisplayWindow(x0, y0, xlen, ylen);
	    ili9341_WriteReg(0x2C);

	    LCD_IO_CS_Select();
	    LCD_IO_DC_Data();

	    uint32_t fullChunks = totalPixels / 256;
	    uint32_t remainder  = totalPixels % 256;

	    for (uint32_t i = 0; i < fullChunks; i++)
	    {
	        LCD_IO_Transmit(buffer, 256 * 2);
	    }

	    if (remainder > 0)
	    {
	        LCD_IO_Transmit(buffer, remainder * 2);
	    }

	    LCD_IO_CS_Deselect();
}

/**
  * @brief  Get LCD PIXEL WIDTH.
  * @param  None
  * @retval LCD PIXEL WIDTH.
  */
uint16_t ili9341_GetLcdPixelWidth(void)
{
  /* Return LCD PIXEL WIDTH */
  return ILI9341_LCD_PIXEL_WIDTH;
}

/**
  * @brief  Get LCD PIXEL HEIGHT.
  * @param  None
  * @retval LCD PIXEL HEIGHT.
  */
uint16_t ili9341_GetLcdPixelHeight(void)
{
  /* Return LCD PIXEL HEIGHT */
  return ILI9341_LCD_PIXEL_HEIGHT;
}

void ili9341_DrawBitmap(uint16_t x, uint16_t y,uint16_t Width, uint16_t Height,uint16_t colour,uint16_t  background, uint8_t* bm){

	 uint16_t bytesPerLine = (Width + 7) / 8;

	#define BITMAP_ROW_CHUNK_PX 128
	    uint8_t rowBuffer[BITMAP_ROW_CHUNK_PX * 2];

	    uint8_t hiText = (uint8_t)(colour >> 8);
	    uint8_t loText = (uint8_t)(colour & 0xFF);
	    uint8_t hiBack = (uint8_t)(background >> 8);
	    uint8_t loBack = (uint8_t)(background & 0xFF);

	    ili9341_SetDisplayWindow(x, y, Width, Height);
	    ili9341_WriteReg(0x2C);

	    LCD_IO_DC_Data();
	    LCD_IO_CS_Select();

	    for (uint16_t row = 0; row < Height; row++)
	    {
	        const uint8_t *prow = bm + (bytesPerLine * row);
	        uint32_t       line = 0;

	        for (uint16_t b = 0; b < bytesPerLine; b++)
	        {
	            line = (line << 8) | prow[b];
	        }

	        for (uint16_t colStart = 0; colStart < Width; colStart += BITMAP_ROW_CHUNK_PX)
	        {
	            uint16_t chunkLen = Width - colStart;
	            if (chunkLen > BITMAP_ROW_CHUNK_PX) chunkLen = BITMAP_ROW_CHUNK_PX;

	            for (uint16_t i = 0; i < chunkLen; i++)
	            {
	                uint16_t col     = colStart + i;
	                uint32_t bitPos  = (uint32_t)(bytesPerLine * 8) - col - 1;

	                if (line & (1UL << bitPos))
	                {
	                    rowBuffer[i * 2]     = hiText;
	                    rowBuffer[i * 2 + 1] = loText;
	                }
	                else
	                {
	                    rowBuffer[i * 2]     = hiBack;
	                    rowBuffer[i * 2 + 1] = loBack;
	                }
	            }

	            LCD_IO_Transmit(rowBuffer, (uint32_t)chunkLen * 2);
	        }
	    }

	    LCD_IO_CS_Deselect();
}

void ili9341_DrawRGBImage(uint16_t Xpos, uint16_t Ypos, uint16_t Xsize, uint16_t Ysize, uint8_t *pdata)
{
    ili9341_SetDisplayWindow(Xpos, Ypos, Xsize, Ysize);
    ili9341_WriteReg(0x2C);

    LCD_IO_DC_Data();
    LCD_IO_CS_Select();
    LCD_IO_Transmit(pdata, Xsize * Ysize * 2);
    LCD_IO_CS_Deselect();
}



/**
  * @}
  */ 

/**
  * @}
  */ 
  
/**
  * @}
  */ 

/**
  * @}
  */

SemaphoreHandle_t Semaphore_SPI = NULL;

void LCD_IO_Init(void){
		Semaphore_SPI = xSemaphoreCreateBinary();
		HAL_SPI_RegisterCallback(&hspi2,
		                         HAL_SPI_TX_COMPLETE_CB_ID,
								 LCD_SPI_TxCpltCallback);

	// Hardware Reset del LCD
	    HAL_GPIO_WritePin(TFT_RST_GPIO_Port, TFT_RST_Pin, GPIO_PIN_RESET);
	    HAL_Delay(200);
	    HAL_GPIO_WritePin(TFT_RST_GPIO_Port, TFT_RST_Pin, GPIO_PIN_SET);
	    HAL_Delay(200);
}

void LCD_IO_WriteData(uint8_t RegValue){
	LCD_IO_CS_Select();
	LCD_IO_DC_Data();
	LCD_IO_Transmit(&RegValue,1);
	LCD_IO_CS_Deselect();
}


void LCD_IO_WriteReg(uint8_t Reg){
	LCD_IO_CS_Select();
	LCD_IO_DC_Command();
	LCD_IO_Transmit(&Reg,1);
	LCD_IO_CS_Deselect();
}

uint32_t LCD_IO_ReadData(uint16_t RegValue, uint8_t ReadSize){
	return 0;
}

void LCD_Delay (uint32_t delay){
	HAL_Delay(delay);
}

void LCD_IO_CS_Select(void){
	HAL_GPIO_WritePin(SPI2_CS_GPIO_Port,SPI2_CS_Pin, GPIO_PIN_RESET);
}

void LCD_IO_CS_Deselect(void){
	HAL_GPIO_WritePin(SPI2_CS_GPIO_Port,SPI2_CS_Pin, GPIO_PIN_SET);
}

void LCD_IO_DC_Command(void){
	HAL_GPIO_WritePin(SPI2_DC_GPIO_Port, SPI2_DC_Pin, GPIO_PIN_RESET);
}

void LCD_IO_DC_Data(void){
	HAL_GPIO_WritePin(SPI2_DC_GPIO_Port, SPI2_DC_Pin, GPIO_PIN_SET);
}


TaskHandle_t lvgl_task_handle = NULL;

void LCD_IO_Transmit(uint8_t* buffer,uint16_t len){
	HAL_SPI_Transmit_IT(&hspi2, buffer, len);
	xSemaphoreTake(Semaphore_SPI, portMAX_DELAY);
}

void LCD_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi){
	BaseType_t xHigherPriorityTaskWoken = pdFALSE;
	xSemaphoreGiveFromISR(Semaphore_SPI, &xHigherPriorityTaskWoken);

	if (lvgl_task_handle != NULL)
	    {

			vTaskNotifyGiveFromISR(lvgl_task_handle, &xHigherPriorityTaskWoken);
	    }

	portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}







