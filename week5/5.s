@ ALP to implement c[k]=a[i]*b[j]

.data
	a:.word 1,2,3,4,5,6,7,8,9
	b:.word 9,8,7,6,5,4,3,2,1
	c:.word 0,0,0,0,0,0,0,0,0
	i:.word 4
	j:.word 6
	k:.word 2
	
.text
	ldr r1,=a
	ldr r2,=b
	ldr r3,=c
	ldr r4,=i
	ldr r5,=j
	ldr r6,=k
	ldr r4,[r4]
	ldr r5,[r5]
	ldr r6,[r6]
	
	ldr r7,[r1,r4,LSL #2]
	ldr r8,[r2,r5,LSL #2]
	mul r9,r7,r8
	str r9,[r3,r6,LSL #2]
	swi 0x11
.end
