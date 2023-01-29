.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn SISetSamplingRate, global
/* 803626D0 0032BC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803626D4 0032BC94  7C 08 02 A6 */	mflr r0
/* 803626D8 0032BC98  28 03 00 0B */	cmplwi r3, 0xb
/* 803626DC 0032BC9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803626E0 0032BCA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803626E4 0032BCA4  3F E0 80 56 */	lis r31, XYNTSC@ha
/* 803626E8 0032BCA8  3B FF F1 A8 */	addi r31, r31, XYNTSC@l
/* 803626EC 0032BCAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803626F0 0032BCB0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803626F4 0032BCB4  7C 7D 1B 78 */	mr r29, r3
/* 803626F8 0032BCB8  40 81 00 08 */	ble .L_80362700
/* 803626FC 0032BCBC  3B A0 00 0B */	li r29, 0xb
.L_80362700:
/* 80362700 0032BCC0  4B FF 62 B1 */	bl OSDisableInterrupts
/* 80362704 0032BCC4  93 AD BA 00 */	stw r29, SamplingRate@sda21(r13)
/* 80362708 0032BCC8  7C 7E 1B 78 */	mr r30, r3
/* 8036270C 0032BCCC  48 00 3D F5 */	bl VIGetTvFormat
/* 80362710 0032BCD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80362714 0032BCD4  41 82 00 20 */	beq .L_80362734
/* 80362718 0032BCD8  28 03 00 02 */	cmplwi r3, 0x2
/* 8036271C 0032BCDC  41 82 00 18 */	beq .L_80362734
/* 80362720 0032BCE0  28 03 00 05 */	cmplwi r3, 0x5
/* 80362724 0032BCE4  41 82 00 10 */	beq .L_80362734
/* 80362728 0032BCE8  28 03 00 01 */	cmplwi r3, 0x1
/* 8036272C 0032BCEC  41 82 00 10 */	beq .L_8036273C
/* 80362730 0032BCF0  48 00 00 14 */	b .L_80362744
.L_80362734:
/* 80362734 0032BCF4  38 BF 00 00 */	addi r5, r31, 0x0
/* 80362738 0032BCF8  48 00 00 20 */	b .L_80362758
.L_8036273C:
/* 8036273C 0032BCFC  38 BF 00 30 */	addi r5, r31, 0x30
/* 80362740 0032BD00  48 00 00 18 */	b .L_80362758
.L_80362744:
/* 80362744 0032BD04  38 7F 00 60 */	addi r3, r31, 0x60
/* 80362748 0032BD08  4C C6 31 82 */	crclr 4*cr1+eq
/* 8036274C 0032BD0C  4B FF 27 A5 */	bl OSReport
/* 80362750 0032BD10  3B A0 00 00 */	li r29, 0x0
/* 80362754 0032BD14  38 BF 00 00 */	addi r5, r31, 0x0
.L_80362758:
/* 80362758 0032BD18  3C 60 CC 00 */	lis r3, 0xcc00
/* 8036275C 0032BD1C  57 A0 10 3A */	slwi r0, r29, 2
/* 80362760 0032BD20  A0 83 20 6C */	lhz r4, 0x206c(r3)
/* 80362764 0032BD24  7C 65 02 14 */	add r3, r5, r0
/* 80362768 0032BD28  7C 05 02 2E */	lhzx r0, r5, r0
/* 8036276C 0032BD2C  54 85 07 FE */	clrlwi r5, r4, 31
/* 80362770 0032BD30  88 83 00 02 */	lbz r4, 0x2(r3)
/* 80362774 0032BD34  38 65 00 01 */	addi r3, r5, 0x1
/* 80362778 0032BD38  7C 63 01 D6 */	mullw r3, r3, r0
/* 8036277C 0032BD3C  4B FF F8 75 */	bl SISetXY
/* 80362780 0032BD40  7F C3 F3 78 */	mr r3, r30
/* 80362784 0032BD44  4B FF 62 6D */	bl OSRestoreInterrupts
/* 80362788 0032BD48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036278C 0032BD4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80362790 0032BD50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80362794 0032BD54  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80362798 0032BD58  7C 08 03 A6 */	mtlr r0
/* 8036279C 0032BD5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803627A0 0032BD60  4E 80 00 20 */	blr
.endfn SISetSamplingRate
/* 803627A4 0032BD64  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803627A8 0032BD68  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803627AC 0032BD6C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn SIRefreshSamplingRate, global
/* 803627B0 0032BD70  80 6D BA 00 */	lwz r3, SamplingRate@sda21(r13)
/* 803627B4 0032BD74  4B FF FF 1C */	b SISetSamplingRate
.endfn SIRefreshSamplingRate
/* 803627B8 0032BD78  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803627BC 0032BD7C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

XYNTSC:
	.4byte 0x00F60200
	.4byte 0x000E1300
	.4byte 0x001E0900
	.4byte 0x002C0600
	.4byte 0x00340500
	.4byte 0x00410400
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x01280200
	.4byte 0x000F1500
	.4byte 0x001D0B00
	.4byte 0x002D0700
	.4byte 0x00340600
	.4byte 0x003F0500
	.4byte 0x004E0400
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x009C0200
	.4byte 0x53495365
	.4byte 0x7453616D
	.4byte 0x706C696E
	.4byte 0x67526174
	.4byte 0x653A2075
	.4byte 0x6E6B6E6F
	.4byte 0x776E2054
	.4byte 0x5620666F
	.4byte 0x726D6174
	.4byte 0x2E205573
	.4byte 0x65206465
	.4byte 0x6661756C
	.4byte 0x742E0000
	.4byte 0x00000000

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8

SamplingRate:
	.skip 0x4
	.skip 0x4
