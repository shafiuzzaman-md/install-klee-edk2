/** @file
  This sample application bases on HelloWorld PCD setting
  to print "UEFI Hello World!" to the UEFI Console.

  Copyright (c) 2006 - 2018, Intel Corporation. All rights reserved.<BR>
  SPDX-License-Identifier: BSD-2-Clause-Patent

**/

#include <Uefi.h>
#include <Protocol/EmuHeapManip.h>
#include <Library/PcdLib.h>
#include <Library/UefiLib.h>
#include <Library/UefiApplicationEntryPoint.h>
#include <Library/UefiBootServicesTableLib.h>
#include <Protocol/ShellParameters.h>
#include <Library/ShellLib.h>

EFI_HEAP_MANIP_PROTOCOL *yolo;

EFI_GUID  gEfiHeapManipProtocolGuid = { 0xAABBCCDD, 0x1234, 0x3458, { 0x8A, 0x0F, 0x7A, 0xC8, 0xA5, 0xFD, 0x05, 0x21 } };

int atoi( CHAR16 *str )
{
  int i = 0;
  int sign = 1;
  int index = 0;
  int digit;

  if ( str == NULL ) {
    return 0;
  }

  if ( str[0] == '-') {
    sign = -1;
    index = 1;
  } else if ( str[0] == '+') {
    sign = 1;
    index = 1;
  }

  while ( str[index] != 0x00 ) {
    digit = str[index] - 0x30;

    // First, move it left one place
    i = i * 10;

    i += digit;

    index += 1;
  }

  i *= sign;

  return i;
}

int strlen( CHAR16 *str )
{
  int len = 0;

  if ( str == NULL ) {
    return 0;
  }

  for ( len = 0; str[len] != 0x00; len++ ) { }

  return len;
}

void alloc_handler( )
{
  int length;
  CHAR16 *InputStr;

  ShellPromptForResponse (ShellPromptResponseTypeFreeform, L"Enter Size> ", (VOID **)&InputStr);

  length = atoi(InputStr);

  yolo->alloc( yolo, length );

  Print(L"Allocating: (%d)\n",length );

  return;
}

void free_handler( )
{
  int index;
  CHAR16 *InputStr;

  ShellPromptForResponse (ShellPromptResponseTypeFreeform, L"Enter Index> ", (VOID **)&InputStr);

  index = atoi(InputStr);

  yolo->free( yolo, index );

  Print(L"Freeing index: (%d)\n",index );

  return;
}

void write_handler( )
{
  int index;
  CHAR16 *InputStr;

  ShellPromptForResponse (ShellPromptResponseTypeFreeform, L"Enter Index> ", (VOID **)&InputStr);

  index = atoi(InputStr);

  ShellPromptForResponse (ShellPromptResponseTypeFreeform, L"Enter Buffer> ", (VOID **)&InputStr);

  yolo->write( yolo, index, (char*)InputStr, strlen(InputStr) * 2 );

  Print(L"Writing to index: (%d)\n",index );

  return;
}

/**
  The user Entry Point for Application. The user code starts with this function
  as the real entry point for the application.

  @param[in] ImageHandle    The firmware allocated handle for the EFI image.
  @param[in] SystemTable    A pointer to the EFI System Table.

  @retval EFI_SUCCESS       The entry point is executed successfully.
  @retval other             Some error occurs when executing this entry point.

**/
EFI_STATUS
EFIAPI
UefiMain (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  )
{
  EFI_STATUS Status;
  CHAR16 *InputStr;
  int choice;

  // Open the Heap Manipulation protocol
  Status = gBS->LocateProtocol (&gEfiHeapManipProtocolGuid, NULL, (void *)&yolo);
  if (EFI_ERROR( Status ) ) {
    return Status;
  }

  
  while ( 1 ) {
    Print(L"1) Allocate heap buffer\n");
    Print(L"2) Free heap buffer\n");
    Print(L"3) Write to heap buffer\n");
    Print(L"4) Print heap list\n");

    ShellPromptForResponse (ShellPromptResponseTypeFreeform, L"> ", (VOID **)&InputStr);

    choice = atoi(InputStr);

    Print(L"Your response: (%d)\n",choice );

    switch (choice ) {
      case 1:
        alloc_handler();
        break;
      case 2:
        free_handler();
        break;
      case 3:
        write_handler();
        break;
      default:
        Print(L"Invalid choice: %d\n", choice);
        break;
    };
  }
  return EFI_SUCCESS;
}
