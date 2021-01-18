.data
array_source:
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x04
array_destination:
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

.text
.global _start

_start:
	ldr r0, arr1
	ldr r3, arr2
	ldmia r0, {r2}
	stmia r3, {r2}
	mov r7, #1
SWI 0

arr1: .word array_source
arr2: .word array_destination


