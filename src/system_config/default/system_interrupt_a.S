/*******************************************************************************
 System Interrupt Source File

  File Name:
    sys_interrupt_a.S

  Summary:
    Raw ISR definitions.

  Description:
    This file contains a definitions of the raw ISRs required to support the 
    interrupt sub-system.
*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2011-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END
/*
*********************************************************************************************************
*                                           INCLUDES
*********************************************************************************************************
*/
#include <xc.h>

#include "ISR_Support.h"

/* Change Notice Interrupt */
   .extern  IntHandlerChangeNotification

   .section	.vector_34,code, keep
   .equ     __vector_dispatch_34, IntVectorChangeNotification
   .global  __vector_dispatch_34
   .set     nomicromips
   .set     noreorder
   .set     nomips16
   .set     noat
   .ent  IntVectorChangeNotification

IntVectorChangeNotification:
    la    $26,  _IntHandlerChangeNotification         
    jr    $26
    nop
	.end	IntVectorChangeNotification

   .section	.ChangeNotification_vector_text, code, keep
   .set     nomicromips
   .set     noreorder
   .set     nomips16
   .set     noat
   .ent  _IntHandlerChangeNotification

_IntHandlerChangeNotification:
    portSAVE_CONTEXT
    la    s6,  IntHandlerChangeNotification
    jalr  s6
    nop
    portRESTORE_CONTEXT
    .end	_IntHandlerChangeNotification

/* ADC Interrupt */
   .extern  IntHandlerDrvAdc

   .section	.vector_23,code, keep
   .equ     __vector_dispatch_23, IntVectorDrvAdc
   .global  __vector_dispatch_23
   .set     nomicromips
   .set     noreorder
   .set     nomips16
   .set     noat
   .ent  IntVectorDrvAdc

IntVectorDrvAdc:
    la    $26,  _IntHandlerDrvAdc         
    jr    $26
    nop
	.end	IntVectorDrvAdc

   .section	.DrvAdc_vector_text, code, keep
   .set     nomicromips
   .set     noreorder
   .set     nomips16
   .set     noat
   .ent  _IntHandlerDrvAdc

_IntHandlerDrvAdc:
    portSAVE_CONTEXT
    la    s6,  IntHandlerDrvAdc
    jalr  s6
    nop
    portRESTORE_CONTEXT
    .end	_IntHandlerDrvAdc


/* External Interrupt Instance 0 Interrupt */

   .extern  IntHandlerExternalInterruptInstance0

   .section	.vector_7,code, keep
   .equ     __vector_dispatch_7, IntVectorExternalInterruptInstance0
   .global  __vector_dispatch_7
   .set     nomicromips
   .set     noreorder
   .set     nomips16
   .set     noat
   .ent  IntVectorExternalInterruptInstance0

IntVectorExternalInterruptInstance0:
    la    $26,  _IntHandlerExternalInterruptInstance0         
    jr    $26
    nop
	.end	IntVectorExternalInterruptInstance0

   .section	.ExternalInterruptInstance0_vector_text, code, keep
   .set     nomicromips
   .set     noreorder
   .set     nomips16
   .set     noat
   .ent  _IntHandlerExternalInterruptInstance0

_IntHandlerExternalInterruptInstance0:
    portSAVE_CONTEXT
    la    s6,  IntHandlerExternalInterruptInstance0
    jalr  s6
    nop
    portRESTORE_CONTEXT
    .end	_IntHandlerExternalInterruptInstance0

/* NVM Interrupt */

   .extern  IntHandlerDrvNvm

   .section	.vector_26,code, keep
   .equ     __vector_dispatch_26, IntVectorDrvNvm
   .global  __vector_dispatch_26
   .set     nomicromips
   .set     noreorder
   .set     nomips16
   .set     noat
   .ent  IntVectorDrvNvm

IntVectorDrvNvm:
    la    $26,  _IntHandlerDrvNvm         
    jr    $26
    nop
	.end	IntVectorDrvNvm

   .section	.DrvNvm_vector_text, code, keep
   .set     nomicromips
   .set     noreorder
   .set     nomips16
   .set     noat
   .ent  _IntHandlerDrvNvm

_IntHandlerDrvNvm:
    portSAVE_CONTEXT
    la    s6,  IntHandlerDrvNvm
    jalr  s6
    nop
    portRESTORE_CONTEXT
    .end	_IntHandlerDrvNvm



/*******************************************************************************
 End of File
 */

