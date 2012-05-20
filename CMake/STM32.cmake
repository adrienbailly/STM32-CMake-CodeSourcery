#
#
#

# CodeSourcery G++ toolchain
set(CMAKE_TOOLCHAIN_FILE "Toolchain-STM32-CodeSourcery.cmake")

# Add the 'Modules' folder to the search path for FindXXX.cmake files
set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/CMake/Modules)

# CMSIS library
find_package(CMSIS REQUIRED)

# Standard Peripheral library
find_package(StdPeriph REQUIRED)

file(GLOB StdPeriph_SOURCES ${StdPeriph_SOURCE_DIR}/*.c)
include_directories(${CMSIS_INCLUDE_DIR} ${StdPeriph_INCLUDE_DIR})
add_library(StdPeriph ${StdPeriph_SOURCES})


#
# Probably garbage
#
#set(COMPILE_DEFINITIONS_DEBUG    -O0 -g3 -DDEBUG)
#set(COMPILE_DEFINITIONS_RELEASE  -O2)

#add_definitions(
#	-Wall
#	-Wshadow
#	-Wcast-qual
#	-Wwrite-strings
#	-Winline
#	-std=gnu99
#	)
	
