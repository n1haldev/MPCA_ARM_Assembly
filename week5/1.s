@ ALP to implement B=a[i][j]

.data
	matrix:.word 1,2,3,4,5,6,7,8,9
	i:.word 1
	j:.word 0
	wrong_entry:.asciz "Invalid row and column"
	B:.word 0
	
.text
	ldr r1,=matrix
	mov r2,#3
	mov r3,#3
	
	@ comparing the row and column to make sure it is a vlid access
	ldr r4,=i
	ldr r5,=j
	ldr r6,[r4]
	ldr r7,[r5]
	cmp r6,#3
	bmi valid_entry
	b invalid_entry
	
	invalid_entry:
		ldr r0,=wrong_entry
		swi 0x02
		b end
		
	valid_entry:
		mov r10,#3	@ storing 3 for number of contents in the row
		mul r8,r6,r10
		mov r8,r8,LSL #2
		add r8,r8,r7,LSL #2
		ldr r9,[r1,r8]
		ldr r11,=B
		str r9,[r11]		
	end:
		swi 0x11
.end	
