## Bootloader Roadmap

### 1. Define Memory Map
- Decide where the bootloader and main program will reside (e.g., ROM, RAM).
- Set up the reset vector (`0xFFFC` and `0xFFFD`).

### 2. Initialize Hardware
- Configure memory and I/O devices.

### 3. Load Main Program
- Choose a storage method:
  - **ROM**: Copy program to RAM (if needed).
  - **EEPROM/Flash**: Read program from non-volatile memory.
  - **SD Card**: Load program over SD.

### 4. Verify Program
- Add checksum or CRC to ensure program integrity.

### 5. Jump to Main Program
- Transfer control to the main program’s entry point.

### Optional Enhancements
- **Menu System**: Select from multiple programs.
