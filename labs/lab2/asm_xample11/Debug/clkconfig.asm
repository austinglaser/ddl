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
  13              		.file	"clkconfig.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.WDT_CLK_Setup,"ax",%progbits
  18              		.align	2
  19              		.global	WDT_CLK_Setup
  20              		.code	16
  21              		.thumb_func
  23              	WDT_CLK_Setup:
  24              	.LFB20:
  25              		.file 1 "../driver/clkconfig.c"
   1:../driver/clkconfig.c **** /****************************************************************************
   2:../driver/clkconfig.c ****  *   $Id:: clkconfig.c 4785 2010-09-03 22:39:27Z nxp21346                   $
   3:../driver/clkconfig.c ****  *   Project: NXP LPC11xx Clock Configuration example
   4:../driver/clkconfig.c ****  *
   5:../driver/clkconfig.c ****  *   Description:
   6:../driver/clkconfig.c ****  *     This file contains clock configuration code example which include 
   7:../driver/clkconfig.c ****  *     watchdog setup and debug clock out setup.
   8:../driver/clkconfig.c ****  *
   9:../driver/clkconfig.c ****  ****************************************************************************
  10:../driver/clkconfig.c ****  * Software that is described herein is for illustrative purposes only
  11:../driver/clkconfig.c ****  * which provides customers with programming information regarding the
  12:../driver/clkconfig.c ****  * products. This software is supplied "AS IS" without any warranties.
  13:../driver/clkconfig.c ****  * NXP Semiconductors assumes no responsibility or liability for the
  14:../driver/clkconfig.c ****  * use of the software, conveys no license or title under any patent,
  15:../driver/clkconfig.c ****  * copyright, or mask work right to the product. NXP Semiconductors
  16:../driver/clkconfig.c ****  * reserves the right to make changes in the software without
  17:../driver/clkconfig.c ****  * notification. NXP Semiconductors also make no representation or
  18:../driver/clkconfig.c ****  * warranty that such application will be suitable for the specified
  19:../driver/clkconfig.c ****  * use without further testing or modification.
  20:../driver/clkconfig.c **** ****************************************************************************/
  21:../driver/clkconfig.c **** #include "driver_config.h"
  22:../driver/clkconfig.c **** #if CONFIG_ENABLE_DRIVER_CLKCONFIG==1
  23:../driver/clkconfig.c **** #include "clkconfig.h"
  24:../driver/clkconfig.c **** 
  25:../driver/clkconfig.c **** /*****************************************************************************
  26:../driver/clkconfig.c **** ** Function name:		WDT_CLK_Setup
  27:../driver/clkconfig.c **** **
  28:../driver/clkconfig.c **** ** Descriptions:		Configure WDT clock.
  29:../driver/clkconfig.c **** ** parameters:			clock source: irc_osc(0), main_clk(1), wdt_osc(2).			 
  30:../driver/clkconfig.c **** ** 						
  31:../driver/clkconfig.c **** ** Returned value:		None
  32:../driver/clkconfig.c **** ** 
  33:../driver/clkconfig.c **** *****************************************************************************/
  34:../driver/clkconfig.c **** void WDT_CLK_Setup ( uint32_t clksrc )
  35:../driver/clkconfig.c **** {
  26              		.loc 1 35 0
  27              		.cfi_startproc
  28 0000 80B5     		push	{r7, lr}
  29              	.LCFI0:
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 82B0     		sub	sp, sp, #8
  34              	.LCFI1:
  35              		.cfi_def_cfa_offset 16
  36 0004 00AF     		add	r7, sp, #0
  37              	.LCFI2:
  38              		.cfi_def_cfa_register 7
  39 0006 7860     		str	r0, [r7, #4]
  36:../driver/clkconfig.c ****   /* Watchdog configuration. */
  37:../driver/clkconfig.c ****   /* Freq = 0.5Mhz, div_sel is 0, divided by 2. WDT_OSC should be 250khz */
  38:../driver/clkconfig.c ****   LPC_SYSCON->WDTOSCCTRL = (0x5<<5)|0x00;
  40              		.loc 1 38 0
  41 0008 164B     		ldr	r3, .L3
  42 000a A022     		mov	r2, #160
  43 000c 5A62     		str	r2, [r3, #36]
  39:../driver/clkconfig.c ****   LPC_SYSCON->WDTCLKSEL = clksrc;        /* Select clock source */
  44              		.loc 1 39 0
  45 000e 154A     		ldr	r2, .L3
  46 0010 D023     		mov	r3, #208
  47 0012 7968     		ldr	r1, [r7, #4]
  48 0014 D150     		str	r1, [r2, r3]
  40:../driver/clkconfig.c ****   LPC_SYSCON->WDTCLKUEN = 0x01;          /* Update clock */
  49              		.loc 1 40 0
  50 0016 134A     		ldr	r2, .L3
  51 0018 D423     		mov	r3, #212
  52 001a 0121     		mov	r1, #1
  53 001c D150     		str	r1, [r2, r3]
  41:../driver/clkconfig.c ****   LPC_SYSCON->WDTCLKUEN = 0x00;          /* Toggle update register once */
  54              		.loc 1 41 0
  55 001e 114A     		ldr	r2, .L3
  56 0020 D423     		mov	r3, #212
  57 0022 0021     		mov	r1, #0
  58 0024 D150     		str	r1, [r2, r3]
  42:../driver/clkconfig.c ****   LPC_SYSCON->WDTCLKUEN = 0x01;
  59              		.loc 1 42 0
  60 0026 0F4A     		ldr	r2, .L3
  61 0028 D423     		mov	r3, #212
  62 002a 0121     		mov	r1, #1
  63 002c D150     		str	r1, [r2, r3]
  43:../driver/clkconfig.c ****   while ( !(LPC_SYSCON->WDTCLKUEN & 0x01) );  /* Wait until updated */
  64              		.loc 1 43 0
  65 002e C046     		mov	r8, r8
  66              	.L2:
  67              		.loc 1 43 0 is_stmt 0 discriminator 1
  68 0030 0C4A     		ldr	r2, .L3
  69 0032 D423     		mov	r3, #212
  70 0034 D358     		ldr	r3, [r2, r3]
  71 0036 1A1C     		mov	r2, r3
  72 0038 0123     		mov	r3, #1
  73 003a 1340     		and	r3, r2
  74 003c F8D0     		beq	.L2
  44:../driver/clkconfig.c ****   LPC_SYSCON->WDTCLKDIV = 1;            /* Divided by 1 */  
  75              		.loc 1 44 0 is_stmt 1
  76 003e 094A     		ldr	r2, .L3
  77 0040 D823     		mov	r3, #216
  78 0042 0121     		mov	r1, #1
  79 0044 D150     		str	r1, [r2, r3]
  45:../driver/clkconfig.c ****   LPC_SYSCON->PDRUNCFG &= ~(0x1<<6);    /* Let WDT clock run */
  80              		.loc 1 45 0
  81 0046 074A     		ldr	r2, .L3
  82 0048 0649     		ldr	r1, .L3
  83 004a 8E23     		mov	r3, #142
  84 004c 9B00     		lsl	r3, r3, #2
  85 004e CB58     		ldr	r3, [r1, r3]
  86 0050 4021     		mov	r1, #64
  87 0052 181C     		mov	r0, r3
  88 0054 8843     		bic	r0, r1
  89 0056 011C     		mov	r1, r0
  90 0058 8E23     		mov	r3, #142
  91 005a 9B00     		lsl	r3, r3, #2
  92 005c D150     		str	r1, [r2, r3]
  46:../driver/clkconfig.c ****   return;
  47:../driver/clkconfig.c **** }
  93              		.loc 1 47 0
  94 005e BD46     		mov	sp, r7
  95 0060 02B0     		add	sp, sp, #8
  96              		@ sp needed for prologue
  97 0062 80BD     		pop	{r7, pc}
  98              	.L4:
  99              		.align	2
 100              	.L3:
 101 0064 00800440 		.word	1074036736
 102              		.cfi_endproc
 103              	.LFE20:
 105              		.section	.text.CLKOUT_Setup,"ax",%progbits
 106              		.align	2
 107              		.global	CLKOUT_Setup
 108              		.code	16
 109              		.thumb_func
 111              	CLKOUT_Setup:
 112              	.LFB21:
  48:../driver/clkconfig.c **** 
  49:../driver/clkconfig.c **** /*****************************************************************************
  50:../driver/clkconfig.c **** ** Function name:		CLKOUT_Setup
  51:../driver/clkconfig.c **** **
  52:../driver/clkconfig.c **** ** Descriptions:		Configure CLKOUT for reference clock check.
  53:../driver/clkconfig.c **** ** parameters:			clock source: irc_osc(0), sys_osc(1), wdt_osc(2),
  54:../driver/clkconfig.c **** **						main_clk(3).			 
  55:../driver/clkconfig.c **** ** 						
  56:../driver/clkconfig.c **** ** Returned value:		None
  57:../driver/clkconfig.c **** ** 
  58:../driver/clkconfig.c **** *****************************************************************************/
  59:../driver/clkconfig.c **** void CLKOUT_Setup ( uint32_t clksrc )
  60:../driver/clkconfig.c **** {
 113              		.loc 1 60 0
 114              		.cfi_startproc
 115 0000 80B5     		push	{r7, lr}
 116              	.LCFI3:
 117              		.cfi_def_cfa_offset 8
 118              		.cfi_offset 7, -8
 119              		.cfi_offset 14, -4
 120 0002 82B0     		sub	sp, sp, #8
 121              	.LCFI4:
 122              		.cfi_def_cfa_offset 16
 123 0004 00AF     		add	r7, sp, #0
 124              	.LCFI5:
 125              		.cfi_def_cfa_register 7
 126 0006 7860     		str	r0, [r7, #4]
  61:../driver/clkconfig.c ****   /* debug PLL after configuration. */
  62:../driver/clkconfig.c ****   LPC_SYSCON->CLKOUTCLKSEL = clksrc;	/* Select Main clock */
 127              		.loc 1 62 0
 128 0008 0F4A     		ldr	r2, .L7
 129 000a E023     		mov	r3, #224
 130 000c 7968     		ldr	r1, [r7, #4]
 131 000e D150     		str	r1, [r2, r3]
  63:../driver/clkconfig.c ****   LPC_SYSCON->CLKOUTUEN = 0x01;		/* Update clock */
 132              		.loc 1 63 0
 133 0010 0D4A     		ldr	r2, .L7
 134 0012 E423     		mov	r3, #228
 135 0014 0121     		mov	r1, #1
 136 0016 D150     		str	r1, [r2, r3]
  64:../driver/clkconfig.c ****   LPC_SYSCON->CLKOUTUEN = 0x00;		/* Toggle update register once */
 137              		.loc 1 64 0
 138 0018 0B4A     		ldr	r2, .L7
 139 001a E423     		mov	r3, #228
 140 001c 0021     		mov	r1, #0
 141 001e D150     		str	r1, [r2, r3]
  65:../driver/clkconfig.c ****   LPC_SYSCON->CLKOUTUEN = 0x01;
 142              		.loc 1 65 0
 143 0020 094A     		ldr	r2, .L7
 144 0022 E423     		mov	r3, #228
 145 0024 0121     		mov	r1, #1
 146 0026 D150     		str	r1, [r2, r3]
  66:../driver/clkconfig.c ****   while ( !(LPC_SYSCON->CLKOUTUEN & 0x01) );		/* Wait until updated */
 147              		.loc 1 66 0
 148 0028 C046     		mov	r8, r8
 149              	.L6:
 150              		.loc 1 66 0 is_stmt 0 discriminator 1
 151 002a 074A     		ldr	r2, .L7
 152 002c E423     		mov	r3, #228
 153 002e D358     		ldr	r3, [r2, r3]
 154 0030 1A1C     		mov	r2, r3
 155 0032 0123     		mov	r3, #1
 156 0034 1340     		and	r3, r2
 157 0036 F8D0     		beq	.L6
  67:../driver/clkconfig.c ****   LPC_SYSCON->CLKOUTDIV = 1;			/* Divided by 1 */
 158              		.loc 1 67 0 is_stmt 1
 159 0038 034A     		ldr	r2, .L7
 160 003a E823     		mov	r3, #232
 161 003c 0121     		mov	r1, #1
 162 003e D150     		str	r1, [r2, r3]
  68:../driver/clkconfig.c ****   return;
  69:../driver/clkconfig.c **** }
 163              		.loc 1 69 0
 164 0040 BD46     		mov	sp, r7
 165 0042 02B0     		add	sp, sp, #8
 166              		@ sp needed for prologue
 167 0044 80BD     		pop	{r7, pc}
 168              	.L8:
 169 0046 C046     		.align	2
 170              	.L7:
 171 0048 00800440 		.word	1074036736
 172              		.cfi_endproc
 173              	.LFE21:
 175              		.text
 176              	.Letext0:
 177              		.file 2 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/LPC11xx.h"
 178              		.file 3 "/Applications/lpcxpresso_6.1.2_177/lpcxpresso/tools/bin/../lib/gcc/arm-none-eabi/4.6.2/..
DEFINED SYMBOLS
                            *ABS*:0000000000000000 clkconfig.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccD8QNtu.s:18     .text.WDT_CLK_Setup:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccD8QNtu.s:23     .text.WDT_CLK_Setup:0000000000000000 WDT_CLK_Setup
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccD8QNtu.s:101    .text.WDT_CLK_Setup:0000000000000064 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccD8QNtu.s:106    .text.CLKOUT_Setup:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccD8QNtu.s:111    .text.CLKOUT_Setup:0000000000000000 CLKOUT_Setup
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccD8QNtu.s:171    .text.CLKOUT_Setup:0000000000000048 $d
                     .debug_frame:0000000000000010 $d

NO UNDEFINED SYMBOLS
