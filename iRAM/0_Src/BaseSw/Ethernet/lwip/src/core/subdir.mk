################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/BaseSw/Ethernet/lwip/src/core/altcp.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/altcp_alloc.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/altcp_tcp.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/def.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/dns.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/inet_chksum.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/init.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/ip.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/mem.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/memp.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/netif.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/pbuf.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/raw.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/stats.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/sys.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/tcp.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/tcp_in.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/tcp_out.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/timeouts.c \
../0_Src/BaseSw/Ethernet/lwip/src/core/udp.c 

OBJS += \
./0_Src/BaseSw/Ethernet/lwip/src/core/altcp.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/altcp_alloc.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/altcp_tcp.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/def.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/dns.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/inet_chksum.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/init.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/ip.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/mem.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/memp.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/netif.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/pbuf.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/raw.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/stats.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/sys.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/tcp.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/tcp_in.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/tcp_out.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/timeouts.o \
./0_Src/BaseSw/Ethernet/lwip/src/core/udp.o 

C_DEPS += \
./0_Src/BaseSw/Ethernet/lwip/src/core/altcp.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/altcp_alloc.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/altcp_tcp.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/def.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/dns.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/inet_chksum.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/init.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/ip.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/mem.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/memp.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/netif.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/pbuf.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/raw.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/stats.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/sys.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/tcp.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/tcp_in.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/tcp_out.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/timeouts.d \
./0_Src/BaseSw/Ethernet/lwip/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/BaseSw/Ethernet/lwip/src/core/%.o: ../0_Src/BaseSw/Ethernet/lwip/src/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


