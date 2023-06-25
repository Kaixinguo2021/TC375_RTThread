################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/autoip.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/dhcp.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/etharp.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/icmp.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/igmp.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4_addr.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4_frag.c 

OBJS += \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/autoip.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/dhcp.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/etharp.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/icmp.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/igmp.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4_addr.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4_frag.o 

C_DEPS += \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/autoip.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/dhcp.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/etharp.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/icmp.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/igmp.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4_addr.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/%.o: ../0_Src/BaseSw/Ethernet/lwip/src/core/ipv4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


