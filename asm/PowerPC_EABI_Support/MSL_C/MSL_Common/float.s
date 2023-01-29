.include "macros.inc"

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8

.global __float_nan
__float_nan:
	.4byte 0x7FFFFFFF

.global __float_huge
__float_huge:
	.4byte 0x7F800000

.global __double_huge
__double_huge:
	.4byte 0x7FF00000
	.4byte 0x00000000
