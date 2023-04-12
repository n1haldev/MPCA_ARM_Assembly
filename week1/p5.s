.text
    LDR R0,=a
    LDR R1,=b
    LDR R2,=c
    LDR R3,[r0]
    LDR R4,[r1]
    CMP R3,R4
    beq add
    sub r5,r3,R4
    STR r5,[r2]
    B END
    add:
    add r5,r3,R4
    STR r5,[r2]
    END:

.data
    a:.word 10
    b:.word 6
    c:.word 0
