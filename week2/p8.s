@ find product of two 32-bit numbers using barrel shifter

.text
	ldr r0,=a
	ldr r1,[r0]
	mov r2,#33
	ldr r3,=res
	add r1,r1,r1,LSL #5
	str r2,[r3]
	
.data
	a:.word 24
	res:.word 0
