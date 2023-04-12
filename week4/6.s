@ ALP program to check if a given number has odd or even number of ones in binary

.data
	num:.word 24
	even:.asciz "Even Parity"
	odd:.asciz "Odd Parity"
	
.text
	ldr r1,=num
	ldr r2,[r1]
	mov r3,#0	@ number of ones in the binary format of the given number
	loop:
		and r5,r2,#1
		cmp r2,#0
		beq print
		mov r2,r2,LSR #1
		cmp r5,#1
		beq ones
		b loop
		
	ones:
		add r3,r3,#1
		b loop
		
	print:
		ands r6,r3,#1
		beq is_even
		b is_odd
		
	is_odd:
		ldr r0,=odd
		swi 0x02
		b end
		
	is_even:
		ldr r0,=even
		swi 0x02
		swi 0x11
		
	end:
		swi 0x11
.end
