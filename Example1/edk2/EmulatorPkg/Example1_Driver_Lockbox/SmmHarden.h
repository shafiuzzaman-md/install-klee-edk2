#include "Uefi/UefiBaseType.h"


EFI_STATUS
EFIAPI
SmmHardenVariableManager (
  IN EFI_HANDLE  DispatchHandle,
  IN CONST VOID  *Context         OPTIONAL,
  IN OUT VOID    *CommBuffer      OPTIONAL,
  IN OUT UINTN   *CommBufferSize  OPTIONAL
);

EFI_STATUS
EFIAPI
SmmHardenBootService (
  IN EFI_HANDLE  DispatchHandle,
  IN CONST VOID  *Context         OPTIONAL,
  IN OUT VOID    *CommBuffer      OPTIONAL,
  IN OUT UINTN   *CommBufferSize  OPTIONAL
);

EFI_STATUS SmmHardenGetVariable(
  IN  CHAR16    *VariableName,
  OUT UINT32    *VariableValue
);

EFI_STATUS SmmHardenSetVariable(
  IN CHAR16     *VariableName,
  IN UINT32     VariableValue
);

VOID
SmmHardenCommunicateSMM(
  IN EFI_GUID  Guid,
  IN VOID     *Data,
  IN UINTN    DataSize
);
