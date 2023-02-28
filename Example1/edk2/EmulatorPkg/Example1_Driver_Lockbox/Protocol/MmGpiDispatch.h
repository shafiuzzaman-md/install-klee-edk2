/** @file
  MM General Purpose Input (GPI) Dispatch Protocol as defined in PI 1.5 Specification
  Volume 4 Management Mode Core Interface.

  This protocol provides the parent dispatch service for the General Purpose Input
  (GPI) MMI source generator.

  The EFI_MM_GPI_DISPATCH_PROTOCOL provides the ability to install child handlers for the
  given event types.  Several inputs can be enabled.  This purpose of this interface is to generate an
  MMI in response to any of these inputs having a true value provided.

  Copyright (c) 2017, Intel Corporation. All rights reserved.<BR>
  SPDX-License-Identifier: BSD-2-Clause-Patent

  @par Revision Reference:
  This protocol is from PI Version 1.5.

**/

#ifndef _MM_GPI_DISPATCH_H_
#define _MM_GPI_DISPATCH_H_

#include "../Pi/PiMmCis.h"

#define EFI_MM_GPI_DISPATCH_PROTOCOL_GUID \
  { \
    0x25566b03, 0xb577, 0x4cbf, {0x95, 0x8c, 0xed, 0x66, 0x3e, 0xa2, 0x43, 0x80 } \
  }

///
/// The dispatch function's context.
///
typedef struct {
  ///
  /// A number from one of 2^64 possible GPIs that can generate an MMI. A
  /// 0 corresponds to logical GPI[0]; 1 corresponds to logical GPI[1]; and
  /// GpiNum of N corresponds to GPI[N], where N can span from 0 to 2^64-1.
  ///
  UINT64    GpiNum;
} EFI_MM_GPI_REGISTER_CONTEXT;

typedef struct _EFI_MM_GPI_DISPATCH_PROTOCOL EFI_MM_GPI_DISPATCH_PROTOCOL;

/**
  Registers a child MMI source dispatch function with a parent MM driver.

  This service registers a function (DispatchFunction) which will be called when an MMI is
  generated because of one or more of the GPIs specified by RegisterContext. On return,
  DispatchHandle contains a unique handle which may be used later to unregister the function
  using UnRegister().
  The DispatchFunction will be called with Context set to the same value as was passed into
  this function in RegisterContext and with CommBuffer pointing to another instance of
  EFI_MM_GPI_REGISTER_CONTEXT describing the GPIs which actually caused the MMI and
  CommBufferSize pointing to the size of the structure.

  @param[in]  This               Pointer to the EFI_MM_GPI_DISPATCH_PROTOCOL instance.
  @param[in]  DispatchFunction   Function to register for handler when the specified GPI causes an MMI.
  @param[in]  RegisterContext    Pointer to the dispatch function's context.
                                 The caller fills this context in before calling
                                 the register function to indicate to the register
                                 function the GPI(s) for which the dispatch function
                                 should be invoked.
  @param[out] DispatchHandle     Handle generated by the dispatcher to track the
                                 function instance.

  @retval EFI_SUCCESS            The dispatch function has been successfully
                                 registered and the MMI source has been enabled.
  @retval EFI_DEVICE_ERROR       The driver was unable to enable the MMI source.
  @retval EFI_INVALID_PARAMETER  RegisterContext is invalid. The GPI input value
                                 is not within valid range.
  @retval EFI_OUT_OF_RESOURCES   There is not enough memory (system or MM) to manage this child.
**/
typedef
EFI_STATUS
(EFIAPI *EFI_MM_GPI_REGISTER)(
  IN CONST EFI_MM_GPI_DISPATCH_PROTOCOL    *This,
  IN       EFI_MM_HANDLER_ENTRY_POINT      DispatchFunction,
  IN CONST EFI_MM_GPI_REGISTER_CONTEXT     *RegisterContext,
  OUT      EFI_HANDLE                      *DispatchHandle
  );

/**
  Unregisters a General Purpose Input (GPI) service.

  This service removes the handler associated with DispatchHandle so that it will no longer be
  called when the GPI triggers an MMI.

  @param[in]  This               Pointer to the EFI_MM_GPI_DISPATCH_PROTOCOL instance.
  @param[in]  DispatchHandle     Handle of the service to remove.

  @retval EFI_SUCCESS            Handle of the service to remove.
  @retval EFI_INVALID_PARAMETER  The DispatchHandle was not valid.
**/
typedef
EFI_STATUS
(EFIAPI *EFI_MM_GPI_UNREGISTER)(
  IN CONST EFI_MM_GPI_DISPATCH_PROTOCOL    *This,
  IN       EFI_HANDLE                      DispatchHandle
  );

///
/// Interface structure for the MM GPI MMI Dispatch Protocol
///
/// The MM GPI MMI Dispatch Protocol provides the parent dispatch service
/// for the General Purpose Input (GPI) MMI source generator.
///
struct _EFI_MM_GPI_DISPATCH_PROTOCOL {
  EFI_MM_GPI_REGISTER      Register;
  EFI_MM_GPI_UNREGISTER    UnRegister;
  ///
  /// Denotes the maximum value of inputs that can have handlers attached.
  ///
  UINTN                    NumSupportedGpis;
};

extern EFI_GUID  gEfiMmGpiDispatchProtocolGuid;

#endif
