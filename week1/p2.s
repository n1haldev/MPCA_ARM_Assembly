.text
    LDR R1,=a
    LDR R2,=b
    LDR R3,=c
    LDR R4,[r1]
    LDR R5,[r2]
    AND R6,R4,R5
    STR R6,[r3]

.data
    a:.word 5
    b:.word 10
    c:.word 0