## Bootloader Roadmap

### 1. Define Memory Map
- Bootloader stored in ROM
- Define the reset vector (`0xFFFC` and `0xFFFD`) in ROM.

### 2. Initialize Hardware
- Configure memory and I/O devices.

### 3. Load Main Program
  - **SD Card**: Load program over SD.

### 4. Verify Program
- Add checksum or CRC to ensure program integrity.

### 5. Jump to Main Program
- Transfer control to the main program’s entry point.

### Optional Enhancements
- **Menu System**: Select from multiple programs in the SD.
