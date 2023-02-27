#include <Uefi.h>
#include <Library/UefiLib.h>
#include <Library/UefiApplicationEntryPoint.h>

int
EFIAPI
main (
  IN int Argc,
  IN char **Argv
  )
{
  EFI_STATUS Status;

  Status = EFI_SUCCESS;

  Print(L"Hello, World!\n");

  return Status;
}

