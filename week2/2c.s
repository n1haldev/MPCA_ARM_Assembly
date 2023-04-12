@ find sum of n bytes

.text
	ldr r0,=a
	ldr r1,=sum
	mov r2,#5
	mov r3,#0
	loop:
		ldrb r4,[r0]
		add r3,r3,r4
		add r0,r0,#1
		subs r2,r2,#1
		bne loop
	strb r3,[r1]
		
.data
	a:.byte 10,20,30,40,50
	sum:.byte 0
	
