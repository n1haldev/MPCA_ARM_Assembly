@ this program copies a block of n data(word) items from location A to location B

.text
	ldr r0,=a
	ldr r1,=b
	ldmib r0!,{r2-r6}
	stmda r1!,{r2-r6}
	swi 0x11

.data
	a:.word 10,20,30,40,50
	b:.word 0,0,0,0,0
