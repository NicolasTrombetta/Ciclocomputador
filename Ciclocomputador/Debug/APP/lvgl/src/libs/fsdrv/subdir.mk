################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/libs/fsdrv/lv_fs_cbfs.c \
../APP/lvgl/src/libs/fsdrv/lv_fs_fatfs.c \
../APP/lvgl/src/libs/fsdrv/lv_fs_frogfs.c \
../APP/lvgl/src/libs/fsdrv/lv_fs_littlefs.c \
../APP/lvgl/src/libs/fsdrv/lv_fs_memfs.c \
../APP/lvgl/src/libs/fsdrv/lv_fs_posix.c \
../APP/lvgl/src/libs/fsdrv/lv_fs_stdio.c \
../APP/lvgl/src/libs/fsdrv/lv_fs_uefi.c \
../APP/lvgl/src/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./APP/lvgl/src/libs/fsdrv/lv_fs_cbfs.o \
./APP/lvgl/src/libs/fsdrv/lv_fs_fatfs.o \
./APP/lvgl/src/libs/fsdrv/lv_fs_frogfs.o \
./APP/lvgl/src/libs/fsdrv/lv_fs_littlefs.o \
./APP/lvgl/src/libs/fsdrv/lv_fs_memfs.o \
./APP/lvgl/src/libs/fsdrv/lv_fs_posix.o \
./APP/lvgl/src/libs/fsdrv/lv_fs_stdio.o \
./APP/lvgl/src/libs/fsdrv/lv_fs_uefi.o \
./APP/lvgl/src/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./APP/lvgl/src/libs/fsdrv/lv_fs_cbfs.d \
./APP/lvgl/src/libs/fsdrv/lv_fs_fatfs.d \
./APP/lvgl/src/libs/fsdrv/lv_fs_frogfs.d \
./APP/lvgl/src/libs/fsdrv/lv_fs_littlefs.d \
./APP/lvgl/src/libs/fsdrv/lv_fs_memfs.d \
./APP/lvgl/src/libs/fsdrv/lv_fs_posix.d \
./APP/lvgl/src/libs/fsdrv/lv_fs_stdio.d \
./APP/lvgl/src/libs/fsdrv/lv_fs_uefi.d \
./APP/lvgl/src/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/libs/fsdrv/%.o APP/lvgl/src/libs/fsdrv/%.su APP/lvgl/src/libs/fsdrv/%.cyclo: ../APP/lvgl/src/libs/fsdrv/%.c APP/lvgl/src/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-libs-2f-fsdrv

clean-APP-2f-lvgl-2f-src-2f-libs-2f-fsdrv:
	-$(RM) ./APP/lvgl/src/libs/fsdrv/lv_fs_cbfs.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_cbfs.d ./APP/lvgl/src/libs/fsdrv/lv_fs_cbfs.o ./APP/lvgl/src/libs/fsdrv/lv_fs_cbfs.su ./APP/lvgl/src/libs/fsdrv/lv_fs_fatfs.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_fatfs.d ./APP/lvgl/src/libs/fsdrv/lv_fs_fatfs.o ./APP/lvgl/src/libs/fsdrv/lv_fs_fatfs.su ./APP/lvgl/src/libs/fsdrv/lv_fs_frogfs.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_frogfs.d ./APP/lvgl/src/libs/fsdrv/lv_fs_frogfs.o ./APP/lvgl/src/libs/fsdrv/lv_fs_frogfs.su ./APP/lvgl/src/libs/fsdrv/lv_fs_littlefs.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_littlefs.d ./APP/lvgl/src/libs/fsdrv/lv_fs_littlefs.o ./APP/lvgl/src/libs/fsdrv/lv_fs_littlefs.su ./APP/lvgl/src/libs/fsdrv/lv_fs_memfs.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_memfs.d ./APP/lvgl/src/libs/fsdrv/lv_fs_memfs.o ./APP/lvgl/src/libs/fsdrv/lv_fs_memfs.su ./APP/lvgl/src/libs/fsdrv/lv_fs_posix.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_posix.d ./APP/lvgl/src/libs/fsdrv/lv_fs_posix.o ./APP/lvgl/src/libs/fsdrv/lv_fs_posix.su ./APP/lvgl/src/libs/fsdrv/lv_fs_stdio.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_stdio.d ./APP/lvgl/src/libs/fsdrv/lv_fs_stdio.o ./APP/lvgl/src/libs/fsdrv/lv_fs_stdio.su ./APP/lvgl/src/libs/fsdrv/lv_fs_uefi.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_uefi.d ./APP/lvgl/src/libs/fsdrv/lv_fs_uefi.o ./APP/lvgl/src/libs/fsdrv/lv_fs_uefi.su ./APP/lvgl/src/libs/fsdrv/lv_fs_win32.cyclo ./APP/lvgl/src/libs/fsdrv/lv_fs_win32.d ./APP/lvgl/src/libs/fsdrv/lv_fs_win32.o ./APP/lvgl/src/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-libs-2f-fsdrv

