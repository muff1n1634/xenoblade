.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __sys_free, global
/* 802BBD00 002852C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BBD04 002852C4  7C 08 02 A6 */	mflr r0
/* 802BBD08 002852C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BBD0C 002852CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BBD10 002852D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BBD14 002852D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BBD18 002852D8  7C 7D 1B 78 */	mr r29, r3
/* 802BBD1C 002852DC  80 0D 99 D8 */	lwz r0, lbl_80665B58@sda21(r13)
/* 802BBD20 002852E0  2C 00 FF FF */	cmpwi r0, -0x1
/* 802BBD24 002852E4  40 82 00 6C */	bne .L_802BBD90
/* 802BBD28 002852E8  3F E0 80 51 */	lis r31, lbl_8050CE90@ha
/* 802BBD2C 002852EC  38 7F CE 90 */	addi r3, r31, lbl_8050CE90@l
/* 802BBD30 002852F0  4C C6 31 82 */	crclr 4*cr1+eq
/* 802BBD34 002852F4  48 09 91 BD */	bl OSReport
/* 802BBD38 002852F8  38 7F CE 90 */	addi r3, r31, lbl_8050CE90@l
/* 802BBD3C 002852FC  38 63 00 36 */	addi r3, r3, 0x36
/* 802BBD40 00285300  4C C6 31 82 */	crclr 4*cr1+eq
/* 802BBD44 00285304  48 09 91 AD */	bl OSReport
/* 802BBD48 00285308  48 09 7C A9 */	bl OSGetArenaLo
/* 802BBD4C 0028530C  7C 7E 1B 78 */	mr r30, r3
/* 802BBD50 00285310  48 09 7C 71 */	bl OSGetArenaHi
/* 802BBD54 00285314  7C 7F 1B 78 */	mr r31, r3
/* 802BBD58 00285318  7F C3 F3 78 */	mr r3, r30
/* 802BBD5C 0028531C  7F E4 FB 78 */	mr r4, r31
/* 802BBD60 00285320  38 A0 00 01 */	li r5, 0x1
/* 802BBD64 00285324  48 09 7B 5D */	bl OSInitAlloc
/* 802BBD68 00285328  7C 7E 1B 78 */	mr r30, r3
/* 802BBD6C 0028532C  48 09 7C E5 */	bl OSSetArenaLo
/* 802BBD70 00285330  38 1E 00 1F */	addi r0, r30, 0x1f
/* 802BBD74 00285334  57 FE 00 34 */	clrrwi r30, r31, 5
/* 802BBD78 00285338  7F C4 F3 78 */	mr r4, r30
/* 802BBD7C 0028533C  54 03 00 34 */	clrrwi r3, r0, 5
/* 802BBD80 00285340  48 09 7B B1 */	bl OSCreateHeap
/* 802BBD84 00285344  48 09 7B 2D */	bl OSSetCurrentHeap
/* 802BBD88 00285348  7F C3 F3 78 */	mr r3, r30
/* 802BBD8C 0028534C  48 09 7C C5 */	bl OSSetArenaLo
.L_802BBD90:
/* 802BBD90 00285350  80 6D 99 D8 */	lwz r3, lbl_80665B58@sda21(r13)
/* 802BBD94 00285354  7F A4 EB 78 */	mr r4, r29
/* 802BBD98 00285358  48 09 7A 99 */	bl OSFreeToHeap
/* 802BBD9C 0028535C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BBDA0 00285360  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BBDA4 00285364  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BBDA8 00285368  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BBDAC 0028536C  7C 08 03 A6 */	mtlr r0
/* 802BBDB0 00285370  38 21 00 20 */	addi r1, r1, 0x20
/* 802BBDB4 00285374  4E 80 00 20 */	blr
.endfn __sys_free

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8
.global lbl_8050CE90
lbl_8050CE90:
	.4byte 0x47434E5F
	.4byte 0x4D656D5F
	.4byte 0x416C6C6F
	.4byte 0x632E6320
	.4byte 0x3A20496E
	.4byte 0x69744465
	.4byte 0x6661756C
	.4byte 0x74486561
	.4byte 0x702E204E
	.4byte 0x6F204865
	.4byte 0x61702041
	.4byte 0x7661696C
	.4byte 0x61626C65
	.4byte 0x0A004D65
	.4byte 0x74726F77
	.4byte 0x65726B73
	.4byte 0x20435720
	.4byte 0x72756E74
	.4byte 0x696D6520
	.4byte 0x6C696272
	.4byte 0x61727920
	.4byte 0x696E6974
	.4byte 0x69616C69
	.4byte 0x7A696E67
	.4byte 0x20646566
	.4byte 0x61756C74
	.4byte 0x20686561
	.4byte 0x700A0000
