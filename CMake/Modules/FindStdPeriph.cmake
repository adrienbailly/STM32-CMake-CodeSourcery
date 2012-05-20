#
#
#

find_path(StdPeriph_INCLUDE_DIR 
	misc.h stm32f4xx_gpio.h
	DOC "Directory containing stm32f4xx_gpio.h"
	)
	
find_path(StdPeriph_SOURCE_DIR
	misc.c stm32f4xx_gpio.c
	PATHS ${StdPeriph_INCLUDE_DIR}/../src
	DOC "Directory containing stm32f4xx_gpio.c"
	)
		
find_package(PackageHandleStandardArgs)
find_package_handle_standard_args(StdPeriph DEFAULT_MSG 
	StdPeriph_INCLUDE_DIR  
	StdPeriph_SOURCE_DIR
	)

