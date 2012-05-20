# - Find CMSIS
# Find the CMSIS library
# This module defines
#  CMSIS_INCLUDE_DIR
#  CMSIS_LIBRARIES, the libraries needed to use CMSIS
#  CMSIS_STARTUP_FILE,
#  CMSIS_LINKER_SCRIPT,
#  CMSIS_FOUND
	
find_path(CMSIS_ARM_INCLUDE_DIR 
	arm_math.h core_cmInst.h 
	DOC "Directory containing arm_math.h"
	)
	
find_path(CMSIS_ST_INCLUDE_DIR
	stm32f4xx.h system_stm32f4xx.h
	PATHS ${CMSIS_ARM_INCLUDE_DIR}/../Device/ST/STM32F4xx/Include
	DOC "Directory containing stm32f4xx.h and system_stm32f4xx.h"
	)
	
find_file(CMSIS_STARTUP_SOURCE startup_stm32f4xx.s 
	PATHS ${CMSIS_ST_INCLUDE_DIR}/../Source/Templates/TrueSTUDIO
	DOC "Startup assembly file startup_stm32f4xx.s"
	)
	
find_package(PackageHandleStandardArgs)
find_package_handle_standard_args(CMSIS DEFAULT_MSG 
	CMSIS_ARM_INCLUDE_DIR 
	CMSIS_ST_INCLUDE_DIR
	CMSIS_STARTUP_SOURCE
	)

set(CMSIS_INCLUDE_DIR ${CMSIS_ARM_INCLUDE_DIR} ${CMSIS_ST_INCLUDE_DIR})


mark_as_advanced(CMSIS_ARM_INCLUDE_DIR CMSIS_ST_INCLUDE_DIR CMSIS_STARTUP_SOURCE)

