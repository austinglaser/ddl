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
  13              		.file	"main.c"
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
  26              		.align	2
  27              	.LC0:
  28 0010 02       		.byte	2
  29 0011 02       		.byte	2
  30 0012 02       		.byte	2
  31 0013 02       		.byte	2
  32 0014 02       		.byte	2
  33 0015 00       		.byte	0
  34 0016 01       		.byte	1
  35 0017 02       		.byte	2
  36 0018 02       		.byte	2
  37 0019 02       		.byte	2
  38 001a 02       		.byte	2
  39 001b 00       		.byte	0
  40 001c 01       		.byte	1
  41 001d 01       		.byte	1
  42 001e 02       		.byte	2
  43 001f 02       		.byte	2
  44 0020 02       		.byte	2
  45 0021 00       		.byte	0
  46 0022 01       		.byte	1
  47 0023 01       		.byte	1
  48 0024 01       		.byte	1
  49 0025 02       		.byte	2
  50 0026 02       		.byte	2
  51 0027 00       		.byte	0
  52 0028 01       		.byte	1
  53 0029 01       		.byte	1
  54 002a 01       		.byte	1
  55 002b 01       		.byte	1
  56 002c 02       		.byte	2
  57 002d 00       		.byte	0
  58 002e 01       		.byte	1
  59 002f 01       		.byte	1
  60 0030 01       		.byte	1
  61 0031 01       		.byte	1
  62 0032 01       		.byte	1
  63 0033 00       		.byte	0
  64 0034 02       		.byte	2
  65 0035 01       		.byte	1
  66 0036 01       		.byte	1
  67 0037 01       		.byte	1
  68 0038 01       		.byte	1
  69 0039 00       		.byte	0
  70 003a 02       		.byte	2
  71 003b 02       		.byte	2
  72 003c 01       		.byte	1
  73 003d 01       		.byte	1
  74 003e 01       		.byte	1
  75 003f 00       		.byte	0
  76 0040 02       		.byte	2
  77 0041 02       		.byte	2
  78 0042 02       		.byte	2
  79 0043 01       		.byte	1
  80 0044 01       		.byte	1
  81 0045 00       		.byte	0
  82 0046 02       		.byte	2
  83 0047 02       		.byte	2
  84 0048 02       		.byte	2
  85 0049 02       		.byte	2
  86 004a 01       		.byte	1
  87 004b 00       		.byte	0
  88 004c 01       		.byte	1
  89 004d 02       		.byte	2
  90 004e 00       		.byte	0
  91 004f 00       		.byte	0
  92 0050 00       		.byte	0
  93 0051 00       		.byte	0
  94 0052 02       		.byte	2
  95 0053 01       		.byte	1
  96 0054 01       		.byte	1
  97 0055 01       		.byte	1
  98 0056 00       		.byte	0
  99 0057 00       		.byte	0
 100 0058 02       		.byte	2
 101 0059 01       		.byte	1
 102 005a 02       		.byte	2
 103 005b 01       		.byte	1
 104 005c 00       		.byte	0
 105 005d 00       		.byte	0
 106 005e 02       		.byte	2
 107 005f 01       		.byte	1
 108 0060 01       		.byte	1
 109 0061 00       		.byte	0
 110 0062 00       		.byte	0
 111 0063 00       		.byte	0
 112 0064 01       		.byte	1
 113 0065 00       		.byte	0
 114 0066 00       		.byte	0
 115 0067 00       		.byte	0
 116 0068 00       		.byte	0
 117 0069 00       		.byte	0
 118 006a 01       		.byte	1
 119 006b 01       		.byte	1
 120 006c 02       		.byte	2
 121 006d 01       		.byte	1
 122 006e 00       		.byte	0
 123 006f 00       		.byte	0
 124              		.section	.text.decimal_to_morse,"ax",%progbits
 125              		.align	2
 126              		.global	decimal_to_morse
 127              		.code	16
 128              		.thumb_func
 130              	decimal_to_morse:
 131              	.LFB20:
 132              		.file 1 "../src/main.c"
   1:../src/main.c **** #include "driver_config.h"
   2:../src/main.c **** #include "target_config.h"
   3:../src/main.c **** 
   4:../src/main.c **** #include "adc.h"
   5:../src/main.c **** #include "gpio.h"
   6:../src/main.c **** #include "timer32.h"
   7:../src/main.c **** #include <stdio.h>
   8:../src/main.c **** #include "uart.h"
   9:../src/main.c **** 
  10:../src/main.c **** #include <string.h>
  11:../src/main.c **** 
  12:../src/main.c **** extern int fibonacci(int n);
  13:../src/main.c **** 
  14:../src/main.c **** int decimal_to_morse(char dec, char morse_out[])
  15:../src/main.c **** {
 133              		.loc 1 15 0
 134              		.cfi_startproc
 135 0000 80B5     		push	{r7, lr}
 136              	.LCFI0:
 137              		.cfi_def_cfa_offset 8
 138              		.cfi_offset 7, -8
 139              		.cfi_offset 14, -4
 140 0002 9AB0     		sub	sp, sp, #104
 141              	.LCFI1:
 142              		.cfi_def_cfa_offset 112
 143 0004 00AF     		add	r7, sp, #0
 144              	.LCFI2:
 145              		.cfi_def_cfa_register 7
 146 0006 021C     		mov	r2, r0
 147 0008 3960     		str	r1, [r7]
 148 000a FB1D     		add	r3, r7, #7
 149 000c 1A70     		strb	r2, [r3]
  16:../src/main.c ****   if (dec > 0xF) return -1;
 150              		.loc 1 16 0
 151 000e FB1D     		add	r3, r7, #7
 152 0010 1B78     		ldrb	r3, [r3]
 153 0012 0F2B     		cmp	r3, #15
 154 0014 02D9     		bls	.L2
 155              		.loc 1 16 0 is_stmt 0 discriminator 1
 156 0016 0123     		mov	r3, #1
 157 0018 5B42     		neg	r3, r3
 158 001a 1AE0     		b	.L3
 159              	.L2:
  17:../src/main.c **** 
  18:../src/main.c ****   char morse_lookup[16][6] = {
 160              		.loc 1 18 0 is_stmt 1
 161 001c 3A1C     		mov	r2, r7
 162 001e 0832     		add	r2, r2, #8
 163 0020 0E4B     		ldr	r3, .L4
 164 0022 111C     		mov	r1, r2
 165 0024 1A1C     		mov	r2, r3
 166 0026 6023     		mov	r3, #96
 167 0028 081C     		mov	r0, r1
 168 002a 111C     		mov	r1, r2
 169 002c 1A1C     		mov	r2, r3
 170 002e FFF7FEFF 		bl	memcpy
  19:../src/main.c ****                                  {2, 2, 2, 2, 2, 0},  //0
  20:../src/main.c ****                                  {1, 2, 2, 2, 2, 0},  //1
  21:../src/main.c ****                                  {1, 1, 2, 2, 2, 0},  //2
  22:../src/main.c ****                                  {1, 1, 1, 2, 2, 0},  //3
  23:../src/main.c ****                                  {1, 1, 1, 1, 2, 0},  //4
  24:../src/main.c ****                                  {1, 1, 1, 1, 1, 0},  //5
  25:../src/main.c ****                                  {2, 1, 1, 1, 1, 0},  //6
  26:../src/main.c ****                                  {2, 2, 1, 1, 1, 0},  //7
  27:../src/main.c ****                                  {2, 2, 2, 1, 1, 0},  //8
  28:../src/main.c ****                                  {2, 2, 2, 2, 1, 0},  //9
  29:../src/main.c ****                                  {1, 2, 0, 0, 0, 0},  //A
  30:../src/main.c ****                                  {2, 1, 1, 1, 0, 0},  //B
  31:../src/main.c ****                                  {2, 1, 2, 1, 0, 0},  //C
  32:../src/main.c ****                                  {2, 1, 1, 0, 0, 0},  //D
  33:../src/main.c ****                                  {1, 0, 0, 0, 0, 0},  //E
  34:../src/main.c ****                                  {1, 1, 2, 1, 0, 0}   //F
  35:../src/main.c ****                                 };
  36:../src/main.c **** 
  37:../src/main.c ****   memcpy(morse_out, morse_lookup[(int) dec], 6);
 171              		.loc 1 37 0
 172 0032 FB1D     		add	r3, r7, #7
 173 0034 1A78     		ldrb	r2, [r3]
 174 0036 131C     		mov	r3, r2
 175 0038 5B00     		lsl	r3, r3, #1
 176 003a 9B18     		add	r3, r3, r2
 177 003c 5B00     		lsl	r3, r3, #1
 178 003e 3A1C     		mov	r2, r7
 179 0040 0832     		add	r2, r2, #8
 180 0042 D318     		add	r3, r2, r3
 181 0044 3A68     		ldr	r2, [r7]
 182 0046 101C     		mov	r0, r2
 183 0048 191C     		mov	r1, r3
 184 004a 0622     		mov	r2, #6
 185 004c FFF7FEFF 		bl	memcpy
  38:../src/main.c **** 
  39:../src/main.c ****   return 0;
 186              		.loc 1 39 0
 187 0050 0023     		mov	r3, #0
 188              	.L3:
  40:../src/main.c **** }
 189              		.loc 1 40 0
 190 0052 181C     		mov	r0, r3
 191 0054 BD46     		mov	sp, r7
 192 0056 1AB0     		add	sp, sp, #104
 193              		@ sp needed for prologue
 194 0058 80BD     		pop	{r7, pc}
 195              	.L5:
 196 005a C046     		.align	2
 197              	.L4:
 198 005c 10000000 		.word	.LC0
 199              		.cfi_endproc
 200              	.LFE20:
 202              		.section	.text.translateFib,"ax",%progbits
 203              		.align	2
 204              		.global	translateFib
 205              		.code	16
 206              		.thumb_func
 208              	translateFib:
 209              	.LFB21:
  41:../src/main.c **** 
  42:../src/main.c **** void translateFib(int fibNum, char message[])
  43:../src/main.c **** {
 210              		.loc 1 43 0
 211              		.cfi_startproc
 212 0000 80B5     		push	{r7, lr}
 213              	.LCFI3:
 214              		.cfi_def_cfa_offset 8
 215              		.cfi_offset 7, -8
 216              		.cfi_offset 14, -4
 217 0002 88B0     		sub	sp, sp, #32
 218              	.LCFI4:
 219              		.cfi_def_cfa_offset 40
 220 0004 00AF     		add	r7, sp, #0
 221              	.LCFI5:
 222              		.cfi_def_cfa_register 7
 223 0006 7860     		str	r0, [r7, #4]
 224 0008 3960     		str	r1, [r7]
  44:../src/main.c **** 	unsigned fib_val = fibonacci(fibNum);
 225              		.loc 1 44 0
 226 000a 7B68     		ldr	r3, [r7, #4]
 227 000c 181C     		mov	r0, r3
 228 000e FFF7FEFF 		bl	fibonacci
 229 0012 031C     		mov	r3, r0
 230 0014 3B61     		str	r3, [r7, #16]
  45:../src/main.c **** 	fib_val &= 0xFFFF;
 231              		.loc 1 45 0
 232 0016 3B69     		ldr	r3, [r7, #16]
 233 0018 1B04     		lsl	r3, r3, #16
 234 001a 1B0C     		lsr	r3, r3, #16
 235 001c 3B61     		str	r3, [r7, #16]
  46:../src/main.c **** 
  47:../src/main.c **** 	int i, j, nextval = 0;
 236              		.loc 1 47 0
 237 001e 0023     		mov	r3, #0
 238 0020 7B61     		str	r3, [r7, #20]
  48:../src/main.c **** 	char morse_val[6];
  49:../src/main.c **** 	for (i = 3; i >= 0; i--) {
 239              		.loc 1 49 0
 240 0022 0323     		mov	r3, #3
 241 0024 FB61     		str	r3, [r7, #28]
 242 0026 33E0     		b	.L7
 243              	.L10:
  50:../src/main.c **** 		decimal_to_morse(((fib_val >> (i*4)) & 0x0F), morse_val);
 244              		.loc 1 50 0
 245 0028 FB69     		ldr	r3, [r7, #28]
 246 002a 9B00     		lsl	r3, r3, #2
 247 002c 3A69     		ldr	r2, [r7, #16]
 248 002e 111C     		mov	r1, r2
 249 0030 D940     		lsr	r1, r1, r3
 250 0032 0B1C     		mov	r3, r1
 251 0034 DAB2     		uxtb	r2, r3
 252 0036 0F23     		mov	r3, #15
 253 0038 1340     		and	r3, r2
 254 003a DAB2     		uxtb	r2, r3
 255 003c 3B1C     		mov	r3, r7
 256 003e 0833     		add	r3, r3, #8
 257 0040 101C     		mov	r0, r2
 258 0042 191C     		mov	r1, r3
 259 0044 FFF7FEFF 		bl	decimal_to_morse
  51:../src/main.c **** 
  52:../src/main.c **** 		for (j = 0; morse_val[j]; j++) {
 260              		.loc 1 52 0
 261 0048 0023     		mov	r3, #0
 262 004a BB61     		str	r3, [r7, #24]
 263 004c 0EE0     		b	.L8
 264              	.L9:
  53:../src/main.c **** 			message[nextval] = morse_val[j];
 265              		.loc 1 53 0 discriminator 2
 266 004e 7B69     		ldr	r3, [r7, #20]
 267 0050 3A68     		ldr	r2, [r7]
 268 0052 D318     		add	r3, r2, r3
 269 0054 391C     		mov	r1, r7
 270 0056 0831     		add	r1, r1, #8
 271 0058 BA69     		ldr	r2, [r7, #24]
 272 005a 8A18     		add	r2, r1, r2
 273 005c 1278     		ldrb	r2, [r2]
 274 005e 1A70     		strb	r2, [r3]
  54:../src/main.c **** 			nextval++;
 275              		.loc 1 54 0 discriminator 2
 276 0060 7B69     		ldr	r3, [r7, #20]
 277 0062 0133     		add	r3, r3, #1
 278 0064 7B61     		str	r3, [r7, #20]
  52:../src/main.c **** 		for (j = 0; morse_val[j]; j++) {
 279              		.loc 1 52 0 discriminator 2
 280 0066 BB69     		ldr	r3, [r7, #24]
 281 0068 0133     		add	r3, r3, #1
 282 006a BB61     		str	r3, [r7, #24]
 283              	.L8:
  52:../src/main.c **** 		for (j = 0; morse_val[j]; j++) {
 284              		.loc 1 52 0 is_stmt 0 discriminator 1
 285 006c 3A1C     		mov	r2, r7
 286 006e 0832     		add	r2, r2, #8
 287 0070 BB69     		ldr	r3, [r7, #24]
 288 0072 D318     		add	r3, r2, r3
 289 0074 1B78     		ldrb	r3, [r3]
 290 0076 002B     		cmp	r3, #0
 291 0078 E9D1     		bne	.L9
  55:../src/main.c **** 		}
  56:../src/main.c **** 		message[nextval] = 3;
 292              		.loc 1 56 0 is_stmt 1
 293 007a 7B69     		ldr	r3, [r7, #20]
 294 007c 3A68     		ldr	r2, [r7]
 295 007e D318     		add	r3, r2, r3
 296 0080 0322     		mov	r2, #3
 297 0082 1A70     		strb	r2, [r3]
  57:../src/main.c **** 		nextval++;
 298              		.loc 1 57 0
 299 0084 7B69     		ldr	r3, [r7, #20]
 300 0086 0133     		add	r3, r3, #1
 301 0088 7B61     		str	r3, [r7, #20]
  49:../src/main.c **** 	for (i = 3; i >= 0; i--) {
 302              		.loc 1 49 0
 303 008a FB69     		ldr	r3, [r7, #28]
 304 008c 013B     		sub	r3, r3, #1
 305 008e FB61     		str	r3, [r7, #28]
 306              	.L7:
  49:../src/main.c **** 	for (i = 3; i >= 0; i--) {
 307              		.loc 1 49 0 is_stmt 0 discriminator 1
 308 0090 FB69     		ldr	r3, [r7, #28]
 309 0092 002B     		cmp	r3, #0
 310 0094 C8DA     		bge	.L10
  58:../src/main.c **** 	}
  59:../src/main.c **** 	message[nextval] = 0;
 311              		.loc 1 59 0 is_stmt 1
 312 0096 7B69     		ldr	r3, [r7, #20]
 313 0098 3A68     		ldr	r2, [r7]
 314 009a D318     		add	r3, r2, r3
 315 009c 0022     		mov	r2, #0
 316 009e 1A70     		strb	r2, [r3]
  60:../src/main.c **** }
 317              		.loc 1 60 0
 318 00a0 BD46     		mov	sp, r7
 319 00a2 08B0     		add	sp, sp, #32
 320              		@ sp needed for prologue
 321 00a4 80BD     		pop	{r7, pc}
 322              		.cfi_endproc
 323              	.LFE21:
 325 00a6 C046     		.section	.rodata
 326              		.align	2
 327              	.LC2:
 328 0070 256400   		.ascii	"%d\000"
 329 0073 00       		.align	2
 330              	.LC4:
 331 0074 0A00     		.ascii	"\012\000"
 332 0076 0000     		.section	.text.main,"ax",%progbits
 333              		.align	2
 334              		.global	main
 335              		.code	16
 336              		.thumb_func
 338              	main:
 339              	.LFB22:
  61:../src/main.c **** 
  62:../src/main.c **** int main(void) {
 340              		.loc 1 62 0
 341              		.cfi_startproc
 342 0000 80B5     		push	{r7, lr}
 343              	.LCFI6:
 344              		.cfi_def_cfa_offset 8
 345              		.cfi_offset 7, -8
 346              		.cfi_offset 14, -4
 347 0002 8AB0     		sub	sp, sp, #40
 348              	.LCFI7:
 349              		.cfi_def_cfa_offset 48
 350 0004 00AF     		add	r7, sp, #0
 351              	.LCFI8:
 352              		.cfi_def_cfa_register 7
  63:../src/main.c **** 	  UARTInit(9600);
 353              		.loc 1 63 0
 354 0006 9623     		mov	r3, #150
 355 0008 9B01     		lsl	r3, r3, #6
 356 000a 181C     		mov	r0, r3
 357 000c FFF7FEFF 		bl	UARTInit
  64:../src/main.c **** 
  65:../src/main.c **** 	  /* Initialize 32-bit timer 0. TIME_INTERVAL is defined as 10mS */
  66:../src/main.c **** 	  /* You may also want to use the Cortex SysTick timer to do this */
  67:../src/main.c **** 	  init_timer32(0, 479);
 358              		.loc 1 67 0
 359 0010 164B     		ldr	r3, .L15
 360 0012 0020     		mov	r0, #0
 361 0014 191C     		mov	r1, r3
 362 0016 FFF7FEFF 		bl	init_timer32
  68:../src/main.c **** 
  69:../src/main.c **** 	  /* Enable timer 0. Our interrupt handler will begin incrementing
  70:../src/main.c **** 	   * the TimeTick global each time timer 0 matches and resets.
  71:../src/main.c **** 	   */
  72:../src/main.c **** 	  enable_timer32(0);
 363              		.loc 1 72 0
 364 001a 0020     		mov	r0, #0
 365 001c FFF7FEFF 		bl	enable_timer32
  73:../src/main.c **** 
  74:../src/main.c **** 	  /* Initialize GPIO (sets up clock) */
  75:../src/main.c **** 	  GPIOInit();
 366              		.loc 1 75 0
 367 0020 FFF7FEFF 		bl	GPIOInit
  76:../src/main.c **** 	  /* Set LED port pin to output */
  77:../src/main.c **** 	  GPIOSetDir( LED_PORT, LED_BIT, 1 );
 368              		.loc 1 77 0
 369 0024 0020     		mov	r0, #0
 370 0026 0721     		mov	r1, #7
 371 0028 0122     		mov	r2, #1
 372 002a FFF7FEFF 		bl	GPIOSetDir
  78:../src/main.c **** 
  79:../src/main.c **** 	char morse_encode[32];
  80:../src/main.c **** 	translateFib(20, morse_encode);
 373              		.loc 1 80 0
 374 002e 3B1D     		add	r3, r7, #4
 375 0030 1420     		mov	r0, #20
 376 0032 191C     		mov	r1, r3
 377 0034 FFF7FEFF 		bl	translateFib
  81:../src/main.c **** 
  82:../src/main.c **** 	int i;
  83:../src/main.c **** 	for (i = 0; morse_encode[i]; i++) {
 378              		.loc 1 83 0
 379 0038 0023     		mov	r3, #0
 380 003a 7B62     		str	r3, [r7, #36]
 381 003c 0BE0     		b	.L12
 382              	.L13:
  84:../src/main.c **** 		printf("%d", morse_encode[i]);
 383              		.loc 1 84 0 discriminator 2
 384 003e 3A1D     		add	r2, r7, #4
 385 0040 7B6A     		ldr	r3, [r7, #36]
 386 0042 D318     		add	r3, r2, r3
 387 0044 1B78     		ldrb	r3, [r3]
 388 0046 0A4A     		ldr	r2, .L15+4
 389 0048 101C     		mov	r0, r2
 390 004a 191C     		mov	r1, r3
 391 004c FFF7FEFF 		bl	printf
  83:../src/main.c **** 	for (i = 0; morse_encode[i]; i++) {
 392              		.loc 1 83 0 discriminator 2
 393 0050 7B6A     		ldr	r3, [r7, #36]
 394 0052 0133     		add	r3, r3, #1
 395 0054 7B62     		str	r3, [r7, #36]
 396              	.L12:
  83:../src/main.c **** 	for (i = 0; morse_encode[i]; i++) {
 397              		.loc 1 83 0 is_stmt 0 discriminator 1
 398 0056 3A1D     		add	r2, r7, #4
 399 0058 7B6A     		ldr	r3, [r7, #36]
 400 005a D318     		add	r3, r2, r3
 401 005c 1B78     		ldrb	r3, [r3]
 402 005e 002B     		cmp	r3, #0
 403 0060 EDD1     		bne	.L13
  85:../src/main.c **** 	}
  86:../src/main.c **** 	printf("\n");
 404              		.loc 1 86 0 is_stmt 1
 405 0062 044B     		ldr	r3, .L15+8
 406 0064 181C     		mov	r0, r3
 407 0066 FFF7FEFF 		bl	printf
 408              	.L14:
  87:../src/main.c **** 
  88:../src/main.c **** 	while (1);
 409              		.loc 1 88 0 discriminator 1
 410 006a FEE7     		b	.L14
 411              	.L16:
 412              		.align	2
 413              	.L15:
 414 006c DF010000 		.word	479
 415 0070 70000000 		.word	.LC2
 416 0074 74000000 		.word	.LC4
 417              		.cfi_endproc
 418              	.LFE22:
 420              		.text
 421              	.Letext0:
 422              		.file 2 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/cmsis/LPC11xx.h"
 423              		.file 3 "/Applications/lpcxpresso_6.1.2_177/lpcxpresso/tools/bin/../lib/gcc/arm-none-eabi/4.6.2/..
 424              		.file 4 "/Users/austinglaser/src/ecen3000/labs/lab2/asm_xample11/driver/gpio.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 main.c
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:18     .rodata:0000000000000000 $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:21     .rodata:0000000000000000 LPC_GPIO
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:125    .text.decimal_to_morse:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:130    .text.decimal_to_morse:0000000000000000 decimal_to_morse
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:198    .text.decimal_to_morse:000000000000005c $d
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:203    .text.translateFib:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:208    .text.translateFib:0000000000000000 translateFib
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:333    .text.main:0000000000000000 $t
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:338    .text.main:0000000000000000 main
/var/folders/5m/c5y3dzb93dj37bnmfr76n0fr0000gn/T//ccByvkqw.s:414    .text.main:000000000000006c $d
                     .debug_frame:0000000000000010 $d

UNDEFINED SYMBOLS
memcpy
fibonacci
UARTInit
init_timer32
enable_timer32
GPIOInit
GPIOSetDir
printf
