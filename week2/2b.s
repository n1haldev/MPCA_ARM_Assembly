@ find sum of n half-words

.text
	ldr r0,=a
	ldr r1,=sum
	mov r2,#5
	mov r3,#0
	loop:
		ldrh r4,[r0]
		add r3,r3,r4
		add r0,r0,#2
		subs r2,r2,#1
		bne loop
	strh r3,[r1]
		
.data
	a:.hword 10,20,30,40,50
	sum:.hword 0
	
