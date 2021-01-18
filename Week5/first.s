.text

.global _start

_start:
	mov r0, #2
	mov r7, #1
SWI 0
