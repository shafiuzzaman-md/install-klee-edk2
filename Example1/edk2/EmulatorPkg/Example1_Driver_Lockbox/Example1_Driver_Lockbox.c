/** @file
This is an example of how a driver might export data to the HII protocol to be
later utilized by the Setup Protocol

Copyright (c) 2004 - 2018, Intel Corporation. All rights reserved.<BR>
SPDX-License-Identifier: BSD-2-Clause-Patent

**/

#include "Example1_Driver_Lockbox.h"
#include "klee/klee.h"  // Shafiuzzaman: include KLEE header file


/*
Shafiuzzaman: Modifications
1. We use the klee_make_symbolic() function to make lockpin symbolic

2. We also add assertions to check for correctness of the input variables.

3. KLEE cannot load the 'gBS' symbol which is an instance of the EFI_BOOT_SERVICES. 
Therefore, we replace the use of gBS with KLEE stub functions. 
*/
///
/// SMM Lockbox
///
EFI_PHYSICAL_ADDRESS PhysicalBuffer;
UINTN Pages;
UINTN lockpin=UNLOCKED;
VOID *lockbox_start;
UINTN lockbox_length = SIZE_16KB;

Example1_Driver_Lockbox_PROTOCOL 
gExample1_Driver_LockboxProtocol = {
  Example1_Driver_Lockbox_SetLockPin,
  Example1_Driver_Lockbox_WriteData_Wrapper,
  Example1_Driver_Lockbox_ReadData,
  Example1_Driver_Lockbox_WriteData,
};

// Define KLEE stub functions for UEFI firmware functions
EFI_STATUS klee_stub_allocate_pages(
  IN EFI_ALLOCATE_TYPE Type,
  IN EFI_MEMORY_TYPE MemoryType,
  IN UINTN Pages,
  IN OUT EFI_PHYSICAL_ADDRESS *Memory
) {
  klee_warning("Using klee_stub_allocate_pages()");
  return EFI_SUCCESS;
}

EFI_STATUS klee_stub_install_protocol_interface(
  IN OUT EFI_HANDLE *Handle,
  IN EFI_GUID *Protocol,
  IN EFI_INTERFACE_TYPE InterfaceType,
  IN VOID *Interface
) {
  klee_warning("Using klee_stub_install_protocol_interface()");
  return EFI_SUCCESS;
}

EFI_STATUS klee_stub_free_pages(
  IN UINTN Pages,
  IN OUT EFI_PHYSICAL_ADDRESS *Memory
) {
  klee_warning("Using klee_stub_free_pages()");
  return EFI_SUCCESS;
}


/**
  Main entry for this driver.

  @param ImageHandle     Image handle this driver.
  @param SystemTable     Pointer to SystemTable.

  @retval EFI_SUCESS     This function always complete successfully.

**/
EFI_STATUS
EFIAPI
Example1_Driver_LockboxInit (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  )
{
  EFI_STATUS  Status;

 /*Shafiuzzaman: Declared as symbolic
  lockpin = LOCKED;
*/ 
  //CpuBreakpoint();

  //
  // Allocate the number of pages to hold Size bytes and
  // return in PhysicalBuffer
  //
  Pages = EFI_SIZE_TO_PAGES (SIZE_16KB);
  /*
  Shafiuzzaman: Replaced with stub functions
  */
 // Status = gBS->AllocatePages (
  Status = klee_stub_allocate_pages(
                  AllocateAnyPages,
                  EfiBootServicesData,
                  Pages,
                  &PhysicalBuffer
                  );
  if (EFI_ERROR (Status)) {
    return Status;
  }

  //
  // Convert the physical address to a pointer.
  // This method works for all support CPU architectures.
  //
  lockbox_start = (VOID *)(UINTN)PhysicalBuffer;

  // Shafiuzzaman: Enable symbolic execution on the input variables
  klee_make_symbolic(&lockpin, sizeof(lockpin), "lockpin");


   // Start Shafiuzzaman: Add assertions to check for correctness
  if (lockpin == 0 || lockpin != 0) {
   // klee_assert(0 && "lockpin must be either LOCKED or UNLOCKED");
  }

// End
/*
  Shafiuzzaman: Replaced with stub functions
  */
  //Status = gBS->InstallProtocolInterface (
    Status = klee_stub_install_protocol_interface(
                  &ImageHandle,
                  &gExample1_Driver_LockboxProtocol,
                  EFI_NATIVE_INTERFACE,
                  &gExample1_Driver_LockboxProtocol
                  );
  //Shafiuzzaman
  //ASSERT_EFI_ERROR (Status); 

  //Shafiuzzaman: Indicate successful execution to KLEE
  klee_assert(Status == EFI_SUCCESS);

  return EFI_SUCCESS;
}

/**
  Unloads the application and its installed protocol.

  @param[in]  ImageHandle       Handle that identifies the image to be unloaded.

  @retval EFI_SUCCESS           The image has been unloaded.
**/
EFI_STATUS
EFIAPI
Example1_Driver_LockboxUnload (
  IN EFI_HANDLE  ImageHandle
  )
{
  EFI_STATUS Status = EFI_SUCCESS;

  //
  // Free the allocated buffer
  //
  //Shafiuzzaman
 // Status = gBS->FreePages (PhysicalBuffer, Pages);
   Status = klee_stub_free_pages (PhysicalBuffer, Pages);
  if (EFI_ERROR (Status)) {
    return Status;
  }

  return Status;
}


EFI_STATUS EFIAPI 
Example1_Driver_Lockbox_SetLockPin(
  IN Example1_Driver_Lockbox_PROTOCOL *This,
  IN EFI_HANDLE Controller,
  IN UINTN value
) 
{
  if (lockpin != 0 && value == 0) {
    return EFI_ACCESS_DENIED;
  }
  klee_make_symbolic(&lockpin, sizeof(lockpin), "lockpin");
  lockpin = value;
  //DEBUG((DEBUG_INFO, "Example1_Driver_Lockbox Set Lockpin(%ld)\n", value));
  return EFI_SUCCESS;
}

EFI_STATUS
EFIAPI
Example1_Driver_Lockbox_WriteData_Wrapper (
  IN Example1_Driver_Lockbox_PROTOCOL        *This,
  IN EFI_HANDLE             Controller,
  IN UINTN offset, 
  IN VOID *src, 
  IN UINTN length
  )
{
  EFI_STATUS status;
  klee_make_symbolic(&lockbox_start, sizeof(lockbox_start), "lockbox_start");
  klee_make_symbolic(&offset, sizeof(offset), "offset");
  klee_make_symbolic(&lockpin, sizeof(lockpin), "lockpin");
  klee_assume(lockpin > 0);
  status = Example1_Driver_Lockbox_WriteData(This, NULL, (void *)(lockbox_start+offset), src, length);
  klee_assert(status == EFI_WRITE_PROTECTED);
  return status;
}

EFI_STATUS
EFIAPI
Example1_Driver_Lockbox_WriteData (
  IN Example1_Driver_Lockbox_PROTOCOL        *This,
  IN EFI_HANDLE             Controller,
  IN VOID *dest, 
  IN VOID *src, 
  IN UINTN length
  )
{
    // Check if in lockbox
    if (lockpin) {
        // | lockbox start ----- dest ----- lockbox_start + length |
        if (lockbox_start <= dest && dest < lockbox_start + lockbox_length) {
            return EFI_WRITE_PROTECTED;
        }
    }

   // CopyMem(dest, src, length);
    return EFI_SUCCESS;
}

EFI_STATUS
EFIAPI
Example1_Driver_Lockbox_ReadData (
  IN Example1_Driver_Lockbox_PROTOCOL       *This,
  IN EFI_HANDLE                       Controller,
  IN OUT VOID                         **dest, 
  IN UINTN                            offset, 
  IN UINTN                            length
  )
{
    klee_make_symbolic(*dest, length, "dest");
    klee_make_symbolic(&length, sizeof(length), "length");
    klee_make_symbolic(&lockpin, sizeof(lockpin), "lockpin");

    // Check if pointer is provided
    if ((void*)*dest == NULL)
        return EFI_INVALID_PARAMETER;

    // Check if in lockbox
    void *src = (void*)(lockbox_start+offset);
    // | lockbox start ----- src ----- lockbox_start + length |
    if (lockbox_start > src || src >= lockbox_start + lockbox_length) {
        return EFI_NO_MAPPING;
    }
    if (src + length >= lockbox_start + lockbox_length) {
        return EFI_NO_MAPPING;
    }

    // Shafiuzzaman: Add assertions to check for correctness
     klee_assert((lockpin == 0 || lockpin != 0) && EFI_SUCCESS);
   // CopyMem(dest, src, length);
   // klee_memcpy(dest, src, length);

    return EFI_SUCCESS;
}

int main() {
 // Example1_Driver_LockboxInit(NULL, NULL);
 // Example1_Driver_LockboxUnload(NULL);
  Example1_Driver_Lockbox_WriteData_Wrapper(NULL,NULL,NULL,NULL,NULL);
 // Example1_Driver_Lockbox_ReadData(NULL,NULL,NULL,NULL,NULL);
  return 0;
}
