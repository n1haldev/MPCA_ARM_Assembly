@ ALP program to count the number of zeroes and ones in the binary number

.data
	num:.word 25
	
.text
	ldr r1,=num
	ldr r2,[r1]
	mov r3,#0	@ holds the number of zeroes in the number
	mov r4,#0	@ holds the number of ones in the number
	loop:
		and r5,r2,#1
		cmp r2,#0
		beq end
		mov r2,r2,LSR #1
		cmp r5,#0
		beq zero
		b one
		
	zero:
		add r3,r3,#1
		b loop
		
	one:
		add r4,r4,#1
		b loop
		
	end:
		swi 0x11

.end
