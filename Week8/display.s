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
	ldr r2, arr3
	ldmia r0, {r2-r4}
	ldmia r1, {r5-r7}
	add r2, r2, r5
	add r3, r3, r6
	add r4, r4, r7
	mov r0, r2
	mov r1, r3
	mov r2, r4
	mov r7, #1
SWI 0

arr1: .word array_source_1
arr2: .word array_source_2
arr3: .word array_destination


