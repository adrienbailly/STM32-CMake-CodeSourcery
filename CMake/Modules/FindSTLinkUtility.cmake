# Find the STM32 ST-Link Utility

find_program(STM32_STLINK_CLI_EXECUTABLE
    "ST-LINK_CLI.exe"
    PATHS
    "C:/Program Files (x86)/STMicroelectronics/STM32 ST-LINK Utility/ST-LINK Utility"
    "C:/Program Files/STMicroelectronics/STM32 ST-LINK Utility/ST-LINK Utility"
    DOC "STM32 ST-Link Utility Command Line Interface (ST-LINK_CLI.exe)"
    )

find_package(PackageHandleStandardArgs)
find_package_handle_standard_args(STLinkUtility DEFAULT_MSG STM32_STLINK_CLI_EXECUTABLE)

