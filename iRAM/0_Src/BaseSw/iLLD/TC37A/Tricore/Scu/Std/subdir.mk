################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuCcu.c \
../0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuEru.c \
../0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuLbist.c \
../0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuRcu.c \
../0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuWdt.c 

OBJS += \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuCcu.o \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuEru.o \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuLbist.o \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuRcu.o \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuWdt.o 

C_DEPS += \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuCcu.d \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuEru.d \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuLbist.d \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuRcu.d \
./0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/IfxScuWdt.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/%.o: ../0_Src/BaseSw/iLLD/TC37A/Tricore/Scu/Std/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


