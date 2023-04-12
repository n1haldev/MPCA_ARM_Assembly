.text
	ldr r0,=string
	swi 0x02	; prints string all at once
	swi 0x11

.data
	string:.asciz "HELLO WORLD"
