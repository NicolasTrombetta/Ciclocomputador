################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.c \
../APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
../APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.c \
../APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.c \
../APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.c \
../APP/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.c \
../APP/lvgl/src/draw/nxp/pxp/lv_pxp_osa.c \
../APP/lvgl/src/draw/nxp/pxp/lv_pxp_utils.c 

OBJS += \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o \
./APP/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o \
./APP/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o \
./APP/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o 

C_DEPS += \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d \
./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d \
./APP/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d \
./APP/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d \
./APP/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/nxp/pxp/%.o APP/lvgl/src/draw/nxp/pxp/%.su APP/lvgl/src/draw/nxp/pxp/%.cyclo: ../APP/lvgl/src/draw/nxp/pxp/%.c APP/lvgl/src/draw/nxp/pxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

clean-APP-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./APP/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.cyclo ./APP/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d ./APP/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o ./APP/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.su ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp.cyclo ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp.su ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.cyclo ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.su ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.cyclo ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.su ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.cyclo ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o ./APP/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.su ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.cyclo ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.su ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_osa.cyclo ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_osa.su ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_utils.cyclo ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o ./APP/lvgl/src/draw/nxp/pxp/lv_pxp_utils.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

