# the name of the target operating system
#
set(CMAKE_SYSTEM_NAME      Generic)
set(CMAKE_SYSTEM_VERSION   1)
set(CMAKE_SYSTEM_PROCESSOR arm-eabi)

# which compilers to use for C and C++
#
set(CMAKE_C_COMPILER       arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER     arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER     arm-none-eabi-as)
set(CMAKE_OBJCOPY     	   arm-none-eabi-objcopy)
set(CMAKE_OBJDUMP     	   arm-none-eabi-objdump)
set(CMAKE_CXX_COMPILER     arm-none-eabi-g++)

SET(CMAKE_C_FLAGS "-mthumb -mcpu=cortex-m4 -fno-builtin -Wall -std=gnu99 -fdata-sections -ffunction-sections" CACHE INTERNAL "c compiler flags")
SET(CMAKE_CXX_FLAGS "-mthumb -mcpu=cortex-m4 -fno-builtin -Wall  -fdata-sections -ffunction-sections" CACHE INTERNAL "cxx compiler flags")
SET(CMAKE_ASM_FLAGS "-mthumb -mcpu=cortex-m4" CACHE INTERNAL "asm compiler flags")

SET(CMAKE_EXE_LINKER_FLAGS "-nostartfiles -Wl,--gc-sections -mthumb -mcpu=cortex-m4" CACHE INTERNAL "exe link flags")

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment,
# search programs in the host environment
#
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
