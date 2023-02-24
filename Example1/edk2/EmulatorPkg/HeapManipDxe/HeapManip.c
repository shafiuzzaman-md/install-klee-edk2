/*++ @file
  Basic heap manipulation driver to test heap exploitation
**/

#include "HeapManip.h"
#include <Library/DebugLib.h>
#include <Library/MemoryAllocationLib.h> // For AllocatePool
#include <Library/UefiBootServicesTableLib.h>
#include <Library/BaseMemoryLib.h>

#define ARRAYSZ 30

void *blockArray[ARRAYSZ];
int blockSizes[ARRAYSZ];

//
// The Heap Manipulation Protocol that this driver produces.
//
EFI_HEAP_MANIP_PROTOCOL  mHW = {
  EmuHeapManipAlloc,
  EmuHeapManipFree,
  EmuHeapManipWrite,
  EmuHeapManipRead
};

void addHeapBlock( void *block, int length )
{
  int index = 0;

  while (index < ARRAYSZ ) {
    if ( blockArray[index] == NULL ) {
      blockArray[index] = block;
      blockSizes[index] = length;

      return;
    }

    index += 1;
  }

  // If there is no room just quietly free it
  FreePool( block );

  return;
}

/*
 * Allocates a new heap block using AllocatePool based on the size provided by the user.
 *   It then the block with some metadata to the global list.
 *
 * @param This    Pointer to the function pointer array.
 * @param length  Size to allocate
 * 
 * @return Returns EFI_SUCCESS on success or a negative value on failure.
 */
EFI_STATUS
EFIAPI
EmuHeapManipAlloc (
  IN EFI_HEAP_MANIP_PROTOCOL  *This,
  IN unsigned int length
  )
{
  DEBUG( (DEBUG_INFO, "[INFO] EmuHeapManipAlloc\n"));

  void *newBlock = AllocatePool( length );

  if ( newBlock == NULL ) {
    return -1;
  }

  addHeapBlock( newBlock, length );

  return EFI_SUCCESS;
}


/*
 * Free a previously allocated heap block. The index given needs to be valid
 *
 * @param This    Pointer to the function pointer array.
 * @param index   Index of the block to free
 * 
 * @return Returns EFI_SUCCESS on success or a negative value on failure.
 */
EFI_STATUS
EFIAPI
EmuHeapManipFree(
  IN EFI_HEAP_MANIP_PROTOCOL  *This,
  IN unsigned int index
  )
{
  DEBUG( (DEBUG_INFO, "[INFO] EmuHeapManipFree\n"));

  if ( index >= ARRAYSZ ) {
    return -1;
  }

  if ( blockArray[index] == NULL ) {
    return -2;
  }

  FreePool( blockArray[index] );

  blockArray[index] = NULL;
  blockSizes[index] = 0;

  return EFI_SUCCESS;
}

/*
 * Write to an allocated buffer. The size field is not checked so an overflow is possible
 *
 * @param This    Pointer to the function pointer array.
 * @param index   Index of the block to free
 * @param buffer  Pointer to a buffer that will be written to the heap
 * @param length  Length of the buffer that will be copied into the heap
 * 
 * @return Returns EFI_SUCCESS on success or a negative value on failure.
 */
EFI_STATUS
EFIAPI
EmuHeapManipWrite (
  IN EFI_HEAP_MANIP_PROTOCOL  *This,
  IN unsigned int index,
  IN char *buffer,
  IN unsigned int length
  )
{
  DEBUG( (DEBUG_INFO, "[INFO] EmuHeapManipWrite\n"));

  if ( index >= ARRAYSZ ) {
    return -1;
  }

  if ( blockArray[index] == NULL ) {
    return -2;
  }

  CopyMem( blockArray, buffer, length);

  return EFI_SUCCESS;
}

/*
 * Returns the pointer to the buffer at the index 
 *
 * @param This    Pointer to the function pointer array.
 * @param index   Index of the block whose pointer will be returned
 * @param buffAddr The buffer address will be written here
 * 
 * @return Returns EFI_SUCCESS on success or a negative value on failure.
 */
EFI_STATUS
EFIAPI
EmuHeapManipRead (
  IN EFI_HEAP_MANIP_PROTOCOL  *This,
  IN unsigned int index,
  OUT void **buffAddr
  )
{
  DEBUG( (DEBUG_INFO, "[INFO] EmuHeapManipRead\n"));

  if ( buffAddr == NULL ) {
    return -1;
  }

  if ( index >= ARRAYSZ ) {
    return -1;
  }

  *buffAddr = blockArray[index];
  
  return EFI_SUCCESS;
}



EFI_STATUS
EFIAPI
EmuHeapManipDriverInitialize (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  )
{
  EFI_STATUS  Status;
  EFI_HANDLE  Handle;

  DEBUG ((DEBUG_INFO, "[INFO] HEAP MANIP DXE entry point\n"));

  //
  // Make sure the Heap Manipulation Protocol is not already installed in the system
  //
  ASSERT_PROTOCOL_ALREADY_INSTALLED (NULL, &gEfiHeapManipProtocolGuid);


  //
  // Install the Hello World Protocol onto a new handle
  //
  Handle = NULL;
  
  Status = gBS->InstallProtocolInterface (
                  &Handle,
                  &gEfiHeapManipProtocolGuid,
                  EFI_NATIVE_INTERFACE,
                  &mHW
                  );

  Status = gBS->InstallMultipleProtocolInterfaces (
                  &Handle,
                  &gEfiHeapManipProtocolGuid,
                  &mHW,
                  &gEfiHeapManipProtocolGuid,
                  &mHW,
                  &gEfiHeapManipProtocolGuid,
                  &mHW,
                  NULL
                  );


  if (EFI_ERROR (Status)) {
    return Status;
  }
    

  return EFI_SUCCESS;
}
