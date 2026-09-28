# Cyclone II Adder with Timing Constraints

This project is part of the same Cyclone II board project family and implements an adder design with an SDC timing-constraints file.

## Target board

- FPGA: Altera/Intel Cyclone II `EP2C5T144C8`
- Package: `T144`
- I/O standard: `3.3-V LVTTL`
- Programming: USB-Blaster through JTAG

The shared LED, clock, buzzer, and joystick connections are documented in the [Cyclone II board specification](https://github.com/ntienthanh75/fpga-cyclone2-5led/blob/main/docs/board-spec.md).

## Build

Open `adders.qpf` in Quartus II 13.0 SP1 and compile. The project includes `adders.sdc` for timing constraints. The generated programming file is in `output_files`.

## Download to the board

1. Power the board and connect the USB-Blaster.
2. Verify the chain:

   ```powershell
   & 'D:\Program\altera\13.0sp1\quartus\bin64\jtagconfig.exe'
   ```

3. Program the generated `.sof` file:

   ```powershell
   & 'D:\Program\altera\13.0sp1\quartus\bin64\quartus_pgm.exe' -c 'USB-Blaster [USB-0]' -m JTAG -o 'p;D:\fpga\adders_time_constrains\output_files\adders.sof'
   ```

The target device must be the Cyclone II `EP2C5T144C8`. The `.sof` configuration is temporary and is lost after power-off.

## Related projects

- [Cyclone II 5LED and joystick projects](https://github.com/ntienthanh75/fpga-cyclone2-5led)
- [Cyclone II LCD Nios II project](https://github.com/ntienthanh75/lcd_nios)

