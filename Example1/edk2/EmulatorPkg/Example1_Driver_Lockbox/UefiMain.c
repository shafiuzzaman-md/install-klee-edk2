#include "Uefi.h"
#include "Library/UefiLib.h"
#include "Library/UefiBootServicesTableLib.h"
#include "klee/klee.h"

EFI_STATUS EFIAPI UefiMain(IN EFI_HANDLE ImageHandle, IN EFI_SYSTEM_TABLE *SystemTable)
{

   // Make the input buffer symbolic
  CHAR16 InputBuffer[1024];
  KLEE_MAKE_SYMBOLIC(InputBuffer, sizeof(InputBuffer), "InputBuffer");

  // Print the symbolic input to the console
  Print(L"Input: %s\n", InputBuffer);

  // Print "Hello World" to the console
  Print(L"Hello World\n");

  return EFI_SUCCESS;
}

