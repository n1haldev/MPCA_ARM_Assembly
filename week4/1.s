@ ALP program to add two 64-bit numbers

.data
	a:.word 12312734,77823438
	b:.word 24629982,56436738
	c:.word 0,0
	
.text
	ldr r1,=a
	ldr r2,=b
	ldr r3,=c
	ldr r4,[r1],#4
	ldr r5,[r2],#4
	add r6,r4,r5
	str r6,[r3],#4
	ldr r4,[r1],#4
	ldr r5,[r2],#4
	add r6,r4,r5
	str r6,[r3],#4
	swi 0x11
.end
