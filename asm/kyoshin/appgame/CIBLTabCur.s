.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CIBLTabCur, global
/* 801ECB84 001B6144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ECB88 001B6148  7C 08 02 A6 */	mflr r0
/* 801ECB8C 001B614C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECB90 001B6150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ECB94 001B6154  7C 7F 1B 78 */	mr r31, r3
/* 801ECB98 001B6158  4B FE 54 29 */	bl __ct__801D1FC0
/* 801ECB9C 001B615C  3C 80 80 54 */	lis r4, __vt__CIBLTabCur@ha
/* 801ECBA0 001B6160  7F E3 FB 78 */	mr r3, r31
/* 801ECBA4 001B6164  38 84 85 38 */	addi r4, r4, __vt__CIBLTabCur@l
/* 801ECBA8 001B6168  90 9F 00 00 */	stw r4, 0(r31)
/* 801ECBAC 001B616C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ECBB0 001B6170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ECBB4 001B6174  7C 08 03 A6 */	mtlr r0
/* 801ECBB8 001B6178  38 21 00 10 */	addi r1, r1, 0x10
/* 801ECBBC 001B617C  4E 80 00 20 */	blr 
.endfn __ct__CIBLTabCur

.fn __dt__801ECBC0, global
/* 801ECBC0 001B6180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ECBC4 001B6184  7C 08 02 A6 */	mflr r0
/* 801ECBC8 001B6188  2C 03 00 00 */	cmpwi r3, 0
/* 801ECBCC 001B618C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECBD0 001B6190  BF C1 00 08 */	stmw r30, 8(r1)
/* 801ECBD4 001B6194  7C 7E 1B 78 */	mr r30, r3
/* 801ECBD8 001B6198  7C 9F 23 78 */	mr r31, r4
/* 801ECBDC 001B619C  41 82 00 1C */	beq .L_801ECBF8
/* 801ECBE0 001B61A0  38 80 00 00 */	li r4, 0
/* 801ECBE4 001B61A4  4B FE 54 09 */	bl __dt__801D1FEC
/* 801ECBE8 001B61A8  2C 1F 00 00 */	cmpwi r31, 0
/* 801ECBEC 001B61AC  40 81 00 0C */	ble .L_801ECBF8
/* 801ECBF0 001B61B0  7F C3 F3 78 */	mr r3, r30
/* 801ECBF4 001B61B4  48 24 80 39 */	bl __dl__FPv
.L_801ECBF8:
/* 801ECBF8 001B61B8  7F C3 F3 78 */	mr r3, r30
/* 801ECBFC 001B61BC  BB C1 00 08 */	lmw r30, 8(r1)
/* 801ECC00 001B61C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ECC04 001B61C4  7C 08 03 A6 */	mtlr r0
/* 801ECC08 001B61C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801ECC0C 001B61CC  4E 80 00 20 */	blr 
.endfn __dt__801ECBC0

.fn func_801ECC10, global
/* 801ECC10 001B61D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ECC14 001B61D4  7C 08 02 A6 */	mflr r0
/* 801ECC18 001B61D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECC1C 001B61DC  BF C1 00 08 */	stmw r30, 8(r1)
/* 801ECC20 001B61E0  3F E0 80 50 */	lis r31, CItemBoxLine_strpool@ha
/* 801ECC24 001B61E4  3B FF 29 44 */	addi r31, r31, CItemBoxLine_strpool@l
/* 801ECC28 001B61E8  7C 7E 1B 78 */	mr r30, r3
/* 801ECC2C 001B61EC  38 BF 00 EF */	addi r5, r31, 0xef
/* 801ECC30 001B61F0  80 83 00 04 */	lwz r4, 4(r3)
/* 801ECC34 001B61F4  38 63 00 08 */	addi r3, r3, 8
/* 801ECC38 001B61F8  4B F4 A2 4D */	bl func_80136E84
/* 801ECC3C 001B61FC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801ECC40 001B6200  38 9E 00 0C */	addi r4, r30, 0xc
/* 801ECC44 001B6204  80 BE 00 04 */	lwz r5, 4(r30)
/* 801ECC48 001B6208  38 DF 01 07 */	addi r6, r31, 0x107
/* 801ECC4C 001B620C  4B F4 A2 BD */	bl func_80136F08
/* 801ECC50 001B6210  80 7E 00 08 */	lwz r3, 8(r30)
/* 801ECC54 001B6214  38 9E 00 10 */	addi r4, r30, 0x10
/* 801ECC58 001B6218  80 BE 00 04 */	lwz r5, 4(r30)
/* 801ECC5C 001B621C  38 DF 01 24 */	addi r6, r31, 0x124
/* 801ECC60 001B6220  4B F4 A2 A9 */	bl func_80136F08
/* 801ECC64 001B6224  80 7E 00 08 */	lwz r3, 8(r30)
/* 801ECC68 001B6228  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECC6C 001B622C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801ECC70 001B6230  7D 89 03 A6 */	mtctr r12
/* 801ECC74 001B6234  4E 80 04 21 */	bctrl 
/* 801ECC78 001B6238  7F C3 F3 78 */	mr r3, r30
/* 801ECC7C 001B623C  4B FE 55 51 */	bl func_801D21CC
/* 801ECC80 001B6240  BB C1 00 08 */	lmw r30, 8(r1)
/* 801ECC84 001B6244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ECC88 001B6248  7C 08 03 A6 */	mtlr r0
/* 801ECC8C 001B624C  38 21 00 10 */	addi r1, r1, 0x10
/* 801ECC90 001B6250  4E 80 00 20 */	blr 
.endfn func_801ECC10

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80011BC4", local
.hidden "@etb_80011BC4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80011BC4"

.obj "@etb_80011BCC", local
.hidden "@etb_80011BCC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80011BCC"

.obj "@etb_80011BD4", local
.hidden "@etb_80011BD4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80011BD4"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002C03C", local
.hidden "@eti_8002C03C"
	.4byte __ct__CIBLTabCur
	.4byte 0x0000003C
	.4byte "@etb_80011BC4"
.endobj "@eti_8002C03C"

.obj "@eti_8002C048", local
.hidden "@eti_8002C048"
	.4byte __dt__801ECBC0
	.4byte 0x00000050
	.4byte "@etb_80011BCC"
.endobj "@eti_8002C048"

.obj "@eti_8002C054", local
.hidden "@eti_8002C054"
	.4byte func_801ECC10
	.4byte 0x00000084
	.4byte "@etb_80011BD4"
.endobj "@eti_8002C054"
