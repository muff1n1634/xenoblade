.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn criware_803A5908, global
/* 803A5908 0036EEC8  38 00 01 00 */	li r0, 0x100
/* 803A590C 0036EECC  38 80 00 00 */	li r4, 0
/* 803A5910 0036EED0  7C 09 03 A6 */	mtctr r0
.L_803A5914:
/* 803A5914 0036EED4  60 80 01 00 */	ori r0, r4, 0x100
/* 803A5918 0036EED8  28 00 01 00 */	cmplwi r0, 0x100
/* 803A591C 0036EEDC  40 82 00 0C */	bne .L_803A5928
/* 803A5920 0036EEE0  38 00 00 04 */	li r0, 4
/* 803A5924 0036EEE4  48 00 00 78 */	b .L_803A599C
.L_803A5928:
/* 803A5928 0036EEE8  28 00 01 01 */	cmplwi r0, 0x101
/* 803A592C 0036EEEC  40 82 00 0C */	bne .L_803A5938
/* 803A5930 0036EEF0  38 00 00 03 */	li r0, 3
/* 803A5934 0036EEF4  48 00 00 68 */	b .L_803A599C
.L_803A5938:
/* 803A5938 0036EEF8  40 81 00 14 */	ble .L_803A594C
/* 803A593C 0036EEFC  28 00 01 AF */	cmplwi r0, 0x1af
/* 803A5940 0036EF00  41 81 00 0C */	bgt .L_803A594C
/* 803A5944 0036EF04  38 00 00 01 */	li r0, 1
/* 803A5948 0036EF08  48 00 00 54 */	b .L_803A599C
.L_803A594C:
/* 803A594C 0036EF0C  28 00 01 B2 */	cmplwi r0, 0x1b2
/* 803A5950 0036EF10  40 82 00 0C */	bne .L_803A595C
/* 803A5954 0036EF14  38 00 00 20 */	li r0, 0x20
/* 803A5958 0036EF18  48 00 00 44 */	b .L_803A599C
.L_803A595C:
/* 803A595C 0036EF1C  28 00 01 B3 */	cmplwi r0, 0x1b3
/* 803A5960 0036EF20  40 82 00 0C */	bne .L_803A596C
/* 803A5964 0036EF24  38 00 00 40 */	li r0, 0x40
/* 803A5968 0036EF28  48 00 00 34 */	b .L_803A599C
.L_803A596C:
/* 803A596C 0036EF2C  28 00 01 B5 */	cmplwi r0, 0x1b5
/* 803A5970 0036EF30  40 82 00 0C */	bne .L_803A597C
/* 803A5974 0036EF34  38 00 00 10 */	li r0, 0x10
/* 803A5978 0036EF38  48 00 00 24 */	b .L_803A599C
.L_803A597C:
/* 803A597C 0036EF3C  28 00 01 B7 */	cmplwi r0, 0x1b7
/* 803A5980 0036EF40  40 82 00 0C */	bne .L_803A598C
/* 803A5984 0036EF44  38 00 00 80 */	li r0, 0x80
/* 803A5988 0036EF48  48 00 00 14 */	b .L_803A599C
.L_803A598C:
/* 803A598C 0036EF4C  28 00 01 B8 */	cmplwi r0, 0x1b8
/* 803A5990 0036EF50  38 00 00 00 */	li r0, 0
/* 803A5994 0036EF54  40 82 00 08 */	bne .L_803A599C
/* 803A5998 0036EF58  38 00 00 08 */	li r0, 8
.L_803A599C:
/* 803A599C 0036EF5C  98 03 00 00 */	stb r0, 0(r3)
/* 803A59A0 0036EF60  38 84 00 01 */	addi r4, r4, 1
/* 803A59A4 0036EF64  38 63 00 01 */	addi r3, r3, 1
/* 803A59A8 0036EF68  42 00 FF 6C */	bdnz .L_803A5914
/* 803A59AC 0036EF6C  4E 80 00 20 */	blr 
.endfn criware_803A5908


.fn criware_803A59B0, global
/* 803A59B0 0036EF70  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 803A59B4 0036EF74  7C 08 02 A6 */	mflr r0
/* 803A59B8 0036EF78  90 01 01 14 */	stw r0, 0x114(r1)
/* 803A59BC 0036EF7C  38 61 00 08 */	addi r3, r1, 8
/* 803A59C0 0036EF80  4B FF FF 49 */	bl criware_803A5908
/* 803A59C4 0036EF84  3C 80 80 52 */	lis r4, lbl_8051F608@ha
/* 803A59C8 0036EF88  38 61 00 08 */	addi r3, r1, 8
/* 803A59CC 0036EF8C  38 84 F6 08 */	addi r4, r4, lbl_8051F608@l
/* 803A59D0 0036EF90  38 A0 01 00 */	li r5, 0x100
/* 803A59D4 0036EF94  4B F1 8E 59 */	bl memcmp
/* 803A59D8 0036EF98  2C 03 00 00 */	cmpwi r3, 0
/* 803A59DC 0036EF9C  41 82 00 08 */	beq .L_803A59E4
.L_803A59E0:
/* 803A59E0 0036EFA0  48 00 00 00 */	b .L_803A59E0
.L_803A59E4:
/* 803A59E4 0036EFA4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 803A59E8 0036EFA8  7C 08 03 A6 */	mtlr r0
/* 803A59EC 0036EFAC  38 21 01 10 */	addi r1, r1, 0x110
/* 803A59F0 0036EFB0  4E 80 00 20 */	blr 
.endfn criware_803A59B0

.fn MPV_CheckDelim, global
/* 803A59F4 0036EFB4  88 A3 00 00 */	lbz r5, 0(r3)
/* 803A59F8 0036EFB8  88 83 00 01 */	lbz r4, 1(r3)
/* 803A59FC 0036EFBC  54 A5 40 2E */	slwi r5, r5, 8
/* 803A5A00 0036EFC0  88 03 00 02 */	lbz r0, 2(r3)
/* 803A5A04 0036EFC4  7C A5 23 78 */	or r5, r5, r4
/* 803A5A08 0036EFC8  54 A5 40 2E */	slwi r5, r5, 8
/* 803A5A0C 0036EFCC  7C A5 03 78 */	or r5, r5, r0
/* 803A5A10 0036EFD0  2C 05 00 01 */	cmpwi r5, 1
/* 803A5A14 0036EFD4  41 82 00 0C */	beq .L_803A5A20
/* 803A5A18 0036EFD8  38 60 00 00 */	li r3, 0
/* 803A5A1C 0036EFDC  4E 80 00 20 */	blr
.L_803A5A20:
/* 803A5A20 0036EFE0  3C 80 80 52 */	lis r4, lbl_8051F608@ha
/* 803A5A24 0036EFE4  88 03 00 03 */	lbz r0, 3(r3)
/* 803A5A28 0036EFE8  38 84 F6 08 */	addi r4, r4, lbl_8051F608@l
/* 803A5A2C 0036EFEC  7C 64 00 AE */	lbzx r3, r4, r0
/* 803A5A30 0036EFF0  4E 80 00 20 */	blr 
.endfn MPV_CheckDelim

.fn MPV_BsearchDelim, global
/* 803A5A34 0036EFF4  3C C0 80 52 */	lis r6, lbl_8051F608@ha
/* 803A5A38 0036EFF8  38 E3 FF FF */	addi r7, r3, -1
/* 803A5A3C 0036EFFC  38 C6 F6 08 */	addi r6, r6, lbl_8051F608@l
/* 803A5A40 0036F000  39 20 FF 00 */	li r9, -256
/* 803A5A44 0036F004  39 00 00 00 */	li r8, 0
/* 803A5A48 0036F008  7C 89 03 A6 */	mtctr r4
/* 803A5A4C 0036F00C  2C 04 00 00 */	cmpwi r4, 0
/* 803A5A50 0036F010  40 81 00 3C */	ble .L_803A5A8C
.L_803A5A54:
/* 803A5A54 0036F014  7C 68 38 50 */	subf r3, r8, r7
/* 803A5A58 0036F018  88 03 00 00 */	lbz r0, 0(r3)
/* 803A5A5C 0036F01C  7D 29 03 78 */	or r9, r9, r0
/* 803A5A60 0036F020  55 24 40 2E */	slwi r4, r9, 8
/* 803A5A64 0036F024  3C 04 FF 00 */	addis r0, r4, 0xff00
/* 803A5A68 0036F028  28 00 00 00 */	cmplwi r0, 0
/* 803A5A6C 0036F02C  40 82 00 14 */	bne .L_803A5A80
/* 803A5A70 0036F030  55 20 46 3E */	srwi r0, r9, 0x18
/* 803A5A74 0036F034  7C 06 00 AE */	lbzx r0, r6, r0
/* 803A5A78 0036F038  7C A0 00 39 */	and. r0, r5, r0
/* 803A5A7C 0036F03C  4C 82 00 20 */	bnelr 
.L_803A5A80:
/* 803A5A80 0036F040  7C 89 23 78 */	mr r9, r4
/* 803A5A84 0036F044  39 08 00 01 */	addi r8, r8, 1
/* 803A5A88 0036F048  42 00 FF CC */	bdnz .L_803A5A54
.L_803A5A8C:
/* 803A5A8C 0036F04C  38 60 00 00 */	li r3, 0
/* 803A5A90 0036F050  4E 80 00 20 */	blr 
.endfn MPV_BsearchDelim

.fn MPV_SearchDelim, global
/* 803A5A94 0036F054  3C C0 80 52 */	lis r6, lbl_8051F608@ha
/* 803A5A98 0036F058  39 20 FF 00 */	li r9, -256
/* 803A5A9C 0036F05C  38 C6 F6 08 */	addi r6, r6, lbl_8051F608@l
/* 803A5AA0 0036F060  38 E0 00 00 */	li r7, 0
/* 803A5AA4 0036F064  7C 89 03 A6 */	mtctr r4
/* 803A5AA8 0036F068  2C 04 00 00 */	cmpwi r4, 0
/* 803A5AAC 0036F06C  40 81 00 38 */	ble .L_803A5AE4
.L_803A5AB0:
/* 803A5AB0 0036F070  28 09 01 00 */	cmplwi r9, 0x100
/* 803A5AB4 0036F074  7D 03 38 AE */	lbzx r8, r3, r7
/* 803A5AB8 0036F078  7C 83 3A 14 */	add r4, r3, r7
/* 803A5ABC 0036F07C  40 82 00 18 */	bne .L_803A5AD4
/* 803A5AC0 0036F080  7C 06 40 AE */	lbzx r0, r6, r8
/* 803A5AC4 0036F084  7C A0 00 39 */	and. r0, r5, r0
/* 803A5AC8 0036F088  41 82 00 0C */	beq .L_803A5AD4
/* 803A5ACC 0036F08C  38 64 FF FD */	addi r3, r4, -3
/* 803A5AD0 0036F090  4E 80 00 20 */	blr
.L_803A5AD4:
/* 803A5AD4 0036F094  7D 20 43 78 */	or r0, r9, r8
/* 803A5AD8 0036F098  38 E7 00 01 */	addi r7, r7, 1
/* 803A5ADC 0036F09C  54 09 40 2E */	slwi r9, r0, 8
/* 803A5AE0 0036F0A0  42 00 FF D0 */	bdnz .L_803A5AB0
.L_803A5AE4:
/* 803A5AE4 0036F0A4  38 60 00 00 */	li r3, 0
/* 803A5AE8 0036F0A8  4E 80 00 20 */	blr 
.endfn MPV_SearchDelim

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8051F608, global
	.4byte 0x04030101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x00002040
	.4byte 0x00100080
	.4byte 0x08000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_8051F608
