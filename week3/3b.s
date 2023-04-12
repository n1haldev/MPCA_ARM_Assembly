@ doing the same as 3a but by using mla instruction
.text
	ldr r0,=a
	ldr r1,=b
	mov r2,#6
	loop:
		ldr r3,[r0],#4
		ldr r4,[r1],#4
		mla r5,r3,r4,r5
		subs r2,r2,#1
		bne loop
		swi 0x11

.data
	a:.word 1,2,3,4,5,6
	b:.word 1,2,3,4,5,6
