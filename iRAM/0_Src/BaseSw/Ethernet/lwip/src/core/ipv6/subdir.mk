################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/dhcp6.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ethip6.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/icmp6.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/inet6.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6_addr.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6_frag.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/mld6.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/nd6.c 

OBJS += \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/dhcp6.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ethip6.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/icmp6.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/inet6.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6_addr.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6_frag.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/mld6.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/nd6.o 

C_DEPS += \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/dhcp6.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ethip6.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/icmp6.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/inet6.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6_addr.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/ip6_frag.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/mld6.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/nd6.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/%.o: ../0_Src/BaseSw/Ethernet/lwip/src/core/ipv6/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


