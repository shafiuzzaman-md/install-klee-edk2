## Build

Run ``./buildem.sh`` to build both OvmfPkg and EmulatorPkg.


## Heap

``cd EmulatorPkg``
``./build.sh run``

After gdb pops up type ``r``.

After the shell pops up run the following
```
fs0:ManipApp.efi
1
16
1
16
3
0
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
2
0
```

This will result in a crash.
