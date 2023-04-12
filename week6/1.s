@ ALP to find the length of the given string

.data
	str:.asciz "My name is Nihal T M"
	len:.word 0
	
.text
	ldr r1,=str
	ldr r2,=len
	mov r3,#0	@ temporary variable containing the length of the string as we traverse
	
	loop:
		ldrb r4,[r1],#1
		cmp r4,#0
		beq end
		add r3,r3,#1
		b loop
		
	end:
		swi 0x11
.end
	
