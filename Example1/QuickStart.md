
# QuickStart

* Files for Example1 are in edk2/EmulatorPkg/Example1_Driver_Lockbox and edk2/EmulatorPkg/Example1_App

* Ensure all packages are installed:
`$ sudo apt-get install git gcc g++ make uuid-dev python-is-python3 build-essential nasm libx11-dev libxv-dev gd`
* From top directory:
```bash 
$ cd edk2
$ source edksetup.sh BaseTools
$ make -C BaseTools
$ OvmfPkg/build.sh
$ cd ../run-ovmf
$ ./copyfiles.sh
$ qemu-system-x86_64  -pflash bios.bin -hda fat:rw:hda-contents -net none -debugcon file:debug.log -global isa-debugcon.iobase=0x402 -s -S
```

* In a second tab:
```
$ gdb
(gdb) target remote :1234
(gdb) c
```

* In uefi shell:
```
Shell> fs0:Example1_App.efi
```
