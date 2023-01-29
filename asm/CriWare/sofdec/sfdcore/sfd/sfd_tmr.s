.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn SFTMR_GetTmr, global
/* 803CEE60 00398420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CEE64 00398424  7C 08 02 A6 */	mflr r0
/* 803CEE68 00398428  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CEE6C 0039842C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CEE70 00398430  7C 7F 1B 78 */	mr r31, r3
/* 803CEE74 00398434  48 00 59 AD */	bl UTY_IsTmrVoid
/* 803CEE78 00398438  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CEE7C 0039843C  40 82 00 20 */	bne .L_803CEE9C
/* 803CEE80 00398440  48 00 59 D1 */	bl UTY_GetTmrUnit
/* 803CEE84 00398444  3C C0 80 62 */	lis r6, lbl_8061CE00@ha
/* 803CEE88 00398448  38 A6 CE 00 */	addi r5, r6, lbl_8061CE00@l
/* 803CEE8C 0039844C  90 66 CE 00 */	stw r3, lbl_8061CE00@l(r6)
/* 803CEE90 00398450  90 85 00 04 */	stw r4, 0x4(r5)
/* 803CEE94 00398454  48 00 59 49 */	bl UTY_GetTmr
/* 803CEE98 00398458  48 00 00 8C */	b .L_803CEF24
.L_803CEE9C:
/* 803CEE9C 0039845C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803CEEA0 00398460  41 82 00 54 */	beq .L_803CEEF4
/* 803CEEA4 00398464  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 803CEEA8 00398468  2C 00 00 00 */	cmpwi r0, 0x0
/* 803CEEAC 0039846C  41 82 00 48 */	beq .L_803CEEF4
/* 803CEEB0 00398470  81 9F 10 74 */	lwz r12, 0x1074(r31)
/* 803CEEB4 00398474  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803CEEB8 00398478  41 82 00 3C */	beq .L_803CEEF4
/* 803CEEBC 0039847C  38 81 00 0C */	addi r4, r1, 0xc
/* 803CEEC0 00398480  38 A1 00 08 */	addi r5, r1, 0x8
/* 803CEEC4 00398484  80 7F 10 88 */	lwz r3, 0x1088(r31)
/* 803CEEC8 00398488  7D 89 03 A6 */	mtctr r12
/* 803CEECC 0039848C  4E 80 04 21 */	bctrl
/* 803CEED0 00398490  80 C1 00 08 */	lwz r6, 0x8(r1)
/* 803CEED4 00398494  3C A0 80 62 */	lis r5, lbl_8061CE00@ha
/* 803CEED8 00398498  38 65 CE 00 */	addi r3, r5, lbl_8061CE00@l
/* 803CEEDC 0039849C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803CEEE0 003984A0  7C C0 FE 70 */	srawi r0, r6, 31
/* 803CEEE4 003984A4  90 C3 00 04 */	stw r6, 0x4(r3)
/* 803CEEE8 003984A8  7C 83 FE 70 */	srawi r3, r4, 31
/* 803CEEEC 003984AC  90 05 CE 00 */	stw r0, lbl_8061CE00@l(r5)
/* 803CEEF0 003984B0  48 00 00 34 */	b .L_803CEF24
.L_803CEEF4:
/* 803CEEF4 003984B4  3C 80 80 61 */	lis r4, SFLIB_libwork@ha
/* 803CEEF8 003984B8  3C C0 80 62 */	lis r6, lbl_8061CE00@ha
/* 803CEEFC 003984BC  38 84 A2 E4 */	addi r4, r4, SFLIB_libwork@l
/* 803CEF00 003984C0  80 64 01 B0 */	lwz r3, 0x1b0(r4)
/* 803CEF04 003984C4  38 A6 CE 00 */	addi r5, r6, lbl_8061CE00@l
/* 803CEF08 003984C8  80 04 01 C0 */	lwz r0, 0x1c0(r4)
/* 803CEF0C 003984CC  80 E4 01 BC */	lwz r7, 0x1bc(r4)
/* 803CEF10 003984D0  7C 83 01 D6 */	mullw r4, r3, r0
/* 803CEF14 003984D4  7C E0 FE 70 */	srawi r0, r7, 31
/* 803CEF18 003984D8  90 E5 00 04 */	stw r7, 0x4(r5)
/* 803CEF1C 003984DC  90 06 CE 00 */	stw r0, lbl_8061CE00@l(r6)
/* 803CEF20 003984E0  7C 83 FE 70 */	srawi r3, r4, 31
.L_803CEF24:
/* 803CEF24 003984E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CEF28 003984E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CEF2C 003984EC  7C 08 03 A6 */	mtlr r0
/* 803CEF30 003984F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803CEF34 003984F4  4E 80 00 20 */	blr
.endfn SFTMR_GetTmr

.fn SFTMR_GetTmrUnit, global
/* 803CEF38 003984F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CEF3C 003984FC  7C 08 02 A6 */	mflr r0
/* 803CEF40 00398500  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CEF44 00398504  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CEF48 00398508  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CEF4C 0039850C  3F C0 80 62 */	lis r30, lbl_8061CE00@ha
/* 803CEF50 00398510  3B FE CE 00 */	addi r31, r30, lbl_8061CE00@l
/* 803CEF54 00398514  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CEF58 00398518  7C 7D 1B 78 */	mr r29, r3
/* 803CEF5C 0039851C  80 1E CE 00 */	lwz r0, lbl_8061CE00@l(r30)
/* 803CEF60 00398520  80 7F 00 04 */	lwz r3, 0x4(r31)
/* 803CEF64 00398524  7C 60 03 79 */	or. r0, r3, r0
/* 803CEF68 00398528  40 82 00 90 */	bne .L_803CEFF8
/* 803CEF6C 0039852C  48 00 58 B5 */	bl UTY_IsTmrVoid
/* 803CEF70 00398530  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CEF74 00398534  40 82 00 18 */	bne .L_803CEF8C
/* 803CEF78 00398538  48 00 58 D9 */	bl UTY_GetTmrUnit
/* 803CEF7C 0039853C  90 9F 00 04 */	stw r4, 0x4(r31)
/* 803CEF80 00398540  90 7E CE 00 */	stw r3, lbl_8061CE00@l(r30)
/* 803CEF84 00398544  48 00 58 59 */	bl UTY_GetTmr
/* 803CEF88 00398548  48 00 00 70 */	b .L_803CEFF8
.L_803CEF8C:
/* 803CEF8C 0039854C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 803CEF90 00398550  41 82 00 44 */	beq .L_803CEFD4
/* 803CEF94 00398554  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 803CEF98 00398558  2C 00 00 00 */	cmpwi r0, 0x0
/* 803CEF9C 0039855C  41 82 00 38 */	beq .L_803CEFD4
/* 803CEFA0 00398560  81 9D 10 74 */	lwz r12, 0x1074(r29)
/* 803CEFA4 00398564  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803CEFA8 00398568  41 82 00 2C */	beq .L_803CEFD4
/* 803CEFAC 0039856C  38 81 00 08 */	addi r4, r1, 0x8
/* 803CEFB0 00398570  38 A1 00 0C */	addi r5, r1, 0xc
/* 803CEFB4 00398574  80 7D 10 88 */	lwz r3, 0x1088(r29)
/* 803CEFB8 00398578  7D 89 03 A6 */	mtctr r12
/* 803CEFBC 0039857C  4E 80 04 21 */	bctrl
/* 803CEFC0 00398580  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803CEFC4 00398584  7C 60 FE 70 */	srawi r0, r3, 31
/* 803CEFC8 00398588  90 7F 00 04 */	stw r3, 0x4(r31)
/* 803CEFCC 0039858C  90 1E CE 00 */	stw r0, lbl_8061CE00@l(r30)
/* 803CEFD0 00398590  48 00 00 28 */	b .L_803CEFF8
.L_803CEFD4:
/* 803CEFD4 00398594  3C C0 80 61 */	lis r6, SFLIB_libwork@ha
/* 803CEFD8 00398598  3C 80 80 62 */	lis r4, lbl_8061CE00@ha
/* 803CEFDC 0039859C  38 C6 A2 E4 */	addi r6, r6, SFLIB_libwork@l
/* 803CEFE0 003985A0  80 A6 01 BC */	lwz r5, 0x1bc(r6)
/* 803CEFE4 003985A4  38 64 CE 00 */	addi r3, r4, lbl_8061CE00@l
/* 803CEFE8 003985A8  80 06 01 B0 */	lwz r0, 0x1b0(r6)
/* 803CEFEC 003985AC  7C A0 FE 70 */	srawi r0, r5, 31
/* 803CEFF0 003985B0  90 A3 00 04 */	stw r5, 0x4(r3)
/* 803CEFF4 003985B4  90 04 CE 00 */	stw r0, lbl_8061CE00@l(r4)
.L_803CEFF8:
/* 803CEFF8 003985B8  3C 60 80 62 */	lis r3, lbl_8061CE00@ha
/* 803CEFFC 003985BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CF000 003985C0  38 83 CE 00 */	addi r4, r3, lbl_8061CE00@l
/* 803CF004 003985C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CF008 003985C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CF00C 003985CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CF010 003985D0  80 63 CE 00 */	lwz r3, lbl_8061CE00@l(r3)
/* 803CF014 003985D4  80 84 00 04 */	lwz r4, 0x4(r4)
/* 803CF018 003985D8  7C 08 03 A6 */	mtlr r0
/* 803CF01C 003985DC  38 21 00 20 */	addi r1, r1, 0x20
/* 803CF020 003985E0  4E 80 00 20 */	blr
.endfn SFTMR_GetTmrUnit

.fn SFTMR_InitTsum, global
/* 803CF024 003985E4  3C 80 80 00 */	lis r4, 0x8000
/* 803CF028 003985E8  38 A0 00 00 */	li r5, 0x0
/* 803CF02C 003985EC  38 04 FF FF */	addi r0, r4, -0x1
/* 803CF030 003985F0  90 A3 00 04 */	stw r5, 0x4(r3)
/* 803CF034 003985F4  38 80 FF FF */	li r4, -0x1
/* 803CF038 003985F8  90 A3 00 00 */	stw r5, 0x0(r3)
/* 803CF03C 003985FC  90 83 00 0C */	stw r4, 0xc(r3)
/* 803CF040 00398600  90 03 00 08 */	stw r0, 0x8(r3)
/* 803CF044 00398604  90 A3 00 14 */	stw r5, 0x14(r3)
/* 803CF048 00398608  90 A3 00 10 */	stw r5, 0x10(r3)
/* 803CF04C 0039860C  90 A3 00 18 */	stw r5, 0x18(r3)
/* 803CF050 00398610  4E 80 00 20 */	blr
.endfn SFTMR_InitTsum

.fn SFTMR_AddTsum, global
/* 803CF054 00398614  80 83 00 04 */	lwz r4, 0x4(r3)
/* 803CF058 00398618  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 803CF05C 0039861C  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 803CF060 00398620  7C 84 30 14 */	addc r4, r4, r6
/* 803CF064 00398624  81 23 00 08 */	lwz r9, 0x8(r3)
/* 803CF068 00398628  7D 07 29 14 */	adde r8, r7, r5
/* 803CF06C 0039862C  81 43 00 0C */	lwz r10, 0xc(r3)
/* 803CF070 00398630  90 83 00 04 */	stw r4, 0x4(r3)
/* 803CF074 00398634  6D 27 80 00 */	xoris r7, r9, 0x8000
/* 803CF078 00398638  7C 8A 30 10 */	subfc r4, r10, r6
/* 803CF07C 0039863C  7C E7 01 10 */	subfe r7, r7, r0
/* 803CF080 00398640  91 03 00 00 */	stw r8, 0x0(r3)
/* 803CF084 00398644  7C E0 01 10 */	subfe r7, r0, r0
/* 803CF088 00398648  7C E7 00 D1 */	neg. r7, r7
/* 803CF08C 0039864C  41 82 00 0C */	beq .L_803CF098
/* 803CF090 00398650  7C CA 33 78 */	mr r10, r6
/* 803CF094 00398654  7C A9 2B 78 */	mr r9, r5
.L_803CF098:
/* 803CF098 00398658  81 03 00 10 */	lwz r8, 0x10(r3)
/* 803CF09C 0039865C  6C A7 80 00 */	xoris r7, r5, 0x8000
/* 803CF0A0 00398660  81 63 00 14 */	lwz r11, 0x14(r3)
/* 803CF0A4 00398664  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 803CF0A8 00398668  91 43 00 0C */	stw r10, 0xc(r3)
/* 803CF0AC 0039866C  7C 86 58 10 */	subfc r4, r6, r11
/* 803CF0B0 00398670  7C E7 01 10 */	subfe r7, r7, r0
/* 803CF0B4 00398674  91 23 00 08 */	stw r9, 0x8(r3)
/* 803CF0B8 00398678  7C E0 01 10 */	subfe r7, r0, r0
/* 803CF0BC 0039867C  7C E7 00 D1 */	neg. r7, r7
/* 803CF0C0 00398680  41 82 00 08 */	beq .L_803CF0C8
/* 803CF0C4 00398684  48 00 00 0C */	b .L_803CF0D0
.L_803CF0C8:
/* 803CF0C8 00398688  7D 66 5B 78 */	mr r6, r11
/* 803CF0CC 0039868C  7D 05 43 78 */	mr r5, r8
.L_803CF0D0:
/* 803CF0D0 00398690  80 83 00 18 */	lwz r4, 0x18(r3)
/* 803CF0D4 00398694  90 C3 00 14 */	stw r6, 0x14(r3)
/* 803CF0D8 00398698  38 04 00 01 */	addi r0, r4, 0x1
/* 803CF0DC 0039869C  90 A3 00 10 */	stw r5, 0x10(r3)
/* 803CF0E0 003986A0  90 03 00 18 */	stw r0, 0x18(r3)
/* 803CF0E4 003986A4  4E 80 00 20 */	blr
.endfn SFTMR_AddTsum

.section .bss, "wa", @nobits # 0x80573C80 - 0x8066417B

.balign 8
.global lbl_8061CE00
lbl_8061CE00:
	.skip 0x8
