## Get the latest CMake
- The minimum CMake version for Unity build is 3.12 
- Follow instructions on https://apt.kitware.com

## Run CMake with riscv toolchain

```
cmake . -DCMAKE_TOOLCHAIN_FILE=./riscv.toolchain.cmake
-- The C compiler identification is GNU 8.3.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /home/jack/work/riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-linux-ubuntu14/bin/riscv64-unknown-elf-gcc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Unity: Bulding with the fixture extension.
-- Unity: Bulding with the memory extension.
-- Configuring done
-- Generating done
-- Build files have been written to: /home/jack/work/Github/Unity
```

## Build
```
make
[ 25%] Building C object CMakeFiles/unity.dir/src/unity.c.o
[ 50%] Building C object CMakeFiles/unity.dir/extras/fixture/src/unity_fixture.c.o
[ 75%] Building C object CMakeFiles/unity.dir/extras/memory/src/unity_memory.c.o
[100%] Linking C static library libunity.a
[100%] Built target unity
```


