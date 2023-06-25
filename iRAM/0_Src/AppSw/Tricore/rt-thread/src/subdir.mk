################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/AppSw/Tricore/rt-thread/src/clock.c \
../0_Src/AppSw/Tricore/rt-thread/src/components.c \
../0_Src/AppSw/Tricore/rt-thread/src/cpu.c \
../0_Src/AppSw/Tricore/rt-thread/src/device.c \
../0_Src/AppSw/Tricore/rt-thread/src/idle.c \
../0_Src/AppSw/Tricore/rt-thread/src/ipc.c \
../0_Src/AppSw/Tricore/rt-thread/src/irq.c \
../0_Src/AppSw/Tricore/rt-thread/src/kservice.c \
../0_Src/AppSw/Tricore/rt-thread/src/mem.c \
../0_Src/AppSw/Tricore/rt-thread/src/memheap.c \
../0_Src/AppSw/Tricore/rt-thread/src/mempool.c \
../0_Src/AppSw/Tricore/rt-thread/src/object.c \
../0_Src/AppSw/Tricore/rt-thread/src/scheduler.c \
../0_Src/AppSw/Tricore/rt-thread/src/signal.c \
../0_Src/AppSw/Tricore/rt-thread/src/slab.c \
../0_Src/AppSw/Tricore/rt-thread/src/thread.c \
../0_Src/AppSw/Tricore/rt-thread/src/timer.c 

OBJS += \
./0_Src/AppSw/Tricore/rt-thread/src/clock.o \
./0_Src/AppSw/Tricore/rt-thread/src/components.o \
./0_Src/AppSw/Tricore/rt-thread/src/cpu.o \
./0_Src/AppSw/Tricore/rt-thread/src/device.o \
./0_Src/AppSw/Tricore/rt-thread/src/idle.o \
./0_Src/AppSw/Tricore/rt-thread/src/ipc.o \
./0_Src/AppSw/Tricore/rt-thread/src/irq.o \
./0_Src/AppSw/Tricore/rt-thread/src/kservice.o \
./0_Src/AppSw/Tricore/rt-thread/src/mem.o \
./0_Src/AppSw/Tricore/rt-thread/src/memheap.o \
./0_Src/AppSw/Tricore/rt-thread/src/mempool.o \
./0_Src/AppSw/Tricore/rt-thread/src/object.o \
./0_Src/AppSw/Tricore/rt-thread/src/scheduler.o \
./0_Src/AppSw/Tricore/rt-thread/src/signal.o \
./0_Src/AppSw/Tricore/rt-thread/src/slab.o \
./0_Src/AppSw/Tricore/rt-thread/src/thread.o \
./0_Src/AppSw/Tricore/rt-thread/src/timer.o 

C_DEPS += \
./0_Src/AppSw/Tricore/rt-thread/src/clock.d \
./0_Src/AppSw/Tricore/rt-thread/src/components.d \
./0_Src/AppSw/Tricore/rt-thread/src/cpu.d \
./0_Src/AppSw/Tricore/rt-thread/src/device.d \
./0_Src/AppSw/Tricore/rt-thread/src/idle.d \
./0_Src/AppSw/Tricore/rt-thread/src/ipc.d \
./0_Src/AppSw/Tricore/rt-thread/src/irq.d \
./0_Src/AppSw/Tricore/rt-thread/src/kservice.d \
./0_Src/AppSw/Tricore/rt-thread/src/mem.d \
./0_Src/AppSw/Tricore/rt-thread/src/memheap.d \
./0_Src/AppSw/Tricore/rt-thread/src/mempool.d \
./0_Src/AppSw/Tricore/rt-thread/src/object.d \
./0_Src/AppSw/Tricore/rt-thread/src/scheduler.d \
./0_Src/AppSw/Tricore/rt-thread/src/signal.d \
./0_Src/AppSw/Tricore/rt-thread/src/slab.d \
./0_Src/AppSw/Tricore/rt-thread/src/thread.d \
./0_Src/AppSw/Tricore/rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/AppSw/Tricore/rt-thread/src/%.o: ../0_Src/AppSw/Tricore/rt-thread/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


