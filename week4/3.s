@ ALP program to scan a number and find if it is positive or negative

.data
	num:.word 0
	pos:.asciz "The value is positive"
	neg:.asciz "The value is negative"
	zer:.asciz "The value is zero"
	
.text
	ldr r1,=num
	ldr r2,[r1]
	cmp r2,#0
	beq zero
	bpl positive
	bmi negative
	
	positive:
		ldr r0,=pos
		swi 0x02
		b end
		
	negative:
		ldr r0,=neg
		swi 0x02
		b end
		
	zero:
		ldr r0,=zer
		swi 0x02
		b end
		
	end: swi 0x11

.end

	
