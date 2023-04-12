.text
     	ldr r0,=a
        ldr r1,=b
        ldrh r2,[r0]
        ldrh r3,[r1]
        ldr r4,=c
        add r5,r2,r3
        strh r5,[r4]

.data
        a:.word 12
        b:.word 23
        c:.word 0

