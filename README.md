# SwiftyArduino
A project for enabling Arduino-like functions and libraries to be used in Swift Embedded for developers switching
from Arduino to Swift Embedded.

Note:- This project currently supports a few basic arduino functions, I'll add support for arduino libraries and more 
arduino syntax
# Supported Hardware
Raspberry Pi pico/pico 2
# Building
This part will show you how to compile an example blink program in the ```Main.swift``` file.
First make sure you have the following dependencies :-
1. Swift compiler (6.0 or newer with embedded support)
2. Cmake (29.0 or newer)
3. Arm toolchain/RISCV toolchain
4. Pico SDK (2.1.1 or later)

Once you've got all the dependencies its time to build the program by the following commands:-
``` console
$ cd SwiftyArduino
$ export PICO_BOARD='board-name' # pico/pico2
$ export PICO_PLATFORM='platform-name' # Optional; useful if you'd like to compile for RISC-V. Examples: rp2040, rp2350-arm-s, rp2350-riscv 
$ export PICO_SDK_PATH='path/to/your/pico-sdk'
$ export PICO_TOOLCHAIN_PATH='path/to/your/arm-gnu-toolchain-XX.X.rel1-x86_64-arm-none-eabi/bin/' # Replace XX.X with the version number. This can also be a RISC-V toolchain for the RP2350.
$ cmake -B build -G Ninja . -DCMAKE_EXPORT_COMPILE_COMMANDS=On
$ cmake --build build
```

After building copy the ```swiftyarduino.uf2``` to your RPI pico.
