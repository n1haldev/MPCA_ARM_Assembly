@ ALP to calculate the sum of elements of each row in the matrix

.data
	a:.word 1,2,3,4,5,6,7,8,9
	Sum:.word 0,0,0
	
.text
	ldr r1,=a
	ldr r2,=Sum
	mov r3,#3	@ stores number of elements in a row
	mov r7,#3	@ number of rows traversed
	mov r4,#0	@ stores current pointer
	mov r5,#0	@ non-array sum
	
	loop1:
		loop2:
			ldr r6,[r1],#4
			add r5,r5,r6
			subs r3,r3,#1
			bne loop2
			
		str r5,[r2],#4
		mov r3,#3
		subs r7,r7,#1
		beq end
		b loop1
		
	end:
		swi 0x11
.end
