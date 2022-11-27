# Building KLEE with LLVM 11 in macOS
KLEE is currently tested on Linux x86-64 (particularly Ubuntu), FreeBSD and macOS.
There is no support for uClibc and the POSIX environment under macOS. KLEE does not work under x86-32.

Cheack macOS bit version:
```
getconf LONG_BIT
```
## Install dependencies: 
KLEE requires all the dependencies of LLVM and some more. In particular, you should install the programs and libraries listed below.
graphviz/doxygen are optional and only needed to generate the source code documentation.

```
brew install curl git cmake python unzip gperftools sqlite3 graphviz doxygen bash
```
You should also install lit to enable testing, tabulate to support additional features in klee-stats and wllvm to make it easier to compile programs to LLVM bitcode:
```
sudo pip3 install lit wllvm
sudo apt-get install python3-tabulate
```

## Install LLVM 11: 
```
brew install llvm@11 
```

## Install constraint solver(s)
```
brew install z3
```
## (Optional) Get Google test sources:
For unit tests we use the Google test libraries.

If you want to run the unit tests you need to perform this step and also pass -DENABLE_UNIT_TESTS=ON to CMake when configuring KLEE in step 8.

We currently recommend version 1.11.0, so grab the sources for it.
```
curl -OL https://github.com/google/googletest/archive/release-1.11.0.zip
unzip release-1.11.0.zip
```
This will create a directory called googletest-release-1.11.0.

## Get KLEE source

```
git clone https://github.com/klee/klee.git
```
## Configure KLEE:
KLEE must be built “out of source”, so first create a build directory. 
You can create this wherever you like. Below, we assume you create this directory inside KLEE’s repository.
```
cd klee
mkdir build
cd build
cmake -DLLVM_CONFIG_BINARY=<LLVM_CONFIG_BINARY> ..
 ```
example:
```
cmake -DLLVM_CONFIG_BINARY=../../../../../../opt/homebrew/Cellar/llvm@11/11.1.0_4/bin/llvm-config ..
```

## Build KLEE:
```
make
```
 
Source: http://klee.github.io/build-llvm11/
