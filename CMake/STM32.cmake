#
# Setup the STM32 toolchain and libraries
#

# CodeSourcery G++ toolchain
# TODO: is it useful in command line mode?
set(CMAKE_TOOLCHAIN_FILE "Toolchain-STM32-CodeSourcery.cmake")

if(NOT DEFINED STM32_FAMILY)
    message(FATAL_ERROR "STM32_FAMILY must be set to one of the following values: STM32F10x, STM32F2xx, STM32F4xx")
else(NOT DEFINED STM32_FAMILY)
    if(${STM32_FAMILY} STREQUAL "STM32F10x")
        set(STM32_PACKAGE_NAME ${STM32_FAMILY})
        # TODO: check that STM32_DENSITY is defined for the STM32F1xx family
    elseif(${STM32_FAMILY} STREQUAL "STM32F2xx")
        set(STM32_PACKAGE_NAME ${STM32_FAMILY})
    elseif(${STM32_FAMILY} STREQUAL "STM32F4xx")
        set(STM32_PACKAGE_NAME ${STM32_FAMILY})
    else()
        message(FATAL_ERROR "STM32_FAMILY must be set to one of the following values: STM32F10x, STM32F2xx, STM32F4xx")

    endif()
endif()

# Find the STM32 library package
find_package(${STM32_PACKAGE_NAME} REQUIRED)

# STM32 ST-Link Utility
find_package(STLinkUtility)

