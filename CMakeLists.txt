################################################################################
# --- STM32-CodeSourcery-CMake project example ---
# This project is intended as an example/template showing how to use CMake to 
# build C/C++ source code for the STM32 using the CodeSourcery G++ Lite
# toolchain.
#
# Copyright ISORG 2012 (www.isorg.fr)
################################################################################

project(STM32EXAMPLE C)

cmake_minimum_required(VERSION 2.8)

#
# Setup STM32 variables
#
# todo: replace this by a function stm32_configure("STM32F407VT6")
set(STM32_PART_NUMBER "STM32F407VT6") 	# µC part number
set(STM32_FLASH_SIZE "512K")			# size of FLASH in Kbytes
set(STM32_RAM_SIZE	"32K")				# size of RAM in Kbytes
set(STM32_CORTEX "M4")					# Type of core (M0, M3 or M4)
set(STM32_HAS_FPU true)					# Does it have a FPU unit (true is Cortex-M4)

include(CMake/STM32.cmake)


#include_directories(${STM32_INCLUDE_DIRS})

#add_executable(stm32example.elf
#	src/main.c
#	src/stm32f4xx_it.c
#	src/system_stm32f4xx.c
#	src/stm32f4_discovery.c
#	${STM32_LINKER_SCRIPT}
#	${STM32_STARTUP_FILE}
#	)

#target_link_libraries(stm32example.elf ${STM32_LIBRARIES})

#add_custom_target(stm32example.hex DEPENDS stm32example.elf COMMAND ${CMAKE_OBJCOPY} -Oihex stm32example.elf stm32example.hex)
#add_custom_target(stm32example.bin DEPENDS stm32example.elf COMMAND ${CMAKE_OBJCOPY} -Obinary stm32example.elf stm32example.bin)



