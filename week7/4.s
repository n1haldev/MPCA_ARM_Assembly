.text
.global start

begin:
mov r0,#0
mov r2,#0

again:
swi 0x202
cmp r0,#1
beq loop1
cmp r0,#2
beq loop2
b again

loop1:
mov r5,#16
ldr r1,=u

back1:
ldrb r0,[r1]
swi 0x200
bl delay
add r1,r1,#1
sub r5,r5,#1
cmp r5,#0
bne back1
b again

loop2:
mov r5,#4
ldr r1,=p

back2:
ldrb r0,[r1]
swi 0x200
bl delay
sub r1,r1,#1
sub r5,r5,#1
cmp r5,#0
bne back2
b again

delay:
mov r4,#64000

loop3:
sub r4,r4,#1
cmp r4,#0
bge loop3
mov pc,lr

.data
u:.byte 0b01101101
s:.byte 0b10101011
e:.byte 0b10001111
p:.byte 0b11000111
