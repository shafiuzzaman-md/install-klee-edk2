
#include "SmmHarden.h"
#include "klee/klee.h" 
/**
  This function is vulnerable to an off-by-one.
  The check in the loop should be "Index < DestSize".
**/
UINTN CopyToSMM(CHAR16 *Dest, CHAR16 *Buffer, UINTN DestSize){
    INTN Index;
    for(Index = 0; Index <= DestSize; Index += 1){
        Dest[Index] = Buffer[Index];
        if(Buffer[Index] == 0)
            break;
    }
    return Index + 1;
}

struct VariableDescriptor {
    CHAR16 VariableName[16];
    CHAR16 VariableValue[16];
    BOOLEAN IsNotUser;
};

EFI_STATUS
EFIAPI
SmmHardenVariableManager (
  IN EFI_HANDLE  DispatchHandle,
  IN CONST VOID  *Context         OPTIONAL,
  IN OUT VOID    *CommBuffer      OPTIONAL,
  IN OUT UINTN   *CommBufferSize  OPTIONAL
  )
{
    struct VariableDescriptor VD;
    CHAR16 *Ptr = (CHAR16*) CommBuffer;
  //  DEBUG ((DEBUG_INFO, "[SmmHardenVariableManager] Received %d %s\n",
   //         *CommBufferSize, (CHAR16*)CommBuffer));

    if (*CommBufferSize > 64){
  //      DEBUG ((DEBUG_INFO, "[SmmHardenVariableManager] CommBuffer is too big\n"));
        return EFI_SUCCESS;
    }

    Ptr += CopyToSMM(VD.VariableName, Ptr, 16);
    VD.IsNotUser = StrnCmp(VD.VariableName, L"USR-", 4);
    /*  This will overflow in VD.IsNotUSer when the string pointed by Ptr is 16 character long.  */
    CopyToSMM(VD.VariableValue, Ptr, 16);

   // DEBUG ((DEBUG_INFO, "[SmmHardenVariableManager] Setting %s to %u ? ",
   //         VD.VariableName, StrDecimalToUintn(VD.VariableValue)));

    if(VD.IsNotUser) {
   //     DEBUG ((DEBUG_INFO, "Permission Denied.\n"));
    }
    else{
    //    DEBUG ((DEBUG_INFO, "Access Granted.\n"));
        SmmHardenSetVariable(VD.VariableName, StrDecimalToUintn(VD.VariableValue));
    }

    return EFI_SUCCESS;
}

int main(int argc, char **argv) {
  IN OUT VOID    *CommBuffer      OPTIONAL;
  IN OUT UINTN   *CommBufferSize  OPTIONAL;
  klee_make_symbolic(&CommBuffer, sizeof(CommBuffer), "Buffer");
  klee_make_symbolic(&CommBufferSize, sizeof(CommBufferSize), "CommBufferSize");
  SmmHardenVariableManager(NULL, NULL, CommBuffer, CommBufferSize);
  return 0;
}

int main1() {
  CHAR16 *Dest;
  CHAR16 *Buffer;
  UINTN DestSize;
  klee_make_symbolic(&Dest, sizeof(Dest), "Dest");
  klee_make_symbolic(&Buffer, sizeof(Buffer), "Buffer");
  klee_make_symbolic(&DestSize, sizeof(DestSize), "DestSize");
  CopyToSMM(Dest,Buffer,DestSize);
  return 0;
}
