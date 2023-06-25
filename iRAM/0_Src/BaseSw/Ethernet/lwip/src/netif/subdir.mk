################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/BaseSw/Ethernet/lwip/src/netif/bridgeif.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/bridgeif_fdb.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/ethernet.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6_ble.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6_common.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/zepif.c 

OBJS += \
./0_Src/BaseSw/Ethernet/lwip/src/netif/bridgeif.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/bridgeif_fdb.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ethernet.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6_ble.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6_common.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/zepif.o 

C_DEPS += \
./0_Src/BaseSw/Ethernet/lwip/src/netif/bridgeif.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/bridgeif_fdb.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ethernet.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6_ble.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/lowpan6_common.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/zepif.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/BaseSw/Ethernet/lwip/src/netif/%.o: ../0_Src/BaseSw/Ethernet/lwip/src/netif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


