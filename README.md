STM32-CMake-CodeSourcery
========================

This projet contains the [CMake][cmake] files necessary to start a C/C++ project targeting the STM32 microcontroller.
The toolchain is free and cross-plateform: [Sourcery CodeBench Lite Edition][sourcery].

# Installation
This section describes the installation of the tools needed to build the example.

## Sourcery CodeBench Lite
*Sourcery CodeBench Lite* is a C/C++ toolchain able to produce binaries for the STM32 microcontroller.
It can be downloaded from the [Menthor Graphics website][[sourcery]: 
- Choose ARM/EABI Release
- Fill out the form to receive an email containing a link to the installer.
At the time of writting, the recommanded version of the installer is 2011-09-69. 
During the installation, add the PATH of the arm-eabi-xxx.exe to the environement variables.

## CMake
CMake is a build system that simplify the managment of large/multiplatform/multilibraries/... projects.
Download and install the latest version of CMake: [CMake v2.8.8](www.cmake.org/cmake/resources/software.html)

## STM32 Libraries: CMSIS & Standard Peripheral Driver
ST provides libraries that simplify the use of the STM32 microcontroller. 
Download the library package corresponding the STM32 family:
- *STM32F10x*: 
- *STM32F4xx*:

# Build the example

# Create a new project

# References
[cmake]: http://www.cmake.org/cmake/help/v2.8.8/cmake.html "CMake 2.8.8 documentation"
[sourcery]: http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/ "Sourcery CodeBench Lite - choose ARM EABI release"
Some links that have proven to be useful during this project:
- "CMake documentation":http://www.cmake.org/cmake/help/v2.8.8/cmake.html
- "CMake cross-compiling":http://www.cmake.org/Wiki/CMake_Cross_Compiling
- "CMake and STM32":https://github.com/ObKo/stm32-cmake
- "STM32 CMSIS & StdPeriph libraries":http://www.st.com/internet/mcu/family/141.jsp
