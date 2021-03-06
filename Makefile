include make/config.mk
include make/tools.mk 

PROJECT := test.bin
PROJECT_DEPS:=  
PROJECT_DEPS += system/system_stm32f4xx.o
PROJECT_DEPS += startup/startup_stm32f4xx.o
PROJECT_DEPS += std_perif/src/stm32f4xx_rcc.o
PROJECT_DEPS += std_perif/src/stm32f4xx_gpio.o
PROJECT_DEPS += std_perif/src/stm32f4xx_spi.o
PROJECT_DEPS += std_perif/src/stm32f4xx_usart.o
PROJECT_DEPS += cmsis/lib/libarm_cortexM4lf_math.a
PROJECT_DEPS += std_perif/src/stm32f4xx_i2c.o

all: $(PROJECT)

test.elf:   main.o $(PROJECT_DEPS)
	$(LD) $(LD_FLAGS) $(C_FLAGS) -o $@ $^

include make/rules.mk
