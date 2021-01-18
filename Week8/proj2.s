.data
array_source_1:
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x04
	.byte 0x05
	.byte 0x06
	.byte 0x07
	.byte 0x08
	.byte 0x09
	.byte 0x0a
	.byte 0x0b
	.byte 0x0c

array_source_2:
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x04
	.byte 0x05
	.byte 0x06
	.byte 0x07
	.byte 0x08
	.byte 0x09
	.byte 0x0a
	.byte 0x0b
	.byte 0x0c

array_destination:
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

.text
.global _start

_start:
	ldr r0, arr1
	ldr r1, arr2
	ldmia r0, {r2-r4}
	ldmia r1, {r5-r7}
	uadd8 r8, r2, r5
	uadd8 r9, r3, r6
	uadd8 r10, r4, r7
	ldr r5, arr3
	ldmia r5, {r6}
	stmia  r5, {r8-r10}
	mov r7, #1
SWI 0

arr1: .word array_source_1
arr2: .word array_source_2
arr3: .word array_destination


