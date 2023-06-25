################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/def.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/dhcp.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/dns.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/init.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/mem.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/memp.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/netif.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/pbuf.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/raw.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/stats.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/sys.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp_in.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp_out.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/timers.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/udp.c 

OBJS += \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/def.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/dhcp.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/dns.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/init.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/mem.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/memp.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/netif.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/pbuf.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/raw.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/stats.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/sys.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp_in.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp_out.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/timers.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/udp.o 

C_DEPS += \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/def.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/dhcp.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/dns.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/init.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/mem.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/memp.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/netif.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/pbuf.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/raw.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/stats.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/sys.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp_in.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/tcp_out.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/timers.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/%.o: ../0_Src/AppSw/Tricore/Ethernet/lwip/lwip-1.4.1/src/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"$(TRICORE_TOOLS)/bin/tricore-gcc" -c -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Main" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\lwip-1.4.1\src\include\lwip" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\lwip-1.4.1\src\include\ipv4" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\lwip-1.4.1\src\include" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\lwip-1.4.1\port\include" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\lwip-1.4.1" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Service\CpuGeneric\_Utilities" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Infra\Platform" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Service\CpuGeneric" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\CpuGeneric\Config" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\App" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Cfg_Ssw" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Infra\Sfr\TC37A\_Reg" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Cpu\Std" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Scu\Std" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Infra\Ssw\TC37A\Tricore" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Pms\Std" -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


