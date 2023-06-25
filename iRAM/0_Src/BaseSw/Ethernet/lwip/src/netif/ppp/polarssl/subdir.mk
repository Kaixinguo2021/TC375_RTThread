################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/arc4.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/des.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/md4.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/md5.c \
../0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/sha1.c 

OBJS += \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/arc4.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/des.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/md4.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/md5.o \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/sha1.o 

C_DEPS += \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/arc4.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/des.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/md4.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/md5.d \
./0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/sha1.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/%.o: ../0_Src/BaseSw/Ethernet/lwip/src/netif/ppp/polarssl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


