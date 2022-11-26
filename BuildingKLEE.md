# Building KLEE with LLVM 11 in Ubuntu 20.04

KLEE is currently tested on Linux x86-64 (particularly Ubuntu. KLEE does not work under x86-32.
```
uname -i
```
## Install dependencies: 
KLEE requires all the dependencies of LLVM and some more. In particular, you should install the programs and libraries listed below. graphviz/doxygen are optional and only needed to generate the source code documentation.
```
sudo apt-get install build-essential cmake curl file g++-multilib gcc-multilib git libcap-dev libgoogle-perftools-dev libncurses5-dev libsqlite3-dev libtcmalloc-minimal4 python3-pip unzip graphviz doxygen
```

You should also install lit to enable testing, tabulate to support additional features in klee-stats and wllvm to make it easier to compile programs to LLVM bitcode:

```
sudo pip3 install lit wllvm
sudo apt-get install python3-tabulate
```
