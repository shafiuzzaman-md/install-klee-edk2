# Ubuntu 20.04 LTS
## Install required software
Several Ubuntu packages will be needed to set up the build environment for EDK II. The following command will install all required packages:

```sudo apt install build-essential uuid-dev iasl git  nasm  python-is-python3```

build-essential - Informational list of build-essential packages
uuid-dev - Universally Unique ID library (headers and static libraries)
iasl - Intel ASL compiler/decompiler (also provided by acpica-tools)
nasm - General-purpose x86 assembler
python-is-python3 - Ubuntu 20.04 python command is 'python3' but edk2 tools use 'python'

## Install NASM
NASM in Ubuntu 20.04 LTS is outdated. You need to install updated one from [here](https://www.linuxfromscratch.org/blfs/view/svn/general/nasm.html)

## Get the edk2 source tree using Git

```mkdir ~/src```
```cd ~/src```
```git clone https://github.com/tianocore/edk2```

## Initialize submodules

```git submodule update --init```

## Compile build tools

```
cd ~/src/edk2
make -C BaseTools
. edksetup.sh
 ```
When the above steps are done, you can work in the edk2 directory for code development.

