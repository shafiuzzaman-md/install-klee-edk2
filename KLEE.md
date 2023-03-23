# Installing KLEE with llvm-14 

NOTE: KLEE is currently tested on Linux x86-64 (particularly Ubuntu). KLEE does not work under x86-32. Following steps are tested on Ubuntu 22.04.

KLEE needs to be built with **llvm-14** to run on edk2

Follow the manual installation steps from [here](https://klee.github.io/build-llvm11/). The only exception is you need to use llvm-14 instead of llvm-11. 

1. Install dependencies:

```
sudo apt-get install build-essential cmake curl file g++-multilib gcc-multilib git libcap-dev libgoogle-perftools-dev libncurses5-dev libsqlite3-dev libtcmalloc-minimal4 python3-pip unzip graphviz doxygen

sudo pip3 install lit wllvm

sudo apt-get install python3-tabulate
```

2. Install LLVM 14: 
```
sudo apt-get install clang-14 llvm-14 llvm-14-dev llvm-14-tools
```

3. Install constraint solver(s)
Z3:
```
git clone https://github.com/Z3Prover/z3.git
cd z3
python scripts/mk_make.py
cd build
make
sudo make install
```

4. (Optional) Get Google test sources:
If you want to run the unit tests you need to perform this step and also pass -DENABLE_UNIT_TESTS=ON to CMake when configuring KLEE in step 8.
```
curl -OL https://github.com/google/googletest/archive/release-1.11.0.zip
unzip release-1.11.0.zip
```
5. Build uClibc and the POSIX environment model:
```
git clone https://github.com/klee/klee-uclibc.git
cd klee-uclibc
./configure --make-llvm-lib --with-cc clang-14 --with-llvm-config llvm-config-14
make -j2
cd ..
```

6. Get KLEE source
```
git clone https://github.com/klee/klee.git
```
7. (Optional) Build libc++:

8. Configure KLEE:
KLEE must be built “out of source”. 

```
mkdir klee_build
cd build
```
You need to update the path depending on where you place it in your dirctoty. Following command assumes klee_build is outside the repository. 
```
cmake -DENABLE_SOLVER_Z3=ON -DENABLE_POSIX_RUNTIME=ON -DKLEE_UCLIBC_PATH=../klee-uclibc -DGTEST_SRC_DIR=../googletest-release-1.11.0 -DLLVM_CONFIG_BINARY=/usr/bin/llvm-config-14 ../klee
```
9. Build KLEE
```
make
```

[Run KLEE](RunKLEE.md)