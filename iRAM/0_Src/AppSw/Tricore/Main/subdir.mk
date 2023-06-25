################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/AppSw/Tricore/Main/Cpu0_Main.c \
../0_Src/AppSw/Tricore/Main/Cpu1_Main.c \
../0_Src/AppSw/Tricore/Main/Cpu2_Main.c \
../0_Src/AppSw/Tricore/Main/Echo.c \
../0_Src/AppSw/Tricore/Main/Flash_Programming.c 

OBJS += \
./0_Src/AppSw/Tricore/Main/Cpu0_Main.o \
./0_Src/AppSw/Tricore/Main/Cpu1_Main.o \
./0_Src/AppSw/Tricore/Main/Cpu2_Main.o \
./0_Src/AppSw/Tricore/Main/Echo.o \
./0_Src/AppSw/Tricore/Main/Flash_Programming.o 

C_DEPS += \
./0_Src/AppSw/Tricore/Main/Cpu0_Main.d \
./0_Src/AppSw/Tricore/Main/Cpu1_Main.d \
./0_Src/AppSw/Tricore/Main/Cpu2_Main.d \
./0_Src/AppSw/Tricore/Main/Echo.d \
./0_Src/AppSw/Tricore/Main/Flash_Programming.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/AppSw/Tricore/Main/%.o: ../0_Src/AppSw/Tricore/Main/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


