.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_80293D90, global
/* 80293D90 0025D350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293D94 0025D354  7C 08 02 A6 */	mflr r0
/* 80293D98 0025D358  3C 80 80 54 */	lis r4, __vt__cf_CChainCombo@ha
/* 80293D9C 0025D35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293DA0 0025D360  38 84 C1 4C */	addi r4, r4, __vt__cf_CChainCombo@l
/* 80293DA4 0025D364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293DA8 0025D368  7C 7F 1B 78 */	mr r31, r3
/* 80293DAC 0025D36C  90 83 00 14 */	stw r4, 0x14(r3)
/* 80293DB0 0025D370  38 63 00 0C */	addi r3, r3, 0xc
/* 80293DB4 0025D374  48 00 0A 71 */	bl func_80294824
/* 80293DB8 0025D378  38 00 00 00 */	li r0, 0x0
/* 80293DBC 0025D37C  90 1F 00 00 */	stw r0, 0x0(r31)
/* 80293DC0 0025D380  38 7F 00 0C */	addi r3, r31, 0xc
/* 80293DC4 0025D384  90 1F 00 04 */	stw r0, 0x4(r31)
/* 80293DC8 0025D388  98 1F 00 08 */	stb r0, 0x8(r31)
/* 80293DCC 0025D38C  48 00 0A 69 */	bl func_80294834
/* 80293DD0 0025D390  48 01 65 69 */	bl func_802AA338
/* 80293DD4 0025D394  7F E3 FB 78 */	mr r3, r31
/* 80293DD8 0025D398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293DDC 0025D39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293DE0 0025D3A0  7C 08 03 A6 */	mtlr r0
/* 80293DE4 0025D3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80293DE8 0025D3A8  4E 80 00 20 */	blr
.endfn func_80293D90

.fn func_80293DEC, global
/* 80293DEC 0025D3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293DF0 0025D3B0  7C 08 02 A6 */	mflr r0
/* 80293DF4 0025D3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293DF8 0025D3B8  38 00 00 00 */	li r0, 0x0
/* 80293DFC 0025D3BC  90 03 00 00 */	stw r0, 0x0(r3)
/* 80293E00 0025D3C0  90 03 00 04 */	stw r0, 0x4(r3)
/* 80293E04 0025D3C4  98 03 00 08 */	stb r0, 0x8(r3)
/* 80293E08 0025D3C8  38 63 00 0C */	addi r3, r3, 0xc
/* 80293E0C 0025D3CC  48 00 0A 29 */	bl func_80294834
/* 80293E10 0025D3D0  48 01 65 29 */	bl func_802AA338
/* 80293E14 0025D3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293E18 0025D3D8  7C 08 03 A6 */	mtlr r0
/* 80293E1C 0025D3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80293E20 0025D3E0  4E 80 00 20 */	blr
.endfn func_80293DEC

.fn func_80293E24, global
/* 80293E24 0025D3E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80293E28 0025D3E8  7C 08 02 A6 */	mflr r0
/* 80293E2C 0025D3EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80293E30 0025D3F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80293E34 0025D3F4  7C 7F 1B 78 */	mr r31, r3
/* 80293E38 0025D3F8  7C 83 23 78 */	mr r3, r4
/* 80293E3C 0025D3FC  81 84 00 00 */	lwz r12, 0x0(r4)
/* 80293E40 0025D400  81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 80293E44 0025D404  7D 89 03 A6 */	mtctr r12
/* 80293E48 0025D408  4E 80 04 21 */	bctrl
/* 80293E4C 0025D40C  80 63 00 50 */	lwz r3, 0x50(r3)
/* 80293E50 0025D410  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 80293E54 0025D414  88 63 00 3E */	lbz r3, 0x3e(r3)
/* 80293E58 0025D418  2C 03 00 08 */	cmpwi r3, 0x8
/* 80293E5C 0025D41C  40 82 00 0C */	bne .L_80293E68
/* 80293E60 0025D420  38 00 00 00 */	li r0, 0x0
/* 80293E64 0025D424  48 00 00 24 */	b .L_80293E88
.L_80293E68:
/* 80293E68 0025D428  2C 00 00 08 */	cmpwi r0, 0x8
/* 80293E6C 0025D42C  40 82 00 0C */	bne .L_80293E78
/* 80293E70 0025D430  38 00 00 00 */	li r0, 0x0
/* 80293E74 0025D434  48 00 00 14 */	b .L_80293E88
.L_80293E78:
/* 80293E78 0025D438  7C 83 00 50 */	subf r4, r3, r0
/* 80293E7C 0025D43C  7C 00 18 50 */	subf r0, r0, r3
/* 80293E80 0025D440  7C 80 03 78 */	or r0, r4, r0
/* 80293E84 0025D444  54 00 0F FE */	srwi r0, r0, 31
.L_80293E88:
/* 80293E88 0025D448  2C 00 00 00 */	cmpwi r0, 0x0
/* 80293E8C 0025D44C  41 82 00 0C */	beq .L_80293E98
/* 80293E90 0025D450  38 00 00 00 */	li r0, 0x0
/* 80293E94 0025D454  90 1F 00 04 */	stw r0, 0x4(r31)
.L_80293E98:
/* 80293E98 0025D458  90 7F 00 00 */	stw r3, 0x0(r31)
/* 80293E9C 0025D45C  4B EA AC 15 */	bl func_8013EAB0
/* 80293EA0 0025D460  80 7F 00 04 */	lwz r3, 0x4(r31)
/* 80293EA4 0025D464  2C 03 00 05 */	cmpwi r3, 0x5
/* 80293EA8 0025D468  40 80 00 30 */	bge .L_80293ED8
/* 80293EAC 0025D46C  38 83 00 01 */	addi r4, r3, 0x1
/* 80293EB0 0025D470  3C 00 43 30 */	lis r0, 0x4330
/* 80293EB4 0025D474  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 80293EB8 0025D478  90 61 00 0C */	stw r3, 0xc(r1)
/* 80293EBC 0025D47C  C8 22 B0 C0 */	lfd f1, lbl_8066B440@sda21(r2)
/* 80293EC0 0025D480  38 7F 00 0C */	addi r3, r31, 0xc
/* 80293EC4 0025D484  90 01 00 08 */	stw r0, 0x8(r1)
/* 80293EC8 0025D488  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 80293ECC 0025D48C  90 9F 00 04 */	stw r4, 0x4(r31)
/* 80293ED0 0025D490  EC 20 08 28 */	fsubs f1, f0, f1
/* 80293ED4 0025D494  48 00 09 71 */	bl func_80294844
.L_80293ED8:
/* 80293ED8 0025D498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80293EDC 0025D49C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80293EE0 0025D4A0  7C 08 03 A6 */	mtlr r0
/* 80293EE4 0025D4A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80293EE8 0025D4A8  4E 80 00 20 */	blr
.endfn func_80293E24

.fn func_80293EEC, global
/* 80293EEC 0025D4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293EF0 0025D4B0  7C 08 02 A6 */	mflr r0
/* 80293EF4 0025D4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293EF8 0025D4B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293EFC 0025D4BC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80293F00 0025D4C0  7C 7E 1B 78 */	mr r30, r3
/* 80293F04 0025D4C4  88 03 00 08 */	lbz r0, 0x8(r3)
/* 80293F08 0025D4C8  2C 00 00 00 */	cmpwi r0, 0x0
/* 80293F0C 0025D4CC  41 82 00 8C */	beq .L_80293F98
/* 80293F10 0025D4D0  81 84 3E 9C */	lwz r12, 0x3e9c(r4)
/* 80293F14 0025D4D4  38 64 3E 9C */	addi r3, r4, 0x3e9c
/* 80293F18 0025D4D8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80293F1C 0025D4DC  7D 89 03 A6 */	mtctr r12
/* 80293F20 0025D4E0  4E 80 04 21 */	bctrl
/* 80293F24 0025D4E4  4B E2 31 69 */	bl func_800B708C
/* 80293F28 0025D4E8  4B ED BF 0D */	bl func_8016FE34
/* 80293F2C 0025D4EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80293F30 0025D4F0  7C 7F 1B 78 */	mr r31, r3
/* 80293F34 0025D4F4  41 82 00 6C */	beq .L_80293FA0
/* 80293F38 0025D4F8  38 60 00 64 */	li r3, 0x64
/* 80293F3C 0025D4FC  48 1A 1F C1 */	bl mtRand__2mlFi
/* 80293F40 0025D500  2C 03 00 05 */	cmpwi r3, 0x5
/* 80293F44 0025D504  40 80 00 10 */	bge .L_80293F54
/* 80293F48 0025D508  3C 60 80 54 */	lis r3, lbl_8053C140@ha
/* 80293F4C 0025D50C  80 83 C1 40 */	lwz r4, lbl_8053C140@l(r3)
/* 80293F50 0025D510  48 00 00 28 */	b .L_80293F78
.L_80293F54:
/* 80293F54 0025D514  2C 03 00 19 */	cmpwi r3, 0x19
/* 80293F58 0025D518  40 80 00 14 */	bge .L_80293F6C
/* 80293F5C 0025D51C  3C 60 80 54 */	lis r3, lbl_8053C140@ha
/* 80293F60 0025D520  38 63 C1 40 */	addi r3, r3, lbl_8053C140@l
/* 80293F64 0025D524  80 83 00 04 */	lwz r4, 0x4(r3)
/* 80293F68 0025D528  48 00 00 10 */	b .L_80293F78
.L_80293F6C:
/* 80293F6C 0025D52C  3C 60 80 54 */	lis r3, lbl_8053C140@ha
/* 80293F70 0025D530  38 63 C1 40 */	addi r3, r3, lbl_8053C140@l
/* 80293F74 0025D534  80 83 00 08 */	lwz r4, 0x8(r3)
.L_80293F78:
/* 80293F78 0025D538  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 80293F7C 0025D53C  7F E3 FB 78 */	mr r3, r31
/* 80293F80 0025D540  81 8C 01 84 */	lwz r12, 0x184(r12)
/* 80293F84 0025D544  7D 89 03 A6 */	mtctr r12
/* 80293F88 0025D548  4E 80 04 21 */	bctrl
/* 80293F8C 0025D54C  7F E4 FB 78 */	mr r4, r31
/* 80293F90 0025D550  38 60 00 BF */	li r3, 0xbf
/* 80293F94 0025D554  48 00 C8 61 */	bl func_802A07F4
.L_80293F98:
/* 80293F98 0025D558  38 00 00 00 */	li r0, 0x0
/* 80293F9C 0025D55C  98 1E 00 08 */	stb r0, 0x8(r30)
.L_80293FA0:
/* 80293FA0 0025D560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293FA4 0025D564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293FA8 0025D568  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80293FAC 0025D56C  7C 08 03 A6 */	mtlr r0
/* 80293FB0 0025D570  38 21 00 10 */	addi r1, r1, 0x10
/* 80293FB4 0025D574  4E 80 00 20 */	blr
.endfn func_80293EEC

.fn func_80293FB8, global
/* 80293FB8 0025D578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293FBC 0025D57C  7C 08 02 A6 */	mflr r0
/* 80293FC0 0025D580  2C 03 00 00 */	cmpwi r3, 0x0
/* 80293FC4 0025D584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293FC8 0025D588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293FCC 0025D58C  7C 9F 23 78 */	mr r31, r4
/* 80293FD0 0025D590  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80293FD4 0025D594  7C 7E 1B 78 */	mr r30, r3
/* 80293FD8 0025D598  41 82 00 50 */	beq .L_80294028
/* 80293FDC 0025D59C  38 80 FF FF */	li r4, -0x1
/* 80293FE0 0025D5A0  38 63 00 C4 */	addi r3, r3, 0xc4
/* 80293FE4 0025D5A4  4B F3 EA 55 */	bl func_801D2A38
/* 80293FE8 0025D5A8  38 7E 00 88 */	addi r3, r30, 0x88
/* 80293FEC 0025D5AC  38 80 FF FF */	li r4, -0x1
/* 80293FF0 0025D5B0  4B F9 76 B1 */	bl func_8022B6A0
/* 80293FF4 0025D5B4  38 7E 00 78 */	addi r3, r30, 0x78
/* 80293FF8 0025D5B8  38 80 FF FF */	li r4, -0x1
/* 80293FFC 0025D5BC  48 1C B5 85 */	bl func_8045F580
/* 80294000 0025D5C0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 80294004 0025D5C4  41 82 00 14 */	beq .L_80294018
/* 80294008 0025D5C8  41 82 00 10 */	beq .L_80294018
/* 8029400C 0025D5CC  7F C3 F3 78 */	mr r3, r30
/* 80294010 0025D5D0  38 80 00 00 */	li r4, 0x0
/* 80294014 0025D5D4  48 1B 0B 25 */	bl func_80444B38
.L_80294018:
/* 80294018 0025D5D8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8029401C 0025D5DC  40 81 00 0C */	ble .L_80294028
/* 80294020 0025D5E0  7F C3 F3 78 */	mr r3, r30
/* 80294024 0025D5E4  48 1A 0C 09 */	bl __dl__FPv
.L_80294028:
/* 80294028 0025D5E8  7F C3 F3 78 */	mr r3, r30
/* 8029402C 0025D5EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294030 0025D5F0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80294034 0025D5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294038 0025D5F8  7C 08 03 A6 */	mtlr r0
/* 8029403C 0025D5FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80294040 0025D600  4E 80 00 20 */	blr
.endfn func_80293FB8

.fn func_80294044, global
/* 80294044 0025D604  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80294048 0025D608  7C 08 02 A6 */	mflr r0
/* 8029404C 0025D60C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80294050 0025D610  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80294054 0025D614  7C 7F 1B 78 */	mr r31, r3
/* 80294058 0025D618  38 60 00 01 */	li r3, 0x1
/* 8029405C 0025D61C  4B DE E8 F1 */	bl func_8008294C
/* 80294060 0025D620  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80294064 0025D624  7F E4 FB 78 */	mr r4, r31
/* 80294068 0025D628  41 82 00 08 */	beq .L_80294070
/* 8029406C 0025D62C  38 9F 00 70 */	addi r4, r31, 0x70
.L_80294070:
/* 80294070 0025D630  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80294074 0025D634  38 A0 00 0D */	li r5, 0xd
/* 80294078 0025D638  38 C0 00 00 */	li r6, 0x0
/* 8029407C 0025D63C  48 20 1E 39 */	bl func_80495EB4
/* 80294080 0025D640  48 1A 03 21 */	bl func_804343A0
/* 80294084 0025D644  3C C0 80 51 */	lis r6, lbl_8050B3A4@ha
/* 80294088 0025D648  7C 64 1B 78 */	mr r4, r3
/* 8029408C 0025D64C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80294090 0025D650  38 A0 40 00 */	li r5, 0x4000
/* 80294094 0025D654  38 C6 B3 A4 */	addi r6, r6, lbl_8050B3A4@l
/* 80294098 0025D658  38 E0 00 00 */	li r7, 0x0
/* 8029409C 0025D65C  48 1C B5 E5 */	bl func_8045F680
/* 802940A0 0025D660  38 61 00 08 */	addi r3, r1, 0x8
/* 802940A4 0025D664  38 9F 00 78 */	addi r4, r31, 0x78
/* 802940A8 0025D668  48 1C B7 B1 */	bl func_8045F858
/* 802940AC 0025D66C  38 61 00 28 */	addi r3, r1, 0x28
/* 802940B0 0025D670  38 80 00 02 */	li r4, 0x2
/* 802940B4 0025D674  4B F9 75 65 */	bl func_8022B618
/* 802940B8 0025D678  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802940BC 0025D67C  38 61 00 28 */	addi r3, r1, 0x28
/* 802940C0 0025D680  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802940C4 0025D684  38 80 FF FF */	li r4, -0x1
/* 802940C8 0025D688  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802940CC 0025D68C  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802940D0 0025D690  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802940D4 0025D694  90 1F 00 94 */	stw r0, 0x94(r31)
/* 802940D8 0025D698  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802940DC 0025D69C  90 1F 00 98 */	stw r0, 0x98(r31)
/* 802940E0 0025D6A0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802940E4 0025D6A4  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 802940E8 0025D6A8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 802940EC 0025D6AC  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 802940F0 0025D6B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802940F4 0025D6B4  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 802940F8 0025D6B8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 802940FC 0025D6BC  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 80294100 0025D6C0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80294104 0025D6C4  90 1F 00 AC */	stw r0, 0xac(r31)
/* 80294108 0025D6C8  88 01 00 50 */	lbz r0, 0x50(r1)
/* 8029410C 0025D6CC  98 1F 00 B0 */	stb r0, 0xb0(r31)
/* 80294110 0025D6D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80294114 0025D6D4  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 80294118 0025D6D8  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8029411C 0025D6DC  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 80294120 0025D6E0  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 80294124 0025D6E4  98 1F 00 BC */	stb r0, 0xbc(r31)
/* 80294128 0025D6E8  88 01 00 5D */	lbz r0, 0x5d(r1)
/* 8029412C 0025D6EC  98 1F 00 BD */	stb r0, 0xbd(r31)
/* 80294130 0025D6F0  88 01 00 5E */	lbz r0, 0x5e(r1)
/* 80294134 0025D6F4  98 1F 00 BE */	stb r0, 0xbe(r31)
/* 80294138 0025D6F8  88 01 00 5F */	lbz r0, 0x5f(r1)
/* 8029413C 0025D6FC  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 80294140 0025D700  88 01 00 60 */	lbz r0, 0x60(r1)
/* 80294144 0025D704  98 1F 00 C0 */	stb r0, 0xc0(r31)
/* 80294148 0025D708  88 01 00 61 */	lbz r0, 0x61(r1)
/* 8029414C 0025D70C  98 1F 00 C1 */	stb r0, 0xc1(r31)
/* 80294150 0025D710  4B F9 75 51 */	bl func_8022B6A0
/* 80294154 0025D714  81 9F 00 88 */	lwz r12, 0x88(r31)
/* 80294158 0025D718  38 7F 00 88 */	addi r3, r31, 0x88
/* 8029415C 0025D71C  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80294160 0025D720  7D 89 03 A6 */	mtctr r12
/* 80294164 0025D724  4E 80 04 21 */	bctrl
/* 80294168 0025D728  4B EA 14 8D */	bl func_801355F4
/* 8029416C 0025D72C  7C 64 1B 78 */	mr r4, r3
/* 80294170 0025D730  38 61 00 10 */	addi r3, r1, 0x10
/* 80294174 0025D734  4B F3 E8 89 */	bl func_801D29FC
/* 80294178 0025D738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029417C 0025D73C  38 61 00 10 */	addi r3, r1, 0x10
/* 80294180 0025D740  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80294184 0025D744  38 80 FF FF */	li r4, -0x1
/* 80294188 0025D748  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8029418C 0025D74C  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80294190 0025D750  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80294194 0025D754  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80294198 0025D758  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8029419C 0025D75C  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 802941A0 0025D760  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802941A4 0025D764  98 1F 00 D8 */	stb r0, 0xd8(r31)
/* 802941A8 0025D768  88 01 00 25 */	lbz r0, 0x25(r1)
/* 802941AC 0025D76C  98 1F 00 D9 */	stb r0, 0xd9(r31)
/* 802941B0 0025D770  4B F3 E8 89 */	bl func_801D2A38
/* 802941B4 0025D774  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 802941B8 0025D778  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802941BC 0025D77C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802941C0 0025D780  7D 89 03 A6 */	mtctr r12
/* 802941C4 0025D784  4E 80 04 21 */	bctrl
/* 802941C8 0025D788  38 7F 00 78 */	addi r3, r31, 0x78
/* 802941CC 0025D78C  48 1C B6 45 */	bl func_8045F810
/* 802941D0 0025D790  38 61 00 08 */	addi r3, r1, 0x8
/* 802941D4 0025D794  38 80 FF FF */	li r4, -0x1
/* 802941D8 0025D798  48 1C B6 F1 */	bl func_8045F8C8
/* 802941DC 0025D79C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802941E0 0025D7A0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802941E4 0025D7A4  7C 08 03 A6 */	mtlr r0
/* 802941E8 0025D7A8  38 21 00 70 */	addi r1, r1, 0x70
/* 802941EC 0025D7AC  4E 80 00 20 */	blr
.endfn func_80294044

.fn func_802941F0, global
/* 802941F0 0025D7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802941F4 0025D7B4  7C 08 02 A6 */	mflr r0
/* 802941F8 0025D7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802941FC 0025D7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294200 0025D7C0  7C 7F 1B 78 */	mr r31, r3
/* 80294204 0025D7C4  48 1B 48 41 */	bl func_80448A44
/* 80294208 0025D7C8  38 7F 00 88 */	addi r3, r31, 0x88
/* 8029420C 0025D7CC  4B F9 75 E9 */	bl func_8022B7F4
/* 80294210 0025D7D0  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 80294214 0025D7D4  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 80294218 0025D7D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8029421C 0025D7DC  7D 89 03 A6 */	mtctr r12
/* 80294220 0025D7E0  4E 80 04 21 */	bctrl
/* 80294224 0025D7E4  38 7F 00 78 */	addi r3, r31, 0x78
/* 80294228 0025D7E8  48 1C B5 51 */	bl func_8045F778
/* 8029422C 0025D7EC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80294230 0025D7F0  38 00 00 00 */	li r0, 0x0
/* 80294234 0025D7F4  90 0D B1 78 */	stw r0, lbl_806672F8@sda21(r13)
/* 80294238 0025D7F8  7F E4 FB 78 */	mr r4, r31
/* 8029423C 0025D7FC  41 82 00 08 */	beq .L_80294244
/* 80294240 0025D800  38 9F 00 70 */	addi r4, r31, 0x70
.L_80294244:
/* 80294244 0025D804  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80294248 0025D808  48 20 1D 09 */	bl func_80495F50
/* 8029424C 0025D80C  88 1F 00 DD */	lbz r0, 0xdd(r31)
/* 80294250 0025D810  7C 00 07 75 */	extsb. r0, r0
/* 80294254 0025D814  41 82 00 0C */	beq .L_80294260
/* 80294258 0025D818  38 60 00 00 */	li r3, 0x0
/* 8029425C 0025D81C  4B DE E6 F1 */	bl func_8008294C
.L_80294260:
/* 80294260 0025D820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294264 0025D824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294268 0025D828  7C 08 03 A6 */	mtlr r0
/* 8029426C 0025D82C  38 21 00 10 */	addi r1, r1, 0x10
/* 80294270 0025D830  4E 80 00 20 */	blr
.endfn func_802941F0

.fn func_80294274, global
/* 80294274 0025D834  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80294278 0025D838  7C 08 02 A6 */	mflr r0
/* 8029427C 0025D83C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80294280 0025D840  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80294284 0025D844  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80294288 0025D848  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8029428C 0025D84C  93 81 00 20 */	stw r28, 0x20(r1)
/* 80294290 0025D850  7C 7C 1B 78 */	mr r28, r3
/* 80294294 0025D854  4B DA C2 55 */	bl func_800404E8
/* 80294298 0025D858  4B DA E4 59 */	bl func_800426F0
/* 8029429C 0025D85C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802942A0 0025D860  40 82 01 80 */	bne .L_80294420
/* 802942A4 0025D864  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 802942A8 0025D868  54 00 02 95 */	rlwinm. r0, r0, 0, 10, 10
/* 802942AC 0025D86C  41 82 00 08 */	beq .L_802942B4
/* 802942B0 0025D870  48 00 01 70 */	b .L_80294420
.L_802942B4:
/* 802942B4 0025D874  4B EA 7B 9D */	bl func_8013BE50
/* 802942B8 0025D878  2C 03 00 00 */	cmpwi r3, 0x0
/* 802942BC 0025D87C  41 82 01 64 */	beq .L_80294420
/* 802942C0 0025D880  88 1C 00 DC */	lbz r0, 0xdc(r28)
/* 802942C4 0025D884  2C 00 00 00 */	cmpwi r0, 0x0
/* 802942C8 0025D888  41 82 00 20 */	beq .L_802942E8
/* 802942CC 0025D88C  2C 00 00 01 */	cmpwi r0, 0x1
/* 802942D0 0025D890  41 82 00 AC */	beq .L_8029437C
/* 802942D4 0025D894  2C 00 00 02 */	cmpwi r0, 0x2
/* 802942D8 0025D898  41 82 00 F4 */	beq .L_802943CC
/* 802942DC 0025D89C  2C 00 00 03 */	cmpwi r0, 0x3
/* 802942E0 0025D8A0  41 82 00 F8 */	beq .L_802943D8
/* 802942E4 0025D8A4  48 00 01 2C */	b .L_80294410
.L_802942E8:
/* 802942E8 0025D8A8  38 7C 00 88 */	addi r3, r28, 0x88
/* 802942EC 0025D8AC  4B F9 75 B5 */	bl func_8022B8A0
/* 802942F0 0025D8B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802942F4 0025D8B4  41 82 01 1C */	beq .L_80294410
/* 802942F8 0025D8B8  3F E0 80 51 */	lis r31, lbl_8050B3A4@ha
/* 802942FC 0025D8BC  38 00 00 01 */	li r0, 0x1
/* 80294300 0025D8C0  3B FF B3 A4 */	addi r31, r31, lbl_8050B3A4@l
/* 80294304 0025D8C4  98 1C 00 DC */	stb r0, 0xdc(r28)
/* 80294308 0025D8C8  38 7F 00 0C */	addi r3, r31, 0xc
/* 8029430C 0025D8CC  38 A0 00 4E */	li r5, 0x4e
/* 80294310 0025D8D0  38 9F 00 17 */	addi r4, r31, 0x17
/* 80294314 0025D8D4  4B EA 1E 7D */	bl func_80136190
/* 80294318 0025D8D8  7C 7D 1B 78 */	mr r29, r3
/* 8029431C 0025D8DC  38 7F 00 0C */	addi r3, r31, 0xc
/* 80294320 0025D8E0  38 9F 00 17 */	addi r4, r31, 0x17
/* 80294324 0025D8E4  38 A0 00 4F */	li r5, 0x4f
/* 80294328 0025D8E8  4B EA 1E 69 */	bl func_80136190
/* 8029432C 0025D8EC  7C 7E 1B 78 */	mr r30, r3
/* 80294330 0025D8F0  38 7F 00 0C */	addi r3, r31, 0xc
/* 80294334 0025D8F4  38 9F 00 17 */	addi r4, r31, 0x17
/* 80294338 0025D8F8  38 A0 00 50 */	li r5, 0x50
/* 8029433C 0025D8FC  4B EA 1E 55 */	bl func_80136190
/* 80294340 0025D900  7C 7F 1B 78 */	mr r31, r3
/* 80294344 0025D904  7F A4 EB 78 */	mr r4, r29
/* 80294348 0025D908  38 7C 00 88 */	addi r3, r28, 0x88
/* 8029434C 0025D90C  38 A0 00 00 */	li r5, 0x0
/* 80294350 0025D910  4B F9 76 65 */	bl func_8022B9B4
/* 80294354 0025D914  7F C4 F3 78 */	mr r4, r30
/* 80294358 0025D918  7F E5 FB 78 */	mr r5, r31
/* 8029435C 0025D91C  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294360 0025D920  4B F9 7C 0D */	bl func_8022BF6C
/* 80294364 0025D924  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294368 0025D928  38 80 00 00 */	li r4, 0x0
/* 8029436C 0025D92C  4B F9 7C 5D */	bl func_8022BFC8
/* 80294370 0025D930  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294374 0025D934  4B F9 75 45 */	bl func_8022B8B8
/* 80294378 0025D938  48 00 00 98 */	b .L_80294410
.L_8029437C:
/* 8029437C 0025D93C  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294380 0025D940  4B F9 75 31 */	bl func_8022B8B0
/* 80294384 0025D944  2C 03 00 00 */	cmpwi r3, 0x0
/* 80294388 0025D948  41 82 00 88 */	beq .L_80294410
/* 8029438C 0025D94C  38 00 00 02 */	li r0, 0x2
/* 80294390 0025D950  98 1C 00 DC */	stb r0, 0xdc(r28)
/* 80294394 0025D954  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 80294398 0025D958  38 80 00 01 */	li r4, 0x1
/* 8029439C 0025D95C  4B F3 DD D1 */	bl func_801D216C
/* 802943A0 0025D960  88 BC 00 DD */	lbz r5, 0xdd(r28)
/* 802943A4 0025D964  38 61 00 08 */	addi r3, r1, 0x8
/* 802943A8 0025D968  38 9C 00 88 */	addi r4, r28, 0x88
/* 802943AC 0025D96C  4B F9 7E 09 */	bl func_8022C1B4
/* 802943B0 0025D970  81 9C 00 C4 */	lwz r12, 0xc4(r28)
/* 802943B4 0025D974  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 802943B8 0025D978  38 81 00 08 */	addi r4, r1, 0x8
/* 802943BC 0025D97C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802943C0 0025D980  7D 89 03 A6 */	mtctr r12
/* 802943C4 0025D984  4E 80 04 21 */	bctrl
/* 802943C8 0025D988  48 00 00 48 */	b .L_80294410
.L_802943CC:
/* 802943CC 0025D98C  7F 83 E3 78 */	mr r3, r28
/* 802943D0 0025D990  48 00 02 69 */	bl func_80294638
/* 802943D4 0025D994  48 00 00 3C */	b .L_80294410
.L_802943D8:
/* 802943D8 0025D998  38 7C 00 88 */	addi r3, r28, 0x88
/* 802943DC 0025D99C  4B F9 74 D5 */	bl func_8022B8B0
/* 802943E0 0025D9A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802943E4 0025D9A4  41 82 00 2C */	beq .L_80294410
/* 802943E8 0025D9A8  88 1C 00 DD */	lbz r0, 0xdd(r28)
/* 802943EC 0025D9AC  7C 00 07 75 */	extsb. r0, r0
/* 802943F0 0025D9B0  40 82 00 10 */	bne .L_80294400
/* 802943F4 0025D9B4  38 60 00 01 */	li r3, 0x1
/* 802943F8 0025D9B8  38 80 00 01 */	li r4, 0x1
/* 802943FC 0025D9BC  4B EA 07 55 */	bl func_80134B50
.L_80294400:
/* 80294400 0025D9C0  38 60 00 00 */	li r3, 0x0
/* 80294404 0025D9C4  38 00 00 01 */	li r0, 0x1
/* 80294408 0025D9C8  98 7C 00 67 */	stb r3, 0x67(r28)
/* 8029440C 0025D9CC  98 1C 00 64 */	stb r0, 0x64(r28)
.L_80294410:
/* 80294410 0025D9D0  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294414 0025D9D4  4B F9 73 35 */	bl func_8022B748
/* 80294418 0025D9D8  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 8029441C 0025D9DC  4B F3 DC 11 */	bl func_801D202C
.L_80294420:
/* 80294420 0025D9E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80294424 0025D9E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80294428 0025D9E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8029442C 0025D9EC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80294430 0025D9F0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80294434 0025D9F4  7C 08 03 A6 */	mtlr r0
/* 80294438 0025D9F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8029443C 0025D9FC  4E 80 00 20 */	blr
.endfn func_80294274

.fn func_80294440, global
/* 80294440 0025DA00  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80294444 0025DA04  7C 08 02 A6 */	mflr r0
/* 80294448 0025DA08  90 01 00 74 */	stw r0, 0x74(r1)
/* 8029444C 0025DA0C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80294450 0025DA10  7C 7F 1B 78 */	mr r31, r3
/* 80294454 0025DA14  4B DA C0 95 */	bl func_800404E8
/* 80294458 0025DA18  4B DA E2 99 */	bl func_800426F0
/* 8029445C 0025DA1C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80294460 0025DA20  40 82 00 64 */	bne .L_802944C4
/* 80294464 0025DA24  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80294468 0025DA28  54 00 02 95 */	rlwinm. r0, r0, 0, 10, 10
/* 8029446C 0025DA2C  41 82 00 08 */	beq .L_80294474
/* 80294470 0025DA30  48 00 00 54 */	b .L_802944C4
.L_80294474:
/* 80294474 0025DA34  4B EA 79 DD */	bl func_8013BE50
/* 80294478 0025DA38  2C 03 00 00 */	cmpwi r3, 0x0
/* 8029447C 0025DA3C  41 82 00 48 */	beq .L_802944C4
/* 80294480 0025DA40  38 60 00 00 */	li r3, 0x0
/* 80294484 0025DA44  38 80 00 00 */	li r4, 0x0
/* 80294488 0025DA48  38 A0 00 00 */	li r5, 0x0
/* 8029448C 0025DA4C  48 08 9D B5 */	bl GXSetZMode
/* 80294490 0025DA50  38 61 00 08 */	addi r3, r1, 0x8
/* 80294494 0025DA54  48 17 41 D5 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 80294498 0025DA58  38 61 00 08 */	addi r3, r1, 0x8
/* 8029449C 0025DA5C  4B EA 2D B5 */	bl func_80137250
/* 802944A0 0025DA60  38 7F 00 88 */	addi r3, r31, 0x88
/* 802944A4 0025DA64  38 81 00 08 */	addi r4, r1, 0x8
/* 802944A8 0025DA68  4B F9 73 21 */	bl func_8022B7C8
/* 802944AC 0025DA6C  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802944B0 0025DA70  38 81 00 08 */	addi r4, r1, 0x8
/* 802944B4 0025DA74  4B F3 DB FD */	bl func_801D20B0
/* 802944B8 0025DA78  38 61 00 08 */	addi r3, r1, 0x8
/* 802944BC 0025DA7C  38 80 FF FF */	li r4, -0x1
/* 802944C0 0025DA80  48 17 42 1D */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_802944C4:
/* 802944C4 0025DA84  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802944C8 0025DA88  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802944CC 0025DA8C  7C 08 03 A6 */	mtlr r0
/* 802944D0 0025DA90  38 21 00 70 */	addi r1, r1, 0x70
/* 802944D4 0025DA94  4E 80 00 20 */	blr
.endfn func_80294440

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8

.global cf_CChainCombo_typestr
cf_CChainCombo_typestr:
	.4byte 0x63663A3A
	.4byte 0x43436861
	.4byte 0x696E436F
	.4byte 0x6D626F00

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8
.global lbl_8053C140
lbl_8053C140:
	.4byte 0x00000708
	.4byte 0x000004B0
	.4byte 0x00000258

.global __vt__cf_CChainCombo
__vt__cf_CChainCombo:
	.4byte __RTTI__cf_CChainCombo
	.4byte 0x00000000
	.4byte func_800D8C1C

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8

.global __RTTI__cf_CChainCombo
__RTTI__cf_CChainCombo:
	.4byte cf_CChainCombo_typestr
	.4byte 0x00000000

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_8066B440
lbl_8066B440:
	.4byte 0x43300000
	.4byte 0x80000000

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80019930", local
.hidden "@etb_80019930"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019930"

.obj "@etb_80019938", local
.hidden "@etb_80019938"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80019938"

.obj "@etb_80019940", local
.hidden "@etb_80019940"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80019940"

.obj "@etb_80019948", local
.hidden "@etb_80019948"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80019948"

.obj "@etb_80019950", local
.hidden "@etb_80019950"
	.4byte 0x10080000
	.4byte 0x0000003C
	.4byte 0x00000020
	.4byte 0x00000048
	.4byte 0x0000002C
	.4byte 0x00000060
	.4byte 0x00000044
	.4byte 0x00000000
	.4byte 0x8780001E
	.4byte 0x000000C4
	.4byte func_801D2A38
	.4byte 0x0780001E
	.4byte 0x000000C4
	.4byte func_801D2A38
	.4byte 0x8780001E
	.4byte 0x00000088
	.4byte func_8022B6A0
	.4byte 0x0780001E
	.4byte 0x000000C4
	.4byte func_801D2A38
	.4byte 0x0780001E
	.4byte 0x00000088
	.4byte func_8022B6A0
	.4byte 0x0780001E
	.4byte 0x00000078
	.4byte func_8045F580
	.4byte 0x0680001E
	.4byte 0x00000070
	.4byte func_8004031C
	.4byte 0x8680001E
	.4byte 0x0000006C
	.4byte __dt__IWorkEvent
.endobj "@etb_80019950"

.obj "@etb_800199D0", local
.hidden "@etb_800199D0"
	.4byte 0x08080000
	.4byte 0x00000074
	.4byte 0x00460010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte func_8045F8C8
.endobj "@etb_800199D0"

.obj "@etb_800199E8", local
.hidden "@etb_800199E8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800199E8"

.obj "@etb_800199F0", local
.hidden "@etb_800199F0"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_800199F0"

.obj "@etb_800199F8", local
.hidden "@etb_800199F8"
	.4byte 0x08080000
	.4byte 0x00000060
	.4byte 0x00060010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
.endobj "@etb_800199F8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80031C64", local
.hidden "@eti_80031C64"
	.4byte func_80293D90
	.4byte 0x0000005C
	.4byte "@etb_80019930"
.endobj "@eti_80031C64"

.obj "@eti_80031C70", local
.hidden "@eti_80031C70"
	.4byte func_80293DEC
	.4byte 0x00000038
	.4byte "@etb_80019938"
.endobj "@eti_80031C70"

.obj "@eti_80031C7C", local
.hidden "@eti_80031C7C"
	.4byte func_80293E24
	.4byte 0x000000C8
	.4byte "@etb_80019940"
.endobj "@eti_80031C7C"

.obj "@eti_80031C88", local
.hidden "@eti_80031C88"
	.4byte func_80293EEC
	.4byte 0x000000CC
	.4byte "@etb_80019948"
.endobj "@eti_80031C88"

.obj "@eti_80031C94", local
.hidden "@eti_80031C94"
	.4byte func_80293FB8
	.4byte 0x0000008C
	.4byte "@etb_80019950"
.endobj "@eti_80031C94"

.obj "@eti_80031CA0", local
.hidden "@eti_80031CA0"
	.4byte func_80294044
	.4byte 0x000001AC
	.4byte "@etb_800199D0"
.endobj "@eti_80031CA0"

.obj "@eti_80031CAC", local
.hidden "@eti_80031CAC"
	.4byte func_802941F0
	.4byte 0x00000084
	.4byte "@etb_800199E8"
.endobj "@eti_80031CAC"

.obj "@eti_80031CB8", local
.hidden "@eti_80031CB8"
	.4byte func_80294274
	.4byte 0x000001CC
	.4byte "@etb_800199F0"
.endobj "@eti_80031CB8"

.obj "@eti_80031CC4", local
.hidden "@eti_80031CC4"
	.4byte func_80294440
	.4byte 0x00000098
	.4byte "@etb_800199F8"
.endobj "@eti_80031CC4"
