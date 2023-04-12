.text
    ldr r0,=a
    ldr r2,[r0]
    CMP r2,#0
    BEQ zero
    BPL plus
    BMI negative

    zero: mov r1,#1
    B END

    plus: mov r1,#2
    B END

    negative: mov r1,#3
    B END

    END:

.data
    a:.word 0
