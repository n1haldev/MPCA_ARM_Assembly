.text
	ldr r0,=n
	ldr r1,[r0]
	mov r2,#0
	loop:
		add r2,r2,r1
		subs r1,r1,#1
		bne loop
	ldr r3,=sum
	str r2,[r3]
	
.data
	n:.word 10
	sum:.word 0
	
@ sum of n natural numbers
