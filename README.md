# Using EDK II with Native GCC in Ubuntu 20.04 LTS
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

## Build the EDK II BaseTools

```make -C edk2/BaseTools```

## Setup build shell environment

``` 
cd ~/src/edk2
export EDK_TOOLS_PATH=$HOME/src/edk2/BaseTools
. edksetup.sh BaseTools
```

## Modify Conf Files
Running edksetup.sh populates the edk2/Conf directory with default configuration files. You will need to edit the Conf/target.txt file to set the build platform, target architecture, tool chain, and multi-threading options. The example below is based on building the MdeModulePkg using GCC5.

### Set Build Target Information
For the Conf/target.txt file, update the following lines:

![image](https://user-images.githubusercontent.com/10768241/202523638-b882dbf0-7067-46c7-9c5a-dae3eb4186de.png)
![image](https://user-images.githubusercontent.com/10768241/202523864-d0d39fa0-0b06-4832-a9bd-ea33bfd1f9dd.png)
![image](https://user-images.githubusercontent.com/10768241/202523972-db307536-5f24-4898-bd5d-b282bd4a6adb.png)


Optional: enable multi-threaded build. The default value for MAX_CONCURRENT_THREAD_NUMBER is 1, which disables multi-threaded build. Change this value based on your system's multi-threading capabilities. The formula is '1 + (2 x processor threads)'.
Example: for an Intel Core i5 (two processor cores w/ hyperthreading), the value is 9.

## Build Hello World! (and the rest of MdeModulePkg)
Now you should be able to simply run the build command to compile MdeModulePkg.
``` build```

One result of the build is that you should have the HelloWorld UEFI application:
```ls Build/MdeModule/DEBUG_*/*/HelloWorld.efi```

