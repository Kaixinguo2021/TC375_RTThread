################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../0_Src/BaseSw/Ethernet/lwip/src/api/api_lib.c \
../0_Src/BaseSw/Ethernet/lwip/src/api/api_msg.c \
../0_Src/BaseSw/Ethernet/lwip/src/api/err.c \
../0_Src/BaseSw/Ethernet/lwip/src/api/if_api.c \
../0_Src/BaseSw/Ethernet/lwip/src/api/netbuf.c \
../0_Src/BaseSw/Ethernet/lwip/src/api/netdb.c \
../0_Src/BaseSw/Ethernet/lwip/src/api/netifapi.c \
../0_Src/BaseSw/Ethernet/lwip/src/api/sockets.c \
../0_Src/BaseSw/Ethernet/lwip/src/api/tcpip.c 

OBJS += \
./0_Src/BaseSw/Ethernet/lwip/src/api/api_lib.o \
./0_Src/BaseSw/Ethernet/lwip/src/api/api_msg.o \
./0_Src/BaseSw/Ethernet/lwip/src/api/err.o \
./0_Src/BaseSw/Ethernet/lwip/src/api/if_api.o \
./0_Src/BaseSw/Ethernet/lwip/src/api/netbuf.o \
./0_Src/BaseSw/Ethernet/lwip/src/api/netdb.o \
./0_Src/BaseSw/Ethernet/lwip/src/api/netifapi.o \
./0_Src/BaseSw/Ethernet/lwip/src/api/sockets.o \
./0_Src/BaseSw/Ethernet/lwip/src/api/tcpip.o 

C_DEPS += \
./0_Src/BaseSw/Ethernet/lwip/src/api/api_lib.d \
./0_Src/BaseSw/Ethernet/lwip/src/api/api_msg.d \
./0_Src/BaseSw/Ethernet/lwip/src/api/err.d \
./0_Src/BaseSw/Ethernet/lwip/src/api/if_api.d \
./0_Src/BaseSw/Ethernet/lwip/src/api/netbuf.d \
./0_Src/BaseSw/Ethernet/lwip/src/api/netdb.d \
./0_Src/BaseSw/Ethernet/lwip/src/api/netifapi.d \
./0_Src/BaseSw/Ethernet/lwip/src/api/sockets.d \
./0_Src/BaseSw/Ethernet/lwip/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
0_Src/BaseSw/Ethernet/lwip/src/api/%.o: ../0_Src/BaseSw/Ethernet/lwip/src/api/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TriCore C Compiler'
	"C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0/bin/tricore-gcc" -c @ccompilerincludelist.optfile -fno-common -Os -g3 -W -Wall -Wextra -Wdiv-by-zero -Warray-bounds -Wcast-align -Wignored-qualifiers -Wformat -Wformat-security -pipe -DTRIBOARD_TC39XB -D__HIGHTEC__ -fshort-double -mcpu=tc39xx -mversion-info -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


