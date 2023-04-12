@ program to find mul(add(a,b),c)

.data
	a:.word 10
	b:.word 15
	c:.word 7
	res:.word 0

.text
	ldr r1,=a
	ldr r2,=b
	ldr r3,=c
	ldr r4,[r1]
	ldr r5,[r2]
	ldr r6,[r3]
	add r7,r4,r5
	mul r8,r7,r6
	ldr r9,=res
	str r8,[r9]
	swi 0x11
.end
