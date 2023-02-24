/*++ @file
  Header file for the basic Hello World Dxe driver
**/

#ifndef _HEAP_MANIP_H_
#define _HEAP_MANIP_H_

#include <Protocol/EmuHeapManip.h>

//
// Function Prototypes
//
EFI_STATUS
EFIAPI
EmuHeapManipAlloc (
  IN EFI_HEAP_MANIP_PROTOCOL  *This,
  IN unsigned int length
  );

EFI_STATUS
EFIAPI
EmuHeapManipFree (
  IN EFI_HEAP_MANIP_PROTOCOL  *This,
  IN unsigned int index
  );

EFI_STATUS
EFIAPI
EmuHeapManipWrite (
  IN EFI_HEAP_MANIP_PROTOCOL  *This,
  IN unsigned int index,
  IN char *buffer,
  IN unsigned int length
  );

EFI_STATUS
EFIAPI
EmuHeapManipRead (
  IN EFI_HEAP_MANIP_PROTOCOL  *This,
  IN unsigned int index,
  OUT void **buffAddr
  );

#endif // _HEAP_MANIP_H_
