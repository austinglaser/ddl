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
  13              		.file	"core_cm0.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.__get_PSP,"ax",%progbits
  18              		.align	2
  19              		.global	__get_PSP
  20              		.code	16
  21              		.thumb_func
  23              	__get_PSP:
  24              	.LFB0:
  25              		.file 1 "../cmsis/core_cm0.c"
   1:../cmsis/core_cm0.c **** /**************************************************************************
   2:../cmsis/core_cm0.c ****  * $Id:: core_cm0.c 4785 2010-09-03 22:39:27Z nxp21346                    $
   3:../cmsis/core_cm0.c ****  *
   4:../cmsis/core_cm0.c ****  * @file     core_cm0.c
   5:../cmsis/core_cm0.c ****  * @brief    CMSIS Cortex-M0 Core Peripheral Access Layer Source File
   6:../cmsis/core_cm0.c ****  * @version  V1.30
   7:../cmsis/core_cm0.c ****  * @date     30. October 2009
   8:../cmsis/core_cm0.c ****  *
   9:../cmsis/core_cm0.c ****  * @note
  10:../cmsis/core_cm0.c ****  * Copyright (C) 2009 ARM Limited. All rights reserved.
  11:../cmsis/core_cm0.c ****  *
  12:../cmsis/core_cm0.c ****  * @par
  13:../cmsis/core_cm0.c ****  * ARM Limited (ARM) is supplying this software for use with Cortex-M 
  14:../cmsis/core_cm0.c ****  * processor based microcontrollers.  This file can be freely distributed 
  15:../cmsis/core_cm0.c ****  * within development tools that are supporting such ARM based processors. 
  16:../cmsis/core_cm0.c ****  *
  17:../cmsis/core_cm0.c ****  * @par
  18:../cmsis/core_cm0.c ****  * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
  19:../cmsis/core_cm0.c ****  * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
  20:../cmsis/core_cm0.c ****  * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
  21:../cmsis/core_cm0.c ****  * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
  22:../cmsis/core_cm0.c ****  * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
  23:../cmsis/core_cm0.c ****  *
  24:../cmsis/core_cm0.c ****  ******************************************************************************/
  25:../cmsis/core_cm0.c **** 
  26:../cmsis/core_cm0.c **** #include <stdint.h>
  27:../cmsis/core_cm0.c **** 
  28:../cmsis/core_cm0.c **** /* define compiler specific symbols */
  29:../cmsis/core_cm0.c **** #if defined ( __CC_ARM   )
  30:../cmsis/core_cm0.c ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  31:../cmsis/core_cm0.c ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  32:../cmsis/core_cm0.c **** 
  33:../cmsis/core_cm0.c **** #elif defined ( __ICCARM__ )
  34:../cmsis/core_cm0.c ****   #define __ASM           __asm                                       /*!< asm keyword for IAR Comp
  35:../cmsis/core_cm0.c ****   #define __INLINE        inline                                      /*!< inline keyword for IAR C
  36:../cmsis/core_cm0.c **** 
  37:../cmsis/core_cm0.c **** #elif defined   (  __GNUC__  )
  38:../cmsis/core_cm0.c ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
  39:../cmsis/core_cm0.c ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
  40:../cmsis/core_cm0.c **** 
  41:../cmsis/core_cm0.c **** #elif defined   (  __TASKING__  )
  42:../cmsis/core_cm0.c ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
  43:../cmsis/core_cm0.c ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
  44:../cmsis/core_cm0.c **** 
  45:../cmsis/core_cm0.c **** #endif
  46:../cmsis/core_cm0.c **** 
  47:../cmsis/core_cm0.c **** 
  48:../cmsis/core_cm0.c **** /* ###################  Compiler specific Intrinsics  ########################### */
  49:../cmsis/core_cm0.c **** 
  50:../cmsis/core_cm0.c **** #if defined ( __CC_ARM   ) /*------------------RealView Compiler -----------------*/
  51:../cmsis/core_cm0.c **** /* ARM armcc specific functions */
  52:../cmsis/core_cm0.c **** 
  53:../cmsis/core_cm0.c **** /**
  54:../cmsis/core_cm0.c ****  * @brief  Return the Process Stack Pointer
  55:../cmsis/core_cm0.c ****  *
  56:../cmsis/core_cm0.c ****  * @return ProcessStackPointer
  57:../cmsis/core_cm0.c ****  *
  58:../cmsis/core_cm0.c ****  * Return the actual process stack pointer
  59:../cmsis/core_cm0.c ****  */
  60:../cmsis/core_cm0.c **** __ASM uint32_t __get_PSP(void)
  61:../cmsis/core_cm0.c **** {
  62:../cmsis/core_cm0.c ****   mrs r0, psp
  63:../cmsis/core_cm0.c ****   bx lr
  64:../cmsis/core_cm0.c **** }
  65:../cmsis/core_cm0.c **** 
  66:../cmsis/core_cm0.c **** /**
  67:../cmsis/core_cm0.c ****  * @brief  Set the Process Stack Pointer
  68:../cmsis/core_cm0.c ****  *
  69:../cmsis/core_cm0.c ****  * @param  topOfProcStack  Process Stack Pointer
  70:../cmsis/core_cm0.c ****  *
  71:../cmsis/core_cm0.c ****  * Assign the value ProcessStackPointer to the MSP 
  72:../cmsis/core_cm0.c ****  * (process stack pointer) Cortex processor register
  73:../cmsis/core_cm0.c ****  */
  74:../cmsis/core_cm0.c **** __ASM void __set_PSP(uint32_t topOfProcStack)
  75:../cmsis/core_cm0.c **** {
  76:../cmsis/core_cm0.c ****   msr psp, r0
  77:../cmsis/core_cm0.c ****   bx lr
  78:../cmsis/core_cm0.c **** }
  79:../cmsis/core_cm0.c **** 
  80:../cmsis/core_cm0.c **** /**
  81:../cmsis/core_cm0.c ****  * @brief  Return the Main Stack Pointer
  82:../cmsis/core_cm0.c ****  *
  83:../cmsis/core_cm0.c ****  * @return Main Stack Pointer
  84:../cmsis/core_cm0.c ****  *
  85:../cmsis/core_cm0.c ****  * Return the current value of the MSP (main stack pointer)
  86:../cmsis/core_cm0.c ****  * Cortex processor register
  87:../cmsis/core_cm0.c ****  */
  88:../cmsis/core_cm0.c **** __ASM uint32_t __get_MSP(void)
  89:../cmsis/core_cm0.c **** {
  90:../cmsis/core_cm0.c ****   mrs r0, msp
  91:../cmsis/core_cm0.c ****   bx lr
  92:../cmsis/core_cm0.c **** }
  93:../cmsis/core_cm0.c **** 
  94:../cmsis/core_cm0.c **** /**
  95:../cmsis/core_cm0.c ****  * @brief  Set the Main Stack Pointer
  96:../cmsis/core_cm0.c ****  *
  97:../cmsis/core_cm0.c ****  * @param  topOfMainStack  Main Stack Pointer
  98:../cmsis/core_cm0.c ****  *
  99:../cmsis/core_cm0.c ****  * Assign the value mainStackPointer to the MSP 
 100:../cmsis/core_cm0.c ****  * (main stack pointer) Cortex processor register
 101:../cmsis/core_cm0.c ****  */
 102:../cmsis/core_cm0.c **** __ASM void __set_MSP(uint32_t mainStackPointer)
 103:../cmsis/core_cm0.c **** {
 104:../cmsis/core_cm0.c ****   msr msp, r0
 105:../cmsis/core_cm0.c ****   bx lr
 106:../cmsis/core_cm0.c **** }
 107:../cmsis/core_cm0.c **** 
 108:../cmsis/core_cm0.c **** /**
 109:../cmsis/core_cm0.c ****  * @brief  Reverse byte order in unsigned short value
 110:../cmsis/core_cm0.c ****  *
 111:../cmsis/core_cm0.c ****  * @param   value  value to reverse
 112:../cmsis/core_cm0.c ****  * @return         reversed value
 113:../cmsis/core_cm0.c ****  *
 114:../cmsis/core_cm0.c ****  * Reverse byte order in unsigned short value
 115:../cmsis/core_cm0.c ****  */
 116:../cmsis/core_cm0.c **** __ASM uint32_t __REV16(uint16_t value)
 117:../cmsis/core_cm0.c **** {
 118:../cmsis/core_cm0.c ****   rev16 r0, r0
 119:../cmsis/core_cm0.c ****   bx lr
 120:../cmsis/core_cm0.c **** }
 121:../cmsis/core_cm0.c **** 
 122:../cmsis/core_cm0.c **** /**
 123:../cmsis/core_cm0.c ****  * @brief  Reverse byte order in signed short value with sign extension to integer
 124:../cmsis/core_cm0.c ****  *
 125:../cmsis/core_cm0.c ****  * @param   value  value to reverse
 126:../cmsis/core_cm0.c ****  * @return         reversed value
 127:../cmsis/core_cm0.c ****  *
 128:../cmsis/core_cm0.c ****  * Reverse byte order in signed short value with sign extension to integer
 129:../cmsis/core_cm0.c ****  */
 130:../cmsis/core_cm0.c **** __ASM int32_t __REVSH(int16_t value)
 131:../cmsis/core_cm0.c **** {
 132:../cmsis/core_cm0.c ****   revsh r0, r0
 133:../cmsis/core_cm0.c ****   bx lr
 134:../cmsis/core_cm0.c **** }
 135:../cmsis/core_cm0.c **** 
 136:../cmsis/core_cm0.c **** 
 137:../cmsis/core_cm0.c **** #if (__ARMCC_VERSION < 400000)
 138:../cmsis/core_cm0.c **** 
 139:../cmsis/core_cm0.c **** 
 140:../cmsis/core_cm0.c **** /**
 141:../cmsis/core_cm0.c ****  * @brief  Return the Priority Mask value
 142:../cmsis/core_cm0.c ****  *
 143:../cmsis/core_cm0.c ****  * @return PriMask
 144:../cmsis/core_cm0.c ****  *
 145:../cmsis/core_cm0.c ****  * Return state of the priority mask bit from the priority mask register
 146:../cmsis/core_cm0.c ****  */
 147:../cmsis/core_cm0.c **** __ASM uint32_t __get_PRIMASK(void)
 148:../cmsis/core_cm0.c **** {
 149:../cmsis/core_cm0.c ****   mrs r0, primask
 150:../cmsis/core_cm0.c ****   bx lr
 151:../cmsis/core_cm0.c **** }
 152:../cmsis/core_cm0.c **** 
 153:../cmsis/core_cm0.c **** /**
 154:../cmsis/core_cm0.c ****  * @brief  Set the Priority Mask value
 155:../cmsis/core_cm0.c ****  *
 156:../cmsis/core_cm0.c ****  * @param  priMask  PriMask
 157:../cmsis/core_cm0.c ****  *
 158:../cmsis/core_cm0.c ****  * Set the priority mask bit in the priority mask register
 159:../cmsis/core_cm0.c ****  */
 160:../cmsis/core_cm0.c **** __ASM void __set_PRIMASK(uint32_t priMask)
 161:../cmsis/core_cm0.c **** {
 162:../cmsis/core_cm0.c ****   msr primask, r0
 163:../cmsis/core_cm0.c ****   bx lr
 164:../cmsis/core_cm0.c **** }
 165:../cmsis/core_cm0.c **** 
 166:../cmsis/core_cm0.c **** /**
 167:../cmsis/core_cm0.c ****  * @brief  Return the Control Register value
 168:../cmsis/core_cm0.c ****  * 
 169:../cmsis/core_cm0.c ****  * @return Control value
 170:../cmsis/core_cm0.c ****  *
 171:../cmsis/core_cm0.c ****  * Return the content of the control register
 172:../cmsis/core_cm0.c ****  */
 173:../cmsis/core_cm0.c **** __ASM uint32_t __get_CONTROL(void)
 174:../cmsis/core_cm0.c **** {
 175:../cmsis/core_cm0.c ****   mrs r0, control
 176:../cmsis/core_cm0.c ****   bx lr
 177:../cmsis/core_cm0.c **** }
 178:../cmsis/core_cm0.c **** 
 179:../cmsis/core_cm0.c **** /**
 180:../cmsis/core_cm0.c ****  * @brief  Set the Control Register value
 181:../cmsis/core_cm0.c ****  *
 182:../cmsis/core_cm0.c ****  * @param  control  Control value
 183:../cmsis/core_cm0.c ****  *
 184:../cmsis/core_cm0.c ****  * Set the control register
 185:../cmsis/core_cm0.c ****  */
 186:../cmsis/core_cm0.c **** __ASM void __set_CONTROL(uint32_t control)
 187:../cmsis/core_cm0.c **** {
 188:../cmsis/core_cm0.c ****   msr control, r0
 189:../cmsis/core_cm0.c ****   bx lr
 190:../cmsis/core_cm0.c **** }
 191:../cmsis/core_cm0.c **** 
 192:../cmsis/core_cm0.c **** #endif /* __ARMCC_VERSION  */ 
 193:../cmsis/core_cm0.c **** 
 194:../cmsis/core_cm0.c **** 
 195:../cmsis/core_cm0.c **** 
 196:../cmsis/core_cm0.c **** #elif (defined (__ICCARM__)) /*------------------ ICC Compiler -------------------*/
 197:../cmsis/core_cm0.c **** /* IAR iccarm specific functions */
 198:../cmsis/core_cm0.c **** #pragma diag_suppress=Pe940
 199:../cmsis/core_cm0.c **** 
 200:../cmsis/core_cm0.c **** /**
 201:../cmsis/core_cm0.c ****  * @brief  Return the Process Stack Pointer
 202:../cmsis/core_cm0.c ****  *
 203:../cmsis/core_cm0.c ****  * @return ProcessStackPointer
 204:../cmsis/core_cm0.c ****  *
 205:../cmsis/core_cm0.c ****  * Return the actual process stack pointer
 206:../cmsis/core_cm0.c ****  */
 207:../cmsis/core_cm0.c **** uint32_t __get_PSP(void)
 208:../cmsis/core_cm0.c **** {
 209:../cmsis/core_cm0.c ****   __ASM("mrs r0, psp");
 210:../cmsis/core_cm0.c ****   __ASM("bx lr");
 211:../cmsis/core_cm0.c **** }
 212:../cmsis/core_cm0.c **** 
 213:../cmsis/core_cm0.c **** /**
 214:../cmsis/core_cm0.c ****  * @brief  Set the Process Stack Pointer
 215:../cmsis/core_cm0.c ****  *
 216:../cmsis/core_cm0.c ****  * @param  topOfProcStack  Process Stack Pointer
 217:../cmsis/core_cm0.c ****  *
 218:../cmsis/core_cm0.c ****  * Assign the value ProcessStackPointer to the MSP 
 219:../cmsis/core_cm0.c ****  * (process stack pointer) Cortex processor register
 220:../cmsis/core_cm0.c ****  */
 221:../cmsis/core_cm0.c **** void __set_PSP(uint32_t topOfProcStack)
 222:../cmsis/core_cm0.c **** {
 223:../cmsis/core_cm0.c ****   __ASM("msr psp, r0");
 224:../cmsis/core_cm0.c ****   __ASM("bx lr");
 225:../cmsis/core_cm0.c **** }
 226:../cmsis/core_cm0.c **** 
 227:../cmsis/core_cm0.c **** /**
 228:../cmsis/core_cm0.c ****  * @brief  Return the Main Stack Pointer
 229:../cmsis/core_cm0.c ****  *
 230:../cmsis/core_cm0.c ****  * @return Main Stack Pointer
 231:../cmsis/core_cm0.c ****  *
 232:../cmsis/core_cm0.c ****  * Return the current value of the MSP (main stack pointer)
 233:../cmsis/core_cm0.c ****  * Cortex processor register
 234:../cmsis/core_cm0.c ****  */
 235:../cmsis/core_cm0.c **** uint32_t __get_MSP(void)
 236:../cmsis/core_cm0.c **** {
 237:../cmsis/core_cm0.c ****   __ASM("mrs r0, msp");
 238:../cmsis/core_cm0.c ****   __ASM("bx lr");
 239:../cmsis/core_cm0.c **** }
 240:../cmsis/core_cm0.c **** 
 241:../cmsis/core_cm0.c **** /**
 242:../cmsis/core_cm0.c ****  * @brief  Set the Main Stack Pointer
 243:../cmsis/core_cm0.c ****  *
 244:../cmsis/core_cm0.c ****  * @param  topOfMainStack  Main Stack Pointer
 245:../cmsis/core_cm0.c ****  *
 246:../cmsis/core_cm0.c ****  * Assign the value mainStackPointer to the MSP 
 247:../cmsis/core_cm0.c ****  * (main stack pointer) Cortex processor register
 248:../cmsis/core_cm0.c ****  */
 249:../cmsis/core_cm0.c **** void __set_MSP(uint32_t topOfMainStack)
 250:../cmsis/core_cm0.c **** {
 251:../cmsis/core_cm0.c ****   __ASM("msr msp, r0");
 252:../cmsis/core_cm0.c ****   __ASM("bx lr");
 253:../cmsis/core_cm0.c **** }
 254:../cmsis/core_cm0.c **** 
 255:../cmsis/core_cm0.c **** /**
 256:../cmsis/core_cm0.c ****  * @brief  Reverse byte order in unsigned short value
 257:../cmsis/core_cm0.c ****  *
 258:../cmsis/core_cm0.c ****  * @param  value  value to reverse
 259:../cmsis/core_cm0.c ****  * @return        reversed value
 260:../cmsis/core_cm0.c ****  *
 261:../cmsis/core_cm0.c ****  * Reverse byte order in unsigned short value
 262:../cmsis/core_cm0.c ****  */
 263:../cmsis/core_cm0.c **** uint32_t __REV16(uint16_t value)
 264:../cmsis/core_cm0.c **** {
 265:../cmsis/core_cm0.c ****   __ASM("rev16 r0, r0");
 266:../cmsis/core_cm0.c ****   __ASM("bx lr");
 267:../cmsis/core_cm0.c **** }
 268:../cmsis/core_cm0.c **** 
 269:../cmsis/core_cm0.c **** 
 270:../cmsis/core_cm0.c **** #pragma diag_default=Pe940
 271:../cmsis/core_cm0.c **** 
 272:../cmsis/core_cm0.c **** 
 273:../cmsis/core_cm0.c **** #elif (defined (__GNUC__)) /*------------------ GNU Compiler ---------------------*/
 274:../cmsis/core_cm0.c **** /* GNU gcc specific functions */
 275:../cmsis/core_cm0.c **** 
 276:../cmsis/core_cm0.c **** /**
 277:../cmsis/core_cm0.c ****  * @brief  Return the Process Stack Pointer
 278:../cmsis/core_cm0.c ****  *
 279:../cmsis/core_cm0.c ****  * @return ProcessStackPointer
 280:../cmsis/core_cm0.c ****  *
 281:../cmsis/core_cm0.c ****  * Return the actual process stack pointer
 282:../cmsis/core_cm0.c ****  */
 283:../cmsis/core_cm0.c **** uint32_t __get_PSP(void) __attribute__( ( naked ) );
 284:../cmsis/core_cm0.c **** uint32_t __get_PSP(void)
 285:../cmsis/core_cm0.c **** {
  26              		.loc 1 285 0
  27              		.cfi_startproc
 286:../cmsis/core_cm0.c ****   uint32_t result=0;
  28              		.loc 1 286 0
  29 0000 0024     		mov	r4, #0
 287:../cmsis/core_cm0.c **** 
 288:../cmsis/core_cm0.c ****   __ASM volatile ("MRS %0, psp\n\t" 
  30              		.loc 1 288 0
  31              	@ 288 "../cmsis/core_cm0.c" 1
  32 0002 EFF30984 		MRS r4, psp
  33 0006 201C     		MOV r0, r4 
  34 0008 7047     		BX  lr     
  35              		
  36              	@ 0 "" 2
 289:../cmsis/core_cm0.c ****                   "MOV r0, %0 \n\t"
 290:../cmsis/core_cm0.c ****                   "BX  lr     \n\t"  : "=r" (result) );
 291:../cmsis/core_cm0.c ****   return(result);
  37              		.loc 1 291 0
  38              		.code	16
  39 000a 231C     		mov	r3, r4
 292:../cmsis/core_cm0.c **** }
  40              		.loc 1 292 0
  41 000c 181C     		mov	r0, r3
  42              		.cfi_endproc
  43              	.LFE0:
  45 000e C046     		.section	.text.__set_PSP,"ax",%progbits
  46              		.align	2
  47              		.global	__set_PSP
  48              		.code	16
  49              		.thumb_func
  51              	__set_PSP:
  52              	.LFB1:
 293:../cmsis/core_cm0.c **** 
 294:../cmsis/core_cm0.c **** /**
 295:../cmsis/core_cm0.c ****  * @brief  Set the Process Stack Pointer
 296:../cmsis/core_cm0.c ****  *
 297:../cmsis/core_cm0.c ****  * @param  topOfProcStack  Process Stack Pointer
 298:../cmsis/core_cm0.c ****  *
 299:../cmsis/core_cm0.c ****  * Assign the value ProcessStackPointer to the MSP 
 300:../cmsis/core_cm0.c ****  * (process stack pointer) Cortex processor register
 301:../cmsis/core_cm0.c ****  */
 302:../cmsis/core_cm0.c **** void __set_PSP(uint32_t topOfProcStack) __attribute__( ( naked ) );
 303:../cmsis/core_cm0.c **** void __set_PSP(uint32_t topOfProcStack)
 304:../cmsis/core_cm0.c **** {
  53              		.loc 1 304 0
  54              		.cfi_startproc
  55 0000 031C     		mov	r3, r0
 305:../cmsis/core_cm0.c ****   __ASM volatile ("MSR psp, %0\n\t"
  56              		.loc 1 305 0
  57              	@ 305 "../cmsis/core_cm0.c" 1
  58 0002 83F30988 		MSR psp, r3
  59 0006 7047     		BX  lr     
  60              		
  61              	@ 0 "" 2
 306:../cmsis/core_cm0.c ****                   "BX  lr     \n\t" : : "r" (topOfProcStack) );
 307:../cmsis/core_cm0.c **** }
  62              		.loc 1 307 0
  63              		.code	16
  64              		.cfi_endproc
  65              	.LFE1:
  67              		.section	.text.__get_MSP,"ax",%progbits
  68              		.align	2
  69              		.global	__get_MSP
  70              		.code	16
  71              		.thumb_func
  73              	__get_MSP:
  74              	.LFB2:
 308:../cmsis/core_cm0.c **** 
 309:../cmsis/core_cm0.c **** /**
 310:../cmsis/core_cm0.c ****  * @brief  Return the Main Stack Pointer
 311:../cmsis/core_cm0.c ****  *
 312:../cmsis/core_cm0.c ****  * @return Main Stack Pointer
 313:../cmsis/core_cm0.c ****  *
 314:../cmsis/core_cm0.c ****  * Return the current value of the MSP (main stack pointer)
 315:../cmsis/core_cm0.c ****  * Cortex processor register
 316:../cmsis/core_cm0.c ****  */
 317:../cmsis/core_cm0.c **** uint32_t __get_MSP(void) __attribute__( ( naked ) );
 318:../cmsis/core_cm0.c **** uint32_t __get_MSP(void)
 319:../cmsis/core_cm0.c **** {
  75              		.loc 1 319 0
  76              		.cfi_startproc
 320:../cmsis/core_cm0.c ****   uint32_t result=0;
  77              		.loc 1 320 0
  78 0000 0024     		mov	r4, #0
 321:../cmsis/core_cm0.c **** 
 322:../cmsis/core_cm0.c ****   __ASM volatile ("MRS %0, msp\n\t" 
  79              		.loc 1 322 0
  80              	@ 322 "../cmsis/core_cm0.c" 1
  81 0002 EFF30884 		MRS r4, msp
  82 0006 201C     		MOV r0, r4 
  83 0008 7047     		BX  lr     
  84              		
  85              	@ 0 "" 2
 323:../cmsis/core_cm0.c ****                   "MOV r0, %0 \n\t"
 324:../cmsis/core_cm0.c ****                   "BX  lr     \n\t"  : "=r" (result) );
 325:../cmsis/core_cm0.c ****   return(result);
  86              		.loc 1 325 0
  87              		.code	16
  88 000a 231C     		mov	r3, r4
 326:../cmsis/core_cm0.c **** }
  89              		.loc 1 326 0
  90 000c 181C     		mov	r0, r3
  91              		.cfi_endproc
  92              	.LFE2:
  94 000e C046     		.section	.text.__set_MSP,"ax",%progbits
  95              		.align	2
  96              		.global	__set_MSP
  97              		.code	16
  98              		.thumb_func
 100              	__set_MSP:
 101              	.LFB3:
 327:../cmsis/core_cm0.c **** 
 328:../cmsis/core_cm0.c **** /**
 329:../cmsis/core_cm0.c ****  * @brief  Set the Main Stack Pointer
 330:../cmsis/core_cm0.c ****  *
 331:../cmsis/core_cm0.c ****  * @param  topOfMainStack  Main Stack Pointer
 332:../cmsis/core_cm0.c ****  *
 333:../cmsis/core_cm0.c ****  * Assign the value mainStackPointer to the MSP 
 334:../cmsis/core_cm0.c ****  * (main stack pointer) Cortex processor register
 335:../cmsis/core_cm0.c ****  */
 336:../cmsis/core_cm0.c **** void __set_MSP(uint32_t topOfMainStack) __attribute__( ( naked ) );
 337:../cmsis/core_cm0.c **** void __set_MSP(uint32_t topOfMainStack)
 338:../cmsis/core_cm0.c **** {
 102              		.loc 1 338 0
 103              		.cfi_startproc
 104 0000 031C     		mov	r3, r0
 339:../cmsis/core_cm0.c ****   __ASM volatile ("MSR msp, %0\n\t"
 105              		.loc 1 339 0
 106              	@ 339 "../cmsis/core_cm0.c" 1
 107 0002 83F30888 		MSR msp, r3
 108 0006 7047     		BX  lr     
 109              		
 110              	@ 0 "" 2
 340:../cmsis/core_cm0.c ****                   "BX  lr     \n\t" : : "r" (topOfMainStack) );
 341:../cmsis/core_cm0.c **** }
 111              		.loc 1 341 0
 112              		.code	16
 113              		.cfi_endproc
 114              	.LFE3:
 116              		.section	.text.__get_PRIMASK,"ax",%progbits
 117              		.align	2
 118              		.global	__get_PRIMASK
 119              		.code	16
 120              		.thumb_func
 122              	__get_PRIMASK:
 123              	.LFB4:
 342:../cmsis/core_cm0.c **** 
 343:../cmsis/core_cm0.c **** 
 344:../cmsis/core_cm0.c **** /**
 345:../cmsis/core_cm0.c ****  * @brief  Return the Priority Mask value
 346:../cmsis/core_cm0.c ****  *
 347:../cmsis/core_cm0.c ****  * @return PriMask
 348:../cmsis/core_cm0.c ****  *
 349:../cmsis/core_cm0.c ****  * Return state of the priority mask bit from the priority mask register
 350:../cmsis/core_cm0.c ****  */
 351:../cmsis/core_cm0.c **** uint32_t __get_PRIMASK(void)
 352:../cmsis/core_cm0.c **** {
 124              		.loc 1 352 0
 125              		.cfi_startproc
 126 0000 90B5     		push	{r4, r7, lr}
 127              	.LCFI0:
 128              		.cfi_def_cfa_offset 12
 129              		.cfi_offset 4, -12
 130              		.cfi_offset 7, -8
 131              		.cfi_offset 14, -4
 132 0002 83B0     		sub	sp, sp, #12
 133              	.LCFI1:
 134              		.cfi_def_cfa_offset 24
 135 0004 00AF     		add	r7, sp, #0
 136              	.LCFI2:
 137              		.cfi_def_cfa_register 7
 353:../cmsis/core_cm0.c ****   uint32_t result=0;
 138              		.loc 1 353 0
 139 0006 0023     		mov	r3, #0
 140 0008 7B60     		str	r3, [r7, #4]
 354:../cmsis/core_cm0.c **** 
 355:../cmsis/core_cm0.c ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
 141              		.loc 1 355 0
 142              	@ 355 "../cmsis/core_cm0.c" 1
 143 000a EFF31084 		MRS r4, primask
 144              	@ 0 "" 2
 145              		.code	16
 146 000e 7C60     		str	r4, [r7, #4]
 356:../cmsis/core_cm0.c ****   return(result);
 147              		.loc 1 356 0
 148 0010 7B68     		ldr	r3, [r7, #4]
 357:../cmsis/core_cm0.c **** }
 149              		.loc 1 357 0
 150 0012 181C     		mov	r0, r3
 151 0014 BD46     		mov	sp, r7
 152 0016 03B0     		add	sp, sp, #12
 153              		@ sp needed for prologue
 154 0018 90BD     		pop	{r4, r7, pc}
 155              		.cfi_endproc
 156              	.LFE4:
 158 001a C046     		.section	.text.__set_PRIMASK,"ax",%progbits
 159              		.align	2
 160              		.global	__set_PRIMASK
 161              		.code	16
 162              		.thumb_func
 164              	__set_PRIMASK:
 165              	.LFB5:
 358:../cmsis/core_cm0.c **** 
 359:../cmsis/core_cm0.c **** /**
 360:../cmsis/core_cm0.c ****  * @brief  Set the Priority Mask value
 361:../cmsis/core_cm0.c ****  *
 362:../cmsis/core_cm0.c ****  * @param  priMask  PriMask
 363:../cmsis/core_cm0.c ****  *
 364:../cmsis/core_cm0.c ****  * Set the priority mask bit in the priority mask register
 365:../cmsis/core_cm0.c ****  */
 366:../cmsis/core_cm0.c **** void __set_PRIMASK(uint32_t priMask)
 367:../cmsis/core_cm0.c **** {
 166              		.loc 1 367 0
 167              		.cfi_startproc
 168 0000 80B5     		push	{r7, lr}
 169              	.LCFI3:
 170              		.cfi_def_cfa_offset 8
 171              		.cfi_offset 7, -8
 172              		.cfi_offset 14, -4
 173 0002 82B0     		sub	sp, sp, #8
 174              	.LCFI4:
 175              		.cfi_def_cfa_offset 16
 176 0004 00AF     		add	r7, sp, #0
 177              	.LCFI5:
 178              		.cfi_def_cfa_register 7
 179 0006 7860     		str	r0, [r7, #4]
 368:../cmsis/core_cm0.c ****   __ASM volatile ("MSR primask, %0" : : "r" (priMask) );
 180              		.loc 1 368 0
 181 0008 7B68     		ldr	r3, [r7, #4]
 182              	@ 368 "../cmsis/core_cm0.c" 1
 183 000a 83F31088 		MSR primask, r3
 184              	@ 0 "" 2
 369:../cmsis/core_cm0.c **** }
 185              		.loc 1 369 0
 186              		.code	16
 187 000e BD46     		mov	sp, r7
 188 0010 02B0     		add	sp, sp, #8
 189              		@ sp needed for prologue
 190 0012 80BD     		pop	{r7, pc}
 191              		.cfi_endproc
 192              	.LFE5:
 194              		.section	.text.__get_CONTROL,"ax",%progbits
 195              		.align	2
 196              		.global	__get_CONTROL
 197              		.code	16
 198              		.thumb_func
 200              	__get_CONTROL:
 201              	.LFB6:
 370:../cmsis/core_cm0.c **** 
 371:../cmsis/core_cm0.c **** /**
 372:../cmsis/core_cm0.c ****  * @brief  Return the Control Register value
 373:../cmsis/core_cm0.c **** * 
 374:../cmsis/core_cm0.c **** *  @return Control value
 375:../cmsis/core_cm0.c ****  *
 376:../cmsis/core_cm0.c ****  * Return the content of the control register
 377:../cmsis/core_cm0.c ****  */
 378:../cmsis/core_cm0.c **** uint32_t __get_CONTROL(void)
 379:../cmsis/core_cm0.c **** {
 202              		.loc 1 379 0
 203              		.cfi_startproc
 204 0000 90B5     		push	{r4, r7, lr}
 205              	.LCFI6:
 206              		.cfi_def_cfa_offset 12
 207              		.cfi_offset 4, -12
 208              		.cfi_offset 7, -8
 209              		.cfi_offset 14, -4
 210 0002 83B0     		sub	sp, sp, #12
 211              	.LCFI7:
 212              		.cfi_def_cfa_offset 24
 213 0004 00AF     		add	r7, sp, #0
 214              	.LCFI8:
 215              		.cfi_def_cfa_register 7
 380:../cmsis/core_cm0.c ****   uint32_t result=0;
 216              		.loc 1 380 0
 217 0006 0023     		mov	r3, #0
 218 0008 7B60     		str	r3, [r7, #4]
 381:../cmsis/core_cm0.c **** 
 382:../cmsis/core_cm0.c ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
 219              		.loc 1 382 0
 220              	@ 382 "../cmsis/core_cm0.c" 1
 221 000a EFF31484 		MRS r4, control
 222              	@ 0 "" 2
 223              		.code	16
 224 000e 7C60     		str	r4, [r7, #4]
 383:../cmsis/core_cm0.c ****   return(result);
 225              		.loc 1 383 0
 226 0010 7B68     		ldr	r3, [r7, #4]
 384:../cmsis/core_cm0.c **** }
 227              		.loc 1 384 0
 228 0012 181C     		mov	r0, r3
 229 0014 BD46     		mov	sp, r7
 230 0016 03B0     		add	sp, sp, #12
 231              		@ sp needed for prologue
 232 0018 90BD     		pop	{r4, r7, pc}
 233              		.cfi_endproc
 234              	.LFE6:
 236 001a C046     		.section	.text.__set_CONTROL,"ax",%progbits
 237              		.align	2
 238              		.global	__set_CONTROL
 239              		.code	16
 240              		.thumb_func
 242              	__set_CONTROL:
 243              	.LFB7:
 385:../cmsis/core_cm0.c **** 
 386:../cmsis/core_cm0.c **** /**
 387:../cmsis/core_cm0.c ****  * @brief  Set the Control Register value
 388:../cmsis/core_cm0.c ****  *
 389:../cmsis/core_cm0.c ****  * @param  control  Control value
 390:../cmsis/core_cm0.c ****  *
 391:../cmsis/core_cm0.c ****  * Set the control register
 392:../cmsis/core_cm0.c ****  */
 393:../cmsis/core_cm0.c **** void __set_CONTROL(uint32_t control)
 394:../cmsis/core_cm0.c **** {
 244              		.loc 1 394 0
 245              		.cfi_startproc
 246 0000 80B5     		push	{r7, lr}
 247              	.LCFI9:
 248              		.cfi_def_cfa_offset 8
 249              		.cfi_offset 7, -8
 250              		.cfi_offset 14, -4
 251 0002 82B0     		sub	sp, sp, #8
 252              	.LCFI10:
 253              		.cfi_def_cfa_offset 16
 254 0004 00AF     		add	r7, sp, #0
 255              	.LCFI11:
 256              		.cfi_def_cfa_register 7
 257 0006 7860     		str	r0, [r7, #4]
 395:../cmsis/core_cm0.c ****   __ASM volatile ("MSR control, %0" : : "r" (control) );
 258              		.loc 1 395 0
 259 0008 7B68     		ldr	r3, [r7, #4]
 260              	@ 395 "../cmsis/core_cm0.c" 1
 261 000a 83F31488 		MSR control, r3
 262              	@ 0 "" 2
 396:../cmsis/core_cm0.c **** }
 263              		.loc 1 396 0
 264              		.code	16
 265 000e BD46     		mov	sp, r7
 266 0010 02B0     		add	sp, sp, #8
 267              		@ sp needed for prologue
 268 0012 80BD     		pop	{r7, pc}
 269              		.cfi_endproc
 270              	.LFE7:
 272              		.section	.text.__REV,"ax",%progbits
 273              		.align	2
 274              		.global	__REV
 275              		.code	16
 276              		.thumb_func
 278              	__REV:
 279              	.LFB8:
 397:../cmsis/core_cm0.c **** 
 398:../cmsis/core_cm0.c **** 
 399:../cmsis/core_cm0.c **** /**
 400:../cmsis/core_cm0.c ****  * @brief  Reverse byte order in integer value
 401:../cmsis/core_cm0.c ****  *
 402:../cmsis/core_cm0.c ****  * @param  value  value to reverse
 403:../cmsis/core_cm0.c ****  * @return        reversed value
 404:../cmsis/core_cm0.c ****  *
 405:../cmsis/core_cm0.c ****  * Reverse byte order in integer value
 406:../cmsis/core_cm0.c ****  */
 407:../cmsis/core_cm0.c **** uint32_t __REV(uint32_t value)
 408:../cmsis/core_cm0.c **** {
 280              		.loc 1 408 0
 281              		.cfi_startproc
 282 0000 90B5     		push	{r4, r7, lr}
 283              	.LCFI12:
 284              		.cfi_def_cfa_offset 12
 285              		.cfi_offset 4, -12
 286              		.cfi_offset 7, -8
 287              		.cfi_offset 14, -4
 288 0002 85B0     		sub	sp, sp, #20
 289              	.LCFI13:
 290              		.cfi_def_cfa_offset 32
 291 0004 00AF     		add	r7, sp, #0
 292              	.LCFI14:
 293              		.cfi_def_cfa_register 7
 294 0006 7860     		str	r0, [r7, #4]
 409:../cmsis/core_cm0.c ****   uint32_t result=0;
 295              		.loc 1 409 0
 296 0008 0023     		mov	r3, #0
 297 000a FB60     		str	r3, [r7, #12]
 410:../cmsis/core_cm0.c ****   
 411:../cmsis/core_cm0.c ****   __ASM volatile ("rev %0, %1" : "=r" (result) : "r" (value) );
 298              		.loc 1 411 0
 299 000c 7B68     		ldr	r3, [r7, #4]
 300              	@ 411 "../cmsis/core_cm0.c" 1
 301 000e 1CBA     		rev r4, r3
 302              	@ 0 "" 2
 303              		.code	16
 304 0010 FC60     		str	r4, [r7, #12]
 412:../cmsis/core_cm0.c ****   return(result);
 305              		.loc 1 412 0
 306 0012 FB68     		ldr	r3, [r7, #12]
 413:../cmsis/core_cm0.c **** }
 307              		.loc 1 413 0
 308 0014 181C     		mov	r0, r3
 309 0016 BD46     		mov	sp, r7
 310 0018 05B0     		add	sp, sp, #20
 311              		@ sp needed for prologue
 312 001a 90BD     		pop	{r4, r7, pc}
 313              		.cfi_endproc
 314              	.LFE8:
 316              		.section	.text.__REV16,"ax",%progbits
 317              		.align	2
 318              		.global	__REV16
 319              		.code	16
 320              		.thumb_func
 322              	__REV16:
 323              	.LFB9:
 414:../cmsis/core_cm0.c **** 
 415:../cmsis/core_cm0.c **** /**
 416:../cmsis/core_cm0.c ****  * @brief  Reverse byte order in unsigned short value
 417:../cmsis/core_cm0.c ****  *
 418:../cmsis/core_cm0.c ****  * @param  value  value to reverse
 419:../cmsis/core_cm0.c ****  * @return        reversed value
 420:../cmsis/core_cm0.c ****  *
 421:../cmsis/core_cm0.c ****  * Reverse byte order in unsigned short value
 422:../cmsis/core_cm0.c ****  */
 423:../cmsis/core_cm0.c **** uint32_t __REV16(uint16_t value)
 424:../cmsis/core_cm0.c **** {
 324              		.loc 1 424 0
 325              		.cfi_startproc
 326 0000 90B5     		push	{r4, r7, lr}
 327              	.LCFI15:
 328              		.cfi_def_cfa_offset 12
 329              		.cfi_offset 4, -12
 330              		.cfi_offset 7, -8
 331              		.cfi_offset 14, -4
 332 0002 85B0     		sub	sp, sp, #20
 333              	.LCFI16:
 334              		.cfi_def_cfa_offset 32
 335 0004 00AF     		add	r7, sp, #0
 336              	.LCFI17:
 337              		.cfi_def_cfa_register 7
 338 0006 021C     		mov	r2, r0
 339 0008 BB1D     		add	r3, r7, #6
 340 000a 1A80     		strh	r2, [r3]
 425:../cmsis/core_cm0.c ****   uint32_t result=0;
 341              		.loc 1 425 0
 342 000c 0023     		mov	r3, #0
 343 000e FB60     		str	r3, [r7, #12]
 426:../cmsis/core_cm0.c ****   
 427:../cmsis/core_cm0.c ****   __ASM volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
 344              		.loc 1 427 0
 345 0010 BB1D     		add	r3, r7, #6
 346 0012 1B88     		ldrh	r3, [r3]
 347              	@ 427 "../cmsis/core_cm0.c" 1
 348 0014 5CBA     		rev16 r4, r3
 349              	@ 0 "" 2
 350              		.code	16
 351 0016 FC60     		str	r4, [r7, #12]
 428:../cmsis/core_cm0.c ****   return(result);
 352              		.loc 1 428 0
 353 0018 FB68     		ldr	r3, [r7, #12]
 429:../cmsis/core_cm0.c **** }
 354              		.loc 1 429 0
 355 001a 181C     		mov	r0, r3
 356 001c BD46     		mov	sp, r7
 357 001e 05B0     		add	sp, sp, #20
 358              		@ sp needed for prologue
 359 0020 90BD     		pop	{r4, r7, pc}
 360              		.cfi_endproc
 361              	.LFE9:
 363 0022 C046     		.section	.text.__REVSH,"ax",%progbits
 364              		.align	2
 365              		.global	__REVSH
 366              		.code	16
 367              		.thumb_func
 369              	__REVSH:
 370              	.LFB10:
 430:../cmsis/core_cm0.c **** 
 431:../cmsis/core_cm0.c **** /**
 432:../cmsis/core_cm0.c ****  * @brief  Reverse byte order in signed short value with sign extension to integer
 433:../cmsis/core_cm0.c ****  *
 434:../cmsis/core_cm0.c ****  * @param  value  value to reverse
 435:../cmsis/core_cm0.c ****  * @return        reversed value
 436:../cmsis/core_cm0.c ****  *
 437:../cmsis/core_cm0.c ****  * Reverse byte order in signed short value with sign extension to integer
 438:../cmsis/core_cm0.c ****  */
 439:../cmsis/core_cm0.c **** int32_t __REVSH(int16_t value)
 440:../cmsis/core_cm0.c **** {
 371              		.loc 1 440 0
 372              		.cfi_startproc
 373 0000 90B5     		push	{r4, r7, lr}
 374              	.LCFI18:
 375              		.cfi_def_cfa_offset 12
 376              		.cfi_offset 4, -12
 377              		.cfi_offset 7, -8
 378              		.cfi_offset 14, -4
 379 0002 85B0     		sub	sp, sp, #20
 380              	.LCFI19:
 381              		.cfi_def_cfa_offset 32
 382 0004 00AF     		add	r7, sp, #0
 383              	.LCFI20:
 384              		.cfi_def_cfa_register 7
 385 0006 021C     		mov	r2, r0
 386 0008 BB1D     		add	r3, r7, #6
 387 000a 1A80     		strh	r2, [r3]
 441:../cmsis/core_cm0.c ****   uint32_t result=0;
 388              		.loc 1 441 0
 389 000c 0023     		mov	r3, #0
 390 000e FB60     		str	r3, [r7, #12]
 442:../cmsis/core_cm0.c ****   
 443:../cmsis/core_cm0.c ****   __ASM volatile ("revsh %0, %1" : "=r" (result) : "r" (value) );
 391              		.loc 1 443 0
 392 0010 BB1D     		add	r3, r7, #6
 393 0012 1B88     		ldrh	r3, [r3]
 394              	@ 443 "../cmsis/core_cm0.c" 1
 395 0014 DCBA     		revsh r4, r3
 396              	@ 0 "" 2
 397              		.code	16
 398 0016 FC60     		str	r4, [r7, #12]
 444:../cmsis/core_cm0.c ****   return(result);
 399              		.loc 1 444 0
 400 0018 FB68     		ldr	r3, [r7, #12]
 445:../cmsis/core_cm0.c **** }
 401              		.loc 1 445 0
 402 001a 181C     		mov	r0, r3
 403 001c BD46     		mov	sp, r7
 404 001e 05B0     		add	sp, sp, #20
 405              		@ sp needed for prologue
 406 0020 90BD     		pop	{r4, r7, pc}
 407              		.cfi_endproc
 408              	.LFE10:
 410 0022 C046     		.text
 411              	.Letext0:
 412              		.file 2 "/Applications/lpcxpresso_6.1.2_177/lpcxpresso/tools/bin/../lib/gcc/arm-none-eabi/4.6.2/..
DEFINED SYMBOLS
                            *ABS*:0000000000000000 core_cm0.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:18     .text.__get_PSP:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:23     .text.__get_PSP:0000000000000000 __get_PSP
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:46     .text.__set_PSP:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:51     .text.__set_PSP:0000000000000000 __set_PSP
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:68     .text.__get_MSP:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:73     .text.__get_MSP:0000000000000000 __get_MSP
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:95     .text.__set_MSP:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:100    .text.__set_MSP:0000000000000000 __set_MSP
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:117    .text.__get_PRIMASK:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:122    .text.__get_PRIMASK:0000000000000000 __get_PRIMASK
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:159    .text.__set_PRIMASK:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:164    .text.__set_PRIMASK:0000000000000000 __set_PRIMASK
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:195    .text.__get_CONTROL:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:200    .text.__get_CONTROL:0000000000000000 __get_CONTROL
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:237    .text.__set_CONTROL:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:242    .text.__set_CONTROL:0000000000000000 __set_CONTROL
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:273    .text.__REV:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:278    .text.__REV:0000000000000000 __REV
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:317    .text.__REV16:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:322    .text.__REV16:0000000000000000 __REV16
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:364    .text.__REVSH:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cc1rRw7G.s:369    .text.__REVSH:0000000000000000 __REVSH
                     .debug_frame:0000000000000010 $d

NO UNDEFINED SYMBOLS
