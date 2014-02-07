################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cr_startup_lpc11.c \
../src/crp.c \
../src/main.c 

OBJS += \
./src/cr_startup_lpc11.o \
./src/crp.o \
./src/main.o 

C_DEPS += \
./src/cr_startup_lpc11.d \
./src/crp.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DCORE_M0 -D__USE_CMSIS=CMSISv2p00_LPC11xx -D__LPC11XX__ -I"/Users/austinglaser/src/ecen3000/labs/lab3/interrupt/inc" -I"/Users/austinglaser/src/ecen3000/labs/lab3/interrupt/driver" -I"/Users/austinglaser/src/ecen3000/CMSISv2p00_LPC11xx/inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


