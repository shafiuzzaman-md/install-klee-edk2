#!/bin/bash

TCWD=`pwd`

make -C BaseTools

cd $TCWD
cd OvmfPkg
./build.sh
cd $TCWD
cd EmulatorPkg
./build.sh
cd $TCWD
