# 65b02

A Ben Eater-free breadboard computer based on the 65c02 chip.

## **Summary of Components**
| Component          | Description                          | Use in Project                     | Link                                      |
|--------------------|--------------------------------------|------------------------------------|-------------------------------------------|
| W27C512 EEPROM     | 512K-bit EEPROM (64KB)               | Store program code                 | [W27C512](https://seli.tn/product/w27c512-ci-eeprom-512k-bit-45ns-dip28/)     |
| 7805 Regulator     | 5V Voltage Regulator                 | Power supply for 65C02 and peripherals | [7805](https://seli.tn/product/regulateur-de-tension-7805/)       |
| 4MHz Quartz Oscillator | 4MHz Crystal Oscillator           | Clock signal for 65C02             | [4MHz Oscillator](https://seli.tn/product/oscillateur-quartz-4mhz) |
| 74HC00 NAND Gate   | Quad 2-input NAND gate               | Address decoding or glue logic     | [74HC00](https://seli.tn/product/7400-ci-4-portes-logiques-non-et/)        |
| PCF8574T I2C Module | I2C I/O Expander                     | Simplify LCD or peripheral interfacing | [PCF8574T](https://seli.tn/product/pcf8574t-module-i2c-pour-clavier/) |
| 16x2 LCD Display   | LCD Display                          | Program output                     | [16x02 LCD](https://seli.tn/product/afficheur-lcd/)

## **Software**

### Compiler suite

For this project, I am using the [cc65](https://cc65.github.io) compiler and Make.
| Component          | Description                          |
|--------------------|--------------------------------------|
| cc65               | C Compiler                           |
| ca65               | Assembler                            |
| cl65               | Linker                               |
| ar65 (Optional)    | Archiver                             |
| Make               | Generator           
