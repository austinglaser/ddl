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
  13              		.file	"cr_startup_lpc11.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.global	g_pfnVectors
  18              		.section	.isr_vector,"a",%progbits
  19              		.align	2
  22              	g_pfnVectors:
  23 0000 00000000 		.word	_vStackTop
  24 0004 00000000 		.word	ResetISR
  25 0008 00000000 		.word	NMI_Handler
  26 000c 00000000 		.word	HardFault_Handler
  27 0010 00000000 		.word	0
  28 0014 00000000 		.word	0
  29 0018 00000000 		.word	0
  30 001c 00000000 		.word	0
  31 0020 00000000 		.word	0
  32 0024 00000000 		.word	0
  33 0028 00000000 		.word	0
  34 002c 00000000 		.word	SVCall_Handler
  35 0030 00000000 		.word	0
  36 0034 00000000 		.word	0
  37 0038 00000000 		.word	PendSV_Handler
  38 003c 00000000 		.word	SysTick_Handler
  39 0040 00000000 		.word	WAKEUP_IRQHandler
  40 0044 00000000 		.word	WAKEUP_IRQHandler
  41 0048 00000000 		.word	WAKEUP_IRQHandler
  42 004c 00000000 		.word	WAKEUP_IRQHandler
  43 0050 00000000 		.word	WAKEUP_IRQHandler
  44 0054 00000000 		.word	WAKEUP_IRQHandler
  45 0058 00000000 		.word	WAKEUP_IRQHandler
  46 005c 00000000 		.word	WAKEUP_IRQHandler
  47 0060 00000000 		.word	WAKEUP_IRQHandler
  48 0064 00000000 		.word	WAKEUP_IRQHandler
  49 0068 00000000 		.word	WAKEUP_IRQHandler
  50 006c 00000000 		.word	WAKEUP_IRQHandler
  51 0070 00000000 		.word	WAKEUP_IRQHandler
  52 0074 00000000 		.word	WAKEUP_IRQHandler
  53 0078 00000000 		.word	WAKEUP_IRQHandler
  54 007c 00000000 		.word	I2C_IRQHandler
  55 0080 00000000 		.word	TIMER16_0_IRQHandler
  56 0084 00000000 		.word	TIMER16_1_IRQHandler
  57 0088 00000000 		.word	TIMER32_0_IRQHandler
  58 008c 00000000 		.word	TIMER32_1_IRQHandler
  59 0090 00000000 		.word	SSP_IRQHandler
  60 0094 00000000 		.word	UART_IRQHandler
  61 0098 00000000 		.word	USB_IRQHandler
  62 009c 00000000 		.word	USB_FIQHandler
  63 00a0 00000000 		.word	ADC_IRQHandler
  64 00a4 00000000 		.word	WDT_IRQHandler
  65 00a8 00000000 		.word	BOD_IRQHandler
  66 00ac 00000000 		.word	FMC_IRQHandler
  67 00b0 00000000 		.word	PIOINT3_IRQHandler
  68 00b4 00000000 		.word	PIOINT2_IRQHandler
  69 00b8 00000000 		.word	PIOINT1_IRQHandler
  70 00bc 00000000 		.word	PIOINT0_IRQHandler
  71              		.section	.text.Reset_Handler,"ax",%progbits
  72              		.align	2
  73              		.global	Reset_Handler
  74              		.code	16
  75              		.thumb_func
  77              	Reset_Handler:
  78              	.LFB0:
  79              		.file 1 "../src/cr_startup_lpc11.c"
   1:../src/cr_startup_lpc11.c **** //*****************************************************************************
   2:../src/cr_startup_lpc11.c **** //   +--+       
   3:../src/cr_startup_lpc11.c **** //   | ++----+   
   4:../src/cr_startup_lpc11.c **** //   +-++    |  
   5:../src/cr_startup_lpc11.c **** //     |     |  
   6:../src/cr_startup_lpc11.c **** //   +-+--+  |   
   7:../src/cr_startup_lpc11.c **** //   | +--+--+  
   8:../src/cr_startup_lpc11.c **** //   +----+    Copyright (c) 2009 Code Red Technologies Ltd. 
   9:../src/cr_startup_lpc11.c **** //
  10:../src/cr_startup_lpc11.c **** // Microcontroller Startup code for use with Red Suite
  11:../src/cr_startup_lpc11.c **** //
  12:../src/cr_startup_lpc11.c **** // Software License Agreement
  13:../src/cr_startup_lpc11.c **** // 
  14:../src/cr_startup_lpc11.c **** // The software is owned by Code Red Technologies and/or its suppliers, and is 
  15:../src/cr_startup_lpc11.c **** // protected under applicable copyright laws.  All rights are reserved.  Any 
  16:../src/cr_startup_lpc11.c **** // use in violation of the foregoing restrictions may subject the user to criminal 
  17:../src/cr_startup_lpc11.c **** // sanctions under applicable laws, as well as to civil liability for the breach 
  18:../src/cr_startup_lpc11.c **** // of the terms and conditions of this license.
  19:../src/cr_startup_lpc11.c **** // 
  20:../src/cr_startup_lpc11.c **** // THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
  21:../src/cr_startup_lpc11.c **** // OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
  22:../src/cr_startup_lpc11.c **** // MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
  23:../src/cr_startup_lpc11.c **** // USE OF THIS SOFTWARE FOR COMMERCIAL DEVELOPMENT AND/OR EDUCATION IS SUBJECT
  24:../src/cr_startup_lpc11.c **** // TO A CURRENT END USER LICENSE AGREEMENT (COMMERCIAL OR EDUCATIONAL) WITH
  25:../src/cr_startup_lpc11.c **** // CODE RED TECHNOLOGIES LTD. 
  26:../src/cr_startup_lpc11.c **** //
  27:../src/cr_startup_lpc11.c **** //*****************************************************************************
  28:../src/cr_startup_lpc11.c **** #define WEAK __attribute__ ((weak))
  29:../src/cr_startup_lpc11.c **** #define ALIAS(f) __attribute__ ((weak, alias (#f)))
  30:../src/cr_startup_lpc11.c **** 
  31:../src/cr_startup_lpc11.c **** // Code Red - if CMSIS is being used, then SystemInit() routine
  32:../src/cr_startup_lpc11.c **** // will be called by startup code rather than in application's main()
  33:../src/cr_startup_lpc11.c **** #ifdef __USE_CMSIS
  34:../src/cr_startup_lpc11.c **** #include "system_LPC11xx.h"
  35:../src/cr_startup_lpc11.c **** #endif
  36:../src/cr_startup_lpc11.c **** 
  37:../src/cr_startup_lpc11.c **** //*****************************************************************************
  38:../src/cr_startup_lpc11.c **** //
  39:../src/cr_startup_lpc11.c **** // Forward declaration of the default handlers. These are aliased.
  40:../src/cr_startup_lpc11.c **** // When the application defines a handler (with the same name), this will 
  41:../src/cr_startup_lpc11.c **** // automatically take precedence over these weak definitions
  42:../src/cr_startup_lpc11.c **** //
  43:../src/cr_startup_lpc11.c **** //*****************************************************************************
  44:../src/cr_startup_lpc11.c ****      void Reset_Handler(void);
  45:../src/cr_startup_lpc11.c ****      void ResetISR(void) ALIAS(Reset_Handler);
  46:../src/cr_startup_lpc11.c **** WEAK void NMI_Handler(void);
  47:../src/cr_startup_lpc11.c **** WEAK void HardFault_Handler(void);
  48:../src/cr_startup_lpc11.c **** WEAK void SVCall_Handler(void);
  49:../src/cr_startup_lpc11.c **** WEAK void PendSV_Handler(void);
  50:../src/cr_startup_lpc11.c **** WEAK void SysTick_Handler(void);
  51:../src/cr_startup_lpc11.c **** 
  52:../src/cr_startup_lpc11.c **** //*****************************************************************************
  53:../src/cr_startup_lpc11.c **** //
  54:../src/cr_startup_lpc11.c **** // Forward declaration of the specific IRQ handlers. These are aliased
  55:../src/cr_startup_lpc11.c **** // to the IntDefaultHandler, which is a 'forever' loop. When the application
  56:../src/cr_startup_lpc11.c **** // defines a handler (with the same name), this will automatically take
  57:../src/cr_startup_lpc11.c **** // precedence over these weak definitions
  58:../src/cr_startup_lpc11.c **** //
  59:../src/cr_startup_lpc11.c **** //*****************************************************************************
  60:../src/cr_startup_lpc11.c **** 
  61:../src/cr_startup_lpc11.c **** void I2C_IRQHandler (void) ALIAS(IntDefaultHandler);
  62:../src/cr_startup_lpc11.c **** void TIMER16_0_IRQHandler (void) ALIAS(IntDefaultHandler);
  63:../src/cr_startup_lpc11.c **** void TIMER16_1_IRQHandler (void) ALIAS(IntDefaultHandler);
  64:../src/cr_startup_lpc11.c **** void TIMER32_0_IRQHandler (void) ALIAS(IntDefaultHandler);
  65:../src/cr_startup_lpc11.c **** void TIMER32_1_IRQHandler (void) ALIAS(IntDefaultHandler);
  66:../src/cr_startup_lpc11.c **** void SSP_IRQHandler (void) ALIAS(IntDefaultHandler);
  67:../src/cr_startup_lpc11.c **** void UART_IRQHandler (void) ALIAS(IntDefaultHandler);
  68:../src/cr_startup_lpc11.c **** void USB_IRQHandler (void) ALIAS(IntDefaultHandler);
  69:../src/cr_startup_lpc11.c **** void USB_FIQHandler (void) ALIAS(IntDefaultHandler);
  70:../src/cr_startup_lpc11.c **** void ADC_IRQHandler (void) ALIAS(IntDefaultHandler);
  71:../src/cr_startup_lpc11.c **** void WDT_IRQHandler (void) ALIAS(IntDefaultHandler);
  72:../src/cr_startup_lpc11.c **** void BOD_IRQHandler (void) ALIAS(IntDefaultHandler);
  73:../src/cr_startup_lpc11.c **** void FMC_IRQHandler (void) ALIAS(IntDefaultHandler);
  74:../src/cr_startup_lpc11.c **** void PIOINT3_IRQHandler (void) ALIAS(IntDefaultHandler);
  75:../src/cr_startup_lpc11.c **** void PIOINT2_IRQHandler (void) ALIAS(IntDefaultHandler);
  76:../src/cr_startup_lpc11.c **** void PIOINT1_IRQHandler (void) ALIAS(IntDefaultHandler);
  77:../src/cr_startup_lpc11.c **** void PIOINT0_IRQHandler (void) ALIAS(IntDefaultHandler);
  78:../src/cr_startup_lpc11.c **** void WAKEUP_IRQHandler  (void) ALIAS(IntDefaultHandler);
  79:../src/cr_startup_lpc11.c **** 
  80:../src/cr_startup_lpc11.c **** //*****************************************************************************
  81:../src/cr_startup_lpc11.c **** //
  82:../src/cr_startup_lpc11.c **** // The entry point for the application.
  83:../src/cr_startup_lpc11.c **** // __main() is the entry point for redlib based applications
  84:../src/cr_startup_lpc11.c **** // main() is the entry point for newlib based applications
  85:../src/cr_startup_lpc11.c **** //
  86:../src/cr_startup_lpc11.c **** //*****************************************************************************
  87:../src/cr_startup_lpc11.c **** extern WEAK void __main(void);
  88:../src/cr_startup_lpc11.c **** extern WEAK void main(void);
  89:../src/cr_startup_lpc11.c **** //*****************************************************************************
  90:../src/cr_startup_lpc11.c **** //
  91:../src/cr_startup_lpc11.c **** // External declaration for the pointer to the stack top from the Linker Script
  92:../src/cr_startup_lpc11.c **** //
  93:../src/cr_startup_lpc11.c **** //*****************************************************************************
  94:../src/cr_startup_lpc11.c **** extern void _vStackTop;
  95:../src/cr_startup_lpc11.c **** 
  96:../src/cr_startup_lpc11.c **** //*****************************************************************************
  97:../src/cr_startup_lpc11.c **** //
  98:../src/cr_startup_lpc11.c **** // The vector table.  Note that the proper constructs must be placed on this to
  99:../src/cr_startup_lpc11.c **** // ensure that it ends up at physical address 0x0000.0000.
 100:../src/cr_startup_lpc11.c **** //
 101:../src/cr_startup_lpc11.c **** //*****************************************************************************
 102:../src/cr_startup_lpc11.c **** __attribute__ ((section(".isr_vector")))
 103:../src/cr_startup_lpc11.c **** void (* const g_pfnVectors[])(void) =
 104:../src/cr_startup_lpc11.c **** {
 105:../src/cr_startup_lpc11.c ****     (void *)&_vStackTop,		    		// The initial stack pointer
 106:../src/cr_startup_lpc11.c ****     ResetISR,                               // The reset handler
 107:../src/cr_startup_lpc11.c ****     NMI_Handler,                            // The NMI handler
 108:../src/cr_startup_lpc11.c ****     HardFault_Handler,                      // The hard fault handler
 109:../src/cr_startup_lpc11.c ****     0,                      				// Reserved
 110:../src/cr_startup_lpc11.c ****     0,                      				// Reserved
 111:../src/cr_startup_lpc11.c ****     0,                      				// Reserved
 112:../src/cr_startup_lpc11.c ****     0,                                      // Reserved
 113:../src/cr_startup_lpc11.c ****     0,                                      // Reserved
 114:../src/cr_startup_lpc11.c ****     0,                                      // Reserved
 115:../src/cr_startup_lpc11.c ****     0,                                      // Reserved
 116:../src/cr_startup_lpc11.c ****     SVCall_Handler,                      	// SVCall handler
 117:../src/cr_startup_lpc11.c ****     0,                      				// Reserved
 118:../src/cr_startup_lpc11.c ****     0,                                      // Reserved
 119:../src/cr_startup_lpc11.c ****     PendSV_Handler,                      	// The PendSV handler
 120:../src/cr_startup_lpc11.c ****     SysTick_Handler,                      	// The SysTick handler
 121:../src/cr_startup_lpc11.c **** 
 122:../src/cr_startup_lpc11.c ****     // Wakeup sources (15 ea.) for the I/O pins:
 123:../src/cr_startup_lpc11.c ****     //   PIO0 (0:11)
 124:../src/cr_startup_lpc11.c ****     //   PIO1 (0:2)
 125:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_0  Wakeup
 126:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_1  Wakeup
 127:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_2  Wakeup
 128:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_3  Wakeup
 129:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_4  Wakeup
 130:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_5  Wakeup
 131:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_6  Wakeup
 132:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_7  Wakeup
 133:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_8  Wakeup
 134:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_9  Wakeup
 135:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_10 Wakeup
 136:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO0_11 Wakeup
 137:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO1_0  Wakeup
 138:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO1_1  Wakeup
 139:../src/cr_startup_lpc11.c ****     WAKEUP_IRQHandler,                      // PIO1_2  Wakeup
 140:../src/cr_startup_lpc11.c ****     
 141:../src/cr_startup_lpc11.c ****     I2C_IRQHandler,                      	// I2C0
 142:../src/cr_startup_lpc11.c ****     TIMER16_0_IRQHandler,                   // CT16B0 (16-bit Timer 0)
 143:../src/cr_startup_lpc11.c ****     TIMER16_1_IRQHandler,                   // CT16B1 (16-bit Timer 1)
 144:../src/cr_startup_lpc11.c ****     TIMER32_0_IRQHandler,                   // CT32B0 (32-bit Timer 0)
 145:../src/cr_startup_lpc11.c ****     TIMER32_1_IRQHandler,                   // CT32B1 (32-bit Timer 1)
 146:../src/cr_startup_lpc11.c ****     SSP_IRQHandler,                      	// SSP0
 147:../src/cr_startup_lpc11.c ****     UART_IRQHandler,                      	// UART0
 148:../src/cr_startup_lpc11.c **** 
 149:../src/cr_startup_lpc11.c ****     USB_IRQHandler,                      	// USB IRQ
 150:../src/cr_startup_lpc11.c ****     USB_FIQHandler,                      	// USB FIQ
 151:../src/cr_startup_lpc11.c **** 
 152:../src/cr_startup_lpc11.c ****     ADC_IRQHandler,                      	// ADC   (A/D Converter)
 153:../src/cr_startup_lpc11.c ****     WDT_IRQHandler,                      	// WDT   (Watchdog Timer)
 154:../src/cr_startup_lpc11.c ****     BOD_IRQHandler,                      	// BOD   (Brownout Detect)
 155:../src/cr_startup_lpc11.c ****     FMC_IRQHandler,                      	// Flash (IP2111 Flash Memory Controller)
 156:../src/cr_startup_lpc11.c ****     PIOINT3_IRQHandler,                     // PIO INT3
 157:../src/cr_startup_lpc11.c ****     PIOINT2_IRQHandler,                     // PIO INT2
 158:../src/cr_startup_lpc11.c ****     PIOINT1_IRQHandler,                     // PIO INT1
 159:../src/cr_startup_lpc11.c ****     PIOINT0_IRQHandler,                     // PIO INT0
 160:../src/cr_startup_lpc11.c **** };
 161:../src/cr_startup_lpc11.c **** 
 162:../src/cr_startup_lpc11.c **** //*****************************************************************************
 163:../src/cr_startup_lpc11.c **** //
 164:../src/cr_startup_lpc11.c **** // The following are constructs created by the linker, indicating where the
 165:../src/cr_startup_lpc11.c **** // the "data" and "bss" segments reside in memory.  The initializers for the
 166:../src/cr_startup_lpc11.c **** // for the "data" segment resides immediately following the "text" segment.
 167:../src/cr_startup_lpc11.c **** //
 168:../src/cr_startup_lpc11.c **** //*****************************************************************************
 169:../src/cr_startup_lpc11.c **** extern unsigned char _etext;
 170:../src/cr_startup_lpc11.c **** extern unsigned char _data;
 171:../src/cr_startup_lpc11.c **** extern unsigned char _edata;
 172:../src/cr_startup_lpc11.c **** extern unsigned char _bss;
 173:../src/cr_startup_lpc11.c **** extern unsigned char _ebss;
 174:../src/cr_startup_lpc11.c **** 
 175:../src/cr_startup_lpc11.c **** //*****************************************************************************
 176:../src/cr_startup_lpc11.c **** //
 177:../src/cr_startup_lpc11.c **** // This is the code that gets called when the processor first starts execution
 178:../src/cr_startup_lpc11.c **** // following a reset event.  Only the absolutely necessary set is performed,
 179:../src/cr_startup_lpc11.c **** // after which the application supplied entry() routine is called.  Any fancy
 180:../src/cr_startup_lpc11.c **** // actions (such as making decisions based on the reset cause register, and
 181:../src/cr_startup_lpc11.c **** // resetting the bits in that register) are left solely in the hands of the
 182:../src/cr_startup_lpc11.c **** // application.
 183:../src/cr_startup_lpc11.c **** //
 184:../src/cr_startup_lpc11.c **** //*****************************************************************************
 185:../src/cr_startup_lpc11.c **** void Reset_Handler(void)
 186:../src/cr_startup_lpc11.c **** {
  80              		.loc 1 186 0
  81              		.cfi_startproc
  82 0000 80B5     		push	{r7, lr}
  83              	.LCFI0:
  84              		.cfi_def_cfa_offset 8
  85              		.cfi_offset 7, -8
  86              		.cfi_offset 14, -4
  87 0002 82B0     		sub	sp, sp, #8
  88              	.LCFI1:
  89              		.cfi_def_cfa_offset 16
  90 0004 00AF     		add	r7, sp, #0
  91              	.LCFI2:
  92              		.cfi_def_cfa_register 7
 187:../src/cr_startup_lpc11.c ****     unsigned char *pulSrc, *pulDest;
 188:../src/cr_startup_lpc11.c **** 
 189:../src/cr_startup_lpc11.c ****     //
 190:../src/cr_startup_lpc11.c ****     // Copy the data segment initializers from flash to SRAM.
 191:../src/cr_startup_lpc11.c ****     //
 192:../src/cr_startup_lpc11.c ****     pulSrc = &_etext;
  93              		.loc 1 192 0
  94 0006 144B     		ldr	r3, .L8
  95 0008 7B60     		str	r3, [r7, #4]
 193:../src/cr_startup_lpc11.c ****     for(pulDest = &_data; pulDest < &_edata; )
  96              		.loc 1 193 0
  97 000a 144B     		ldr	r3, .L8+4
  98 000c 3B60     		str	r3, [r7]
  99 000e 09E0     		b	.L2
 100              	.L3:
 194:../src/cr_startup_lpc11.c ****     {
 195:../src/cr_startup_lpc11.c ****         *pulDest++ = *pulSrc++;
 101              		.loc 1 195 0
 102 0010 7B68     		ldr	r3, [r7, #4]
 103 0012 1A78     		ldrb	r2, [r3]
 104 0014 3B68     		ldr	r3, [r7]
 105 0016 1A70     		strb	r2, [r3]
 106 0018 3B68     		ldr	r3, [r7]
 107 001a 0133     		add	r3, r3, #1
 108 001c 3B60     		str	r3, [r7]
 109 001e 7B68     		ldr	r3, [r7, #4]
 110 0020 0133     		add	r3, r3, #1
 111 0022 7B60     		str	r3, [r7, #4]
 112              	.L2:
 193:../src/cr_startup_lpc11.c ****     for(pulDest = &_data; pulDest < &_edata; )
 113              		.loc 1 193 0 discriminator 1
 114 0024 3A68     		ldr	r2, [r7]
 115 0026 0E4B     		ldr	r3, .L8+8
 116 0028 9A42     		cmp	r2, r3
 117 002a F1D3     		bcc	.L3
 196:../src/cr_startup_lpc11.c ****     }
 197:../src/cr_startup_lpc11.c **** 
 198:../src/cr_startup_lpc11.c ****     //
 199:../src/cr_startup_lpc11.c ****     // Zero fill the bss segment.
 200:../src/cr_startup_lpc11.c ****     //
 201:../src/cr_startup_lpc11.c **** 	for(pulDest = &_bss; pulDest < &_ebss; pulDest++)
 118              		.loc 1 201 0
 119 002c 0D4B     		ldr	r3, .L8+12
 120 002e 3B60     		str	r3, [r7]
 121 0030 05E0     		b	.L4
 122              	.L5:
 202:../src/cr_startup_lpc11.c **** 	  *pulDest = 0;
 123              		.loc 1 202 0 discriminator 2
 124 0032 3B68     		ldr	r3, [r7]
 125 0034 0022     		mov	r2, #0
 126 0036 1A70     		strb	r2, [r3]
 201:../src/cr_startup_lpc11.c **** 	for(pulDest = &_bss; pulDest < &_ebss; pulDest++)
 127              		.loc 1 201 0 discriminator 2
 128 0038 3B68     		ldr	r3, [r7]
 129 003a 0133     		add	r3, r3, #1
 130 003c 3B60     		str	r3, [r7]
 131              	.L4:
 201:../src/cr_startup_lpc11.c **** 	for(pulDest = &_bss; pulDest < &_ebss; pulDest++)
 132              		.loc 1 201 0 is_stmt 0 discriminator 1
 133 003e 3A68     		ldr	r2, [r7]
 134 0040 094B     		ldr	r3, .L8+16
 135 0042 9A42     		cmp	r2, r3
 136 0044 F5D3     		bcc	.L5
 203:../src/cr_startup_lpc11.c **** 
 204:../src/cr_startup_lpc11.c **** #ifdef __USE_CMSIS
 205:../src/cr_startup_lpc11.c **** 	SystemInit();
 206:../src/cr_startup_lpc11.c **** #endif
 207:../src/cr_startup_lpc11.c **** 	//
 208:../src/cr_startup_lpc11.c **** 	// Call the application's entry point.
 209:../src/cr_startup_lpc11.c **** 	// __main() is the entry point for redlib based applications (which calls main())
 210:../src/cr_startup_lpc11.c **** 	// main() is the entry point for newlib based applications
 211:../src/cr_startup_lpc11.c **** 	//
 212:../src/cr_startup_lpc11.c **** 	if (__main)
 137              		.loc 1 212 0 is_stmt 1
 138 0046 094B     		ldr	r3, .L8+20
 139 0048 002B     		cmp	r3, #0
 140 004a 02D0     		beq	.L6
 213:../src/cr_startup_lpc11.c **** 		__main() ;
 141              		.loc 1 213 0
 142 004c FFF7FEFF 		bl	__main
 143 0050 01E0     		b	.L7
 144              	.L6:
 214:../src/cr_startup_lpc11.c **** 	else
 215:../src/cr_startup_lpc11.c **** 		main() ;
 145              		.loc 1 215 0
 146 0052 FFF7FEFF 		bl	main
 147              	.L7:
 216:../src/cr_startup_lpc11.c **** 
 217:../src/cr_startup_lpc11.c **** 	//
 218:../src/cr_startup_lpc11.c **** 	// main() shouldn't return, but if it does, we'll just enter an infinite loop 
 219:../src/cr_startup_lpc11.c **** 	//
 220:../src/cr_startup_lpc11.c **** 	while (1) {
 221:../src/cr_startup_lpc11.c **** 		;
 222:../src/cr_startup_lpc11.c **** 	}
 148              		.loc 1 222 0 discriminator 1
 149 0056 FEE7     		b	.L7
 150              	.L9:
 151              		.align	2
 152              	.L8:
 153 0058 00000000 		.word	_etext
 154 005c 00000000 		.word	_data
 155 0060 00000000 		.word	_edata
 156 0064 00000000 		.word	_bss
 157 0068 00000000 		.word	_ebss
 158 006c 00000000 		.word	__main
 159              		.cfi_endproc
 160              	.LFE0:
 162              		.section	.text.NMI_Handler,"ax",%progbits
 163              		.align	2
 164              		.weak	NMI_Handler
 165              		.code	16
 166              		.thumb_func
 168              	NMI_Handler:
 169              	.LFB1:
 223:../src/cr_startup_lpc11.c **** }
 224:../src/cr_startup_lpc11.c **** 
 225:../src/cr_startup_lpc11.c **** //*****************************************************************************
 226:../src/cr_startup_lpc11.c **** //
 227:../src/cr_startup_lpc11.c **** // This is the code that gets called when the processor receives a NMI.  This
 228:../src/cr_startup_lpc11.c **** // simply enters an infinite loop, preserving the system state for examination
 229:../src/cr_startup_lpc11.c **** // by a debugger.
 230:../src/cr_startup_lpc11.c **** //
 231:../src/cr_startup_lpc11.c **** //*****************************************************************************
 232:../src/cr_startup_lpc11.c **** void NMI_Handler(void)
 233:../src/cr_startup_lpc11.c **** {
 170              		.loc 1 233 0
 171              		.cfi_startproc
 172 0000 80B5     		push	{r7, lr}
 173              	.LCFI3:
 174              		.cfi_def_cfa_offset 8
 175              		.cfi_offset 7, -8
 176              		.cfi_offset 14, -4
 177 0002 00AF     		add	r7, sp, #0
 178              	.LCFI4:
 179              		.cfi_def_cfa_register 7
 180              	.L11:
 234:../src/cr_startup_lpc11.c ****     //
 235:../src/cr_startup_lpc11.c ****     // Enter an infinite loop.
 236:../src/cr_startup_lpc11.c ****     //
 237:../src/cr_startup_lpc11.c ****     while(1)
 238:../src/cr_startup_lpc11.c ****     {
 239:../src/cr_startup_lpc11.c ****     }
 181              		.loc 1 239 0 discriminator 1
 182 0004 FEE7     		b	.L11
 183              		.cfi_endproc
 184              	.LFE1:
 186 0006 C046     		.section	.text.HardFault_Handler,"ax",%progbits
 187              		.align	2
 188              		.weak	HardFault_Handler
 189              		.code	16
 190              		.thumb_func
 192              	HardFault_Handler:
 193              	.LFB2:
 240:../src/cr_startup_lpc11.c **** }
 241:../src/cr_startup_lpc11.c **** 
 242:../src/cr_startup_lpc11.c **** //*****************************************************************************
 243:../src/cr_startup_lpc11.c **** //
 244:../src/cr_startup_lpc11.c **** // This is the code that gets called when the processor receives a fault
 245:../src/cr_startup_lpc11.c **** // interrupt.  This simply enters an infinite loop, preserving the system state
 246:../src/cr_startup_lpc11.c **** // for examination by a debugger.
 247:../src/cr_startup_lpc11.c **** //
 248:../src/cr_startup_lpc11.c **** //*****************************************************************************
 249:../src/cr_startup_lpc11.c **** void HardFault_Handler(void)
 250:../src/cr_startup_lpc11.c **** {
 194              		.loc 1 250 0
 195              		.cfi_startproc
 196 0000 80B5     		push	{r7, lr}
 197              	.LCFI5:
 198              		.cfi_def_cfa_offset 8
 199              		.cfi_offset 7, -8
 200              		.cfi_offset 14, -4
 201 0002 00AF     		add	r7, sp, #0
 202              	.LCFI6:
 203              		.cfi_def_cfa_register 7
 204              	.L13:
 251:../src/cr_startup_lpc11.c ****     //
 252:../src/cr_startup_lpc11.c ****     // Enter an infinite loop.
 253:../src/cr_startup_lpc11.c ****     //
 254:../src/cr_startup_lpc11.c ****     while(1)
 255:../src/cr_startup_lpc11.c ****     {
 256:../src/cr_startup_lpc11.c ****     }
 205              		.loc 1 256 0 discriminator 1
 206 0004 FEE7     		b	.L13
 207              		.cfi_endproc
 208              	.LFE2:
 210 0006 C046     		.section	.text.SVCall_Handler,"ax",%progbits
 211              		.align	2
 212              		.weak	SVCall_Handler
 213              		.code	16
 214              		.thumb_func
 216              	SVCall_Handler:
 217              	.LFB3:
 257:../src/cr_startup_lpc11.c **** }
 258:../src/cr_startup_lpc11.c **** 
 259:../src/cr_startup_lpc11.c **** void SVCall_Handler(void)
 260:../src/cr_startup_lpc11.c **** {
 218              		.loc 1 260 0
 219              		.cfi_startproc
 220 0000 80B5     		push	{r7, lr}
 221              	.LCFI7:
 222              		.cfi_def_cfa_offset 8
 223              		.cfi_offset 7, -8
 224              		.cfi_offset 14, -4
 225 0002 00AF     		add	r7, sp, #0
 226              	.LCFI8:
 227              		.cfi_def_cfa_register 7
 228              	.L15:
 261:../src/cr_startup_lpc11.c ****     while(1)
 262:../src/cr_startup_lpc11.c ****     {
 263:../src/cr_startup_lpc11.c ****     }
 229              		.loc 1 263 0 discriminator 1
 230 0004 FEE7     		b	.L15
 231              		.cfi_endproc
 232              	.LFE3:
 234 0006 C046     		.section	.text.PendSV_Handler,"ax",%progbits
 235              		.align	2
 236              		.weak	PendSV_Handler
 237              		.code	16
 238              		.thumb_func
 240              	PendSV_Handler:
 241              	.LFB4:
 264:../src/cr_startup_lpc11.c **** }
 265:../src/cr_startup_lpc11.c **** 
 266:../src/cr_startup_lpc11.c **** void PendSV_Handler(void)
 267:../src/cr_startup_lpc11.c **** {
 242              		.loc 1 267 0
 243              		.cfi_startproc
 244 0000 80B5     		push	{r7, lr}
 245              	.LCFI9:
 246              		.cfi_def_cfa_offset 8
 247              		.cfi_offset 7, -8
 248              		.cfi_offset 14, -4
 249 0002 00AF     		add	r7, sp, #0
 250              	.LCFI10:
 251              		.cfi_def_cfa_register 7
 252              	.L17:
 268:../src/cr_startup_lpc11.c ****     while(1)
 269:../src/cr_startup_lpc11.c ****     {
 270:../src/cr_startup_lpc11.c ****     }
 253              		.loc 1 270 0 discriminator 1
 254 0004 FEE7     		b	.L17
 255              		.cfi_endproc
 256              	.LFE4:
 258 0006 C046     		.section	.text.SysTick_Handler,"ax",%progbits
 259              		.align	2
 260              		.weak	SysTick_Handler
 261              		.code	16
 262              		.thumb_func
 264              	SysTick_Handler:
 265              	.LFB5:
 271:../src/cr_startup_lpc11.c **** }
 272:../src/cr_startup_lpc11.c **** 
 273:../src/cr_startup_lpc11.c **** void SysTick_Handler(void)
 274:../src/cr_startup_lpc11.c **** {
 266              		.loc 1 274 0
 267              		.cfi_startproc
 268 0000 80B5     		push	{r7, lr}
 269              	.LCFI11:
 270              		.cfi_def_cfa_offset 8
 271              		.cfi_offset 7, -8
 272              		.cfi_offset 14, -4
 273 0002 00AF     		add	r7, sp, #0
 274              	.LCFI12:
 275              		.cfi_def_cfa_register 7
 276              	.L19:
 275:../src/cr_startup_lpc11.c ****     while(1)
 276:../src/cr_startup_lpc11.c ****     {
 277:../src/cr_startup_lpc11.c ****     }
 277              		.loc 1 277 0 discriminator 1
 278 0004 FEE7     		b	.L19
 279              		.cfi_endproc
 280              	.LFE5:
 282 0006 C046     		.section	.text.IntDefaultHandler,"ax",%progbits
 283              		.align	2
 284              		.global	IntDefaultHandler
 285              		.code	16
 286              		.thumb_func
 288              	IntDefaultHandler:
 289              	.LFB6:
 278:../src/cr_startup_lpc11.c **** }
 279:../src/cr_startup_lpc11.c **** 
 280:../src/cr_startup_lpc11.c **** 
 281:../src/cr_startup_lpc11.c **** 
 282:../src/cr_startup_lpc11.c **** //*****************************************************************************
 283:../src/cr_startup_lpc11.c **** //
 284:../src/cr_startup_lpc11.c **** // This is the code that gets called when the processor receives an unexpected
 285:../src/cr_startup_lpc11.c **** // interrupt.  This simply enters an infinite loop, preserving the system state
 286:../src/cr_startup_lpc11.c **** // for examination by a debugger.
 287:../src/cr_startup_lpc11.c **** //
 288:../src/cr_startup_lpc11.c **** //*****************************************************************************
 289:../src/cr_startup_lpc11.c **** void IntDefaultHandler(void)
 290:../src/cr_startup_lpc11.c **** {
 290              		.loc 1 290 0
 291              		.cfi_startproc
 292 0000 80B5     		push	{r7, lr}
 293              	.LCFI13:
 294              		.cfi_def_cfa_offset 8
 295              		.cfi_offset 7, -8
 296              		.cfi_offset 14, -4
 297 0002 00AF     		add	r7, sp, #0
 298              	.LCFI14:
 299              		.cfi_def_cfa_register 7
 300              	.L21:
 291:../src/cr_startup_lpc11.c ****     //
 292:../src/cr_startup_lpc11.c ****     // Go into an infinite loop.
 293:../src/cr_startup_lpc11.c ****     //
 294:../src/cr_startup_lpc11.c ****     while(1)
 295:../src/cr_startup_lpc11.c ****     {
 296:../src/cr_startup_lpc11.c ****     }
 301              		.loc 1 296 0 discriminator 1
 302 0004 FEE7     		b	.L21
 303              		.cfi_endproc
 304              	.LFE6:
 306              		.weak	ResetISR
 307              		.thumb_set ResetISR,Reset_Handler
 308              		.weak	I2C_IRQHandler
 309              		.thumb_set I2C_IRQHandler,IntDefaultHandler
 310              		.weak	TIMER16_0_IRQHandler
 311              		.thumb_set TIMER16_0_IRQHandler,IntDefaultHandler
 312              		.weak	TIMER16_1_IRQHandler
 313              		.thumb_set TIMER16_1_IRQHandler,IntDefaultHandler
 314              		.weak	TIMER32_0_IRQHandler
 315              		.thumb_set TIMER32_0_IRQHandler,IntDefaultHandler
 316              		.weak	TIMER32_1_IRQHandler
 317              		.thumb_set TIMER32_1_IRQHandler,IntDefaultHandler
 318              		.weak	SSP_IRQHandler
 319              		.thumb_set SSP_IRQHandler,IntDefaultHandler
 320              		.weak	UART_IRQHandler
 321              		.thumb_set UART_IRQHandler,IntDefaultHandler
 322              		.weak	USB_IRQHandler
 323              		.thumb_set USB_IRQHandler,IntDefaultHandler
 324              		.weak	USB_FIQHandler
 325              		.thumb_set USB_FIQHandler,IntDefaultHandler
 326              		.weak	ADC_IRQHandler
 327              		.thumb_set ADC_IRQHandler,IntDefaultHandler
 328              		.weak	WDT_IRQHandler
 329              		.thumb_set WDT_IRQHandler,IntDefaultHandler
 330              		.weak	BOD_IRQHandler
 331              		.thumb_set BOD_IRQHandler,IntDefaultHandler
 332              		.weak	FMC_IRQHandler
 333              		.thumb_set FMC_IRQHandler,IntDefaultHandler
 334              		.weak	PIOINT3_IRQHandler
 335              		.thumb_set PIOINT3_IRQHandler,IntDefaultHandler
 336              		.weak	PIOINT2_IRQHandler
 337              		.thumb_set PIOINT2_IRQHandler,IntDefaultHandler
 338              		.weak	PIOINT1_IRQHandler
 339              		.thumb_set PIOINT1_IRQHandler,IntDefaultHandler
 340              		.weak	PIOINT0_IRQHandler
 341              		.thumb_set PIOINT0_IRQHandler,IntDefaultHandler
 342              		.weak	WAKEUP_IRQHandler
 343              		.thumb_set WAKEUP_IRQHandler,IntDefaultHandler
 344              		.weak	main
 345              		.weak	__main
 346 0006 C046     		.text
 347              	.Letext0:
DEFINED SYMBOLS
                            *ABS*:0000000000000000 cr_startup_lpc11.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:22     .isr_vector:0000000000000000 g_pfnVectors
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:19     .isr_vector:0000000000000000 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:77     .text.Reset_Handler:0000000000000000 ResetISR
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:168    .text.NMI_Handler:0000000000000000 NMI_Handler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:192    .text.HardFault_Handler:0000000000000000 HardFault_Handler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:216    .text.SVCall_Handler:0000000000000000 SVCall_Handler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:240    .text.PendSV_Handler:0000000000000000 PendSV_Handler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:264    .text.SysTick_Handler:0000000000000000 SysTick_Handler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 WAKEUP_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 I2C_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 TIMER16_0_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 TIMER16_1_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 TIMER32_0_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 TIMER32_1_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 SSP_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 UART_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 USB_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 USB_FIQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 ADC_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 WDT_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 BOD_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 FMC_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 PIOINT3_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 PIOINT2_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 PIOINT1_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 PIOINT0_IRQHandler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:72     .text.Reset_Handler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:77     .text.Reset_Handler:0000000000000000 Reset_Handler
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:153    .text.Reset_Handler:0000000000000058 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:163    .text.NMI_Handler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:187    .text.HardFault_Handler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:211    .text.SVCall_Handler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:235    .text.PendSV_Handler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:259    .text.SysTick_Handler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:283    .text.IntDefaultHandler:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccC6KbhK.s:288    .text.IntDefaultHandler:0000000000000000 IntDefaultHandler
                     .debug_frame:0000000000000010 $d

UNDEFINED SYMBOLS
_vStackTop
__main
main
_etext
_data
_edata
_bss
_ebss
