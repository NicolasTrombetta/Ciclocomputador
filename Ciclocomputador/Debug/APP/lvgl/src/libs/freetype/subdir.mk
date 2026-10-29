################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/libs/freetype/lv_freetype.c \
../APP/lvgl/src/libs/freetype/lv_freetype_glyph.c \
../APP/lvgl/src/libs/freetype/lv_freetype_image.c \
../APP/lvgl/src/libs/freetype/lv_freetype_outline.c \
../APP/lvgl/src/libs/freetype/lv_ftsystem.c 

OBJS += \
./APP/lvgl/src/libs/freetype/lv_freetype.o \
./APP/lvgl/src/libs/freetype/lv_freetype_glyph.o \
./APP/lvgl/src/libs/freetype/lv_freetype_image.o \
./APP/lvgl/src/libs/freetype/lv_freetype_outline.o \
./APP/lvgl/src/libs/freetype/lv_ftsystem.o 

C_DEPS += \
./APP/lvgl/src/libs/freetype/lv_freetype.d \
./APP/lvgl/src/libs/freetype/lv_freetype_glyph.d \
./APP/lvgl/src/libs/freetype/lv_freetype_image.d \
./APP/lvgl/src/libs/freetype/lv_freetype_outline.d \
./APP/lvgl/src/libs/freetype/lv_ftsystem.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/libs/freetype/%.o APP/lvgl/src/libs/freetype/%.su APP/lvgl/src/libs/freetype/%.cyclo: ../APP/lvgl/src/libs/freetype/%.c APP/lvgl/src/libs/freetype/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-libs-2f-freetype

clean-APP-2f-lvgl-2f-src-2f-libs-2f-freetype:
	-$(RM) ./APP/lvgl/src/libs/freetype/lv_freetype.cyclo ./APP/lvgl/src/libs/freetype/lv_freetype.d ./APP/lvgl/src/libs/freetype/lv_freetype.o ./APP/lvgl/src/libs/freetype/lv_freetype.su ./APP/lvgl/src/libs/freetype/lv_freetype_glyph.cyclo ./APP/lvgl/src/libs/freetype/lv_freetype_glyph.d ./APP/lvgl/src/libs/freetype/lv_freetype_glyph.o ./APP/lvgl/src/libs/freetype/lv_freetype_glyph.su ./APP/lvgl/src/libs/freetype/lv_freetype_image.cyclo ./APP/lvgl/src/libs/freetype/lv_freetype_image.d ./APP/lvgl/src/libs/freetype/lv_freetype_image.o ./APP/lvgl/src/libs/freetype/lv_freetype_image.su ./APP/lvgl/src/libs/freetype/lv_freetype_outline.cyclo ./APP/lvgl/src/libs/freetype/lv_freetype_outline.d ./APP/lvgl/src/libs/freetype/lv_freetype_outline.o ./APP/lvgl/src/libs/freetype/lv_freetype_outline.su ./APP/lvgl/src/libs/freetype/lv_ftsystem.cyclo ./APP/lvgl/src/libs/freetype/lv_ftsystem.d ./APP/lvgl/src/libs/freetype/lv_ftsystem.o ./APP/lvgl/src/libs/freetype/lv_ftsystem.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-libs-2f-freetype

