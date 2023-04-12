.text
    LDR R0,=a
    LDR R1,=b		
    LDR R2,=c
    LDR R3,=d
    LDR R4,=e
    LDR R5,=f
    LDR R6,[r0]
    LDR R7,[r1]
    LDR R8,[r2]
    LDR R9,[r3]
    LDR R10,[r4]
    ADD R11,R6,R7
    ADD R11,R11,R8
    ADD R11,R11,R9
    ADD R11,R11,R10
    STR R11,[r5]

.data
    a:.word 10
    b:.word 3
    c:.word 7
    d:.word 6
    e:.word 9
    f:.word 0
