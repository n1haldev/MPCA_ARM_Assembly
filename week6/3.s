@ ALP to check if a give character is present in the given string

.data
	str:.asciz "My name is Nihal T M"
	char:.asciz "Z"
	not_present:.asciz "The given character is not present in the given string!"
	present:.asciz "The given character is present in the given string!"
	
.text
	ldr r1,=str
	ldr r2,=char
	ldrb r3,[r2]
	loop:
		ldrb r4,[r1],#1
		cmp r4,#0
		beq fail
		cmp r4,r3
		beq success
		b loop
		
	success:
		ldr r0,=present
		swi 0x02
		b end
		
	fail:
		ldr r0,=not_present
		swi 0x02
		
	end:
		swi 0x11
.end
