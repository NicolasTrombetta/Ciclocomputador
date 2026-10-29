################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/misc/lv_anim.c \
../APP/lvgl/src/misc/lv_anim_timeline.c \
../APP/lvgl/src/misc/lv_area.c \
../APP/lvgl/src/misc/lv_array.c \
../APP/lvgl/src/misc/lv_async.c \
../APP/lvgl/src/misc/lv_bidi.c \
../APP/lvgl/src/misc/lv_circle_buf.c \
../APP/lvgl/src/misc/lv_color.c \
../APP/lvgl/src/misc/lv_color_op.c \
../APP/lvgl/src/misc/lv_event.c \
../APP/lvgl/src/misc/lv_fs.c \
../APP/lvgl/src/misc/lv_grad.c \
../APP/lvgl/src/misc/lv_iter.c \
../APP/lvgl/src/misc/lv_ll.c \
../APP/lvgl/src/misc/lv_log.c \
../APP/lvgl/src/misc/lv_lru.c \
../APP/lvgl/src/misc/lv_math.c \
../APP/lvgl/src/misc/lv_matrix.c \
../APP/lvgl/src/misc/lv_palette.c \
../APP/lvgl/src/misc/lv_pending.c \
../APP/lvgl/src/misc/lv_profiler_builtin.c \
../APP/lvgl/src/misc/lv_profiler_builtin_posix.c \
../APP/lvgl/src/misc/lv_rb.c \
../APP/lvgl/src/misc/lv_style.c \
../APP/lvgl/src/misc/lv_style_gen.c \
../APP/lvgl/src/misc/lv_templ.c \
../APP/lvgl/src/misc/lv_text.c \
../APP/lvgl/src/misc/lv_text_ap.c \
../APP/lvgl/src/misc/lv_timer.c \
../APP/lvgl/src/misc/lv_tree.c \
../APP/lvgl/src/misc/lv_utils.c 

OBJS += \
./APP/lvgl/src/misc/lv_anim.o \
./APP/lvgl/src/misc/lv_anim_timeline.o \
./APP/lvgl/src/misc/lv_area.o \
./APP/lvgl/src/misc/lv_array.o \
./APP/lvgl/src/misc/lv_async.o \
./APP/lvgl/src/misc/lv_bidi.o \
./APP/lvgl/src/misc/lv_circle_buf.o \
./APP/lvgl/src/misc/lv_color.o \
./APP/lvgl/src/misc/lv_color_op.o \
./APP/lvgl/src/misc/lv_event.o \
./APP/lvgl/src/misc/lv_fs.o \
./APP/lvgl/src/misc/lv_grad.o \
./APP/lvgl/src/misc/lv_iter.o \
./APP/lvgl/src/misc/lv_ll.o \
./APP/lvgl/src/misc/lv_log.o \
./APP/lvgl/src/misc/lv_lru.o \
./APP/lvgl/src/misc/lv_math.o \
./APP/lvgl/src/misc/lv_matrix.o \
./APP/lvgl/src/misc/lv_palette.o \
./APP/lvgl/src/misc/lv_pending.o \
./APP/lvgl/src/misc/lv_profiler_builtin.o \
./APP/lvgl/src/misc/lv_profiler_builtin_posix.o \
./APP/lvgl/src/misc/lv_rb.o \
./APP/lvgl/src/misc/lv_style.o \
./APP/lvgl/src/misc/lv_style_gen.o \
./APP/lvgl/src/misc/lv_templ.o \
./APP/lvgl/src/misc/lv_text.o \
./APP/lvgl/src/misc/lv_text_ap.o \
./APP/lvgl/src/misc/lv_timer.o \
./APP/lvgl/src/misc/lv_tree.o \
./APP/lvgl/src/misc/lv_utils.o 

C_DEPS += \
./APP/lvgl/src/misc/lv_anim.d \
./APP/lvgl/src/misc/lv_anim_timeline.d \
./APP/lvgl/src/misc/lv_area.d \
./APP/lvgl/src/misc/lv_array.d \
./APP/lvgl/src/misc/lv_async.d \
./APP/lvgl/src/misc/lv_bidi.d \
./APP/lvgl/src/misc/lv_circle_buf.d \
./APP/lvgl/src/misc/lv_color.d \
./APP/lvgl/src/misc/lv_color_op.d \
./APP/lvgl/src/misc/lv_event.d \
./APP/lvgl/src/misc/lv_fs.d \
./APP/lvgl/src/misc/lv_grad.d \
./APP/lvgl/src/misc/lv_iter.d \
./APP/lvgl/src/misc/lv_ll.d \
./APP/lvgl/src/misc/lv_log.d \
./APP/lvgl/src/misc/lv_lru.d \
./APP/lvgl/src/misc/lv_math.d \
./APP/lvgl/src/misc/lv_matrix.d \
./APP/lvgl/src/misc/lv_palette.d \
./APP/lvgl/src/misc/lv_pending.d \
./APP/lvgl/src/misc/lv_profiler_builtin.d \
./APP/lvgl/src/misc/lv_profiler_builtin_posix.d \
./APP/lvgl/src/misc/lv_rb.d \
./APP/lvgl/src/misc/lv_style.d \
./APP/lvgl/src/misc/lv_style_gen.d \
./APP/lvgl/src/misc/lv_templ.d \
./APP/lvgl/src/misc/lv_text.d \
./APP/lvgl/src/misc/lv_text_ap.d \
./APP/lvgl/src/misc/lv_timer.d \
./APP/lvgl/src/misc/lv_tree.d \
./APP/lvgl/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/misc/%.o APP/lvgl/src/misc/%.su APP/lvgl/src/misc/%.cyclo: ../APP/lvgl/src/misc/%.c APP/lvgl/src/misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-misc

clean-APP-2f-lvgl-2f-src-2f-misc:
	-$(RM) ./APP/lvgl/src/misc/lv_anim.cyclo ./APP/lvgl/src/misc/lv_anim.d ./APP/lvgl/src/misc/lv_anim.o ./APP/lvgl/src/misc/lv_anim.su ./APP/lvgl/src/misc/lv_anim_timeline.cyclo ./APP/lvgl/src/misc/lv_anim_timeline.d ./APP/lvgl/src/misc/lv_anim_timeline.o ./APP/lvgl/src/misc/lv_anim_timeline.su ./APP/lvgl/src/misc/lv_area.cyclo ./APP/lvgl/src/misc/lv_area.d ./APP/lvgl/src/misc/lv_area.o ./APP/lvgl/src/misc/lv_area.su ./APP/lvgl/src/misc/lv_array.cyclo ./APP/lvgl/src/misc/lv_array.d ./APP/lvgl/src/misc/lv_array.o ./APP/lvgl/src/misc/lv_array.su ./APP/lvgl/src/misc/lv_async.cyclo ./APP/lvgl/src/misc/lv_async.d ./APP/lvgl/src/misc/lv_async.o ./APP/lvgl/src/misc/lv_async.su ./APP/lvgl/src/misc/lv_bidi.cyclo ./APP/lvgl/src/misc/lv_bidi.d ./APP/lvgl/src/misc/lv_bidi.o ./APP/lvgl/src/misc/lv_bidi.su ./APP/lvgl/src/misc/lv_circle_buf.cyclo ./APP/lvgl/src/misc/lv_circle_buf.d ./APP/lvgl/src/misc/lv_circle_buf.o ./APP/lvgl/src/misc/lv_circle_buf.su ./APP/lvgl/src/misc/lv_color.cyclo ./APP/lvgl/src/misc/lv_color.d ./APP/lvgl/src/misc/lv_color.o ./APP/lvgl/src/misc/lv_color.su ./APP/lvgl/src/misc/lv_color_op.cyclo ./APP/lvgl/src/misc/lv_color_op.d ./APP/lvgl/src/misc/lv_color_op.o ./APP/lvgl/src/misc/lv_color_op.su ./APP/lvgl/src/misc/lv_event.cyclo ./APP/lvgl/src/misc/lv_event.d ./APP/lvgl/src/misc/lv_event.o ./APP/lvgl/src/misc/lv_event.su ./APP/lvgl/src/misc/lv_fs.cyclo ./APP/lvgl/src/misc/lv_fs.d ./APP/lvgl/src/misc/lv_fs.o ./APP/lvgl/src/misc/lv_fs.su ./APP/lvgl/src/misc/lv_grad.cyclo ./APP/lvgl/src/misc/lv_grad.d ./APP/lvgl/src/misc/lv_grad.o ./APP/lvgl/src/misc/lv_grad.su ./APP/lvgl/src/misc/lv_iter.cyclo ./APP/lvgl/src/misc/lv_iter.d ./APP/lvgl/src/misc/lv_iter.o ./APP/lvgl/src/misc/lv_iter.su ./APP/lvgl/src/misc/lv_ll.cyclo ./APP/lvgl/src/misc/lv_ll.d ./APP/lvgl/src/misc/lv_ll.o ./APP/lvgl/src/misc/lv_ll.su ./APP/lvgl/src/misc/lv_log.cyclo ./APP/lvgl/src/misc/lv_log.d ./APP/lvgl/src/misc/lv_log.o ./APP/lvgl/src/misc/lv_log.su ./APP/lvgl/src/misc/lv_lru.cyclo ./APP/lvgl/src/misc/lv_lru.d ./APP/lvgl/src/misc/lv_lru.o ./APP/lvgl/src/misc/lv_lru.su ./APP/lvgl/src/misc/lv_math.cyclo ./APP/lvgl/src/misc/lv_math.d ./APP/lvgl/src/misc/lv_math.o ./APP/lvgl/src/misc/lv_math.su ./APP/lvgl/src/misc/lv_matrix.cyclo ./APP/lvgl/src/misc/lv_matrix.d ./APP/lvgl/src/misc/lv_matrix.o ./APP/lvgl/src/misc/lv_matrix.su ./APP/lvgl/src/misc/lv_palette.cyclo ./APP/lvgl/src/misc/lv_palette.d ./APP/lvgl/src/misc/lv_palette.o ./APP/lvgl/src/misc/lv_palette.su ./APP/lvgl/src/misc/lv_pending.cyclo ./APP/lvgl/src/misc/lv_pending.d ./APP/lvgl/src/misc/lv_pending.o ./APP/lvgl/src/misc/lv_pending.su ./APP/lvgl/src/misc/lv_profiler_builtin.cyclo ./APP/lvgl/src/misc/lv_profiler_builtin.d ./APP/lvgl/src/misc/lv_profiler_builtin.o ./APP/lvgl/src/misc/lv_profiler_builtin.su ./APP/lvgl/src/misc/lv_profiler_builtin_posix.cyclo ./APP/lvgl/src/misc/lv_profiler_builtin_posix.d ./APP/lvgl/src/misc/lv_profiler_builtin_posix.o ./APP/lvgl/src/misc/lv_profiler_builtin_posix.su ./APP/lvgl/src/misc/lv_rb.cyclo ./APP/lvgl/src/misc/lv_rb.d ./APP/lvgl/src/misc/lv_rb.o ./APP/lvgl/src/misc/lv_rb.su ./APP/lvgl/src/misc/lv_style.cyclo ./APP/lvgl/src/misc/lv_style.d ./APP/lvgl/src/misc/lv_style.o ./APP/lvgl/src/misc/lv_style.su ./APP/lvgl/src/misc/lv_style_gen.cyclo ./APP/lvgl/src/misc/lv_style_gen.d ./APP/lvgl/src/misc/lv_style_gen.o ./APP/lvgl/src/misc/lv_style_gen.su ./APP/lvgl/src/misc/lv_templ.cyclo ./APP/lvgl/src/misc/lv_templ.d ./APP/lvgl/src/misc/lv_templ.o ./APP/lvgl/src/misc/lv_templ.su ./APP/lvgl/src/misc/lv_text.cyclo ./APP/lvgl/src/misc/lv_text.d ./APP/lvgl/src/misc/lv_text.o ./APP/lvgl/src/misc/lv_text.su ./APP/lvgl/src/misc/lv_text_ap.cyclo ./APP/lvgl/src/misc/lv_text_ap.d ./APP/lvgl/src/misc/lv_text_ap.o ./APP/lvgl/src/misc/lv_text_ap.su ./APP/lvgl/src/misc/lv_timer.cyclo ./APP/lvgl/src/misc/lv_timer.d ./APP/lvgl/src/misc/lv_timer.o ./APP/lvgl/src/misc/lv_timer.su ./APP/lvgl/src/misc/lv_tree.cyclo ./APP/lvgl/src/misc/lv_tree.d ./APP/lvgl/src/misc/lv_tree.o ./APP/lvgl/src/misc/lv_tree.su ./APP/lvgl/src/misc/lv_utils.cyclo ./APP/lvgl/src/misc/lv_utils.d ./APP/lvgl/src/misc/lv_utils.o ./APP/lvgl/src/misc/lv_utils.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-misc

