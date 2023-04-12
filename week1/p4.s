.text
    LDR R0,=a
    LDR R1,[r0]
    AND R2,R1,#1
    CMP R2, #0
    BEQ even
    BNE odd
    
    even: MOV R0,#00
    B END
    
    odd: MOV R0, #255
    B END
    
    END:

.data
    a:.word 10
