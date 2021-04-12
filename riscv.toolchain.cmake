cmake_minimum_required (VERSION 3.12)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv)

set(RISCV_TOOLCHAIN "/home/jack/work/riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-linux-ubuntu14")
set(CMAKE_C_COMPILER "${RISCV_TOOLCHAIN}/bin/riscv64-unknown-elf-gcc")
set(CMAKE_CXX_COMPILER "${RISCV_TOOLCHAIN}/bin/riscv64-unknown-elf-g++")
set(CMAKE_AR "${RISCV_TOOLCHAIN}/bin/riscv64-unknown-elf-ar")
set(CMAKE_RANLIB "${RISCV_TOOLCHAIN}/bin/riscv64-unknown-elf-ranlib")
set(CMAKE_STRIP "${RISCV_TOOLCHAIN}/bin/riscv64-unknown-elf-strip")
set(CMAKE_SYSTEM_LIBRARY_PATH "${RISCV_TOOLCHAIN}/riscv64-unknown-elf/lib")

set(RISCV_COMPILER_FLAGS "-march=rv64imafdc -mabi=lp64d -mcmodel=medany -ffunction-sections -fdata-sections")

set(CMAKE_C_FLAGS             "${RISCV_COMPILER_FLAGS} ${CMAKE_C_FLAGS}")
set(CMAKE_ASM_FLAGS           "${RISCV_COMPILER_FLAGS} ${CMAKE_ASM_FLAGS}")
