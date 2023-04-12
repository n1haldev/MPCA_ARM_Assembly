@ Perform multiplication using shift method without using the mul operation
@ here let us multiply the data num with the number 135

.text
	ldr r0,=num
	ldr r1,[r0]
	rsb r2,r1,r1,LSL #3
	mov r3,r1,LSL #7
	add r4,r2,r3
	ldr r5,=res
	str r4,[r5]
	swi 0x11

.data
	num:.word 47
	res:.word 0
