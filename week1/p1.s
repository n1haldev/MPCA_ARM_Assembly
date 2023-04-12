.text
	LDR R0,=a
	LDR R1,=b
	LDR R2,=c
	LDR R6,=d
	LDR R3,[r0]
	LDR R4,[r1]
	ADD R5,R3,R4
	SUB R7,R4,R3
	STR R7,[r6]
	STR R5,[r2]

.data
	a:.word 100
	b:.word 200
	c:.word 0
	d:.word 0
