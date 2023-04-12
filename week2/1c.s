@ this program copies a block of n data(byte) items from location A to location B

.text
	ldr r0,=a
	ldr r1,=b
	ldmia r0!,{r2-r3}
	stmia r1!,{r2-r3}
	swi 0x11

.data
	a:.byte 10,20,30,40,50,60,70,80
	b:.byte 0,0,0,0,0,0,0,0
