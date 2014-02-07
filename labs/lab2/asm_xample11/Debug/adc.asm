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
  13              		.file	"adc.c"
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
  65              		.comm	ADCValue,32,4
  66              		.global	ADCIntDone
  67              		.bss
  68              		.align	2
  71              	ADCIntDone:
  72 0000 00000000 		.space	4
  73              		.global	OverRunCounter
  74              		.align	2
  77              	OverRunCounter:
  78 0004 00000000 		.space	4
  79              		.section	.text.ADC_IRQHandler,"ax",%progbits
  80              		.align	2
  81              		.global	ADC_IRQHandler
  82              		.code	16
  83              		.thumb_func
  85              	ADC_IRQHandler:
  86              	.LFB20:
  87              		.file 2 "../driver/adc.c"
   1:../driver/adc.c **** /****************************************************************************
   2:../driver/adc.c ****  *   $Id:: adc.c 4785 2010-09-03 22:39:27Z nxp21346                         $
   3:../driver/adc.c ****  *   Project: NXP LPC11xx ADC example
   4:../driver/adc.c ****  *
   5:../driver/adc.c ****  *   Description:
   6:../driver/adc.c ****  *     This file contains ADC code example which include ADC 
   7:../driver/adc.c ****  *     initialization, ADC interrupt handler, and APIs for ADC
   8:../driver/adc.c ****  *     reading.
   9:../driver/adc.c ****  *
  10:../driver/adc.c ****  ****************************************************************************
  11:../driver/adc.c ****  * Software that is described herein is for illustrative purposes only
  12:../driver/adc.c ****  * which provides customers with programming information regarding the
  13:../driver/adc.c ****  * products. This software is supplied "AS IS" without any warranties.
  14:../driver/adc.c ****  * NXP Semiconductors assumes no responsibility or liability for the
  15:../driver/adc.c ****  * use of the software, conveys no license or title under any patent,
  16:../driver/adc.c ****  * copyright, or mask work right to the product. NXP Semiconductors
  17:../driver/adc.c ****  * reserves the right to make changes in the software without
  18:../driver/adc.c ****  * notification. NXP Semiconductors also make no representation or
  19:../driver/adc.c ****  * warranty that such application will be suitable for the specified
  20:../driver/adc.c ****  * use without further testing or modification.
  21:../driver/adc.c **** ****************************************************************************/
  22:../driver/adc.c **** #include "driver_config.h"
  23:../driver/adc.c **** #if CONFIG_ENABLE_DRIVER_ADC==1
  24:../driver/adc.c **** #include "adc.h"
  25:../driver/adc.c **** 
  26:../driver/adc.c **** volatile uint32_t ADCValue[ADC_NUM];
  27:../driver/adc.c **** 
  28:../driver/adc.c **** #if CONFIG_ADC_DEFAULT_ADC_IRQHANDLER==1
  29:../driver/adc.c **** volatile uint32_t ADCIntDone = 0;
  30:../driver/adc.c **** #endif
  31:../driver/adc.c **** volatile uint32_t OverRunCounter = 0;
  32:../driver/adc.c **** 
  33:../driver/adc.c **** #if BURST_MODE
  34:../driver/adc.c **** volatile uint32_t channel_flag = 0; 
  35:../driver/adc.c **** #endif
  36:../driver/adc.c **** 
  37:../driver/adc.c **** #if CONFIG_ADC_DEFAULT_ADC_IRQHANDLER==1
  38:../driver/adc.c **** /******************************************************************************
  39:../driver/adc.c **** ** Function name:		ADC_IRQHandler
  40:../driver/adc.c **** **
  41:../driver/adc.c **** ** Descriptions:		ADC interrupt handler
  42:../driver/adc.c **** **
  43:../driver/adc.c **** ** parameters:			None
  44:../driver/adc.c **** ** Returned value:		None
  45:../driver/adc.c **** ** 
  46:../driver/adc.c **** ******************************************************************************/
  47:../driver/adc.c **** void ADC_IRQHandler (void) 
  48:../driver/adc.c **** {
  88              		.loc 2 48 0
  89              		.cfi_startproc
  90 0000 80B5     		push	{r7, lr}
  91              	.LCFI3:
  92              		.cfi_def_cfa_offset 8
  93              		.cfi_offset 7, -8
  94              		.cfi_offset 14, -4
  95 0002 82B0     		sub	sp, sp, #8
  96              	.LCFI4:
  97              		.cfi_def_cfa_offset 16
  98 0004 00AF     		add	r7, sp, #0
  99              	.LCFI5:
 100              		.cfi_def_cfa_register 7
  49:../driver/adc.c ****   uint32_t regVal, i;
  50:../driver/adc.c **** 
  51:../driver/adc.c ****   regVal = LPC_ADC->STAT;		/* Read ADC will clear the interrupt */
 101              		.loc 2 51 0
 102 0006 334B     		ldr	r3, .L15
 103 0008 1B6B     		ldr	r3, [r3, #48]
 104 000a 7B60     		str	r3, [r7, #4]
  52:../driver/adc.c ****   if ( regVal & 0x0000FF00 )	/* check OVERRUN error first */
 105              		.loc 2 52 0
 106 000c 7A68     		ldr	r2, [r7, #4]
 107 000e FF23     		mov	r3, #255
 108 0010 1B02     		lsl	r3, r3, #8
 109 0012 1340     		and	r3, r2
 110 0014 2CD0     		beq	.L5
  53:../driver/adc.c ****   {
  54:../driver/adc.c **** 	OverRunCounter++;
 111              		.loc 2 54 0
 112 0016 304B     		ldr	r3, .L15+4
 113 0018 1B68     		ldr	r3, [r3]
 114 001a 5A1C     		add	r2, r3, #1
 115 001c 2E4B     		ldr	r3, .L15+4
 116 001e 1A60     		str	r2, [r3]
  55:../driver/adc.c **** 	for ( i = 0; i < ADC_NUM; i++ )
 117              		.loc 2 55 0
 118 0020 0023     		mov	r3, #0
 119 0022 3B60     		str	r3, [r7]
 120 0024 16E0     		b	.L6
 121              	.L8:
  56:../driver/adc.c **** 	{
  57:../driver/adc.c **** 	  regVal = (regVal & 0x0000FF00) >> 0x08;
 122              		.loc 2 57 0
 123 0026 7A68     		ldr	r2, [r7, #4]
 124 0028 FF23     		mov	r3, #255
 125 002a 1B02     		lsl	r3, r3, #8
 126 002c 1340     		and	r3, r2
 127 002e 1B0A     		lsr	r3, r3, #8
 128 0030 7B60     		str	r3, [r7, #4]
  58:../driver/adc.c **** 	  /* if overrun, just read ADDR to clear */
  59:../driver/adc.c **** 	  /* regVal variable has been reused. */
  60:../driver/adc.c **** 	  if ( regVal & (0x1 << i) )
 129              		.loc 2 60 0
 130 0032 3B68     		ldr	r3, [r7]
 131 0034 0122     		mov	r2, #1
 132 0036 111C     		mov	r1, r2
 133 0038 9940     		lsl	r1, r1, r3
 134 003a 0B1C     		mov	r3, r1
 135 003c 7A68     		ldr	r2, [r7, #4]
 136 003e 1340     		and	r3, r2
 137 0040 05D0     		beq	.L7
  61:../driver/adc.c **** 	  {
  62:../driver/adc.c **** 		regVal = LPC_ADC->DR[i];
 138              		.loc 2 62 0
 139 0042 244B     		ldr	r3, .L15
 140 0044 3A68     		ldr	r2, [r7]
 141 0046 0432     		add	r2, r2, #4
 142 0048 9200     		lsl	r2, r2, #2
 143 004a D358     		ldr	r3, [r2, r3]
 144 004c 7B60     		str	r3, [r7, #4]
 145              	.L7:
  55:../driver/adc.c **** 	for ( i = 0; i < ADC_NUM; i++ )
 146              		.loc 2 55 0
 147 004e 3B68     		ldr	r3, [r7]
 148 0050 0133     		add	r3, r3, #1
 149 0052 3B60     		str	r3, [r7]
 150              	.L6:
  55:../driver/adc.c **** 	for ( i = 0; i < ADC_NUM; i++ )
 151              		.loc 2 55 0 is_stmt 0 discriminator 1
 152 0054 3B68     		ldr	r3, [r7]
 153 0056 072B     		cmp	r3, #7
 154 0058 E5D9     		bls	.L8
  63:../driver/adc.c **** 	  }
  64:../driver/adc.c **** 	}
  65:../driver/adc.c **** 	LPC_ADC->CR &= 0xF8FFFFFF;	/* stop ADC now */
 155              		.loc 2 65 0 is_stmt 1
 156 005a 1E4B     		ldr	r3, .L15
 157 005c 1D4A     		ldr	r2, .L15
 158 005e 1268     		ldr	r2, [r2]
 159 0060 111C     		mov	r1, r2
 160 0062 1E4A     		ldr	r2, .L15+8
 161 0064 0A40     		and	r2, r1
 162 0066 1A60     		str	r2, [r3]
  66:../driver/adc.c **** 	ADCIntDone = 1;
 163              		.loc 2 66 0
 164 0068 1D4B     		ldr	r3, .L15+12
 165 006a 0122     		mov	r2, #1
 166 006c 1A60     		str	r2, [r3]
  67:../driver/adc.c **** 	return;	
 167              		.loc 2 67 0
 168 006e 2EE0     		b	.L4
 169              	.L5:
  68:../driver/adc.c ****   }
  69:../driver/adc.c ****     
  70:../driver/adc.c ****   if ( regVal & ADC_ADINT )
 170              		.loc 2 70 0
 171 0070 7A68     		ldr	r2, [r7, #4]
 172 0072 8023     		mov	r3, #128
 173 0074 5B02     		lsl	r3, r3, #9
 174 0076 1340     		and	r3, r2
 175 0078 28D0     		beq	.L14
  71:../driver/adc.c ****   {
  72:../driver/adc.c **** 	for ( i = 0; i < ADC_NUM; i++ )
 176              		.loc 2 72 0
 177 007a 0023     		mov	r3, #0
 178 007c 3B60     		str	r3, [r7]
 179 007e 18E0     		b	.L11
 180              	.L13:
  73:../driver/adc.c **** 	{
  74:../driver/adc.c **** 	  if ( (regVal&0xFF) & (0x1 << i) )
 181              		.loc 2 74 0
 182 0080 3B68     		ldr	r3, [r7]
 183 0082 0122     		mov	r2, #1
 184 0084 111C     		mov	r1, r2
 185 0086 9940     		lsl	r1, r1, r3
 186 0088 0B1C     		mov	r3, r1
 187 008a 7A68     		ldr	r2, [r7, #4]
 188 008c 1A40     		and	r2, r3
 189 008e FF23     		mov	r3, #255
 190 0090 1340     		and	r3, r2
 191 0092 0BD0     		beq	.L12
  75:../driver/adc.c **** 	  {
  76:../driver/adc.c **** 		ADCValue[i] = ( LPC_ADC->DR[i] >> 6 ) & 0x3FF;
 192              		.loc 2 76 0
 193 0094 0F4B     		ldr	r3, .L15
 194 0096 3A68     		ldr	r2, [r7]
 195 0098 0432     		add	r2, r2, #4
 196 009a 9200     		lsl	r2, r2, #2
 197 009c D358     		ldr	r3, [r2, r3]
 198 009e 9B09     		lsr	r3, r3, #6
 199 00a0 9B05     		lsl	r3, r3, #22
 200 00a2 990D     		lsr	r1, r3, #22
 201 00a4 0F4B     		ldr	r3, .L15+16
 202 00a6 3A68     		ldr	r2, [r7]
 203 00a8 9200     		lsl	r2, r2, #2
 204 00aa D150     		str	r1, [r2, r3]
 205              	.L12:
  72:../driver/adc.c **** 	for ( i = 0; i < ADC_NUM; i++ )
 206              		.loc 2 72 0
 207 00ac 3B68     		ldr	r3, [r7]
 208 00ae 0133     		add	r3, r3, #1
 209 00b0 3B60     		str	r3, [r7]
 210              	.L11:
  72:../driver/adc.c **** 	for ( i = 0; i < ADC_NUM; i++ )
 211              		.loc 2 72 0 is_stmt 0 discriminator 1
 212 00b2 3B68     		ldr	r3, [r7]
 213 00b4 072B     		cmp	r3, #7
 214 00b6 E3D9     		bls	.L13
  77:../driver/adc.c **** 	  }
  78:../driver/adc.c **** 	}
  79:../driver/adc.c **** #if CONFIG_ADC_ENABLE_BURST_MODE==1
  80:../driver/adc.c **** 	channel_flag |= (regVal & 0xFF);
  81:../driver/adc.c **** 	if ( (channel_flag & 0xFF) == 0xFF )
  82:../driver/adc.c **** 	{
  83:../driver/adc.c **** 	  /* All the bits in have been set, it indicates all the ADC 
  84:../driver/adc.c **** 	  channels have been converted. */
  85:../driver/adc.c **** 	  LPC_ADC->CR &= 0xF8FFFFFF;	/* stop ADC now */
  86:../driver/adc.c **** 	  channel_flag = 0; 
  87:../driver/adc.c **** 	  ADCIntDone = 1;
  88:../driver/adc.c **** 	}
  89:../driver/adc.c **** #else
  90:../driver/adc.c **** 	LPC_ADC->CR &= 0xF8FFFFFF;	/* stop ADC now */ 
 215              		.loc 2 90 0 is_stmt 1
 216 00b8 064B     		ldr	r3, .L15
 217 00ba 064A     		ldr	r2, .L15
 218 00bc 1268     		ldr	r2, [r2]
 219 00be 111C     		mov	r1, r2
 220 00c0 064A     		ldr	r2, .L15+8
 221 00c2 0A40     		and	r2, r1
 222 00c4 1A60     		str	r2, [r3]
  91:../driver/adc.c **** 	ADCIntDone = 1;
 223              		.loc 2 91 0
 224 00c6 064B     		ldr	r3, .L15+12
 225 00c8 0122     		mov	r2, #1
 226 00ca 1A60     		str	r2, [r3]
 227              	.L14:
  92:../driver/adc.c **** #endif
  93:../driver/adc.c ****   }
  94:../driver/adc.c ****   return;
 228              		.loc 2 94 0
 229 00cc C046     		mov	r8, r8
 230              	.L4:
  95:../driver/adc.c **** }
 231              		.loc 2 95 0
 232 00ce BD46     		mov	sp, r7
 233 00d0 02B0     		add	sp, sp, #8
 234              		@ sp needed for prologue
 235 00d2 80BD     		pop	{r7, pc}
 236              	.L16:
 237              		.align	2
 238              	.L15:
 239 00d4 00C00140 		.word	1073856512
 240 00d8 00000000 		.word	OverRunCounter
 241 00dc FFFFFFF8 		.word	-117440513
 242 00e0 00000000 		.word	ADCIntDone
 243 00e4 00000000 		.word	ADCValue
 244              		.cfi_endproc
 245              	.LFE20:
 247              		.global	__aeabi_uidiv
 248              		.section	.text.ADCInit,"ax",%progbits
 249              		.align	2
 250              		.global	ADCInit
 251              		.code	16
 252              		.thumb_func
 254              	ADCInit:
 255              	.LFB21:
  96:../driver/adc.c **** #endif
  97:../driver/adc.c **** 
  98:../driver/adc.c **** /*****************************************************************************
  99:../driver/adc.c **** ** Function name:		ADCInit
 100:../driver/adc.c **** **
 101:../driver/adc.c **** ** Descriptions:		initialize ADC channel
 102:../driver/adc.c **** **
 103:../driver/adc.c **** ** parameters:			ADC clock rate
 104:../driver/adc.c **** ** Returned value:		None
 105:../driver/adc.c **** ** 
 106:../driver/adc.c **** *****************************************************************************/
 107:../driver/adc.c **** void ADCInit( uint32_t ADC_Clk )
 108:../driver/adc.c **** {
 256              		.loc 2 108 0
 257              		.cfi_startproc
 258 0000 90B5     		push	{r4, r7, lr}
 259              	.LCFI6:
 260              		.cfi_def_cfa_offset 12
 261              		.cfi_offset 4, -12
 262              		.cfi_offset 7, -8
 263              		.cfi_offset 14, -4
 264 0002 85B0     		sub	sp, sp, #20
 265              	.LCFI7:
 266              		.cfi_def_cfa_offset 32
 267 0004 00AF     		add	r7, sp, #0
 268              	.LCFI8:
 269              		.cfi_def_cfa_register 7
 270 0006 7860     		str	r0, [r7, #4]
 109:../driver/adc.c ****   uint32_t i;
 110:../driver/adc.c **** 
 111:../driver/adc.c ****   /* Disable Power down bit to the ADC block. */  
 112:../driver/adc.c ****   LPC_SYSCON->PDRUNCFG &= ~(0x1<<4);
 271              		.loc 2 112 0
 272 0008 454A     		ldr	r2, .L20
 273 000a 4549     		ldr	r1, .L20
 274 000c 8E23     		mov	r3, #142
 275 000e 9B00     		lsl	r3, r3, #2
 276 0010 CB58     		ldr	r3, [r1, r3]
 277 0012 1021     		mov	r1, #16
 278 0014 181C     		mov	r0, r3
 279 0016 8843     		bic	r0, r1
 280 0018 011C     		mov	r1, r0
 281 001a 8E23     		mov	r3, #142
 282 001c 9B00     		lsl	r3, r3, #2
 283 001e D150     		str	r1, [r2, r3]
 113:../driver/adc.c **** 
 114:../driver/adc.c ****   /* Enable AHB clock to the ADC. */
 115:../driver/adc.c ****   LPC_SYSCON->SYSAHBCLKCTRL |= (1<<13);
 284              		.loc 2 115 0
 285 0020 3F4A     		ldr	r2, .L20
 286 0022 3F49     		ldr	r1, .L20
 287 0024 8023     		mov	r3, #128
 288 0026 CB58     		ldr	r3, [r1, r3]
 289 0028 8021     		mov	r1, #128
 290 002a 8901     		lsl	r1, r1, #6
 291 002c 1943     		orr	r1, r3
 292 002e 8023     		mov	r3, #128
 293 0030 D150     		str	r1, [r2, r3]
 116:../driver/adc.c **** 
 117:../driver/adc.c ****   for ( i = 0; i < ADC_NUM; i++ )
 294              		.loc 2 117 0
 295 0032 0023     		mov	r3, #0
 296 0034 FB60     		str	r3, [r7, #12]
 297 0036 07E0     		b	.L18
 298              	.L19:
 118:../driver/adc.c ****   {
 119:../driver/adc.c **** 	ADCValue[i] = 0x0;
 299              		.loc 2 119 0 discriminator 2
 300 0038 3A4B     		ldr	r3, .L20+4
 301 003a FA68     		ldr	r2, [r7, #12]
 302 003c 9200     		lsl	r2, r2, #2
 303 003e 0021     		mov	r1, #0
 304 0040 D150     		str	r1, [r2, r3]
 117:../driver/adc.c ****   for ( i = 0; i < ADC_NUM; i++ )
 305              		.loc 2 117 0 discriminator 2
 306 0042 FB68     		ldr	r3, [r7, #12]
 307 0044 0133     		add	r3, r3, #1
 308 0046 FB60     		str	r3, [r7, #12]
 309              	.L18:
 117:../driver/adc.c ****   for ( i = 0; i < ADC_NUM; i++ )
 310              		.loc 2 117 0 is_stmt 0 discriminator 1
 311 0048 FB68     		ldr	r3, [r7, #12]
 312 004a 072B     		cmp	r3, #7
 313 004c F4D9     		bls	.L19
 120:../driver/adc.c ****   }
 121:../driver/adc.c ****   /* Unlike some other pings, for ADC test, all the pins need
 122:../driver/adc.c ****   to set to analog mode. Bit 7 needs to be cleared according 
 123:../driver/adc.c ****   to design team. */
 124:../driver/adc.c ****   LPC_IOCON->R_PIO0_11 &= ~0x8F; /*  ADC I/O config */
 314              		.loc 2 124 0 is_stmt 1
 315 004e 364B     		ldr	r3, .L20+8
 316 0050 354A     		ldr	r2, .L20+8
 317 0052 526F     		ldr	r2, [r2, #116]
 318 0054 8F21     		mov	r1, #143
 319 0056 8A43     		bic	r2, r1
 320 0058 5A67     		str	r2, [r3, #116]
 125:../driver/adc.c ****   LPC_IOCON->R_PIO0_11 |= 0x02;  /* ADC IN0 */
 321              		.loc 2 125 0
 322 005a 334B     		ldr	r3, .L20+8
 323 005c 324A     		ldr	r2, .L20+8
 324 005e 526F     		ldr	r2, [r2, #116]
 325 0060 0221     		mov	r1, #2
 326 0062 0A43     		orr	r2, r1
 327 0064 5A67     		str	r2, [r3, #116]
 126:../driver/adc.c ****   LPC_IOCON->R_PIO1_0  &= ~0x8F;	
 328              		.loc 2 126 0
 329 0066 304B     		ldr	r3, .L20+8
 330 0068 2F4A     		ldr	r2, .L20+8
 331 006a 926F     		ldr	r2, [r2, #120]
 332 006c 8F21     		mov	r1, #143
 333 006e 8A43     		bic	r2, r1
 334 0070 9A67     		str	r2, [r3, #120]
 127:../driver/adc.c ****   LPC_IOCON->R_PIO1_0  |= 0x02;  /* ADC IN1 */
 335              		.loc 2 127 0
 336 0072 2D4B     		ldr	r3, .L20+8
 337 0074 2C4A     		ldr	r2, .L20+8
 338 0076 926F     		ldr	r2, [r2, #120]
 339 0078 0221     		mov	r1, #2
 340 007a 0A43     		orr	r2, r1
 341 007c 9A67     		str	r2, [r3, #120]
 128:../driver/adc.c ****   LPC_IOCON->R_PIO1_1  &= ~0x8F;	
 342              		.loc 2 128 0
 343 007e 2A4B     		ldr	r3, .L20+8
 344 0080 294A     		ldr	r2, .L20+8
 345 0082 D26F     		ldr	r2, [r2, #124]
 346 0084 8F21     		mov	r1, #143
 347 0086 8A43     		bic	r2, r1
 348 0088 DA67     		str	r2, [r3, #124]
 129:../driver/adc.c ****   LPC_IOCON->R_PIO1_1  |= 0x02;  /* ADC IN2 */
 349              		.loc 2 129 0
 350 008a 274B     		ldr	r3, .L20+8
 351 008c 264A     		ldr	r2, .L20+8
 352 008e D26F     		ldr	r2, [r2, #124]
 353 0090 0221     		mov	r1, #2
 354 0092 0A43     		orr	r2, r1
 355 0094 DA67     		str	r2, [r3, #124]
 130:../driver/adc.c ****   LPC_IOCON->R_PIO1_2 &= ~0x8F;	
 356              		.loc 2 130 0
 357 0096 244A     		ldr	r2, .L20+8
 358 0098 2349     		ldr	r1, .L20+8
 359 009a 8023     		mov	r3, #128
 360 009c CB58     		ldr	r3, [r1, r3]
 361 009e 8F21     		mov	r1, #143
 362 00a0 181C     		mov	r0, r3
 363 00a2 8843     		bic	r0, r1
 364 00a4 011C     		mov	r1, r0
 365 00a6 8023     		mov	r3, #128
 366 00a8 D150     		str	r1, [r2, r3]
 131:../driver/adc.c ****   LPC_IOCON->R_PIO1_2 |= 0x02; /* ADC IN3 */
 367              		.loc 2 131 0
 368 00aa 1F4A     		ldr	r2, .L20+8
 369 00ac 1E49     		ldr	r1, .L20+8
 370 00ae 8023     		mov	r3, #128
 371 00b0 CB58     		ldr	r3, [r1, r3]
 372 00b2 0221     		mov	r1, #2
 373 00b4 1943     		orr	r1, r3
 374 00b6 8023     		mov	r3, #128
 375 00b8 D150     		str	r1, [r2, r3]
 132:../driver/adc.c **** #ifdef __SWD_DISABLED
 133:../driver/adc.c ****   LPC_IOCON->SWDIO_PIO1_3   &= ~0x8F;	
 134:../driver/adc.c ****   LPC_IOCON->SWDIO_PIO1_3   |= 0x02;  /* ADC IN4 */
 135:../driver/adc.c **** #endif
 136:../driver/adc.c ****   LPC_IOCON->R_PIO0_11   = 0x02;	// Select AD0 pin function
 376              		.loc 2 136 0
 377 00ba 1B4B     		ldr	r3, .L20+8
 378 00bc 0222     		mov	r2, #2
 379 00be 5A67     		str	r2, [r3, #116]
 137:../driver/adc.c ****   LPC_IOCON->R_PIO1_0    = 0x02;	// Select AD1 pin function
 380              		.loc 2 137 0
 381 00c0 194B     		ldr	r3, .L20+8
 382 00c2 0222     		mov	r2, #2
 383 00c4 9A67     		str	r2, [r3, #120]
 138:../driver/adc.c ****   LPC_IOCON->R_PIO1_1    = 0x02;	// Select AD2 pin function
 384              		.loc 2 138 0
 385 00c6 184B     		ldr	r3, .L20+8
 386 00c8 0222     		mov	r2, #2
 387 00ca DA67     		str	r2, [r3, #124]
 139:../driver/adc.c ****   LPC_IOCON->R_PIO1_2    = 0x02;	// Select AD3 pin function
 388              		.loc 2 139 0
 389 00cc 164A     		ldr	r2, .L20+8
 390 00ce 8023     		mov	r3, #128
 391 00d0 0221     		mov	r1, #2
 392 00d2 D150     		str	r1, [r2, r3]
 140:../driver/adc.c **** //  LPC_IOCON->ARM_SWDIO_PIO1_3    = 0x02;	// Select AD4 pin function
 141:../driver/adc.c ****   LPC_IOCON->PIO1_4    = 0x01;	// Select AD5 pin function
 393              		.loc 2 141 0
 394 00d4 144A     		ldr	r2, .L20+8
 395 00d6 9423     		mov	r3, #148
 396 00d8 0121     		mov	r1, #1
 397 00da D150     		str	r1, [r2, r3]
 142:../driver/adc.c ****   LPC_IOCON->PIO1_10   = 0x01;	// Select AD6 pin function
 398              		.loc 2 142 0
 399 00dc 124B     		ldr	r3, .L20+8
 400 00de 0122     		mov	r2, #1
 401 00e0 DA66     		str	r2, [r3, #108]
 143:../driver/adc.c ****   LPC_IOCON->PIO1_11   = 0x01;	// Select AD7 pin function
 402              		.loc 2 143 0
 403 00e2 114A     		ldr	r2, .L20+8
 404 00e4 9823     		mov	r3, #152
 405 00e6 0121     		mov	r1, #1
 406 00e8 D150     		str	r1, [r2, r3]
 144:../driver/adc.c **** 
 145:../driver/adc.c ****   LPC_ADC->CR = ((SystemCoreClock/LPC_SYSCON->SYSAHBCLKDIV)/ADC_Clk-1)<<8;
 407              		.loc 2 145 0
 408 00ea 104C     		ldr	r4, .L20+12
 409 00ec 104B     		ldr	r3, .L20+16
 410 00ee 1A68     		ldr	r2, [r3]
 411 00f0 0B4B     		ldr	r3, .L20
 412 00f2 9B6F     		ldr	r3, [r3, #120]
 413 00f4 101C     		mov	r0, r2
 414 00f6 191C     		mov	r1, r3
 415 00f8 FFF7FEFF 		bl	__aeabi_uidiv
 416 00fc 031C     		mov	r3, r0
 417 00fe 181C     		mov	r0, r3
 418 0100 7968     		ldr	r1, [r7, #4]
 419 0102 FFF7FEFF 		bl	__aeabi_uidiv
 420 0106 031C     		mov	r3, r0
 421 0108 013B     		sub	r3, r3, #1
 422 010a 1B02     		lsl	r3, r3, #8
 423 010c 2360     		str	r3, [r4]
 146:../driver/adc.c **** 
 147:../driver/adc.c ****   /* If POLLING, no need to do the following */
 148:../driver/adc.c **** #if CONFIG_ADC_ENABLE_ADC_IRQHANDLER==1
 149:../driver/adc.c ****   NVIC_EnableIRQ(ADC_IRQn);
 424              		.loc 2 149 0
 425 010e 1820     		mov	r0, #24
 426 0110 FFF7FEFF 		bl	NVIC_EnableIRQ
 150:../driver/adc.c ****   LPC_ADC->INTEN = 0x1FF;		/* Enable all interrupts */
 427              		.loc 2 150 0
 428 0114 054B     		ldr	r3, .L20+12
 429 0116 074A     		ldr	r2, .L20+20
 430 0118 DA60     		str	r2, [r3, #12]
 151:../driver/adc.c **** #endif
 152:../driver/adc.c ****   return;
 153:../driver/adc.c **** }
 431              		.loc 2 153 0
 432 011a BD46     		mov	sp, r7
 433 011c 05B0     		add	sp, sp, #20
 434              		@ sp needed for prologue
 435 011e 90BD     		pop	{r4, r7, pc}
 436              	.L21:
 437              		.align	2
 438              	.L20:
 439 0120 00800440 		.word	1074036736
 440 0124 00000000 		.word	ADCValue
 441 0128 00400440 		.word	1074020352
 442 012c 00C00140 		.word	1073856512
 443 0130 00000000 		.word	SystemCoreClock
 444 0134 FF010000 		.word	511
 445              		.cfi_endproc
 446              	.LFE21:
 448              		.section	.text.ADCRead,"ax",%progbits
 449              		.align	2
 450              		.global	ADCRead
 451              		.code	16
 452              		.thumb_func
 454              	ADCRead:
 455              	.LFB22:
 154:../driver/adc.c **** 
 155:../driver/adc.c **** /*****************************************************************************
 156:../driver/adc.c **** ** Function name:		ADCRead
 157:../driver/adc.c **** **
 158:../driver/adc.c **** ** Descriptions:		Read ADC channel
 159:../driver/adc.c **** **
 160:../driver/adc.c **** ** parameters:			Channel number
 161:../driver/adc.c **** ** Returned value:		Value read, if interrupt driven, return channel #
 162:../driver/adc.c **** ** 
 163:../driver/adc.c **** *****************************************************************************/
 164:../driver/adc.c **** uint32_t ADCRead( uint8_t channelNum )
 165:../driver/adc.c **** {
 456              		.loc 2 165 0
 457              		.cfi_startproc
 458 0000 90B5     		push	{r4, r7, lr}
 459              	.LCFI9:
 460              		.cfi_def_cfa_offset 12
 461              		.cfi_offset 4, -12
 462              		.cfi_offset 7, -8
 463              		.cfi_offset 14, -4
 464 0002 83B0     		sub	sp, sp, #12
 465              	.LCFI10:
 466              		.cfi_def_cfa_offset 24
 467 0004 00AF     		add	r7, sp, #0
 468              	.LCFI11:
 469              		.cfi_def_cfa_register 7
 470 0006 021C     		mov	r2, r0
 471 0008 FB1D     		add	r3, r7, #7
 472 000a 1A70     		strb	r2, [r3]
 166:../driver/adc.c **** #if CONFIG_ADC_ENABLE_ADC_IRQHANDLER!=1
 167:../driver/adc.c ****   uint32_t regVal, ADC_Data;
 168:../driver/adc.c **** #endif
 169:../driver/adc.c **** 
 170:../driver/adc.c ****   /* channel number is 0 through 7 */
 171:../driver/adc.c ****   if ( channelNum >= ADC_NUM )
 473              		.loc 2 171 0
 474 000c FB1D     		add	r3, r7, #7
 475 000e 1B78     		ldrb	r3, [r3]
 476 0010 072B     		cmp	r3, #7
 477 0012 02D9     		bls	.L23
 172:../driver/adc.c ****   {
 173:../driver/adc.c **** 	channelNum = 0;		/* reset channel number to 0 */
 478              		.loc 2 173 0
 479 0014 FB1D     		add	r3, r7, #7
 480 0016 0022     		mov	r2, #0
 481 0018 1A70     		strb	r2, [r3]
 482              	.L23:
 174:../driver/adc.c ****   }
 175:../driver/adc.c ****   LPC_ADC->CR &= 0xFFFFFF00;
 483              		.loc 2 175 0
 484 001a 0D4B     		ldr	r3, .L24
 485 001c 0C4A     		ldr	r2, .L24
 486 001e 1268     		ldr	r2, [r2]
 487 0020 FF21     		mov	r1, #255
 488 0022 8A43     		bic	r2, r1
 489 0024 1A60     		str	r2, [r3]
 176:../driver/adc.c ****   LPC_ADC->CR |= (1 << 24) | (1 << channelNum);	
 490              		.loc 2 176 0
 491 0026 0A4B     		ldr	r3, .L24
 492 0028 094A     		ldr	r2, .L24
 493 002a 1268     		ldr	r2, [r2]
 494 002c 111C     		mov	r1, r2
 495 002e FA1D     		add	r2, r7, #7
 496 0030 1278     		ldrb	r2, [r2]
 497 0032 0120     		mov	r0, #1
 498 0034 041C     		mov	r4, r0
 499 0036 9440     		lsl	r4, r4, r2
 500 0038 221C     		mov	r2, r4
 501 003a 0A43     		orr	r2, r1
 502 003c 8021     		mov	r1, #128
 503 003e 4904     		lsl	r1, r1, #17
 504 0040 0A43     		orr	r2, r1
 505 0042 1A60     		str	r2, [r3]
 177:../driver/adc.c **** 				/* switch channel,start A/D convert */
 178:../driver/adc.c **** #if CONFIG_ADC_ENABLE_ADC_IRQHANDLER!=1
 179:../driver/adc.c ****   while ( 1 )			/* wait until end of A/D convert */
 180:../driver/adc.c ****   {
 181:../driver/adc.c **** 	regVal = *(volatile unsigned long *)(LPC_ADC_BASE 
 182:../driver/adc.c **** 			+ ADC_OFFSET + ADC_INDEX * channelNum);
 183:../driver/adc.c **** 	/* read result of A/D conversion */
 184:../driver/adc.c **** 	if ( regVal & ADC_DONE )
 185:../driver/adc.c **** 	{
 186:../driver/adc.c **** 	  break;
 187:../driver/adc.c **** 	}
 188:../driver/adc.c ****   }	
 189:../driver/adc.c ****         
 190:../driver/adc.c ****   LPC_ADC->CR &= 0xF8FFFFFF;	/* stop ADC now */    
 191:../driver/adc.c ****   if ( regVal & ADC_OVERRUN )	/* save data when it's not overrun, otherwise, return zero */
 192:../driver/adc.c ****   {
 193:../driver/adc.c **** 	return ( 0 );
 194:../driver/adc.c ****   }
 195:../driver/adc.c ****   ADC_Data = ( regVal >> 6 ) & 0x3FF;
 196:../driver/adc.c ****   return ( ADC_Data );	/* return A/D conversion value */
 197:../driver/adc.c **** #else
 198:../driver/adc.c ****   return ( channelNum );	/* if it's interrupt driven, the ADC reading is 
 506              		.loc 2 198 0
 507 0044 FB1D     		add	r3, r7, #7
 508 0046 1B78     		ldrb	r3, [r3]
 199:../driver/adc.c **** 							done inside the handler. so, return channel number */
 200:../driver/adc.c **** #endif
 201:../driver/adc.c **** }
 509              		.loc 2 201 0
 510 0048 181C     		mov	r0, r3
 511 004a BD46     		mov	sp, r7
 512 004c 03B0     		add	sp, sp, #12
 513              		@ sp needed for prologue
 514 004e 90BD     		pop	{r4, r7, pc}
 515              	.L25:
 516              		.align	2
 517              	.L24:
 518 0050 00C00140 		.word	1073856512
 519              		.cfi_endproc
 520              	.LFE22:
 522              		.section	.text.ADCBurstRead,"ax",%progbits
 523              		.align	2
 524              		.global	ADCBurstRead
 525              		.code	16
 526              		.thumb_func
 528              	ADCBurstRead:
 529              	.LFB23:
 202:../driver/adc.c **** 
 203:../driver/adc.c **** /*****************************************************************************
 204:../driver/adc.c **** ** Function name:		ADC0BurstRead
 205:../driver/adc.c **** **
 206:../driver/adc.c **** ** Descriptions:		Use burst mode to convert multiple channels once.
 207:../driver/adc.c **** **
 208:../driver/adc.c **** ** parameters:			None
 209:../driver/adc.c **** ** Returned value:		None
 210:../driver/adc.c **** ** 
 211:../driver/adc.c **** *****************************************************************************/
 212:../driver/adc.c **** void ADCBurstRead( void )
 213:../driver/adc.c **** {
 530              		.loc 2 213 0
 531              		.cfi_startproc
 532 0000 80B5     		push	{r7, lr}
 533              	.LCFI12:
 534              		.cfi_def_cfa_offset 8
 535              		.cfi_offset 7, -8
 536              		.cfi_offset 14, -4
 537 0002 00AF     		add	r7, sp, #0
 538              	.LCFI13:
 539              		.cfi_def_cfa_register 7
 214:../driver/adc.c ****   if ( LPC_ADC->CR & (0x7<<24) )
 540              		.loc 2 214 0
 541 0004 0E4B     		ldr	r3, .L28
 542 0006 1B68     		ldr	r3, [r3]
 543 0008 1A1C     		mov	r2, r3
 544 000a E023     		mov	r3, #224
 545 000c DB04     		lsl	r3, r3, #19
 546 000e 1340     		and	r3, r2
 547 0010 06D0     		beq	.L27
 215:../driver/adc.c ****   {
 216:../driver/adc.c **** 	LPC_ADC->CR &= ~(0x7<<24);
 548              		.loc 2 216 0
 549 0012 0B4B     		ldr	r3, .L28
 550 0014 0A4A     		ldr	r2, .L28
 551 0016 1268     		ldr	r2, [r2]
 552 0018 111C     		mov	r1, r2
 553 001a 0A4A     		ldr	r2, .L28+4
 554 001c 0A40     		and	r2, r1
 555 001e 1A60     		str	r2, [r3]
 556              	.L27:
 217:../driver/adc.c ****   }
 218:../driver/adc.c ****   /* Read all channels, 0 through 7. Be careful that if the ADCx pins is shared
 219:../driver/adc.c ****   with SWD CLK or SWD IO. */
 220:../driver/adc.c ****   LPC_ADC->CR |= (0xFF);
 557              		.loc 2 220 0
 558 0020 074B     		ldr	r3, .L28
 559 0022 074A     		ldr	r2, .L28
 560 0024 1268     		ldr	r2, [r2]
 561 0026 FF21     		mov	r1, #255
 562 0028 0A43     		orr	r2, r1
 563 002a 1A60     		str	r2, [r3]
 221:../driver/adc.c ****   LPC_ADC->CR |= (0x1<<16);		/* Set burst mode and start A/D convert */
 564              		.loc 2 221 0
 565 002c 044B     		ldr	r3, .L28
 566 002e 044A     		ldr	r2, .L28
 567 0030 1268     		ldr	r2, [r2]
 568 0032 8021     		mov	r1, #128
 569 0034 4902     		lsl	r1, r1, #9
 570 0036 0A43     		orr	r2, r1
 571 0038 1A60     		str	r2, [r3]
 222:../driver/adc.c ****   return;						/* the ADC reading is done inside the 
 223:../driver/adc.c **** 								handler, return 0. */
 224:../driver/adc.c **** }
 572              		.loc 2 224 0
 573 003a BD46     		mov	sp, r7
 574              		@ sp needed for prologue
 575 003c 80BD     		pop	{r7, pc}
 576              	.L29:
 577 003e C046     		.align	2
 578              	.L28:
 579 0040 00C00140 		.word	1073856512
 580 0044 FFFFFFF8 		.word	-117440513
 581              		.cfi_endproc
 582              	.LFE23:
 584              		.text
 585              	.Letext0:
 586              		.file 3 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/LPC11xx.h"
 587              		.file 4 "/Applications/lpcxpresso_6.1.2_177/lpcxpresso/tools/bin/../lib/gcc/arm-none-eabi/4.6.2/..
 588              		.file 5 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/config/system_LPC11xx.h"
 589              		.file 6 "../driver/adc.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 adc.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:18     .text.NVIC_EnableIRQ:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:22     .text.NVIC_EnableIRQ:0000000000000000 NVIC_EnableIRQ
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:61     .text.NVIC_EnableIRQ:0000000000000028 $d
                            *COM*:0000000000000020 ADCValue
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:71     .bss:0000000000000000 ADCIntDone
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:68     .bss:0000000000000000 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:77     .bss:0000000000000004 OverRunCounter
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:80     .text.ADC_IRQHandler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:85     .text.ADC_IRQHandler:0000000000000000 ADC_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:239    .text.ADC_IRQHandler:00000000000000d4 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:249    .text.ADCInit:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:254    .text.ADCInit:0000000000000000 ADCInit
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:439    .text.ADCInit:0000000000000120 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:449    .text.ADCRead:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:454    .text.ADCRead:0000000000000000 ADCRead
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:518    .text.ADCRead:0000000000000050 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:523    .text.ADCBurstRead:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:528    .text.ADCBurstRead:0000000000000000 ADCBurstRead
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccd5Zgpd.s:579    .text.ADCBurstRead:0000000000000040 $d
                     .debug_frame:0000000000000010 $d

UNDEFINED SYMBOLS
__aeabi_uidiv
SystemCoreClock
