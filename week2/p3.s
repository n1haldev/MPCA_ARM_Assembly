.text
	ldr r0,=a
	ldr r2,=copy
	mov r1,#5
	loop:
		ldr r3,[r0]
		str r3,[r2]
		add r2,r2,#4
		add r0,r0,#4
		subs r1,r1,#1
		bne loop
	
.data
	a:.word 10,20,30,40,50
	copy:.word 0,0,0,0,0
	
@ using word
