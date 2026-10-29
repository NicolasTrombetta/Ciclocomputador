################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/osal/lv_cmsis_rtos2.c \
../APP/lvgl/src/osal/lv_freertos.c \
../APP/lvgl/src/osal/lv_linux.c \
../APP/lvgl/src/osal/lv_mqx.c \
../APP/lvgl/src/osal/lv_os.c \
../APP/lvgl/src/osal/lv_os_none.c \
../APP/lvgl/src/osal/lv_pthread.c \
../APP/lvgl/src/osal/lv_rtthread.c \
../APP/lvgl/src/osal/lv_sdl2.c \
../APP/lvgl/src/osal/lv_windows.c 

OBJS += \
./APP/lvgl/src/osal/lv_cmsis_rtos2.o \
./APP/lvgl/src/osal/lv_freertos.o \
./APP/lvgl/src/osal/lv_linux.o \
./APP/lvgl/src/osal/lv_mqx.o \
./APP/lvgl/src/osal/lv_os.o \
./APP/lvgl/src/osal/lv_os_none.o \
./APP/lvgl/src/osal/lv_pthread.o \
./APP/lvgl/src/osal/lv_rtthread.o \
./APP/lvgl/src/osal/lv_sdl2.o \
./APP/lvgl/src/osal/lv_windows.o 

C_DEPS += \
./APP/lvgl/src/osal/lv_cmsis_rtos2.d \
./APP/lvgl/src/osal/lv_freertos.d \
./APP/lvgl/src/osal/lv_linux.d \
./APP/lvgl/src/osal/lv_mqx.d \
./APP/lvgl/src/osal/lv_os.d \
./APP/lvgl/src/osal/lv_os_none.d \
./APP/lvgl/src/osal/lv_pthread.d \
./APP/lvgl/src/osal/lv_rtthread.d \
./APP/lvgl/src/osal/lv_sdl2.d \
./APP/lvgl/src/osal/lv_windows.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/osal/%.o APP/lvgl/src/osal/%.su APP/lvgl/src/osal/%.cyclo: ../APP/lvgl/src/osal/%.c APP/lvgl/src/osal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-osal

clean-APP-2f-lvgl-2f-src-2f-osal:
	-$(RM) ./APP/lvgl/src/osal/lv_cmsis_rtos2.cyclo ./APP/lvgl/src/osal/lv_cmsis_rtos2.d ./APP/lvgl/src/osal/lv_cmsis_rtos2.o ./APP/lvgl/src/osal/lv_cmsis_rtos2.su ./APP/lvgl/src/osal/lv_freertos.cyclo ./APP/lvgl/src/osal/lv_freertos.d ./APP/lvgl/src/osal/lv_freertos.o ./APP/lvgl/src/osal/lv_freertos.su ./APP/lvgl/src/osal/lv_linux.cyclo ./APP/lvgl/src/osal/lv_linux.d ./APP/lvgl/src/osal/lv_linux.o ./APP/lvgl/src/osal/lv_linux.su ./APP/lvgl/src/osal/lv_mqx.cyclo ./APP/lvgl/src/osal/lv_mqx.d ./APP/lvgl/src/osal/lv_mqx.o ./APP/lvgl/src/osal/lv_mqx.su ./APP/lvgl/src/osal/lv_os.cyclo ./APP/lvgl/src/osal/lv_os.d ./APP/lvgl/src/osal/lv_os.o ./APP/lvgl/src/osal/lv_os.su ./APP/lvgl/src/osal/lv_os_none.cyclo ./APP/lvgl/src/osal/lv_os_none.d ./APP/lvgl/src/osal/lv_os_none.o ./APP/lvgl/src/osal/lv_os_none.su ./APP/lvgl/src/osal/lv_pthread.cyclo ./APP/lvgl/src/osal/lv_pthread.d ./APP/lvgl/src/osal/lv_pthread.o ./APP/lvgl/src/osal/lv_pthread.su ./APP/lvgl/src/osal/lv_rtthread.cyclo ./APP/lvgl/src/osal/lv_rtthread.d ./APP/lvgl/src/osal/lv_rtthread.o ./APP/lvgl/src/osal/lv_rtthread.su ./APP/lvgl/src/osal/lv_sdl2.cyclo ./APP/lvgl/src/osal/lv_sdl2.d ./APP/lvgl/src/osal/lv_sdl2.o ./APP/lvgl/src/osal/lv_sdl2.su ./APP/lvgl/src/osal/lv_windows.cyclo ./APP/lvgl/src/osal/lv_windows.d ./APP/lvgl/src/osal/lv_windows.o ./APP/lvgl/src/osal/lv_windows.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-osal

