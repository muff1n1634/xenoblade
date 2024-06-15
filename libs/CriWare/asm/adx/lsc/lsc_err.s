.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn LSC_EntryErrFunc, global
/* 803917A8 0035AD68  2C 03 00 00 */	cmpwi r3, 0
/* 803917AC 0035AD6C  40 82 00 1C */	bne .L_803917C8
/* 803917B0 0035AD70  38 00 00 00 */	li r0, 0
/* 803917B4 0035AD74  3C 80 80 5F */	lis r4, lsc_err_func@ha
/* 803917B8 0035AD78  3C 60 80 5F */	lis r3, lsc_err_obj@ha
/* 803917BC 0035AD7C  90 04 B2 70 */	stw r0, lsc_err_func@l(r4)
/* 803917C0 0035AD80  90 03 B2 74 */	stw r0, lsc_err_obj@l(r3)
/* 803917C4 0035AD84  4E 80 00 20 */	blr
.L_803917C8:
/* 803917C8 0035AD88  3C C0 80 5F */	lis r6, lsc_err_func@ha
/* 803917CC 0035AD8C  3C A0 80 5F */	lis r5, lsc_err_obj@ha
/* 803917D0 0035AD90  90 66 B2 70 */	stw r3, lsc_err_func@l(r6)
/* 803917D4 0035AD94  90 85 B2 74 */	stw r4, lsc_err_obj@l(r5)
/* 803917D8 0035AD98  4E 80 00 20 */	blr 
.endfn LSC_EntryErrFunc

.fn LSC_CallErrFunc_, global
/* 803917DC 0035AD9C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803917E0 0035ADA0  7C 08 02 A6 */	mflr r0
/* 803917E4 0035ADA4  90 01 00 94 */	stw r0, 0x94(r1)
/* 803917E8 0035ADA8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 803917EC 0035ADAC  93 C1 00 88 */	stw r30, 0x88(r1)
/* 803917F0 0035ADB0  93 A1 00 84 */	stw r29, 0x84(r1)
/* 803917F4 0035ADB4  7C 7D 1B 78 */	mr r29, r3
/* 803917F8 0035ADB8  40 86 00 24 */	bne cr1, .L_8039181C
/* 803917FC 0035ADBC  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80391800 0035ADC0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80391804 0035ADC4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80391808 0035ADC8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8039180C 0035ADCC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80391810 0035ADD0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80391814 0035ADD4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80391818 0035ADD8  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_8039181C:
/* 8039181C 0035ADDC  39 61 00 98 */	addi r11, r1, 0x98
/* 80391820 0035ADE0  38 01 00 08 */	addi r0, r1, 8
/* 80391824 0035ADE4  3F C0 80 5F */	lis r30, lsc_err_func@ha
/* 80391828 0035ADE8  3D 80 01 00 */	lis r12, 0x100
/* 8039182C 0035ADEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80391830 0035ADF0  3B DE B2 70 */	addi r30, r30, lsc_err_func@l
/* 80391834 0035ADF4  3B E1 00 68 */	addi r31, r1, 0x68
/* 80391838 0035ADF8  38 80 01 00 */	li r4, 0x100
/* 8039183C 0035ADFC  90 61 00 08 */	stw r3, 8(r1)
/* 80391840 0035AE00  38 7E 00 08 */	addi r3, r30, 8
/* 80391844 0035AE04  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80391848 0035AE08  7F A5 EB 78 */	mr r5, r29
/* 8039184C 0035AE0C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80391850 0035AE10  7F E6 FB 78 */	mr r6, r31
/* 80391854 0035AE14  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80391858 0035AE18  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8039185C 0035AE1C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80391860 0035AE20  91 41 00 24 */	stw r10, 0x24(r1)
/* 80391864 0035AE24  91 81 00 68 */	stw r12, 0x68(r1)
/* 80391868 0035AE28  91 61 00 6C */	stw r11, 0x6c(r1)
/* 8039186C 0035AE2C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80391870 0035AE30  48 00 9C 65 */	bl criCrw_Vsprintf
/* 80391874 0035AE34  81 9E 00 00 */	lwz r12, 0(r30)
/* 80391878 0035AE38  2C 0C 00 00 */	cmpwi r12, 0
/* 8039187C 0035AE3C  41 82 00 14 */	beq .L_80391890
/* 80391880 0035AE40  38 9E 00 08 */	addi r4, r30, 8
/* 80391884 0035AE44  80 7E 00 04 */	lwz r3, 4(r30)
/* 80391888 0035AE48  7D 89 03 A6 */	mtctr r12
/* 8039188C 0035AE4C  4E 80 04 21 */	bctrl 
.L_80391890:
/* 80391890 0035AE50  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80391894 0035AE54  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80391898 0035AE58  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8039189C 0035AE5C  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 803918A0 0035AE60  7C 08 03 A6 */	mtlr r0
/* 803918A4 0035AE64  38 21 00 90 */	addi r1, r1, 0x90
/* 803918A8 0035AE68  4E 80 00 20 */	blr 
.endfn LSC_CallErrFunc_

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj lsc_err_func, global
	.skip 0x4
.endobj lsc_err_func

.obj lsc_err_obj, global
	.skip 0x4
.endobj lsc_err_obj

.obj lsc_err_msg, global
	.skip 0x100
.endobj lsc_err_msg
