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
  13              		.file	"timer32.c"
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
  65              		.global	timer32_0_period
  66              		.bss
  67              		.align	2
  70              	timer32_0_period:
  71 0000 00000000 		.space	4
  72              		.global	timer32_0_counter
  73              		.align	2
  76              	timer32_0_counter:
  77 0004 00000000 		.space	4
  78              		.global	timer32_0_capture
  79              		.align	2
  82              	timer32_0_capture:
  83 0008 00000000 		.space	4
  84              		.global	timer32_1_period
  85              		.align	2
  88              	timer32_1_period:
  89 000c 00000000 		.space	4
  90              		.global	__aeabi_uidiv
  91              		.section	.text.delay32Ms,"ax",%progbits
  92              		.align	2
  93              		.global	delay32Ms
  94              		.code	16
  95              		.thumb_func
  97              	delay32Ms:
  98              	.LFB20:
  99              		.file 2 "../driver/timer32.c"
   1:../driver/timer32.c **** /****************************************************************************
   2:../driver/timer32.c ****  *   $Id:: timer32.c 4785 2010-09-03 22:39:27Z nxp21346                     $
   3:../driver/timer32.c ****  *   Project: NXP LPC11xx 32-bit timer example
   4:../driver/timer32.c ****  *
   5:../driver/timer32.c ****  *   Description:
   6:../driver/timer32.c ****  *     This file contains 32-bit timer code example which include timer 
   7:../driver/timer32.c ****  *     initialization, timer interrupt handler, and related APIs for 
   8:../driver/timer32.c ****  *     timer setup.
   9:../driver/timer32.c ****  *
  10:../driver/timer32.c ****  ****************************************************************************
  11:../driver/timer32.c ****  * Software that is described herein is for illustrative purposes only
  12:../driver/timer32.c ****  * which provides customers with programming information regarding the
  13:../driver/timer32.c ****  * products. This software is supplied "AS IS" without any warranties.
  14:../driver/timer32.c ****  * NXP Semiconductors assumes no responsibility or liability for the
  15:../driver/timer32.c ****  * use of the software, conveys no license or title under any patent,
  16:../driver/timer32.c ****  * copyright, or mask work right to the product. NXP Semiconductors
  17:../driver/timer32.c ****  * reserves the right to make changes in the software without
  18:../driver/timer32.c ****  * notification. NXP Semiconductors also make no representation or
  19:../driver/timer32.c ****  * warranty that such application will be suitable for the specified
  20:../driver/timer32.c ****  * use without further testing or modification.
  21:../driver/timer32.c **** ****************************************************************************/
  22:../driver/timer32.c **** #include "driver_config.h"
  23:../driver/timer32.c **** #if CONFIG_ENABLE_DRIVER_TIMER32==1
  24:../driver/timer32.c **** #include "timer32.h"
  25:../driver/timer32.c **** 
  26:../driver/timer32.c **** /* ===================
  27:../driver/timer32.c ****  * CodeRed - Modified file to extract out interrupt handler related code,
  28:../driver/timer32.c ****  * which is really application project specific.
  29:../driver/timer32.c ****  * Set TIMER32_GENERIC_INTS to 1 to reenable original code.
  30:../driver/timer32.c ****  * =================== */
  31:../driver/timer32.c **** volatile uint32_t timer32_0_period = 0;
  32:../driver/timer32.c **** #ifdef CONFIG_TIMER32_DEFAULT_TIMER32_0_IRQHANDLER
  33:../driver/timer32.c **** volatile uint32_t timer32_0_counter = 0;
  34:../driver/timer32.c **** volatile uint32_t timer32_0_capture = 0;
  35:../driver/timer32.c **** #endif //CONFIG_TIMER32_DEFAULT_TIMER32_0_IRQHANDLER
  36:../driver/timer32.c **** 
  37:../driver/timer32.c **** volatile uint32_t timer32_1_period = 0;
  38:../driver/timer32.c **** #ifdef CONFIG_TIMER32_DEFAULT_TIMER32_1_IRQHANDLER
  39:../driver/timer32.c **** volatile uint32_t timer32_1_counter = 0;
  40:../driver/timer32.c **** volatile uint32_t timer32_1_capture = 0;
  41:../driver/timer32.c **** #endif //CONFIG_TIMER32_DEFAULT_TIMER32_1_IRQHANDLER
  42:../driver/timer32.c **** 
  43:../driver/timer32.c **** /*****************************************************************************
  44:../driver/timer32.c **** ** Function name:		delay32Ms
  45:../driver/timer32.c **** **
  46:../driver/timer32.c **** ** Descriptions:		Start the timer delay in milo seconds
  47:../driver/timer32.c **** **						until elapsed
  48:../driver/timer32.c **** **
  49:../driver/timer32.c **** ** parameters:			timer number, Delay value in milo second			 
  50:../driver/timer32.c **** ** 						
  51:../driver/timer32.c **** ** Returned value:		None
  52:../driver/timer32.c **** ** 
  53:../driver/timer32.c **** *****************************************************************************/
  54:../driver/timer32.c **** void delay32Ms(uint8_t timer_num, uint32_t delayInMs)
  55:../driver/timer32.c **** {
 100              		.loc 2 55 0
 101              		.cfi_startproc
 102 0000 90B5     		push	{r4, r7, lr}
 103              	.LCFI3:
 104              		.cfi_def_cfa_offset 12
 105              		.cfi_offset 4, -12
 106              		.cfi_offset 7, -8
 107              		.cfi_offset 14, -4
 108 0002 83B0     		sub	sp, sp, #12
 109              	.LCFI4:
 110              		.cfi_def_cfa_offset 24
 111 0004 00AF     		add	r7, sp, #0
 112              	.LCFI5:
 113              		.cfi_def_cfa_register 7
 114 0006 021C     		mov	r2, r0
 115 0008 3960     		str	r1, [r7]
 116 000a FB1D     		add	r3, r7, #7
 117 000c 1A70     		strb	r2, [r3]
  56:../driver/timer32.c ****   if (timer_num == 0)
 118              		.loc 2 56 0
 119 000e FB1D     		add	r3, r7, #7
 120 0010 1B78     		ldrb	r3, [r3]
 121 0012 002B     		cmp	r3, #0
 122 0014 2CD1     		bne	.L5
  57:../driver/timer32.c ****   {
  58:../driver/timer32.c ****     /* setup timer #0 for delay */
  59:../driver/timer32.c ****     LPC_TMR32B0->TCR = 0x02;		/* reset timer */
 123              		.loc 2 59 0
 124 0016 304B     		ldr	r3, .L9
 125 0018 0222     		mov	r2, #2
 126 001a 5A60     		str	r2, [r3, #4]
  60:../driver/timer32.c ****     LPC_TMR32B0->PR  = 0x00;		/* set prescaler to zero */
 127              		.loc 2 60 0
 128 001c 2E4B     		ldr	r3, .L9
 129 001e 0022     		mov	r2, #0
 130 0020 DA60     		str	r2, [r3, #12]
  61:../driver/timer32.c ****     LPC_TMR32B0->MR0 = delayInMs * ((SystemCoreClock/(LPC_TMR32B0->PR+1)) / 1000);
 131              		.loc 2 61 0
 132 0022 2D4C     		ldr	r4, .L9
 133 0024 2D4B     		ldr	r3, .L9+4
 134 0026 1A68     		ldr	r2, [r3]
 135 0028 2B4B     		ldr	r3, .L9
 136 002a DB68     		ldr	r3, [r3, #12]
 137 002c 0133     		add	r3, r3, #1
 138 002e 101C     		mov	r0, r2
 139 0030 191C     		mov	r1, r3
 140 0032 FFF7FEFF 		bl	__aeabi_uidiv
 141 0036 031C     		mov	r3, r0
 142 0038 181C     		mov	r0, r3
 143 003a FA23     		mov	r3, #250
 144 003c 9900     		lsl	r1, r3, #2
 145 003e FFF7FEFF 		bl	__aeabi_uidiv
 146 0042 031C     		mov	r3, r0
 147 0044 3A68     		ldr	r2, [r7]
 148 0046 5343     		mul	r3, r2
 149 0048 A361     		str	r3, [r4, #24]
  62:../driver/timer32.c ****     LPC_TMR32B0->IR  = 0xff;		/* reset all interrrupts */
 150              		.loc 2 62 0
 151 004a 234B     		ldr	r3, .L9
 152 004c FF22     		mov	r2, #255
 153 004e 1A60     		str	r2, [r3]
  63:../driver/timer32.c ****     LPC_TMR32B0->MCR = 0x04;		/* stop timer on match */
 154              		.loc 2 63 0
 155 0050 214B     		ldr	r3, .L9
 156 0052 0422     		mov	r2, #4
 157 0054 5A61     		str	r2, [r3, #20]
  64:../driver/timer32.c ****     LPC_TMR32B0->TCR = 0x01;		/* start timer */
 158              		.loc 2 64 0
 159 0056 204B     		ldr	r3, .L9
 160 0058 0122     		mov	r2, #1
 161 005a 5A60     		str	r2, [r3, #4]
  65:../driver/timer32.c ****   
  66:../driver/timer32.c ****     /* wait until delay time has elapsed */
  67:../driver/timer32.c ****     while (LPC_TMR32B0->TCR & 0x01);
 162              		.loc 2 67 0
 163 005c C046     		mov	r8, r8
 164              	.L6:
 165              		.loc 2 67 0 is_stmt 0 discriminator 1
 166 005e 1E4B     		ldr	r3, .L9
 167 0060 5B68     		ldr	r3, [r3, #4]
 168 0062 1A1C     		mov	r2, r3
 169 0064 0123     		mov	r3, #1
 170 0066 1340     		and	r3, r2
 171 0068 DBB2     		uxtb	r3, r3
 172 006a 002B     		cmp	r3, #0
 173 006c F7D1     		bne	.L6
 174              		.loc 2 67 0
 175 006e 2FE0     		b	.L4
 176              	.L5:
  68:../driver/timer32.c ****   }
  69:../driver/timer32.c ****   else if (timer_num == 1)
 177              		.loc 2 69 0 is_stmt 1
 178 0070 FB1D     		add	r3, r7, #7
 179 0072 1B78     		ldrb	r3, [r3]
 180 0074 012B     		cmp	r3, #1
 181 0076 2BD1     		bne	.L4
  70:../driver/timer32.c ****   {
  71:../driver/timer32.c ****     /* setup timer #1 for delay */
  72:../driver/timer32.c ****     LPC_TMR32B1->TCR = 0x02;		/* reset timer */
 182              		.loc 2 72 0
 183 0078 194B     		ldr	r3, .L9+8
 184 007a 0222     		mov	r2, #2
 185 007c 5A60     		str	r2, [r3, #4]
  73:../driver/timer32.c ****     LPC_TMR32B1->PR  = 0x00;		/* set prescaler to zero */
 186              		.loc 2 73 0
 187 007e 184B     		ldr	r3, .L9+8
 188 0080 0022     		mov	r2, #0
 189 0082 DA60     		str	r2, [r3, #12]
  74:../driver/timer32.c ****     LPC_TMR32B1->MR0 = delayInMs * ((SystemCoreClock/(LPC_TMR32B0->PR+1)) / 1000);
 190              		.loc 2 74 0
 191 0084 164C     		ldr	r4, .L9+8
 192 0086 154B     		ldr	r3, .L9+4
 193 0088 1A68     		ldr	r2, [r3]
 194 008a 134B     		ldr	r3, .L9
 195 008c DB68     		ldr	r3, [r3, #12]
 196 008e 0133     		add	r3, r3, #1
 197 0090 101C     		mov	r0, r2
 198 0092 191C     		mov	r1, r3
 199 0094 FFF7FEFF 		bl	__aeabi_uidiv
 200 0098 031C     		mov	r3, r0
 201 009a 181C     		mov	r0, r3
 202 009c FA23     		mov	r3, #250
 203 009e 9900     		lsl	r1, r3, #2
 204 00a0 FFF7FEFF 		bl	__aeabi_uidiv
 205 00a4 031C     		mov	r3, r0
 206 00a6 3A68     		ldr	r2, [r7]
 207 00a8 5343     		mul	r3, r2
 208 00aa A361     		str	r3, [r4, #24]
  75:../driver/timer32.c ****     LPC_TMR32B1->IR  = 0xff;		/* reset all interrrupts */
 209              		.loc 2 75 0
 210 00ac 0C4B     		ldr	r3, .L9+8
 211 00ae FF22     		mov	r2, #255
 212 00b0 1A60     		str	r2, [r3]
  76:../driver/timer32.c ****     LPC_TMR32B1->MCR = 0x04;		/* stop timer on match */
 213              		.loc 2 76 0
 214 00b2 0B4B     		ldr	r3, .L9+8
 215 00b4 0422     		mov	r2, #4
 216 00b6 5A61     		str	r2, [r3, #20]
  77:../driver/timer32.c ****     LPC_TMR32B1->TCR = 0x01;		/* start timer */
 217              		.loc 2 77 0
 218 00b8 094B     		ldr	r3, .L9+8
 219 00ba 0122     		mov	r2, #1
 220 00bc 5A60     		str	r2, [r3, #4]
  78:../driver/timer32.c ****   
  79:../driver/timer32.c ****     /* wait until delay time has elapsed */
  80:../driver/timer32.c ****     while (LPC_TMR32B1->TCR & 0x01);
 221              		.loc 2 80 0
 222 00be C046     		mov	r8, r8
 223              	.L8:
 224              		.loc 2 80 0 is_stmt 0 discriminator 1
 225 00c0 074B     		ldr	r3, .L9+8
 226 00c2 5B68     		ldr	r3, [r3, #4]
 227 00c4 1A1C     		mov	r2, r3
 228 00c6 0123     		mov	r3, #1
 229 00c8 1340     		and	r3, r2
 230 00ca DBB2     		uxtb	r3, r3
 231 00cc 002B     		cmp	r3, #0
 232 00ce F7D1     		bne	.L8
 233              	.L4:
  81:../driver/timer32.c ****   }
  82:../driver/timer32.c ****   return;
  83:../driver/timer32.c **** }
 234              		.loc 2 83 0 is_stmt 1
 235 00d0 BD46     		mov	sp, r7
 236 00d2 03B0     		add	sp, sp, #12
 237              		@ sp needed for prologue
 238 00d4 90BD     		pop	{r4, r7, pc}
 239              	.L10:
 240 00d6 C046     		.align	2
 241              	.L9:
 242 00d8 00400140 		.word	1073823744
 243 00dc 00000000 		.word	SystemCoreClock
 244 00e0 00800140 		.word	1073840128
 245              		.cfi_endproc
 246              	.LFE20:
 248              		.section	.text.TIMER32_0_IRQHandler,"ax",%progbits
 249              		.align	2
 250              		.global	TIMER32_0_IRQHandler
 251              		.code	16
 252              		.thumb_func
 254              	TIMER32_0_IRQHandler:
 255              	.LFB21:
  84:../driver/timer32.c **** 
  85:../driver/timer32.c **** 
  86:../driver/timer32.c **** #if CONFIG_TIMER32_DEFAULT_TIMER32_0_IRQHANDLER==1
  87:../driver/timer32.c **** /******************************************************************************
  88:../driver/timer32.c **** ** Function name:		TIMER32_0_IRQHandler
  89:../driver/timer32.c **** **
  90:../driver/timer32.c **** ** Descriptions:		Timer/Counter 0 interrupt handler
  91:../driver/timer32.c **** **						executes each 10ms @ 60 MHz CPU Clock
  92:../driver/timer32.c **** **
  93:../driver/timer32.c **** ** parameters:			None
  94:../driver/timer32.c **** ** Returned value:		None
  95:../driver/timer32.c **** ** 
  96:../driver/timer32.c **** ******************************************************************************/
  97:../driver/timer32.c **** void TIMER32_0_IRQHandler(void)
  98:../driver/timer32.c **** {  
 256              		.loc 2 98 0
 257              		.cfi_startproc
 258 0000 80B5     		push	{r7, lr}
 259              	.LCFI6:
 260              		.cfi_def_cfa_offset 8
 261              		.cfi_offset 7, -8
 262              		.cfi_offset 14, -4
 263 0002 00AF     		add	r7, sp, #0
 264              	.LCFI7:
 265              		.cfi_def_cfa_register 7
  99:../driver/timer32.c ****   if ( LPC_TMR32B0->IR & 0x01 )
 266              		.loc 2 99 0
 267 0004 0F4B     		ldr	r3, .L14
 268 0006 1B68     		ldr	r3, [r3]
 269 0008 1A1C     		mov	r2, r3
 270 000a 0123     		mov	r3, #1
 271 000c 1340     		and	r3, r2
 272 000e DBB2     		uxtb	r3, r3
 273 0010 002B     		cmp	r3, #0
 274 0012 07D0     		beq	.L12
 100:../driver/timer32.c ****   {  
 101:../driver/timer32.c **** 	LPC_TMR32B0->IR = 1;				/* clear interrupt flag */
 275              		.loc 2 101 0
 276 0014 0B4B     		ldr	r3, .L14
 277 0016 0122     		mov	r2, #1
 278 0018 1A60     		str	r2, [r3]
 102:../driver/timer32.c **** 	timer32_0_counter++;
 279              		.loc 2 102 0
 280 001a 0B4B     		ldr	r3, .L14+4
 281 001c 1B68     		ldr	r3, [r3]
 282 001e 5A1C     		add	r2, r3, #1
 283 0020 094B     		ldr	r3, .L14+4
 284 0022 1A60     		str	r2, [r3]
 285              	.L12:
 103:../driver/timer32.c ****   }
 104:../driver/timer32.c ****   if ( LPC_TMR32B0->IR & (0x1<<4) )
 286              		.loc 2 104 0
 287 0024 074B     		ldr	r3, .L14
 288 0026 1B68     		ldr	r3, [r3]
 289 0028 1A1C     		mov	r2, r3
 290 002a 1023     		mov	r3, #16
 291 002c 1340     		and	r3, r2
 292 002e 07D0     		beq	.L11
 105:../driver/timer32.c ****   {  
 106:../driver/timer32.c **** 	LPC_TMR32B0->IR = 0x1<<4;			/* clear interrupt flag */
 293              		.loc 2 106 0
 294 0030 044B     		ldr	r3, .L14
 295 0032 1022     		mov	r2, #16
 296 0034 1A60     		str	r2, [r3]
 107:../driver/timer32.c **** 	timer32_0_capture++;
 297              		.loc 2 107 0
 298 0036 054B     		ldr	r3, .L14+8
 299 0038 1B68     		ldr	r3, [r3]
 300 003a 5A1C     		add	r2, r3, #1
 301 003c 034B     		ldr	r3, .L14+8
 302 003e 1A60     		str	r2, [r3]
 303              	.L11:
 108:../driver/timer32.c ****   }
 109:../driver/timer32.c ****   return;
 110:../driver/timer32.c **** }
 304              		.loc 2 110 0
 305 0040 BD46     		mov	sp, r7
 306              		@ sp needed for prologue
 307 0042 80BD     		pop	{r7, pc}
 308              	.L15:
 309              		.align	2
 310              	.L14:
 311 0044 00400140 		.word	1073823744
 312 0048 00000000 		.word	timer32_0_counter
 313 004c 00000000 		.word	timer32_0_capture
 314              		.cfi_endproc
 315              	.LFE21:
 317              		.section	.text.enable_timer32,"ax",%progbits
 318              		.align	2
 319              		.global	enable_timer32
 320              		.code	16
 321              		.thumb_func
 323              	enable_timer32:
 324              	.LFB22:
 111:../driver/timer32.c **** #endif //CONFIG_TIMER32_DEFAULT_TIMER32_0_IRQHANDLER
 112:../driver/timer32.c **** 
 113:../driver/timer32.c **** #if CONFIG_TIMER32_DEFAULT_TIMER32_1_IRQHANDLER==1
 114:../driver/timer32.c **** /******************************************************************************
 115:../driver/timer32.c **** ** Function name:		TIMER32_1_IRQHandler
 116:../driver/timer32.c **** **
 117:../driver/timer32.c **** ** Descriptions:		Timer/Counter 1 interrupt handler
 118:../driver/timer32.c **** **						executes each 10ms @ 60 MHz CPU Clock
 119:../driver/timer32.c **** **
 120:../driver/timer32.c **** ** parameters:			None
 121:../driver/timer32.c **** ** Returned value:		None
 122:../driver/timer32.c **** ** 
 123:../driver/timer32.c **** ******************************************************************************/
 124:../driver/timer32.c **** void TIMER32_1_IRQHandler(void)
 125:../driver/timer32.c **** {  
 126:../driver/timer32.c ****   if ( LPC_TMR32B1->IR & 0x01 )
 127:../driver/timer32.c ****   {    
 128:../driver/timer32.c **** 	LPC_TMR32B1->IR = 1;			/* clear interrupt flag */
 129:../driver/timer32.c **** 	timer32_1_counter++;
 130:../driver/timer32.c ****   }
 131:../driver/timer32.c ****   if ( LPC_TMR32B1->IR & (0x1<<4) )
 132:../driver/timer32.c ****   {  
 133:../driver/timer32.c **** 	LPC_TMR32B1->IR = 0x1<<4;			/* clear interrupt flag */
 134:../driver/timer32.c **** 	timer32_1_capture++;
 135:../driver/timer32.c ****   }
 136:../driver/timer32.c ****   return;
 137:../driver/timer32.c **** }
 138:../driver/timer32.c **** #endif //CONFIG_TIMER32_DEFAULT_TIMER32_1_IRQHANDLER
 139:../driver/timer32.c **** 
 140:../driver/timer32.c **** /******************************************************************************
 141:../driver/timer32.c **** ** Function name:		enable_timer
 142:../driver/timer32.c **** **
 143:../driver/timer32.c **** ** Descriptions:		Enable timer
 144:../driver/timer32.c **** **
 145:../driver/timer32.c **** ** parameters:			timer number: 0 or 1
 146:../driver/timer32.c **** ** Returned value:		None
 147:../driver/timer32.c **** ** 
 148:../driver/timer32.c **** ******************************************************************************/
 149:../driver/timer32.c **** void enable_timer32(uint8_t timer_num)
 150:../driver/timer32.c **** {
 325              		.loc 2 150 0
 326              		.cfi_startproc
 327 0000 80B5     		push	{r7, lr}
 328              	.LCFI8:
 329              		.cfi_def_cfa_offset 8
 330              		.cfi_offset 7, -8
 331              		.cfi_offset 14, -4
 332 0002 82B0     		sub	sp, sp, #8
 333              	.LCFI9:
 334              		.cfi_def_cfa_offset 16
 335 0004 00AF     		add	r7, sp, #0
 336              	.LCFI10:
 337              		.cfi_def_cfa_register 7
 338 0006 021C     		mov	r2, r0
 339 0008 FB1D     		add	r3, r7, #7
 340 000a 1A70     		strb	r2, [r3]
 151:../driver/timer32.c ****   if ( timer_num == 0 )
 341              		.loc 2 151 0
 342 000c FB1D     		add	r3, r7, #7
 343 000e 1B78     		ldrb	r3, [r3]
 344 0010 002B     		cmp	r3, #0
 345 0012 03D1     		bne	.L17
 152:../driver/timer32.c ****   {
 153:../driver/timer32.c ****     LPC_TMR32B0->TCR = 1;
 346              		.loc 2 153 0
 347 0014 044B     		ldr	r3, .L19
 348 0016 0122     		mov	r2, #1
 349 0018 5A60     		str	r2, [r3, #4]
 350 001a 02E0     		b	.L16
 351              	.L17:
 154:../driver/timer32.c ****   }
 155:../driver/timer32.c ****   else
 156:../driver/timer32.c ****   {
 157:../driver/timer32.c ****     LPC_TMR32B1->TCR = 1;
 352              		.loc 2 157 0
 353 001c 034B     		ldr	r3, .L19+4
 354 001e 0122     		mov	r2, #1
 355 0020 5A60     		str	r2, [r3, #4]
 356              	.L16:
 158:../driver/timer32.c ****   }
 159:../driver/timer32.c ****   return;
 160:../driver/timer32.c **** }
 357              		.loc 2 160 0
 358 0022 BD46     		mov	sp, r7
 359 0024 02B0     		add	sp, sp, #8
 360              		@ sp needed for prologue
 361 0026 80BD     		pop	{r7, pc}
 362              	.L20:
 363              		.align	2
 364              	.L19:
 365 0028 00400140 		.word	1073823744
 366 002c 00800140 		.word	1073840128
 367              		.cfi_endproc
 368              	.LFE22:
 370              		.section	.text.disable_timer32,"ax",%progbits
 371              		.align	2
 372              		.global	disable_timer32
 373              		.code	16
 374              		.thumb_func
 376              	disable_timer32:
 377              	.LFB23:
 161:../driver/timer32.c **** 
 162:../driver/timer32.c **** /******************************************************************************
 163:../driver/timer32.c **** ** Function name:		disable_timer
 164:../driver/timer32.c **** **
 165:../driver/timer32.c **** ** Descriptions:		Disable timer
 166:../driver/timer32.c **** **
 167:../driver/timer32.c **** ** parameters:			timer number: 0 or 1
 168:../driver/timer32.c **** ** Returned value:		None
 169:../driver/timer32.c **** ** 
 170:../driver/timer32.c **** ******************************************************************************/
 171:../driver/timer32.c **** void disable_timer32(uint8_t timer_num)
 172:../driver/timer32.c **** {
 378              		.loc 2 172 0
 379              		.cfi_startproc
 380 0000 80B5     		push	{r7, lr}
 381              	.LCFI11:
 382              		.cfi_def_cfa_offset 8
 383              		.cfi_offset 7, -8
 384              		.cfi_offset 14, -4
 385 0002 82B0     		sub	sp, sp, #8
 386              	.LCFI12:
 387              		.cfi_def_cfa_offset 16
 388 0004 00AF     		add	r7, sp, #0
 389              	.LCFI13:
 390              		.cfi_def_cfa_register 7
 391 0006 021C     		mov	r2, r0
 392 0008 FB1D     		add	r3, r7, #7
 393 000a 1A70     		strb	r2, [r3]
 173:../driver/timer32.c ****   if ( timer_num == 0 )
 394              		.loc 2 173 0
 395 000c FB1D     		add	r3, r7, #7
 396 000e 1B78     		ldrb	r3, [r3]
 397 0010 002B     		cmp	r3, #0
 398 0012 03D1     		bne	.L22
 174:../driver/timer32.c ****   {
 175:../driver/timer32.c ****     LPC_TMR32B0->TCR = 0;
 399              		.loc 2 175 0
 400 0014 044B     		ldr	r3, .L24
 401 0016 0022     		mov	r2, #0
 402 0018 5A60     		str	r2, [r3, #4]
 403 001a 02E0     		b	.L21
 404              	.L22:
 176:../driver/timer32.c ****   }
 177:../driver/timer32.c ****   else
 178:../driver/timer32.c ****   {
 179:../driver/timer32.c ****     LPC_TMR32B1->TCR = 0;
 405              		.loc 2 179 0
 406 001c 034B     		ldr	r3, .L24+4
 407 001e 0022     		mov	r2, #0
 408 0020 5A60     		str	r2, [r3, #4]
 409              	.L21:
 180:../driver/timer32.c ****   }
 181:../driver/timer32.c ****   return;
 182:../driver/timer32.c **** }
 410              		.loc 2 182 0
 411 0022 BD46     		mov	sp, r7
 412 0024 02B0     		add	sp, sp, #8
 413              		@ sp needed for prologue
 414 0026 80BD     		pop	{r7, pc}
 415              	.L25:
 416              		.align	2
 417              	.L24:
 418 0028 00400140 		.word	1073823744
 419 002c 00800140 		.word	1073840128
 420              		.cfi_endproc
 421              	.LFE23:
 423              		.section	.text.reset_timer32,"ax",%progbits
 424              		.align	2
 425              		.global	reset_timer32
 426              		.code	16
 427              		.thumb_func
 429              	reset_timer32:
 430              	.LFB24:
 183:../driver/timer32.c **** 
 184:../driver/timer32.c **** /******************************************************************************
 185:../driver/timer32.c **** ** Function name:		reset_timer
 186:../driver/timer32.c **** **
 187:../driver/timer32.c **** ** Descriptions:		Reset timer
 188:../driver/timer32.c **** **
 189:../driver/timer32.c **** ** parameters:			timer number: 0 or 1
 190:../driver/timer32.c **** ** Returned value:		None
 191:../driver/timer32.c **** ** 
 192:../driver/timer32.c **** ******************************************************************************/
 193:../driver/timer32.c **** void reset_timer32(uint8_t timer_num)
 194:../driver/timer32.c **** {
 431              		.loc 2 194 0
 432              		.cfi_startproc
 433 0000 80B5     		push	{r7, lr}
 434              	.LCFI14:
 435              		.cfi_def_cfa_offset 8
 436              		.cfi_offset 7, -8
 437              		.cfi_offset 14, -4
 438 0002 84B0     		sub	sp, sp, #16
 439              	.LCFI15:
 440              		.cfi_def_cfa_offset 24
 441 0004 00AF     		add	r7, sp, #0
 442              	.LCFI16:
 443              		.cfi_def_cfa_register 7
 444 0006 021C     		mov	r2, r0
 445 0008 FB1D     		add	r3, r7, #7
 446 000a 1A70     		strb	r2, [r3]
 195:../driver/timer32.c ****   uint32_t regVal;
 196:../driver/timer32.c **** 
 197:../driver/timer32.c ****   if ( timer_num == 0 )
 447              		.loc 2 197 0
 448 000c FB1D     		add	r3, r7, #7
 449 000e 1B78     		ldrb	r3, [r3]
 450 0010 002B     		cmp	r3, #0
 451 0012 0AD1     		bne	.L27
 198:../driver/timer32.c ****   {
 199:../driver/timer32.c ****     regVal = LPC_TMR32B0->TCR;
 452              		.loc 2 199 0
 453 0014 0B4B     		ldr	r3, .L29
 454 0016 5B68     		ldr	r3, [r3, #4]
 455 0018 FB60     		str	r3, [r7, #12]
 200:../driver/timer32.c ****     regVal |= 0x02;
 456              		.loc 2 200 0
 457 001a FB68     		ldr	r3, [r7, #12]
 458 001c 0222     		mov	r2, #2
 459 001e 1343     		orr	r3, r2
 460 0020 FB60     		str	r3, [r7, #12]
 201:../driver/timer32.c ****     LPC_TMR32B0->TCR = regVal;
 461              		.loc 2 201 0
 462 0022 084B     		ldr	r3, .L29
 463 0024 FA68     		ldr	r2, [r7, #12]
 464 0026 5A60     		str	r2, [r3, #4]
 465 0028 09E0     		b	.L26
 466              	.L27:
 202:../driver/timer32.c ****   }
 203:../driver/timer32.c ****   else
 204:../driver/timer32.c ****   {
 205:../driver/timer32.c ****     regVal = LPC_TMR32B1->TCR;
 467              		.loc 2 205 0
 468 002a 074B     		ldr	r3, .L29+4
 469 002c 5B68     		ldr	r3, [r3, #4]
 470 002e FB60     		str	r3, [r7, #12]
 206:../driver/timer32.c ****     regVal |= 0x02;
 471              		.loc 2 206 0
 472 0030 FB68     		ldr	r3, [r7, #12]
 473 0032 0222     		mov	r2, #2
 474 0034 1343     		orr	r3, r2
 475 0036 FB60     		str	r3, [r7, #12]
 207:../driver/timer32.c ****     LPC_TMR32B1->TCR = regVal;
 476              		.loc 2 207 0
 477 0038 034B     		ldr	r3, .L29+4
 478 003a FA68     		ldr	r2, [r7, #12]
 479 003c 5A60     		str	r2, [r3, #4]
 480              	.L26:
 208:../driver/timer32.c ****   }
 209:../driver/timer32.c ****   return;
 210:../driver/timer32.c **** }
 481              		.loc 2 210 0
 482 003e BD46     		mov	sp, r7
 483 0040 04B0     		add	sp, sp, #16
 484              		@ sp needed for prologue
 485 0042 80BD     		pop	{r7, pc}
 486              	.L30:
 487              		.align	2
 488              	.L29:
 489 0044 00400140 		.word	1073823744
 490 0048 00800140 		.word	1073840128
 491              		.cfi_endproc
 492              	.LFE24:
 494              		.section	.text.init_timer32,"ax",%progbits
 495              		.align	2
 496              		.global	init_timer32
 497              		.code	16
 498              		.thumb_func
 500              	init_timer32:
 501              	.LFB25:
 211:../driver/timer32.c **** 
 212:../driver/timer32.c **** /******************************************************************************
 213:../driver/timer32.c **** ** Function name:		init_timer
 214:../driver/timer32.c **** **
 215:../driver/timer32.c **** ** Descriptions:		Initialize timer, set timer interval, reset timer,
 216:../driver/timer32.c **** **						install timer interrupt handler
 217:../driver/timer32.c **** **
 218:../driver/timer32.c **** ** parameters:			timer number and timer interval
 219:../driver/timer32.c **** ** Returned value:		None
 220:../driver/timer32.c **** ** 
 221:../driver/timer32.c **** ******************************************************************************/
 222:../driver/timer32.c **** void init_timer32(uint8_t timer_num, uint32_t TimerInterval) 
 223:../driver/timer32.c **** {
 502              		.loc 2 223 0
 503              		.cfi_startproc
 504 0000 80B5     		push	{r7, lr}
 505              	.LCFI17:
 506              		.cfi_def_cfa_offset 8
 507              		.cfi_offset 7, -8
 508              		.cfi_offset 14, -4
 509 0002 82B0     		sub	sp, sp, #8
 510              	.LCFI18:
 511              		.cfi_def_cfa_offset 16
 512 0004 00AF     		add	r7, sp, #0
 513              	.LCFI19:
 514              		.cfi_def_cfa_register 7
 515 0006 021C     		mov	r2, r0
 516 0008 3960     		str	r1, [r7]
 517 000a FB1D     		add	r3, r7, #7
 518 000c 1A70     		strb	r2, [r3]
 224:../driver/timer32.c ****   if ( timer_num == 0 )
 519              		.loc 2 224 0
 520 000e FB1D     		add	r3, r7, #7
 521 0010 1B78     		ldrb	r3, [r3]
 522 0012 002B     		cmp	r3, #0
 523 0014 5DD1     		bne	.L32
 225:../driver/timer32.c ****   {
 226:../driver/timer32.c ****     /* Some of the I/O pins need to be carefully planned if
 227:../driver/timer32.c ****     you use below module because JTAG and TIMER CAP/MAT pins are muxed. */
 228:../driver/timer32.c ****     LPC_SYSCON->SYSAHBCLKCTRL |= (1<<9);
 524              		.loc 2 228 0
 525 0016 444A     		ldr	r2, .L34
 526 0018 4349     		ldr	r1, .L34
 527 001a 8023     		mov	r3, #128
 528 001c CB58     		ldr	r3, [r1, r3]
 529 001e 8021     		mov	r1, #128
 530 0020 8900     		lsl	r1, r1, #2
 531 0022 1943     		orr	r1, r3
 532 0024 8023     		mov	r3, #128
 533 0026 D150     		str	r1, [r2, r3]
 229:../driver/timer32.c ****     LPC_IOCON->PIO1_5 &= ~0x07;	/*  Timer0_32 I/O config */
 534              		.loc 2 229 0
 535 0028 404A     		ldr	r2, .L34+4
 536 002a 4049     		ldr	r1, .L34+4
 537 002c A023     		mov	r3, #160
 538 002e CB58     		ldr	r3, [r1, r3]
 539 0030 0721     		mov	r1, #7
 540 0032 181C     		mov	r0, r3
 541 0034 8843     		bic	r0, r1
 542 0036 011C     		mov	r1, r0
 543 0038 A023     		mov	r3, #160
 544 003a D150     		str	r1, [r2, r3]
 230:../driver/timer32.c ****     LPC_IOCON->PIO1_5 |= 0x02;	/* Timer0_32 CAP0 */
 545              		.loc 2 230 0
 546 003c 3B4A     		ldr	r2, .L34+4
 547 003e 3B49     		ldr	r1, .L34+4
 548 0040 A023     		mov	r3, #160
 549 0042 CB58     		ldr	r3, [r1, r3]
 550 0044 0221     		mov	r1, #2
 551 0046 1943     		orr	r1, r3
 552 0048 A023     		mov	r3, #160
 553 004a D150     		str	r1, [r2, r3]
 231:../driver/timer32.c ****     LPC_IOCON->PIO1_6 &= ~0x07;
 554              		.loc 2 231 0
 555 004c 374A     		ldr	r2, .L34+4
 556 004e 3749     		ldr	r1, .L34+4
 557 0050 A423     		mov	r3, #164
 558 0052 CB58     		ldr	r3, [r1, r3]
 559 0054 0721     		mov	r1, #7
 560 0056 181C     		mov	r0, r3
 561 0058 8843     		bic	r0, r1
 562 005a 011C     		mov	r1, r0
 563 005c A423     		mov	r3, #164
 564 005e D150     		str	r1, [r2, r3]
 232:../driver/timer32.c ****     LPC_IOCON->PIO1_6 |= 0x02;	/* Timer0_32 MAT0 */
 565              		.loc 2 232 0
 566 0060 324A     		ldr	r2, .L34+4
 567 0062 3249     		ldr	r1, .L34+4
 568 0064 A423     		mov	r3, #164
 569 0066 CB58     		ldr	r3, [r1, r3]
 570 0068 0221     		mov	r1, #2
 571 006a 1943     		orr	r1, r3
 572 006c A423     		mov	r3, #164
 573 006e D150     		str	r1, [r2, r3]
 233:../driver/timer32.c ****     LPC_IOCON->PIO1_7 &= ~0x07;
 574              		.loc 2 233 0
 575 0070 2E4A     		ldr	r2, .L34+4
 576 0072 2E49     		ldr	r1, .L34+4
 577 0074 A823     		mov	r3, #168
 578 0076 CB58     		ldr	r3, [r1, r3]
 579 0078 0721     		mov	r1, #7
 580 007a 181C     		mov	r0, r3
 581 007c 8843     		bic	r0, r1
 582 007e 011C     		mov	r1, r0
 583 0080 A823     		mov	r3, #168
 584 0082 D150     		str	r1, [r2, r3]
 234:../driver/timer32.c ****     LPC_IOCON->PIO1_7 |= 0x02;	/* Timer0_32 MAT1 */
 585              		.loc 2 234 0
 586 0084 294A     		ldr	r2, .L34+4
 587 0086 2949     		ldr	r1, .L34+4
 588 0088 A823     		mov	r3, #168
 589 008a CB58     		ldr	r3, [r1, r3]
 590 008c 0221     		mov	r1, #2
 591 008e 1943     		orr	r1, r3
 592 0090 A823     		mov	r3, #168
 593 0092 D150     		str	r1, [r2, r3]
 235:../driver/timer32.c ****     LPC_IOCON->PIO0_1 &= ~0x07;	
 594              		.loc 2 235 0
 595 0094 254B     		ldr	r3, .L34+4
 596 0096 254A     		ldr	r2, .L34+4
 597 0098 1269     		ldr	r2, [r2, #16]
 598 009a 0721     		mov	r1, #7
 599 009c 8A43     		bic	r2, r1
 600 009e 1A61     		str	r2, [r3, #16]
 236:../driver/timer32.c ****     LPC_IOCON->PIO0_1 |= 0x02;	/* Timer0_32 MAT2 */
 601              		.loc 2 236 0
 602 00a0 224B     		ldr	r3, .L34+4
 603 00a2 224A     		ldr	r2, .L34+4
 604 00a4 1269     		ldr	r2, [r2, #16]
 605 00a6 0221     		mov	r1, #2
 606 00a8 0A43     		orr	r2, r1
 607 00aa 1A61     		str	r2, [r3, #16]
 237:../driver/timer32.c **** #ifdef __JTAG_DISABLED
 238:../driver/timer32.c ****     LPC_IOCON->JTAG_TDI_PIO0_11 &= ~0x07;	
 239:../driver/timer32.c ****     LPC_IOCON->JTAG_TDI_PIO0_11 |= 0x03;	/* Timer0_32 MAT3 */
 240:../driver/timer32.c **** #endif
 241:../driver/timer32.c **** #if CONFIG_TIMER32_DEFAULT_TIMER32_0_IRQHANDLER==1
 242:../driver/timer32.c ****     timer32_0_counter = 0;
 608              		.loc 2 242 0
 609 00ac 204B     		ldr	r3, .L34+8
 610 00ae 0022     		mov	r2, #0
 611 00b0 1A60     		str	r2, [r3]
 243:../driver/timer32.c ****     timer32_0_capture = 0;
 612              		.loc 2 243 0
 613 00b2 204B     		ldr	r3, .L34+12
 614 00b4 0022     		mov	r2, #0
 615 00b6 1A60     		str	r2, [r3]
 244:../driver/timer32.c **** #endif //TIMER32_0_DEFAULT_HANDLER
 245:../driver/timer32.c ****     LPC_TMR32B0->MR0 = TimerInterval;
 616              		.loc 2 245 0
 617 00b8 1F4B     		ldr	r3, .L34+16
 618 00ba 3A68     		ldr	r2, [r7]
 619 00bc 9A61     		str	r2, [r3, #24]
 246:../driver/timer32.c **** #if TIMER_MATCH
 247:../driver/timer32.c **** 	LPC_TMR32B0->EMR &= ~(0xFF<<4);
 248:../driver/timer32.c **** 	LPC_TMR32B0->EMR |= ((0x3<<4)|(0x3<<6)|(0x3<<8)|(0x3<<10));	/* MR0/1/2/3 Toggle */
 249:../driver/timer32.c **** #else
 250:../driver/timer32.c **** 	/* Capture 0 on rising edge, interrupt enable. */
 251:../driver/timer32.c **** 	LPC_TMR32B0->CCR = (0x1<<0)|(0x1<<2);
 620              		.loc 2 251 0
 621 00be 1E4B     		ldr	r3, .L34+16
 622 00c0 0522     		mov	r2, #5
 623 00c2 9A62     		str	r2, [r3, #40]
 252:../driver/timer32.c **** #endif
 253:../driver/timer32.c ****     LPC_TMR32B0->MCR = 3;			/* Interrupt and Reset on MR0 */
 624              		.loc 2 253 0
 625 00c4 1C4B     		ldr	r3, .L34+16
 626 00c6 0322     		mov	r2, #3
 627 00c8 5A61     		str	r2, [r3, #20]
 254:../driver/timer32.c **** 
 255:../driver/timer32.c **** #if CONFIG_TIMER32_DEFAULT_TIMER32_0_IRQHANDLER==1
 256:../driver/timer32.c ****     /* Enable the TIMER0 Interrupt */
 257:../driver/timer32.c ****     NVIC_EnableIRQ(TIMER_32_0_IRQn);
 628              		.loc 2 257 0
 629 00ca 1220     		mov	r0, #18
 630 00cc FFF7FEFF 		bl	NVIC_EnableIRQ
 631 00d0 27E0     		b	.L31
 632              	.L32:
 258:../driver/timer32.c **** #endif
 259:../driver/timer32.c ****   }
 260:../driver/timer32.c ****   else if ( timer_num == 1 )
 633              		.loc 2 260 0
 634 00d2 FB1D     		add	r3, r7, #7
 635 00d4 1B78     		ldrb	r3, [r3]
 636 00d6 012B     		cmp	r3, #1
 637 00d8 23D1     		bne	.L31
 261:../driver/timer32.c ****   {
 262:../driver/timer32.c ****     /* Some of the I/O pins need to be clearfully planned if
 263:../driver/timer32.c ****     you use below module because JTAG and TIMER CAP/MAT pins are muxed. */
 264:../driver/timer32.c ****     LPC_SYSCON->SYSAHBCLKCTRL |= (1<<10);
 638              		.loc 2 264 0
 639 00da 134A     		ldr	r2, .L34
 640 00dc 1249     		ldr	r1, .L34
 641 00de 8023     		mov	r3, #128
 642 00e0 CB58     		ldr	r3, [r1, r3]
 643 00e2 8021     		mov	r1, #128
 644 00e4 C900     		lsl	r1, r1, #3
 645 00e6 1943     		orr	r1, r3
 646 00e8 8023     		mov	r3, #128
 647 00ea D150     		str	r1, [r2, r3]
 265:../driver/timer32.c **** #ifdef __JTAG_DISABLED
 266:../driver/timer32.c ****     LPC_IOCON->JTAG_TMS_PIO1_0  &= ~0x07;	/*  Timer1_32 I/O config */
 267:../driver/timer32.c ****     LPC_IOCON->JTAG_TMS_PIO1_0  |= 0x03;	/* Timer1_32 CAP0 */
 268:../driver/timer32.c ****     LPC_IOCON->JTAG_TDO_PIO1_1  &= ~0x07;	
 269:../driver/timer32.c ****     LPC_IOCON->JTAG_TDO_PIO1_1  |= 0x03;	/* Timer1_32 MAT0 */
 270:../driver/timer32.c ****     LPC_IOCON->JTAG_nTRST_PIO1_2 &= ~0x07;
 271:../driver/timer32.c ****     LPC_IOCON->JTAG_nTRST_PIO1_2 |= 0x03;	/* Timer1_32 MAT1 */
 272:../driver/timer32.c ****     LPC_IOCON->ARM_SWDIO_PIO1_3  &= ~0x07;
 273:../driver/timer32.c ****     LPC_IOCON->ARM_SWDIO_PIO1_3  |= 0x03;	/* Timer1_32 MAT2 */
 274:../driver/timer32.c **** #endif
 275:../driver/timer32.c ****     LPC_IOCON->PIO1_4 &= ~0x07;
 648              		.loc 2 275 0
 649 00ec 0F4A     		ldr	r2, .L34+4
 650 00ee 0F49     		ldr	r1, .L34+4
 651 00f0 9423     		mov	r3, #148
 652 00f2 CB58     		ldr	r3, [r1, r3]
 653 00f4 0721     		mov	r1, #7
 654 00f6 181C     		mov	r0, r3
 655 00f8 8843     		bic	r0, r1
 656 00fa 011C     		mov	r1, r0
 657 00fc 9423     		mov	r3, #148
 658 00fe D150     		str	r1, [r2, r3]
 276:../driver/timer32.c ****     LPC_IOCON->PIO1_4 |= 0x02;		/* Timer0_32 MAT3 */
 659              		.loc 2 276 0
 660 0100 0A4A     		ldr	r2, .L34+4
 661 0102 0A49     		ldr	r1, .L34+4
 662 0104 9423     		mov	r3, #148
 663 0106 CB58     		ldr	r3, [r1, r3]
 664 0108 0221     		mov	r1, #2
 665 010a 1943     		orr	r1, r3
 666 010c 9423     		mov	r3, #148
 667 010e D150     		str	r1, [r2, r3]
 277:../driver/timer32.c **** 
 278:../driver/timer32.c **** #if CONFIG_TIMER32_DEFAULT_TIMER32_1_IRQHANDLER==1
 279:../driver/timer32.c ****     timer32_1_counter = 0;
 280:../driver/timer32.c ****     timer32_1_capture = 0;
 281:../driver/timer32.c **** #endif //TIMER32_1_DEFAULT_HANDLER
 282:../driver/timer32.c **** 
 283:../driver/timer32.c ****     LPC_TMR32B1->MR0 = TimerInterval;
 668              		.loc 2 283 0
 669 0110 0A4B     		ldr	r3, .L34+20
 670 0112 3A68     		ldr	r2, [r7]
 671 0114 9A61     		str	r2, [r3, #24]
 284:../driver/timer32.c **** #if TIMER_MATCH
 285:../driver/timer32.c **** 	LPC_TMR32B1->EMR &= ~(0xFF<<4);
 286:../driver/timer32.c **** 	LPC_TMR32B1->EMR |= ((0x3<<4)|(0x3<<6)|(0x3<<8)|(0x3<<10));	/* MR0/1/2 Toggle */
 287:../driver/timer32.c **** #else
 288:../driver/timer32.c **** 	/* Capture 0 on rising edge, interrupt enable. */
 289:../driver/timer32.c **** 	LPC_TMR32B1->CCR = (0x1<<0)|(0x1<<2);
 672              		.loc 2 289 0
 673 0116 094B     		ldr	r3, .L34+20
 674 0118 0522     		mov	r2, #5
 675 011a 9A62     		str	r2, [r3, #40]
 290:../driver/timer32.c **** #endif
 291:../driver/timer32.c ****     LPC_TMR32B1->MCR = 3;			/* Interrupt and Reset on MR0 */
 676              		.loc 2 291 0
 677 011c 074B     		ldr	r3, .L34+20
 678 011e 0322     		mov	r2, #3
 679 0120 5A61     		str	r2, [r3, #20]
 680              	.L31:
 292:../driver/timer32.c **** 
 293:../driver/timer32.c **** #if CONFIG_TIMER32_DEFAULT_TIMER32_1_IRQHANDLER==1
 294:../driver/timer32.c ****     /* Enable the TIMER1 Interrupt */
 295:../driver/timer32.c ****     NVIC_EnableIRQ(TIMER_32_1_IRQn);
 296:../driver/timer32.c **** #endif
 297:../driver/timer32.c ****   }
 298:../driver/timer32.c ****   return;
 299:../driver/timer32.c **** }
 681              		.loc 2 299 0
 682 0122 BD46     		mov	sp, r7
 683 0124 02B0     		add	sp, sp, #8
 684              		@ sp needed for prologue
 685 0126 80BD     		pop	{r7, pc}
 686              	.L35:
 687              		.align	2
 688              	.L34:
 689 0128 00800440 		.word	1074036736
 690 012c 00400440 		.word	1074020352
 691 0130 00000000 		.word	timer32_0_counter
 692 0134 00000000 		.word	timer32_0_capture
 693 0138 00400140 		.word	1073823744
 694 013c 00800140 		.word	1073840128
 695              		.cfi_endproc
 696              	.LFE25:
 698              		.section	.text.init_timer32PWM,"ax",%progbits
 699              		.align	2
 700              		.global	init_timer32PWM
 701              		.code	16
 702              		.thumb_func
 704              	init_timer32PWM:
 705              	.LFB26:
 300:../driver/timer32.c **** /******************************************************************************
 301:../driver/timer32.c **** ** Function name:		init_timer32PWM
 302:../driver/timer32.c **** **
 303:../driver/timer32.c **** ** Descriptions:		Initialize timer as PWM
 304:../driver/timer32.c **** **
 305:../driver/timer32.c **** ** parameters:			timer number, period and match enable:
 306:../driver/timer32.c **** **										match_enable[0] = PWM for MAT0 
 307:../driver/timer32.c **** **										match_enable[1] = PWM for MAT1
 308:../driver/timer32.c **** **										match_enable[2] = PWM for MAT2
 309:../driver/timer32.c **** **			
 310:../driver/timer32.c **** ** Returned value:		None
 311:../driver/timer32.c **** ** 
 312:../driver/timer32.c **** ******************************************************************************/
 313:../driver/timer32.c **** void init_timer32PWM(uint8_t timer_num, uint32_t period, uint8_t match_enable)
 314:../driver/timer32.c **** {
 706              		.loc 2 314 0
 707              		.cfi_startproc
 708 0000 80B5     		push	{r7, lr}
 709              	.LCFI20:
 710              		.cfi_def_cfa_offset 8
 711              		.cfi_offset 7, -8
 712              		.cfi_offset 14, -4
 713 0002 82B0     		sub	sp, sp, #8
 714              	.LCFI21:
 715              		.cfi_def_cfa_offset 16
 716 0004 00AF     		add	r7, sp, #0
 717              	.LCFI22:
 718              		.cfi_def_cfa_register 7
 719 0006 3960     		str	r1, [r7]
 720 0008 FB1D     		add	r3, r7, #7
 721 000a 011C     		add	r1, r0, #0
 722 000c 1970     		strb	r1, [r3]
 723 000e BB1D     		add	r3, r7, #6
 724 0010 1A70     		strb	r2, [r3]
 315:../driver/timer32.c **** 	
 316:../driver/timer32.c **** 	disable_timer32(timer_num);
 725              		.loc 2 316 0
 726 0012 FB1D     		add	r3, r7, #7
 727 0014 1B78     		ldrb	r3, [r3]
 728 0016 181C     		mov	r0, r3
 729 0018 FFF7FEFF 		bl	disable_timer32
 317:../driver/timer32.c **** 	if (timer_num == 1)
 730              		.loc 2 317 0
 731 001c FB1D     		add	r3, r7, #7
 732 001e 1B78     		ldrb	r3, [r3]
 733 0020 012B     		cmp	r3, #1
 734 0022 00D0     		beq	.LCB554
 735 0024 89E0     		b	.L37	@long jump
 736              	.LCB554:
 318:../driver/timer32.c **** 	{
 319:../driver/timer32.c **** 	    /* Some of the I/O pins need to be clearfully planned if
 320:../driver/timer32.c **** 	    you use below module because JTAG and TIMER CAP/MAT pins are muxed. */
 321:../driver/timer32.c **** 	    LPC_SYSCON->SYSAHBCLKCTRL |= (1<<10);
 737              		.loc 2 321 0
 738 0026 7B4A     		ldr	r2, .L46
 739 0028 7A49     		ldr	r1, .L46
 740 002a 8023     		mov	r3, #128
 741 002c CB58     		ldr	r3, [r1, r3]
 742 002e 8021     		mov	r1, #128
 743 0030 C900     		lsl	r1, r1, #3
 744 0032 1943     		orr	r1, r3
 745 0034 8023     		mov	r3, #128
 746 0036 D150     		str	r1, [r2, r3]
 322:../driver/timer32.c **** 
 323:../driver/timer32.c **** 		/* Setup the external match register */
 324:../driver/timer32.c **** 		LPC_TMR32B1->EMR = (1<<EMC3)|(1<<EMC2)|(2<<EMC1)|(1<<EMC0)|(1<<3)|(match_enable);
 747              		.loc 2 324 0
 748 0038 774B     		ldr	r3, .L46+4
 749 003a BA1D     		add	r2, r7, #6
 750 003c 1278     		ldrb	r2, [r2]
 751 003e B321     		mov	r1, #179
 752 0040 C900     		lsl	r1, r1, #3
 753 0042 0A43     		orr	r2, r1
 754 0044 DA63     		str	r2, [r3, #60]
 325:../driver/timer32.c **** 
 326:../driver/timer32.c **** 		/* Setup the outputs */
 327:../driver/timer32.c **** 		/* If match0 is enabled, set the output */
 328:../driver/timer32.c **** 		if (match_enable & 0x01)
 755              		.loc 2 328 0
 756 0046 BB1D     		add	r3, r7, #6
 757 0048 1A78     		ldrb	r2, [r3]
 758 004a 0123     		mov	r3, #1
 759 004c 1340     		and	r3, r2
 760 004e DBB2     		uxtb	r3, r3
 761 0050 002B     		cmp	r3, #0
 762 0052 0BD0     		beq	.L38
 329:../driver/timer32.c **** 		{
 330:../driver/timer32.c **** 		  	LPC_IOCON->R_PIO1_1  &= ~0x07;
 763              		.loc 2 330 0
 764 0054 714B     		ldr	r3, .L46+8
 765 0056 714A     		ldr	r2, .L46+8
 766 0058 D26F     		ldr	r2, [r2, #124]
 767 005a 0721     		mov	r1, #7
 768 005c 8A43     		bic	r2, r1
 769 005e DA67     		str	r2, [r3, #124]
 331:../driver/timer32.c ****   			LPC_IOCON->R_PIO1_1  |= 0x03;		/* Timer1_32 MAT0 */
 770              		.loc 2 331 0
 771 0060 6E4B     		ldr	r3, .L46+8
 772 0062 6E4A     		ldr	r2, .L46+8
 773 0064 D26F     		ldr	r2, [r2, #124]
 774 0066 0321     		mov	r1, #3
 775 0068 0A43     		orr	r2, r1
 776 006a DA67     		str	r2, [r3, #124]
 777              	.L38:
 332:../driver/timer32.c **** 		}
 333:../driver/timer32.c **** 		/* If match1 is enabled, set the output */
 334:../driver/timer32.c **** 		if (match_enable & 0x02)
 778              		.loc 2 334 0
 779 006c BB1D     		add	r3, r7, #6
 780 006e 1A78     		ldrb	r2, [r3]
 781 0070 0223     		mov	r3, #2
 782 0072 1340     		and	r3, r2
 783 0074 11D0     		beq	.L39
 335:../driver/timer32.c **** 		{
 336:../driver/timer32.c **** 		  LPC_IOCON->R_PIO1_2 &= ~0x07;
 784              		.loc 2 336 0
 785 0076 694A     		ldr	r2, .L46+8
 786 0078 6849     		ldr	r1, .L46+8
 787 007a 8023     		mov	r3, #128
 788 007c CB58     		ldr	r3, [r1, r3]
 789 007e 0721     		mov	r1, #7
 790 0080 181C     		mov	r0, r3
 791 0082 8843     		bic	r0, r1
 792 0084 011C     		mov	r1, r0
 793 0086 8023     		mov	r3, #128
 794 0088 D150     		str	r1, [r2, r3]
 337:../driver/timer32.c **** 		  LPC_IOCON->R_PIO1_2 |= 0x03;		/* Timer1_32 MAT1 */
 795              		.loc 2 337 0
 796 008a 644A     		ldr	r2, .L46+8
 797 008c 6349     		ldr	r1, .L46+8
 798 008e 8023     		mov	r3, #128
 799 0090 CB58     		ldr	r3, [r1, r3]
 800 0092 0321     		mov	r1, #3
 801 0094 1943     		orr	r1, r3
 802 0096 8023     		mov	r3, #128
 803 0098 D150     		str	r1, [r2, r3]
 804              	.L39:
 338:../driver/timer32.c **** 		}
 339:../driver/timer32.c **** 		/* If match2 is enabled, set the output */
 340:../driver/timer32.c **** 		if (match_enable & 0x04)
 805              		.loc 2 340 0
 806 009a BB1D     		add	r3, r7, #6
 807 009c 1A78     		ldrb	r2, [r3]
 808 009e 0423     		mov	r3, #4
 809 00a0 1340     		and	r3, r2
 810 00a2 11D0     		beq	.L40
 341:../driver/timer32.c **** 		{
 342:../driver/timer32.c **** 		  LPC_IOCON->SWDIO_PIO1_3   &= ~0x07;
 811              		.loc 2 342 0
 812 00a4 5D4A     		ldr	r2, .L46+8
 813 00a6 5D49     		ldr	r1, .L46+8
 814 00a8 9023     		mov	r3, #144
 815 00aa CB58     		ldr	r3, [r1, r3]
 816 00ac 0721     		mov	r1, #7
 817 00ae 181C     		mov	r0, r3
 818 00b0 8843     		bic	r0, r1
 819 00b2 011C     		mov	r1, r0
 820 00b4 9023     		mov	r3, #144
 821 00b6 D150     		str	r1, [r2, r3]
 343:../driver/timer32.c **** 		  LPC_IOCON->SWDIO_PIO1_3   |= 0x03;		/* Timer1_32 MAT2 */
 822              		.loc 2 343 0
 823 00b8 584A     		ldr	r2, .L46+8
 824 00ba 5849     		ldr	r1, .L46+8
 825 00bc 9023     		mov	r3, #144
 826 00be CB58     		ldr	r3, [r1, r3]
 827 00c0 0321     		mov	r1, #3
 828 00c2 1943     		orr	r1, r3
 829 00c4 9023     		mov	r3, #144
 830 00c6 D150     		str	r1, [r2, r3]
 831              	.L40:
 344:../driver/timer32.c **** 		}
 345:../driver/timer32.c **** 		/* If match3 is enabled, set the output */
 346:../driver/timer32.c **** 		if (match_enable & 0x08)
 832              		.loc 2 346 0
 833 00c8 BB1D     		add	r3, r7, #6
 834 00ca 1A78     		ldrb	r2, [r3]
 835 00cc 0823     		mov	r3, #8
 836 00ce 1340     		and	r3, r2
 837 00d0 11D0     		beq	.L41
 347:../driver/timer32.c **** 		{
 348:../driver/timer32.c **** 		  LPC_IOCON->PIO1_4           &= ~0x07;
 838              		.loc 2 348 0
 839 00d2 524A     		ldr	r2, .L46+8
 840 00d4 5149     		ldr	r1, .L46+8
 841 00d6 9423     		mov	r3, #148
 842 00d8 CB58     		ldr	r3, [r1, r3]
 843 00da 0721     		mov	r1, #7
 844 00dc 181C     		mov	r0, r3
 845 00de 8843     		bic	r0, r1
 846 00e0 011C     		mov	r1, r0
 847 00e2 9423     		mov	r3, #148
 848 00e4 D150     		str	r1, [r2, r3]
 349:../driver/timer32.c **** 		  LPC_IOCON->PIO1_4           |= 0x02;		/* Timer1_32 MAT3 */
 849              		.loc 2 349 0
 850 00e6 4D4A     		ldr	r2, .L46+8
 851 00e8 4C49     		ldr	r1, .L46+8
 852 00ea 9423     		mov	r3, #148
 853 00ec CB58     		ldr	r3, [r1, r3]
 854 00ee 0221     		mov	r1, #2
 855 00f0 1943     		orr	r1, r3
 856 00f2 9423     		mov	r3, #148
 857 00f4 D150     		str	r1, [r2, r3]
 858              	.L41:
 350:../driver/timer32.c **** 		}
 351:../driver/timer32.c **** 
 352:../driver/timer32.c **** //#ifdef __JTAG_DISABLED
 353:../driver/timer32.c **** //	  PIO1_0_JTAG_TMS  &= ~0x07;	/*  Timer1_32 I/O config */
 354:../driver/timer32.c **** //	  PIO1_0_JTAG_TMS  |= 0x03;		/* Timer1_32 CAP0 */
 355:../driver/timer32.c **** //#endif
 356:../driver/timer32.c **** 
 357:../driver/timer32.c **** 		/* Enable the selected PWMs and enable Match3 */
 358:../driver/timer32.c **** 		LPC_TMR32B1->PWMC = (1<<3)|(match_enable);
 859              		.loc 2 358 0
 860 00f6 484B     		ldr	r3, .L46+4
 861 00f8 BA1D     		add	r2, r7, #6
 862 00fa 1278     		ldrb	r2, [r2]
 863 00fc 0821     		mov	r1, #8
 864 00fe 0A43     		orr	r2, r1
 865 0100 D2B2     		uxtb	r2, r2
 866 0102 5A67     		str	r2, [r3, #116]
 359:../driver/timer32.c ****  
 360:../driver/timer32.c **** 		/* Setup the match registers */
 361:../driver/timer32.c **** 		/* set the period value to a global variable */
 362:../driver/timer32.c **** 		timer32_1_period = period;
 867              		.loc 2 362 0
 868 0104 464B     		ldr	r3, .L46+12
 869 0106 3A68     		ldr	r2, [r7]
 870 0108 1A60     		str	r2, [r3]
 363:../driver/timer32.c **** 		LPC_TMR32B1->MR3 = timer32_1_period;
 871              		.loc 2 363 0
 872 010a 434B     		ldr	r3, .L46+4
 873 010c 444A     		ldr	r2, .L46+12
 874 010e 1268     		ldr	r2, [r2]
 875 0110 5A62     		str	r2, [r3, #36]
 364:../driver/timer32.c **** 		LPC_TMR32B1->MR0	= timer32_1_period/2;
 876              		.loc 2 364 0
 877 0112 414B     		ldr	r3, .L46+4
 878 0114 424A     		ldr	r2, .L46+12
 879 0116 1268     		ldr	r2, [r2]
 880 0118 5208     		lsr	r2, r2, #1
 881 011a 9A61     		str	r2, [r3, #24]
 365:../driver/timer32.c **** 		LPC_TMR32B1->MR1	= timer32_1_period/2;
 882              		.loc 2 365 0
 883 011c 3E4B     		ldr	r3, .L46+4
 884 011e 404A     		ldr	r2, .L46+12
 885 0120 1268     		ldr	r2, [r2]
 886 0122 5208     		lsr	r2, r2, #1
 887 0124 DA61     		str	r2, [r3, #28]
 366:../driver/timer32.c **** 		LPC_TMR32B1->MR2	= timer32_1_period/2;
 888              		.loc 2 366 0
 889 0126 3C4B     		ldr	r3, .L46+4
 890 0128 3D4A     		ldr	r2, .L46+12
 891 012a 1268     		ldr	r2, [r2]
 892 012c 5208     		lsr	r2, r2, #1
 893 012e 1A62     		str	r2, [r3, #32]
 367:../driver/timer32.c **** 		
 368:../driver/timer32.c **** 		/* */
 369:../driver/timer32.c ****     	LPC_TMR32B1->MCR = 1<<10;				/* Reset on MR3 */
 894              		.loc 2 369 0
 895 0130 394B     		ldr	r3, .L46+4
 896 0132 8022     		mov	r2, #128
 897 0134 D200     		lsl	r2, r2, #3
 898 0136 5A61     		str	r2, [r3, #20]
 899 0138 68E0     		b	.L36
 900              	.L37:
 370:../driver/timer32.c **** 	}
 371:../driver/timer32.c **** 	else
 372:../driver/timer32.c **** 	{
 373:../driver/timer32.c **** 	    /* Some of the I/O pins need to be clearfully planned if
 374:../driver/timer32.c **** 	    you use below module because JTAG and TIMER CAP/MAT pins are muxed. */
 375:../driver/timer32.c **** 	    LPC_SYSCON->SYSAHBCLKCTRL |= (1<<9);
 901              		.loc 2 375 0
 902 013a 364A     		ldr	r2, .L46
 903 013c 3549     		ldr	r1, .L46
 904 013e 8023     		mov	r3, #128
 905 0140 CB58     		ldr	r3, [r1, r3]
 906 0142 8021     		mov	r1, #128
 907 0144 8900     		lsl	r1, r1, #2
 908 0146 1943     		orr	r1, r3
 909 0148 8023     		mov	r3, #128
 910 014a D150     		str	r1, [r2, r3]
 376:../driver/timer32.c **** 
 377:../driver/timer32.c **** 		/* Setup the external match register */
 378:../driver/timer32.c **** 		LPC_TMR32B0->EMR = (1<<EMC3)|(2<<EMC2)|(1<<EMC1)|(1<<EMC0)|(1<<3)|(match_enable);
 911              		.loc 2 378 0
 912 014c 354B     		ldr	r3, .L46+16
 913 014e BA1D     		add	r2, r7, #6
 914 0150 1278     		ldrb	r2, [r2]
 915 0152 CB21     		mov	r1, #203
 916 0154 C900     		lsl	r1, r1, #3
 917 0156 0A43     		orr	r2, r1
 918 0158 DA63     		str	r2, [r3, #60]
 379:../driver/timer32.c ****  
 380:../driver/timer32.c **** 		/* Setup the outputs */
 381:../driver/timer32.c **** 		/* If match0 is enabled, set the output */
 382:../driver/timer32.c **** 		if (match_enable & 0x01)
 383:../driver/timer32.c **** 		{
 384:../driver/timer32.c **** //	 		LPC_IOCON->PIO1_6           &= ~0x07;
 385:../driver/timer32.c **** //		  	LPC_IOCON->PIO1_6           |= 0x02;		/* Timer0_32 MAT0 */
 386:../driver/timer32.c **** 		}
 387:../driver/timer32.c **** 		/* If match1 is enabled, set the output */
 388:../driver/timer32.c **** 		if (match_enable & 0x02)
 919              		.loc 2 388 0
 920 015a BB1D     		add	r3, r7, #6
 921 015c 1A78     		ldrb	r2, [r3]
 922 015e 0223     		mov	r3, #2
 923 0160 1340     		and	r3, r2
 924 0162 11D0     		beq	.L43
 389:../driver/timer32.c **** 		{
 390:../driver/timer32.c **** 			LPC_IOCON-> PIO1_7           &= ~0x07;
 925              		.loc 2 390 0
 926 0164 2D4A     		ldr	r2, .L46+8
 927 0166 2D49     		ldr	r1, .L46+8
 928 0168 A823     		mov	r3, #168
 929 016a CB58     		ldr	r3, [r1, r3]
 930 016c 0721     		mov	r1, #7
 931 016e 181C     		mov	r0, r3
 932 0170 8843     		bic	r0, r1
 933 0172 011C     		mov	r1, r0
 934 0174 A823     		mov	r3, #168
 935 0176 D150     		str	r1, [r2, r3]
 391:../driver/timer32.c **** 		  	LPC_IOCON->PIO1_7           |= 0x02;		/* Timer0_32 MAT1 */
 936              		.loc 2 391 0
 937 0178 284A     		ldr	r2, .L46+8
 938 017a 2849     		ldr	r1, .L46+8
 939 017c A823     		mov	r3, #168
 940 017e CB58     		ldr	r3, [r1, r3]
 941 0180 0221     		mov	r1, #2
 942 0182 1943     		orr	r1, r3
 943 0184 A823     		mov	r3, #168
 944 0186 D150     		str	r1, [r2, r3]
 945              	.L43:
 392:../driver/timer32.c **** 		}
 393:../driver/timer32.c **** 		/* If match2 is enabled, set the output */
 394:../driver/timer32.c **** 		if (match_enable & 0x04)
 946              		.loc 2 394 0
 947 0188 BB1D     		add	r3, r7, #6
 948 018a 1A78     		ldrb	r2, [r3]
 949 018c 0423     		mov	r3, #4
 950 018e 1340     		and	r3, r2
 951 0190 0BD0     		beq	.L44
 395:../driver/timer32.c **** 		{
 396:../driver/timer32.c **** 		  LPC_IOCON->PIO0_1           &= ~0x07;	
 952              		.loc 2 396 0
 953 0192 224B     		ldr	r3, .L46+8
 954 0194 214A     		ldr	r2, .L46+8
 955 0196 1269     		ldr	r2, [r2, #16]
 956 0198 0721     		mov	r1, #7
 957 019a 8A43     		bic	r2, r1
 958 019c 1A61     		str	r2, [r3, #16]
 397:../driver/timer32.c **** 		  LPC_IOCON->PIO0_1           |= 0x02;		/* Timer0_32 MAT2 */
 959              		.loc 2 397 0
 960 019e 1F4B     		ldr	r3, .L46+8
 961 01a0 1E4A     		ldr	r2, .L46+8
 962 01a2 1269     		ldr	r2, [r2, #16]
 963 01a4 0221     		mov	r1, #2
 964 01a6 0A43     		orr	r2, r1
 965 01a8 1A61     		str	r2, [r3, #16]
 966              	.L44:
 398:../driver/timer32.c **** 		}
 399:../driver/timer32.c **** 		/* If match3 is enabled, set the output */
 400:../driver/timer32.c **** 		if (match_enable & 0x08)
 967              		.loc 2 400 0
 968 01aa BB1D     		add	r3, r7, #6
 969 01ac 1A78     		ldrb	r2, [r3]
 970 01ae 0823     		mov	r3, #8
 971 01b0 1340     		and	r3, r2
 972 01b2 0BD0     		beq	.L45
 401:../driver/timer32.c **** 		{
 402:../driver/timer32.c **** 		  LPC_IOCON->R_PIO0_11 &= ~0x07;
 973              		.loc 2 402 0
 974 01b4 194B     		ldr	r3, .L46+8
 975 01b6 194A     		ldr	r2, .L46+8
 976 01b8 526F     		ldr	r2, [r2, #116]
 977 01ba 0721     		mov	r1, #7
 978 01bc 8A43     		bic	r2, r1
 979 01be 5A67     		str	r2, [r3, #116]
 403:../driver/timer32.c **** 		  LPC_IOCON->R_PIO0_11 |= 0x03;		/* Timer0_32 MAT3 */
 980              		.loc 2 403 0
 981 01c0 164B     		ldr	r3, .L46+8
 982 01c2 164A     		ldr	r2, .L46+8
 983 01c4 526F     		ldr	r2, [r2, #116]
 984 01c6 0321     		mov	r1, #3
 985 01c8 0A43     		orr	r2, r1
 986 01ca 5A67     		str	r2, [r3, #116]
 987              	.L45:
 404:../driver/timer32.c **** 		}
 405:../driver/timer32.c **** 
 406:../driver/timer32.c **** 		/* Enable the selected PWMs and enable Match3 */
 407:../driver/timer32.c **** 		LPC_TMR32B0->PWMC = (1<<3)|(match_enable);
 988              		.loc 2 407 0
 989 01cc 154B     		ldr	r3, .L46+16
 990 01ce BA1D     		add	r2, r7, #6
 991 01d0 1278     		ldrb	r2, [r2]
 992 01d2 0821     		mov	r1, #8
 993 01d4 0A43     		orr	r2, r1
 994 01d6 D2B2     		uxtb	r2, r2
 995 01d8 5A67     		str	r2, [r3, #116]
 408:../driver/timer32.c **** 
 409:../driver/timer32.c **** 		/* Setup the match registers */
 410:../driver/timer32.c **** 		/* set the period value to a global variable */
 411:../driver/timer32.c **** 		timer32_0_period = period;
 996              		.loc 2 411 0
 997 01da 134B     		ldr	r3, .L46+20
 998 01dc 3A68     		ldr	r2, [r7]
 999 01de 1A60     		str	r2, [r3]
 412:../driver/timer32.c **** 		LPC_TMR32B0->MR3 = timer32_0_period;
 1000              		.loc 2 412 0
 1001 01e0 104B     		ldr	r3, .L46+16
 1002 01e2 114A     		ldr	r2, .L46+20
 1003 01e4 1268     		ldr	r2, [r2]
 1004 01e6 5A62     		str	r2, [r3, #36]
 413:../driver/timer32.c **** 		LPC_TMR32B0->MR0	= timer32_0_period;	///2;
 1005              		.loc 2 413 0
 1006 01e8 0E4B     		ldr	r3, .L46+16
 1007 01ea 0F4A     		ldr	r2, .L46+20
 1008 01ec 1268     		ldr	r2, [r2]
 1009 01ee 9A61     		str	r2, [r3, #24]
 414:../driver/timer32.c **** 		LPC_TMR32B0->MR1	= timer32_0_period/2;
 1010              		.loc 2 414 0
 1011 01f0 0C4B     		ldr	r3, .L46+16
 1012 01f2 0D4A     		ldr	r2, .L46+20
 1013 01f4 1268     		ldr	r2, [r2]
 1014 01f6 5208     		lsr	r2, r2, #1
 1015 01f8 DA61     		str	r2, [r3, #28]
 415:../driver/timer32.c **** 		LPC_TMR32B0->MR2	= timer32_0_period/2;
 1016              		.loc 2 415 0
 1017 01fa 0A4B     		ldr	r3, .L46+16
 1018 01fc 0A4A     		ldr	r2, .L46+20
 1019 01fe 1268     		ldr	r2, [r2]
 1020 0200 5208     		lsr	r2, r2, #1
 1021 0202 1A62     		str	r2, [r3, #32]
 416:../driver/timer32.c **** 
 417:../driver/timer32.c ****     	LPC_TMR32B0->MCR = 1<<10;				/* Reset on MR3 */
 1022              		.loc 2 417 0
 1023 0204 074B     		ldr	r3, .L46+16
 1024 0206 8022     		mov	r2, #128
 1025 0208 D200     		lsl	r2, r2, #3
 1026 020a 5A61     		str	r2, [r3, #20]
 1027              	.L36:
 418:../driver/timer32.c **** 	}
 419:../driver/timer32.c **** 
 420:../driver/timer32.c **** 
 421:../driver/timer32.c **** }
 1028              		.loc 2 421 0
 1029 020c BD46     		mov	sp, r7
 1030 020e 02B0     		add	sp, sp, #8
 1031              		@ sp needed for prologue
 1032 0210 80BD     		pop	{r7, pc}
 1033              	.L47:
 1034 0212 C046     		.align	2
 1035              	.L46:
 1036 0214 00800440 		.word	1074036736
 1037 0218 00800140 		.word	1073840128
 1038 021c 00400440 		.word	1074020352
 1039 0220 00000000 		.word	timer32_1_period
 1040 0224 00400140 		.word	1073823744
 1041 0228 00000000 		.word	timer32_0_period
 1042              		.cfi_endproc
 1043              	.LFE26:
 1045              		.section	.text.setMatch_timer32PWM,"ax",%progbits
 1046              		.align	2
 1047              		.global	setMatch_timer32PWM
 1048              		.code	16
 1049              		.thumb_func
 1051              	setMatch_timer32PWM:
 1052              	.LFB27:
 422:../driver/timer32.c **** /******************************************************************************
 423:../driver/timer32.c **** ** Function name:		pwm32_setMatch
 424:../driver/timer32.c **** **
 425:../driver/timer32.c **** ** Descriptions:		Set the pwm32 match values
 426:../driver/timer32.c **** **
 427:../driver/timer32.c **** ** parameters:			timer number, match numner and the value
 428:../driver/timer32.c **** **
 429:../driver/timer32.c **** ** Returned value:		None
 430:../driver/timer32.c **** ** 
 431:../driver/timer32.c **** ******************************************************************************/
 432:../driver/timer32.c **** void setMatch_timer32PWM (uint8_t timer_num, uint8_t match_nr, uint32_t value)
 433:../driver/timer32.c **** {
 1053              		.loc 2 433 0
 1054              		.cfi_startproc
 1055 0000 80B5     		push	{r7, lr}
 1056              	.LCFI23:
 1057              		.cfi_def_cfa_offset 8
 1058              		.cfi_offset 7, -8
 1059              		.cfi_offset 14, -4
 1060 0002 82B0     		sub	sp, sp, #8
 1061              	.LCFI24:
 1062              		.cfi_def_cfa_offset 16
 1063 0004 00AF     		add	r7, sp, #0
 1064              	.LCFI25:
 1065              		.cfi_def_cfa_register 7
 1066 0006 3A60     		str	r2, [r7]
 1067 0008 FB1D     		add	r3, r7, #7
 1068 000a 021C     		add	r2, r0, #0
 1069 000c 1A70     		strb	r2, [r3]
 1070 000e BB1D     		add	r3, r7, #6
 1071 0010 0A1C     		add	r2, r1, #0
 1072 0012 1A70     		strb	r2, [r3]
 434:../driver/timer32.c **** 	if (timer_num)
 1073              		.loc 2 434 0
 1074 0014 FB1D     		add	r3, r7, #7
 1075 0016 1B78     		ldrb	r3, [r3]
 1076 0018 002B     		cmp	r3, #0
 1077 001a 1ED0     		beq	.L49
 435:../driver/timer32.c **** 	{
 436:../driver/timer32.c **** 		switch (match_nr)
 1078              		.loc 2 436 0
 1079 001c BB1D     		add	r3, r7, #6
 1080 001e 1B78     		ldrb	r3, [r3]
 1081 0020 012B     		cmp	r3, #1
 1082 0022 0CD0     		beq	.L52
 1083 0024 02DC     		bgt	.L55
 1084 0026 002B     		cmp	r3, #0
 1085 0028 05D0     		beq	.L51
 1086 002a 15E0     		b	.L50
 1087              	.L55:
 1088 002c 022B     		cmp	r3, #2
 1089 002e 0AD0     		beq	.L53
 1090 0030 032B     		cmp	r3, #3
 1091 0032 0CD0     		beq	.L54
 1092 0034 10E0     		b	.L50
 1093              	.L51:
 437:../driver/timer32.c **** 		{
 438:../driver/timer32.c **** 			case 0:
 439:../driver/timer32.c **** 				LPC_TMR32B1->MR0 = value;
 1094              		.loc 2 439 0
 1095 0036 194B     		ldr	r3, .L64
 1096 0038 3A68     		ldr	r2, [r7]
 1097 003a 9A61     		str	r2, [r3, #24]
 440:../driver/timer32.c **** 				break;
 1098              		.loc 2 440 0
 1099 003c 2BE0     		b	.L48
 1100              	.L52:
 441:../driver/timer32.c **** 			case 1: 
 442:../driver/timer32.c **** 				LPC_TMR32B1->MR1 = value;
 1101              		.loc 2 442 0
 1102 003e 174B     		ldr	r3, .L64
 1103 0040 3A68     		ldr	r2, [r7]
 1104 0042 DA61     		str	r2, [r3, #28]
 443:../driver/timer32.c **** 				break;
 1105              		.loc 2 443 0
 1106 0044 27E0     		b	.L48
 1107              	.L53:
 444:../driver/timer32.c **** 			case 2:
 445:../driver/timer32.c **** 				LPC_TMR32B1->MR2 = value;
 1108              		.loc 2 445 0
 1109 0046 154B     		ldr	r3, .L64
 1110 0048 3A68     		ldr	r2, [r7]
 1111 004a 1A62     		str	r2, [r3, #32]
 446:../driver/timer32.c **** 				break;
 1112              		.loc 2 446 0
 1113 004c 23E0     		b	.L48
 1114              	.L54:
 447:../driver/timer32.c **** 			case 3: 
 448:../driver/timer32.c **** 				LPC_TMR32B1->MR3 = value;
 1115              		.loc 2 448 0
 1116 004e 134B     		ldr	r3, .L64
 1117 0050 3A68     		ldr	r2, [r7]
 1118 0052 5A62     		str	r2, [r3, #36]
 449:../driver/timer32.c **** 				break;
 1119              		.loc 2 449 0
 1120 0054 C046     		mov	r8, r8
 1121 0056 1EE0     		b	.L48
 1122              	.L50:
 450:../driver/timer32.c **** 			default:
 451:../driver/timer32.c **** 				break;
 1123              		.loc 2 451 0
 1124 0058 1DE0     		b	.L48
 1125              	.L49:
 452:../driver/timer32.c **** 		}	
 453:../driver/timer32.c **** 
 454:../driver/timer32.c **** 	}
 455:../driver/timer32.c **** 	else 
 456:../driver/timer32.c **** 	{
 457:../driver/timer32.c **** 		switch (match_nr)
 1126              		.loc 2 457 0
 1127 005a BB1D     		add	r3, r7, #6
 1128 005c 1B78     		ldrb	r3, [r3]
 1129 005e 012B     		cmp	r3, #1
 1130 0060 0CD0     		beq	.L60
 1131 0062 02DC     		bgt	.L63
 1132 0064 002B     		cmp	r3, #0
 1133 0066 05D0     		beq	.L59
 1134 0068 14E0     		b	.L58
 1135              	.L63:
 1136 006a 022B     		cmp	r3, #2
 1137 006c 0AD0     		beq	.L61
 1138 006e 032B     		cmp	r3, #3
 1139 0070 0CD0     		beq	.L62
 1140 0072 0FE0     		b	.L58
 1141              	.L59:
 458:../driver/timer32.c **** 		{
 459:../driver/timer32.c **** 			case 0:
 460:../driver/timer32.c **** 				LPC_TMR32B0->MR0 = value;
 1142              		.loc 2 460 0
 1143 0074 0A4B     		ldr	r3, .L64+4
 1144 0076 3A68     		ldr	r2, [r7]
 1145 0078 9A61     		str	r2, [r3, #24]
 461:../driver/timer32.c **** 				break;
 1146              		.loc 2 461 0
 1147 007a 0CE0     		b	.L48
 1148              	.L60:
 462:../driver/timer32.c **** 			case 1: 
 463:../driver/timer32.c **** 				LPC_TMR32B0->MR1 = value;
 1149              		.loc 2 463 0
 1150 007c 084B     		ldr	r3, .L64+4
 1151 007e 3A68     		ldr	r2, [r7]
 1152 0080 DA61     		str	r2, [r3, #28]
 464:../driver/timer32.c **** 				break;
 1153              		.loc 2 464 0
 1154 0082 08E0     		b	.L48
 1155              	.L61:
 465:../driver/timer32.c **** 			case 2:
 466:../driver/timer32.c **** 				LPC_TMR32B0->MR2 = value;
 1156              		.loc 2 466 0
 1157 0084 064B     		ldr	r3, .L64+4
 1158 0086 3A68     		ldr	r2, [r7]
 1159 0088 1A62     		str	r2, [r3, #32]
 467:../driver/timer32.c **** 				break;
 1160              		.loc 2 467 0
 1161 008a 04E0     		b	.L48
 1162              	.L62:
 468:../driver/timer32.c **** 			case 3: 
 469:../driver/timer32.c **** 				LPC_TMR32B0->MR3 = value;
 1163              		.loc 2 469 0
 1164 008c 044B     		ldr	r3, .L64+4
 1165 008e 3A68     		ldr	r2, [r7]
 1166 0090 5A62     		str	r2, [r3, #36]
 470:../driver/timer32.c **** 				break;
 1167              		.loc 2 470 0
 1168 0092 00E0     		b	.L48
 1169              	.L58:
 471:../driver/timer32.c **** 			default:
 472:../driver/timer32.c **** 				break;
 1170              		.loc 2 472 0
 1171 0094 C046     		mov	r8, r8
 1172              	.L48:
 473:../driver/timer32.c **** 		}	
 474:../driver/timer32.c **** 	}
 475:../driver/timer32.c **** 
 476:../driver/timer32.c **** }
 1173              		.loc 2 476 0
 1174 0096 BD46     		mov	sp, r7
 1175 0098 02B0     		add	sp, sp, #8
 1176              		@ sp needed for prologue
 1177 009a 80BD     		pop	{r7, pc}
 1178              	.L65:
 1179              		.align	2
 1180              	.L64:
 1181 009c 00800140 		.word	1073840128
 1182 00a0 00400140 		.word	1073823744
 1183              		.cfi_endproc
 1184              	.LFE27:
 1186              		.text
 1187              	.Letext0:
 1188              		.file 3 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/LPC11xx.h"
 1189              		.file 4 "/Applications/lpcxpresso_6.1.2_177/lpcxpresso/tools/bin/../lib/gcc/arm-none-eabi/4.6.2/..
 1190              		.file 5 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/config/system_LPC11xx.h"
 1191              		.file 6 "../driver/timer32.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 timer32.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:18     .text.NVIC_EnableIRQ:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:22     .text.NVIC_EnableIRQ:0000000000000000 NVIC_EnableIRQ
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:61     .text.NVIC_EnableIRQ:0000000000000028 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:70     .bss:0000000000000000 timer32_0_period
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:67     .bss:0000000000000000 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:76     .bss:0000000000000004 timer32_0_counter
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:82     .bss:0000000000000008 timer32_0_capture
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:88     .bss:000000000000000c timer32_1_period
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:92     .text.delay32Ms:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:97     .text.delay32Ms:0000000000000000 delay32Ms
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:242    .text.delay32Ms:00000000000000d8 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:249    .text.TIMER32_0_IRQHandler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:254    .text.TIMER32_0_IRQHandler:0000000000000000 TIMER32_0_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:311    .text.TIMER32_0_IRQHandler:0000000000000044 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:318    .text.enable_timer32:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:323    .text.enable_timer32:0000000000000000 enable_timer32
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:365    .text.enable_timer32:0000000000000028 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:371    .text.disable_timer32:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:376    .text.disable_timer32:0000000000000000 disable_timer32
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:418    .text.disable_timer32:0000000000000028 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:424    .text.reset_timer32:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:429    .text.reset_timer32:0000000000000000 reset_timer32
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:489    .text.reset_timer32:0000000000000044 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:495    .text.init_timer32:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:500    .text.init_timer32:0000000000000000 init_timer32
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:689    .text.init_timer32:0000000000000128 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:699    .text.init_timer32PWM:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:704    .text.init_timer32PWM:0000000000000000 init_timer32PWM
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:1036   .text.init_timer32PWM:0000000000000214 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:1046   .text.setMatch_timer32PWM:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:1051   .text.setMatch_timer32PWM:0000000000000000 setMatch_timer32PWM
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccxNjoYK.s:1181   .text.setMatch_timer32PWM:000000000000009c $d
                     .debug_frame:0000000000000010 $d

UNDEFINED SYMBOLS
__aeabi_uidiv
SystemCoreClock
