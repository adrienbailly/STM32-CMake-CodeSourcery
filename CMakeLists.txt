################################################################################
# --- STM32-CodeSourcery-CMake project example ---
# This project is intended as an example/template showing how to use CMake to 
# build C/C++ source code for the STM32 using the CodeSourcery G++ Lite
# toolchain.
#
# Copyright ISORG 2012 (www.isorg.fr)
################################################################################

project(STM32EXAMPLE C ASM)
cmake_minimum_required(VERSION 2.8)

# Turn ON/OFF verbose output
set(CMAKE_VERBOSE_MAKEFILE OFF)

# Add the 'Modules' folder to the search path for FindXXX.cmake files
set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/CMake/Modules)

#
# Setup STM32 variables
#
set(STM32_FAMILY "STM32F4xx") 	# Support "STM32F10x", "STM32F2xx", "STM32F4xx"
include(CMake/STM32.cmake)

include_directories(
    ${CMAKE_SOURCE_DIR}/src
    ${STM32_INCLUDE_DIRS}
    )

#add_definitions(
#    -DUSE_STDPERIPH_DRIVER
#    -DSTM32F4XX
#    )

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DUSE_STDPERIPH_DRIVER")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T${CMAKE_SOURCE_DIR}/lkr/stm32f407vg_flash.ld")
#set(CMAKE_EXE_LINKER_FLAGS_INIT  "-T${CMAKE_SOURCE_DIR}/lkr/stm32f407vg_flash.ld")

add_executable(stm32example.elf
    src/main.c
    src/stm32f4xx_it.c
    src/system_stm32f4xx.c
    src/stm32f4_discovery.c
    ${STM32_SOURCES}
    ${STM32_STARTUP_SOURCE}
    )

target_link_libraries(stm32example.elf ${STM32_LIBRARIES})

add_custom_target(stm32example.hex DEPENDS stm32example.elf COMMAND ${CMAKE_OBJCOPY} -Oihex stm32example.elf stm32example.hex)
add_custom_target(stm32example.bin DEPENDS stm32example.elf COMMAND ${CMAKE_OBJCOPY} -Obinary stm32example.elf stm32example.bin)

# If STM32 ST-Link Utility is found, add a make target to program the chip
if(DEFINED STM32_STLINK_CLI_EXECUTABLE)
    # -c SWD UR : SWD communication protocol, Under Reset
    # -Q : quiet mode, no progress bar
    # -V : Verifies that the programming operation was performed successfully.
    # -P : program file (.hex)
    set(STLINK_CMD ${STM32_STLINK_CLI_EXECUTABLE} -c SWD UR -P ${CMAKE_BINARY_DIR}/stm32example.hex)
    add_custom_target(program-flash DEPENDS stm32example.hex COMMAND ${STLINK_CMD})
endif()

