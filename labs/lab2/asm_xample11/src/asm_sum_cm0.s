 	.syntax unified
 	.cpu cortex-m0
 	.align	2
 	.global	asm_sum
 	.thumb
 	.thumb_func
 asm_sum:
   		push	{r7, lr}
  		sub	sp, sp, #8
  		add	r7, sp, #0
  		str	r0, [r7, #4]
  		str	r1, [r7]
  		ldr	r2, [r7, #4]
  		ldr	r3, [r7]
  		add	r3, r2, r3
  		mov	r0, r3
  		mov	sp, r7
  		add	sp, sp, #8
  		pop	{r7, pc}
