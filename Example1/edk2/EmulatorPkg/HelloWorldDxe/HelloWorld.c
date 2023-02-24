/*++ @file
  Basic hello world driver to be used as an example
**/

#include "HelloWorld.h"
#include <Library/DebugLib.h>
#include <Library/MemoryAllocationLib.h> // For AllocatePool
#include <Library/UefiBootServicesTableLib.h>

//
// The Hello World Protocol that this driver produces.
// The definition can be found in EmulatorPkg/Include/Protocol/EmuHelloWorld.h
// This structure is passed when installing the protocol and then returned when
//   someone calls the LocateProtocol function with this GUID.
//   This really could be any block of data that you pass.
//
EFI_HELLO_WORLD_PROTOCOL  mHW = {
  EmuHelloWorldDriverA,
  EmuHelloWorldDriverB,
  EmuHelloWorldDriverC,
  EmuHelloWorldDriverD
};

EFI_STATUS
EFIAPI
EmuHelloWorldDriverA (
  IN EFI_HELLO_WORLD_PROTOCOL  *This
  )
{
  DEBUG( (DEBUG_INFO, "[INFO] EmuHelloWorldDriverAx\n"));
  return EFI_SUCCESS;
}

EFI_STATUS
EFIAPI
EmuHelloWorldDriverB (
  IN EFI_HELLO_WORLD_PROTOCOL  *This
  )
{
  DEBUG( (DEBUG_INFO, "[INFO] EmuHelloWorldDriverBx\n"));
  return EFI_SUCCESS;
}

EFI_STATUS
EFIAPI
EmuHelloWorldDriverC (
  IN EFI_HELLO_WORLD_PROTOCOL  *This
  )
{
  DEBUG( (DEBUG_INFO, "[INFO] EmuHelloWorldDriverCx\n"));
  return EFI_SUCCESS;
}

EFI_STATUS
EFIAPI
EmuHelloWorldDriverD (
  IN EFI_HELLO_WORLD_PROTOCOL  *This
  )
{
  DEBUG( (DEBUG_INFO, "[INFO] EmuHelloWorldDriverDx\n"));
  return EFI_SUCCESS;
}



EFI_STATUS
EFIAPI
EmuHelloWorldDriverInitialize (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  )
{
  EFI_STATUS  Status;
  EFI_HANDLE  Handle;

  DEBUG ((DEBUG_INFO, "[INFO] HELLO WORLD DXE entry point\n"));

  //
  // Make sure the Hello World Protocol is not already installed in the system
  //
  ASSERT_PROTOCOL_ALREADY_INSTALLED (NULL, &gEfiHelloWorldProtocolGuid);


  //
  // Install the Hello World Protocol onto a new handle
  //
  Handle = NULL;
  
  Status = gBS->InstallProtocolInterface (
                  &Handle,
                  &gEfiHelloWorldProtocolGuid,
                  EFI_NATIVE_INTERFACE,
                  &mHW
                  );
  if (EFI_ERROR (Status)) {
    return Status;
  }
    

  return EFI_SUCCESS;
}
