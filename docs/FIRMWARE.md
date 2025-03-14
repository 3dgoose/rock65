## Firmware
This computer's firmware is divided in two parts : the **bootloader** and the **library** that contains basic routines (`#include lib65b02`).

### boot.s

- Define the reset vector (`0xFFFC` and `0xFFFD`) in ROM.
- Configure I/O devices.
- Load program over SD.
- Transfer control to the main program’s entry point.

### lib.c

- SD Module read function
- LCD Screen display function
- RTC time gathering function