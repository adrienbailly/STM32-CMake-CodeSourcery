
project(STM32 C)

cmake_minimum_required(VERSION 2.8)

set(CMAKE_TOOLCHAIN_FILE Toolchain-STM32-CodeSourcery.cmake)

set(COMPILE_DEFINITIONS_DEBUG    -O0 -g3 -DDEBUG)
set(COMPILE_DEFINITIONS_RELEASE  -O2)

add_definitions(
	-Wall
	-Wshadow
	-Wcast-qual
	-Wwrite-strings
	-Winline

	-std=gnu99

	-DSTM32F10X_HD           # for peripheral library
	-DUSE_STDPERIPH_DRIVER
	)
	
add_subdirectory( fwlib )

include_directories(${STM32_SOURCE_DIR} ${STM32_SOURCE_DIR}/fwlib/inc )

link_directories( ${STM32_BINARY_DIR}/fwlib )

add_executable(stm32_iotoggle.elf
	main.c
	stm32f4xx_it.c
	system_stm32f4xx.c
	stm32f4_discovery.c
	startup_stm32f4xx.S
	stm32_flash.ld
	)

target_link_libraries(stm32_iotoggle.elf fwlib)

add_custom_target(stm32_iotoggle.hex DEPENDS stm32_iotoggle.elf COMMAND ${CMAKE_OBJCOPY} -Oihex stm32_iotoggle.elf stm32_iotoggle.hex)
add_custom_target(stm32_iotoggle.bin DEPENDS stm32_iotoggle.elf COMMAND ${CMAKE_OBJCOPY} -Obinary stm32_iotoggle.elf stm32_iotoggle.bin)



