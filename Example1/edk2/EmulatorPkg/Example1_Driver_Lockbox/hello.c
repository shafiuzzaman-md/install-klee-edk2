#include "Uefi.h"
#include "Library/UefiLib.h"
#include "Library/UefiBootServicesTableLib.h"
#include "klee/klee.h"

EFI_STATUS EFIAPI UefiMain(IN EFI_HANDLE ImageHandle, IN EFI_SYSTEM_TABLE *SystemTable)
{

   // Make the input buffer symbolic
  CHAR16 InputBuffer[1024];
  klee_make_symbolic(InputBuffer, sizeof(InputBuffer), "InputBuffer");

  // Print the symbolic input to the console
  Print(L"Input: %s\n", InputBuffer);

  // Print "Hello World" to the console
  Print(L"Hello World\n");

  return EFI_SUCCESS;
}

int main(int argc, char **argv) {
    int x, y;

    klee_make_symbolic(&x, sizeof(x), "x");
    klee_make_symbolic(&y, sizeof(y), "y");

    UefiMain(x, y);

    return 0;
}