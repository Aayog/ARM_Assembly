.text

.global _start

_start:
	mov r1, #0x25
	mov r2, #0x34
	add r0, r2, r1
	mov R7, #1
SWI 0
