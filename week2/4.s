@ find product of two 32-bit numbers using barrel shifter (here we multiply 24 and 33)

.text
	ldr r0,=a
	ldr r1,[r0]
	mov r2,#33
	ldr r3,=res
	add r1,r1,r1,LSL #5
	str r1,[r3]
	
.data
	a:.word 24
	res:.word 0
