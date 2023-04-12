@ ALP to find the number of zeroes, positive numbers and negative numbers in the array

.data
	arr:.word 0,5,-4,0,23,-4,32,66,-3,0
	
.text
	ldr r0,=arr
	mov r1,#11
	mov r2,#0	@ holds number of zeroes
	mov r3,#0	@ holds number of positive numbers
	mov r4,#0	@ holds number of negative numbers
	
	loop:
		ldr r5,[r0],#4
		subs r1,r1,#1
		beq end
		cmp r5,#0
		beq zero
		bpl positive
		bmi negative
		
	zero:
		add r2,r2,#1
		b loop
		
	positive:
		add r3,r3,#1
		b loop
		
	negative:
		add r4,r4,#1
		b loop
		
	end:
		swi 0x11
		
.end
