@ ALP to implement C[k]=a[i]+b[j]

.data
	a:.word 1,2,3,4,5,6,7,8,9
	b:.word 11,12,13,14,15,16,17,18,19
	C:.word 0,0,0,0,0,0,0,0,0
	i:.word 4
	j:.word 3
	k:.word 7
	error:.asciz "Invalid Indexes!"
	
.text
	ldr r1,=i
	ldr r2,=j
	ldr r3,=k
	ldr r4,[r1]
	ldr r5,[r2]
	ldr r6,[r3]
	
	@ making sure we don't access illegal memory
	cmp r4,#0
	bmi fail
	cmp r5,#0
	bmi fail
	cmp r6,#0
	bmi fail
	cmp r4,#8
	bpl fail
	cmp r5,#8
	bpl fail
	cmp r6,#8
	bpl fail
	
	ldr r7,=a
	ldr r8,=b
	ldr r9,=C
	
	ldr r10,[r7,r4,LSL #2]
	ldr r11,[r8,r5,LSL #2]
	add r11,r10,r11
	str r11,[r9,r6,LSL #2]
	b end
		
	fail:
		ldr r0,=error
		swi 0x02
	
	end:
		swi 0x11
