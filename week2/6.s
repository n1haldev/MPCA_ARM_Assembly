@ factorial of n

.text
	ldr r0,=n
	ldr r1,=fact
	ldr r2,[r0]
	mov r3,#1
	loop:
		mov r4,r3
		mul r3,r4,r2
		subs r2,r2,#1
		bne loop
		
	str r3,[r1]
	
.data
	n:.word 5
	fact:.word 1
	
