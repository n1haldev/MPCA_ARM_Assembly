@ ALP to copy a string from one memory location to another

.data
	str:.asciz "My name is Nihal T M"
	copy:.asciz ""
	
.text
	ldr r1,=str
	ldr r2,=copy
	
	loop:
		ldrb r3,[r1],#1
		cmp r3,#0
		beq end
		strb r3,[r2],#1
		b loop
		
	end:
		ldr r0,=copy
		swi 0x02
		swi 0x11
.end
