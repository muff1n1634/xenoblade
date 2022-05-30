.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global func_80315D30
func_80315D30:
/* 80315D30 002DF2F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80315D34 002DF2F4  7C 08 02 A6 */	mflr r0
/* 80315D38 002DF2F8  2C 07 00 01 */	cmpwi r7, 1
/* 80315D3C 002DF2FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80315D40 002DF300  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80315D44 002DF304  7C 7F 1B 78 */	mr r31, r3
/* 80315D48 002DF308  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80315D4C 002DF30C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80315D50 002DF310  7C 9D 23 78 */	mr r29, r4
/* 80315D54 002DF314  90 A1 00 08 */	stw r5, 8(r1)
/* 80315D58 002DF318  41 82 00 10 */	beq lbl_80315D68
/* 80315D5C 002DF31C  2C 07 00 02 */	cmpwi r7, 2
/* 80315D60 002DF320  41 82 00 18 */	beq lbl_80315D78
/* 80315D64 002DF324  48 00 00 28 */	b lbl_80315D8C
lbl_80315D68:
/* 80315D68 002DF328  88 06 00 00 */	lbz r0, 0(r6)
/* 80315D6C 002DF32C  54 00 C0 0E */	slwi r0, r0, 0x18
/* 80315D70 002DF330  90 01 00 0C */	stw r0, 0xc(r1)
/* 80315D74 002DF334  48 00 00 34 */	b lbl_80315DA8
lbl_80315D78:
/* 80315D78 002DF338  A0 66 00 00 */	lhz r3, 0(r6)
/* 80315D7C 002DF33C  54 60 42 1E */	rlwinm r0, r3, 8, 8, 0xf
/* 80315D80 002DF340  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 80315D84 002DF344  90 01 00 0C */	stw r0, 0xc(r1)
/* 80315D88 002DF348  48 00 00 20 */	b lbl_80315DA8
lbl_80315D8C:
/* 80315D8C 002DF34C  80 86 00 00 */	lwz r4, 0(r6)
/* 80315D90 002DF350  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 80315D94 002DF354  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 80315D98 002DF358  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 80315D9C 002DF35C  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 80315DA0 002DF360  7C 60 03 78 */	or r0, r3, r0
/* 80315DA4 002DF364  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80315DA8:
/* 80315DA8 002DF368  7F E3 FB 78 */	mr r3, r31
/* 80315DAC 002DF36C  7F A4 EB 78 */	mr r4, r29
/* 80315DB0 002DF370  38 A0 00 00 */	li r5, 0
/* 80315DB4 002DF374  4B FF F6 7D */	bl EXILock
/* 80315DB8 002DF378  7C 60 00 34 */	cntlzw r0, r3
/* 80315DBC 002DF37C  54 1E D9 7F */	rlwinm. r30, r0, 0x1b, 5, 0x1f
/* 80315DC0 002DF380  41 82 00 0C */	beq lbl_80315DCC
/* 80315DC4 002DF384  38 60 00 00 */	li r3, 0
/* 80315DC8 002DF388  48 00 00 D4 */	b lbl_80315E9C
lbl_80315DCC:
/* 80315DCC 002DF38C  7F E3 FB 78 */	mr r3, r31
/* 80315DD0 002DF390  7F A4 EB 78 */	mr r4, r29
/* 80315DD4 002DF394  38 A0 00 04 */	li r5, 4
/* 80315DD8 002DF398  4B FF EE A9 */	bl EXISelect
/* 80315DDC 002DF39C  7C 60 00 34 */	cntlzw r0, r3
/* 80315DE0 002DF3A0  54 00 D9 7E */	srwi r0, r0, 5
/* 80315DE4 002DF3A4  7F DE 03 79 */	or. r30, r30, r0
/* 80315DE8 002DF3A8  41 82 00 14 */	beq lbl_80315DFC
/* 80315DEC 002DF3AC  7F E3 FB 78 */	mr r3, r31
/* 80315DF0 002DF3B0  4B FF F7 41 */	bl EXIUnlock
/* 80315DF4 002DF3B4  38 60 00 00 */	li r3, 0
/* 80315DF8 002DF3B8  48 00 00 A4 */	b lbl_80315E9C
lbl_80315DFC:
/* 80315DFC 002DF3BC  7F E3 FB 78 */	mr r3, r31
/* 80315E00 002DF3C0  38 81 00 08 */	addi r4, r1, 8
/* 80315E04 002DF3C4  38 A0 00 04 */	li r5, 4
/* 80315E08 002DF3C8  38 C0 00 01 */	li r6, 1
/* 80315E0C 002DF3CC  38 E0 00 00 */	li r7, 0
/* 80315E10 002DF3D0  4B FF E3 D1 */	bl EXIImm
/* 80315E14 002DF3D4  7C 60 00 34 */	cntlzw r0, r3
/* 80315E18 002DF3D8  7F E3 FB 78 */	mr r3, r31
/* 80315E1C 002DF3DC  54 00 D9 7E */	srwi r0, r0, 5
/* 80315E20 002DF3E0  7F DE 03 78 */	or r30, r30, r0
/* 80315E24 002DF3E4  4B FF E7 ED */	bl EXISync
/* 80315E28 002DF3E8  7C 60 00 34 */	cntlzw r0, r3
/* 80315E2C 002DF3EC  7F E3 FB 78 */	mr r3, r31
/* 80315E30 002DF3F0  54 00 D9 7E */	srwi r0, r0, 5
/* 80315E34 002DF3F4  38 81 00 0C */	addi r4, r1, 0xc
/* 80315E38 002DF3F8  7F DE 03 78 */	or r30, r30, r0
/* 80315E3C 002DF3FC  38 A0 00 04 */	li r5, 4
/* 80315E40 002DF400  38 C0 00 01 */	li r6, 1
/* 80315E44 002DF404  38 E0 00 00 */	li r7, 0
/* 80315E48 002DF408  4B FF E3 99 */	bl EXIImm
/* 80315E4C 002DF40C  7C 60 00 34 */	cntlzw r0, r3
/* 80315E50 002DF410  7F E3 FB 78 */	mr r3, r31
/* 80315E54 002DF414  54 00 D9 7E */	srwi r0, r0, 5
/* 80315E58 002DF418  7F DE 03 78 */	or r30, r30, r0
/* 80315E5C 002DF41C  4B FF E7 B5 */	bl EXISync
/* 80315E60 002DF420  7C 60 00 34 */	cntlzw r0, r3
/* 80315E64 002DF424  7F E3 FB 78 */	mr r3, r31
/* 80315E68 002DF428  54 00 D9 7E */	srwi r0, r0, 5
/* 80315E6C 002DF42C  7F DE 03 78 */	or r30, r30, r0
/* 80315E70 002DF430  4B FF EF 41 */	bl EXIDeselect
/* 80315E74 002DF434  7C 60 00 34 */	cntlzw r0, r3
/* 80315E78 002DF438  7F E3 FB 78 */	mr r3, r31
/* 80315E7C 002DF43C  54 00 D9 7E */	srwi r0, r0, 5
/* 80315E80 002DF440  7F DE 03 78 */	or r30, r30, r0
/* 80315E84 002DF444  4B FF F6 AD */	bl EXIUnlock
/* 80315E88 002DF448  7C 60 00 34 */	cntlzw r0, r3
/* 80315E8C 002DF44C  54 00 D9 7E */	srwi r0, r0, 5
/* 80315E90 002DF450  7F DE 03 78 */	or r30, r30, r0
/* 80315E94 002DF454  7F C0 00 34 */	cntlzw r0, r30
/* 80315E98 002DF458  54 03 D9 7E */	srwi r3, r0, 5
lbl_80315E9C:
/* 80315E9C 002DF45C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80315EA0 002DF460  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80315EA4 002DF464  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80315EA8 002DF468  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80315EAC 002DF46C  7C 08 03 A6 */	mtlr r0
/* 80315EB0 002DF470  38 21 00 20 */	addi r1, r1, 0x20
/* 80315EB4 002DF474  4E 80 00 20 */	blr 
.balign 16, 0