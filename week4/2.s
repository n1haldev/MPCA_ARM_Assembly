@ ALP program to find 1's complement and 2's complement of a 32-bit number

.data
	num:.word 32
	
.text
	ldr r1,=num
	ldr r2,[r1]
	
	@ this is 1's complement code
	mvn r3,r2
	
	@ this is rsc
	rsc r4,r2,#0
	
	@ this is mul
	mov r5,#-1
	mul r5,r2,r5
	 
	@ this is 2's complement code
	rsb r6,r2,#0
	
	swi 0x11
	
.end
