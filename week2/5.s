@ if([A]==[B]) then [C]=[A]+[B]
@ else if [B]==[C] then [D]=[A]-[B]
@ else [E]=[A]*[B]

.text
	ldr r0,=a
	ldr r1,=b
	ldr r2,=c
	ldr r3,[r0]
	ldr r4,[r1]
	ldr r5,[r2]
	cmp r3,r4
	beq case1
	cmp r4,r5
	beq case2
	b default
	
	case1:
		add r6,r3,r4
		str r6,[r2]
		b end
	
	case2:
		ldr r6,=d
		sub r7,r3,r4
		str r7,[r6]
		b end
		
	default:
		ldr r6,=e
		mul r7,r3,r4
		str r7,[r6]
	end:
	
.data
	a:.word 50
	b:.word 30
	c:.word 30
	d:.word 0
	e:.word 0
