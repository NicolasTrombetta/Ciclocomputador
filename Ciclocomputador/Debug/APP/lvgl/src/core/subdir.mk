################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/core/lv_group.c \
../APP/lvgl/src/core/lv_obj.c \
../APP/lvgl/src/core/lv_obj_class.c \
../APP/lvgl/src/core/lv_obj_draw.c \
../APP/lvgl/src/core/lv_obj_event.c \
../APP/lvgl/src/core/lv_obj_id_builtin.c \
../APP/lvgl/src/core/lv_obj_pos.c \
../APP/lvgl/src/core/lv_obj_property.c \
../APP/lvgl/src/core/lv_obj_scroll.c \
../APP/lvgl/src/core/lv_obj_style.c \
../APP/lvgl/src/core/lv_obj_style_gen.c \
../APP/lvgl/src/core/lv_obj_tree.c \
../APP/lvgl/src/core/lv_observer.c \
../APP/lvgl/src/core/lv_refr.c 

OBJS += \
./APP/lvgl/src/core/lv_group.o \
./APP/lvgl/src/core/lv_obj.o \
./APP/lvgl/src/core/lv_obj_class.o \
./APP/lvgl/src/core/lv_obj_draw.o \
./APP/lvgl/src/core/lv_obj_event.o \
./APP/lvgl/src/core/lv_obj_id_builtin.o \
./APP/lvgl/src/core/lv_obj_pos.o \
./APP/lvgl/src/core/lv_obj_property.o \
./APP/lvgl/src/core/lv_obj_scroll.o \
./APP/lvgl/src/core/lv_obj_style.o \
./APP/lvgl/src/core/lv_obj_style_gen.o \
./APP/lvgl/src/core/lv_obj_tree.o \
./APP/lvgl/src/core/lv_observer.o \
./APP/lvgl/src/core/lv_refr.o 

C_DEPS += \
./APP/lvgl/src/core/lv_group.d \
./APP/lvgl/src/core/lv_obj.d \
./APP/lvgl/src/core/lv_obj_class.d \
./APP/lvgl/src/core/lv_obj_draw.d \
./APP/lvgl/src/core/lv_obj_event.d \
./APP/lvgl/src/core/lv_obj_id_builtin.d \
./APP/lvgl/src/core/lv_obj_pos.d \
./APP/lvgl/src/core/lv_obj_property.d \
./APP/lvgl/src/core/lv_obj_scroll.d \
./APP/lvgl/src/core/lv_obj_style.d \
./APP/lvgl/src/core/lv_obj_style_gen.d \
./APP/lvgl/src/core/lv_obj_tree.d \
./APP/lvgl/src/core/lv_observer.d \
./APP/lvgl/src/core/lv_refr.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/core/%.o APP/lvgl/src/core/%.su APP/lvgl/src/core/%.cyclo: ../APP/lvgl/src/core/%.c APP/lvgl/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-core

clean-APP-2f-lvgl-2f-src-2f-core:
	-$(RM) ./APP/lvgl/src/core/lv_group.cyclo ./APP/lvgl/src/core/lv_group.d ./APP/lvgl/src/core/lv_group.o ./APP/lvgl/src/core/lv_group.su ./APP/lvgl/src/core/lv_obj.cyclo ./APP/lvgl/src/core/lv_obj.d ./APP/lvgl/src/core/lv_obj.o ./APP/lvgl/src/core/lv_obj.su ./APP/lvgl/src/core/lv_obj_class.cyclo ./APP/lvgl/src/core/lv_obj_class.d ./APP/lvgl/src/core/lv_obj_class.o ./APP/lvgl/src/core/lv_obj_class.su ./APP/lvgl/src/core/lv_obj_draw.cyclo ./APP/lvgl/src/core/lv_obj_draw.d ./APP/lvgl/src/core/lv_obj_draw.o ./APP/lvgl/src/core/lv_obj_draw.su ./APP/lvgl/src/core/lv_obj_event.cyclo ./APP/lvgl/src/core/lv_obj_event.d ./APP/lvgl/src/core/lv_obj_event.o ./APP/lvgl/src/core/lv_obj_event.su ./APP/lvgl/src/core/lv_obj_id_builtin.cyclo ./APP/lvgl/src/core/lv_obj_id_builtin.d ./APP/lvgl/src/core/lv_obj_id_builtin.o ./APP/lvgl/src/core/lv_obj_id_builtin.su ./APP/lvgl/src/core/lv_obj_pos.cyclo ./APP/lvgl/src/core/lv_obj_pos.d ./APP/lvgl/src/core/lv_obj_pos.o ./APP/lvgl/src/core/lv_obj_pos.su ./APP/lvgl/src/core/lv_obj_property.cyclo ./APP/lvgl/src/core/lv_obj_property.d ./APP/lvgl/src/core/lv_obj_property.o ./APP/lvgl/src/core/lv_obj_property.su ./APP/lvgl/src/core/lv_obj_scroll.cyclo ./APP/lvgl/src/core/lv_obj_scroll.d ./APP/lvgl/src/core/lv_obj_scroll.o ./APP/lvgl/src/core/lv_obj_scroll.su ./APP/lvgl/src/core/lv_obj_style.cyclo ./APP/lvgl/src/core/lv_obj_style.d ./APP/lvgl/src/core/lv_obj_style.o ./APP/lvgl/src/core/lv_obj_style.su ./APP/lvgl/src/core/lv_obj_style_gen.cyclo ./APP/lvgl/src/core/lv_obj_style_gen.d ./APP/lvgl/src/core/lv_obj_style_gen.o ./APP/lvgl/src/core/lv_obj_style_gen.su ./APP/lvgl/src/core/lv_obj_tree.cyclo ./APP/lvgl/src/core/lv_obj_tree.d ./APP/lvgl/src/core/lv_obj_tree.o ./APP/lvgl/src/core/lv_obj_tree.su ./APP/lvgl/src/core/lv_observer.cyclo ./APP/lvgl/src/core/lv_observer.d ./APP/lvgl/src/core/lv_observer.o ./APP/lvgl/src/core/lv_observer.su ./APP/lvgl/src/core/lv_refr.cyclo ./APP/lvgl/src/core/lv_refr.d ./APP/lvgl/src/core/lv_refr.o ./APP/lvgl/src/core/lv_refr.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-core

