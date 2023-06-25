################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/autoip.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/dhcp.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/etharp.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/icmp.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/igmp.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4_addr.c \
../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4_frag.c 

OBJS += \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/autoip.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/dhcp.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/etharp.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/icmp.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/igmp.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4_addr.o \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4_frag.o 

C_DEPS += \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/autoip.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/dhcp.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/etharp.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/icmp.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/igmp.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4_addr.d \
./0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/%.o: ../0_Src/AppSw/Tricore/Ethernet/lwip/src/core/ipv4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"$(TRICORE_TOOLS)/bin/tricore-gcc" -c -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Main" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Service\CpuGeneric\_Utilities" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Infra\Platform" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Service\CpuGeneric" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\CpuGeneric\Config" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Cfg_Ssw" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Infra\Sfr\TC37A\_Reg" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Cpu\Std" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Scu\Std" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Infra\Ssw\TC37A\Tricore" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Pms\Std" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Stm\Std" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\lwip" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\Phy_Dp83825i" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Geth\Eth" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\iLLD\TC37A\Tricore\Geth\Std" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\BaseSw\Service\CpuGeneric\SysSe\Comm" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\netif\ppp" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\netif\ppp" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\netif\ppp\polarssl" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\netif" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\lwip\prot" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\lwip\apps" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\lwip\priv" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\compat\posix" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\compat\posix\arpa" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\compat\posix\net" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\src\include\compat\posix\sys" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip\port\include" -I"D:\WorkSpace\HighTec\HighTec_TC375_GETH\0_Src\AppSw\Tricore\Ethernet\lwip" -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


