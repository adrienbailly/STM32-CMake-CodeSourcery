STM32-CMake-CodeSourcery
========================

This projet contains the [CMake][cmake] files necessary to start a C/C++ project targeting the STM32 microcontroller.
The toolchain is free and cross-plateform: [Sourcery CodeBench Lite Edition][sourcery].

# 1 - Installation
This section describes the installation of the tools needed to build the example.

## 1.1 - Sourcery CodeBench Lite
*Sourcery CodeBench Lite* is a C/C++ toolchain able to produce binaries for the STM32 microcontroller.
It can be downloaded from the [Menthor Graphics website][sourcery]: 
1. Choose ARM/EABI Release
2. Fill out the form to receive an email containing a link to the installer.
At the time of writting, the recommanded version of the installer is 2011-09-69. 
During the installation, add the PATH of the arm-eabi-xxx.exe to the environement variables.

## 1.2 - CMake
CMake is a build system that simplify the managment of large/multiplatform/multilibraries/... projects.
Download and install the latest version of CMake: [CMake v2.8.8](www.cmake.org/cmake/resources/software.html)

## 1.3 - STM32 Libraries: CMSIS & Standard Peripheral Driver
ST provides libraries that simplify the use of the STM32 microcontroller. 
Download the library package corresponding the STM32 family:
- STM32F10x: [STM32F4 DSP and standard peripherals library](http://www.st.com/internet/com/SOFTWARE_RESOURCES/SW_COMPONENT/FIRMWARE/stm32f4_dsp_stdperiph_lib.zip)
- STM32F4xx: [STM32F10x standard peripherals library](http://www.st.com/internet/com/SOFTWARE_RESOURCES/SW_COMPONENT/FIRMWARE/stm32f10x_stdperiph_lib.zip)

# 2 - Build the example
The **tags** section provides somewhat stable releases. 

# 3 - Create a new project
To use the CMake files provided in another projet: 
The example folder is called $EXAMPLE and the new project folder is referenced as $PROJECT.
- Copy the *$EXAMPLE/CMake* folder and *$EXAMPLE/CMakeLists.txt* into the $PROJECT directory.
- Open CMakeLists.txt and modify the following variables to reflect the state of the new projet:
    - STM32_FAMILY
    - STM32_DENSITY (only with STM32F10x family)
    - STM32_LINKER_SCRIPT
    - STM32_OUTPUT_NAME
    - Add/Removes files from the source list in the add_executable statement but keep *STM32_SOURCES* and *STM32_STARTUP_SOURCE*.

# 4 - References
[cmake]: http://www.cmake.org/cmake/help/v2.8.8/cmake.html "CMake 2.8.8 documentation"
[sourcery]: http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/ "Sourcery CodeBench Lite - choose ARM EABI release"
Some links that have proven to be useful during this project:
- "CMake documentation":http://www.cmake.org/cmake/help/v2.8.8/cmake.html
- "CMake cross-compiling":http://www.cmake.org/Wiki/CMake_Cross_Compiling
- "CMake and STM32":https://github.com/ObKo/stm32-cmake
- "STM32 CMSIS & StdPeriph libraries":http://www.st.com/internet/mcu/family/141.jsp
