@ generate fibonacci series and store them in an array

.text
	ldr r2,=fib
	mov r0,#0
	mov r1,#1
	str r0,[r2]
	add r2,r2,#4
	str r1,[r2]
	mov r4,#8
	loop:
		add r3,r0,r1
		add r2,r2,#4
		str r3,[r2]
		mov r0,r1
		mov r1,r3
		subs r4,r4,#1
		bne loop

.data
	fib:.word 0,0,0,0,0,0,0,0,0,0
