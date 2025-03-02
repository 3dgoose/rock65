## Firmware

### Bootloader
- Define the reset vector (`0xFFFC` and `0xFFFD`) in ROM.
- Configure I/O devices.
  - **SD Card**: Load program over SD.
- Transfer control to the main program’s entry point.

### Driver lib
- SD Module read function
- LCD Screen display routine
- RTC time gathering function