@ ALP to find the number of occurrences of a give charater in the given string

.data
	str:.asciz "My name is Nihal T M"
	char:.asciz "a"
	
.text
	ldr r1,=str
	ldr r2,=char
	ldrb r3,[r2]
	mov r4,#0
	
	loop:
		ldrb r5,[r1],#1
		cmp r5,#0
		beq end
		cmp r5,r3
		addeq r4,r4,#1
		b loop
		
	end:
		swi 0x11
.end
