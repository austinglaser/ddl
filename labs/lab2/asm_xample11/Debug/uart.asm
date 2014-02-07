   1              		.cpu cortex-m0
   2              		.fpu softvfp
   3              		.eabi_attribute 20, 1
   4              		.eabi_attribute 21, 1
   5              		.eabi_attribute 23, 3
   6              		.eabi_attribute 24, 1
   7              		.eabi_attribute 25, 1
   8              		.eabi_attribute 26, 1
   9              		.eabi_attribute 30, 6
  10              		.eabi_attribute 34, 0
  11              		.eabi_attribute 18, 4
  12              		.code	16
  13              		.file	"uart.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.NVIC_EnableIRQ,"ax",%progbits
  18              		.align	2
  19              		.code	16
  20              		.thumb_func
  22              	NVIC_EnableIRQ:
  23              	.LFB11:
  24              		.file 1 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h"
   1:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**************************************************************************//**
   2:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * $Id:: core_cm0.h 4785 2010-09-03 22:39:27Z nxp21346                    $
   3:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
   4:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @file     core_cm0.h
   5:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief    CMSIS Cortex-M0 Core Peripheral Access Layer Header File
   6:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @version  V1.30
   7:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @date     30. October 2009
   8:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
   9:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @note
  10:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Copyright (C) 2009 ARM Limited. All rights reserved.
  11:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
  12:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @par
  13:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * ARM Limited (ARM) is supplying this software for use with Cortex-M 
  14:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * processor based microcontrollers.  This file can be freely distributed 
  15:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * within development tools that are supporting such ARM based processors. 
  16:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
  17:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @par
  18:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
  19:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
  20:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
  21:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
  22:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
  23:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
  24:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  ******************************************************************************/
  25:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  26:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #ifndef __CM0_CORE_H__
  27:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __CM0_CORE_H__
  28:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  29:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_core_LintCinfiguration CMSIS CM0 Core Lint Configuration
  30:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
  31:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * List of Lint messages which will be suppressed and not shown:
  32:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *   - not yet checked
  33:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * .
  34:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Note:  To re-enable a Message, insert a space before 'lint' *
  35:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
  36:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
  37:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  38:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  39:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_core_definitions CM0 Core Definitions
  40:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   This file defines all structures and symbols for CMSIS core:
  41:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****     - CMSIS version number
  42:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****     - Cortex-M core registers and bitfields
  43:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****     - Cortex-M core peripheral base address
  44:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   @{
  45:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
  46:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  47:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #ifdef __cplusplus
  48:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  extern "C" {
  49:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #endif 
  50:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  51:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __CM0_CMSIS_VERSION_MAIN  (0x01)                                                       /*!<
  52:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __CM0_CMSIS_VERSION_SUB   (0x30)                                                       /*!<
  53:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __CM0_CMSIS_VERSION       ((__CM0_CMSIS_VERSION_MAIN << 16) | __CM0_CMSIS_VERSION_SUB) /*!<
  54:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  55:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __CORTEX_M                (0x00)                                                       /*!<
  56:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  57:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #include <stdint.h>                           /* Include standard types */
  58:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  59:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #if defined (__ICCARM__)
  60:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #include <intrinsics.h>                     /* IAR Intrinsics   */
  61:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #endif
  62:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  63:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  64:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #ifndef __NVIC_PRIO_BITS
  65:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __NVIC_PRIO_BITS    2               /*!< standard definition for NVIC Priority Bits */
  66:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #endif
  67:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  68:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  69:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  70:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  71:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
  72:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * IO definitions
  73:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
  74:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * define access restrictions to peripheral registers
  75:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
  76:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  77:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #ifdef __cplusplus
  78:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define     __I     volatile                /*!< defines 'read only' permissions      */
  79:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #else
  80:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define     __I     volatile const          /*!< defines 'read only' permissions      */
  81:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #endif
  82:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define     __O     volatile                  /*!< defines 'write only' permissions     */
  83:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define     __IO    volatile                  /*!< defines 'read / write' permissions   */
  84:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  85:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  86:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  87:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*******************************************************************************
  88:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *                 Register Abstraction
  89:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  ******************************************************************************/
  90:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_core_register CMSIS CM0 Core Register
  91:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  @{
  92:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** */
  93:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  94:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
  95:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_NVIC CMSIS CM0 NVIC
  96:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   memory mapped structure for Nested Vectored Interrupt Controller (NVIC)
  97:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   @{
  98:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
  99:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** typedef struct
 100:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
 101:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t ISER[1];                      /*!< (Offset: 0x000) Interrupt Set Enable Register   
 102:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****        uint32_t RESERVED0[31];
 103:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t ICER[1];                      /*!< (Offset: 0x080) Interrupt Clear Enable Register 
 104:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****        uint32_t RSERVED1[31];
 105:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t ISPR[1];                      /*!< (Offset: 0x100) Interrupt Set Pending Register  
 106:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****        uint32_t RESERVED2[31];
 107:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t ICPR[1];                      /*!< (Offset: 0x180) Interrupt Clear Pending Register
 108:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****        uint32_t RESERVED3[31];
 109:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****        uint32_t RESERVED4[64];
 110:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t IPR[8];                       /*!< (Offset: 0x3EC) Interrupt Priority Register     
 111:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** }  NVIC_Type;
 112:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_NVIC */
 113:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 114:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 115:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_SCB CMSIS CM0 SCB
 116:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   memory mapped structure for System Control Block (SCB)
 117:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   @{
 118:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 119:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** typedef struct
 120:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
 121:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __I  uint32_t CPUID;                        /*!< Offset: 0x00  CPU ID Base Register              
 122:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t ICSR;                         /*!< Offset: 0x04  Interrupt Control State Register  
 123:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****        uint32_t RESERVED0;                                      
 124:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t AIRCR;                        /*!< Offset: 0x0C  Application Interrupt / Reset Cont
 125:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t SCR;                          /*!< Offset: 0x10  System Control Register           
 126:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t CCR;                          /*!< Offset: 0x14  Configuration Control Register    
 127:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****        uint32_t RESERVED1;                                      
 128:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t SHP[2];                       /*!< Offset: 0x1C  System Handlers Priority Registers
 129:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t SHCSR;                        /*!< Offset: 0x24  System Handler Control and State R
 130:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****        uint32_t RESERVED2[2];                                   
 131:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t DFSR;                         /*!< Offset: 0x30  Debug Fault Status Register       
 132:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** } SCB_Type;                                                
 133:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 134:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SCB CPUID Register Definitions */
 135:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24                                             /*!< SCB 
 136:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFul << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 137:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 138:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_VARIANT_Pos              20                                             /*!< SCB 
 139:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_VARIANT_Msk              (0xFul << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 140:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 141:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16                                             /*!< SCB 
 142:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFul << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
 143:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 144:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_PARTNO_Pos                4                                             /*!< SCB 
 145:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFul << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 146:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 147:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_REVISION_Pos              0                                             /*!< SCB 
 148:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CPUID_REVISION_Msk             (0xFul << SCB_CPUID_REVISION_Pos)              /*!< SCB 
 149:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 150:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SCB Interrupt Control State Register Definitions */
 151:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_NMIPENDSET_Pos            31                                             /*!< SCB 
 152:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1ul << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 153:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 154:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_PENDSVSET_Pos             28                                             /*!< SCB 
 155:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_PENDSVSET_Msk             (1ul << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 156:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 157:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_PENDSVCLR_Pos             27                                             /*!< SCB 
 158:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1ul << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 159:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 160:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_PENDSTSET_Pos             26                                             /*!< SCB 
 161:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_PENDSTSET_Msk             (1ul << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 162:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 163:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_PENDSTCLR_Pos             25                                             /*!< SCB 
 164:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1ul << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 165:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 166:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23                                             /*!< SCB 
 167:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1ul << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 168:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 169:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_ISRPENDING_Pos            22                                             /*!< SCB 
 170:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_ISRPENDING_Msk            (1ul << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 171:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 172:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_VECTPENDING_Pos           12                                             /*!< SCB 
 173:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFul << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 174:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 175:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_VECTACTIVE_Pos             0                                             /*!< SCB 
 176:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFul << SCB_ICSR_VECTACTIVE_Pos)           /*!< SCB 
 177:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 178:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 179:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_VECTKEY_Pos              16                                             /*!< SCB 
 180:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFul << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 181:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 182:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16                                             /*!< SCB 
 183:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFul << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 184:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 185:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_ENDIANESS_Pos            15                                             /*!< SCB 
 186:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1ul << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 187:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 188:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2                                             /*!< SCB 
 189:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1ul << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 190:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 191:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1                                             /*!< SCB 
 192:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1ul << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 193:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 194:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SCB System Control Register Definitions */
 195:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_SCR_SEVONPEND_Pos               4                                             /*!< SCB 
 196:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_SCR_SEVONPEND_Msk              (1ul << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 197:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 198:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_SCR_SLEEPDEEP_Pos               2                                             /*!< SCB 
 199:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1ul << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 200:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 201:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1                                             /*!< SCB 
 202:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1ul << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 203:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 204:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SCB Configuration Control Register Definitions */
 205:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CCR_STKALIGN_Pos                9                                             /*!< SCB 
 206:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CCR_STKALIGN_Msk               (1ul << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 207:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 208:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3                                             /*!< SCB 
 209:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1ul << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 210:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 211:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SCB System Handler Control and State Register Definitions */
 212:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15                                             /*!< SCB 
 213:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1ul << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 214:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 215:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SCB Debug Fault Status Register Definitions */
 216:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_EXTERNAL_Pos               4                                             /*!< SCB 
 217:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_EXTERNAL_Msk              (1ul << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 218:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 219:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_VCATCH_Pos                 3                                             /*!< SCB 
 220:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_VCATCH_Msk                (1ul << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 221:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 222:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_DWTTRAP_Pos                2                                             /*!< SCB 
 223:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_DWTTRAP_Msk               (1ul << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 224:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 225:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_BKPT_Pos                   1                                             /*!< SCB 
 226:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_BKPT_Msk                  (1ul << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 227:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 228:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_HALTED_Pos                 0                                             /*!< SCB 
 229:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_DFSR_HALTED_Msk                (1ul << SCB_DFSR_HALTED_Pos)                   /*!< SCB 
 230:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_SCB */
 231:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 232:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 233:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_SysTick CMSIS CM0 SysTick
 234:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   memory mapped structure for SysTick
 235:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   @{
 236:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 237:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** typedef struct
 238:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
 239:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t CTRL;                         /*!< Offset: 0x00  SysTick Control and Status Registe
 240:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t LOAD;                         /*!< Offset: 0x04  SysTick Reload Value Register     
 241:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t VAL;                          /*!< Offset: 0x08  SysTick Current Value Register    
 242:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __I  uint32_t CALIB;                        /*!< Offset: 0x0C  SysTick Calibration Register      
 243:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** } SysTick_Type;
 244:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 245:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SysTick Control / Status Register Definitions */
 246:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysT
 247:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1ul << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 248:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 249:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysT
 250:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1ul << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 251:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 252:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysT
 253:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CTRL_TICKINT_Msk           (1ul << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 254:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 255:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysT
 256:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CTRL_ENABLE_Msk            (1ul << SysTick_CTRL_ENABLE_Pos)               /*!< SysT
 257:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 258:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SysTick Reload Register Definitions */
 259:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysT
 260:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFul << SysTick_LOAD_RELOAD_Pos)        /*!< SysT
 261:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 262:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SysTick Current Register Definitions */
 263:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysT
 264:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFul << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 265:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 266:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* SysTick Calibration Register Definitions */
 267:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysT
 268:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CALIB_NOREF_Msk            (1ul << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 269:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 270:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysT
 271:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CALIB_SKEW_Msk             (1ul << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 272:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 273:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysT
 274:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFul << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 275:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_SysTick */
 276:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 277:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 278:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_CoreDebug CMSIS CM0 Core Debug
 279:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   memory mapped structure for Core Debug Register
 280:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   @{
 281:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 282:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** typedef struct
 283:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
 284:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t DHCSR;                        /*!< Offset: 0x00  Debug Halting Control and Status R
 285:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __O  uint32_t DCRSR;                        /*!< Offset: 0x04  Debug Core Register Selector Regis
 286:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t DCRDR;                        /*!< Offset: 0x08  Debug Core Register Data Register 
 287:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __IO uint32_t DEMCR;                        /*!< Offset: 0x0C  Debug Exception and Monitor Contro
 288:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** } CoreDebug_Type;
 289:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 290:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* Debug Halting Control and Status Register */
 291:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16                                             /*!< Core
 292:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFul << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
 293:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 294:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25                                             /*!< Core
 295:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1ul << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
 296:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 297:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24                                             /*!< Core
 298:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1ul << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
 299:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 300:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19                                             /*!< Core
 301:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1ul << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
 302:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 303:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18                                             /*!< Core
 304:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1ul << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
 305:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 306:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17                                             /*!< Core
 307:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1ul << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
 308:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 309:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16                                             /*!< Core
 310:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1ul << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
 311:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 312:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3                                             /*!< Core
 313:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1ul << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
 314:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 315:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2                                             /*!< Core
 316:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1ul << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
 317:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 318:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1                                             /*!< Core
 319:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1ul << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
 320:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 321:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0                                             /*!< Core
 322:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1ul << CoreDebug_DHCSR_C_DEBUGEN_Pos)         /*!< Core
 323:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 324:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* Debug Core Register Selector Register */
 325:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16                                             /*!< Core
 326:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1ul << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
 327:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 328:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0                                             /*!< Core
 329:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1Ful << CoreDebug_DCRSR_REGSEL_Pos)         /*!< Core
 330:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 331:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* Debug Exception and Monitor Control Register */
 332:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DEMCR_DWTENA_Pos         24                                             /*!< Core
 333:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DEMCR_DWTENA_Msk         (1ul << CoreDebug_DEMCR_DWTENA_Pos)            /*!< Core
 334:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 335:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10                                             /*!< Core
 336:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1ul << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
 337:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 338:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0                                             /*!< Core
 339:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1ul << CoreDebug_DEMCR_VC_CORERESET_Pos)      /*!< Core
 340:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_CoreDebug */
 341:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 342:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 343:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* Memory mapping of Cortex-M0 Hardware */
 344:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCS_BASE            (0xE000E000)                              /*!< System Control Space Bas
 345:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug_BASE      (0xE000EDF0)                              /*!< Core Debug Base Address 
 346:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick_BASE        (SCS_BASE +  0x0010)                      /*!< SysTick Base Address    
 347:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define NVIC_BASE           (SCS_BASE +  0x0100)                      /*!< NVIC Base Address       
 348:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB_BASE            (SCS_BASE +  0x0D00)                      /*!< System Control Block Bas
 349:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 350:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SCB                 ((SCB_Type *)           SCB_BASE)         /*!< SCB configuration struct
 351:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define SysTick             ((SysTick_Type *)       SysTick_BASE)     /*!< SysTick configuration st
 352:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define NVIC                ((NVIC_Type *)          NVIC_BASE)        /*!< NVIC configuration struc
 353:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
 354:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 355:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_core_register */
 356:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 357:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 358:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*******************************************************************************
 359:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *                Hardware Abstraction Layer
 360:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  ******************************************************************************/
 361:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 362:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #if defined ( __CC_ARM   )
 363:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
 364:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
 365:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 366:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #elif defined ( __ICCARM__ )
 367:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __ASM           __asm                                       /*!< asm keyword for IAR Comp
 368:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __INLINE        inline                                      /*!< inline keyword for IAR C
 369:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 370:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #elif defined   (  __GNUC__  )
 371:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
 372:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
 373:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 374:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #elif defined   (  __TASKING__  )
 375:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 376:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 377:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 378:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #endif
 379:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 380:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 381:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* ###################  Compiler specific Intrinsics  ########################### */
 382:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 383:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #if defined ( __CC_ARM   ) /*------------------RealView Compiler -----------------*/
 384:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* ARM armcc specific functions */
 385:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 386:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __enable_fault_irq                __enable_fiq
 387:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __disable_fault_irq               __disable_fiq
 388:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 389:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __NOP                             __nop
 390:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __WFI                             __wfi
 391:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __WFE                             __wfe
 392:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __SEV                             __sev
 393:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __ISB()                           __isb(0)
 394:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __DSB()                           __dsb(0)
 395:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __DMB()                           __dmb(0)
 396:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __REV                             __rev
 397:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 398:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 399:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic void __enable_irq();     */
 400:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic void __disable_irq();    */
 401:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 402:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 403:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 404:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Process Stack Pointer
 405:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 406:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return ProcessStackPointer
 407:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 408:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the actual process stack pointer
 409:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 410:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_PSP(void);
 411:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 412:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 413:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Process Stack Pointer
 414:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 415:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  topOfProcStack  Process Stack Pointer
 416:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 417:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Assign the value ProcessStackPointer to the MSP 
 418:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * (process stack pointer) Cortex processor register
 419:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 420:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_PSP(uint32_t topOfProcStack);
 421:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 422:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 423:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Main Stack Pointer
 424:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 425:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return Main Stack Pointer
 426:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 427:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the current value of the MSP (main stack pointer)
 428:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Cortex processor register
 429:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 430:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_MSP(void);
 431:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 432:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 433:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Main Stack Pointer
 434:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 435:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  topOfMainStack  Main Stack Pointer
 436:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 437:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Assign the value mainStackPointer to the MSP 
 438:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * (main stack pointer) Cortex processor register
 439:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 440:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_MSP(uint32_t topOfMainStack);
 441:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 442:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 443:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Reverse byte order in unsigned short value
 444:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 445:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param   value  value to reverse
 446:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return         reversed value
 447:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 448:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Reverse byte order in unsigned short value
 449:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 450:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __REV16(uint16_t value);
 451:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 452:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 453:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Reverse byte order in signed short value with sign extension to integer
 454:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 455:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param   value  value to reverse
 456:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return         reversed value
 457:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 458:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Reverse byte order in signed short value with sign extension to integer
 459:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 460:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern int32_t __REVSH(int16_t value);
 461:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 462:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 463:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #if (__ARMCC_VERSION < 400000)
 464:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 465:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 466:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Priority Mask value
 467:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 468:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return PriMask
 469:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 470:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return state of the priority mask bit from the priority mask register
 471:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 472:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_PRIMASK(void);
 473:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 474:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 475:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Priority Mask value
 476:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 477:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param   priMask  PriMask
 478:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 479:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Set the priority mask bit in the priority mask register
 480:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 481:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_PRIMASK(uint32_t priMask);
 482:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 483:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 484:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Control Register value
 485:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * 
 486:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return Control value
 487:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 488:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the content of the control register
 489:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 490:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_CONTROL(void);
 491:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 492:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 493:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Control Register value
 494:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 495:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  control  Control value
 496:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 497:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Set the control register
 498:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 499:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_CONTROL(uint32_t control);
 500:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 501:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #else  /* (__ARMCC_VERSION >= 400000)  */
 502:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 503:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 504:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 505:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Priority Mask value
 506:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 507:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return PriMask
 508:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 509:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return state of the priority mask bit from the priority mask register
 510:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 511:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE uint32_t __get_PRIMASK(void)
 512:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
 513:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   register uint32_t __regPriMask         __ASM("primask");
 514:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   return(__regPriMask);
 515:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** }
 516:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 517:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 518:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Priority Mask value
 519:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 520:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  priMask  PriMask
 521:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 522:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Set the priority mask bit in the priority mask register
 523:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 524:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __set_PRIMASK(uint32_t priMask)
 525:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
 526:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   register uint32_t __regPriMask         __ASM("primask");
 527:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __regPriMask = (priMask);
 528:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** }
 529:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 530:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 531:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Control Register value
 532:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * 
 533:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return Control value
 534:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 535:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the content of the control register
 536:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 537:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE uint32_t __get_CONTROL(void)
 538:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
 539:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   register uint32_t __regControl         __ASM("control");
 540:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   return(__regControl);
 541:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** }
 542:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 543:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 544:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Control Register value
 545:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 546:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  control  Control value
 547:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 548:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Set the control register
 549:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 550:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __set_CONTROL(uint32_t control)
 551:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
 552:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   register uint32_t __regControl         __ASM("control");
 553:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   __regControl = control;
 554:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** }
 555:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 556:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #endif /* __ARMCC_VERSION  */ 
 557:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 558:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 559:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 560:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #elif (defined (__ICCARM__)) /*------------------ ICC Compiler -------------------*/
 561:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* IAR iccarm specific functions */
 562:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 563:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __enable_irq                              __enable_interrupt        /*!< global Interrupt e
 564:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __disable_irq                             __disable_interrupt       /*!< global Interrupt d
 565:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 566:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __enable_fault_irq()         { __ASM ("cpsie f"); }
 567:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __disable_fault_irq()        { __ASM ("cpsid f"); }
 568:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 569:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define __NOP                                     __no_operation            /*!< no operation intri
 570:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE  void __WFI()                     { __ASM ("wfi"); }
 571:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE  void __WFE()                     { __ASM ("wfe"); }
 572:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE  void __SEV()                     { __ASM ("sev"); }
 573:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 574:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic void __ISB(void)                                     */
 575:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic void __DSB(void)                                     */
 576:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic void __DMB(void)                                     */
 577:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic void __set_PRIMASK();                                */
 578:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic void __get_PRIMASK();                                */
 579:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 580:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 581:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic uint32_t __REV(uint32_t value);                      */
 582:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* intrinsic uint32_t __REVSH(uint32_t value);                    */
 583:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 584:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 585:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 586:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Process Stack Pointer
 587:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 588:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return ProcessStackPointer
 589:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 590:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the actual process stack pointer
 591:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 592:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_PSP(void);
 593:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 594:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 595:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Process Stack Pointer
 596:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 597:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  topOfProcStack  Process Stack Pointer
 598:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 599:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Assign the value ProcessStackPointer to the MSP 
 600:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * (process stack pointer) Cortex processor register
 601:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 602:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_PSP(uint32_t topOfProcStack);
 603:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 604:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 605:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Main Stack Pointer
 606:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 607:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return Main Stack Pointer
 608:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 609:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the current value of the MSP (main stack pointer)
 610:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Cortex processor register
 611:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 612:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_MSP(void);
 613:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 614:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 615:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Main Stack Pointer
 616:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 617:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  topOfMainStack  Main Stack Pointer
 618:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 619:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Assign the value mainStackPointer to the MSP 
 620:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * (main stack pointer) Cortex processor register
 621:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 622:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_MSP(uint32_t topOfMainStack);
 623:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 624:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 625:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Reverse byte order in unsigned short value
 626:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 627:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  value  value to reverse
 628:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return        reversed value
 629:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 630:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Reverse byte order in unsigned short value
 631:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 632:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __REV16(uint16_t value);
 633:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 634:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 635:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 636:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 637:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 638:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #elif (defined (__GNUC__)) /*------------------ GNU Compiler ---------------------*/
 639:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* GNU gcc specific functions */
 640:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 641:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __enable_irq()               { __ASM volatile ("cpsie i"); }
 642:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __disable_irq()              { __ASM volatile ("cpsid i"); }
 643:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 644:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __enable_fault_irq()         { __ASM volatile ("cpsie f"); }
 645:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __disable_fault_irq()        { __ASM volatile ("cpsid f"); }
 646:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 647:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __NOP()                      { __ASM volatile ("nop"); }
 648:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __WFI()                      { __ASM volatile ("wfi"); }
 649:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __WFE()                      { __ASM volatile ("wfe"); }
 650:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __SEV()                      { __ASM volatile ("sev"); }
 651:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __ISB()                      { __ASM volatile ("isb"); }
 652:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __DSB()                      { __ASM volatile ("dsb"); }
 653:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void __DMB()                      { __ASM volatile ("dmb"); }
 654:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 655:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 656:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 657:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Process Stack Pointer
 658:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 659:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return ProcessStackPointer
 660:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 661:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the actual process stack pointer
 662:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 663:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_PSP(void);
 664:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 665:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 666:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Process Stack Pointer
 667:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 668:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  topOfProcStack  Process Stack Pointer
 669:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 670:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Assign the value ProcessStackPointer to the MSP 
 671:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * (process stack pointer) Cortex processor register
 672:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 673:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_PSP(uint32_t topOfProcStack);
 674:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 675:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 676:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Main Stack Pointer
 677:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 678:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return Main Stack Pointer
 679:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 680:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the current value of the MSP (main stack pointer)
 681:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Cortex processor register
 682:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 683:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_MSP(void);
 684:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 685:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 686:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Main Stack Pointer
 687:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 688:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  topOfMainStack  Main Stack Pointer
 689:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 690:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Assign the value mainStackPointer to the MSP 
 691:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * (main stack pointer) Cortex processor register
 692:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 693:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_MSP(uint32_t topOfMainStack);
 694:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 695:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 696:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Priority Mask value
 697:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 698:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return PriMask
 699:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 700:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return state of the priority mask bit from the priority mask register
 701:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 702:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t  __get_PRIMASK(void);
 703:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 704:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 705:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Priority Mask value
 706:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 707:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  priMask  PriMask
 708:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 709:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Set the priority mask bit in the priority mask register
 710:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 711:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_PRIMASK(uint32_t priMask);
 712:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 713:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 714:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Return the Control Register value
 715:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** * 
 716:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** *  @return Control value
 717:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 718:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Return the content of the control register
 719:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 720:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __get_CONTROL(void);
 721:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 722:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 723:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Set the Control Register value
 724:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 725:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  control  Control value
 726:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 727:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Set the control register
 728:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 729:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern void __set_CONTROL(uint32_t control);
 730:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 731:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 732:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Reverse byte order in integer value
 733:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 734:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  value  value to reverse
 735:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return        reversed value
 736:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 737:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Reverse byte order in integer value
 738:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 739:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __REV(uint32_t value);
 740:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 741:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 742:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Reverse byte order in unsigned short value
 743:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 744:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  value  value to reverse
 745:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return        reversed value
 746:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 747:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Reverse byte order in unsigned short value
 748:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 749:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern uint32_t __REV16(uint16_t value);
 750:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 751:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 752:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Reverse byte order in signed short value with sign extension to integer
 753:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 754:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  value  value to reverse
 755:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @return        reversed value
 756:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 757:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Reverse byte order in signed short value with sign extension to integer
 758:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 759:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** extern int32_t __REVSH(int16_t value);
 760:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 761:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 762:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #elif (defined (__TASKING__)) /*------------------ TASKING Compiler ---------------------*/
 763:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* TASKING carm specific functions */
 764:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 765:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*
 766:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * The CMSIS functions have been implemented as intrinsics in the compiler.
 767:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Please use "carm -?i" to get an up to date list of all instrinsics,
 768:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Including the CMSIS ones.
 769:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 770:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 771:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #endif
 772:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 773:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 774:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_Core_FunctionInterface CMSIS CM0 Core Function Interface
 775:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   Core  Function Interface containing:
 776:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   - Core NVIC Functions
 777:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   - Core SysTick Functions
 778:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   - Core Reset Functions
 779:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** */
 780:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /*@{*/
 781:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 782:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* ##########################   NVIC functions  #################################### */
 783:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 784:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* Interrupt Priorities are WORD accessible only under ARMv6M                   */
 785:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /* The following MACROS handle generation of the register offset and byte masks */
 786:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define _BIT_SHIFT(IRQn)         (  (((uint32_t)(IRQn)       )    &  0x03) * 8 )
 787:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define _SHP_IDX(IRQn)           ( ((((uint32_t)(IRQn) & 0x0F)-8) >>    2)     )
 788:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** #define _IP_IDX(IRQn)            (   ((uint32_t)(IRQn)            >>    2)     )
 789:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 790:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 791:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 792:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Enable Interrupt in NVIC Interrupt Controller
 793:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 794:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  IRQn   The positive number of the external interrupt to enable
 795:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  *
 796:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Enable a device specific interupt in the NVIC interrupt controller.
 797:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * The interrupt number cannot be a negative value.
 798:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 799:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
 800:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
  25              		.loc 1 800 0
  26              		.cfi_startproc
  27 0000 80B5     		push	{r7, lr}
  28              	.LCFI0:
  29              		.cfi_def_cfa_offset 8
  30              		.cfi_offset 7, -8
  31              		.cfi_offset 14, -4
  32 0002 82B0     		sub	sp, sp, #8
  33              	.LCFI1:
  34              		.cfi_def_cfa_offset 16
  35 0004 00AF     		add	r7, sp, #0
  36              	.LCFI2:
  37              		.cfi_def_cfa_register 7
  38 0006 021C     		mov	r2, r0
  39 0008 FB1D     		add	r3, r7, #7
  40 000a 1A70     		strb	r2, [r3]
 801:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   NVIC->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* enable interrupt */
  41              		.loc 1 801 0
  42 000c 064B     		ldr	r3, .L2
  43 000e FA1D     		add	r2, r7, #7
  44 0010 1278     		ldrb	r2, [r2]
  45 0012 111C     		mov	r1, r2
  46 0014 1F22     		mov	r2, #31
  47 0016 0A40     		and	r2, r1
  48 0018 0121     		mov	r1, #1
  49 001a 081C     		mov	r0, r1
  50 001c 9040     		lsl	r0, r0, r2
  51 001e 021C     		mov	r2, r0
  52 0020 1A60     		str	r2, [r3]
 802:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** }
  53              		.loc 1 802 0
  54 0022 BD46     		mov	sp, r7
  55 0024 02B0     		add	sp, sp, #8
  56              		@ sp needed for prologue
  57 0026 80BD     		pop	{r7, pc}
  58              	.L3:
  59              		.align	2
  60              	.L2:
  61 0028 00E100E0 		.word	-536813312
  62              		.cfi_endproc
  63              	.LFE11:
  65              		.section	.text.NVIC_DisableIRQ,"ax",%progbits
  66              		.align	2
  67              		.code	16
  68              		.thumb_func
  70              	NVIC_DisableIRQ:
  71              	.LFB12:
 803:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** 
 804:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** /**
 805:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @brief  Disable the interrupt line for external interrupt specified
 806:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * 
 807:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * @param  IRQn   The positive number of the external interrupt to disable
 808:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * 
 809:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * Disable a device specific interupt in the NVIC interrupt controller.
 810:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  * The interrupt number cannot be a negative value.
 811:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****  */
 812:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** static __INLINE void NVIC_DisableIRQ(IRQn_Type IRQn)
 813:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** {
  72              		.loc 1 813 0
  73              		.cfi_startproc
  74 0000 80B5     		push	{r7, lr}
  75              	.LCFI3:
  76              		.cfi_def_cfa_offset 8
  77              		.cfi_offset 7, -8
  78              		.cfi_offset 14, -4
  79 0002 82B0     		sub	sp, sp, #8
  80              	.LCFI4:
  81              		.cfi_def_cfa_offset 16
  82 0004 00AF     		add	r7, sp, #0
  83              	.LCFI5:
  84              		.cfi_def_cfa_register 7
  85 0006 021C     		mov	r2, r0
  86 0008 FB1D     		add	r3, r7, #7
  87 000a 1A70     		strb	r2, [r3]
 814:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h ****   NVIC->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* disable interrupt */
  88              		.loc 1 814 0
  89 000c 074A     		ldr	r2, .L5
  90 000e FB1D     		add	r3, r7, #7
  91 0010 1B78     		ldrb	r3, [r3]
  92 0012 191C     		mov	r1, r3
  93 0014 1F23     		mov	r3, #31
  94 0016 0B40     		and	r3, r1
  95 0018 0121     		mov	r1, #1
  96 001a 081C     		mov	r0, r1
  97 001c 9840     		lsl	r0, r0, r3
  98 001e 031C     		mov	r3, r0
  99 0020 191C     		mov	r1, r3
 100 0022 8023     		mov	r3, #128
 101 0024 D150     		str	r1, [r2, r3]
 815:/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/core_cm0.h **** }
 102              		.loc 1 815 0
 103 0026 BD46     		mov	sp, r7
 104 0028 02B0     		add	sp, sp, #8
 105              		@ sp needed for prologue
 106 002a 80BD     		pop	{r7, pc}
 107              	.L6:
 108              		.align	2
 109              	.L5:
 110 002c 00E100E0 		.word	-536813312
 111              		.cfi_endproc
 112              	.LFE12:
 114              		.comm	UARTStatus,4,4
 115              		.global	UARTTxEmpty
 116              		.data
 119              	UARTTxEmpty:
 120 0000 01       		.byte	1
 121              		.comm	UARTBuffer,64,4
 122              		.global	UARTCount
 123              		.bss
 124              		.align	2
 127              	UARTCount:
 128 0000 00000000 		.space	4
 129              		.section	.text.ModemInit,"ax",%progbits
 130              		.align	2
 131              		.global	ModemInit
 132              		.code	16
 133              		.thumb_func
 135              	ModemInit:
 136              	.LFB20:
 137              		.file 2 "../driver/uart.c"
   1:../driver/uart.c **** /*****************************************************************************
   2:../driver/uart.c ****  *   uart.c:  UART API file for NXP LPC11xx Family Microprocessors
   3:../driver/uart.c ****  *
   4:../driver/uart.c ****  *   Copyright(C) 2008, NXP Semiconductor
   5:../driver/uart.c ****  *   All rights reserved.
   6:../driver/uart.c ****  *
   7:../driver/uart.c ****  *   History
   8:../driver/uart.c ****  *   2009.12.07  ver 1.00    Preliminary version, first Release
   9:../driver/uart.c ****  *
  10:../driver/uart.c **** ******************************************************************************/
  11:../driver/uart.c **** #include "driver_config.h"
  12:../driver/uart.c **** #if CONFIG_ENABLE_DRIVER_UART==1
  13:../driver/uart.c **** #include "uart.h"
  14:../driver/uart.c **** 
  15:../driver/uart.c **** volatile uint32_t UARTStatus;
  16:../driver/uart.c **** volatile uint8_t  UARTTxEmpty = 1;
  17:../driver/uart.c **** volatile uint8_t  UARTBuffer[BUFSIZE];
  18:../driver/uart.c **** volatile uint32_t UARTCount = 0;
  19:../driver/uart.c **** 
  20:../driver/uart.c **** #if CONFIG_UART_DEFAULT_UART_IRQHANDLER==1
  21:../driver/uart.c **** /*****************************************************************************
  22:../driver/uart.c **** ** Function name:		UART_IRQHandler
  23:../driver/uart.c **** **
  24:../driver/uart.c **** ** Descriptions:		UART interrupt handler
  25:../driver/uart.c **** **
  26:../driver/uart.c **** ** parameters:			None
  27:../driver/uart.c **** ** Returned value:		None
  28:../driver/uart.c **** ** 
  29:../driver/uart.c **** *****************************************************************************/
  30:../driver/uart.c **** void UART_IRQHandler(void)
  31:../driver/uart.c **** {
  32:../driver/uart.c ****   uint8_t IIRValue, LSRValue;
  33:../driver/uart.c ****   uint8_t Dummy = Dummy;
  34:../driver/uart.c **** 
  35:../driver/uart.c ****   IIRValue = LPC_UART->IIR;
  36:../driver/uart.c ****     
  37:../driver/uart.c ****   IIRValue >>= 1;			/* skip pending bit in IIR */
  38:../driver/uart.c ****   IIRValue &= 0x07;			/* check bit 1~3, interrupt identification */
  39:../driver/uart.c ****   if (IIRValue == IIR_RLS)		/* Receive Line Status */
  40:../driver/uart.c ****   {
  41:../driver/uart.c ****     LSRValue = LPC_UART->LSR;
  42:../driver/uart.c ****     /* Receive Line Status */
  43:../driver/uart.c ****     if (LSRValue & (LSR_OE | LSR_PE | LSR_FE | LSR_RXFE | LSR_BI))
  44:../driver/uart.c ****     {
  45:../driver/uart.c ****       /* There are errors or break interrupt */
  46:../driver/uart.c ****       /* Read LSR will clear the interrupt */
  47:../driver/uart.c ****       UARTStatus = LSRValue;
  48:../driver/uart.c ****       Dummy = LPC_UART->RBR;	/* Dummy read on RX to clear 
  49:../driver/uart.c **** 								interrupt, then bail out */
  50:../driver/uart.c ****       return;
  51:../driver/uart.c ****     }
  52:../driver/uart.c ****     if (LSRValue & LSR_RDR)	/* Receive Data Ready */			
  53:../driver/uart.c ****     {
  54:../driver/uart.c ****       /* If no error on RLS, normal ready, save into the data buffer. */
  55:../driver/uart.c ****       /* Note: read RBR will clear the interrupt */
  56:../driver/uart.c ****       UARTBuffer[UARTCount++] = LPC_UART->RBR;
  57:../driver/uart.c ****       if (UARTCount == BUFSIZE)
  58:../driver/uart.c ****       {
  59:../driver/uart.c ****         UARTCount = 0;		/* buffer overflow */
  60:../driver/uart.c ****       }	
  61:../driver/uart.c ****     }
  62:../driver/uart.c ****   }
  63:../driver/uart.c ****   else if (IIRValue == IIR_RDA)	/* Receive Data Available */
  64:../driver/uart.c ****   {
  65:../driver/uart.c ****     /* Receive Data Available */
  66:../driver/uart.c ****     UARTBuffer[UARTCount++] = LPC_UART->RBR;
  67:../driver/uart.c ****     if (UARTCount == BUFSIZE)
  68:../driver/uart.c ****     {
  69:../driver/uart.c ****       UARTCount = 0;		/* buffer overflow */
  70:../driver/uart.c ****     }
  71:../driver/uart.c ****   }
  72:../driver/uart.c ****   else if (IIRValue == IIR_CTI)	/* Character timeout indicator */
  73:../driver/uart.c ****   {
  74:../driver/uart.c ****     /* Character Time-out indicator */
  75:../driver/uart.c ****     UARTStatus |= 0x100;		/* Bit 9 as the CTI error */
  76:../driver/uart.c ****   }
  77:../driver/uart.c ****   else if (IIRValue == IIR_THRE)	/* THRE, transmit holding register empty */
  78:../driver/uart.c ****   {
  79:../driver/uart.c ****     /* THRE interrupt */
  80:../driver/uart.c ****     LSRValue = LPC_UART->LSR;		/* Check status in the LSR to see if
  81:../driver/uart.c **** 								valid data in U0THR or not */
  82:../driver/uart.c ****     if (LSRValue & LSR_THRE)
  83:../driver/uart.c ****     {
  84:../driver/uart.c ****       UARTTxEmpty = 1;
  85:../driver/uart.c ****     }
  86:../driver/uart.c ****     else
  87:../driver/uart.c ****     {
  88:../driver/uart.c ****       UARTTxEmpty = 0;
  89:../driver/uart.c ****     }
  90:../driver/uart.c ****   }
  91:../driver/uart.c ****   return;
  92:../driver/uart.c **** }
  93:../driver/uart.c **** #endif
  94:../driver/uart.c **** 
  95:../driver/uart.c **** /*****************************************************************************
  96:../driver/uart.c **** ** Function name:		ModemInit
  97:../driver/uart.c **** **
  98:../driver/uart.c **** ** Descriptions:		Initialize UART0 port as modem, setup pin select.
  99:../driver/uart.c **** **
 100:../driver/uart.c **** ** parameters:			None
 101:../driver/uart.c **** ** Returned value:		None
 102:../driver/uart.c **** ** 
 103:../driver/uart.c **** *****************************************************************************/
 104:../driver/uart.c **** void ModemInit( void )
 105:../driver/uart.c **** {
 138              		.loc 2 105 0
 139              		.cfi_startproc
 140 0000 80B5     		push	{r7, lr}
 141              	.LCFI6:
 142              		.cfi_def_cfa_offset 8
 143              		.cfi_offset 7, -8
 144              		.cfi_offset 14, -4
 145 0002 00AF     		add	r7, sp, #0
 146              	.LCFI7:
 147              		.cfi_def_cfa_register 7
 106:../driver/uart.c ****   LPC_IOCON->PIO2_0 &= ~0x07;    /* UART I/O config */
 148              		.loc 2 106 0
 149 0004 324B     		ldr	r3, .L8
 150 0006 324A     		ldr	r2, .L8
 151 0008 9268     		ldr	r2, [r2, #8]
 152 000a 0721     		mov	r1, #7
 153 000c 8A43     		bic	r2, r1
 154 000e 9A60     		str	r2, [r3, #8]
 107:../driver/uart.c ****   LPC_IOCON->PIO2_0 |= 0x01;     /* UART DTR */
 155              		.loc 2 107 0
 156 0010 2F4B     		ldr	r3, .L8
 157 0012 2F4A     		ldr	r2, .L8
 158 0014 9268     		ldr	r2, [r2, #8]
 159 0016 0121     		mov	r1, #1
 160 0018 0A43     		orr	r2, r1
 161 001a 9A60     		str	r2, [r3, #8]
 108:../driver/uart.c ****   LPC_IOCON->PIO0_7 &= ~0x07;    /* UART I/O config */
 162              		.loc 2 108 0
 163 001c 2C4B     		ldr	r3, .L8
 164 001e 2C4A     		ldr	r2, .L8
 165 0020 126D     		ldr	r2, [r2, #80]
 166 0022 0721     		mov	r1, #7
 167 0024 8A43     		bic	r2, r1
 168 0026 1A65     		str	r2, [r3, #80]
 109:../driver/uart.c ****   LPC_IOCON->PIO0_7 |= 0x01;     /* UART CTS */
 169              		.loc 2 109 0
 170 0028 294B     		ldr	r3, .L8
 171 002a 294A     		ldr	r2, .L8
 172 002c 126D     		ldr	r2, [r2, #80]
 173 002e 0121     		mov	r1, #1
 174 0030 0A43     		orr	r2, r1
 175 0032 1A65     		str	r2, [r3, #80]
 110:../driver/uart.c ****   LPC_IOCON->PIO1_5 &= ~0x07;    /* UART I/O config */
 176              		.loc 2 110 0
 177 0034 264A     		ldr	r2, .L8
 178 0036 2649     		ldr	r1, .L8
 179 0038 A023     		mov	r3, #160
 180 003a CB58     		ldr	r3, [r1, r3]
 181 003c 0721     		mov	r1, #7
 182 003e 181C     		mov	r0, r3
 183 0040 8843     		bic	r0, r1
 184 0042 011C     		mov	r1, r0
 185 0044 A023     		mov	r3, #160
 186 0046 D150     		str	r1, [r2, r3]
 111:../driver/uart.c ****   LPC_IOCON->PIO1_5 |= 0x01;     /* UART RTS */
 187              		.loc 2 111 0
 188 0048 214A     		ldr	r2, .L8
 189 004a 2149     		ldr	r1, .L8
 190 004c A023     		mov	r3, #160
 191 004e CB58     		ldr	r3, [r1, r3]
 192 0050 0121     		mov	r1, #1
 193 0052 1943     		orr	r1, r3
 194 0054 A023     		mov	r3, #160
 195 0056 D150     		str	r1, [r2, r3]
 112:../driver/uart.c **** #if 1 
 113:../driver/uart.c ****   LPC_IOCON->DSR_LOC	= 0;
 196              		.loc 2 113 0
 197 0058 1D4A     		ldr	r2, .L8
 198 005a B423     		mov	r3, #180
 199 005c 0021     		mov	r1, #0
 200 005e D150     		str	r1, [r2, r3]
 114:../driver/uart.c ****   LPC_IOCON->PIO2_1 &= ~0x07;    /* UART I/O config */
 201              		.loc 2 114 0
 202 0060 1B4B     		ldr	r3, .L8
 203 0062 1B4A     		ldr	r2, .L8
 204 0064 926A     		ldr	r2, [r2, #40]
 205 0066 0721     		mov	r1, #7
 206 0068 8A43     		bic	r2, r1
 207 006a 9A62     		str	r2, [r3, #40]
 115:../driver/uart.c ****   LPC_IOCON->PIO2_1 |= 0x01;     /* UART DSR */
 208              		.loc 2 115 0
 209 006c 184B     		ldr	r3, .L8
 210 006e 184A     		ldr	r2, .L8
 211 0070 926A     		ldr	r2, [r2, #40]
 212 0072 0121     		mov	r1, #1
 213 0074 0A43     		orr	r2, r1
 214 0076 9A62     		str	r2, [r3, #40]
 116:../driver/uart.c **** 
 117:../driver/uart.c ****   LPC_IOCON->DCD_LOC	= 0;
 215              		.loc 2 117 0
 216 0078 154A     		ldr	r2, .L8
 217 007a B823     		mov	r3, #184
 218 007c 0021     		mov	r1, #0
 219 007e D150     		str	r1, [r2, r3]
 118:../driver/uart.c ****   LPC_IOCON->PIO2_2 &= ~0x07;    /* UART I/O config */
 220              		.loc 2 118 0
 221 0080 134B     		ldr	r3, .L8
 222 0082 134A     		ldr	r2, .L8
 223 0084 D26D     		ldr	r2, [r2, #92]
 224 0086 0721     		mov	r1, #7
 225 0088 8A43     		bic	r2, r1
 226 008a DA65     		str	r2, [r3, #92]
 119:../driver/uart.c ****   LPC_IOCON->PIO2_2 |= 0x01;     /* UART DCD */
 227              		.loc 2 119 0
 228 008c 104B     		ldr	r3, .L8
 229 008e 104A     		ldr	r2, .L8
 230 0090 D26D     		ldr	r2, [r2, #92]
 231 0092 0121     		mov	r1, #1
 232 0094 0A43     		orr	r2, r1
 233 0096 DA65     		str	r2, [r3, #92]
 120:../driver/uart.c **** 
 121:../driver/uart.c ****   LPC_IOCON->RI_LOC	= 0;
 234              		.loc 2 121 0
 235 0098 0D4A     		ldr	r2, .L8
 236 009a BC23     		mov	r3, #188
 237 009c 0021     		mov	r1, #0
 238 009e D150     		str	r1, [r2, r3]
 122:../driver/uart.c ****   LPC_IOCON->PIO2_3 &= ~0x07;    /* UART I/O config */
 239              		.loc 2 122 0
 240 00a0 0B4A     		ldr	r2, .L8
 241 00a2 0B49     		ldr	r1, .L8
 242 00a4 8C23     		mov	r3, #140
 243 00a6 CB58     		ldr	r3, [r1, r3]
 244 00a8 0721     		mov	r1, #7
 245 00aa 181C     		mov	r0, r3
 246 00ac 8843     		bic	r0, r1
 247 00ae 011C     		mov	r1, r0
 248 00b0 8C23     		mov	r3, #140
 249 00b2 D150     		str	r1, [r2, r3]
 123:../driver/uart.c ****   LPC_IOCON->PIO2_3 |= 0x01;     /* UART RI */
 250              		.loc 2 123 0
 251 00b4 064A     		ldr	r2, .L8
 252 00b6 0649     		ldr	r1, .L8
 253 00b8 8C23     		mov	r3, #140
 254 00ba CB58     		ldr	r3, [r1, r3]
 255 00bc 0121     		mov	r1, #1
 256 00be 1943     		orr	r1, r3
 257 00c0 8C23     		mov	r3, #140
 258 00c2 D150     		str	r1, [r2, r3]
 124:../driver/uart.c **** 
 125:../driver/uart.c **** #else
 126:../driver/uart.c ****   LPC_IOCON->DSR_LOC = 1;
 127:../driver/uart.c ****   LPC_IOCON->PIO3_1 &= ~0x07;    /* UART I/O config */
 128:../driver/uart.c ****   LPC_IOCON->PIO3_1 |= 0x01;     /* UART DSR */
 129:../driver/uart.c **** 
 130:../driver/uart.c ****   LPC_IOCON->DCD_LOC = 1;
 131:../driver/uart.c ****   LPC_IOCON->PIO3_2 &= ~0x07;    /* UART I/O config */
 132:../driver/uart.c ****   LPC_IOCON->PIO3_2 |= 0x01;     /* UART DCD */
 133:../driver/uart.c **** 
 134:../driver/uart.c ****   LPC_IOCON->RI_LOC = 1;
 135:../driver/uart.c ****   LPC_IOCON->PIO3_3 &= ~0x07;    /* UART I/O config */
 136:../driver/uart.c ****   LPC_IOCON->PIO3_3 |= 0x01;     /* UART RI */
 137:../driver/uart.c **** #endif
 138:../driver/uart.c ****   LPC_UART->MCR = 0xC0;          /* Enable Auto RTS and Auto CTS. */			
 259              		.loc 2 138 0
 260 00c4 034B     		ldr	r3, .L8+4
 261 00c6 C022     		mov	r2, #192
 262 00c8 1A61     		str	r2, [r3, #16]
 139:../driver/uart.c ****   return;
 140:../driver/uart.c **** }
 263              		.loc 2 140 0
 264 00ca BD46     		mov	sp, r7
 265              		@ sp needed for prologue
 266 00cc 80BD     		pop	{r7, pc}
 267              	.L9:
 268 00ce C046     		.align	2
 269              	.L8:
 270 00d0 00400440 		.word	1074020352
 271 00d4 00800040 		.word	1073774592
 272              		.cfi_endproc
 273              	.LFE20:
 275              		.global	__aeabi_uidiv
 276              		.section	.text.UARTInit,"ax",%progbits
 277              		.align	2
 278              		.global	UARTInit
 279              		.code	16
 280              		.thumb_func
 282              	UARTInit:
 283              	.LFB21:
 141:../driver/uart.c **** 
 142:../driver/uart.c **** /*****************************************************************************
 143:../driver/uart.c **** ** Function name:		UARTInit
 144:../driver/uart.c **** **
 145:../driver/uart.c **** ** Descriptions:		Initialize UART0 port, setup pin select,
 146:../driver/uart.c **** **				clock, parity, stop bits, FIFO, etc.
 147:../driver/uart.c **** **
 148:../driver/uart.c **** ** parameters:			UART baudrate
 149:../driver/uart.c **** ** Returned value:		None
 150:../driver/uart.c **** ** 
 151:../driver/uart.c **** *****************************************************************************/
 152:../driver/uart.c **** void UARTInit(uint32_t baudrate)
 153:../driver/uart.c **** {
 284              		.loc 2 153 0
 285              		.cfi_startproc
 286 0000 80B5     		push	{r7, lr}
 287              	.LCFI8:
 288              		.cfi_def_cfa_offset 8
 289              		.cfi_offset 7, -8
 290              		.cfi_offset 14, -4
 291 0002 84B0     		sub	sp, sp, #16
 292              	.LCFI9:
 293              		.cfi_def_cfa_offset 24
 294 0004 00AF     		add	r7, sp, #0
 295              	.LCFI10:
 296              		.cfi_def_cfa_register 7
 297 0006 7860     		str	r0, [r7, #4]
 154:../driver/uart.c ****   uint32_t Fdiv;
 155:../driver/uart.c ****   uint32_t regVal;
 156:../driver/uart.c **** 
 157:../driver/uart.c ****   UARTTxEmpty = 1;
 298              		.loc 2 157 0
 299 0008 3F4B     		ldr	r3, .L14
 300 000a 0122     		mov	r2, #1
 301 000c 1A70     		strb	r2, [r3]
 158:../driver/uart.c ****   UARTCount = 0;
 302              		.loc 2 158 0
 303 000e 3F4B     		ldr	r3, .L14+4
 304 0010 0022     		mov	r2, #0
 305 0012 1A60     		str	r2, [r3]
 159:../driver/uart.c ****   
 160:../driver/uart.c ****   NVIC_DisableIRQ(UART_IRQn);
 306              		.loc 2 160 0
 307 0014 1520     		mov	r0, #21
 308 0016 FFF7FEFF 		bl	NVIC_DisableIRQ
 161:../driver/uart.c **** 
 162:../driver/uart.c ****   LPC_IOCON->PIO1_6 &= ~0x07;    /*  UART I/O config */
 309              		.loc 2 162 0
 310 001a 3D4A     		ldr	r2, .L14+8
 311 001c 3C49     		ldr	r1, .L14+8
 312 001e A423     		mov	r3, #164
 313 0020 CB58     		ldr	r3, [r1, r3]
 314 0022 0721     		mov	r1, #7
 315 0024 181C     		mov	r0, r3
 316 0026 8843     		bic	r0, r1
 317 0028 011C     		mov	r1, r0
 318 002a A423     		mov	r3, #164
 319 002c D150     		str	r1, [r2, r3]
 163:../driver/uart.c ****   LPC_IOCON->PIO1_6 |= 0x01;     /* UART RXD */
 320              		.loc 2 163 0
 321 002e 384A     		ldr	r2, .L14+8
 322 0030 3749     		ldr	r1, .L14+8
 323 0032 A423     		mov	r3, #164
 324 0034 CB58     		ldr	r3, [r1, r3]
 325 0036 0121     		mov	r1, #1
 326 0038 1943     		orr	r1, r3
 327 003a A423     		mov	r3, #164
 328 003c D150     		str	r1, [r2, r3]
 164:../driver/uart.c ****   LPC_IOCON->PIO1_7 &= ~0x07;	
 329              		.loc 2 164 0
 330 003e 344A     		ldr	r2, .L14+8
 331 0040 3349     		ldr	r1, .L14+8
 332 0042 A823     		mov	r3, #168
 333 0044 CB58     		ldr	r3, [r1, r3]
 334 0046 0721     		mov	r1, #7
 335 0048 181C     		mov	r0, r3
 336 004a 8843     		bic	r0, r1
 337 004c 011C     		mov	r1, r0
 338 004e A823     		mov	r3, #168
 339 0050 D150     		str	r1, [r2, r3]
 165:../driver/uart.c ****   LPC_IOCON->PIO1_7 |= 0x01;     /* UART TXD */
 340              		.loc 2 165 0
 341 0052 2F4A     		ldr	r2, .L14+8
 342 0054 2E49     		ldr	r1, .L14+8
 343 0056 A823     		mov	r3, #168
 344 0058 CB58     		ldr	r3, [r1, r3]
 345 005a 0121     		mov	r1, #1
 346 005c 1943     		orr	r1, r3
 347 005e A823     		mov	r3, #168
 348 0060 D150     		str	r1, [r2, r3]
 166:../driver/uart.c ****   /* Enable UART clock */
 167:../driver/uart.c ****   LPC_SYSCON->SYSAHBCLKCTRL |= (1<<12);
 349              		.loc 2 167 0
 350 0062 2C4A     		ldr	r2, .L14+12
 351 0064 2B49     		ldr	r1, .L14+12
 352 0066 8023     		mov	r3, #128
 353 0068 CB58     		ldr	r3, [r1, r3]
 354 006a 8021     		mov	r1, #128
 355 006c 4901     		lsl	r1, r1, #5
 356 006e 1943     		orr	r1, r3
 357 0070 8023     		mov	r3, #128
 358 0072 D150     		str	r1, [r2, r3]
 168:../driver/uart.c ****   LPC_SYSCON->UARTCLKDIV = 0x1;     /* divided by 1 */
 359              		.loc 2 168 0
 360 0074 274A     		ldr	r2, .L14+12
 361 0076 9823     		mov	r3, #152
 362 0078 0121     		mov	r1, #1
 363 007a D150     		str	r1, [r2, r3]
 169:../driver/uart.c **** 
 170:../driver/uart.c ****   LPC_UART->LCR = 0x83;             /* 8 bits, no Parity, 1 Stop bit */
 364              		.loc 2 170 0
 365 007c 264B     		ldr	r3, .L14+16
 366 007e 8322     		mov	r2, #131
 367 0080 DA60     		str	r2, [r3, #12]
 171:../driver/uart.c ****   regVal = LPC_SYSCON->UARTCLKDIV;
 368              		.loc 2 171 0
 369 0082 244A     		ldr	r2, .L14+12
 370 0084 9823     		mov	r3, #152
 371 0086 D358     		ldr	r3, [r2, r3]
 372 0088 FB60     		str	r3, [r7, #12]
 172:../driver/uart.c **** 
 173:../driver/uart.c ****   Fdiv = (((SystemCoreClock*LPC_SYSCON->SYSAHBCLKDIV)/regVal)/16)/baudrate ;	/*baud rate */
 373              		.loc 2 173 0
 374 008a 224B     		ldr	r3, .L14+12
 375 008c 9B6F     		ldr	r3, [r3, #120]
 376 008e 1A1C     		mov	r2, r3
 377 0090 224B     		ldr	r3, .L14+20
 378 0092 1B68     		ldr	r3, [r3]
 379 0094 5343     		mul	r3, r2
 380 0096 181C     		mov	r0, r3
 381 0098 F968     		ldr	r1, [r7, #12]
 382 009a FFF7FEFF 		bl	__aeabi_uidiv
 383 009e 031C     		mov	r3, r0
 384 00a0 1B09     		lsr	r3, r3, #4
 385 00a2 181C     		mov	r0, r3
 386 00a4 7968     		ldr	r1, [r7, #4]
 387 00a6 FFF7FEFF 		bl	__aeabi_uidiv
 388 00aa 031C     		mov	r3, r0
 389 00ac BB60     		str	r3, [r7, #8]
 174:../driver/uart.c **** 
 175:../driver/uart.c ****   LPC_UART->DLM = Fdiv / 256;							
 390              		.loc 2 175 0
 391 00ae 1A4B     		ldr	r3, .L14+16
 392 00b0 BA68     		ldr	r2, [r7, #8]
 393 00b2 120A     		lsr	r2, r2, #8
 394 00b4 5A60     		str	r2, [r3, #4]
 176:../driver/uart.c ****   LPC_UART->DLL = Fdiv % 256;
 395              		.loc 2 176 0
 396 00b6 184B     		ldr	r3, .L14+16
 397 00b8 B968     		ldr	r1, [r7, #8]
 398 00ba FF22     		mov	r2, #255
 399 00bc 0A40     		and	r2, r1
 400 00be 1A60     		str	r2, [r3]
 177:../driver/uart.c ****   LPC_UART->LCR = 0x03;		/* DLAB = 0 */
 401              		.loc 2 177 0
 402 00c0 154B     		ldr	r3, .L14+16
 403 00c2 0322     		mov	r2, #3
 404 00c4 DA60     		str	r2, [r3, #12]
 178:../driver/uart.c ****   LPC_UART->FCR = 0x07;		/* Enable and reset TX and RX FIFO. */
 405              		.loc 2 178 0
 406 00c6 144B     		ldr	r3, .L14+16
 407 00c8 0722     		mov	r2, #7
 408 00ca 9A60     		str	r2, [r3, #8]
 179:../driver/uart.c **** 
 180:../driver/uart.c ****   /* Read to clear the line status. */
 181:../driver/uart.c ****   regVal = LPC_UART->LSR;
 409              		.loc 2 181 0
 410 00cc 124B     		ldr	r3, .L14+16
 411 00ce 5B69     		ldr	r3, [r3, #20]
 412 00d0 FB60     		str	r3, [r7, #12]
 182:../driver/uart.c **** 
 183:../driver/uart.c ****   /* Ensure a clean start, no data in either TX or RX FIFO. */
 184:../driver/uart.c **** // CodeRed - added parentheses around comparison in operand of &
 185:../driver/uart.c ****   while (( LPC_UART->LSR & (LSR_THRE|LSR_TEMT)) != (LSR_THRE|LSR_TEMT) );
 413              		.loc 2 185 0
 414 00d2 C046     		mov	r8, r8
 415              	.L11:
 416              		.loc 2 185 0 is_stmt 0 discriminator 1
 417 00d4 104B     		ldr	r3, .L14+16
 418 00d6 5B69     		ldr	r3, [r3, #20]
 419 00d8 1A1C     		mov	r2, r3
 420 00da 6023     		mov	r3, #96
 421 00dc 1340     		and	r3, r2
 422 00de 602B     		cmp	r3, #96
 423 00e0 F8D1     		bne	.L11
 186:../driver/uart.c ****   while ( LPC_UART->LSR & LSR_RDR )
 424              		.loc 2 186 0 is_stmt 1
 425 00e2 02E0     		b	.L12
 426              	.L13:
 187:../driver/uart.c ****   {
 188:../driver/uart.c **** 	regVal = LPC_UART->RBR;	/* Dump data from RX FIFO */
 427              		.loc 2 188 0
 428 00e4 0C4B     		ldr	r3, .L14+16
 429 00e6 1B68     		ldr	r3, [r3]
 430 00e8 FB60     		str	r3, [r7, #12]
 431              	.L12:
 186:../driver/uart.c ****   while ( LPC_UART->LSR & LSR_RDR )
 432              		.loc 2 186 0 discriminator 1
 433 00ea 0B4B     		ldr	r3, .L14+16
 434 00ec 5B69     		ldr	r3, [r3, #20]
 435 00ee 1A1C     		mov	r2, r3
 436 00f0 0123     		mov	r3, #1
 437 00f2 1340     		and	r3, r2
 438 00f4 DBB2     		uxtb	r3, r3
 439 00f6 002B     		cmp	r3, #0
 440 00f8 F4D1     		bne	.L13
 189:../driver/uart.c ****   }
 190:../driver/uart.c ****  
 191:../driver/uart.c ****   /* Enable the UART Interrupt */
 192:../driver/uart.c ****   NVIC_EnableIRQ(UART_IRQn);
 441              		.loc 2 192 0
 442 00fa 1520     		mov	r0, #21
 443 00fc FFF7FEFF 		bl	NVIC_EnableIRQ
 193:../driver/uart.c **** 
 194:../driver/uart.c **** #if CONFIG_UART_ENABLE_INTERRUPT==1
 195:../driver/uart.c **** #if CONFIG_UART_ENABLE_TX_INTERRUPT==1
 196:../driver/uart.c ****   LPC_UART->IER = IER_RBR | IER_THRE | IER_RLS;	/* Enable UART interrupt */
 197:../driver/uart.c **** #else
 198:../driver/uart.c ****   LPC_UART->IER = IER_RBR | IER_RLS;	/* Enable UART interrupt */
 199:../driver/uart.c **** #endif
 200:../driver/uart.c **** #endif
 201:../driver/uart.c ****   return;
 202:../driver/uart.c **** }
 444              		.loc 2 202 0
 445 0100 BD46     		mov	sp, r7
 446 0102 04B0     		add	sp, sp, #16
 447              		@ sp needed for prologue
 448 0104 80BD     		pop	{r7, pc}
 449              	.L15:
 450 0106 C046     		.align	2
 451              	.L14:
 452 0108 00000000 		.word	UARTTxEmpty
 453 010c 00000000 		.word	UARTCount
 454 0110 00400440 		.word	1074020352
 455 0114 00800440 		.word	1074036736
 456 0118 00800040 		.word	1073774592
 457 011c 00000000 		.word	SystemCoreClock
 458              		.cfi_endproc
 459              	.LFE21:
 461              		.section	.text.UARTSend,"ax",%progbits
 462              		.align	2
 463              		.global	UARTSend
 464              		.code	16
 465              		.thumb_func
 467              	UARTSend:
 468              	.LFB22:
 203:../driver/uart.c **** 
 204:../driver/uart.c **** /*****************************************************************************
 205:../driver/uart.c **** ** Function name:		UARTSend
 206:../driver/uart.c **** **
 207:../driver/uart.c **** ** Descriptions:		Send a block of data to the UART 0 port based
 208:../driver/uart.c **** **				on the data length
 209:../driver/uart.c **** **
 210:../driver/uart.c **** ** parameters:		buffer pointer, and data length
 211:../driver/uart.c **** ** Returned value:	None
 212:../driver/uart.c **** ** 
 213:../driver/uart.c **** *****************************************************************************/
 214:../driver/uart.c **** void UARTSend(uint8_t *BufferPtr, uint32_t Length)
 215:../driver/uart.c **** {
 469              		.loc 2 215 0
 470              		.cfi_startproc
 471 0000 80B5     		push	{r7, lr}
 472              	.LCFI11:
 473              		.cfi_def_cfa_offset 8
 474              		.cfi_offset 7, -8
 475              		.cfi_offset 14, -4
 476 0002 82B0     		sub	sp, sp, #8
 477              	.LCFI12:
 478              		.cfi_def_cfa_offset 16
 479 0004 00AF     		add	r7, sp, #0
 480              	.LCFI13:
 481              		.cfi_def_cfa_register 7
 482 0006 7860     		str	r0, [r7, #4]
 483 0008 3960     		str	r1, [r7]
 216:../driver/uart.c ****   
 217:../driver/uart.c ****   while ( Length != 0 )
 484              		.loc 2 217 0
 485 000a 10E0     		b	.L17
 486              	.L20:
 218:../driver/uart.c ****   {
 219:../driver/uart.c **** 	  /* THRE status, contain valid data */
 220:../driver/uart.c **** #if CONFIG_UART_ENABLE_TX_INTERRUPT==1
 221:../driver/uart.c **** 	  /* Below flag is set inside the interrupt handler when THRE occurs. */
 222:../driver/uart.c ****       while ( !(UARTTxEmpty & 0x01) );
 223:../driver/uart.c **** 	  LPC_UART->THR = *BufferPtr;
 224:../driver/uart.c ****       UARTTxEmpty = 0;	/* not empty in the THR until it shifts out */
 225:../driver/uart.c **** #else
 226:../driver/uart.c **** 	  while ( !(LPC_UART->LSR & LSR_THRE) );
 487              		.loc 2 226 0
 488 000c C046     		mov	r8, r8
 489              	.L18:
 490              		.loc 2 226 0 is_stmt 0 discriminator 1
 491 000e 0B4B     		ldr	r3, .L21
 492 0010 5B69     		ldr	r3, [r3, #20]
 493 0012 1A1C     		mov	r2, r3
 494 0014 2023     		mov	r3, #32
 495 0016 1340     		and	r3, r2
 496 0018 F9D0     		beq	.L18
 227:../driver/uart.c **** 	  LPC_UART->THR = *BufferPtr;
 497              		.loc 2 227 0 is_stmt 1
 498 001a 084B     		ldr	r3, .L21
 499 001c 7A68     		ldr	r2, [r7, #4]
 500 001e 1278     		ldrb	r2, [r2]
 501 0020 1A60     		str	r2, [r3]
 228:../driver/uart.c **** #endif
 229:../driver/uart.c ****       BufferPtr++;
 502              		.loc 2 229 0
 503 0022 7B68     		ldr	r3, [r7, #4]
 504 0024 0133     		add	r3, r3, #1
 505 0026 7B60     		str	r3, [r7, #4]
 230:../driver/uart.c ****       Length--;
 506              		.loc 2 230 0
 507 0028 3B68     		ldr	r3, [r7]
 508 002a 013B     		sub	r3, r3, #1
 509 002c 3B60     		str	r3, [r7]
 510              	.L17:
 217:../driver/uart.c ****   while ( Length != 0 )
 511              		.loc 2 217 0 discriminator 1
 512 002e 3B68     		ldr	r3, [r7]
 513 0030 002B     		cmp	r3, #0
 514 0032 EBD1     		bne	.L20
 231:../driver/uart.c ****   }
 232:../driver/uart.c ****   return;
 233:../driver/uart.c **** }
 515              		.loc 2 233 0
 516 0034 BD46     		mov	sp, r7
 517 0036 02B0     		add	sp, sp, #8
 518              		@ sp needed for prologue
 519 0038 80BD     		pop	{r7, pc}
 520              	.L22:
 521 003a C046     		.align	2
 522              	.L21:
 523 003c 00800040 		.word	1073774592
 524              		.cfi_endproc
 525              	.LFE22:
 527              		.text
 528              	.Letext0:
 529              		.file 3 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/LPC11xx.h"
 530              		.file 4 "/Applications/lpcxpresso_6.1.2_177/lpcxpresso/tools/bin/../lib/gcc/arm-none-eabi/4.6.2/..
 531              		.file 5 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/config/system_LPC11xx.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 uart.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:18     .text.NVIC_EnableIRQ:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:22     .text.NVIC_EnableIRQ:0000000000000000 NVIC_EnableIRQ
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:61     .text.NVIC_EnableIRQ:0000000000000028 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:66     .text.NVIC_DisableIRQ:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:70     .text.NVIC_DisableIRQ:0000000000000000 NVIC_DisableIRQ
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:110    .text.NVIC_DisableIRQ:000000000000002c $d
                            *COM*:0000000000000004 UARTStatus
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:119    .data:0000000000000000 UARTTxEmpty
                            *COM*:0000000000000040 UARTBuffer
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:127    .bss:0000000000000000 UARTCount
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:124    .bss:0000000000000000 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:130    .text.ModemInit:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:135    .text.ModemInit:0000000000000000 ModemInit
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:270    .text.ModemInit:00000000000000d0 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:277    .text.UARTInit:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:282    .text.UARTInit:0000000000000000 UARTInit
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:452    .text.UARTInit:0000000000000108 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:462    .text.UARTSend:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:467    .text.UARTSend:0000000000000000 UARTSend
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc2xtF5d.s:523    .text.UARTSend:000000000000003c $d
                     .debug_frame:0000000000000010 $d

UNDEFINED SYMBOLS
__aeabi_uidiv
SystemCoreClock
