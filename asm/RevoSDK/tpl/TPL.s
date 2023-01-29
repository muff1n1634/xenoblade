.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn TPLBind, global
/* 803627C0 0032BD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803627C4 0032BD84  7C 08 02 A6 */	mflr r0
/* 803627C8 0032BD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803627CC 0032BD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803627D0 0032BD90  7C 7F 1B 78 */	mr r31, r3
/* 803627D4 0032BD94  80 83 00 00 */	lwz r4, 0x0(r3)
/* 803627D8 0032BD98  3C 04 FF E0 */	addis r0, r4, 0xffe0
/* 803627DC 0032BD9C  28 00 AF 30 */	cmplwi r0, 0xaf30
/* 803627E0 0032BDA0  41 82 00 1C */	beq .L_803627FC
/* 803627E4 0032BDA4  3C A0 80 56 */	lis r5, lbl_8055F240@ha
/* 803627E8 0032BDA8  38 6D 9B 68 */	addi r3, r13, lbl_80665CE8@sda21
/* 803627EC 0032BDAC  38 A5 F2 40 */	addi r5, r5, lbl_8055F240@l
/* 803627F0 0032BDB0  38 80 00 19 */	li r4, 0x19
/* 803627F4 0032BDB4  4C C6 31 82 */	crclr 4*cr1+eq
/* 803627F8 0032BDB8  48 18 BC 9D */	bl OSPanic
.L_803627FC:
/* 803627FC 0032BDBC  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 80362800 0032BDC0  38 60 00 00 */	li r3, 0x0
/* 80362804 0032BDC4  38 A0 00 01 */	li r5, 0x1
/* 80362808 0032BDC8  7C 00 FA 14 */	add r0, r0, r31
/* 8036280C 0032BDCC  90 1F 00 08 */	stw r0, 0x8(r31)
/* 80362810 0032BDD0  48 00 00 A4 */	b .L_803628B4
/* 80362814 0032BDD4  60 00 00 00 */	nop
.L_80362818:
/* 80362818 0032BDD8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8036281C 0032BDDC  54 66 1B 78 */	clrlslwi r6, r3, 16, 3
/* 80362820 0032BDE0  7C 04 30 2E */	lwzx r0, r4, r6
/* 80362824 0032BDE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80362828 0032BDE8  41 82 00 38 */	beq .L_80362860
/* 8036282C 0032BDEC  7C 1F 02 14 */	add r0, r31, r0
/* 80362830 0032BDF0  7C 04 31 2E */	stwx r0, r4, r6
/* 80362834 0032BDF4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 80362838 0032BDF8  7C 84 30 2E */	lwzx r4, r4, r6
/* 8036283C 0032BDFC  88 04 00 23 */	lbz r0, 0x23(r4)
/* 80362840 0032BE00  2C 00 00 00 */	cmpwi r0, 0x0
/* 80362844 0032BE04  40 82 00 1C */	bne .L_80362860
/* 80362848 0032BE08  80 04 00 08 */	lwz r0, 0x8(r4)
/* 8036284C 0032BE0C  7C 1F 02 14 */	add r0, r31, r0
/* 80362850 0032BE10  90 04 00 08 */	stw r0, 0x8(r4)
/* 80362854 0032BE14  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 80362858 0032BE18  7C 84 30 2E */	lwzx r4, r4, r6
/* 8036285C 0032BE1C  98 A4 00 23 */	stb r5, 0x23(r4)
.L_80362860:
/* 80362860 0032BE20  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 80362864 0032BE24  7C 80 32 14 */	add r4, r0, r6
/* 80362868 0032BE28  80 04 00 04 */	lwz r0, 0x4(r4)
/* 8036286C 0032BE2C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80362870 0032BE30  41 82 00 40 */	beq .L_803628B0
/* 80362874 0032BE34  7C 1F 02 14 */	add r0, r31, r0
/* 80362878 0032BE38  90 04 00 04 */	stw r0, 0x4(r4)
/* 8036287C 0032BE3C  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 80362880 0032BE40  7C 80 32 14 */	add r4, r0, r6
/* 80362884 0032BE44  80 84 00 04 */	lwz r4, 0x4(r4)
/* 80362888 0032BE48  88 04 00 02 */	lbz r0, 0x2(r4)
/* 8036288C 0032BE4C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80362890 0032BE50  40 82 00 20 */	bne .L_803628B0
/* 80362894 0032BE54  80 04 00 08 */	lwz r0, 0x8(r4)
/* 80362898 0032BE58  7C 1F 02 14 */	add r0, r31, r0
/* 8036289C 0032BE5C  90 04 00 08 */	stw r0, 0x8(r4)
/* 803628A0 0032BE60  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 803628A4 0032BE64  7C 80 32 14 */	add r4, r0, r6
/* 803628A8 0032BE68  80 84 00 04 */	lwz r4, 0x4(r4)
/* 803628AC 0032BE6C  98 A4 00 02 */	stb r5, 0x2(r4)
.L_803628B0:
/* 803628B0 0032BE70  38 63 00 01 */	addi r3, r3, 0x1
.L_803628B4:
/* 803628B4 0032BE74  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 803628B8 0032BE78  54 64 04 3E */	clrlwi r4, r3, 16
/* 803628BC 0032BE7C  7C 04 00 40 */	cmplw r4, r0
/* 803628C0 0032BE80  41 80 FF 58 */	blt .L_80362818
/* 803628C4 0032BE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803628C8 0032BE88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803628CC 0032BE8C  7C 08 03 A6 */	mtlr r0
/* 803628D0 0032BE90  38 21 00 10 */	addi r1, r1, 0x10
/* 803628D4 0032BE94  4E 80 00 20 */	blr
.endfn TPLBind
/* 803628D8 0032BE98  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803628DC 0032BE9C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn TPLGet, global
/* 803628E0 0032BEA0  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 803628E4 0032BEA4  80 63 00 08 */	lwz r3, 0x8(r3)
/* 803628E8 0032BEA8  7C 04 2B 96 */	divwu r0, r4, r5
/* 803628EC 0032BEAC  7C 00 29 D6 */	mullw r0, r0, r5
/* 803628F0 0032BEB0  7C 00 20 50 */	subf r0, r0, r4
/* 803628F4 0032BEB4  54 00 18 38 */	slwi r0, r0, 3
/* 803628F8 0032BEB8  7C 63 02 14 */	add r3, r3, r0
/* 803628FC 0032BEBC  4E 80 00 20 */	blr
.endfn TPLGet

.fn TPLGetGXTexObjFromPalette, global
/* 80362900 0032BEC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80362904 0032BEC4  7C 08 02 A6 */	mflr r0
/* 80362908 0032BEC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8036290C 0032BECC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80362910 0032BED0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80362914 0032BED4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80362918 0032BED8  7C 9D 23 78 */	mr r29, r4
/* 8036291C 0032BEDC  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 80362920 0032BEE0  83 C3 00 08 */	lwz r30, 0x8(r3)
/* 80362924 0032BEE4  7F A3 EB 78 */	mr r3, r29
/* 80362928 0032BEE8  7C 05 33 96 */	divwu r0, r5, r6
/* 8036292C 0032BEEC  7C 00 31 D6 */	mullw r0, r0, r6
/* 80362930 0032BEF0  7C 00 28 50 */	subf r0, r0, r5
/* 80362934 0032BEF4  54 1F 18 38 */	slwi r31, r0, 3
/* 80362938 0032BEF8  7D 3E F8 2E */	lwzx r9, r30, r31
/* 8036293C 0032BEFC  88 C9 00 21 */	lbz r6, 0x21(r9)
/* 80362940 0032BF00  88 09 00 22 */	lbz r0, 0x22(r9)
/* 80362944 0032BF04  80 89 00 08 */	lwz r4, 0x8(r9)
/* 80362948 0032BF08  7C A6 00 50 */	subf r5, r6, r0
/* 8036294C 0032BF0C  7C 00 30 50 */	subf r0, r0, r6
/* 80362950 0032BF10  7C A0 03 78 */	or r0, r5, r0
/* 80362954 0032BF14  A0 A9 00 02 */	lhz r5, 0x2(r9)
/* 80362958 0032BF18  A0 C9 00 00 */	lhz r6, 0x0(r9)
/* 8036295C 0032BF1C  54 0A 0F FE */	srwi r10, r0, 31
/* 80362960 0032BF20  80 E9 00 04 */	lwz r7, 0x4(r9)
/* 80362964 0032BF24  81 09 00 0C */	lwz r8, 0xc(r9)
/* 80362968 0032BF28  81 29 00 10 */	lwz r9, 0x10(r9)
/* 8036296C 0032BF2C  4B FB 99 45 */	bl GXInitTexObj
/* 80362970 0032BF30  7C FE F8 2E */	lwzx r7, r30, r31
/* 80362974 0032BF34  3C A0 43 30 */	lis r5, 0x4330
/* 80362978 0032BF38  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8036297C 0032BF3C  7F A3 EB 78 */	mr r3, r29
/* 80362980 0032BF40  88 87 00 21 */	lbz r4, 0x21(r7)
/* 80362984 0032BF44  38 C0 00 00 */	li r6, 0x0
/* 80362988 0032BF48  90 81 00 0C */	stw r4, 0xc(r1)
/* 8036298C 0032BF4C  39 00 00 00 */	li r8, 0x0
/* 80362990 0032BF50  88 07 00 22 */	lbz r0, 0x22(r7)
/* 80362994 0032BF54  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80362998 0032BF58  C8 42 BE 68 */	lfd f2, lbl_8066C1E8@sda21(r2)
/* 8036299C 0032BF5C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 803629A0 0032BF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 803629A4 0032BF64  EC 20 10 28 */	fsubs f1, f0, f2
/* 803629A8 0032BF68  80 87 00 14 */	lwz r4, 0x14(r7)
/* 803629AC 0032BF6C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803629B0 0032BF70  80 A7 00 18 */	lwz r5, 0x18(r7)
/* 803629B4 0032BF74  C0 67 00 1C */	lfs f3, 0x1c(r7)
/* 803629B8 0032BF78  EC 40 10 28 */	fsubs f2, f0, f2
/* 803629BC 0032BF7C  88 E7 00 20 */	lbz r7, 0x20(r7)
/* 803629C0 0032BF80  4B FB 9B 51 */	bl GXInitTexObjLOD
/* 803629C4 0032BF84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803629C8 0032BF88  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803629CC 0032BF8C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803629D0 0032BF90  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803629D4 0032BF94  7C 08 03 A6 */	mtlr r0
/* 803629D8 0032BF98  38 21 00 30 */	addi r1, r1, 0x30
/* 803629DC 0032BF9C  4E 80 00 20 */	blr
.endfn TPLGetGXTexObjFromPalette

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8
.global lbl_8055F240
lbl_8055F240:
	.4byte 0x696E7661
	.4byte 0x6C696420
	.4byte 0x76657273
	.4byte 0x696F6E20
	.4byte 0x6E756D62
	.4byte 0x65722066
	.4byte 0x6F722074
	.4byte 0x65787475
	.4byte 0x72652070
	.4byte 0x616C6574
	.4byte 0x74650000
	.4byte 0x00000000

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8
.global lbl_80665CE8
lbl_80665CE8:
	.4byte 0x54504C2E
	.4byte 0x63000000

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_8066C1E8
lbl_8066C1E8:
	.4byte 0x43300000
	.4byte 0x00000000
