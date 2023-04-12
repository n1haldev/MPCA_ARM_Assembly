@ ALP to implement C[i][j]=a[i][j]+b[i][j] (basically matrix addition)

.data
	a:.word 1,2,3,4,5,6,7,8,9
	b:.word 1,2,3,4,5,6,7,8,9
	C:.word 0,0,0,0,0,0,0,0,0
	
.text
	ldr r1,=a
	ldr r2,=b
	ldr r3,=C
	mov r4,#3	@ stores the number of columns in the matrix
	mov r5,#3	@ stores the number of rows in the matrix
	
	loop1:
		loop2:
			ldr r6,[r1],#4
			add r7,r7,r6
			ldr r6,[r2],#4
			add r7,r7,r6
			str r7,[r3],#4
			mov r7,#0
			subs r4,r4,#1
			bne loop2
			
		mov r4,#3
		subs r5,r5,#1
		beq end
		b loop1
		
	end:
		swi 0x11
.end
