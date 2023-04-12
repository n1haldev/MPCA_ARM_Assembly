@ find the smallest nummber in an array os 32 bit numbers

.text
	ldr r4,=arr
	ldr r1,[r4],#4
	mov r2,#9
	loop:
		ldr r3,[r4]
		cmp r3,r1
		bmi swap
		add r4,r4,#4
		subs r2,r2,#1
		bne loop
		b end

	swap:
		mov r1,r3
		b loop

	end:
		mov r0,r1
		swi 0x02
		swi 0x00

.data
	arr:.word 5,2,5,3,10,7,9,5,1,2
