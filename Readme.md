
## Bootloader Project

# Overview

This project is a simple bootloader that demonstrates the basics of boot sector programming in 16-bit real mode. The bootloader is designed to print null-terminated strings to the screen using BIOS interrupts. The main functionality includes a print_string function that can be called to display messages.

# Features

- Boot sector code that runs on system startup.

- Ability to print strings to the screen.

- Use of BIOS interrupts for character output.

- Example strings to demonstrate functionality.

## Getting Started

# Prerequisites

- An x86 emulator (e.g., QEMU) or a real x86 machine.

- NASM (Netwide Assembler) for assembling the code.

- A basic understanding of assembly language

# Directory Structure
```
/bootloader
│
├── boot.asm          # Main bootloader code
├── print_string.asm  # Function to print null-terminated strings
└── Makefile          # Build script
```
# Building the Bootloader

1. Clone the repository or download the source files.

2. Open a terminal and navigate to the project directory.

3. Run the following command to boot:
 ```
    chmod +x boot.sh
    ./boot.sh
```
# Notes

- Ensure that the bootloader is written to the first sector of a disk or a disk image.

- The bootloader must be exactly 512 bytes in size. If your code exceeds this size, you will need to adjust it accordingly.

``` 
   use the below command to verify the last bytes
   od -t x1 -A n bootloader.bin 
```
# License

This project is licensed under the MIT License 