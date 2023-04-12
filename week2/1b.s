@ this program copies a block of n data(half-word) items from location A to location B

.text
	ldr r0,=a
	ldr r1,=b
	ldmia r0!,{r2-r4}
	stmia r1!,{r2-r4}
	swi 0x11

.data
	a:.hword 10,20,30,40,50,60
	b:.hword 0,0,0,0,0,0
