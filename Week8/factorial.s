.data
var1: .word 5

.text
.global _start

_start:
	ldr r0, adr_var1
	ldr r1, [r0]
	mov r2, #1
	mov r3, #0
	mov r4, #1
fact:
	cmp r2, r1
	beq out
	add r3, r3, r4
	add r2, r2, #1
	b fact
out:
	sub r1, r1, #1
	cmp r1, #0
	beq exit
	mov r3, r4
	mov r2, #1
	b fact

exit:
	mov r7, #1
SWI 0

adr_var1: .word var1
