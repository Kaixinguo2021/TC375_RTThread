################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/BaseSw/Ethernet/lwip/port/src/Ifx_Lwip.c \
../0_Src/BaseSw/Ethernet/lwip/port/src/netif.c 

OBJS += \
./0_Src/BaseSw/Ethernet/lwip/port/src/Ifx_Lwip.o \
./0_Src/BaseSw/Ethernet/lwip/port/src/netif.o 

C_DEPS += \
./0_Src/BaseSw/Ethernet/lwip/port/src/Ifx_Lwip.d \
./0_Src/BaseSw/Ethernet/lwip/port/src/netif.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/BaseSw/Ethernet/lwip/port/src/%.o: ../0_Src/BaseSw/Ethernet/lwip/port/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


