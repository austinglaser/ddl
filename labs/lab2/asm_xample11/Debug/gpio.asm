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
  13              		.file	"gpio.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.rodata
  18              		.align	2
  21              	LPC_GPIO:
  22 0000 00000050 		.word	1342177280
  23 0004 00000150 		.word	1342242816
  24 0008 00000250 		.word	1342308352
  25 000c 00000350 		.word	1342373888
  26              		.section	.text.GPIOInit,"ax",%progbits
  27              		.align	2
  28              		.global	GPIOInit
  29              		.code	16
  30              		.thumb_func
  32              	GPIOInit:
  33              	.LFB20:
  34              		.file 1 "../driver/gpio.c"
   1:../driver/gpio.c **** /****************************************************************************
   2:../driver/gpio.c ****  *   $Id:: gpio.c 4785 2010-09-03 22:39:27Z nxp21346                        $
   3:../driver/gpio.c ****  *   Project: NXP LPC11xx GPIO example
   4:../driver/gpio.c ****  *
   5:../driver/gpio.c ****  *   Description:
   6:../driver/gpio.c ****  *     This file contains GPIO code example which include GPIO 
   7:../driver/gpio.c ****  *     initialization, GPIO interrupt handler, and related APIs for 
   8:../driver/gpio.c ****  *     GPIO access.
   9:../driver/gpio.c ****  *
  10:../driver/gpio.c ****  ****************************************************************************
  11:../driver/gpio.c ****  * Software that is described herein is for illustrative purposes only
  12:../driver/gpio.c ****  * which provides customers with programming information regarding the
  13:../driver/gpio.c ****  * products. This software is supplied "AS IS" without any warranties.
  14:../driver/gpio.c ****  * NXP Semiconductors assumes no responsibility or liability for the
  15:../driver/gpio.c ****  * use of the software, conveys no license or title under any patent,
  16:../driver/gpio.c ****  * copyright, or mask work right to the product. NXP Semiconductors
  17:../driver/gpio.c ****  * reserves the right to make changes in the software without
  18:../driver/gpio.c ****  * notification. NXP Semiconductors also make no representation or
  19:../driver/gpio.c ****  * warranty that such application will be suitable for the specified
  20:../driver/gpio.c ****  * use without further testing or modification.
  21:../driver/gpio.c **** ****************************************************************************/
  22:../driver/gpio.c **** #include "driver_config.h"
  23:../driver/gpio.c **** #if CONFIG_ENABLE_DRIVER_GPIO==1
  24:../driver/gpio.c **** #include "gpio.h"
  25:../driver/gpio.c **** 
  26:../driver/gpio.c **** #if CONFIG_GPIO_DEFAULT_PIOINT0_IRQHANDLER==1
  27:../driver/gpio.c **** volatile uint32_t gpio0_counter = 0;
  28:../driver/gpio.c **** volatile uint32_t p0_1_counter  = 0;
  29:../driver/gpio.c **** /*****************************************************************************
  30:../driver/gpio.c **** ** Function name:		PIOINT0_IRQHandler
  31:../driver/gpio.c **** **
  32:../driver/gpio.c **** ** Descriptions:		Use one GPIO pin(port0 pin1) as interrupt source
  33:../driver/gpio.c **** **
  34:../driver/gpio.c **** ** parameters:			None
  35:../driver/gpio.c **** ** Returned value:		None
  36:../driver/gpio.c **** ** 
  37:../driver/gpio.c **** *****************************************************************************/
  38:../driver/gpio.c **** void PIOINT0_IRQHandler(void)
  39:../driver/gpio.c **** {
  40:../driver/gpio.c ****   uint32_t regVal;
  41:../driver/gpio.c **** 
  42:../driver/gpio.c ****   gpio0_counter++;
  43:../driver/gpio.c ****   regVal = GPIOIntStatus( PORT0, 1 );
  44:../driver/gpio.c ****   if ( regVal )
  45:../driver/gpio.c ****   {
  46:../driver/gpio.c **** 	p0_1_counter++;
  47:../driver/gpio.c **** 	GPIOIntClear( PORT0, 1 );
  48:../driver/gpio.c ****   }		
  49:../driver/gpio.c ****   return;
  50:../driver/gpio.c **** }
  51:../driver/gpio.c **** #endif
  52:../driver/gpio.c **** 
  53:../driver/gpio.c **** #if CONFIG_GPIO_DEFAULT_PIOINT1_IRQHANDLER==1
  54:../driver/gpio.c **** volatile uint32_t gpio1_counter = 0;
  55:../driver/gpio.c **** volatile uint32_t p1_1_counter  = 0;
  56:../driver/gpio.c **** /*****************************************************************************
  57:../driver/gpio.c **** ** Function name:		PIOINT1_IRQHandler
  58:../driver/gpio.c **** **
  59:../driver/gpio.c **** ** Descriptions:		Use one GPIO pin(port1 pin1) as interrupt source
  60:../driver/gpio.c **** **
  61:../driver/gpio.c **** ** parameters:			None
  62:../driver/gpio.c **** ** Returned value:		None
  63:../driver/gpio.c **** ** 
  64:../driver/gpio.c **** *****************************************************************************/
  65:../driver/gpio.c **** void PIOINT1_IRQHandler(void)
  66:../driver/gpio.c **** {
  67:../driver/gpio.c ****   uint32_t regVal;
  68:../driver/gpio.c **** 
  69:../driver/gpio.c ****   gpio1_counter++;
  70:../driver/gpio.c ****   regVal = GPIOIntStatus( PORT1, 1 );
  71:../driver/gpio.c ****   if ( regVal )
  72:../driver/gpio.c ****   {
  73:../driver/gpio.c **** 	p1_1_counter++;
  74:../driver/gpio.c **** 	GPIOIntClear( PORT1, 1 );
  75:../driver/gpio.c ****   }		
  76:../driver/gpio.c ****   return;
  77:../driver/gpio.c **** }
  78:../driver/gpio.c **** #endif
  79:../driver/gpio.c **** 
  80:../driver/gpio.c **** #if CONFIG_GPIO_DEFAULT_PIOINT2_IRQHANDLER==1
  81:../driver/gpio.c **** volatile uint32_t gpio2_counter = 0;
  82:../driver/gpio.c **** volatile uint32_t p2_1_counter  = 0;
  83:../driver/gpio.c **** /*****************************************************************************
  84:../driver/gpio.c **** ** Function name:		PIOINT2_IRQHandler
  85:../driver/gpio.c **** **
  86:../driver/gpio.c **** ** Descriptions:		Use one GPIO pin(port2 pin1) as interrupt source
  87:../driver/gpio.c **** **
  88:../driver/gpio.c **** ** parameters:			None
  89:../driver/gpio.c **** ** Returned value:		None
  90:../driver/gpio.c **** ** 
  91:../driver/gpio.c **** *****************************************************************************/
  92:../driver/gpio.c **** void PIOINT2_IRQHandler(void)
  93:../driver/gpio.c **** {
  94:../driver/gpio.c ****   uint32_t regVal;
  95:../driver/gpio.c **** 
  96:../driver/gpio.c ****   gpio2_counter++;
  97:../driver/gpio.c ****   regVal = GPIOIntStatus( PORT2, 1 );
  98:../driver/gpio.c ****   if ( regVal )
  99:../driver/gpio.c ****   {
 100:../driver/gpio.c **** 	p2_1_counter++;
 101:../driver/gpio.c **** 	GPIOIntClear( PORT2, 1 );
 102:../driver/gpio.c ****   }		
 103:../driver/gpio.c ****   return;
 104:../driver/gpio.c **** }
 105:../driver/gpio.c **** #endif
 106:../driver/gpio.c **** 
 107:../driver/gpio.c **** #if CONFIG_GPIO_DEFAULT_PIOINT3_IRQHANDLER==1
 108:../driver/gpio.c **** volatile uint32_t gpio3_counter = 0;
 109:../driver/gpio.c **** volatile uint32_t p3_1_counter  = 0;
 110:../driver/gpio.c **** /*****************************************************************************
 111:../driver/gpio.c **** ** Function name:		PIOINT3_IRQHandler
 112:../driver/gpio.c **** **
 113:../driver/gpio.c **** ** Descriptions:		Use one GPIO pin(port3 pin1) as interrupt source
 114:../driver/gpio.c **** **
 115:../driver/gpio.c **** ** parameters:			None
 116:../driver/gpio.c **** ** Returned value:		None
 117:../driver/gpio.c **** ** 
 118:../driver/gpio.c **** *****************************************************************************/
 119:../driver/gpio.c **** void PIOINT3_IRQHandler(void)
 120:../driver/gpio.c **** {
 121:../driver/gpio.c ****   uint32_t regVal;
 122:../driver/gpio.c **** 
 123:../driver/gpio.c ****   gpio3_counter++;
 124:../driver/gpio.c ****   regVal = GPIOIntStatus( PORT3, 1 );
 125:../driver/gpio.c ****   if ( regVal )
 126:../driver/gpio.c ****   {
 127:../driver/gpio.c **** 	p3_1_counter++;
 128:../driver/gpio.c **** 	GPIOIntClear( PORT3, 1 );
 129:../driver/gpio.c ****   }		
 130:../driver/gpio.c ****   return;
 131:../driver/gpio.c **** }
 132:../driver/gpio.c **** #endif //#if CONFIG_GPIO_DEFAULT_PIOINT3_IRQHANDLER==1
 133:../driver/gpio.c **** 
 134:../driver/gpio.c **** 
 135:../driver/gpio.c **** /*****************************************************************************
 136:../driver/gpio.c **** ** Function name:		GPIOInit
 137:../driver/gpio.c **** **
 138:../driver/gpio.c **** ** Descriptions:		Initialize GPIO, install the
 139:../driver/gpio.c **** **						GPIO interrupt handler
 140:../driver/gpio.c **** **
 141:../driver/gpio.c **** ** parameters:			None
 142:../driver/gpio.c **** ** Returned value:		true or false, return false if the VIC table
 143:../driver/gpio.c **** **						is full and GPIO interrupt handler can be
 144:../driver/gpio.c **** **						installed.
 145:../driver/gpio.c **** ** 
 146:../driver/gpio.c **** *****************************************************************************/
 147:../driver/gpio.c **** void GPIOInit( void )
 148:../driver/gpio.c **** {
  35              		.loc 1 148 0
  36              		.cfi_startproc
  37 0000 80B5     		push	{r7, lr}
  38              	.LCFI0:
  39              		.cfi_def_cfa_offset 8
  40              		.cfi_offset 7, -8
  41              		.cfi_offset 14, -4
  42 0002 00AF     		add	r7, sp, #0
  43              	.LCFI1:
  44              		.cfi_def_cfa_register 7
 149:../driver/gpio.c ****   /* Enable AHB clock to the GPIO domain. */
 150:../driver/gpio.c ****   LPC_SYSCON->SYSAHBCLKCTRL |= (1<<6);
  45              		.loc 1 150 0
  46 0004 044A     		ldr	r2, .L2
  47 0006 0449     		ldr	r1, .L2
  48 0008 8023     		mov	r3, #128
  49 000a CB58     		ldr	r3, [r1, r3]
  50 000c 4021     		mov	r1, #64
  51 000e 1943     		orr	r1, r3
  52 0010 8023     		mov	r3, #128
  53 0012 D150     		str	r1, [r2, r3]
 151:../driver/gpio.c **** 
 152:../driver/gpio.c **** #ifdef __JTAG_DISABLED  
 153:../driver/gpio.c ****   LPC_IOCON->R_PIO1_1  &= ~0x07;
 154:../driver/gpio.c ****   LPC_IOCON->R_PIO1_1  |= 0x01;
 155:../driver/gpio.c **** #endif
 156:../driver/gpio.c **** 
 157:../driver/gpio.c ****   /* Set up NVIC when I/O pins are configured as external interrupts. */
 158:../driver/gpio.c **** #if CONFIG_GPIO_DEFAULT_PIOINT0_IRQHANDLER==1
 159:../driver/gpio.c ****   NVIC_EnableIRQ(EINT0_IRQn);
 160:../driver/gpio.c **** #endif
 161:../driver/gpio.c **** #if CONFIG_GPIO_DEFAULT_PIOINT1_IRQHANDLER==1
 162:../driver/gpio.c ****   NVIC_EnableIRQ(EINT1_IRQn);
 163:../driver/gpio.c **** #endif
 164:../driver/gpio.c **** #if CONFIG_GPIO_DEFAULT_PIOINT2_IRQHANDLER==1
 165:../driver/gpio.c ****   NVIC_EnableIRQ(EINT2_IRQn);
 166:../driver/gpio.c **** #endif
 167:../driver/gpio.c **** #if CONFIG_GPIO_DEFAULT_PIOINT3_IRQHANDLER==1
 168:../driver/gpio.c ****   NVIC_EnableIRQ(EINT3_IRQn);
 169:../driver/gpio.c **** #endif
 170:../driver/gpio.c ****   return;
 171:../driver/gpio.c **** }
  54              		.loc 1 171 0
  55 0014 BD46     		mov	sp, r7
  56              		@ sp needed for prologue
  57 0016 80BD     		pop	{r7, pc}
  58              	.L3:
  59              		.align	2
  60              	.L2:
  61 0018 00800440 		.word	1074036736
  62              		.cfi_endproc
  63              	.LFE20:
  65              		.section	.text.GPIOSetInterrupt,"ax",%progbits
  66              		.align	2
  67              		.global	GPIOSetInterrupt
  68              		.code	16
  69              		.thumb_func
  71              	GPIOSetInterrupt:
  72              	.LFB21:
 172:../driver/gpio.c **** 
 173:../driver/gpio.c **** /*****************************************************************************
 174:../driver/gpio.c **** ** Function name:		GPIOSetInterrupt
 175:../driver/gpio.c **** **
 176:../driver/gpio.c **** ** Descriptions:		Set interrupt sense, event, etc.
 177:../driver/gpio.c **** **						edge or level, 0 is edge, 1 is level
 178:../driver/gpio.c **** **						single or double edge, 0 is single, 1 is double 
 179:../driver/gpio.c **** **						active high or low, etc.
 180:../driver/gpio.c **** **
 181:../driver/gpio.c **** ** parameters:			port num, bit position, sense, single/doube, polarity
 182:../driver/gpio.c **** ** Returned value:		None
 183:../driver/gpio.c **** ** 
 184:../driver/gpio.c **** *****************************************************************************/
 185:../driver/gpio.c **** void GPIOSetInterrupt( uint32_t portNum, uint32_t bitPosi, uint32_t sense,
 186:../driver/gpio.c **** 			uint32_t single, uint32_t event )
 187:../driver/gpio.c **** {
  73              		.loc 1 187 0
  74              		.cfi_startproc
  75 0000 90B5     		push	{r4, r7, lr}
  76              	.LCFI2:
  77              		.cfi_def_cfa_offset 12
  78              		.cfi_offset 4, -12
  79              		.cfi_offset 7, -8
  80              		.cfi_offset 14, -4
  81 0002 85B0     		sub	sp, sp, #20
  82              	.LCFI3:
  83              		.cfi_def_cfa_offset 32
  84 0004 00AF     		add	r7, sp, #0
  85              	.LCFI4:
  86              		.cfi_def_cfa_register 7
  87 0006 F860     		str	r0, [r7, #12]
  88 0008 B960     		str	r1, [r7, #8]
  89 000a 7A60     		str	r2, [r7, #4]
  90 000c 3B60     		str	r3, [r7]
 188:../driver/gpio.c ****   switch ( portNum )
  91              		.loc 1 188 0
  92 000e FB68     		ldr	r3, [r7, #12]
  93 0010 012B     		cmp	r3, #1
  94 0012 6ED0     		beq	.L7
  95 0014 06D3     		bcc	.L6
  96 0016 022B     		cmp	r3, #2
  97 0018 00D1     		bne	.LCB43
  98 001a C5E0     		b	.L8	@long jump
  99              	.LCB43:
 100 001c 032B     		cmp	r3, #3
 101 001e 00D1     		bne	.LCB45
 102 0020 1DE1     		b	.L9	@long jump
 103              	.LCB45:
 104 0022 77E1     		b	.L31
 105              	.L6:
 189:../driver/gpio.c ****   {
 190:../driver/gpio.c **** 	case PORT0:
 191:../driver/gpio.c **** 	  if ( sense == 0 )
 106              		.loc 1 191 0
 107 0024 7B68     		ldr	r3, [r7, #4]
 108 0026 002B     		cmp	r3, #0
 109 0028 31D1     		bne	.L10
 192:../driver/gpio.c **** 	  {
 193:../driver/gpio.c **** 		LPC_GPIO0->IS &= ~(0x1<<bitPosi);
 110              		.loc 1 193 0
 111 002a A023     		mov	r3, #160
 112 002c DA05     		lsl	r2, r3, #23
 113 002e A023     		mov	r3, #160
 114 0030 D905     		lsl	r1, r3, #23
 115 0032 BA4B     		ldr	r3, .L32
 116 0034 CB58     		ldr	r3, [r1, r3]
 117 0036 B968     		ldr	r1, [r7, #8]
 118 0038 0120     		mov	r0, #1
 119 003a 041C     		mov	r4, r0
 120 003c 8C40     		lsl	r4, r4, r1
 121 003e 211C     		mov	r1, r4
 122 0040 C943     		mvn	r1, r1
 123 0042 1940     		and	r1, r3
 124 0044 B54B     		ldr	r3, .L32
 125 0046 D150     		str	r1, [r2, r3]
 194:../driver/gpio.c **** 		/* single or double only applies when sense is 0(edge trigger). */
 195:../driver/gpio.c **** 		if ( single == 0 )
 126              		.loc 1 195 0
 127 0048 3B68     		ldr	r3, [r7]
 128 004a 002B     		cmp	r3, #0
 129 004c 0FD1     		bne	.L11
 196:../driver/gpio.c **** 		  LPC_GPIO0->IBE &= ~(0x1<<bitPosi);
 130              		.loc 1 196 0
 131 004e A023     		mov	r3, #160
 132 0050 DA05     		lsl	r2, r3, #23
 133 0052 A023     		mov	r3, #160
 134 0054 D905     		lsl	r1, r3, #23
 135 0056 B24B     		ldr	r3, .L32+4
 136 0058 CB58     		ldr	r3, [r1, r3]
 137 005a B968     		ldr	r1, [r7, #8]
 138 005c 0120     		mov	r0, #1
 139 005e 041C     		mov	r4, r0
 140 0060 8C40     		lsl	r4, r4, r1
 141 0062 211C     		mov	r1, r4
 142 0064 C943     		mvn	r1, r1
 143 0066 1940     		and	r1, r3
 144 0068 AD4B     		ldr	r3, .L32+4
 145 006a D150     		str	r1, [r2, r3]
 146 006c 1EE0     		b	.L12
 147              	.L11:
 197:../driver/gpio.c **** 		else
 198:../driver/gpio.c **** 		  LPC_GPIO0->IBE |= (0x1<<bitPosi);
 148              		.loc 1 198 0
 149 006e A023     		mov	r3, #160
 150 0070 DA05     		lsl	r2, r3, #23
 151 0072 A023     		mov	r3, #160
 152 0074 D905     		lsl	r1, r3, #23
 153 0076 AA4B     		ldr	r3, .L32+4
 154 0078 CB58     		ldr	r3, [r1, r3]
 155 007a 191C     		mov	r1, r3
 156 007c BB68     		ldr	r3, [r7, #8]
 157 007e 0120     		mov	r0, #1
 158 0080 041C     		mov	r4, r0
 159 0082 9C40     		lsl	r4, r4, r3
 160 0084 231C     		mov	r3, r4
 161 0086 1943     		orr	r1, r3
 162 0088 A54B     		ldr	r3, .L32+4
 163 008a D150     		str	r1, [r2, r3]
 164 008c 0EE0     		b	.L12
 165              	.L10:
 199:../driver/gpio.c **** 	  }
 200:../driver/gpio.c **** 	  else
 201:../driver/gpio.c **** 	  	LPC_GPIO0->IS |= (0x1<<bitPosi);
 166              		.loc 1 201 0
 167 008e A023     		mov	r3, #160
 168 0090 DA05     		lsl	r2, r3, #23
 169 0092 A023     		mov	r3, #160
 170 0094 D905     		lsl	r1, r3, #23
 171 0096 A14B     		ldr	r3, .L32
 172 0098 CB58     		ldr	r3, [r1, r3]
 173 009a 191C     		mov	r1, r3
 174 009c BB68     		ldr	r3, [r7, #8]
 175 009e 0120     		mov	r0, #1
 176 00a0 041C     		mov	r4, r0
 177 00a2 9C40     		lsl	r4, r4, r3
 178 00a4 231C     		mov	r3, r4
 179 00a6 1943     		orr	r1, r3
 180 00a8 9C4B     		ldr	r3, .L32
 181 00aa D150     		str	r1, [r2, r3]
 182              	.L12:
 202:../driver/gpio.c **** 	  if ( event == 0 )
 183              		.loc 1 202 0
 184 00ac 3B6A     		ldr	r3, [r7, #32]
 185 00ae 002B     		cmp	r3, #0
 186 00b0 0FD1     		bne	.L13
 203:../driver/gpio.c **** 		LPC_GPIO0->IEV &= ~(0x1<<bitPosi);
 187              		.loc 1 203 0
 188 00b2 A023     		mov	r3, #160
 189 00b4 DA05     		lsl	r2, r3, #23
 190 00b6 A023     		mov	r3, #160
 191 00b8 D905     		lsl	r1, r3, #23
 192 00ba 9A4B     		ldr	r3, .L32+8
 193 00bc CB58     		ldr	r3, [r1, r3]
 194 00be B968     		ldr	r1, [r7, #8]
 195 00c0 0120     		mov	r0, #1
 196 00c2 041C     		mov	r4, r0
 197 00c4 8C40     		lsl	r4, r4, r1
 198 00c6 211C     		mov	r1, r4
 199 00c8 C943     		mvn	r1, r1
 200 00ca 1940     		and	r1, r3
 201 00cc 954B     		ldr	r3, .L32+8
 202 00ce D150     		str	r1, [r2, r3]
 204:../driver/gpio.c **** 	  else
 205:../driver/gpio.c **** 		LPC_GPIO0->IEV |= (0x1<<bitPosi);
 206:../driver/gpio.c **** 	break;
 203              		.loc 1 206 0
 204 00d0 21E1     		b	.L4
 205              	.L13:
 205:../driver/gpio.c **** 		LPC_GPIO0->IEV |= (0x1<<bitPosi);
 206              		.loc 1 205 0
 207 00d2 A023     		mov	r3, #160
 208 00d4 DA05     		lsl	r2, r3, #23
 209 00d6 A023     		mov	r3, #160
 210 00d8 D905     		lsl	r1, r3, #23
 211 00da 924B     		ldr	r3, .L32+8
 212 00dc CB58     		ldr	r3, [r1, r3]
 213 00de 191C     		mov	r1, r3
 214 00e0 BB68     		ldr	r3, [r7, #8]
 215 00e2 0120     		mov	r0, #1
 216 00e4 041C     		mov	r4, r0
 217 00e6 9C40     		lsl	r4, r4, r3
 218 00e8 231C     		mov	r3, r4
 219 00ea 1943     		orr	r1, r3
 220 00ec 8D4B     		ldr	r3, .L32+8
 221 00ee D150     		str	r1, [r2, r3]
 222              		.loc 1 206 0
 223 00f0 11E1     		b	.L4
 224              	.L7:
 207:../driver/gpio.c ****  	case PORT1:
 208:../driver/gpio.c **** 	  if ( sense == 0 )
 225              		.loc 1 208 0
 226 00f2 7B68     		ldr	r3, [r7, #4]
 227 00f4 002B     		cmp	r3, #0
 228 00f6 2BD1     		bne	.L16
 209:../driver/gpio.c **** 	  {
 210:../driver/gpio.c **** 		LPC_GPIO1->IS &= ~(0x1<<bitPosi);
 229              		.loc 1 210 0
 230 00f8 8B4A     		ldr	r2, .L32+12
 231 00fa 8B49     		ldr	r1, .L32+12
 232 00fc 874B     		ldr	r3, .L32
 233 00fe CB58     		ldr	r3, [r1, r3]
 234 0100 B968     		ldr	r1, [r7, #8]
 235 0102 0120     		mov	r0, #1
 236 0104 041C     		mov	r4, r0
 237 0106 8C40     		lsl	r4, r4, r1
 238 0108 211C     		mov	r1, r4
 239 010a C943     		mvn	r1, r1
 240 010c 1940     		and	r1, r3
 241 010e 834B     		ldr	r3, .L32
 242 0110 D150     		str	r1, [r2, r3]
 211:../driver/gpio.c **** 		/* single or double only applies when sense is 0(edge trigger). */
 212:../driver/gpio.c **** 		if ( single == 0 )
 243              		.loc 1 212 0
 244 0112 3B68     		ldr	r3, [r7]
 245 0114 002B     		cmp	r3, #0
 246 0116 0DD1     		bne	.L17
 213:../driver/gpio.c **** 		  LPC_GPIO1->IBE &= ~(0x1<<bitPosi);
 247              		.loc 1 213 0
 248 0118 834A     		ldr	r2, .L32+12
 249 011a 8349     		ldr	r1, .L32+12
 250 011c 804B     		ldr	r3, .L32+4
 251 011e CB58     		ldr	r3, [r1, r3]
 252 0120 B968     		ldr	r1, [r7, #8]
 253 0122 0120     		mov	r0, #1
 254 0124 041C     		mov	r4, r0
 255 0126 8C40     		lsl	r4, r4, r1
 256 0128 211C     		mov	r1, r4
 257 012a C943     		mvn	r1, r1
 258 012c 1940     		and	r1, r3
 259 012e 7C4B     		ldr	r3, .L32+4
 260 0130 D150     		str	r1, [r2, r3]
 261 0132 1AE0     		b	.L18
 262              	.L17:
 214:../driver/gpio.c **** 		else
 215:../driver/gpio.c **** 		  LPC_GPIO1->IBE |= (0x1<<bitPosi);
 263              		.loc 1 215 0
 264 0134 7C4A     		ldr	r2, .L32+12
 265 0136 7C49     		ldr	r1, .L32+12
 266 0138 794B     		ldr	r3, .L32+4
 267 013a CB58     		ldr	r3, [r1, r3]
 268 013c 191C     		mov	r1, r3
 269 013e BB68     		ldr	r3, [r7, #8]
 270 0140 0120     		mov	r0, #1
 271 0142 041C     		mov	r4, r0
 272 0144 9C40     		lsl	r4, r4, r3
 273 0146 231C     		mov	r3, r4
 274 0148 1943     		orr	r1, r3
 275 014a 754B     		ldr	r3, .L32+4
 276 014c D150     		str	r1, [r2, r3]
 277 014e 0CE0     		b	.L18
 278              	.L16:
 216:../driver/gpio.c **** 	  }
 217:../driver/gpio.c **** 	  else
 218:../driver/gpio.c **** 	  	LPC_GPIO1->IS |= (0x1<<bitPosi);
 279              		.loc 1 218 0
 280 0150 754A     		ldr	r2, .L32+12
 281 0152 7549     		ldr	r1, .L32+12
 282 0154 714B     		ldr	r3, .L32
 283 0156 CB58     		ldr	r3, [r1, r3]
 284 0158 191C     		mov	r1, r3
 285 015a BB68     		ldr	r3, [r7, #8]
 286 015c 0120     		mov	r0, #1
 287 015e 041C     		mov	r4, r0
 288 0160 9C40     		lsl	r4, r4, r3
 289 0162 231C     		mov	r3, r4
 290 0164 1943     		orr	r1, r3
 291 0166 6D4B     		ldr	r3, .L32
 292 0168 D150     		str	r1, [r2, r3]
 293              	.L18:
 219:../driver/gpio.c **** 	  if ( event == 0 )
 294              		.loc 1 219 0
 295 016a 3B6A     		ldr	r3, [r7, #32]
 296 016c 002B     		cmp	r3, #0
 297 016e 0DD1     		bne	.L19
 220:../driver/gpio.c **** 		LPC_GPIO1->IEV &= ~(0x1<<bitPosi);
 298              		.loc 1 220 0
 299 0170 6D4A     		ldr	r2, .L32+12
 300 0172 6D49     		ldr	r1, .L32+12
 301 0174 6B4B     		ldr	r3, .L32+8
 302 0176 CB58     		ldr	r3, [r1, r3]
 303 0178 B968     		ldr	r1, [r7, #8]
 304 017a 0120     		mov	r0, #1
 305 017c 041C     		mov	r4, r0
 306 017e 8C40     		lsl	r4, r4, r1
 307 0180 211C     		mov	r1, r4
 308 0182 C943     		mvn	r1, r1
 309 0184 1940     		and	r1, r3
 310 0186 674B     		ldr	r3, .L32+8
 311 0188 D150     		str	r1, [r2, r3]
 221:../driver/gpio.c **** 	  else
 222:../driver/gpio.c **** 		LPC_GPIO1->IEV |= (0x1<<bitPosi);  
 223:../driver/gpio.c **** 	break;
 312              		.loc 1 223 0
 313 018a C4E0     		b	.L4
 314              	.L19:
 222:../driver/gpio.c **** 		LPC_GPIO1->IEV |= (0x1<<bitPosi);  
 315              		.loc 1 222 0
 316 018c 664A     		ldr	r2, .L32+12
 317 018e 6649     		ldr	r1, .L32+12
 318 0190 644B     		ldr	r3, .L32+8
 319 0192 CB58     		ldr	r3, [r1, r3]
 320 0194 191C     		mov	r1, r3
 321 0196 BB68     		ldr	r3, [r7, #8]
 322 0198 0120     		mov	r0, #1
 323 019a 041C     		mov	r4, r0
 324 019c 9C40     		lsl	r4, r4, r3
 325 019e 231C     		mov	r3, r4
 326 01a0 1943     		orr	r1, r3
 327 01a2 604B     		ldr	r3, .L32+8
 328 01a4 D150     		str	r1, [r2, r3]
 329              		.loc 1 223 0
 330 01a6 B6E0     		b	.L4
 331              	.L8:
 224:../driver/gpio.c **** 	case PORT2:
 225:../driver/gpio.c **** 	  if ( sense == 0 )
 332              		.loc 1 225 0
 333 01a8 7B68     		ldr	r3, [r7, #4]
 334 01aa 002B     		cmp	r3, #0
 335 01ac 2BD1     		bne	.L21
 226:../driver/gpio.c **** 	  {
 227:../driver/gpio.c **** 		LPC_GPIO2->IS &= ~(0x1<<bitPosi);
 336              		.loc 1 227 0
 337 01ae 5F4A     		ldr	r2, .L32+16
 338 01b0 5E49     		ldr	r1, .L32+16
 339 01b2 5A4B     		ldr	r3, .L32
 340 01b4 CB58     		ldr	r3, [r1, r3]
 341 01b6 B968     		ldr	r1, [r7, #8]
 342 01b8 0120     		mov	r0, #1
 343 01ba 041C     		mov	r4, r0
 344 01bc 8C40     		lsl	r4, r4, r1
 345 01be 211C     		mov	r1, r4
 346 01c0 C943     		mvn	r1, r1
 347 01c2 1940     		and	r1, r3
 348 01c4 554B     		ldr	r3, .L32
 349 01c6 D150     		str	r1, [r2, r3]
 228:../driver/gpio.c **** 		/* single or double only applies when sense is 0(edge trigger). */
 229:../driver/gpio.c **** 		if ( single == 0 )
 350              		.loc 1 229 0
 351 01c8 3B68     		ldr	r3, [r7]
 352 01ca 002B     		cmp	r3, #0
 353 01cc 0DD1     		bne	.L22
 230:../driver/gpio.c **** 		  LPC_GPIO2->IBE &= ~(0x1<<bitPosi);
 354              		.loc 1 230 0
 355 01ce 574A     		ldr	r2, .L32+16
 356 01d0 5649     		ldr	r1, .L32+16
 357 01d2 534B     		ldr	r3, .L32+4
 358 01d4 CB58     		ldr	r3, [r1, r3]
 359 01d6 B968     		ldr	r1, [r7, #8]
 360 01d8 0120     		mov	r0, #1
 361 01da 041C     		mov	r4, r0
 362 01dc 8C40     		lsl	r4, r4, r1
 363 01de 211C     		mov	r1, r4
 364 01e0 C943     		mvn	r1, r1
 365 01e2 1940     		and	r1, r3
 366 01e4 4E4B     		ldr	r3, .L32+4
 367 01e6 D150     		str	r1, [r2, r3]
 368 01e8 1AE0     		b	.L23
 369              	.L22:
 231:../driver/gpio.c **** 		else
 232:../driver/gpio.c **** 		  LPC_GPIO2->IBE |= (0x1<<bitPosi);
 370              		.loc 1 232 0
 371 01ea 504A     		ldr	r2, .L32+16
 372 01ec 4F49     		ldr	r1, .L32+16
 373 01ee 4C4B     		ldr	r3, .L32+4
 374 01f0 CB58     		ldr	r3, [r1, r3]
 375 01f2 191C     		mov	r1, r3
 376 01f4 BB68     		ldr	r3, [r7, #8]
 377 01f6 0120     		mov	r0, #1
 378 01f8 041C     		mov	r4, r0
 379 01fa 9C40     		lsl	r4, r4, r3
 380 01fc 231C     		mov	r3, r4
 381 01fe 1943     		orr	r1, r3
 382 0200 474B     		ldr	r3, .L32+4
 383 0202 D150     		str	r1, [r2, r3]
 384 0204 0CE0     		b	.L23
 385              	.L21:
 233:../driver/gpio.c **** 	  }
 234:../driver/gpio.c **** 	  else
 235:../driver/gpio.c **** 	  	LPC_GPIO2->IS |= (0x1<<bitPosi);
 386              		.loc 1 235 0
 387 0206 494A     		ldr	r2, .L32+16
 388 0208 4849     		ldr	r1, .L32+16
 389 020a 444B     		ldr	r3, .L32
 390 020c CB58     		ldr	r3, [r1, r3]
 391 020e 191C     		mov	r1, r3
 392 0210 BB68     		ldr	r3, [r7, #8]
 393 0212 0120     		mov	r0, #1
 394 0214 041C     		mov	r4, r0
 395 0216 9C40     		lsl	r4, r4, r3
 396 0218 231C     		mov	r3, r4
 397 021a 1943     		orr	r1, r3
 398 021c 3F4B     		ldr	r3, .L32
 399 021e D150     		str	r1, [r2, r3]
 400              	.L23:
 236:../driver/gpio.c **** 	  if ( event == 0 )
 401              		.loc 1 236 0
 402 0220 3B6A     		ldr	r3, [r7, #32]
 403 0222 002B     		cmp	r3, #0
 404 0224 0DD1     		bne	.L24
 237:../driver/gpio.c **** 		LPC_GPIO2->IEV &= ~(0x1<<bitPosi);
 405              		.loc 1 237 0
 406 0226 414A     		ldr	r2, .L32+16
 407 0228 4049     		ldr	r1, .L32+16
 408 022a 3E4B     		ldr	r3, .L32+8
 409 022c CB58     		ldr	r3, [r1, r3]
 410 022e B968     		ldr	r1, [r7, #8]
 411 0230 0120     		mov	r0, #1
 412 0232 041C     		mov	r4, r0
 413 0234 8C40     		lsl	r4, r4, r1
 414 0236 211C     		mov	r1, r4
 415 0238 C943     		mvn	r1, r1
 416 023a 1940     		and	r1, r3
 417 023c 394B     		ldr	r3, .L32+8
 418 023e D150     		str	r1, [r2, r3]
 238:../driver/gpio.c **** 	  else
 239:../driver/gpio.c **** 		LPC_GPIO2->IEV |= (0x1<<bitPosi);  
 240:../driver/gpio.c **** 	break;
 419              		.loc 1 240 0
 420 0240 69E0     		b	.L4
 421              	.L24:
 239:../driver/gpio.c **** 		LPC_GPIO2->IEV |= (0x1<<bitPosi);  
 422              		.loc 1 239 0
 423 0242 3A4A     		ldr	r2, .L32+16
 424 0244 3949     		ldr	r1, .L32+16
 425 0246 374B     		ldr	r3, .L32+8
 426 0248 CB58     		ldr	r3, [r1, r3]
 427 024a 191C     		mov	r1, r3
 428 024c BB68     		ldr	r3, [r7, #8]
 429 024e 0120     		mov	r0, #1
 430 0250 041C     		mov	r4, r0
 431 0252 9C40     		lsl	r4, r4, r3
 432 0254 231C     		mov	r3, r4
 433 0256 1943     		orr	r1, r3
 434 0258 324B     		ldr	r3, .L32+8
 435 025a D150     		str	r1, [r2, r3]
 436              		.loc 1 240 0
 437 025c 5BE0     		b	.L4
 438              	.L9:
 241:../driver/gpio.c **** 	case PORT3:
 242:../driver/gpio.c **** 	  if ( sense == 0 )
 439              		.loc 1 242 0
 440 025e 7B68     		ldr	r3, [r7, #4]
 441 0260 002B     		cmp	r3, #0
 442 0262 2BD1     		bne	.L26
 243:../driver/gpio.c **** 	  {
 244:../driver/gpio.c **** 		LPC_GPIO3->IS &= ~(0x1<<bitPosi);
 443              		.loc 1 244 0
 444 0264 324A     		ldr	r2, .L32+20
 445 0266 3249     		ldr	r1, .L32+20
 446 0268 2C4B     		ldr	r3, .L32
 447 026a CB58     		ldr	r3, [r1, r3]
 448 026c B968     		ldr	r1, [r7, #8]
 449 026e 0120     		mov	r0, #1
 450 0270 041C     		mov	r4, r0
 451 0272 8C40     		lsl	r4, r4, r1
 452 0274 211C     		mov	r1, r4
 453 0276 C943     		mvn	r1, r1
 454 0278 1940     		and	r1, r3
 455 027a 284B     		ldr	r3, .L32
 456 027c D150     		str	r1, [r2, r3]
 245:../driver/gpio.c **** 		/* single or double only applies when sense is 0(edge trigger). */
 246:../driver/gpio.c **** 		if ( single == 0 )
 457              		.loc 1 246 0
 458 027e 3B68     		ldr	r3, [r7]
 459 0280 002B     		cmp	r3, #0
 460 0282 0DD1     		bne	.L27
 247:../driver/gpio.c **** 		  LPC_GPIO3->IBE &= ~(0x1<<bitPosi);
 461              		.loc 1 247 0
 462 0284 2A4A     		ldr	r2, .L32+20
 463 0286 2A49     		ldr	r1, .L32+20
 464 0288 254B     		ldr	r3, .L32+4
 465 028a CB58     		ldr	r3, [r1, r3]
 466 028c B968     		ldr	r1, [r7, #8]
 467 028e 0120     		mov	r0, #1
 468 0290 041C     		mov	r4, r0
 469 0292 8C40     		lsl	r4, r4, r1
 470 0294 211C     		mov	r1, r4
 471 0296 C943     		mvn	r1, r1
 472 0298 1940     		and	r1, r3
 473 029a 214B     		ldr	r3, .L32+4
 474 029c D150     		str	r1, [r2, r3]
 475 029e 1AE0     		b	.L28
 476              	.L27:
 248:../driver/gpio.c **** 		else
 249:../driver/gpio.c **** 		  LPC_GPIO3->IBE |= (0x1<<bitPosi);
 477              		.loc 1 249 0
 478 02a0 234A     		ldr	r2, .L32+20
 479 02a2 2349     		ldr	r1, .L32+20
 480 02a4 1E4B     		ldr	r3, .L32+4
 481 02a6 CB58     		ldr	r3, [r1, r3]
 482 02a8 191C     		mov	r1, r3
 483 02aa BB68     		ldr	r3, [r7, #8]
 484 02ac 0120     		mov	r0, #1
 485 02ae 041C     		mov	r4, r0
 486 02b0 9C40     		lsl	r4, r4, r3
 487 02b2 231C     		mov	r3, r4
 488 02b4 1943     		orr	r1, r3
 489 02b6 1A4B     		ldr	r3, .L32+4
 490 02b8 D150     		str	r1, [r2, r3]
 491 02ba 0CE0     		b	.L28
 492              	.L26:
 250:../driver/gpio.c **** 	  }
 251:../driver/gpio.c **** 	  else
 252:../driver/gpio.c **** 	  	LPC_GPIO3->IS |= (0x1<<bitPosi);
 493              		.loc 1 252 0
 494 02bc 1C4A     		ldr	r2, .L32+20
 495 02be 1C49     		ldr	r1, .L32+20
 496 02c0 164B     		ldr	r3, .L32
 497 02c2 CB58     		ldr	r3, [r1, r3]
 498 02c4 191C     		mov	r1, r3
 499 02c6 BB68     		ldr	r3, [r7, #8]
 500 02c8 0120     		mov	r0, #1
 501 02ca 041C     		mov	r4, r0
 502 02cc 9C40     		lsl	r4, r4, r3
 503 02ce 231C     		mov	r3, r4
 504 02d0 1943     		orr	r1, r3
 505 02d2 124B     		ldr	r3, .L32
 506 02d4 D150     		str	r1, [r2, r3]
 507              	.L28:
 253:../driver/gpio.c **** 	  if ( event == 0 )
 508              		.loc 1 253 0
 509 02d6 3B6A     		ldr	r3, [r7, #32]
 510 02d8 002B     		cmp	r3, #0
 511 02da 0DD1     		bne	.L29
 254:../driver/gpio.c **** 		LPC_GPIO3->IEV &= ~(0x1<<bitPosi);
 512              		.loc 1 254 0
 513 02dc 144A     		ldr	r2, .L32+20
 514 02de 1449     		ldr	r1, .L32+20
 515 02e0 104B     		ldr	r3, .L32+8
 516 02e2 CB58     		ldr	r3, [r1, r3]
 517 02e4 B968     		ldr	r1, [r7, #8]
 518 02e6 0120     		mov	r0, #1
 519 02e8 041C     		mov	r4, r0
 520 02ea 8C40     		lsl	r4, r4, r1
 521 02ec 211C     		mov	r1, r4
 522 02ee C943     		mvn	r1, r1
 523 02f0 1940     		and	r1, r3
 524 02f2 0C4B     		ldr	r3, .L32+8
 525 02f4 D150     		str	r1, [r2, r3]
 255:../driver/gpio.c **** 	  else
 256:../driver/gpio.c **** 		LPC_GPIO3->IEV |= (0x1<<bitPosi);	  
 257:../driver/gpio.c **** 	break;
 526              		.loc 1 257 0
 527 02f6 0EE0     		b	.L4
 528              	.L29:
 256:../driver/gpio.c **** 		LPC_GPIO3->IEV |= (0x1<<bitPosi);	  
 529              		.loc 1 256 0
 530 02f8 0D4A     		ldr	r2, .L32+20
 531 02fa 0D49     		ldr	r1, .L32+20
 532 02fc 094B     		ldr	r3, .L32+8
 533 02fe CB58     		ldr	r3, [r1, r3]
 534 0300 191C     		mov	r1, r3
 535 0302 BB68     		ldr	r3, [r7, #8]
 536 0304 0120     		mov	r0, #1
 537 0306 041C     		mov	r4, r0
 538 0308 9C40     		lsl	r4, r4, r3
 539 030a 231C     		mov	r3, r4
 540 030c 1943     		orr	r1, r3
 541 030e 054B     		ldr	r3, .L32+8
 542 0310 D150     		str	r1, [r2, r3]
 543              		.loc 1 257 0
 544 0312 00E0     		b	.L4
 545              	.L31:
 258:../driver/gpio.c **** 	default:
 259:../driver/gpio.c **** 	  break;
 546              		.loc 1 259 0
 547 0314 C046     		mov	r8, r8
 548              	.L4:
 260:../driver/gpio.c ****   }
 261:../driver/gpio.c ****   return;
 262:../driver/gpio.c **** }
 549              		.loc 1 262 0
 550 0316 BD46     		mov	sp, r7
 551 0318 05B0     		add	sp, sp, #20
 552              		@ sp needed for prologue
 553 031a 90BD     		pop	{r4, r7, pc}
 554              	.L33:
 555              		.align	2
 556              	.L32:
 557 031c 04800000 		.word	32772
 558 0320 08800000 		.word	32776
 559 0324 0C800000 		.word	32780
 560 0328 00000150 		.word	1342242816
 561 032c 00000250 		.word	1342308352
 562 0330 00000350 		.word	1342373888
 563              		.cfi_endproc
 564              	.LFE21:
 566              		.section	.text.GPIOIntEnable,"ax",%progbits
 567              		.align	2
 568              		.global	GPIOIntEnable
 569              		.code	16
 570              		.thumb_func
 572              	GPIOIntEnable:
 573              	.LFB22:
 263:../driver/gpio.c **** 
 264:../driver/gpio.c **** /*****************************************************************************
 265:../driver/gpio.c **** ** Function name:		GPIOIntEnable
 266:../driver/gpio.c **** **
 267:../driver/gpio.c **** ** Descriptions:		Enable Interrupt Mask for a port pin.
 268:../driver/gpio.c **** **
 269:../driver/gpio.c **** ** parameters:			port num, bit position
 270:../driver/gpio.c **** ** Returned value:		None
 271:../driver/gpio.c **** ** 
 272:../driver/gpio.c **** *****************************************************************************/
 273:../driver/gpio.c **** void GPIOIntEnable( uint32_t portNum, uint32_t bitPosi )
 274:../driver/gpio.c **** {
 574              		.loc 1 274 0
 575              		.cfi_startproc
 576 0000 90B5     		push	{r4, r7, lr}
 577              	.LCFI5:
 578              		.cfi_def_cfa_offset 12
 579              		.cfi_offset 4, -12
 580              		.cfi_offset 7, -8
 581              		.cfi_offset 14, -4
 582 0002 83B0     		sub	sp, sp, #12
 583              	.LCFI6:
 584              		.cfi_def_cfa_offset 24
 585 0004 00AF     		add	r7, sp, #0
 586              	.LCFI7:
 587              		.cfi_def_cfa_register 7
 588 0006 7860     		str	r0, [r7, #4]
 589 0008 3960     		str	r1, [r7]
 275:../driver/gpio.c ****   switch ( portNum )
 590              		.loc 1 275 0
 591 000a 7B68     		ldr	r3, [r7, #4]
 592 000c 012B     		cmp	r3, #1
 593 000e 15D0     		beq	.L37
 594 0010 04D3     		bcc	.L36
 595 0012 022B     		cmp	r3, #2
 596 0014 20D0     		beq	.L38
 597 0016 032B     		cmp	r3, #3
 598 0018 2CD0     		beq	.L39
 599 001a 39E0     		b	.L41
 600              	.L36:
 276:../driver/gpio.c ****   {
 277:../driver/gpio.c **** 	case PORT0:
 278:../driver/gpio.c **** 	  LPC_GPIO0->IE |= (0x1<<bitPosi); 
 601              		.loc 1 278 0
 602 001c A023     		mov	r3, #160
 603 001e DA05     		lsl	r2, r3, #23
 604 0020 A023     		mov	r3, #160
 605 0022 D905     		lsl	r1, r3, #23
 606 0024 1C4B     		ldr	r3, .L42
 607 0026 CB58     		ldr	r3, [r1, r3]
 608 0028 191C     		mov	r1, r3
 609 002a 3B68     		ldr	r3, [r7]
 610 002c 0120     		mov	r0, #1
 611 002e 041C     		mov	r4, r0
 612 0030 9C40     		lsl	r4, r4, r3
 613 0032 231C     		mov	r3, r4
 614 0034 1943     		orr	r1, r3
 615 0036 184B     		ldr	r3, .L42
 616 0038 D150     		str	r1, [r2, r3]
 279:../driver/gpio.c **** 	break;
 617              		.loc 1 279 0
 618 003a 2AE0     		b	.L34
 619              	.L37:
 280:../driver/gpio.c ****  	case PORT1:
 281:../driver/gpio.c **** 	  LPC_GPIO1->IE |= (0x1<<bitPosi);	
 620              		.loc 1 281 0
 621 003c 174A     		ldr	r2, .L42+4
 622 003e 1749     		ldr	r1, .L42+4
 623 0040 154B     		ldr	r3, .L42
 624 0042 CB58     		ldr	r3, [r1, r3]
 625 0044 191C     		mov	r1, r3
 626 0046 3B68     		ldr	r3, [r7]
 627 0048 0120     		mov	r0, #1
 628 004a 041C     		mov	r4, r0
 629 004c 9C40     		lsl	r4, r4, r3
 630 004e 231C     		mov	r3, r4
 631 0050 1943     		orr	r1, r3
 632 0052 114B     		ldr	r3, .L42
 633 0054 D150     		str	r1, [r2, r3]
 282:../driver/gpio.c **** 	break;
 634              		.loc 1 282 0
 635 0056 1CE0     		b	.L34
 636              	.L38:
 283:../driver/gpio.c **** 	case PORT2:
 284:../driver/gpio.c **** 	  LPC_GPIO2->IE |= (0x1<<bitPosi);	    
 637              		.loc 1 284 0
 638 0058 114A     		ldr	r2, .L42+8
 639 005a 1149     		ldr	r1, .L42+8
 640 005c 0E4B     		ldr	r3, .L42
 641 005e CB58     		ldr	r3, [r1, r3]
 642 0060 191C     		mov	r1, r3
 643 0062 3B68     		ldr	r3, [r7]
 644 0064 0120     		mov	r0, #1
 645 0066 041C     		mov	r4, r0
 646 0068 9C40     		lsl	r4, r4, r3
 647 006a 231C     		mov	r3, r4
 648 006c 1943     		orr	r1, r3
 649 006e 0A4B     		ldr	r3, .L42
 650 0070 D150     		str	r1, [r2, r3]
 285:../driver/gpio.c **** 	break;
 651              		.loc 1 285 0
 652 0072 0EE0     		b	.L34
 653              	.L39:
 286:../driver/gpio.c **** 	case PORT3:
 287:../driver/gpio.c **** 	  LPC_GPIO3->IE |= (0x1<<bitPosi);	    
 654              		.loc 1 287 0
 655 0074 0B4A     		ldr	r2, .L42+12
 656 0076 0B49     		ldr	r1, .L42+12
 657 0078 074B     		ldr	r3, .L42
 658 007a CB58     		ldr	r3, [r1, r3]
 659 007c 191C     		mov	r1, r3
 660 007e 3B68     		ldr	r3, [r7]
 661 0080 0120     		mov	r0, #1
 662 0082 041C     		mov	r4, r0
 663 0084 9C40     		lsl	r4, r4, r3
 664 0086 231C     		mov	r3, r4
 665 0088 1943     		orr	r1, r3
 666 008a 034B     		ldr	r3, .L42
 667 008c D150     		str	r1, [r2, r3]
 288:../driver/gpio.c **** 	break;
 668              		.loc 1 288 0
 669 008e 00E0     		b	.L34
 670              	.L41:
 289:../driver/gpio.c **** 	default:
 290:../driver/gpio.c **** 	  break;
 671              		.loc 1 290 0
 672 0090 C046     		mov	r8, r8
 673              	.L34:
 291:../driver/gpio.c ****   }
 292:../driver/gpio.c ****   return;
 293:../driver/gpio.c **** }
 674              		.loc 1 293 0
 675 0092 BD46     		mov	sp, r7
 676 0094 03B0     		add	sp, sp, #12
 677              		@ sp needed for prologue
 678 0096 90BD     		pop	{r4, r7, pc}
 679              	.L43:
 680              		.align	2
 681              	.L42:
 682 0098 10800000 		.word	32784
 683 009c 00000150 		.word	1342242816
 684 00a0 00000250 		.word	1342308352
 685 00a4 00000350 		.word	1342373888
 686              		.cfi_endproc
 687              	.LFE22:
 689              		.section	.text.GPIOIntDisable,"ax",%progbits
 690              		.align	2
 691              		.global	GPIOIntDisable
 692              		.code	16
 693              		.thumb_func
 695              	GPIOIntDisable:
 696              	.LFB23:
 294:../driver/gpio.c **** 
 295:../driver/gpio.c **** /*****************************************************************************
 296:../driver/gpio.c **** ** Function name:		GPIOIntDisable
 297:../driver/gpio.c **** **
 298:../driver/gpio.c **** ** Descriptions:		Disable Interrupt Mask for a port pin.
 299:../driver/gpio.c **** **
 300:../driver/gpio.c **** ** parameters:			port num, bit position
 301:../driver/gpio.c **** ** Returned value:		None
 302:../driver/gpio.c **** ** 
 303:../driver/gpio.c **** *****************************************************************************/
 304:../driver/gpio.c **** void GPIOIntDisable( uint32_t portNum, uint32_t bitPosi )
 305:../driver/gpio.c **** {
 697              		.loc 1 305 0
 698              		.cfi_startproc
 699 0000 90B5     		push	{r4, r7, lr}
 700              	.LCFI8:
 701              		.cfi_def_cfa_offset 12
 702              		.cfi_offset 4, -12
 703              		.cfi_offset 7, -8
 704              		.cfi_offset 14, -4
 705 0002 83B0     		sub	sp, sp, #12
 706              	.LCFI9:
 707              		.cfi_def_cfa_offset 24
 708 0004 00AF     		add	r7, sp, #0
 709              	.LCFI10:
 710              		.cfi_def_cfa_register 7
 711 0006 7860     		str	r0, [r7, #4]
 712 0008 3960     		str	r1, [r7]
 306:../driver/gpio.c ****   switch ( portNum )
 713              		.loc 1 306 0
 714 000a 7B68     		ldr	r3, [r7, #4]
 715 000c 012B     		cmp	r3, #1
 716 000e 15D0     		beq	.L47
 717 0010 04D3     		bcc	.L46
 718 0012 022B     		cmp	r3, #2
 719 0014 20D0     		beq	.L48
 720 0016 032B     		cmp	r3, #3
 721 0018 2CD0     		beq	.L49
 722 001a 39E0     		b	.L51
 723              	.L46:
 307:../driver/gpio.c ****   {
 308:../driver/gpio.c **** 	case PORT0:
 309:../driver/gpio.c **** 	  LPC_GPIO0->IE &= ~(0x1<<bitPosi); 
 724              		.loc 1 309 0
 725 001c A023     		mov	r3, #160
 726 001e DA05     		lsl	r2, r3, #23
 727 0020 A023     		mov	r3, #160
 728 0022 D905     		lsl	r1, r3, #23
 729 0024 1C4B     		ldr	r3, .L52
 730 0026 CB58     		ldr	r3, [r1, r3]
 731 0028 3968     		ldr	r1, [r7]
 732 002a 0120     		mov	r0, #1
 733 002c 041C     		mov	r4, r0
 734 002e 8C40     		lsl	r4, r4, r1
 735 0030 211C     		mov	r1, r4
 736 0032 C943     		mvn	r1, r1
 737 0034 1940     		and	r1, r3
 738 0036 184B     		ldr	r3, .L52
 739 0038 D150     		str	r1, [r2, r3]
 310:../driver/gpio.c **** 	break;
 740              		.loc 1 310 0
 741 003a 2AE0     		b	.L44
 742              	.L47:
 311:../driver/gpio.c ****  	case PORT1:
 312:../driver/gpio.c **** 	  LPC_GPIO1->IE &= ~(0x1<<bitPosi);	
 743              		.loc 1 312 0
 744 003c 174A     		ldr	r2, .L52+4
 745 003e 1749     		ldr	r1, .L52+4
 746 0040 154B     		ldr	r3, .L52
 747 0042 CB58     		ldr	r3, [r1, r3]
 748 0044 3968     		ldr	r1, [r7]
 749 0046 0120     		mov	r0, #1
 750 0048 041C     		mov	r4, r0
 751 004a 8C40     		lsl	r4, r4, r1
 752 004c 211C     		mov	r1, r4
 753 004e C943     		mvn	r1, r1
 754 0050 1940     		and	r1, r3
 755 0052 114B     		ldr	r3, .L52
 756 0054 D150     		str	r1, [r2, r3]
 313:../driver/gpio.c **** 	break;
 757              		.loc 1 313 0
 758 0056 1CE0     		b	.L44
 759              	.L48:
 314:../driver/gpio.c **** 	case PORT2:
 315:../driver/gpio.c **** 	  LPC_GPIO2->IE &= ~(0x1<<bitPosi);	    
 760              		.loc 1 315 0
 761 0058 114A     		ldr	r2, .L52+8
 762 005a 1149     		ldr	r1, .L52+8
 763 005c 0E4B     		ldr	r3, .L52
 764 005e CB58     		ldr	r3, [r1, r3]
 765 0060 3968     		ldr	r1, [r7]
 766 0062 0120     		mov	r0, #1
 767 0064 041C     		mov	r4, r0
 768 0066 8C40     		lsl	r4, r4, r1
 769 0068 211C     		mov	r1, r4
 770 006a C943     		mvn	r1, r1
 771 006c 1940     		and	r1, r3
 772 006e 0A4B     		ldr	r3, .L52
 773 0070 D150     		str	r1, [r2, r3]
 316:../driver/gpio.c **** 	break;
 774              		.loc 1 316 0
 775 0072 0EE0     		b	.L44
 776              	.L49:
 317:../driver/gpio.c **** 	case PORT3:
 318:../driver/gpio.c **** 	  LPC_GPIO3->IE &= ~(0x1<<bitPosi);	    
 777              		.loc 1 318 0
 778 0074 0B4A     		ldr	r2, .L52+12
 779 0076 0B49     		ldr	r1, .L52+12
 780 0078 074B     		ldr	r3, .L52
 781 007a CB58     		ldr	r3, [r1, r3]
 782 007c 3968     		ldr	r1, [r7]
 783 007e 0120     		mov	r0, #1
 784 0080 041C     		mov	r4, r0
 785 0082 8C40     		lsl	r4, r4, r1
 786 0084 211C     		mov	r1, r4
 787 0086 C943     		mvn	r1, r1
 788 0088 1940     		and	r1, r3
 789 008a 034B     		ldr	r3, .L52
 790 008c D150     		str	r1, [r2, r3]
 319:../driver/gpio.c **** 	break;
 791              		.loc 1 319 0
 792 008e 00E0     		b	.L44
 793              	.L51:
 320:../driver/gpio.c **** 	default:
 321:../driver/gpio.c **** 	  break;
 794              		.loc 1 321 0
 795 0090 C046     		mov	r8, r8
 796              	.L44:
 322:../driver/gpio.c ****   }
 323:../driver/gpio.c ****   return;
 324:../driver/gpio.c **** }
 797              		.loc 1 324 0
 798 0092 BD46     		mov	sp, r7
 799 0094 03B0     		add	sp, sp, #12
 800              		@ sp needed for prologue
 801 0096 90BD     		pop	{r4, r7, pc}
 802              	.L53:
 803              		.align	2
 804              	.L52:
 805 0098 10800000 		.word	32784
 806 009c 00000150 		.word	1342242816
 807 00a0 00000250 		.word	1342308352
 808 00a4 00000350 		.word	1342373888
 809              		.cfi_endproc
 810              	.LFE23:
 812              		.section	.text.GPIOIntStatus,"ax",%progbits
 813              		.align	2
 814              		.global	GPIOIntStatus
 815              		.code	16
 816              		.thumb_func
 818              	GPIOIntStatus:
 819              	.LFB24:
 325:../driver/gpio.c **** 
 326:../driver/gpio.c **** /*****************************************************************************
 327:../driver/gpio.c **** ** Function name:		GPIOIntStatus
 328:../driver/gpio.c **** **
 329:../driver/gpio.c **** ** Descriptions:		Get Interrupt status for a port pin.
 330:../driver/gpio.c **** **
 331:../driver/gpio.c **** ** parameters:			port num, bit position
 332:../driver/gpio.c **** ** Returned value:		None
 333:../driver/gpio.c **** ** 
 334:../driver/gpio.c **** *****************************************************************************/
 335:../driver/gpio.c **** uint32_t GPIOIntStatus( uint32_t portNum, uint32_t bitPosi )
 336:../driver/gpio.c **** {
 820              		.loc 1 336 0
 821              		.cfi_startproc
 822 0000 80B5     		push	{r7, lr}
 823              	.LCFI11:
 824              		.cfi_def_cfa_offset 8
 825              		.cfi_offset 7, -8
 826              		.cfi_offset 14, -4
 827 0002 84B0     		sub	sp, sp, #16
 828              	.LCFI12:
 829              		.cfi_def_cfa_offset 24
 830 0004 00AF     		add	r7, sp, #0
 831              	.LCFI13:
 832              		.cfi_def_cfa_register 7
 833 0006 7860     		str	r0, [r7, #4]
 834 0008 3960     		str	r1, [r7]
 337:../driver/gpio.c ****   uint32_t regVal = 0;
 835              		.loc 1 337 0
 836 000a 0023     		mov	r3, #0
 837 000c FB60     		str	r3, [r7, #12]
 338:../driver/gpio.c **** 
 339:../driver/gpio.c ****   switch ( portNum )
 838              		.loc 1 339 0
 839 000e 7B68     		ldr	r3, [r7, #4]
 840 0010 012B     		cmp	r3, #1
 841 0012 13D0     		beq	.L57
 842 0014 04D3     		bcc	.L56
 843 0016 022B     		cmp	r3, #2
 844 0018 1DD0     		beq	.L58
 845 001a 032B     		cmp	r3, #3
 846 001c 28D0     		beq	.L59
 847 001e 34E0     		b	.L65
 848              	.L56:
 340:../driver/gpio.c ****   {
 341:../driver/gpio.c **** 	case PORT0:
 342:../driver/gpio.c **** 	  if ( LPC_GPIO0->MIS & (0x1<<bitPosi) )
 849              		.loc 1 342 0
 850 0020 A023     		mov	r3, #160
 851 0022 DA05     		lsl	r2, r3, #23
 852 0024 1F4B     		ldr	r3, .L70
 853 0026 D358     		ldr	r3, [r2, r3]
 854 0028 3A68     		ldr	r2, [r7]
 855 002a 0121     		mov	r1, #1
 856 002c 081C     		mov	r0, r1
 857 002e 9040     		lsl	r0, r0, r2
 858 0030 021C     		mov	r2, r0
 859 0032 1340     		and	r3, r2
 860 0034 2AD0     		beq	.L66
 343:../driver/gpio.c **** 		regVal = 1;
 861              		.loc 1 343 0
 862 0036 0123     		mov	r3, #1
 863 0038 FB60     		str	r3, [r7, #12]
 344:../driver/gpio.c **** 	break;
 864              		.loc 1 344 0
 865 003a 27E0     		b	.L66
 866              	.L57:
 345:../driver/gpio.c ****  	case PORT1:
 346:../driver/gpio.c **** 	  if ( LPC_GPIO1->MIS & (0x1<<bitPosi) )
 867              		.loc 1 346 0
 868 003c 1A4A     		ldr	r2, .L70+4
 869 003e 194B     		ldr	r3, .L70
 870 0040 D358     		ldr	r3, [r2, r3]
 871 0042 3A68     		ldr	r2, [r7]
 872 0044 0121     		mov	r1, #1
 873 0046 081C     		mov	r0, r1
 874 0048 9040     		lsl	r0, r0, r2
 875 004a 021C     		mov	r2, r0
 876 004c 1340     		and	r3, r2
 877 004e 1FD0     		beq	.L67
 347:../driver/gpio.c **** 		regVal = 1;	
 878              		.loc 1 347 0
 879 0050 0123     		mov	r3, #1
 880 0052 FB60     		str	r3, [r7, #12]
 348:../driver/gpio.c **** 	break;
 881              		.loc 1 348 0
 882 0054 1CE0     		b	.L67
 883              	.L58:
 349:../driver/gpio.c **** 	case PORT2:
 350:../driver/gpio.c **** 	  if ( LPC_GPIO2->MIS & (0x1<<bitPosi) )
 884              		.loc 1 350 0
 885 0056 154A     		ldr	r2, .L70+8
 886 0058 124B     		ldr	r3, .L70
 887 005a D358     		ldr	r3, [r2, r3]
 888 005c 3A68     		ldr	r2, [r7]
 889 005e 0121     		mov	r1, #1
 890 0060 081C     		mov	r0, r1
 891 0062 9040     		lsl	r0, r0, r2
 892 0064 021C     		mov	r2, r0
 893 0066 1340     		and	r3, r2
 894 0068 14D0     		beq	.L68
 351:../driver/gpio.c **** 		regVal = 1;		    
 895              		.loc 1 351 0
 896 006a 0123     		mov	r3, #1
 897 006c FB60     		str	r3, [r7, #12]
 352:../driver/gpio.c **** 	break;
 898              		.loc 1 352 0
 899 006e 11E0     		b	.L68
 900              	.L59:
 353:../driver/gpio.c **** 	case PORT3:
 354:../driver/gpio.c **** 	  if ( LPC_GPIO3->MIS & (0x1<<bitPosi) )
 901              		.loc 1 354 0
 902 0070 0F4A     		ldr	r2, .L70+12
 903 0072 0C4B     		ldr	r3, .L70
 904 0074 D358     		ldr	r3, [r2, r3]
 905 0076 3A68     		ldr	r2, [r7]
 906 0078 0121     		mov	r1, #1
 907 007a 081C     		mov	r0, r1
 908 007c 9040     		lsl	r0, r0, r2
 909 007e 021C     		mov	r2, r0
 910 0080 1340     		and	r3, r2
 911 0082 09D0     		beq	.L69
 355:../driver/gpio.c **** 		regVal = 1;		    
 912              		.loc 1 355 0
 913 0084 0123     		mov	r3, #1
 914 0086 FB60     		str	r3, [r7, #12]
 356:../driver/gpio.c **** 	break;
 915              		.loc 1 356 0
 916 0088 06E0     		b	.L69
 917              	.L65:
 357:../driver/gpio.c **** 	default:
 358:../driver/gpio.c **** 	  break;
 918              		.loc 1 358 0
 919 008a 06E0     		b	.L61
 920              	.L66:
 344:../driver/gpio.c **** 	break;
 921              		.loc 1 344 0
 922 008c C046     		mov	r8, r8
 923 008e 04E0     		b	.L61
 924              	.L67:
 348:../driver/gpio.c **** 	break;
 925              		.loc 1 348 0
 926 0090 C046     		mov	r8, r8
 927 0092 02E0     		b	.L61
 928              	.L68:
 352:../driver/gpio.c **** 	break;
 929              		.loc 1 352 0
 930 0094 C046     		mov	r8, r8
 931 0096 00E0     		b	.L61
 932              	.L69:
 356:../driver/gpio.c **** 	break;
 933              		.loc 1 356 0
 934 0098 C046     		mov	r8, r8
 935              	.L61:
 359:../driver/gpio.c ****   }
 360:../driver/gpio.c ****   return ( regVal );
 936              		.loc 1 360 0
 937 009a FB68     		ldr	r3, [r7, #12]
 361:../driver/gpio.c **** }
 938              		.loc 1 361 0
 939 009c 181C     		mov	r0, r3
 940 009e BD46     		mov	sp, r7
 941 00a0 04B0     		add	sp, sp, #16
 942              		@ sp needed for prologue
 943 00a2 80BD     		pop	{r7, pc}
 944              	.L71:
 945              		.align	2
 946              	.L70:
 947 00a4 18800000 		.word	32792
 948 00a8 00000150 		.word	1342242816
 949 00ac 00000250 		.word	1342308352
 950 00b0 00000350 		.word	1342373888
 951              		.cfi_endproc
 952              	.LFE24:
 954              		.section	.text.GPIOIntClear,"ax",%progbits
 955              		.align	2
 956              		.global	GPIOIntClear
 957              		.code	16
 958              		.thumb_func
 960              	GPIOIntClear:
 961              	.LFB25:
 362:../driver/gpio.c **** 
 363:../driver/gpio.c **** /*****************************************************************************
 364:../driver/gpio.c **** ** Function name:		GPIOIntClear
 365:../driver/gpio.c **** **
 366:../driver/gpio.c **** ** Descriptions:		Clear Interrupt for a port pin.
 367:../driver/gpio.c **** **
 368:../driver/gpio.c **** ** parameters:			port num, bit position
 369:../driver/gpio.c **** ** Returned value:		None
 370:../driver/gpio.c **** ** 
 371:../driver/gpio.c **** *****************************************************************************/
 372:../driver/gpio.c **** void GPIOIntClear( uint32_t portNum, uint32_t bitPosi )
 373:../driver/gpio.c **** {
 962              		.loc 1 373 0
 963              		.cfi_startproc
 964 0000 90B5     		push	{r4, r7, lr}
 965              	.LCFI14:
 966              		.cfi_def_cfa_offset 12
 967              		.cfi_offset 4, -12
 968              		.cfi_offset 7, -8
 969              		.cfi_offset 14, -4
 970 0002 83B0     		sub	sp, sp, #12
 971              	.LCFI15:
 972              		.cfi_def_cfa_offset 24
 973 0004 00AF     		add	r7, sp, #0
 974              	.LCFI16:
 975              		.cfi_def_cfa_register 7
 976 0006 7860     		str	r0, [r7, #4]
 977 0008 3960     		str	r1, [r7]
 374:../driver/gpio.c ****   switch ( portNum )
 978              		.loc 1 374 0
 979 000a 7B68     		ldr	r3, [r7, #4]
 980 000c 012B     		cmp	r3, #1
 981 000e 15D0     		beq	.L75
 982 0010 04D3     		bcc	.L74
 983 0012 022B     		cmp	r3, #2
 984 0014 20D0     		beq	.L76
 985 0016 032B     		cmp	r3, #3
 986 0018 2CD0     		beq	.L77
 987 001a 39E0     		b	.L79
 988              	.L74:
 375:../driver/gpio.c ****   {
 376:../driver/gpio.c **** 	case PORT0:
 377:../driver/gpio.c **** 	  LPC_GPIO0->IC |= (0x1<<bitPosi); 
 989              		.loc 1 377 0
 990 001c A023     		mov	r3, #160
 991 001e DA05     		lsl	r2, r3, #23
 992 0020 A023     		mov	r3, #160
 993 0022 D905     		lsl	r1, r3, #23
 994 0024 1C4B     		ldr	r3, .L80
 995 0026 CB58     		ldr	r3, [r1, r3]
 996 0028 191C     		mov	r1, r3
 997 002a 3B68     		ldr	r3, [r7]
 998 002c 0120     		mov	r0, #1
 999 002e 041C     		mov	r4, r0
 1000 0030 9C40     		lsl	r4, r4, r3
 1001 0032 231C     		mov	r3, r4
 1002 0034 1943     		orr	r1, r3
 1003 0036 184B     		ldr	r3, .L80
 1004 0038 D150     		str	r1, [r2, r3]
 378:../driver/gpio.c **** 	break;
 1005              		.loc 1 378 0
 1006 003a 2AE0     		b	.L72
 1007              	.L75:
 379:../driver/gpio.c ****  	case PORT1:
 380:../driver/gpio.c **** 	  LPC_GPIO1->IC |= (0x1<<bitPosi);	
 1008              		.loc 1 380 0
 1009 003c 174A     		ldr	r2, .L80+4
 1010 003e 1749     		ldr	r1, .L80+4
 1011 0040 154B     		ldr	r3, .L80
 1012 0042 CB58     		ldr	r3, [r1, r3]
 1013 0044 191C     		mov	r1, r3
 1014 0046 3B68     		ldr	r3, [r7]
 1015 0048 0120     		mov	r0, #1
 1016 004a 041C     		mov	r4, r0
 1017 004c 9C40     		lsl	r4, r4, r3
 1018 004e 231C     		mov	r3, r4
 1019 0050 1943     		orr	r1, r3
 1020 0052 114B     		ldr	r3, .L80
 1021 0054 D150     		str	r1, [r2, r3]
 381:../driver/gpio.c **** 	break;
 1022              		.loc 1 381 0
 1023 0056 1CE0     		b	.L72
 1024              	.L76:
 382:../driver/gpio.c **** 	case PORT2:
 383:../driver/gpio.c **** 	  LPC_GPIO2->IC |= (0x1<<bitPosi);	    
 1025              		.loc 1 383 0
 1026 0058 114A     		ldr	r2, .L80+8
 1027 005a 1149     		ldr	r1, .L80+8
 1028 005c 0E4B     		ldr	r3, .L80
 1029 005e CB58     		ldr	r3, [r1, r3]
 1030 0060 191C     		mov	r1, r3
 1031 0062 3B68     		ldr	r3, [r7]
 1032 0064 0120     		mov	r0, #1
 1033 0066 041C     		mov	r4, r0
 1034 0068 9C40     		lsl	r4, r4, r3
 1035 006a 231C     		mov	r3, r4
 1036 006c 1943     		orr	r1, r3
 1037 006e 0A4B     		ldr	r3, .L80
 1038 0070 D150     		str	r1, [r2, r3]
 384:../driver/gpio.c **** 	break;
 1039              		.loc 1 384 0
 1040 0072 0EE0     		b	.L72
 1041              	.L77:
 385:../driver/gpio.c **** 	case PORT3:
 386:../driver/gpio.c **** 	  LPC_GPIO3->IC |= (0x1<<bitPosi);	    
 1042              		.loc 1 386 0
 1043 0074 0B4A     		ldr	r2, .L80+12
 1044 0076 0B49     		ldr	r1, .L80+12
 1045 0078 074B     		ldr	r3, .L80
 1046 007a CB58     		ldr	r3, [r1, r3]
 1047 007c 191C     		mov	r1, r3
 1048 007e 3B68     		ldr	r3, [r7]
 1049 0080 0120     		mov	r0, #1
 1050 0082 041C     		mov	r4, r0
 1051 0084 9C40     		lsl	r4, r4, r3
 1052 0086 231C     		mov	r3, r4
 1053 0088 1943     		orr	r1, r3
 1054 008a 034B     		ldr	r3, .L80
 1055 008c D150     		str	r1, [r2, r3]
 387:../driver/gpio.c **** 	break;
 1056              		.loc 1 387 0
 1057 008e 00E0     		b	.L72
 1058              	.L79:
 388:../driver/gpio.c **** 	default:
 389:../driver/gpio.c **** 	  break;
 1059              		.loc 1 389 0
 1060 0090 C046     		mov	r8, r8
 1061              	.L72:
 390:../driver/gpio.c ****   }
 391:../driver/gpio.c ****   return;
 392:../driver/gpio.c **** }
 1062              		.loc 1 392 0
 1063 0092 BD46     		mov	sp, r7
 1064 0094 03B0     		add	sp, sp, #12
 1065              		@ sp needed for prologue
 1066 0096 90BD     		pop	{r4, r7, pc}
 1067              	.L81:
 1068              		.align	2
 1069              	.L80:
 1070 0098 1C800000 		.word	32796
 1071 009c 00000150 		.word	1342242816
 1072 00a0 00000250 		.word	1342308352
 1073 00a4 00000350 		.word	1342373888
 1074              		.cfi_endproc
 1075              	.LFE25:
 1077              		.section	.text.GPIOSetValue,"ax",%progbits
 1078              		.align	2
 1079              		.global	GPIOSetValue
 1080              		.code	16
 1081              		.thumb_func
 1083              	GPIOSetValue:
 1084              	.LFB26:
 393:../driver/gpio.c **** 
 394:../driver/gpio.c **** /*****************************************************************************
 395:../driver/gpio.c **** ** Function name:		GPIOSetValue
 396:../driver/gpio.c **** **
 397:../driver/gpio.c **** ** Descriptions:		Set/clear a bitvalue in a specific bit position
 398:../driver/gpio.c **** **						in GPIO portX(X is the port number.)
 399:../driver/gpio.c **** **
 400:../driver/gpio.c **** ** parameters:			port num, bit position, bit value
 401:../driver/gpio.c **** ** Returned value:		None
 402:../driver/gpio.c **** **
 403:../driver/gpio.c **** *****************************************************************************/
 404:../driver/gpio.c **** void GPIOSetValue( uint32_t portNum, uint32_t bitPosi, uint32_t bitVal )
 405:../driver/gpio.c **** {
 1085              		.loc 1 405 0
 1086              		.cfi_startproc
 1087 0000 90B5     		push	{r4, r7, lr}
 1088              	.LCFI17:
 1089              		.cfi_def_cfa_offset 12
 1090              		.cfi_offset 4, -12
 1091              		.cfi_offset 7, -8
 1092              		.cfi_offset 14, -4
 1093 0002 85B0     		sub	sp, sp, #20
 1094              	.LCFI18:
 1095              		.cfi_def_cfa_offset 32
 1096 0004 00AF     		add	r7, sp, #0
 1097              	.LCFI19:
 1098              		.cfi_def_cfa_register 7
 1099 0006 F860     		str	r0, [r7, #12]
 1100 0008 B960     		str	r1, [r7, #8]
 1101 000a 7A60     		str	r2, [r7, #4]
 406:../driver/gpio.c ****   LPC_GPIO[portNum]->MASKED_ACCESS[(1<<bitPosi)] = (bitVal<<bitPosi);
 1102              		.loc 1 406 0
 1103 000c 094B     		ldr	r3, .L83
 1104 000e FA68     		ldr	r2, [r7, #12]
 1105 0010 9200     		lsl	r2, r2, #2
 1106 0012 D358     		ldr	r3, [r2, r3]
 1107 0014 BA68     		ldr	r2, [r7, #8]
 1108 0016 0121     		mov	r1, #1
 1109 0018 081C     		mov	r0, r1
 1110 001a 9040     		lsl	r0, r0, r2
 1111 001c 021C     		mov	r2, r0
 1112 001e B968     		ldr	r1, [r7, #8]
 1113 0020 7868     		ldr	r0, [r7, #4]
 1114 0022 041C     		mov	r4, r0
 1115 0024 8C40     		lsl	r4, r4, r1
 1116 0026 211C     		mov	r1, r4
 1117 0028 9200     		lsl	r2, r2, #2
 1118 002a D150     		str	r1, [r2, r3]
 407:../driver/gpio.c **** }
 1119              		.loc 1 407 0
 1120 002c BD46     		mov	sp, r7
 1121 002e 05B0     		add	sp, sp, #20
 1122              		@ sp needed for prologue
 1123 0030 90BD     		pop	{r4, r7, pc}
 1124              	.L84:
 1125 0032 C046     		.align	2
 1126              	.L83:
 1127 0034 00000000 		.word	LPC_GPIO
 1128              		.cfi_endproc
 1129              	.LFE26:
 1131              		.section	.text.GPIOSetDir,"ax",%progbits
 1132              		.align	2
 1133              		.global	GPIOSetDir
 1134              		.code	16
 1135              		.thumb_func
 1137              	GPIOSetDir:
 1138              	.LFB27:
 408:../driver/gpio.c **** 
 409:../driver/gpio.c **** /*****************************************************************************
 410:../driver/gpio.c **** ** Function name:		GPIOSetDir
 411:../driver/gpio.c **** **
 412:../driver/gpio.c **** ** Descriptions:		Set the direction in GPIO port
 413:../driver/gpio.c **** **
 414:../driver/gpio.c **** ** parameters:			port num, bit position, direction (1 out, 0 input)
 415:../driver/gpio.c **** ** Returned value:		None
 416:../driver/gpio.c **** **
 417:../driver/gpio.c **** *****************************************************************************/
 418:../driver/gpio.c **** void GPIOSetDir( uint32_t portNum, uint32_t bitPosi, uint32_t dir )
 419:../driver/gpio.c **** {
 1139              		.loc 1 419 0
 1140              		.cfi_startproc
 1141 0000 90B5     		push	{r4, r7, lr}
 1142              	.LCFI20:
 1143              		.cfi_def_cfa_offset 12
 1144              		.cfi_offset 4, -12
 1145              		.cfi_offset 7, -8
 1146              		.cfi_offset 14, -4
 1147 0002 85B0     		sub	sp, sp, #20
 1148              	.LCFI21:
 1149              		.cfi_def_cfa_offset 32
 1150 0004 00AF     		add	r7, sp, #0
 1151              	.LCFI22:
 1152              		.cfi_def_cfa_register 7
 1153 0006 F860     		str	r0, [r7, #12]
 1154 0008 B960     		str	r1, [r7, #8]
 1155 000a 7A60     		str	r2, [r7, #4]
 420:../driver/gpio.c ****   if(dir)
 1156              		.loc 1 420 0
 1157 000c 7B68     		ldr	r3, [r7, #4]
 1158 000e 002B     		cmp	r3, #0
 1159 0010 15D0     		beq	.L86
 421:../driver/gpio.c **** 	LPC_GPIO[portNum]->DIR |= 1<<bitPosi;
 1160              		.loc 1 421 0
 1161 0012 174B     		ldr	r3, .L88
 1162 0014 FA68     		ldr	r2, [r7, #12]
 1163 0016 9200     		lsl	r2, r2, #2
 1164 0018 D258     		ldr	r2, [r2, r3]
 1165 001a 154B     		ldr	r3, .L88
 1166 001c F968     		ldr	r1, [r7, #12]
 1167 001e 8900     		lsl	r1, r1, #2
 1168 0020 C958     		ldr	r1, [r1, r3]
 1169 0022 8023     		mov	r3, #128
 1170 0024 1B02     		lsl	r3, r3, #8
 1171 0026 CB58     		ldr	r3, [r1, r3]
 1172 0028 191C     		mov	r1, r3
 1173 002a BB68     		ldr	r3, [r7, #8]
 1174 002c 0120     		mov	r0, #1
 1175 002e 041C     		mov	r4, r0
 1176 0030 9C40     		lsl	r4, r4, r3
 1177 0032 231C     		mov	r3, r4
 1178 0034 1943     		orr	r1, r3
 1179 0036 8023     		mov	r3, #128
 1180 0038 1B02     		lsl	r3, r3, #8
 1181 003a D150     		str	r1, [r2, r3]
 1182 003c 14E0     		b	.L85
 1183              	.L86:
 422:../driver/gpio.c ****   else
 423:../driver/gpio.c **** 	LPC_GPIO[portNum]->DIR &= ~(1<<bitPosi);
 1184              		.loc 1 423 0
 1185 003e 0C4B     		ldr	r3, .L88
 1186 0040 FA68     		ldr	r2, [r7, #12]
 1187 0042 9200     		lsl	r2, r2, #2
 1188 0044 D258     		ldr	r2, [r2, r3]
 1189 0046 0A4B     		ldr	r3, .L88
 1190 0048 F968     		ldr	r1, [r7, #12]
 1191 004a 8900     		lsl	r1, r1, #2
 1192 004c C958     		ldr	r1, [r1, r3]
 1193 004e 8023     		mov	r3, #128
 1194 0050 1B02     		lsl	r3, r3, #8
 1195 0052 CB58     		ldr	r3, [r1, r3]
 1196 0054 B968     		ldr	r1, [r7, #8]
 1197 0056 0120     		mov	r0, #1
 1198 0058 041C     		mov	r4, r0
 1199 005a 8C40     		lsl	r4, r4, r1
 1200 005c 211C     		mov	r1, r4
 1201 005e C943     		mvn	r1, r1
 1202 0060 1940     		and	r1, r3
 1203 0062 8023     		mov	r3, #128
 1204 0064 1B02     		lsl	r3, r3, #8
 1205 0066 D150     		str	r1, [r2, r3]
 1206              	.L85:
 424:../driver/gpio.c **** }
 1207              		.loc 1 424 0
 1208 0068 BD46     		mov	sp, r7
 1209 006a 05B0     		add	sp, sp, #20
 1210              		@ sp needed for prologue
 1211 006c 90BD     		pop	{r4, r7, pc}
 1212              	.L89:
 1213 006e C046     		.align	2
 1214              	.L88:
 1215 0070 00000000 		.word	LPC_GPIO
 1216              		.cfi_endproc
 1217              	.LFE27:
 1219              		.text
 1220              	.Letext0:
 1221              		.file 2 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/LPC11xx.h"
 1222              		.file 3 "/Applications/lpcxpresso_6.1.2_177/lpcxpresso/tools/bin/../lib/gcc/arm-none-eabi/4.6.2/..
 1223              		.file 4 "../driver/gpio.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 gpio.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:18     .rodata:0000000000000000 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:21     .rodata:0000000000000000 LPC_GPIO
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:27     .text.GPIOInit:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:32     .text.GPIOInit:0000000000000000 GPIOInit
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:61     .text.GPIOInit:0000000000000018 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:66     .text.GPIOSetInterrupt:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:71     .text.GPIOSetInterrupt:0000000000000000 GPIOSetInterrupt
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:557    .text.GPIOSetInterrupt:000000000000031c $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:567    .text.GPIOIntEnable:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:572    .text.GPIOIntEnable:0000000000000000 GPIOIntEnable
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:682    .text.GPIOIntEnable:0000000000000098 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:690    .text.GPIOIntDisable:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:695    .text.GPIOIntDisable:0000000000000000 GPIOIntDisable
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:805    .text.GPIOIntDisable:0000000000000098 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:813    .text.GPIOIntStatus:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:818    .text.GPIOIntStatus:0000000000000000 GPIOIntStatus
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:947    .text.GPIOIntStatus:00000000000000a4 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:955    .text.GPIOIntClear:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:960    .text.GPIOIntClear:0000000000000000 GPIOIntClear
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:1070   .text.GPIOIntClear:0000000000000098 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:1078   .text.GPIOSetValue:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:1083   .text.GPIOSetValue:0000000000000000 GPIOSetValue
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:1127   .text.GPIOSetValue:0000000000000034 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:1132   .text.GPIOSetDir:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:1137   .text.GPIOSetDir:0000000000000000 GPIOSetDir
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//cciaEGB9.s:1215   .text.GPIOSetDir:0000000000000070 $d
                     .debug_frame:0000000000000010 $d

NO UNDEFINED SYMBOLS
