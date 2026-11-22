################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/gui.c \
../APP/lvgl/gui_charts.c \
../APP/lvgl/gui_dashboard.c \
../APP/lvgl/gui_nav.c \
../APP/lvgl/gui_notify.c \
../APP/lvgl/gui_session.c \
../APP/lvgl/gui_settings.c \
../APP/lvgl/ili9341.c \
../APP/lvgl/lvgl.c 

OBJS += \
./APP/lvgl/gui.o \
./APP/lvgl/gui_charts.o \
./APP/lvgl/gui_dashboard.o \
./APP/lvgl/gui_nav.o \
./APP/lvgl/gui_notify.o \
./APP/lvgl/gui_session.o \
./APP/lvgl/gui_settings.o \
./APP/lvgl/ili9341.o \
./APP/lvgl/lvgl.o 

C_DEPS += \
./APP/lvgl/gui.d \
./APP/lvgl/gui_charts.d \
./APP/lvgl/gui_dashboard.d \
./APP/lvgl/gui_nav.d \
./APP/lvgl/gui_notify.d \
./APP/lvgl/gui_session.d \
./APP/lvgl/gui_settings.d \
./APP/lvgl/ili9341.d \
./APP/lvgl/lvgl.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/%.o APP/lvgl/%.su APP/lvgl/%.cyclo: ../APP/lvgl/%.c APP/lvgl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -I../FATFS/Target -I../FATFS/App -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl

clean-APP-2f-lvgl:
	-$(RM) ./APP/lvgl/gui.cyclo ./APP/lvgl/gui.d ./APP/lvgl/gui.o ./APP/lvgl/gui.su ./APP/lvgl/gui_charts.cyclo ./APP/lvgl/gui_charts.d ./APP/lvgl/gui_charts.o ./APP/lvgl/gui_charts.su ./APP/lvgl/gui_dashboard.cyclo ./APP/lvgl/gui_dashboard.d ./APP/lvgl/gui_dashboard.o ./APP/lvgl/gui_dashboard.su ./APP/lvgl/gui_nav.cyclo ./APP/lvgl/gui_nav.d ./APP/lvgl/gui_nav.o ./APP/lvgl/gui_nav.su ./APP/lvgl/gui_notify.cyclo ./APP/lvgl/gui_notify.d ./APP/lvgl/gui_notify.o ./APP/lvgl/gui_notify.su ./APP/lvgl/gui_session.cyclo ./APP/lvgl/gui_session.d ./APP/lvgl/gui_session.o ./APP/lvgl/gui_session.su ./APP/lvgl/gui_settings.cyclo ./APP/lvgl/gui_settings.d ./APP/lvgl/gui_settings.o ./APP/lvgl/gui_settings.su ./APP/lvgl/ili9341.cyclo ./APP/lvgl/ili9341.d ./APP/lvgl/ili9341.o ./APP/lvgl/ili9341.su ./APP/lvgl/lvgl.cyclo ./APP/lvgl/lvgl.d ./APP/lvgl/lvgl.o ./APP/lvgl/lvgl.su

.PHONY: clean-APP-2f-lvgl

