#!/bin/bash
cp ../edk2/Build/OvmfX64/DEBUG_GCC5/FV/OVMF* .
cp ../edk2/Build/OvmfX64/DEBUG_GCC5/X64/*.efi hda-contents/
cp ../edk2/Build/OvmfX64/DEBUG_GCC5/X64/Example1* hda-contents/
cp OVMF.fd bios.bin
