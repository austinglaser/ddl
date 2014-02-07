 	.syntax unified
 	.cpu cortex-m0
 	.align	2
 	.global	fibonacci
 	.thumb
 	.thumb_func

fibonacci:
 	push 	{lr}
 	mov		r2, r0
 	movs	r0, #0
 	cmp 	r2, #0
 	bgt		call_subfunction
 	pop		{pc}

call_subfunction:
 	movs	r0, #1
 	movs	r1, #0
 	bl		fibonacci_r

	pop		{pc}

fibonacci_r:
	cmp		r2, #1
	ble		return

	mov		r3, r0
	add		r0, r0, r1
	mov		r1, r3
	subs	r2, r2, #1
	b		fibonacci_r
return:
	mov		pc, lr

