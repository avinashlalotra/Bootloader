# clear the build artifacts
make clean
# assemble the bootloader
make assemble
# write data to floppy 
make setup
# boot the bootloader
make run
