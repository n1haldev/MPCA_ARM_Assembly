@ Find the factorial of a number using subroutine

.text
	ldr r0,=n
	mov r1,#1
	ldr r3,[r0]
	bl fact
	swi 0x11
	
	fact:
		mov r2,r1
		mul r1,r2,r3
		subs r3,r3,#1
		bne fact
		mov pc,lr
		
.data
	n:.word 5
