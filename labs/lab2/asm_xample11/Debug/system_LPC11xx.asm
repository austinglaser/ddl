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
  13              		.file	"system_LPC11xx.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.__NOP,"ax",%progbits
  18              		.align	2
  19              		.code	16
  20              		.thumb_func
  22              	__NOP:
  23              	.LFB4:
  24              		.file 1 "../cmsis/core_cm0.h"
   1:../cmsis/core_cm0.h **** /**************************************************************************//**
   2:../cmsis/core_cm0.h ****  * $Id:: core_cm0.h 4785 2010-09-03 22:39:27Z nxp21346                    $
   3:../cmsis/core_cm0.h ****  *
   4:../cmsis/core_cm0.h ****  * @file     core_cm0.h
   5:../cmsis/core_cm0.h ****  * @brief    CMSIS Cortex-M0 Core Peripheral Access Layer Header File
   6:../cmsis/core_cm0.h ****  * @version  V1.30
   7:../cmsis/core_cm0.h ****  * @date     30. October 2009
   8:../cmsis/core_cm0.h ****  *
   9:../cmsis/core_cm0.h ****  * @note
  10:../cmsis/core_cm0.h ****  * Copyright (C) 2009 ARM Limited. All rights reserved.
  11:../cmsis/core_cm0.h ****  *
  12:../cmsis/core_cm0.h ****  * @par
  13:../cmsis/core_cm0.h ****  * ARM Limited (ARM) is supplying this software for use with Cortex-M 
  14:../cmsis/core_cm0.h ****  * processor based microcontrollers.  This file can be freely distributed 
  15:../cmsis/core_cm0.h ****  * within development tools that are supporting such ARM based processors. 
  16:../cmsis/core_cm0.h ****  *
  17:../cmsis/core_cm0.h ****  * @par
  18:../cmsis/core_cm0.h ****  * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
  19:../cmsis/core_cm0.h ****  * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
  20:../cmsis/core_cm0.h ****  * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
  21:../cmsis/core_cm0.h ****  * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
  22:../cmsis/core_cm0.h ****  * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
  23:../cmsis/core_cm0.h ****  *
  24:../cmsis/core_cm0.h ****  ******************************************************************************/
  25:../cmsis/core_cm0.h **** 
  26:../cmsis/core_cm0.h **** #ifndef __CM0_CORE_H__
  27:../cmsis/core_cm0.h **** #define __CM0_CORE_H__
  28:../cmsis/core_cm0.h **** 
  29:../cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_core_LintCinfiguration CMSIS CM0 Core Lint Configuration
  30:../cmsis/core_cm0.h ****  *
  31:../cmsis/core_cm0.h ****  * List of Lint messages which will be suppressed and not shown:
  32:../cmsis/core_cm0.h ****  *   - not yet checked
  33:../cmsis/core_cm0.h ****  * .
  34:../cmsis/core_cm0.h ****  * Note:  To re-enable a Message, insert a space before 'lint' *
  35:../cmsis/core_cm0.h ****  *
  36:../cmsis/core_cm0.h ****  */
  37:../cmsis/core_cm0.h **** 
  38:../cmsis/core_cm0.h **** 
  39:../cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_core_definitions CM0 Core Definitions
  40:../cmsis/core_cm0.h ****   This file defines all structures and symbols for CMSIS core:
  41:../cmsis/core_cm0.h ****     - CMSIS version number
  42:../cmsis/core_cm0.h ****     - Cortex-M core registers and bitfields
  43:../cmsis/core_cm0.h ****     - Cortex-M core peripheral base address
  44:../cmsis/core_cm0.h ****   @{
  45:../cmsis/core_cm0.h ****  */
  46:../cmsis/core_cm0.h **** 
  47:../cmsis/core_cm0.h **** #ifdef __cplusplus
  48:../cmsis/core_cm0.h ****  extern "C" {
  49:../cmsis/core_cm0.h **** #endif 
  50:../cmsis/core_cm0.h **** 
  51:../cmsis/core_cm0.h **** #define __CM0_CMSIS_VERSION_MAIN  (0x01)                                                       /*!<
  52:../cmsis/core_cm0.h **** #define __CM0_CMSIS_VERSION_SUB   (0x30)                                                       /*!<
  53:../cmsis/core_cm0.h **** #define __CM0_CMSIS_VERSION       ((__CM0_CMSIS_VERSION_MAIN << 16) | __CM0_CMSIS_VERSION_SUB) /*!<
  54:../cmsis/core_cm0.h **** 
  55:../cmsis/core_cm0.h **** #define __CORTEX_M                (0x00)                                                       /*!<
  56:../cmsis/core_cm0.h **** 
  57:../cmsis/core_cm0.h **** #include <stdint.h>                           /* Include standard types */
  58:../cmsis/core_cm0.h **** 
  59:../cmsis/core_cm0.h **** #if defined (__ICCARM__)
  60:../cmsis/core_cm0.h ****   #include <intrinsics.h>                     /* IAR Intrinsics   */
  61:../cmsis/core_cm0.h **** #endif
  62:../cmsis/core_cm0.h **** 
  63:../cmsis/core_cm0.h **** 
  64:../cmsis/core_cm0.h **** #ifndef __NVIC_PRIO_BITS
  65:../cmsis/core_cm0.h ****   #define __NVIC_PRIO_BITS    2               /*!< standard definition for NVIC Priority Bits */
  66:../cmsis/core_cm0.h **** #endif
  67:../cmsis/core_cm0.h **** 
  68:../cmsis/core_cm0.h **** 
  69:../cmsis/core_cm0.h **** 
  70:../cmsis/core_cm0.h **** 
  71:../cmsis/core_cm0.h **** /**
  72:../cmsis/core_cm0.h ****  * IO definitions
  73:../cmsis/core_cm0.h ****  *
  74:../cmsis/core_cm0.h ****  * define access restrictions to peripheral registers
  75:../cmsis/core_cm0.h ****  */
  76:../cmsis/core_cm0.h **** 
  77:../cmsis/core_cm0.h **** #ifdef __cplusplus
  78:../cmsis/core_cm0.h ****   #define     __I     volatile                /*!< defines 'read only' permissions      */
  79:../cmsis/core_cm0.h **** #else
  80:../cmsis/core_cm0.h ****   #define     __I     volatile const          /*!< defines 'read only' permissions      */
  81:../cmsis/core_cm0.h **** #endif
  82:../cmsis/core_cm0.h **** #define     __O     volatile                  /*!< defines 'write only' permissions     */
  83:../cmsis/core_cm0.h **** #define     __IO    volatile                  /*!< defines 'read / write' permissions   */
  84:../cmsis/core_cm0.h **** 
  85:../cmsis/core_cm0.h **** 
  86:../cmsis/core_cm0.h **** 
  87:../cmsis/core_cm0.h **** /*******************************************************************************
  88:../cmsis/core_cm0.h ****  *                 Register Abstraction
  89:../cmsis/core_cm0.h ****  ******************************************************************************/
  90:../cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_core_register CMSIS CM0 Core Register
  91:../cmsis/core_cm0.h ****  @{
  92:../cmsis/core_cm0.h **** */
  93:../cmsis/core_cm0.h **** 
  94:../cmsis/core_cm0.h **** 
  95:../cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_NVIC CMSIS CM0 NVIC
  96:../cmsis/core_cm0.h ****   memory mapped structure for Nested Vectored Interrupt Controller (NVIC)
  97:../cmsis/core_cm0.h ****   @{
  98:../cmsis/core_cm0.h ****  */
  99:../cmsis/core_cm0.h **** typedef struct
 100:../cmsis/core_cm0.h **** {
 101:../cmsis/core_cm0.h ****   __IO uint32_t ISER[1];                      /*!< (Offset: 0x000) Interrupt Set Enable Register   
 102:../cmsis/core_cm0.h ****        uint32_t RESERVED0[31];
 103:../cmsis/core_cm0.h ****   __IO uint32_t ICER[1];                      /*!< (Offset: 0x080) Interrupt Clear Enable Register 
 104:../cmsis/core_cm0.h ****        uint32_t RSERVED1[31];
 105:../cmsis/core_cm0.h ****   __IO uint32_t ISPR[1];                      /*!< (Offset: 0x100) Interrupt Set Pending Register  
 106:../cmsis/core_cm0.h ****        uint32_t RESERVED2[31];
 107:../cmsis/core_cm0.h ****   __IO uint32_t ICPR[1];                      /*!< (Offset: 0x180) Interrupt Clear Pending Register
 108:../cmsis/core_cm0.h ****        uint32_t RESERVED3[31];
 109:../cmsis/core_cm0.h ****        uint32_t RESERVED4[64];
 110:../cmsis/core_cm0.h ****   __IO uint32_t IPR[8];                       /*!< (Offset: 0x3EC) Interrupt Priority Register     
 111:../cmsis/core_cm0.h **** }  NVIC_Type;
 112:../cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_NVIC */
 113:../cmsis/core_cm0.h **** 
 114:../cmsis/core_cm0.h **** 
 115:../cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_SCB CMSIS CM0 SCB
 116:../cmsis/core_cm0.h ****   memory mapped structure for System Control Block (SCB)
 117:../cmsis/core_cm0.h ****   @{
 118:../cmsis/core_cm0.h ****  */
 119:../cmsis/core_cm0.h **** typedef struct
 120:../cmsis/core_cm0.h **** {
 121:../cmsis/core_cm0.h ****   __I  uint32_t CPUID;                        /*!< Offset: 0x00  CPU ID Base Register              
 122:../cmsis/core_cm0.h ****   __IO uint32_t ICSR;                         /*!< Offset: 0x04  Interrupt Control State Register  
 123:../cmsis/core_cm0.h ****        uint32_t RESERVED0;                                      
 124:../cmsis/core_cm0.h ****   __IO uint32_t AIRCR;                        /*!< Offset: 0x0C  Application Interrupt / Reset Cont
 125:../cmsis/core_cm0.h ****   __IO uint32_t SCR;                          /*!< Offset: 0x10  System Control Register           
 126:../cmsis/core_cm0.h ****   __IO uint32_t CCR;                          /*!< Offset: 0x14  Configuration Control Register    
 127:../cmsis/core_cm0.h ****        uint32_t RESERVED1;                                      
 128:../cmsis/core_cm0.h ****   __IO uint32_t SHP[2];                       /*!< Offset: 0x1C  System Handlers Priority Registers
 129:../cmsis/core_cm0.h ****   __IO uint32_t SHCSR;                        /*!< Offset: 0x24  System Handler Control and State R
 130:../cmsis/core_cm0.h ****        uint32_t RESERVED2[2];                                   
 131:../cmsis/core_cm0.h ****   __IO uint32_t DFSR;                         /*!< Offset: 0x30  Debug Fault Status Register       
 132:../cmsis/core_cm0.h **** } SCB_Type;                                                
 133:../cmsis/core_cm0.h **** 
 134:../cmsis/core_cm0.h **** /* SCB CPUID Register Definitions */
 135:../cmsis/core_cm0.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24                                             /*!< SCB 
 136:../cmsis/core_cm0.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFul << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 137:../cmsis/core_cm0.h **** 
 138:../cmsis/core_cm0.h **** #define SCB_CPUID_VARIANT_Pos              20                                             /*!< SCB 
 139:../cmsis/core_cm0.h **** #define SCB_CPUID_VARIANT_Msk              (0xFul << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 140:../cmsis/core_cm0.h **** 
 141:../cmsis/core_cm0.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16                                             /*!< SCB 
 142:../cmsis/core_cm0.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFul << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
 143:../cmsis/core_cm0.h **** 
 144:../cmsis/core_cm0.h **** #define SCB_CPUID_PARTNO_Pos                4                                             /*!< SCB 
 145:../cmsis/core_cm0.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFul << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 146:../cmsis/core_cm0.h **** 
 147:../cmsis/core_cm0.h **** #define SCB_CPUID_REVISION_Pos              0                                             /*!< SCB 
 148:../cmsis/core_cm0.h **** #define SCB_CPUID_REVISION_Msk             (0xFul << SCB_CPUID_REVISION_Pos)              /*!< SCB 
 149:../cmsis/core_cm0.h **** 
 150:../cmsis/core_cm0.h **** /* SCB Interrupt Control State Register Definitions */
 151:../cmsis/core_cm0.h **** #define SCB_ICSR_NMIPENDSET_Pos            31                                             /*!< SCB 
 152:../cmsis/core_cm0.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1ul << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 153:../cmsis/core_cm0.h **** 
 154:../cmsis/core_cm0.h **** #define SCB_ICSR_PENDSVSET_Pos             28                                             /*!< SCB 
 155:../cmsis/core_cm0.h **** #define SCB_ICSR_PENDSVSET_Msk             (1ul << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 156:../cmsis/core_cm0.h **** 
 157:../cmsis/core_cm0.h **** #define SCB_ICSR_PENDSVCLR_Pos             27                                             /*!< SCB 
 158:../cmsis/core_cm0.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1ul << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 159:../cmsis/core_cm0.h **** 
 160:../cmsis/core_cm0.h **** #define SCB_ICSR_PENDSTSET_Pos             26                                             /*!< SCB 
 161:../cmsis/core_cm0.h **** #define SCB_ICSR_PENDSTSET_Msk             (1ul << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 162:../cmsis/core_cm0.h **** 
 163:../cmsis/core_cm0.h **** #define SCB_ICSR_PENDSTCLR_Pos             25                                             /*!< SCB 
 164:../cmsis/core_cm0.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1ul << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 165:../cmsis/core_cm0.h **** 
 166:../cmsis/core_cm0.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23                                             /*!< SCB 
 167:../cmsis/core_cm0.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1ul << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 168:../cmsis/core_cm0.h **** 
 169:../cmsis/core_cm0.h **** #define SCB_ICSR_ISRPENDING_Pos            22                                             /*!< SCB 
 170:../cmsis/core_cm0.h **** #define SCB_ICSR_ISRPENDING_Msk            (1ul << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 171:../cmsis/core_cm0.h **** 
 172:../cmsis/core_cm0.h **** #define SCB_ICSR_VECTPENDING_Pos           12                                             /*!< SCB 
 173:../cmsis/core_cm0.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFul << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 174:../cmsis/core_cm0.h **** 
 175:../cmsis/core_cm0.h **** #define SCB_ICSR_VECTACTIVE_Pos             0                                             /*!< SCB 
 176:../cmsis/core_cm0.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFul << SCB_ICSR_VECTACTIVE_Pos)           /*!< SCB 
 177:../cmsis/core_cm0.h **** 
 178:../cmsis/core_cm0.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 179:../cmsis/core_cm0.h **** #define SCB_AIRCR_VECTKEY_Pos              16                                             /*!< SCB 
 180:../cmsis/core_cm0.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFul << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 181:../cmsis/core_cm0.h **** 
 182:../cmsis/core_cm0.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16                                             /*!< SCB 
 183:../cmsis/core_cm0.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFul << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 184:../cmsis/core_cm0.h **** 
 185:../cmsis/core_cm0.h **** #define SCB_AIRCR_ENDIANESS_Pos            15                                             /*!< SCB 
 186:../cmsis/core_cm0.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1ul << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 187:../cmsis/core_cm0.h **** 
 188:../cmsis/core_cm0.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2                                             /*!< SCB 
 189:../cmsis/core_cm0.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1ul << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 190:../cmsis/core_cm0.h **** 
 191:../cmsis/core_cm0.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1                                             /*!< SCB 
 192:../cmsis/core_cm0.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1ul << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 193:../cmsis/core_cm0.h **** 
 194:../cmsis/core_cm0.h **** /* SCB System Control Register Definitions */
 195:../cmsis/core_cm0.h **** #define SCB_SCR_SEVONPEND_Pos               4                                             /*!< SCB 
 196:../cmsis/core_cm0.h **** #define SCB_SCR_SEVONPEND_Msk              (1ul << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 197:../cmsis/core_cm0.h **** 
 198:../cmsis/core_cm0.h **** #define SCB_SCR_SLEEPDEEP_Pos               2                                             /*!< SCB 
 199:../cmsis/core_cm0.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1ul << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 200:../cmsis/core_cm0.h **** 
 201:../cmsis/core_cm0.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1                                             /*!< SCB 
 202:../cmsis/core_cm0.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1ul << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 203:../cmsis/core_cm0.h **** 
 204:../cmsis/core_cm0.h **** /* SCB Configuration Control Register Definitions */
 205:../cmsis/core_cm0.h **** #define SCB_CCR_STKALIGN_Pos                9                                             /*!< SCB 
 206:../cmsis/core_cm0.h **** #define SCB_CCR_STKALIGN_Msk               (1ul << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 207:../cmsis/core_cm0.h **** 
 208:../cmsis/core_cm0.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3                                             /*!< SCB 
 209:../cmsis/core_cm0.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1ul << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 210:../cmsis/core_cm0.h **** 
 211:../cmsis/core_cm0.h **** /* SCB System Handler Control and State Register Definitions */
 212:../cmsis/core_cm0.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15                                             /*!< SCB 
 213:../cmsis/core_cm0.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1ul << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 214:../cmsis/core_cm0.h **** 
 215:../cmsis/core_cm0.h **** /* SCB Debug Fault Status Register Definitions */
 216:../cmsis/core_cm0.h **** #define SCB_DFSR_EXTERNAL_Pos               4                                             /*!< SCB 
 217:../cmsis/core_cm0.h **** #define SCB_DFSR_EXTERNAL_Msk              (1ul << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 218:../cmsis/core_cm0.h **** 
 219:../cmsis/core_cm0.h **** #define SCB_DFSR_VCATCH_Pos                 3                                             /*!< SCB 
 220:../cmsis/core_cm0.h **** #define SCB_DFSR_VCATCH_Msk                (1ul << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 221:../cmsis/core_cm0.h **** 
 222:../cmsis/core_cm0.h **** #define SCB_DFSR_DWTTRAP_Pos                2                                             /*!< SCB 
 223:../cmsis/core_cm0.h **** #define SCB_DFSR_DWTTRAP_Msk               (1ul << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 224:../cmsis/core_cm0.h **** 
 225:../cmsis/core_cm0.h **** #define SCB_DFSR_BKPT_Pos                   1                                             /*!< SCB 
 226:../cmsis/core_cm0.h **** #define SCB_DFSR_BKPT_Msk                  (1ul << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 227:../cmsis/core_cm0.h **** 
 228:../cmsis/core_cm0.h **** #define SCB_DFSR_HALTED_Pos                 0                                             /*!< SCB 
 229:../cmsis/core_cm0.h **** #define SCB_DFSR_HALTED_Msk                (1ul << SCB_DFSR_HALTED_Pos)                   /*!< SCB 
 230:../cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_SCB */
 231:../cmsis/core_cm0.h **** 
 232:../cmsis/core_cm0.h **** 
 233:../cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_SysTick CMSIS CM0 SysTick
 234:../cmsis/core_cm0.h ****   memory mapped structure for SysTick
 235:../cmsis/core_cm0.h ****   @{
 236:../cmsis/core_cm0.h ****  */
 237:../cmsis/core_cm0.h **** typedef struct
 238:../cmsis/core_cm0.h **** {
 239:../cmsis/core_cm0.h ****   __IO uint32_t CTRL;                         /*!< Offset: 0x00  SysTick Control and Status Registe
 240:../cmsis/core_cm0.h ****   __IO uint32_t LOAD;                         /*!< Offset: 0x04  SysTick Reload Value Register     
 241:../cmsis/core_cm0.h ****   __IO uint32_t VAL;                          /*!< Offset: 0x08  SysTick Current Value Register    
 242:../cmsis/core_cm0.h ****   __I  uint32_t CALIB;                        /*!< Offset: 0x0C  SysTick Calibration Register      
 243:../cmsis/core_cm0.h **** } SysTick_Type;
 244:../cmsis/core_cm0.h **** 
 245:../cmsis/core_cm0.h **** /* SysTick Control / Status Register Definitions */
 246:../cmsis/core_cm0.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysT
 247:../cmsis/core_cm0.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1ul << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 248:../cmsis/core_cm0.h **** 
 249:../cmsis/core_cm0.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysT
 250:../cmsis/core_cm0.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1ul << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 251:../cmsis/core_cm0.h **** 
 252:../cmsis/core_cm0.h **** #define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysT
 253:../cmsis/core_cm0.h **** #define SysTick_CTRL_TICKINT_Msk           (1ul << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 254:../cmsis/core_cm0.h **** 
 255:../cmsis/core_cm0.h **** #define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysT
 256:../cmsis/core_cm0.h **** #define SysTick_CTRL_ENABLE_Msk            (1ul << SysTick_CTRL_ENABLE_Pos)               /*!< SysT
 257:../cmsis/core_cm0.h **** 
 258:../cmsis/core_cm0.h **** /* SysTick Reload Register Definitions */
 259:../cmsis/core_cm0.h **** #define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysT
 260:../cmsis/core_cm0.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFul << SysTick_LOAD_RELOAD_Pos)        /*!< SysT
 261:../cmsis/core_cm0.h **** 
 262:../cmsis/core_cm0.h **** /* SysTick Current Register Definitions */
 263:../cmsis/core_cm0.h **** #define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysT
 264:../cmsis/core_cm0.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFul << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 265:../cmsis/core_cm0.h **** 
 266:../cmsis/core_cm0.h **** /* SysTick Calibration Register Definitions */
 267:../cmsis/core_cm0.h **** #define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysT
 268:../cmsis/core_cm0.h **** #define SysTick_CALIB_NOREF_Msk            (1ul << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 269:../cmsis/core_cm0.h **** 
 270:../cmsis/core_cm0.h **** #define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysT
 271:../cmsis/core_cm0.h **** #define SysTick_CALIB_SKEW_Msk             (1ul << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 272:../cmsis/core_cm0.h **** 
 273:../cmsis/core_cm0.h **** #define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysT
 274:../cmsis/core_cm0.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFul << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 275:../cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_SysTick */
 276:../cmsis/core_cm0.h **** 
 277:../cmsis/core_cm0.h **** 
 278:../cmsis/core_cm0.h **** /** @addtogroup CMSIS_CM0_CoreDebug CMSIS CM0 Core Debug
 279:../cmsis/core_cm0.h ****   memory mapped structure for Core Debug Register
 280:../cmsis/core_cm0.h ****   @{
 281:../cmsis/core_cm0.h ****  */
 282:../cmsis/core_cm0.h **** typedef struct
 283:../cmsis/core_cm0.h **** {
 284:../cmsis/core_cm0.h ****   __IO uint32_t DHCSR;                        /*!< Offset: 0x00  Debug Halting Control and Status R
 285:../cmsis/core_cm0.h ****   __O  uint32_t DCRSR;                        /*!< Offset: 0x04  Debug Core Register Selector Regis
 286:../cmsis/core_cm0.h ****   __IO uint32_t DCRDR;                        /*!< Offset: 0x08  Debug Core Register Data Register 
 287:../cmsis/core_cm0.h ****   __IO uint32_t DEMCR;                        /*!< Offset: 0x0C  Debug Exception and Monitor Contro
 288:../cmsis/core_cm0.h **** } CoreDebug_Type;
 289:../cmsis/core_cm0.h **** 
 290:../cmsis/core_cm0.h **** /* Debug Halting Control and Status Register */
 291:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16                                             /*!< Core
 292:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFul << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
 293:../cmsis/core_cm0.h **** 
 294:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25                                             /*!< Core
 295:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1ul << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
 296:../cmsis/core_cm0.h **** 
 297:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24                                             /*!< Core
 298:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1ul << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
 299:../cmsis/core_cm0.h **** 
 300:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19                                             /*!< Core
 301:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1ul << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
 302:../cmsis/core_cm0.h **** 
 303:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18                                             /*!< Core
 304:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1ul << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
 305:../cmsis/core_cm0.h **** 
 306:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17                                             /*!< Core
 307:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1ul << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
 308:../cmsis/core_cm0.h **** 
 309:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16                                             /*!< Core
 310:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1ul << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
 311:../cmsis/core_cm0.h **** 
 312:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3                                             /*!< Core
 313:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1ul << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
 314:../cmsis/core_cm0.h **** 
 315:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2                                             /*!< Core
 316:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1ul << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
 317:../cmsis/core_cm0.h **** 
 318:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1                                             /*!< Core
 319:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1ul << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
 320:../cmsis/core_cm0.h **** 
 321:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0                                             /*!< Core
 322:../cmsis/core_cm0.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1ul << CoreDebug_DHCSR_C_DEBUGEN_Pos)         /*!< Core
 323:../cmsis/core_cm0.h **** 
 324:../cmsis/core_cm0.h **** /* Debug Core Register Selector Register */
 325:../cmsis/core_cm0.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16                                             /*!< Core
 326:../cmsis/core_cm0.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1ul << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
 327:../cmsis/core_cm0.h **** 
 328:../cmsis/core_cm0.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0                                             /*!< Core
 329:../cmsis/core_cm0.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1Ful << CoreDebug_DCRSR_REGSEL_Pos)         /*!< Core
 330:../cmsis/core_cm0.h **** 
 331:../cmsis/core_cm0.h **** /* Debug Exception and Monitor Control Register */
 332:../cmsis/core_cm0.h **** #define CoreDebug_DEMCR_DWTENA_Pos         24                                             /*!< Core
 333:../cmsis/core_cm0.h **** #define CoreDebug_DEMCR_DWTENA_Msk         (1ul << CoreDebug_DEMCR_DWTENA_Pos)            /*!< Core
 334:../cmsis/core_cm0.h **** 
 335:../cmsis/core_cm0.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10                                             /*!< Core
 336:../cmsis/core_cm0.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1ul << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
 337:../cmsis/core_cm0.h **** 
 338:../cmsis/core_cm0.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0                                             /*!< Core
 339:../cmsis/core_cm0.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1ul << CoreDebug_DEMCR_VC_CORERESET_Pos)      /*!< Core
 340:../cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_CoreDebug */
 341:../cmsis/core_cm0.h **** 
 342:../cmsis/core_cm0.h **** 
 343:../cmsis/core_cm0.h **** /* Memory mapping of Cortex-M0 Hardware */
 344:../cmsis/core_cm0.h **** #define SCS_BASE            (0xE000E000)                              /*!< System Control Space Bas
 345:../cmsis/core_cm0.h **** #define CoreDebug_BASE      (0xE000EDF0)                              /*!< Core Debug Base Address 
 346:../cmsis/core_cm0.h **** #define SysTick_BASE        (SCS_BASE +  0x0010)                      /*!< SysTick Base Address    
 347:../cmsis/core_cm0.h **** #define NVIC_BASE           (SCS_BASE +  0x0100)                      /*!< NVIC Base Address       
 348:../cmsis/core_cm0.h **** #define SCB_BASE            (SCS_BASE +  0x0D00)                      /*!< System Control Block Bas
 349:../cmsis/core_cm0.h **** 
 350:../cmsis/core_cm0.h **** #define SCB                 ((SCB_Type *)           SCB_BASE)         /*!< SCB configuration struct
 351:../cmsis/core_cm0.h **** #define SysTick             ((SysTick_Type *)       SysTick_BASE)     /*!< SysTick configuration st
 352:../cmsis/core_cm0.h **** #define NVIC                ((NVIC_Type *)          NVIC_BASE)        /*!< NVIC configuration struc
 353:../cmsis/core_cm0.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
 354:../cmsis/core_cm0.h **** 
 355:../cmsis/core_cm0.h **** /*@}*/ /* end of group CMSIS_CM0_core_register */
 356:../cmsis/core_cm0.h **** 
 357:../cmsis/core_cm0.h **** 
 358:../cmsis/core_cm0.h **** /*******************************************************************************
 359:../cmsis/core_cm0.h ****  *                Hardware Abstraction Layer
 360:../cmsis/core_cm0.h ****  ******************************************************************************/
 361:../cmsis/core_cm0.h **** 
 362:../cmsis/core_cm0.h **** #if defined ( __CC_ARM   )
 363:../cmsis/core_cm0.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
 364:../cmsis/core_cm0.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
 365:../cmsis/core_cm0.h **** 
 366:../cmsis/core_cm0.h **** #elif defined ( __ICCARM__ )
 367:../cmsis/core_cm0.h ****   #define __ASM           __asm                                       /*!< asm keyword for IAR Comp
 368:../cmsis/core_cm0.h ****   #define __INLINE        inline                                      /*!< inline keyword for IAR C
 369:../cmsis/core_cm0.h **** 
 370:../cmsis/core_cm0.h **** #elif defined   (  __GNUC__  )
 371:../cmsis/core_cm0.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
 372:../cmsis/core_cm0.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
 373:../cmsis/core_cm0.h **** 
 374:../cmsis/core_cm0.h **** #elif defined   (  __TASKING__  )
 375:../cmsis/core_cm0.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 376:../cmsis/core_cm0.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 377:../cmsis/core_cm0.h **** 
 378:../cmsis/core_cm0.h **** #endif
 379:../cmsis/core_cm0.h **** 
 380:../cmsis/core_cm0.h **** 
 381:../cmsis/core_cm0.h **** /* ###################  Compiler specific Intrinsics  ########################### */
 382:../cmsis/core_cm0.h **** 
 383:../cmsis/core_cm0.h **** #if defined ( __CC_ARM   ) /*------------------RealView Compiler -----------------*/
 384:../cmsis/core_cm0.h **** /* ARM armcc specific functions */
 385:../cmsis/core_cm0.h **** 
 386:../cmsis/core_cm0.h **** #define __enable_fault_irq                __enable_fiq
 387:../cmsis/core_cm0.h **** #define __disable_fault_irq               __disable_fiq
 388:../cmsis/core_cm0.h **** 
 389:../cmsis/core_cm0.h **** #define __NOP                             __nop
 390:../cmsis/core_cm0.h **** #define __WFI                             __wfi
 391:../cmsis/core_cm0.h **** #define __WFE                             __wfe
 392:../cmsis/core_cm0.h **** #define __SEV                             __sev
 393:../cmsis/core_cm0.h **** #define __ISB()                           __isb(0)
 394:../cmsis/core_cm0.h **** #define __DSB()                           __dsb(0)
 395:../cmsis/core_cm0.h **** #define __DMB()                           __dmb(0)
 396:../cmsis/core_cm0.h **** #define __REV                             __rev
 397:../cmsis/core_cm0.h **** 
 398:../cmsis/core_cm0.h **** 
 399:../cmsis/core_cm0.h **** /* intrinsic void __enable_irq();     */
 400:../cmsis/core_cm0.h **** /* intrinsic void __disable_irq();    */
 401:../cmsis/core_cm0.h **** 
 402:../cmsis/core_cm0.h **** 
 403:../cmsis/core_cm0.h **** /**
 404:../cmsis/core_cm0.h ****  * @brief  Return the Process Stack Pointer
 405:../cmsis/core_cm0.h ****  *
 406:../cmsis/core_cm0.h ****  * @return ProcessStackPointer
 407:../cmsis/core_cm0.h ****  *
 408:../cmsis/core_cm0.h ****  * Return the actual process stack pointer
 409:../cmsis/core_cm0.h ****  */
 410:../cmsis/core_cm0.h **** extern uint32_t __get_PSP(void);
 411:../cmsis/core_cm0.h **** 
 412:../cmsis/core_cm0.h **** /**
 413:../cmsis/core_cm0.h ****  * @brief  Set the Process Stack Pointer
 414:../cmsis/core_cm0.h ****  *
 415:../cmsis/core_cm0.h ****  * @param  topOfProcStack  Process Stack Pointer
 416:../cmsis/core_cm0.h ****  *
 417:../cmsis/core_cm0.h ****  * Assign the value ProcessStackPointer to the MSP 
 418:../cmsis/core_cm0.h ****  * (process stack pointer) Cortex processor register
 419:../cmsis/core_cm0.h ****  */
 420:../cmsis/core_cm0.h **** extern void __set_PSP(uint32_t topOfProcStack);
 421:../cmsis/core_cm0.h **** 
 422:../cmsis/core_cm0.h **** /**
 423:../cmsis/core_cm0.h ****  * @brief  Return the Main Stack Pointer
 424:../cmsis/core_cm0.h ****  *
 425:../cmsis/core_cm0.h ****  * @return Main Stack Pointer
 426:../cmsis/core_cm0.h ****  *
 427:../cmsis/core_cm0.h ****  * Return the current value of the MSP (main stack pointer)
 428:../cmsis/core_cm0.h ****  * Cortex processor register
 429:../cmsis/core_cm0.h ****  */
 430:../cmsis/core_cm0.h **** extern uint32_t __get_MSP(void);
 431:../cmsis/core_cm0.h **** 
 432:../cmsis/core_cm0.h **** /**
 433:../cmsis/core_cm0.h ****  * @brief  Set the Main Stack Pointer
 434:../cmsis/core_cm0.h ****  *
 435:../cmsis/core_cm0.h ****  * @param  topOfMainStack  Main Stack Pointer
 436:../cmsis/core_cm0.h ****  *
 437:../cmsis/core_cm0.h ****  * Assign the value mainStackPointer to the MSP 
 438:../cmsis/core_cm0.h ****  * (main stack pointer) Cortex processor register
 439:../cmsis/core_cm0.h ****  */
 440:../cmsis/core_cm0.h **** extern void __set_MSP(uint32_t topOfMainStack);
 441:../cmsis/core_cm0.h **** 
 442:../cmsis/core_cm0.h **** /**
 443:../cmsis/core_cm0.h ****  * @brief  Reverse byte order in unsigned short value
 444:../cmsis/core_cm0.h ****  *
 445:../cmsis/core_cm0.h ****  * @param   value  value to reverse
 446:../cmsis/core_cm0.h ****  * @return         reversed value
 447:../cmsis/core_cm0.h ****  *
 448:../cmsis/core_cm0.h ****  * Reverse byte order in unsigned short value
 449:../cmsis/core_cm0.h ****  */
 450:../cmsis/core_cm0.h **** extern uint32_t __REV16(uint16_t value);
 451:../cmsis/core_cm0.h **** 
 452:../cmsis/core_cm0.h **** /**
 453:../cmsis/core_cm0.h ****  * @brief  Reverse byte order in signed short value with sign extension to integer
 454:../cmsis/core_cm0.h ****  *
 455:../cmsis/core_cm0.h ****  * @param   value  value to reverse
 456:../cmsis/core_cm0.h ****  * @return         reversed value
 457:../cmsis/core_cm0.h ****  *
 458:../cmsis/core_cm0.h ****  * Reverse byte order in signed short value with sign extension to integer
 459:../cmsis/core_cm0.h ****  */
 460:../cmsis/core_cm0.h **** extern int32_t __REVSH(int16_t value);
 461:../cmsis/core_cm0.h **** 
 462:../cmsis/core_cm0.h **** 
 463:../cmsis/core_cm0.h **** #if (__ARMCC_VERSION < 400000)
 464:../cmsis/core_cm0.h **** 
 465:../cmsis/core_cm0.h **** /**
 466:../cmsis/core_cm0.h ****  * @brief  Return the Priority Mask value
 467:../cmsis/core_cm0.h ****  *
 468:../cmsis/core_cm0.h ****  * @return PriMask
 469:../cmsis/core_cm0.h ****  *
 470:../cmsis/core_cm0.h ****  * Return state of the priority mask bit from the priority mask register
 471:../cmsis/core_cm0.h ****  */
 472:../cmsis/core_cm0.h **** extern uint32_t __get_PRIMASK(void);
 473:../cmsis/core_cm0.h **** 
 474:../cmsis/core_cm0.h **** /**
 475:../cmsis/core_cm0.h ****  * @brief  Set the Priority Mask value
 476:../cmsis/core_cm0.h ****  *
 477:../cmsis/core_cm0.h ****  * @param   priMask  PriMask
 478:../cmsis/core_cm0.h ****  *
 479:../cmsis/core_cm0.h ****  * Set the priority mask bit in the priority mask register
 480:../cmsis/core_cm0.h ****  */
 481:../cmsis/core_cm0.h **** extern void __set_PRIMASK(uint32_t priMask);
 482:../cmsis/core_cm0.h **** 
 483:../cmsis/core_cm0.h **** /**
 484:../cmsis/core_cm0.h ****  * @brief  Return the Control Register value
 485:../cmsis/core_cm0.h ****  * 
 486:../cmsis/core_cm0.h ****  * @return Control value
 487:../cmsis/core_cm0.h ****  *
 488:../cmsis/core_cm0.h ****  * Return the content of the control register
 489:../cmsis/core_cm0.h ****  */
 490:../cmsis/core_cm0.h **** extern uint32_t __get_CONTROL(void);
 491:../cmsis/core_cm0.h **** 
 492:../cmsis/core_cm0.h **** /**
 493:../cmsis/core_cm0.h ****  * @brief  Set the Control Register value
 494:../cmsis/core_cm0.h ****  *
 495:../cmsis/core_cm0.h ****  * @param  control  Control value
 496:../cmsis/core_cm0.h ****  *
 497:../cmsis/core_cm0.h ****  * Set the control register
 498:../cmsis/core_cm0.h ****  */
 499:../cmsis/core_cm0.h **** extern void __set_CONTROL(uint32_t control);
 500:../cmsis/core_cm0.h **** 
 501:../cmsis/core_cm0.h **** #else  /* (__ARMCC_VERSION >= 400000)  */
 502:../cmsis/core_cm0.h **** 
 503:../cmsis/core_cm0.h **** 
 504:../cmsis/core_cm0.h **** /**
 505:../cmsis/core_cm0.h ****  * @brief  Return the Priority Mask value
 506:../cmsis/core_cm0.h ****  *
 507:../cmsis/core_cm0.h ****  * @return PriMask
 508:../cmsis/core_cm0.h ****  *
 509:../cmsis/core_cm0.h ****  * Return state of the priority mask bit from the priority mask register
 510:../cmsis/core_cm0.h ****  */
 511:../cmsis/core_cm0.h **** static __INLINE uint32_t __get_PRIMASK(void)
 512:../cmsis/core_cm0.h **** {
 513:../cmsis/core_cm0.h ****   register uint32_t __regPriMask         __ASM("primask");
 514:../cmsis/core_cm0.h ****   return(__regPriMask);
 515:../cmsis/core_cm0.h **** }
 516:../cmsis/core_cm0.h **** 
 517:../cmsis/core_cm0.h **** /**
 518:../cmsis/core_cm0.h ****  * @brief  Set the Priority Mask value
 519:../cmsis/core_cm0.h ****  *
 520:../cmsis/core_cm0.h ****  * @param  priMask  PriMask
 521:../cmsis/core_cm0.h ****  *
 522:../cmsis/core_cm0.h ****  * Set the priority mask bit in the priority mask register
 523:../cmsis/core_cm0.h ****  */
 524:../cmsis/core_cm0.h **** static __INLINE void __set_PRIMASK(uint32_t priMask)
 525:../cmsis/core_cm0.h **** {
 526:../cmsis/core_cm0.h ****   register uint32_t __regPriMask         __ASM("primask");
 527:../cmsis/core_cm0.h ****   __regPriMask = (priMask);
 528:../cmsis/core_cm0.h **** }
 529:../cmsis/core_cm0.h **** 
 530:../cmsis/core_cm0.h **** /**
 531:../cmsis/core_cm0.h ****  * @brief  Return the Control Register value
 532:../cmsis/core_cm0.h ****  * 
 533:../cmsis/core_cm0.h ****  * @return Control value
 534:../cmsis/core_cm0.h ****  *
 535:../cmsis/core_cm0.h ****  * Return the content of the control register
 536:../cmsis/core_cm0.h ****  */
 537:../cmsis/core_cm0.h **** static __INLINE uint32_t __get_CONTROL(void)
 538:../cmsis/core_cm0.h **** {
 539:../cmsis/core_cm0.h ****   register uint32_t __regControl         __ASM("control");
 540:../cmsis/core_cm0.h ****   return(__regControl);
 541:../cmsis/core_cm0.h **** }
 542:../cmsis/core_cm0.h **** 
 543:../cmsis/core_cm0.h **** /**
 544:../cmsis/core_cm0.h ****  * @brief  Set the Control Register value
 545:../cmsis/core_cm0.h ****  *
 546:../cmsis/core_cm0.h ****  * @param  control  Control value
 547:../cmsis/core_cm0.h ****  *
 548:../cmsis/core_cm0.h ****  * Set the control register
 549:../cmsis/core_cm0.h ****  */
 550:../cmsis/core_cm0.h **** static __INLINE void __set_CONTROL(uint32_t control)
 551:../cmsis/core_cm0.h **** {
 552:../cmsis/core_cm0.h ****   register uint32_t __regControl         __ASM("control");
 553:../cmsis/core_cm0.h ****   __regControl = control;
 554:../cmsis/core_cm0.h **** }
 555:../cmsis/core_cm0.h **** 
 556:../cmsis/core_cm0.h **** #endif /* __ARMCC_VERSION  */ 
 557:../cmsis/core_cm0.h **** 
 558:../cmsis/core_cm0.h **** 
 559:../cmsis/core_cm0.h **** 
 560:../cmsis/core_cm0.h **** #elif (defined (__ICCARM__)) /*------------------ ICC Compiler -------------------*/
 561:../cmsis/core_cm0.h **** /* IAR iccarm specific functions */
 562:../cmsis/core_cm0.h **** 
 563:../cmsis/core_cm0.h **** #define __enable_irq                              __enable_interrupt        /*!< global Interrupt e
 564:../cmsis/core_cm0.h **** #define __disable_irq                             __disable_interrupt       /*!< global Interrupt d
 565:../cmsis/core_cm0.h **** 
 566:../cmsis/core_cm0.h **** static __INLINE void __enable_fault_irq()         { __ASM ("cpsie f"); }
 567:../cmsis/core_cm0.h **** static __INLINE void __disable_fault_irq()        { __ASM ("cpsid f"); }
 568:../cmsis/core_cm0.h **** 
 569:../cmsis/core_cm0.h **** #define __NOP                                     __no_operation            /*!< no operation intri
 570:../cmsis/core_cm0.h **** static __INLINE  void __WFI()                     { __ASM ("wfi"); }
 571:../cmsis/core_cm0.h **** static __INLINE  void __WFE()                     { __ASM ("wfe"); }
 572:../cmsis/core_cm0.h **** static __INLINE  void __SEV()                     { __ASM ("sev"); }
 573:../cmsis/core_cm0.h **** 
 574:../cmsis/core_cm0.h **** /* intrinsic void __ISB(void)                                     */
 575:../cmsis/core_cm0.h **** /* intrinsic void __DSB(void)                                     */
 576:../cmsis/core_cm0.h **** /* intrinsic void __DMB(void)                                     */
 577:../cmsis/core_cm0.h **** /* intrinsic void __set_PRIMASK();                                */
 578:../cmsis/core_cm0.h **** /* intrinsic void __get_PRIMASK();                                */
 579:../cmsis/core_cm0.h **** 
 580:../cmsis/core_cm0.h **** 
 581:../cmsis/core_cm0.h **** /* intrinsic uint32_t __REV(uint32_t value);                      */
 582:../cmsis/core_cm0.h **** /* intrinsic uint32_t __REVSH(uint32_t value);                    */
 583:../cmsis/core_cm0.h **** 
 584:../cmsis/core_cm0.h **** 
 585:../cmsis/core_cm0.h **** /**
 586:../cmsis/core_cm0.h ****  * @brief  Return the Process Stack Pointer
 587:../cmsis/core_cm0.h ****  *
 588:../cmsis/core_cm0.h ****  * @return ProcessStackPointer
 589:../cmsis/core_cm0.h ****  *
 590:../cmsis/core_cm0.h ****  * Return the actual process stack pointer
 591:../cmsis/core_cm0.h ****  */
 592:../cmsis/core_cm0.h **** extern uint32_t __get_PSP(void);
 593:../cmsis/core_cm0.h **** 
 594:../cmsis/core_cm0.h **** /**
 595:../cmsis/core_cm0.h ****  * @brief  Set the Process Stack Pointer
 596:../cmsis/core_cm0.h ****  *
 597:../cmsis/core_cm0.h ****  * @param  topOfProcStack  Process Stack Pointer
 598:../cmsis/core_cm0.h ****  *
 599:../cmsis/core_cm0.h ****  * Assign the value ProcessStackPointer to the MSP 
 600:../cmsis/core_cm0.h ****  * (process stack pointer) Cortex processor register
 601:../cmsis/core_cm0.h ****  */
 602:../cmsis/core_cm0.h **** extern void __set_PSP(uint32_t topOfProcStack);
 603:../cmsis/core_cm0.h **** 
 604:../cmsis/core_cm0.h **** /**
 605:../cmsis/core_cm0.h ****  * @brief  Return the Main Stack Pointer
 606:../cmsis/core_cm0.h ****  *
 607:../cmsis/core_cm0.h ****  * @return Main Stack Pointer
 608:../cmsis/core_cm0.h ****  *
 609:../cmsis/core_cm0.h ****  * Return the current value of the MSP (main stack pointer)
 610:../cmsis/core_cm0.h ****  * Cortex processor register
 611:../cmsis/core_cm0.h ****  */
 612:../cmsis/core_cm0.h **** extern uint32_t __get_MSP(void);
 613:../cmsis/core_cm0.h **** 
 614:../cmsis/core_cm0.h **** /**
 615:../cmsis/core_cm0.h ****  * @brief  Set the Main Stack Pointer
 616:../cmsis/core_cm0.h ****  *
 617:../cmsis/core_cm0.h ****  * @param  topOfMainStack  Main Stack Pointer
 618:../cmsis/core_cm0.h ****  *
 619:../cmsis/core_cm0.h ****  * Assign the value mainStackPointer to the MSP 
 620:../cmsis/core_cm0.h ****  * (main stack pointer) Cortex processor register
 621:../cmsis/core_cm0.h ****  */
 622:../cmsis/core_cm0.h **** extern void __set_MSP(uint32_t topOfMainStack);
 623:../cmsis/core_cm0.h **** 
 624:../cmsis/core_cm0.h **** /**
 625:../cmsis/core_cm0.h ****  * @brief  Reverse byte order in unsigned short value
 626:../cmsis/core_cm0.h ****  *
 627:../cmsis/core_cm0.h ****  * @param  value  value to reverse
 628:../cmsis/core_cm0.h ****  * @return        reversed value
 629:../cmsis/core_cm0.h ****  *
 630:../cmsis/core_cm0.h ****  * Reverse byte order in unsigned short value
 631:../cmsis/core_cm0.h ****  */
 632:../cmsis/core_cm0.h **** extern uint32_t __REV16(uint16_t value);
 633:../cmsis/core_cm0.h **** 
 634:../cmsis/core_cm0.h **** 
 635:../cmsis/core_cm0.h **** 
 636:../cmsis/core_cm0.h **** 
 637:../cmsis/core_cm0.h **** 
 638:../cmsis/core_cm0.h **** #elif (defined (__GNUC__)) /*------------------ GNU Compiler ---------------------*/
 639:../cmsis/core_cm0.h **** /* GNU gcc specific functions */
 640:../cmsis/core_cm0.h **** 
 641:../cmsis/core_cm0.h **** static __INLINE void __enable_irq()               { __ASM volatile ("cpsie i"); }
 642:../cmsis/core_cm0.h **** static __INLINE void __disable_irq()              { __ASM volatile ("cpsid i"); }
 643:../cmsis/core_cm0.h **** 
 644:../cmsis/core_cm0.h **** static __INLINE void __enable_fault_irq()         { __ASM volatile ("cpsie f"); }
 645:../cmsis/core_cm0.h **** static __INLINE void __disable_fault_irq()        { __ASM volatile ("cpsid f"); }
 646:../cmsis/core_cm0.h **** 
 647:../cmsis/core_cm0.h **** static __INLINE void __NOP()                      { __ASM volatile ("nop"); }
  25              		.loc 1 647 0
  26              		.cfi_startproc
  27 0000 80B5     		push	{r7, lr}
  28              	.LCFI0:
  29              		.cfi_def_cfa_offset 8
  30              		.cfi_offset 7, -8
  31              		.cfi_offset 14, -4
  32 0002 00AF     		add	r7, sp, #0
  33              	.LCFI1:
  34              		.cfi_def_cfa_register 7
  35              		.loc 1 647 0
  36              	@ 647 "../cmsis/core_cm0.h" 1
  37 0004 C046     		nop
  38              	@ 0 "" 2
  39              		.code	16
  40 0006 BD46     		mov	sp, r7
  41              		@ sp needed for prologue
  42 0008 80BD     		pop	{r7, pc}
  43              		.cfi_endproc
  44              	.LFE4:
  46              		.global	SystemCoreClock
  47 000a C046     		.data
  48              		.align	2
  51              	SystemCoreClock:
  52 0000 006CDC02 		.word	48000000
  53              		.global	__aeabi_uidiv
  54              		.section	.text.SystemCoreClockUpdate,"ax",%progbits
  55              		.align	2
  56              		.global	SystemCoreClockUpdate
  57              		.code	16
  58              		.thumb_func
  60              	SystemCoreClockUpdate:
  61              	.LFB20:
  62              		.file 2 "../cmsis/system_LPC11xx.c"
   1:../cmsis/system_LPC11xx.c **** /**************************************************************************//**
   2:../cmsis/system_LPC11xx.c ****  * $Id:: system_LPC11xx.c 5140 2010-10-07 19:30:43Z nxp21346              $
   3:../cmsis/system_LPC11xx.c ****  *
   4:../cmsis/system_LPC11xx.c ****  * @file     system_LPC11xx.c
   5:../cmsis/system_LPC11xx.c ****  * @brief    CMSIS Cortex-M0 Device Peripheral Access Layer Source File
   6:../cmsis/system_LPC11xx.c ****  *           for the NXP LPC11xx Device Series
   7:../cmsis/system_LPC11xx.c ****  * @version  V1.00
   8:../cmsis/system_LPC11xx.c ****  * @date     17. November 2009
   9:../cmsis/system_LPC11xx.c ****  *
  10:../cmsis/system_LPC11xx.c ****  * @note
  11:../cmsis/system_LPC11xx.c ****  * Copyright (C) 2009 ARM Limited. All rights reserved.
  12:../cmsis/system_LPC11xx.c ****  *
  13:../cmsis/system_LPC11xx.c ****  * @par
  14:../cmsis/system_LPC11xx.c ****  * ARM Limited (ARM) is supplying this software for use with Cortex-M 
  15:../cmsis/system_LPC11xx.c ****  * processor based microcontrollers.  This file can be freely distributed 
  16:../cmsis/system_LPC11xx.c ****  * within development tools that are supporting such ARM based processors. 
  17:../cmsis/system_LPC11xx.c ****  *
  18:../cmsis/system_LPC11xx.c ****  * @par
  19:../cmsis/system_LPC11xx.c ****  * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
  20:../cmsis/system_LPC11xx.c ****  * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
  21:../cmsis/system_LPC11xx.c ****  * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
  22:../cmsis/system_LPC11xx.c ****  * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
  23:../cmsis/system_LPC11xx.c ****  * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
  24:../cmsis/system_LPC11xx.c ****  *
  25:../cmsis/system_LPC11xx.c ****  ******************************************************************************/
  26:../cmsis/system_LPC11xx.c **** 
  27:../cmsis/system_LPC11xx.c **** 
  28:../cmsis/system_LPC11xx.c **** #include <stdint.h>
  29:../cmsis/system_LPC11xx.c **** #include "LPC11xx.h"
  30:../cmsis/system_LPC11xx.c **** 
  31:../cmsis/system_LPC11xx.c **** 
  32:../cmsis/system_LPC11xx.c **** /*----------------------------------------------------------------------------
  33:../cmsis/system_LPC11xx.c ****   Check the register settings
  34:../cmsis/system_LPC11xx.c ****  *----------------------------------------------------------------------------*/
  35:../cmsis/system_LPC11xx.c **** #define CHECK_RANGE(val, min, max)                ((val < min) || (val > max))
  36:../cmsis/system_LPC11xx.c **** #define CHECK_RSVD(val, mask)                     (val & mask)
  37:../cmsis/system_LPC11xx.c **** 
  38:../cmsis/system_LPC11xx.c **** /* Clock Configuration -------------------------------------------------------*/
  39:../cmsis/system_LPC11xx.c **** #if (CHECK_RSVD((SYSOSCCTRL_Val),  ~0x00000003))
  40:../cmsis/system_LPC11xx.c ****    #error "SYSOSCCTRL: Invalid values of reserved bits!"
  41:../cmsis/system_LPC11xx.c **** #endif
  42:../cmsis/system_LPC11xx.c **** 
  43:../cmsis/system_LPC11xx.c **** #if (CHECK_RSVD((WDTOSCCTRL_Val),  ~0x000001FF))
  44:../cmsis/system_LPC11xx.c ****    #error "WDTOSCCTRL: Invalid values of reserved bits!"
  45:../cmsis/system_LPC11xx.c **** #endif
  46:../cmsis/system_LPC11xx.c **** 
  47:../cmsis/system_LPC11xx.c **** #if (CHECK_RANGE((SYSPLLCLKSEL_Val), 0, 2))
  48:../cmsis/system_LPC11xx.c ****    #error "SYSPLLCLKSEL: Value out of range!"
  49:../cmsis/system_LPC11xx.c **** #endif
  50:../cmsis/system_LPC11xx.c **** 
  51:../cmsis/system_LPC11xx.c **** #if (CHECK_RSVD((SYSPLLCTRL_Val),  ~0x000001FF))
  52:../cmsis/system_LPC11xx.c ****    #error "SYSPLLCTRL: Invalid values of reserved bits!"
  53:../cmsis/system_LPC11xx.c **** #endif
  54:../cmsis/system_LPC11xx.c **** 
  55:../cmsis/system_LPC11xx.c **** #if (CHECK_RSVD((MAINCLKSEL_Val),  ~0x00000003))
  56:../cmsis/system_LPC11xx.c ****    #error "MAINCLKSEL: Invalid values of reserved bits!"
  57:../cmsis/system_LPC11xx.c **** #endif
  58:../cmsis/system_LPC11xx.c **** 
  59:../cmsis/system_LPC11xx.c **** #if (CHECK_RANGE((SYSAHBCLKDIV_Val), 0, 255))
  60:../cmsis/system_LPC11xx.c ****    #error "SYSAHBCLKDIV: Value out of range!"
  61:../cmsis/system_LPC11xx.c **** #endif
  62:../cmsis/system_LPC11xx.c **** 
  63:../cmsis/system_LPC11xx.c **** #if (CHECK_RSVD((AHBCLKCTRL_Val),  ~0x0001FFFF))
  64:../cmsis/system_LPC11xx.c ****    #error "AHBCLKCTRL: Invalid values of reserved bits!"
  65:../cmsis/system_LPC11xx.c **** #endif
  66:../cmsis/system_LPC11xx.c **** 
  67:../cmsis/system_LPC11xx.c **** #if (CHECK_RANGE((SSP0CLKDIV_Val), 0, 255))
  68:../cmsis/system_LPC11xx.c ****    #error "SSP0CLKDIV: Value out of range!"
  69:../cmsis/system_LPC11xx.c **** #endif
  70:../cmsis/system_LPC11xx.c **** 
  71:../cmsis/system_LPC11xx.c **** #if (CHECK_RANGE((UARTCLKDIV_Val), 0, 255))
  72:../cmsis/system_LPC11xx.c ****    #error "UARTCLKDIV: Value out of range!"
  73:../cmsis/system_LPC11xx.c **** #endif
  74:../cmsis/system_LPC11xx.c **** 
  75:../cmsis/system_LPC11xx.c **** #if (CHECK_RANGE((SSP1CLKDIV_Val), 0, 255))
  76:../cmsis/system_LPC11xx.c ****    #error "SSP1CLKDIV: Value out of range!"
  77:../cmsis/system_LPC11xx.c **** #endif
  78:../cmsis/system_LPC11xx.c **** 
  79:../cmsis/system_LPC11xx.c **** #if (CHECK_RSVD((SYSMEMREMAP_Val), ~0x00000003))
  80:../cmsis/system_LPC11xx.c ****    #error "SYSMEMREMAP: Invalid values of reserved bits!"
  81:../cmsis/system_LPC11xx.c **** #endif
  82:../cmsis/system_LPC11xx.c **** 
  83:../cmsis/system_LPC11xx.c **** 
  84:../cmsis/system_LPC11xx.c **** /*----------------------------------------------------------------------------
  85:../cmsis/system_LPC11xx.c ****   DEFINES
  86:../cmsis/system_LPC11xx.c ****  *----------------------------------------------------------------------------*/
  87:../cmsis/system_LPC11xx.c ****     
  88:../cmsis/system_LPC11xx.c **** /*----------------------------------------------------------------------------
  89:../cmsis/system_LPC11xx.c ****   Define clocks
  90:../cmsis/system_LPC11xx.c ****  *----------------------------------------------------------------------------*/
  91:../cmsis/system_LPC11xx.c **** #define __XTAL            (12000000UL)    /* Oscillator frequency             */
  92:../cmsis/system_LPC11xx.c **** #define __SYS_OSC_CLK     (    __XTAL)    /* Main oscillator frequency        */
  93:../cmsis/system_LPC11xx.c **** #define __IRC_OSC_CLK     (12000000UL)    /* Internal RC oscillator frequency */
  94:../cmsis/system_LPC11xx.c **** 
  95:../cmsis/system_LPC11xx.c **** 
  96:../cmsis/system_LPC11xx.c **** #define __FREQSEL   ((WDTOSCCTRL_Val >> 5) & 0x0F)
  97:../cmsis/system_LPC11xx.c **** #define __DIVSEL   (((WDTOSCCTRL_Val & 0x1F) << 1) + 2)
  98:../cmsis/system_LPC11xx.c **** 
  99:../cmsis/system_LPC11xx.c **** #if (CLOCK_SETUP)                         /* Clock Setup              */
 100:../cmsis/system_LPC11xx.c ****   #if (SYSCLK_SETUP)                      /* System Clock Setup       */
 101:../cmsis/system_LPC11xx.c ****     #if (WDTOSC_SETUP)                    /* Watchdog Oscillator Setup*/
 102:../cmsis/system_LPC11xx.c ****         #if  (__FREQSEL ==  0)
 103:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        ( 400000 / __DIVSEL)
 104:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  1)
 105:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        ( 500000 / __DIVSEL)
 106:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  2)
 107:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        ( 800000 / __DIVSEL)
 108:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  3)
 109:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (1100000 / __DIVSEL)
 110:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  4)
 111:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (1400000 / __DIVSEL)
 112:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  5)
 113:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (1600000 / __DIVSEL)
 114:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  6)
 115:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (1800000 / __DIVSEL)
 116:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  7)
 117:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (2000000 / __DIVSEL)
 118:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  8)
 119:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (2200000 / __DIVSEL)
 120:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL ==  9)
 121:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (2400000 / __DIVSEL)
 122:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL == 10)
 123:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (2600000 / __DIVSEL)
 124:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL == 11)
 125:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (2700000 / __DIVSEL)
 126:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL == 12)
 127:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (2900000 / __DIVSEL)
 128:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL == 13)
 129:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (3100000 / __DIVSEL)
 130:../cmsis/system_LPC11xx.c ****         #elif (__FREQSEL == 14)
 131:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (3200000 / __DIVSEL)
 132:../cmsis/system_LPC11xx.c ****         #else
 133:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (3400000 / __DIVSEL)
 134:../cmsis/system_LPC11xx.c ****         #endif
 135:../cmsis/system_LPC11xx.c ****     #else
 136:../cmsis/system_LPC11xx.c ****           #define __WDT_OSC_CLK        (1600000 / 2)
 137:../cmsis/system_LPC11xx.c ****     #endif  // WDTOSC_SETUP
 138:../cmsis/system_LPC11xx.c **** 
 139:../cmsis/system_LPC11xx.c ****     /* sys_pllclkin calculation */
 140:../cmsis/system_LPC11xx.c ****     #if   ((SYSPLLCLKSEL_Val & 0x03) == 0)
 141:../cmsis/system_LPC11xx.c ****       #define __SYS_PLLCLKIN           (__IRC_OSC_CLK)
 142:../cmsis/system_LPC11xx.c ****     #elif ((SYSPLLCLKSEL_Val & 0x03) == 1)
 143:../cmsis/system_LPC11xx.c ****       #define __SYS_PLLCLKIN           (__SYS_OSC_CLK)
 144:../cmsis/system_LPC11xx.c ****     #elif ((SYSPLLCLKSEL_Val & 0x03) == 2)
 145:../cmsis/system_LPC11xx.c ****       #define __SYS_PLLCLKIN           (__WDT_OSC_CLK)
 146:../cmsis/system_LPC11xx.c ****     #else
 147:../cmsis/system_LPC11xx.c ****       #define __SYS_PLLCLKIN           (0)
 148:../cmsis/system_LPC11xx.c ****     #endif
 149:../cmsis/system_LPC11xx.c **** 
 150:../cmsis/system_LPC11xx.c ****     #if (SYSPLL_SETUP)                    /* System PLL Setup         */
 151:../cmsis/system_LPC11xx.c ****       #define  __SYS_PLLCLKOUT         (__SYS_PLLCLKIN * ((SYSPLLCTRL_Val & 0x01F) + 1))
 152:../cmsis/system_LPC11xx.c ****     #else
 153:../cmsis/system_LPC11xx.c ****       #define  __SYS_PLLCLKOUT         (__SYS_PLLCLKIN * (1))
 154:../cmsis/system_LPC11xx.c ****     #endif  // SYSPLL_SETUP
 155:../cmsis/system_LPC11xx.c **** 
 156:../cmsis/system_LPC11xx.c ****     /* main clock calculation */
 157:../cmsis/system_LPC11xx.c ****     #if   ((MAINCLKSEL_Val & 0x03) == 0)
 158:../cmsis/system_LPC11xx.c ****       #define __MAIN_CLOCK             (__IRC_OSC_CLK)
 159:../cmsis/system_LPC11xx.c ****     #elif ((MAINCLKSEL_Val & 0x03) == 1)
 160:../cmsis/system_LPC11xx.c ****       #define __MAIN_CLOCK             (__SYS_PLLCLKIN)
 161:../cmsis/system_LPC11xx.c ****     #elif ((MAINCLKSEL_Val & 0x03) == 2)
 162:../cmsis/system_LPC11xx.c ****       #define __MAIN_CLOCK             (__WDT_OSC_CLK)
 163:../cmsis/system_LPC11xx.c ****     #elif ((MAINCLKSEL_Val & 0x03) == 3)
 164:../cmsis/system_LPC11xx.c ****       #define __MAIN_CLOCK             (__SYS_PLLCLKOUT)
 165:../cmsis/system_LPC11xx.c ****     #else
 166:../cmsis/system_LPC11xx.c ****       #define __MAIN_CLOCK             (0)
 167:../cmsis/system_LPC11xx.c ****     #endif
 168:../cmsis/system_LPC11xx.c **** 
 169:../cmsis/system_LPC11xx.c ****     #define __SYSTEM_CLOCK             (__MAIN_CLOCK / SYSAHBCLKDIV_Val)         
 170:../cmsis/system_LPC11xx.c **** 
 171:../cmsis/system_LPC11xx.c ****   #else // SYSCLK_SETUP
 172:../cmsis/system_LPC11xx.c ****     #if (SYSAHBCLKDIV_Val == 0)
 173:../cmsis/system_LPC11xx.c ****       #define __SYSTEM_CLOCK           (0)
 174:../cmsis/system_LPC11xx.c ****     #else
 175:../cmsis/system_LPC11xx.c ****       #define __SYSTEM_CLOCK           (__XTAL / SYSAHBCLKDIV_Val)
 176:../cmsis/system_LPC11xx.c ****     #endif
 177:../cmsis/system_LPC11xx.c ****   #endif // SYSCLK_SETUP
 178:../cmsis/system_LPC11xx.c **** 
 179:../cmsis/system_LPC11xx.c **** #else
 180:../cmsis/system_LPC11xx.c ****   #define __SYSTEM_CLOCK               (__XTAL)
 181:../cmsis/system_LPC11xx.c **** #endif  // CLOCK_SETUP 
 182:../cmsis/system_LPC11xx.c **** 
 183:../cmsis/system_LPC11xx.c **** 
 184:../cmsis/system_LPC11xx.c **** /*----------------------------------------------------------------------------
 185:../cmsis/system_LPC11xx.c ****   Clock Variable definitions
 186:../cmsis/system_LPC11xx.c ****  *----------------------------------------------------------------------------*/
 187:../cmsis/system_LPC11xx.c **** uint32_t SystemCoreClock = __SYSTEM_CLOCK;/*!< System Clock Frequency (Core Clock)*/
 188:../cmsis/system_LPC11xx.c **** 
 189:../cmsis/system_LPC11xx.c **** #if CONFIG_ENABLE_CMSIS_SYSTEMCORECLOCKUPDATE==1 || !defined(CONFIG_ENABLE_CMSIS_SYSTEMCORECLOCKUPD
 190:../cmsis/system_LPC11xx.c **** /*----------------------------------------------------------------------------
 191:../cmsis/system_LPC11xx.c ****   Clock functions
 192:../cmsis/system_LPC11xx.c ****  *----------------------------------------------------------------------------*/
 193:../cmsis/system_LPC11xx.c **** void SystemCoreClockUpdate (void)            /* Get Core Clock Frequency      */
 194:../cmsis/system_LPC11xx.c **** {
  63              		.loc 2 194 0
  64              		.cfi_startproc
  65 0000 90B5     		push	{r4, r7, lr}
  66              	.LCFI2:
  67              		.cfi_def_cfa_offset 12
  68              		.cfi_offset 4, -12
  69              		.cfi_offset 7, -8
  70              		.cfi_offset 14, -4
  71 0002 83B0     		sub	sp, sp, #12
  72              	.LCFI3:
  73              		.cfi_def_cfa_offset 24
  74 0004 00AF     		add	r7, sp, #0
  75              	.LCFI4:
  76              		.cfi_def_cfa_register 7
 195:../cmsis/system_LPC11xx.c ****   uint32_t wdt_osc = 0;
  77              		.loc 2 195 0
  78 0006 0023     		mov	r3, #0
  79 0008 7B60     		str	r3, [r7, #4]
 196:../cmsis/system_LPC11xx.c **** 
 197:../cmsis/system_LPC11xx.c ****   /* Determine clock frequency according to clock register values             */
 198:../cmsis/system_LPC11xx.c ****   switch ((LPC_SYSCON->WDTOSCCTRL >> 5) & 0x0F) {
  80              		.loc 2 198 0
  81 000a 754B     		ldr	r3, .L42
  82 000c 5B6A     		ldr	r3, [r3, #36]
  83 000e 5A09     		lsr	r2, r3, #5
  84 0010 0F23     		mov	r3, #15
  85 0012 1340     		and	r3, r2
  86 0014 0F2B     		cmp	r3, #15
  87 0016 34D8     		bhi	.L3
  88 0018 9A00     		lsl	r2, r3, #2
  89 001a 724B     		ldr	r3, .L42+4
  90 001c D318     		add	r3, r2, r3
  91 001e 1B68     		ldr	r3, [r3]
  92 0020 9F46     		mov	pc, r3
  93              		.section	.rodata
  94              		.align	2
  95              	.L20:
  96 0000 22000000 		.word	.L4
  97 0004 28000000 		.word	.L5
  98 0008 2E000000 		.word	.L6
  99 000c 34000000 		.word	.L7
 100 0010 3A000000 		.word	.L8
 101 0014 40000000 		.word	.L9
 102 0018 46000000 		.word	.L10
 103 001c 4C000000 		.word	.L11
 104 0020 52000000 		.word	.L12
 105 0024 58000000 		.word	.L13
 106 0028 5E000000 		.word	.L14
 107 002c 64000000 		.word	.L15
 108 0030 6A000000 		.word	.L16
 109 0034 70000000 		.word	.L17
 110 0038 76000000 		.word	.L18
 111 003c 7C000000 		.word	.L19
 112              		.section	.text.SystemCoreClockUpdate
 113              	.L4:
 199:../cmsis/system_LPC11xx.c ****     case 0:  wdt_osc =  400000; break;
 114              		.loc 2 199 0
 115 0022 714B     		ldr	r3, .L42+8
 116 0024 7B60     		str	r3, [r7, #4]
 117 0026 2CE0     		b	.L3
 118              	.L5:
 200:../cmsis/system_LPC11xx.c ****     case 1:  wdt_osc =  500000; break;
 119              		.loc 2 200 0
 120 0028 704B     		ldr	r3, .L42+12
 121 002a 7B60     		str	r3, [r7, #4]
 122 002c 29E0     		b	.L3
 123              	.L6:
 201:../cmsis/system_LPC11xx.c ****     case 2:  wdt_osc =  800000; break;
 124              		.loc 2 201 0
 125 002e 704B     		ldr	r3, .L42+16
 126 0030 7B60     		str	r3, [r7, #4]
 127 0032 26E0     		b	.L3
 128              	.L7:
 202:../cmsis/system_LPC11xx.c ****     case 3:  wdt_osc = 1100000; break;
 129              		.loc 2 202 0
 130 0034 6F4B     		ldr	r3, .L42+20
 131 0036 7B60     		str	r3, [r7, #4]
 132 0038 23E0     		b	.L3
 133              	.L8:
 203:../cmsis/system_LPC11xx.c ****     case 4:  wdt_osc = 1400000; break;
 134              		.loc 2 203 0
 135 003a 6F4B     		ldr	r3, .L42+24
 136 003c 7B60     		str	r3, [r7, #4]
 137 003e 20E0     		b	.L3
 138              	.L9:
 204:../cmsis/system_LPC11xx.c ****     case 5:  wdt_osc = 1600000; break;
 139              		.loc 2 204 0
 140 0040 6E4B     		ldr	r3, .L42+28
 141 0042 7B60     		str	r3, [r7, #4]
 142 0044 1DE0     		b	.L3
 143              	.L10:
 205:../cmsis/system_LPC11xx.c ****     case 6:  wdt_osc = 1800000; break;
 144              		.loc 2 205 0
 145 0046 6E4B     		ldr	r3, .L42+32
 146 0048 7B60     		str	r3, [r7, #4]
 147 004a 1AE0     		b	.L3
 148              	.L11:
 206:../cmsis/system_LPC11xx.c ****     case 7:  wdt_osc = 2000000; break;
 149              		.loc 2 206 0
 150 004c 6D4B     		ldr	r3, .L42+36
 151 004e 7B60     		str	r3, [r7, #4]
 152 0050 17E0     		b	.L3
 153              	.L12:
 207:../cmsis/system_LPC11xx.c ****     case 8:  wdt_osc = 2200000; break;
 154              		.loc 2 207 0
 155 0052 6D4B     		ldr	r3, .L42+40
 156 0054 7B60     		str	r3, [r7, #4]
 157 0056 14E0     		b	.L3
 158              	.L13:
 208:../cmsis/system_LPC11xx.c ****     case 9:  wdt_osc = 2400000; break;
 159              		.loc 2 208 0
 160 0058 6C4B     		ldr	r3, .L42+44
 161 005a 7B60     		str	r3, [r7, #4]
 162 005c 11E0     		b	.L3
 163              	.L14:
 209:../cmsis/system_LPC11xx.c ****     case 10: wdt_osc = 2600000; break;
 164              		.loc 2 209 0
 165 005e 6C4B     		ldr	r3, .L42+48
 166 0060 7B60     		str	r3, [r7, #4]
 167 0062 0EE0     		b	.L3
 168              	.L15:
 210:../cmsis/system_LPC11xx.c ****     case 11: wdt_osc = 2700000; break;
 169              		.loc 2 210 0
 170 0064 6B4B     		ldr	r3, .L42+52
 171 0066 7B60     		str	r3, [r7, #4]
 172 0068 0BE0     		b	.L3
 173              	.L16:
 211:../cmsis/system_LPC11xx.c ****     case 12: wdt_osc = 2900000; break;
 174              		.loc 2 211 0
 175 006a 6B4B     		ldr	r3, .L42+56
 176 006c 7B60     		str	r3, [r7, #4]
 177 006e 08E0     		b	.L3
 178              	.L17:
 212:../cmsis/system_LPC11xx.c ****     case 13: wdt_osc = 3100000; break;
 179              		.loc 2 212 0
 180 0070 6A4B     		ldr	r3, .L42+60
 181 0072 7B60     		str	r3, [r7, #4]
 182 0074 05E0     		b	.L3
 183              	.L18:
 213:../cmsis/system_LPC11xx.c ****     case 14: wdt_osc = 3200000; break;
 184              		.loc 2 213 0
 185 0076 6A4B     		ldr	r3, .L42+64
 186 0078 7B60     		str	r3, [r7, #4]
 187 007a 02E0     		b	.L3
 188              	.L19:
 214:../cmsis/system_LPC11xx.c ****     case 15: wdt_osc = 3400000; break;
 189              		.loc 2 214 0
 190 007c 694B     		ldr	r3, .L42+68
 191 007e 7B60     		str	r3, [r7, #4]
 192 0080 C046     		mov	r8, r8
 193              	.L3:
 215:../cmsis/system_LPC11xx.c ****   }
 216:../cmsis/system_LPC11xx.c ****   wdt_osc /= ((LPC_SYSCON->WDTOSCCTRL & 0x1F) << 1) + 2;
 194              		.loc 2 216 0
 195 0082 574B     		ldr	r3, .L42
 196 0084 5B6A     		ldr	r3, [r3, #36]
 197 0086 1A1C     		mov	r2, r3
 198 0088 1F23     		mov	r3, #31
 199 008a 1340     		and	r3, r2
 200 008c 5B00     		lsl	r3, r3, #1
 201 008e 0233     		add	r3, r3, #2
 202 0090 7868     		ldr	r0, [r7, #4]
 203 0092 191C     		mov	r1, r3
 204 0094 FFF7FEFF 		bl	__aeabi_uidiv
 205 0098 031C     		mov	r3, r0
 206 009a 7B60     		str	r3, [r7, #4]
 217:../cmsis/system_LPC11xx.c ****  
 218:../cmsis/system_LPC11xx.c ****   switch (LPC_SYSCON->MAINCLKSEL & 0x03) {
 207              		.loc 2 218 0
 208 009c 504B     		ldr	r3, .L42
 209 009e 1B6F     		ldr	r3, [r3, #112]
 210 00a0 1A1C     		mov	r2, r3
 211 00a2 0323     		mov	r3, #3
 212 00a4 1340     		and	r3, r2
 213 00a6 012B     		cmp	r3, #1
 214 00a8 09D0     		beq	.L23
 215 00aa 04D3     		bcc	.L22
 216 00ac 022B     		cmp	r3, #2
 217 00ae 24D0     		beq	.L24
 218 00b0 032B     		cmp	r3, #3
 219 00b2 26D0     		beq	.L25
 220 00b4 79E0     		b	.L21
 221              	.L22:
 219:../cmsis/system_LPC11xx.c ****     case 0:                             /* Internal RC oscillator             */
 220:../cmsis/system_LPC11xx.c ****       SystemCoreClock = __IRC_OSC_CLK;
 222              		.loc 2 220 0
 223 00b6 5C4B     		ldr	r3, .L42+72
 224 00b8 5C4A     		ldr	r2, .L42+76
 225 00ba 1A60     		str	r2, [r3]
 221:../cmsis/system_LPC11xx.c ****       break;
 226              		.loc 2 221 0
 227 00bc 75E0     		b	.L21
 228              	.L23:
 222:../cmsis/system_LPC11xx.c ****     case 1:                             /* Input Clock to System PLL          */
 223:../cmsis/system_LPC11xx.c ****       switch (LPC_SYSCON->SYSPLLCLKSEL & 0x03) {
 229              		.loc 2 223 0
 230 00be 484B     		ldr	r3, .L42
 231 00c0 1B6C     		ldr	r3, [r3, #64]
 232 00c2 1A1C     		mov	r2, r3
 233 00c4 0323     		mov	r3, #3
 234 00c6 1340     		and	r3, r2
 235 00c8 012B     		cmp	r3, #1
 236 00ca 09D0     		beq	.L28
 237 00cc 04D3     		bcc	.L27
 238 00ce 022B     		cmp	r3, #2
 239 00d0 0AD0     		beq	.L29
 240 00d2 032B     		cmp	r3, #3
 241 00d4 0CD0     		beq	.L30
 242 00d6 0FE0     		b	.L26
 243              	.L27:
 224:../cmsis/system_LPC11xx.c ****           case 0:                       /* Internal RC oscillator             */
 225:../cmsis/system_LPC11xx.c ****             SystemCoreClock = __IRC_OSC_CLK;
 244              		.loc 2 225 0
 245 00d8 534B     		ldr	r3, .L42+72
 246 00da 544A     		ldr	r2, .L42+76
 247 00dc 1A60     		str	r2, [r3]
 226:../cmsis/system_LPC11xx.c ****             break;
 248              		.loc 2 226 0
 249 00de 0BE0     		b	.L26
 250              	.L28:
 227:../cmsis/system_LPC11xx.c ****           case 1:                       /* System oscillator                  */
 228:../cmsis/system_LPC11xx.c ****             SystemCoreClock = __SYS_OSC_CLK;
 251              		.loc 2 228 0
 252 00e0 514B     		ldr	r3, .L42+72
 253 00e2 524A     		ldr	r2, .L42+76
 254 00e4 1A60     		str	r2, [r3]
 229:../cmsis/system_LPC11xx.c ****             break;
 255              		.loc 2 229 0
 256 00e6 07E0     		b	.L26
 257              	.L29:
 230:../cmsis/system_LPC11xx.c ****           case 2:                       /* WDT Oscillator                     */
 231:../cmsis/system_LPC11xx.c ****             SystemCoreClock = wdt_osc;
 258              		.loc 2 231 0
 259 00e8 4F4B     		ldr	r3, .L42+72
 260 00ea 7A68     		ldr	r2, [r7, #4]
 261 00ec 1A60     		str	r2, [r3]
 232:../cmsis/system_LPC11xx.c ****             break;
 262              		.loc 2 232 0
 263 00ee 03E0     		b	.L26
 264              	.L30:
 233:../cmsis/system_LPC11xx.c ****           case 3:                       /* Reserved                           */
 234:../cmsis/system_LPC11xx.c ****             SystemCoreClock = 0;
 265              		.loc 2 234 0
 266 00f0 4D4B     		ldr	r3, .L42+72
 267 00f2 0022     		mov	r2, #0
 268 00f4 1A60     		str	r2, [r3]
 235:../cmsis/system_LPC11xx.c ****             break;
 269              		.loc 2 235 0
 270 00f6 C046     		mov	r8, r8
 271              	.L26:
 236:../cmsis/system_LPC11xx.c ****       }
 237:../cmsis/system_LPC11xx.c ****       break;
 272              		.loc 2 237 0
 273 00f8 57E0     		b	.L21
 274              	.L24:
 238:../cmsis/system_LPC11xx.c ****     case 2:                             /* WDT Oscillator                     */
 239:../cmsis/system_LPC11xx.c ****       SystemCoreClock = wdt_osc;
 275              		.loc 2 239 0
 276 00fa 4B4B     		ldr	r3, .L42+72
 277 00fc 7A68     		ldr	r2, [r7, #4]
 278 00fe 1A60     		str	r2, [r3]
 240:../cmsis/system_LPC11xx.c ****       break;
 279              		.loc 2 240 0
 280 0100 53E0     		b	.L21
 281              	.L25:
 241:../cmsis/system_LPC11xx.c ****     case 3:                             /* System PLL Clock Out               */
 242:../cmsis/system_LPC11xx.c ****       switch (LPC_SYSCON->SYSPLLCLKSEL & 0x03) {
 282              		.loc 2 242 0
 283 0102 374B     		ldr	r3, .L42
 284 0104 1B6C     		ldr	r3, [r3, #64]
 285 0106 1A1C     		mov	r2, r3
 286 0108 0323     		mov	r3, #3
 287 010a 1340     		and	r3, r2
 288 010c 012B     		cmp	r3, #1
 289 010e 1BD0     		beq	.L33
 290 0110 04D3     		bcc	.L32
 291 0112 022B     		cmp	r3, #2
 292 0114 2ED0     		beq	.L34
 293 0116 032B     		cmp	r3, #3
 294 0118 42D0     		beq	.L35
 295 011a 45E0     		b	.L31
 296              	.L32:
 243:../cmsis/system_LPC11xx.c ****           case 0:                       /* Internal RC oscillator             */
 244:../cmsis/system_LPC11xx.c ****             if (LPC_SYSCON->SYSPLLCTRL & 0x180) {
 297              		.loc 2 244 0
 298 011c 304B     		ldr	r3, .L42
 299 011e 9B68     		ldr	r3, [r3, #8]
 300 0120 1A1C     		mov	r2, r3
 301 0122 C023     		mov	r3, #192
 302 0124 5B00     		lsl	r3, r3, #1
 303 0126 1340     		and	r3, r2
 304 0128 03D0     		beq	.L36
 245:../cmsis/system_LPC11xx.c ****               SystemCoreClock = __IRC_OSC_CLK;
 305              		.loc 2 245 0
 306 012a 3F4B     		ldr	r3, .L42+72
 307 012c 3F4A     		ldr	r2, .L42+76
 308 012e 1A60     		str	r2, [r3]
 246:../cmsis/system_LPC11xx.c ****             } else {
 247:../cmsis/system_LPC11xx.c ****               SystemCoreClock = __IRC_OSC_CLK * ((LPC_SYSCON->SYSPLLCTRL & 0x01F) + 1);
 248:../cmsis/system_LPC11xx.c ****             }
 249:../cmsis/system_LPC11xx.c ****             break;
 309              		.loc 2 249 0
 310 0130 3AE0     		b	.L31
 311              	.L36:
 247:../cmsis/system_LPC11xx.c ****               SystemCoreClock = __IRC_OSC_CLK * ((LPC_SYSCON->SYSPLLCTRL & 0x01F) + 1);
 312              		.loc 2 247 0
 313 0132 2B4B     		ldr	r3, .L42
 314 0134 9B68     		ldr	r3, [r3, #8]
 315 0136 1A1C     		mov	r2, r3
 316 0138 1F23     		mov	r3, #31
 317 013a 1340     		and	r3, r2
 318 013c 0133     		add	r3, r3, #1
 319 013e 3B4A     		ldr	r2, .L42+76
 320 0140 5A43     		mul	r2, r3
 321 0142 394B     		ldr	r3, .L42+72
 322 0144 1A60     		str	r2, [r3]
 323              		.loc 2 249 0
 324 0146 2FE0     		b	.L31
 325              	.L33:
 250:../cmsis/system_LPC11xx.c ****           case 1:                       /* System oscillator                  */
 251:../cmsis/system_LPC11xx.c ****             if (LPC_SYSCON->SYSPLLCTRL & 0x180) {
 326              		.loc 2 251 0
 327 0148 254B     		ldr	r3, .L42
 328 014a 9B68     		ldr	r3, [r3, #8]
 329 014c 1A1C     		mov	r2, r3
 330 014e C023     		mov	r3, #192
 331 0150 5B00     		lsl	r3, r3, #1
 332 0152 1340     		and	r3, r2
 333 0154 03D0     		beq	.L38
 252:../cmsis/system_LPC11xx.c ****               SystemCoreClock = __SYS_OSC_CLK;
 334              		.loc 2 252 0
 335 0156 344B     		ldr	r3, .L42+72
 336 0158 344A     		ldr	r2, .L42+76
 337 015a 1A60     		str	r2, [r3]
 253:../cmsis/system_LPC11xx.c ****             } else {
 254:../cmsis/system_LPC11xx.c ****               SystemCoreClock = __SYS_OSC_CLK * ((LPC_SYSCON->SYSPLLCTRL & 0x01F) + 1);
 255:../cmsis/system_LPC11xx.c ****             }
 256:../cmsis/system_LPC11xx.c ****             break;
 338              		.loc 2 256 0
 339 015c 24E0     		b	.L31
 340              	.L38:
 254:../cmsis/system_LPC11xx.c ****               SystemCoreClock = __SYS_OSC_CLK * ((LPC_SYSCON->SYSPLLCTRL & 0x01F) + 1);
 341              		.loc 2 254 0
 342 015e 204B     		ldr	r3, .L42
 343 0160 9B68     		ldr	r3, [r3, #8]
 344 0162 1A1C     		mov	r2, r3
 345 0164 1F23     		mov	r3, #31
 346 0166 1340     		and	r3, r2
 347 0168 0133     		add	r3, r3, #1
 348 016a 304A     		ldr	r2, .L42+76
 349 016c 5A43     		mul	r2, r3
 350 016e 2E4B     		ldr	r3, .L42+72
 351 0170 1A60     		str	r2, [r3]
 352              		.loc 2 256 0
 353 0172 19E0     		b	.L31
 354              	.L34:
 257:../cmsis/system_LPC11xx.c ****           case 2:                       /* WDT Oscillator                     */
 258:../cmsis/system_LPC11xx.c ****             if (LPC_SYSCON->SYSPLLCTRL & 0x180) {
 355              		.loc 2 258 0
 356 0174 1A4B     		ldr	r3, .L42
 357 0176 9B68     		ldr	r3, [r3, #8]
 358 0178 1A1C     		mov	r2, r3
 359 017a C023     		mov	r3, #192
 360 017c 5B00     		lsl	r3, r3, #1
 361 017e 1340     		and	r3, r2
 362 0180 03D0     		beq	.L40
 259:../cmsis/system_LPC11xx.c ****               SystemCoreClock = wdt_osc;
 363              		.loc 2 259 0
 364 0182 294B     		ldr	r3, .L42+72
 365 0184 7A68     		ldr	r2, [r7, #4]
 366 0186 1A60     		str	r2, [r3]
 260:../cmsis/system_LPC11xx.c ****             } else {
 261:../cmsis/system_LPC11xx.c ****               SystemCoreClock = wdt_osc * ((LPC_SYSCON->SYSPLLCTRL & 0x01F) + 1);
 262:../cmsis/system_LPC11xx.c ****             }
 263:../cmsis/system_LPC11xx.c ****             break;
 367              		.loc 2 263 0
 368 0188 0EE0     		b	.L31
 369              	.L40:
 261:../cmsis/system_LPC11xx.c ****               SystemCoreClock = wdt_osc * ((LPC_SYSCON->SYSPLLCTRL & 0x01F) + 1);
 370              		.loc 2 261 0
 371 018a 154B     		ldr	r3, .L42
 372 018c 9B68     		ldr	r3, [r3, #8]
 373 018e 1A1C     		mov	r2, r3
 374 0190 1F23     		mov	r3, #31
 375 0192 1340     		and	r3, r2
 376 0194 0133     		add	r3, r3, #1
 377 0196 7A68     		ldr	r2, [r7, #4]
 378 0198 5A43     		mul	r2, r3
 379 019a 234B     		ldr	r3, .L42+72
 380 019c 1A60     		str	r2, [r3]
 381              		.loc 2 263 0
 382 019e 03E0     		b	.L31
 383              	.L35:
 264:../cmsis/system_LPC11xx.c ****           case 3:                       /* Reserved                           */
 265:../cmsis/system_LPC11xx.c ****             SystemCoreClock = 0;
 384              		.loc 2 265 0
 385 01a0 214B     		ldr	r3, .L42+72
 386 01a2 0022     		mov	r2, #0
 387 01a4 1A60     		str	r2, [r3]
 266:../cmsis/system_LPC11xx.c ****             break;
 388              		.loc 2 266 0
 389 01a6 C046     		mov	r8, r8
 390              	.L31:
 267:../cmsis/system_LPC11xx.c ****       }
 268:../cmsis/system_LPC11xx.c ****       break;
 391              		.loc 2 268 0
 392 01a8 C046     		mov	r8, r8
 393              	.L21:
 269:../cmsis/system_LPC11xx.c ****   }
 270:../cmsis/system_LPC11xx.c **** 
 271:../cmsis/system_LPC11xx.c ****   SystemCoreClock /= LPC_SYSCON->SYSAHBCLKDIV;  
 394              		.loc 2 271 0
 395 01aa 1F4B     		ldr	r3, .L42+72
 396 01ac 1A68     		ldr	r2, [r3]
 397 01ae 0C4B     		ldr	r3, .L42
 398 01b0 9B6F     		ldr	r3, [r3, #120]
 399 01b2 101C     		mov	r0, r2
 400 01b4 191C     		mov	r1, r3
 401 01b6 FFF7FEFF 		bl	__aeabi_uidiv
 402 01ba 031C     		mov	r3, r0
 403 01bc 1A1C     		mov	r2, r3
 404 01be 1A4B     		ldr	r3, .L42+72
 405 01c0 1A60     		str	r2, [r3]
 272:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSTCKCAL = (SystemCoreClock / 100) - 1;
 406              		.loc 2 272 0
 407 01c2 074C     		ldr	r4, .L42
 408 01c4 184B     		ldr	r3, .L42+72
 409 01c6 1B68     		ldr	r3, [r3]
 410 01c8 181C     		mov	r0, r3
 411 01ca 6421     		mov	r1, #100
 412 01cc FFF7FEFF 		bl	__aeabi_uidiv
 413 01d0 031C     		mov	r3, r0
 414 01d2 5A1E     		sub	r2, r3, #1
 415 01d4 AA23     		mov	r3, #170
 416 01d6 5B00     		lsl	r3, r3, #1
 417 01d8 E250     		str	r2, [r4, r3]
 273:../cmsis/system_LPC11xx.c **** }
 418              		.loc 2 273 0
 419 01da BD46     		mov	sp, r7
 420 01dc 03B0     		add	sp, sp, #12
 421              		@ sp needed for prologue
 422 01de 90BD     		pop	{r4, r7, pc}
 423              	.L43:
 424              		.align	2
 425              	.L42:
 426 01e0 00800440 		.word	1074036736
 427 01e4 00000000 		.word	.L20
 428 01e8 801A0600 		.word	400000
 429 01ec 20A10700 		.word	500000
 430 01f0 00350C00 		.word	800000
 431 01f4 E0C81000 		.word	1100000
 432 01f8 C05C1500 		.word	1400000
 433 01fc 006A1800 		.word	1600000
 434 0200 40771B00 		.word	1800000
 435 0204 80841E00 		.word	2000000
 436 0208 C0912100 		.word	2200000
 437 020c 009F2400 		.word	2400000
 438 0210 40AC2700 		.word	2600000
 439 0214 E0322900 		.word	2700000
 440 0218 20402C00 		.word	2900000
 441 021c 604D2F00 		.word	3100000
 442 0220 00D43000 		.word	3200000
 443 0224 40E13300 		.word	3400000
 444 0228 00000000 		.word	SystemCoreClock
 445 022c 001BB700 		.word	12000000
 446              		.cfi_endproc
 447              	.LFE20:
 449              		.section	.text.SystemInit,"ax",%progbits
 450              		.align	2
 451              		.global	SystemInit
 452              		.code	16
 453              		.thumb_func
 455              	SystemInit:
 456              	.LFB21:
 274:../cmsis/system_LPC11xx.c **** #else
 275:../cmsis/system_LPC11xx.c **** void SystemCoreClockUpdate (void)            /* Get Core Clock Frequency      */
 276:../cmsis/system_LPC11xx.c **** {
 277:../cmsis/system_LPC11xx.c **** 	SystemCoreClock = CONFIG_CMSIS_SET_SYSTEMCORECLOCK_DEFAULT;
 278:../cmsis/system_LPC11xx.c **** }
 279:../cmsis/system_LPC11xx.c **** #endif
 280:../cmsis/system_LPC11xx.c **** #if CONFIG_ENABLE_CMSIS_SYSTEMINIT==1 || !defined(CONFIG_ENABLE_CMSIS_SYSTEMINIT)
 281:../cmsis/system_LPC11xx.c **** 
 282:../cmsis/system_LPC11xx.c **** /**
 283:../cmsis/system_LPC11xx.c ****  * Initialize the system
 284:../cmsis/system_LPC11xx.c ****  *
 285:../cmsis/system_LPC11xx.c ****  * @param  none
 286:../cmsis/system_LPC11xx.c ****  * @return none
 287:../cmsis/system_LPC11xx.c ****  *
 288:../cmsis/system_LPC11xx.c ****  * @brief  Setup the microcontroller system.
 289:../cmsis/system_LPC11xx.c ****  *         Initialize the System.
 290:../cmsis/system_LPC11xx.c ****  */
 291:../cmsis/system_LPC11xx.c **** extern void (* const g_pfnVectors[])(void);
 292:../cmsis/system_LPC11xx.c **** 
 293:../cmsis/system_LPC11xx.c **** void SystemInit (void)
 294:../cmsis/system_LPC11xx.c **** {
 457              		.loc 2 294 0
 458              		.cfi_startproc
 459 0000 80B5     		push	{r7, lr}
 460              	.LCFI5:
 461              		.cfi_def_cfa_offset 8
 462              		.cfi_offset 7, -8
 463              		.cfi_offset 14, -4
 464 0002 82B0     		sub	sp, sp, #8
 465              	.LCFI6:
 466              		.cfi_def_cfa_offset 16
 467 0004 00AF     		add	r7, sp, #0
 468              	.LCFI7:
 469              		.cfi_def_cfa_register 7
 295:../cmsis/system_LPC11xx.c **** 	void * volatile v = (void *)&g_pfnVectors[0];
 470              		.loc 2 295 0
 471 0006 3D4B     		ldr	r3, .L51
 472 0008 3B60     		str	r3, [r7]
 296:../cmsis/system_LPC11xx.c **** 
 297:../cmsis/system_LPC11xx.c **** 	// If vector table symbol is not at vector table address (0)
 298:../cmsis/system_LPC11xx.c ****     if(v != 0)
 473              		.loc 2 298 0
 474 000a 3B68     		ldr	r3, [r7]
 475 000c 002B     		cmp	r3, #0
 476 000e 07D0     		beq	.L45
 299:../cmsis/system_LPC11xx.c ****     {
 300:../cmsis/system_LPC11xx.c ****     	// Then assume need to map vectors to RAM
 301:../cmsis/system_LPC11xx.c ****     	LPC_SYSCON->SYSMEMREMAP = ((LPC_SYSCON->SYSMEMREMAP)& ~3) | 1;
 477              		.loc 2 301 0
 478 0010 3B4B     		ldr	r3, .L51+4
 479 0012 3B4A     		ldr	r2, .L51+4
 480 0014 1268     		ldr	r2, [r2]
 481 0016 0321     		mov	r1, #3
 482 0018 8A43     		bic	r2, r1
 483 001a 0121     		mov	r1, #1
 484 001c 0A43     		orr	r2, r1
 485 001e 1A60     		str	r2, [r3]
 486              	.L45:
 302:../cmsis/system_LPC11xx.c ****     }// else
 303:../cmsis/system_LPC11xx.c ****      //	LPC_SYSCON->SYSMEMREMAP |= 3; // Map to flash
 304:../cmsis/system_LPC11xx.c **** 
 305:../cmsis/system_LPC11xx.c **** #if (CLOCK_SETUP)                                 /* Clock Setup              */
 306:../cmsis/system_LPC11xx.c **** #if (SYSCLK_SETUP)                                /* System Clock Setup       */
 307:../cmsis/system_LPC11xx.c **** #if (SYSOSC_SETUP)                                /* System Oscillator Setup  */
 308:../cmsis/system_LPC11xx.c ****   uint32_t i;
 309:../cmsis/system_LPC11xx.c **** 
 310:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->PDRUNCFG     &= ~(1 << 5);          /* Power-up System Osc      */
 487              		.loc 2 310 0
 488 0020 374A     		ldr	r2, .L51+4
 489 0022 3749     		ldr	r1, .L51+4
 490 0024 8E23     		mov	r3, #142
 491 0026 9B00     		lsl	r3, r3, #2
 492 0028 CB58     		ldr	r3, [r1, r3]
 493 002a 2021     		mov	r1, #32
 494 002c 181C     		mov	r0, r3
 495 002e 8843     		bic	r0, r1
 496 0030 011C     		mov	r1, r0
 497 0032 8E23     		mov	r3, #142
 498 0034 9B00     		lsl	r3, r3, #2
 499 0036 D150     		str	r1, [r2, r3]
 311:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSOSCCTRL    = SYSOSCCTRL_Val;
 500              		.loc 2 311 0
 501 0038 314B     		ldr	r3, .L51+4
 502 003a 0022     		mov	r2, #0
 503 003c 1A62     		str	r2, [r3, #32]
 312:../cmsis/system_LPC11xx.c ****   for (i = 0; i < 200; i++) __NOP();
 504              		.loc 2 312 0
 505 003e 0023     		mov	r3, #0
 506 0040 7B60     		str	r3, [r7, #4]
 507 0042 04E0     		b	.L46
 508              	.L47:
 509              		.loc 2 312 0 is_stmt 0 discriminator 2
 510 0044 FFF7FEFF 		bl	__NOP
 511 0048 7B68     		ldr	r3, [r7, #4]
 512 004a 0133     		add	r3, r3, #1
 513 004c 7B60     		str	r3, [r7, #4]
 514              	.L46:
 515              		.loc 2 312 0 discriminator 1
 516 004e 7B68     		ldr	r3, [r7, #4]
 517 0050 C72B     		cmp	r3, #199
 518 0052 F7D9     		bls	.L47
 313:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSPLLCLKSEL  = SYSPLLCLKSEL_Val;   /* Select PLL Input         */
 519              		.loc 2 313 0 is_stmt 1
 520 0054 2A4B     		ldr	r3, .L51+4
 521 0056 0122     		mov	r2, #1
 522 0058 1A64     		str	r2, [r3, #64]
 314:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSPLLCLKUEN  = 0x01;               /* Update Clock Source      */
 523              		.loc 2 314 0
 524 005a 294B     		ldr	r3, .L51+4
 525 005c 0122     		mov	r2, #1
 526 005e 5A64     		str	r2, [r3, #68]
 315:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSPLLCLKUEN  = 0x00;               /* Toggle Update Register   */
 527              		.loc 2 315 0
 528 0060 274B     		ldr	r3, .L51+4
 529 0062 0022     		mov	r2, #0
 530 0064 5A64     		str	r2, [r3, #68]
 316:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSPLLCLKUEN  = 0x01;
 531              		.loc 2 316 0
 532 0066 264B     		ldr	r3, .L51+4
 533 0068 0122     		mov	r2, #1
 534 006a 5A64     		str	r2, [r3, #68]
 317:../cmsis/system_LPC11xx.c ****   while (!(LPC_SYSCON->SYSPLLCLKUEN & 0x01));     /* Wait Until Updated       */
 535              		.loc 2 317 0
 536 006c C046     		mov	r8, r8
 537              	.L48:
 538              		.loc 2 317 0 is_stmt 0 discriminator 1
 539 006e 244B     		ldr	r3, .L51+4
 540 0070 5B6C     		ldr	r3, [r3, #68]
 541 0072 1A1C     		mov	r2, r3
 542 0074 0123     		mov	r3, #1
 543 0076 1340     		and	r3, r2
 544 0078 F9D0     		beq	.L48
 318:../cmsis/system_LPC11xx.c **** #if (SYSPLL_SETUP)                                /* System PLL Setup         */
 319:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSPLLCTRL    = SYSPLLCTRL_Val;
 545              		.loc 2 319 0 is_stmt 1
 546 007a 214B     		ldr	r3, .L51+4
 547 007c 2322     		mov	r2, #35
 548 007e 9A60     		str	r2, [r3, #8]
 320:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->PDRUNCFG     &= ~(1 << 7);          /* Power-up SYSPLL          */
 549              		.loc 2 320 0
 550 0080 1F4A     		ldr	r2, .L51+4
 551 0082 1F49     		ldr	r1, .L51+4
 552 0084 8E23     		mov	r3, #142
 553 0086 9B00     		lsl	r3, r3, #2
 554 0088 CB58     		ldr	r3, [r1, r3]
 555 008a 8021     		mov	r1, #128
 556 008c 181C     		mov	r0, r3
 557 008e 8843     		bic	r0, r1
 558 0090 011C     		mov	r1, r0
 559 0092 8E23     		mov	r3, #142
 560 0094 9B00     		lsl	r3, r3, #2
 561 0096 D150     		str	r1, [r2, r3]
 321:../cmsis/system_LPC11xx.c ****   while (!(LPC_SYSCON->SYSPLLSTAT & 0x01));	      /* Wait Until PLL Locked    */
 562              		.loc 2 321 0
 563 0098 C046     		mov	r8, r8
 564              	.L49:
 565              		.loc 2 321 0 is_stmt 0 discriminator 1
 566 009a 194B     		ldr	r3, .L51+4
 567 009c DB68     		ldr	r3, [r3, #12]
 568 009e 1A1C     		mov	r2, r3
 569 00a0 0123     		mov	r3, #1
 570 00a2 1340     		and	r3, r2
 571 00a4 F9D0     		beq	.L49
 322:../cmsis/system_LPC11xx.c **** #endif
 323:../cmsis/system_LPC11xx.c **** #endif
 324:../cmsis/system_LPC11xx.c **** #if (WDTOSC_SETUP)                                /* Watchdog Oscillator Setup*/
 325:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->WDTOSCCTRL    = WDTOSCCTRL_Val;
 326:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->PDRUNCFG     &= ~(1 << 6);          /* Power-up WDT Clock       */
 327:../cmsis/system_LPC11xx.c **** #endif
 328:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->MAINCLKSEL    = MAINCLKSEL_Val;     /* Select PLL Clock Output  */
 572              		.loc 2 328 0 is_stmt 1
 573 00a6 164B     		ldr	r3, .L51+4
 574 00a8 0322     		mov	r2, #3
 575 00aa 1A67     		str	r2, [r3, #112]
 329:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->MAINCLKUEN    = 0x01;               /* Update MCLK Clock Source */
 576              		.loc 2 329 0
 577 00ac 144B     		ldr	r3, .L51+4
 578 00ae 0122     		mov	r2, #1
 579 00b0 5A67     		str	r2, [r3, #116]
 330:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->MAINCLKUEN    = 0x00;               /* Toggle Update Register   */
 580              		.loc 2 330 0
 581 00b2 134B     		ldr	r3, .L51+4
 582 00b4 0022     		mov	r2, #0
 583 00b6 5A67     		str	r2, [r3, #116]
 331:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->MAINCLKUEN    = 0x01;
 584              		.loc 2 331 0
 585 00b8 114B     		ldr	r3, .L51+4
 586 00ba 0122     		mov	r2, #1
 587 00bc 5A67     		str	r2, [r3, #116]
 332:../cmsis/system_LPC11xx.c ****   while (!(LPC_SYSCON->MAINCLKUEN & 0x01));       /* Wait Until Updated       */
 588              		.loc 2 332 0
 589 00be C046     		mov	r8, r8
 590              	.L50:
 591              		.loc 2 332 0 is_stmt 0 discriminator 1
 592 00c0 0F4B     		ldr	r3, .L51+4
 593 00c2 5B6F     		ldr	r3, [r3, #116]
 594 00c4 1A1C     		mov	r2, r3
 595 00c6 0123     		mov	r3, #1
 596 00c8 1340     		and	r3, r2
 597 00ca F9D0     		beq	.L50
 333:../cmsis/system_LPC11xx.c **** #endif
 334:../cmsis/system_LPC11xx.c **** 
 335:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSAHBCLKDIV  = SYSAHBCLKDIV_Val;
 598              		.loc 2 335 0 is_stmt 1
 599 00cc 0C4B     		ldr	r3, .L51+4
 600 00ce 0122     		mov	r2, #1
 601 00d0 9A67     		str	r2, [r3, #120]
 336:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSAHBCLKCTRL = AHBCLKCTRL_Val;
 602              		.loc 2 336 0
 603 00d2 0B4A     		ldr	r2, .L51+4
 604 00d4 8023     		mov	r3, #128
 605 00d6 0B49     		ldr	r1, .L51+8
 606 00d8 D150     		str	r1, [r2, r3]
 337:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SSP0CLKDIV    = SSP0CLKDIV_Val;
 607              		.loc 2 337 0
 608 00da 094A     		ldr	r2, .L51+4
 609 00dc 9423     		mov	r3, #148
 610 00de 0121     		mov	r1, #1
 611 00e0 D150     		str	r1, [r2, r3]
 338:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->UARTCLKDIV    = UARTCLKDIV_Val;
 612              		.loc 2 338 0
 613 00e2 074A     		ldr	r2, .L51+4
 614 00e4 9823     		mov	r3, #152
 615 00e6 0121     		mov	r1, #1
 616 00e8 D150     		str	r1, [r2, r3]
 339:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SSP1CLKDIV    = SSP1CLKDIV_Val;
 617              		.loc 2 339 0
 618 00ea 054A     		ldr	r2, .L51+4
 619 00ec 9C23     		mov	r3, #156
 620 00ee 0121     		mov	r1, #1
 621 00f0 D150     		str	r1, [r2, r3]
 340:../cmsis/system_LPC11xx.c **** #endif
 341:../cmsis/system_LPC11xx.c **** 
 342:../cmsis/system_LPC11xx.c **** 
 343:../cmsis/system_LPC11xx.c **** #if (MEMMAP_SETUP || MEMMAP_INIT)       /* Memory Mapping Setup               */
 344:../cmsis/system_LPC11xx.c ****   LPC_SYSCON->SYSMEMREMAP = SYSMEMREMAP_Val;
 345:../cmsis/system_LPC11xx.c **** #endif
 346:../cmsis/system_LPC11xx.c ****   SystemCoreClockUpdate();
 622              		.loc 2 346 0
 623 00f2 FFF7FEFF 		bl	SystemCoreClockUpdate
 347:../cmsis/system_LPC11xx.c **** }
 624              		.loc 2 347 0
 625 00f6 BD46     		mov	sp, r7
 626 00f8 02B0     		add	sp, sp, #8
 627              		@ sp needed for prologue
 628 00fa 80BD     		pop	{r7, pc}
 629              	.L52:
 630              		.align	2
 631              	.L51:
 632 00fc 00000000 		.word	g_pfnVectors
 633 0100 00800440 		.word	1074036736
 634 0104 5F000100 		.word	65631
 635              		.cfi_endproc
 636              	.LFE21:
 638              		.text
 639              	.Letext0:
 640              		.file 3 "../cmsis/LPC11xx.h"
 641              		.file 4 "/Applications/lpcxpresso_6.1.2_177/lpcxpresso/tools/bin/../lib/gcc/arm-none-eabi/4.6.2/..
 642              		.file 5 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/config/system_LPC11xx.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 system_LPC11xx.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:18     .text.__NOP:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:22     .text.__NOP:0000000000000000 __NOP
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:51     .data:0000000000000000 SystemCoreClock
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:48     .data:0000000000000000 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:55     .text.SystemCoreClockUpdate:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:60     .text.SystemCoreClockUpdate:0000000000000000 SystemCoreClockUpdate
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:94     .rodata:0000000000000000 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:426    .text.SystemCoreClockUpdate:00000000000001e0 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:450    .text.SystemInit:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:455    .text.SystemInit:0000000000000000 SystemInit
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc7FylYz.s:632    .text.SystemInit:00000000000000fc $d
                     .debug_frame:0000000000000010 $d

UNDEFINED SYMBOLS
__aeabi_uidiv
g_pfnVectors
