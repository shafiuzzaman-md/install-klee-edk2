/*++ @file
  Header file for the basic Hello World Dxe driver
**/

#ifndef _HELLO_WORLD_H_
#define _HELLO_WORLD_H_

#include <Protocol/EmuHelloWorld.h>

//
// Function Prototypes
//
EFI_STATUS
EFIAPI
EmuHelloWorldDriverA (
  IN EFI_HELLO_WORLD_PROTOCOL  *This
  );

EFI_STATUS
EFIAPI
EmuHelloWorldDriverB (
  IN EFI_HELLO_WORLD_PROTOCOL  *This
  );

EFI_STATUS
EFIAPI
EmuHelloWorldDriverC (
  IN EFI_HELLO_WORLD_PROTOCOL  *This
  );

EFI_STATUS
EFIAPI
EmuHelloWorldDriverD (
  IN EFI_HELLO_WORLD_PROTOCOL  *This
  );

#endif
