.text
.global _start
_start:
	mov r1, #0
	mov r0, #0
	ldr r2, =0x99999999
	mov r3, #5
l1: 	adds  r0, r2
	bcc next
	add r1, r1, #1
next:	subs r3, r3, #1
	bne l1
	mov r7, #1
SWI 0
