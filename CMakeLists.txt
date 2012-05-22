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

# Add the 'Modules' folder to the search path for FindXXX.cmake files
set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/CMake/Modules)

#
# Setup STM32 variables
#
set(STM32_FAMILY "STM32F4xx") 	# Support "STM32F10x", "STM32F2xx", "STM32F4xx"
include(CMake/STM32.cmake)

#include_directories(${STM32_INCLUDE_DIRS})

add_executable(stm32example.elf
        src/main.c
#	src/stm32f4xx_it.c
#	src/system_stm32f4xx.c
#	src/stm32f4_discovery.c
        #${STM32_SOURCE_FILES}
        ${STM32_LINKER_SCRIPT}
        ${STM32_STARTUP_SOURCE}
        )

target_link_libraries(stm32example.elf ${STM32_LIBRARIES})

add_custom_target(stm32example.hex DEPENDS stm32example.elf COMMAND ${CMAKE_OBJCOPY} -Oihex stm32example.elf stm32example.hex)
add_custom_target(stm32example.bin DEPENDS stm32example.elf COMMAND ${CMAKE_OBJCOPY} -Obinary stm32example.elf stm32example.bin)



