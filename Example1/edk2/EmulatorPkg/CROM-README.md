# Files

## Driver

The files for the UEFI driver are in ``HelloWorldDxe``. The driver installs the Protocol for the gEfiHelloWorldProtocolGuid
which has a GUID of { 0xFFFFBE54, 0x8C35, 0xB345, { 0x8A, 0x0F, 0x7A, 0xC8, 0xA5, 0xFD, 0x05, 0x21 } }.

This value has to be written into the ``EmulatorPkg.dec`` file under the ``Protocol`` section.

The driver has the callback functions that will be used by the UEFI application.

The driver .inf file has to be added to the ``EmulatorPkg.dsc`` file:

``EmulatorPkg/HelloWorldDxe/HelloWorld.inf``

It also has to be added to the ``EmulatorPkg.fdf`` file:

``INF  EmulatorPkg/HelloWorldDxe/HelloWorld.inf``

## Protocol

The header file for the Hello World protocol is saved under ``Include/Protocol/EmuHelloWorld.h``. 

This defines the data passed to the protocol installer as well as the prototypes for the callback functions.

## Test application

Found in ``TestApp``. This is the way to interact from the UEFI shell with the Hello World driver

The test app .inf file have to be added to the ``EmulatorPkg.dsc`` file:

``EmulatorPkg/TestApp/TestApp.inf``


## Building

Run ``build.sh``

## Running

Run ``build.sh run``

Once the shell pops up run ``fs0:`` to get access to the filesystem. Next, run ``TestApp.efi``. This will call into the
driver from the Application. You should see the string "Hello World" in the shell and in the debug window you will see
"[INFO] EmuHelloWorldDriverA". You can also just run ``fs0:TestApp.efi``.
