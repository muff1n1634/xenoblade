.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802A4E48, global
/* 802A4E48 0026E408  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802A4E4C 0026E40C  7C 08 02 A6 */	mflr r0
/* 802A4E50 0026E410  7C A6 2B 78 */	mr r6, r5
/* 802A4E54 0026E414  90 01 00 74 */	stw r0, 0x74(r1)
/* 802A4E58 0026E418  7C 80 23 78 */	mr r0, r4
/* 802A4E5C 0026E41C  7C 64 1B 78 */	mr r4, r3
/* 802A4E60 0026E420  BF 41 00 58 */	stmw r26, 0x58(r1)
/* 802A4E64 0026E424  7C 3F 0B 78 */	mr r31, r1
/* 802A4E68 0026E428  3B 7F 00 2C */	addi r27, r31, 0x2c
/* 802A4E6C 0026E42C  3B A0 00 00 */	li r29, 0x0
/* 802A4E70 0026E430  3B 9F 00 20 */	addi r28, r31, 0x20
/* 802A4E74 0026E434  93 61 00 14 */	stw r27, 0x14(r1)
/* 802A4E78 0026E438  7C 05 03 78 */	mr r5, r0
/* 802A4E7C 0026E43C  38 7F 00 08 */	addi r3, r31, 0x8
/* 802A4E80 0026E440  93 81 00 18 */	stw r28, 0x18(r1)
/* 802A4E84 0026E444  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802A4E88 0026E448  93 61 00 08 */	stw r27, 0x8(r1)
/* 802A4E8C 0026E44C  93 81 00 0C */	stw r28, 0xc(r1)
/* 802A4E90 0026E450  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802A4E94 0026E454  48 00 02 E1 */	bl func_802A5174
/* 802A4E98 0026E458  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A4E9C 0026E45C  7C 7E 1B 78 */	mr r30, r3
/* 802A4EA0 0026E460  41 81 00 0C */	bgt .L_802A4EAC
/* 802A4EA4 0026E464  38 60 00 00 */	li r3, 0x0
/* 802A4EA8 0026E468  48 00 00 E0 */	b .L_802A4F88
.L_802A4EAC:
/* 802A4EAC 0026E46C  38 60 01 04 */	li r3, 0x104
/* 802A4EB0 0026E470  38 80 00 01 */	li r4, 0x1
/* 802A4EB4 0026E474  4B FF E4 59 */	bl func_802A330C
/* 802A4EB8 0026E478  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A4EBC 0026E47C  40 82 00 0C */	bne .L_802A4EC8
/* 802A4EC0 0026E480  38 60 00 00 */	li r3, 0x0
/* 802A4EC4 0026E484  48 00 00 C4 */	b .L_802A4F88
.L_802A4EC8:
/* 802A4EC8 0026E488  2C 1E 00 01 */	cmpwi r30, 0x1
/* 802A4ECC 0026E48C  40 82 00 28 */	bne .L_802A4EF4
/* 802A4ED0 0026E490  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802A4ED4 0026E494  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A4ED8 0026E498  41 82 00 08 */	beq .L_802A4EE0
/* 802A4EDC 0026E49C  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A4EE0:
/* 802A4EE0 0026E4A0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802A4EE4 0026E4A4  38 A0 01 04 */	li r5, 0x104
/* 802A4EE8 0026E4A8  4B FF EE 6D */	bl func_802A3D54
/* 802A4EEC 0026E4AC  38 60 00 00 */	li r3, 0x0
/* 802A4EF0 0026E4B0  48 00 00 98 */	b .L_802A4F88
.L_802A4EF4:
/* 802A4EF4 0026E4B4  38 60 00 40 */	li r3, 0x40
/* 802A4EF8 0026E4B8  4B FF E5 ED */	bl func_802A34E4
/* 802A4EFC 0026E4BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A4F00 0026E4C0  7C 7A 1B 78 */	mr r26, r3
/* 802A4F04 0026E4C4  40 82 00 0C */	bne .L_802A4F10
/* 802A4F08 0026E4C8  38 60 00 00 */	li r3, 0x0
/* 802A4F0C 0026E4CC  48 00 00 7C */	b .L_802A4F88
.L_802A4F10:
/* 802A4F10 0026E4D0  41 82 00 54 */	beq .L_802A4F64
/* 802A4F14 0026E4D4  90 3F 00 4C */	stw r1, 0x4c(r31)
/* 802A4F18 0026E4D8  4B FF EB 69 */	bl func_802A3A80
/* 802A4F1C 0026E4DC  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_BUF@ha
/* 802A4F20 0026E4E0  7F 64 DB 78 */	mr r4, r27
/* 802A4F24 0026E4E4  38 63 D1 94 */	addi r3, r3, __vt__cf_CVS_THREAD_BUF@l
/* 802A4F28 0026E4E8  90 7A 00 1C */	stw r3, 0x1c(r26)
/* 802A4F2C 0026E4EC  38 7A 00 20 */	addi r3, r26, 0x20
/* 802A4F30 0026E4F0  38 A0 00 0C */	li r5, 0xc
/* 802A4F34 0026E4F4  93 BA 00 3C */	stw r29, 0x3c(r26)
/* 802A4F38 0026E4F8  4B D5 F0 C9 */	bl memcpy
/* 802A4F3C 0026E4FC  7F 84 E3 78 */	mr r4, r28
/* 802A4F40 0026E500  38 7A 00 2C */	addi r3, r26, 0x2c
/* 802A4F44 0026E504  38 A0 00 0C */	li r5, 0xc
/* 802A4F48 0026E508  4B D5 F0 B9 */	bl memcpy
/* 802A4F4C 0026E50C  93 DA 00 38 */	stw r30, 0x38(r26)
/* 802A4F50 0026E510  48 00 00 14 */	b .L_802A4F64
/* 802A4F54 0026E514  38 60 00 00 */	li r3, 0x0
/* 802A4F58 0026E518  38 80 00 00 */	li r4, 0x0
/* 802A4F5C 0026E51C  38 A0 00 00 */	li r5, 0x0
/* 802A4F60 0026E520  48 01 6C 5D */	bl __throw
.L_802A4F64:
/* 802A4F64 0026E524  3C A0 80 54 */	lis r5, lbl_8053D170@ha
/* 802A4F68 0026E528  7F 43 D3 78 */	mr r3, r26
/* 802A4F6C 0026E52C  38 A5 D1 70 */	addi r5, r5, lbl_8053D170@l
/* 802A4F70 0026E530  80 05 00 04 */	lwz r0, 0x4(r5)
/* 802A4F74 0026E534  80 85 00 00 */	lwz r4, 0x0(r5)
/* 802A4F78 0026E538  90 9A 00 00 */	stw r4, 0x0(r26)
/* 802A4F7C 0026E53C  90 1A 00 04 */	stw r0, 0x4(r26)
/* 802A4F80 0026E540  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802A4F84 0026E544  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A4F88:
/* 802A4F88 0026E548  7F EA FB 78 */	mr r10, r31
/* 802A4F8C 0026E54C  BB 4A 00 58 */	lmw r26, 0x58(r10)
/* 802A4F90 0026E550  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802A4F94 0026E554  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802A4F98 0026E558  7D 41 53 78 */	mr r1, r10
/* 802A4F9C 0026E55C  7C 08 03 A6 */	mtlr r0
/* 802A4FA0 0026E560  4E 80 00 20 */	blr
.endfn func_802A4E48

.fn func_802A4FA4, global
/* 802A4FA4 0026E564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4FA8 0026E568  7C 08 02 A6 */	mflr r0
/* 802A4FAC 0026E56C  3C E0 80 54 */	lis r7, lbl_8053D17C@ha
/* 802A4FB0 0026E570  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4FB4 0026E574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4FB8 0026E578  7C 7F 1B 78 */	mr r31, r3
/* 802A4FBC 0026E57C  84 C7 D1 7C */	lwzu r6, lbl_8053D17C@l(r7)
/* 802A4FC0 0026E580  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 802A4FC4 0026E584  80 A7 00 04 */	lwz r5, 0x4(r7)
/* 802A4FC8 0026E588  54 00 10 3A */	slwi r0, r0, 2
/* 802A4FCC 0026E58C  90 A3 00 04 */	stw r5, 0x4(r3)
/* 802A4FD0 0026E590  7C 83 02 14 */	add r4, r3, r0
/* 802A4FD4 0026E594  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802A4FD8 0026E598  80 07 00 08 */	lwz r0, 0x8(r7)
/* 802A4FDC 0026E59C  90 03 00 08 */	stw r0, 0x8(r3)
/* 802A4FE0 0026E5A0  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802A4FE4 0026E5A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A4FE8 0026E5A8  41 82 00 50 */	beq .L_802A5038
/* 802A4FEC 0026E5AC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A4FF0 0026E5B0  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A4FF4 0026E5B4  7D 89 03 A6 */	mtctr r12
/* 802A4FF8 0026E5B8  4E 80 04 21 */	bctrl
/* 802A4FFC 0026E5BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A5000 0026E5C0  40 82 00 38 */	bne .L_802A5038
/* 802A5004 0026E5C4  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 802A5008 0026E5C8  54 00 10 3A */	slwi r0, r0, 2
/* 802A500C 0026E5CC  7C 7F 02 14 */	add r3, r31, r0
/* 802A5010 0026E5D0  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802A5014 0026E5D4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A5018 0026E5D8  41 82 00 08 */	beq .L_802A5020
/* 802A501C 0026E5DC  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A5020:
/* 802A5020 0026E5E0  7C BF 02 14 */	add r5, r31, r0
/* 802A5024 0026E5E4  7F E3 FB 78 */	mr r3, r31
/* 802A5028 0026E5E8  80 A5 00 2C */	lwz r5, 0x2c(r5)
/* 802A502C 0026E5EC  4B FF EC 19 */	bl func_802A3C44
/* 802A5030 0026E5F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A5034 0026E5F4  40 82 00 18 */	bne .L_802A504C
.L_802A5038:
/* 802A5038 0026E5F8  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A503C 0026E5FC  7F E3 FB 78 */	mr r3, r31
/* 802A5040 0026E600  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A5044 0026E604  7D 89 03 A6 */	mtctr r12
/* 802A5048 0026E608  4E 80 04 21 */	bctrl
.L_802A504C:
/* 802A504C 0026E60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5050 0026E610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5054 0026E614  7C 08 03 A6 */	mtlr r0
/* 802A5058 0026E618  38 21 00 10 */	addi r1, r1, 0x10
/* 802A505C 0026E61C  4E 80 00 20 */	blr
.endfn func_802A4FA4

.fn func_802A5060, global
/* 802A5060 0026E620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5064 0026E624  7C 08 02 A6 */	mflr r0
/* 802A5068 0026E628  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A506C 0026E62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5070 0026E630  7C 7F 1B 78 */	mr r31, r3
/* 802A5074 0026E634  4B FF EE 15 */	bl func_802A3E88
/* 802A5078 0026E638  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A507C 0026E63C  40 82 00 50 */	bne .L_802A50CC
/* 802A5080 0026E640  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 802A5084 0026E644  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 802A5088 0026E648  38 63 00 01 */	addi r3, r3, 0x1
/* 802A508C 0026E64C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 802A5090 0026E650  7C 03 00 00 */	cmpw r3, r0
/* 802A5094 0026E654  40 80 00 24 */	bge .L_802A50B8
/* 802A5098 0026E658  3C 80 80 54 */	lis r4, lbl_8053D188@ha
/* 802A509C 0026E65C  84 64 D1 88 */	lwzu r3, lbl_8053D188@l(r4)
/* 802A50A0 0026E660  80 04 00 04 */	lwz r0, 0x4(r4)
/* 802A50A4 0026E664  90 1F 00 04 */	stw r0, 0x4(r31)
/* 802A50A8 0026E668  90 7F 00 00 */	stw r3, 0x0(r31)
/* 802A50AC 0026E66C  80 04 00 08 */	lwz r0, 0x8(r4)
/* 802A50B0 0026E670  90 1F 00 08 */	stw r0, 0x8(r31)
/* 802A50B4 0026E674  48 00 00 18 */	b .L_802A50CC
.L_802A50B8:
/* 802A50B8 0026E678  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A50BC 0026E67C  7F E3 FB 78 */	mr r3, r31
/* 802A50C0 0026E680  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A50C4 0026E684  7D 89 03 A6 */	mtctr r12
/* 802A50C8 0026E688  4E 80 04 21 */	bctrl
.L_802A50CC:
/* 802A50CC 0026E68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A50D0 0026E690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A50D4 0026E694  7C 08 03 A6 */	mtlr r0
/* 802A50D8 0026E698  38 21 00 10 */	addi r1, r1, 0x10
/* 802A50DC 0026E69C  4E 80 00 20 */	blr
.endfn func_802A5060

.fn func_802A50E0, global
/* 802A50E0 0026E6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A50E4 0026E6A4  7C 08 02 A6 */	mflr r0
/* 802A50E8 0026E6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A50EC 0026E6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A50F0 0026E6B0  7C 9F 23 78 */	mr r31, r4
/* 802A50F4 0026E6B4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A50F8 0026E6B8  7C 7E 1B 78 */	mr r30, r3
/* 802A50FC 0026E6BC  4B FF EA F1 */	bl func_802A3BEC
/* 802A5100 0026E6C0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A5104 0026E6C4  38 00 00 00 */	li r0, 0x0
/* 802A5108 0026E6C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A510C 0026E6CC  41 82 00 08 */	beq .L_802A5114
/* 802A5110 0026E6D0  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A5114:
/* 802A5114 0026E6D4  7C 03 F8 40 */	cmplw r3, r31
/* 802A5118 0026E6D8  40 82 00 08 */	bne .L_802A5120
/* 802A511C 0026E6DC  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A5120:
/* 802A5120 0026E6E0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A5124 0026E6E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A5128 0026E6E8  41 82 00 08 */	beq .L_802A5130
/* 802A512C 0026E6EC  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A5130:
/* 802A5130 0026E6F0  7C 03 F8 40 */	cmplw r3, r31
/* 802A5134 0026E6F4  40 82 00 08 */	bne .L_802A513C
/* 802A5138 0026E6F8  90 1E 00 24 */	stw r0, 0x24(r30)
.L_802A513C:
/* 802A513C 0026E6FC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802A5140 0026E700  38 9E 00 08 */	addi r4, r30, 0x8
/* 802A5144 0026E704  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A5148 0026E708  41 82 00 08 */	beq .L_802A5150
/* 802A514C 0026E70C  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A5150:
/* 802A5150 0026E710  7C 03 F8 40 */	cmplw r3, r31
/* 802A5154 0026E714  40 82 00 08 */	bne .L_802A515C
/* 802A5158 0026E718  90 04 00 20 */	stw r0, 0x20(r4)
.L_802A515C:
/* 802A515C 0026E71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5160 0026E720  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5164 0026E724  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A5168 0026E728  7C 08 03 A6 */	mtlr r0
/* 802A516C 0026E72C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5170 0026E730  4E 80 00 20 */	blr
.endfn func_802A50E0

.fn func_802A5174, global
/* 802A5174 0026E734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A5178 0026E738  7C 08 02 A6 */	mflr r0
/* 802A517C 0026E73C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A5180 0026E740  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 802A5184 0026E744  7C 7A 1B 78 */	mr r26, r3
/* 802A5188 0026E748  7C 9B 23 78 */	mr r27, r4
/* 802A518C 0026E74C  7C BC 2B 78 */	mr r28, r5
/* 802A5190 0026E750  7C DD 33 78 */	mr r29, r6
/* 802A5194 0026E754  80 04 3F 00 */	lwz r0, 0x3f00(r4)
/* 802A5198 0026E758  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 802A519C 0026E75C  40 82 00 0C */	bne .L_802A51A8
/* 802A51A0 0026E760  38 60 00 00 */	li r3, 0x0
/* 802A51A4 0026E764  48 00 06 70 */	b .L_802A5814
.L_802A51A8:
/* 802A51A8 0026E768  2C 05 00 00 */	cmpwi r5, 0x0
/* 802A51AC 0026E76C  41 82 00 10 */	beq .L_802A51BC
/* 802A51B0 0026E770  80 05 3F 00 */	lwz r0, 0x3f00(r5)
/* 802A51B4 0026E774  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 802A51B8 0026E778  40 82 00 0C */	bne .L_802A51C4
.L_802A51BC:
/* 802A51BC 0026E77C  38 60 00 00 */	li r3, 0x0
/* 802A51C0 0026E780  48 00 06 54 */	b .L_802A5814
.L_802A51C4:
/* 802A51C4 0026E784  81 9B 00 00 */	lwz r12, 0x0(r27)
/* 802A51C8 0026E788  7F 63 DB 78 */	mr r3, r27
/* 802A51CC 0026E78C  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A51D0 0026E790  7D 89 03 A6 */	mtctr r12
/* 802A51D4 0026E794  4E 80 04 21 */	bctrl
/* 802A51D8 0026E798  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A51DC 0026E79C  41 82 00 0C */	beq .L_802A51E8
/* 802A51E0 0026E7A0  38 60 00 00 */	li r3, 0x0
/* 802A51E4 0026E7A4  48 00 06 30 */	b .L_802A5814
.L_802A51E8:
/* 802A51E8 0026E7A8  7C 1B E0 40 */	cmplw r27, r28
/* 802A51EC 0026E7AC  40 82 00 0C */	bne .L_802A51F8
/* 802A51F0 0026E7B0  38 60 00 00 */	li r3, 0x0
/* 802A51F4 0026E7B4  48 00 06 20 */	b .L_802A5814
.L_802A51F8:
/* 802A51F8 0026E7B8  7F 83 E3 78 */	mr r3, r28
/* 802A51FC 0026E7BC  48 00 25 ED */	bl func_802A77E8
/* 802A5200 0026E7C0  7C 7E 1B 78 */	mr r30, r3
/* 802A5204 0026E7C4  7F 63 DB 78 */	mr r3, r27
/* 802A5208 0026E7C8  48 00 25 E1 */	bl func_802A77E8
/* 802A520C 0026E7CC  2C 1E 00 05 */	cmpwi r30, 0x5
/* 802A5210 0026E7D0  7C 7F 1B 78 */	mr r31, r3
/* 802A5214 0026E7D4  40 82 00 C8 */	bne .L_802A52DC
/* 802A5218 0026E7D8  2C 03 00 02 */	cmpwi r3, 0x2
/* 802A521C 0026E7DC  40 82 00 C0 */	bne .L_802A52DC
/* 802A5220 0026E7E0  38 60 00 64 */	li r3, 0x64
/* 802A5224 0026E7E4  48 19 0C D9 */	bl mtRand__2mlFi
/* 802A5228 0026E7E8  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A522C 0026E7EC  40 80 00 B0 */	bge .L_802A52DC
/* 802A5230 0026E7F0  2C 1B 00 00 */	cmpwi r27, 0x0
/* 802A5234 0026E7F4  40 82 00 0C */	bne .L_802A5240
/* 802A5238 0026E7F8  38 A0 00 00 */	li r5, 0x0
/* 802A523C 0026E7FC  48 00 00 48 */	b .L_802A5284
.L_802A5240:
/* 802A5240 0026E800  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5244 0026E804  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A5248 0026E808  41 80 00 0C */	blt .L_802A5254
/* 802A524C 0026E80C  38 A0 00 00 */	li r5, 0x0
/* 802A5250 0026E810  48 00 00 34 */	b .L_802A5284
.L_802A5254:
/* 802A5254 0026E814  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A5258 0026E818  54 00 10 3A */	slwi r0, r0, 2
/* 802A525C 0026E81C  38 80 08 FF */	li r4, 0x8ff
/* 802A5260 0026E820  38 A0 00 01 */	li r5, 0x1
/* 802A5264 0026E824  7F 63 01 2E */	stwx r27, r3, r0
/* 802A5268 0026E828  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A526C 0026E82C  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A5270 0026E830  54 00 10 3A */	slwi r0, r0, 2
/* 802A5274 0026E834  7C 83 01 2E */	stwx r4, r3, r0
/* 802A5278 0026E838  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A527C 0026E83C  38 03 00 01 */	addi r0, r3, 0x1
/* 802A5280 0026E840  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A5284:
/* 802A5284 0026E844  2C 05 00 00 */	cmpwi r5, 0x0
/* 802A5288 0026E848  41 82 00 54 */	beq .L_802A52DC
/* 802A528C 0026E84C  38 60 00 64 */	li r3, 0x64
/* 802A5290 0026E850  48 19 0C 6D */	bl mtRand__2mlFi
/* 802A5294 0026E854  2C 03 00 32 */	cmpwi r3, 0x32
/* 802A5298 0026E858  40 80 00 44 */	bge .L_802A52DC
/* 802A529C 0026E85C  2C 1C 00 00 */	cmpwi r28, 0x0
/* 802A52A0 0026E860  41 82 00 3C */	beq .L_802A52DC
/* 802A52A4 0026E864  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A52A8 0026E868  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A52AC 0026E86C  40 80 00 30 */	bge .L_802A52DC
/* 802A52B0 0026E870  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A52B4 0026E874  54 00 10 3A */	slwi r0, r0, 2
/* 802A52B8 0026E878  38 80 08 FD */	li r4, 0x8fd
/* 802A52BC 0026E87C  7F 83 01 2E */	stwx r28, r3, r0
/* 802A52C0 0026E880  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A52C4 0026E884  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A52C8 0026E888  54 00 10 3A */	slwi r0, r0, 2
/* 802A52CC 0026E88C  7C 83 01 2E */	stwx r4, r3, r0
/* 802A52D0 0026E890  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A52D4 0026E894  38 03 00 01 */	addi r0, r3, 0x1
/* 802A52D8 0026E898  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A52DC:
/* 802A52DC 0026E89C  2C 1E 00 01 */	cmpwi r30, 0x1
/* 802A52E0 0026E8A0  40 82 00 5C */	bne .L_802A533C
/* 802A52E4 0026E8A4  2C 1F 00 02 */	cmpwi r31, 0x2
/* 802A52E8 0026E8A8  40 82 00 54 */	bne .L_802A533C
/* 802A52EC 0026E8AC  38 60 00 64 */	li r3, 0x64
/* 802A52F0 0026E8B0  48 19 0C 0D */	bl mtRand__2mlFi
/* 802A52F4 0026E8B4  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A52F8 0026E8B8  40 80 00 44 */	bge .L_802A533C
/* 802A52FC 0026E8BC  2C 1B 00 00 */	cmpwi r27, 0x0
/* 802A5300 0026E8C0  41 82 00 3C */	beq .L_802A533C
/* 802A5304 0026E8C4  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5308 0026E8C8  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A530C 0026E8CC  40 80 00 30 */	bge .L_802A533C
/* 802A5310 0026E8D0  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A5314 0026E8D4  54 00 10 3A */	slwi r0, r0, 2
/* 802A5318 0026E8D8  38 80 09 00 */	li r4, 0x900
/* 802A531C 0026E8DC  7F 63 01 2E */	stwx r27, r3, r0
/* 802A5320 0026E8E0  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5324 0026E8E4  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A5328 0026E8E8  54 00 10 3A */	slwi r0, r0, 2
/* 802A532C 0026E8EC  7C 83 01 2E */	stwx r4, r3, r0
/* 802A5330 0026E8F0  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A5334 0026E8F4  38 03 00 01 */	addi r0, r3, 0x1
/* 802A5338 0026E8F8  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A533C:
/* 802A533C 0026E8FC  2C 1E 00 04 */	cmpwi r30, 0x4
/* 802A5340 0026E900  40 82 00 C8 */	bne .L_802A5408
/* 802A5344 0026E904  2C 1F 00 02 */	cmpwi r31, 0x2
/* 802A5348 0026E908  40 82 00 C0 */	bne .L_802A5408
/* 802A534C 0026E90C  38 60 00 64 */	li r3, 0x64
/* 802A5350 0026E910  48 19 0B AD */	bl mtRand__2mlFi
/* 802A5354 0026E914  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A5358 0026E918  40 80 00 B0 */	bge .L_802A5408
/* 802A535C 0026E91C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 802A5360 0026E920  40 82 00 0C */	bne .L_802A536C
/* 802A5364 0026E924  38 A0 00 00 */	li r5, 0x0
/* 802A5368 0026E928  48 00 00 48 */	b .L_802A53B0
.L_802A536C:
/* 802A536C 0026E92C  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5370 0026E930  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A5374 0026E934  41 80 00 0C */	blt .L_802A5380
/* 802A5378 0026E938  38 A0 00 00 */	li r5, 0x0
/* 802A537C 0026E93C  48 00 00 34 */	b .L_802A53B0
.L_802A5380:
/* 802A5380 0026E940  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A5384 0026E944  54 00 10 3A */	slwi r0, r0, 2
/* 802A5388 0026E948  38 80 09 02 */	li r4, 0x902
/* 802A538C 0026E94C  38 A0 00 01 */	li r5, 0x1
/* 802A5390 0026E950  7F 63 01 2E */	stwx r27, r3, r0
/* 802A5394 0026E954  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5398 0026E958  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A539C 0026E95C  54 00 10 3A */	slwi r0, r0, 2
/* 802A53A0 0026E960  7C 83 01 2E */	stwx r4, r3, r0
/* 802A53A4 0026E964  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A53A8 0026E968  38 03 00 01 */	addi r0, r3, 0x1
/* 802A53AC 0026E96C  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A53B0:
/* 802A53B0 0026E970  2C 05 00 00 */	cmpwi r5, 0x0
/* 802A53B4 0026E974  41 82 00 54 */	beq .L_802A5408
/* 802A53B8 0026E978  38 60 00 64 */	li r3, 0x64
/* 802A53BC 0026E97C  48 19 0B 41 */	bl mtRand__2mlFi
/* 802A53C0 0026E980  2C 03 00 32 */	cmpwi r3, 0x32
/* 802A53C4 0026E984  40 80 00 44 */	bge .L_802A5408
/* 802A53C8 0026E988  2C 1C 00 00 */	cmpwi r28, 0x0
/* 802A53CC 0026E98C  41 82 00 3C */	beq .L_802A5408
/* 802A53D0 0026E990  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A53D4 0026E994  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A53D8 0026E998  40 80 00 30 */	bge .L_802A5408
/* 802A53DC 0026E99C  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A53E0 0026E9A0  54 00 10 3A */	slwi r0, r0, 2
/* 802A53E4 0026E9A4  38 80 08 FD */	li r4, 0x8fd
/* 802A53E8 0026E9A8  7F 83 01 2E */	stwx r28, r3, r0
/* 802A53EC 0026E9AC  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A53F0 0026E9B0  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A53F4 0026E9B4  54 00 10 3A */	slwi r0, r0, 2
/* 802A53F8 0026E9B8  7C 83 01 2E */	stwx r4, r3, r0
/* 802A53FC 0026E9BC  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A5400 0026E9C0  38 03 00 01 */	addi r0, r3, 0x1
/* 802A5404 0026E9C4  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A5408:
/* 802A5408 0026E9C8  2C 1E 00 01 */	cmpwi r30, 0x1
/* 802A540C 0026E9CC  40 82 00 5C */	bne .L_802A5468
/* 802A5410 0026E9D0  2C 1F 00 03 */	cmpwi r31, 0x3
/* 802A5414 0026E9D4  40 82 00 54 */	bne .L_802A5468
/* 802A5418 0026E9D8  38 60 00 64 */	li r3, 0x64
/* 802A541C 0026E9DC  48 19 0A E1 */	bl mtRand__2mlFi
/* 802A5420 0026E9E0  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A5424 0026E9E4  40 80 00 44 */	bge .L_802A5468
/* 802A5428 0026E9E8  2C 1B 00 00 */	cmpwi r27, 0x0
/* 802A542C 0026E9EC  41 82 00 3C */	beq .L_802A5468
/* 802A5430 0026E9F0  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5434 0026E9F4  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A5438 0026E9F8  40 80 00 30 */	bge .L_802A5468
/* 802A543C 0026E9FC  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A5440 0026EA00  54 00 10 3A */	slwi r0, r0, 2
/* 802A5444 0026EA04  38 80 09 00 */	li r4, 0x900
/* 802A5448 0026EA08  7F 63 01 2E */	stwx r27, r3, r0
/* 802A544C 0026EA0C  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5450 0026EA10  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A5454 0026EA14  54 00 10 3A */	slwi r0, r0, 2
/* 802A5458 0026EA18  7C 83 01 2E */	stwx r4, r3, r0
/* 802A545C 0026EA1C  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A5460 0026EA20  38 03 00 01 */	addi r0, r3, 0x1
/* 802A5464 0026EA24  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A5468:
/* 802A5468 0026EA28  2C 1E 00 04 */	cmpwi r30, 0x4
/* 802A546C 0026EA2C  40 82 00 5C */	bne .L_802A54C8
/* 802A5470 0026EA30  2C 1F 00 03 */	cmpwi r31, 0x3
/* 802A5474 0026EA34  40 82 00 54 */	bne .L_802A54C8
/* 802A5478 0026EA38  38 60 00 64 */	li r3, 0x64
/* 802A547C 0026EA3C  48 19 0A 81 */	bl mtRand__2mlFi
/* 802A5480 0026EA40  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A5484 0026EA44  40 80 00 44 */	bge .L_802A54C8
/* 802A5488 0026EA48  2C 1B 00 00 */	cmpwi r27, 0x0
/* 802A548C 0026EA4C  41 82 00 3C */	beq .L_802A54C8
/* 802A5490 0026EA50  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5494 0026EA54  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A5498 0026EA58  40 80 00 30 */	bge .L_802A54C8
/* 802A549C 0026EA5C  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A54A0 0026EA60  54 00 10 3A */	slwi r0, r0, 2
/* 802A54A4 0026EA64  38 80 09 02 */	li r4, 0x902
/* 802A54A8 0026EA68  7F 63 01 2E */	stwx r27, r3, r0
/* 802A54AC 0026EA6C  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A54B0 0026EA70  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A54B4 0026EA74  54 00 10 3A */	slwi r0, r0, 2
/* 802A54B8 0026EA78  7C 83 01 2E */	stwx r4, r3, r0
/* 802A54BC 0026EA7C  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A54C0 0026EA80  38 03 00 01 */	addi r0, r3, 0x1
/* 802A54C4 0026EA84  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A54C8:
/* 802A54C8 0026EA88  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A54CC 0026EA8C  2C 00 00 01 */	cmpwi r0, 0x1
/* 802A54D0 0026EA90  40 80 00 4C */	bge .L_802A551C
/* 802A54D4 0026EA94  38 60 00 02 */	li r3, 0x2
/* 802A54D8 0026EA98  48 19 0A 25 */	bl mtRand__2mlFi
/* 802A54DC 0026EA9C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 802A54E0 0026EAA0  38 83 05 79 */	addi r4, r3, 0x579
/* 802A54E4 0026EAA4  41 82 00 38 */	beq .L_802A551C
/* 802A54E8 0026EAA8  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A54EC 0026EAAC  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A54F0 0026EAB0  40 80 00 2C */	bge .L_802A551C
/* 802A54F4 0026EAB4  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A54F8 0026EAB8  54 00 10 3A */	slwi r0, r0, 2
/* 802A54FC 0026EABC  7F 63 01 2E */	stwx r27, r3, r0
/* 802A5500 0026EAC0  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5504 0026EAC4  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A5508 0026EAC8  54 00 10 3A */	slwi r0, r0, 2
/* 802A550C 0026EACC  7C 83 01 2E */	stwx r4, r3, r0
/* 802A5510 0026EAD0  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A5514 0026EAD4  38 03 00 01 */	addi r0, r3, 0x1
/* 802A5518 0026EAD8  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A551C:
/* 802A551C 0026EADC  2C 1E 00 01 */	cmpwi r30, 0x1
/* 802A5520 0026EAE0  41 82 00 64 */	beq .L_802A5584
/* 802A5524 0026EAE4  2C 1F 00 03 */	cmpwi r31, 0x3
/* 802A5528 0026EAE8  40 82 00 5C */	bne .L_802A5584
/* 802A552C 0026EAEC  38 60 00 64 */	li r3, 0x64
/* 802A5530 0026EAF0  48 19 09 CD */	bl mtRand__2mlFi
/* 802A5534 0026EAF4  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A5538 0026EAF8  40 80 00 4C */	bge .L_802A5584
/* 802A553C 0026EAFC  38 60 00 01 */	li r3, 0x1
/* 802A5540 0026EB00  48 00 25 15 */	bl func_802A7A54
/* 802A5544 0026EB04  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A5548 0026EB08  41 82 00 3C */	beq .L_802A5584
/* 802A554C 0026EB0C  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5550 0026EB10  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A5554 0026EB14  40 80 00 30 */	bge .L_802A5584
/* 802A5558 0026EB18  80 BA 00 00 */	lwz r5, 0x0(r26)
/* 802A555C 0026EB1C  54 00 10 3A */	slwi r0, r0, 2
/* 802A5560 0026EB20  38 80 09 03 */	li r4, 0x903
/* 802A5564 0026EB24  7C 65 01 2E */	stwx r3, r5, r0
/* 802A5568 0026EB28  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A556C 0026EB2C  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A5570 0026EB30  54 00 10 3A */	slwi r0, r0, 2
/* 802A5574 0026EB34  7C 83 01 2E */	stwx r4, r3, r0
/* 802A5578 0026EB38  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A557C 0026EB3C  38 03 00 01 */	addi r0, r3, 0x1
/* 802A5580 0026EB40  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A5584:
/* 802A5584 0026EB44  2C 1E 00 01 */	cmpwi r30, 0x1
/* 802A5588 0026EB48  40 82 00 64 */	bne .L_802A55EC
/* 802A558C 0026EB4C  2C 1F 00 03 */	cmpwi r31, 0x3
/* 802A5590 0026EB50  40 82 00 5C */	bne .L_802A55EC
/* 802A5594 0026EB54  38 60 00 64 */	li r3, 0x64
/* 802A5598 0026EB58  48 19 09 65 */	bl mtRand__2mlFi
/* 802A559C 0026EB5C  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A55A0 0026EB60  40 80 00 4C */	bge .L_802A55EC
/* 802A55A4 0026EB64  38 60 00 03 */	li r3, 0x3
/* 802A55A8 0026EB68  48 00 24 AD */	bl func_802A7A54
/* 802A55AC 0026EB6C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A55B0 0026EB70  41 82 00 3C */	beq .L_802A55EC
/* 802A55B4 0026EB74  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A55B8 0026EB78  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A55BC 0026EB7C  40 80 00 30 */	bge .L_802A55EC
/* 802A55C0 0026EB80  80 BA 00 00 */	lwz r5, 0x0(r26)
/* 802A55C4 0026EB84  54 00 10 3A */	slwi r0, r0, 2
/* 802A55C8 0026EB88  38 80 08 FD */	li r4, 0x8fd
/* 802A55CC 0026EB8C  7C 65 01 2E */	stwx r3, r5, r0
/* 802A55D0 0026EB90  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A55D4 0026EB94  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A55D8 0026EB98  54 00 10 3A */	slwi r0, r0, 2
/* 802A55DC 0026EB9C  7C 83 01 2E */	stwx r4, r3, r0
/* 802A55E0 0026EBA0  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A55E4 0026EBA4  38 03 00 01 */	addi r0, r3, 0x1
/* 802A55E8 0026EBA8  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A55EC:
/* 802A55EC 0026EBAC  2C 1E 00 05 */	cmpwi r30, 0x5
/* 802A55F0 0026EBB0  40 82 00 64 */	bne .L_802A5654
/* 802A55F4 0026EBB4  2C 1F 00 02 */	cmpwi r31, 0x2
/* 802A55F8 0026EBB8  40 82 00 5C */	bne .L_802A5654
/* 802A55FC 0026EBBC  38 60 00 64 */	li r3, 0x64
/* 802A5600 0026EBC0  48 19 08 FD */	bl mtRand__2mlFi
/* 802A5604 0026EBC4  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A5608 0026EBC8  40 80 00 4C */	bge .L_802A5654
/* 802A560C 0026EBCC  38 60 00 03 */	li r3, 0x3
/* 802A5610 0026EBD0  48 00 24 45 */	bl func_802A7A54
/* 802A5614 0026EBD4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A5618 0026EBD8  41 82 00 3C */	beq .L_802A5654
/* 802A561C 0026EBDC  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5620 0026EBE0  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A5624 0026EBE4  40 80 00 30 */	bge .L_802A5654
/* 802A5628 0026EBE8  80 BA 00 00 */	lwz r5, 0x0(r26)
/* 802A562C 0026EBEC  54 00 10 3A */	slwi r0, r0, 2
/* 802A5630 0026EBF0  38 80 08 FE */	li r4, 0x8fe
/* 802A5634 0026EBF4  7C 65 01 2E */	stwx r3, r5, r0
/* 802A5638 0026EBF8  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A563C 0026EBFC  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A5640 0026EC00  54 00 10 3A */	slwi r0, r0, 2
/* 802A5644 0026EC04  7C 83 01 2E */	stwx r4, r3, r0
/* 802A5648 0026EC08  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A564C 0026EC0C  38 03 00 01 */	addi r0, r3, 0x1
/* 802A5650 0026EC10  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A5654:
/* 802A5654 0026EC14  2C 1E 00 01 */	cmpwi r30, 0x1
/* 802A5658 0026EC18  40 82 00 64 */	bne .L_802A56BC
/* 802A565C 0026EC1C  2C 1F 00 03 */	cmpwi r31, 0x3
/* 802A5660 0026EC20  40 82 00 5C */	bne .L_802A56BC
/* 802A5664 0026EC24  38 60 00 64 */	li r3, 0x64
/* 802A5668 0026EC28  48 19 08 95 */	bl mtRand__2mlFi
/* 802A566C 0026EC2C  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A5670 0026EC30  40 80 00 4C */	bge .L_802A56BC
/* 802A5674 0026EC34  38 60 00 02 */	li r3, 0x2
/* 802A5678 0026EC38  48 00 23 DD */	bl func_802A7A54
/* 802A567C 0026EC3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A5680 0026EC40  41 82 00 3C */	beq .L_802A56BC
/* 802A5684 0026EC44  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5688 0026EC48  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A568C 0026EC4C  40 80 00 30 */	bge .L_802A56BC
/* 802A5690 0026EC50  80 BA 00 00 */	lwz r5, 0x0(r26)
/* 802A5694 0026EC54  54 00 10 3A */	slwi r0, r0, 2
/* 802A5698 0026EC58  38 80 08 FD */	li r4, 0x8fd
/* 802A569C 0026EC5C  7C 65 01 2E */	stwx r3, r5, r0
/* 802A56A0 0026EC60  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A56A4 0026EC64  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A56A8 0026EC68  54 00 10 3A */	slwi r0, r0, 2
/* 802A56AC 0026EC6C  7C 83 01 2E */	stwx r4, r3, r0
/* 802A56B0 0026EC70  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A56B4 0026EC74  38 03 00 01 */	addi r0, r3, 0x1
/* 802A56B8 0026EC78  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A56BC:
/* 802A56BC 0026EC7C  2C 1E 00 05 */	cmpwi r30, 0x5
/* 802A56C0 0026EC80  40 82 01 50 */	bne .L_802A5810
/* 802A56C4 0026EC84  2C 1F 00 02 */	cmpwi r31, 0x2
/* 802A56C8 0026EC88  41 82 01 48 */	beq .L_802A5810
/* 802A56CC 0026EC8C  38 60 00 64 */	li r3, 0x64
/* 802A56D0 0026EC90  48 19 08 2D */	bl mtRand__2mlFi
/* 802A56D4 0026EC94  2C 03 00 19 */	cmpwi r3, 0x19
/* 802A56D8 0026EC98  40 80 01 38 */	bge .L_802A5810
/* 802A56DC 0026EC9C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802A56E0 0026ECA0  40 82 00 0C */	bne .L_802A56EC
/* 802A56E4 0026ECA4  38 00 00 00 */	li r0, 0x0
/* 802A56E8 0026ECA8  48 00 00 6C */	b .L_802A5754
.L_802A56EC:
/* 802A56EC 0026ECAC  3B DD FF FC */	addi r30, r29, -0x4
/* 802A56F0 0026ECB0  3B 60 FF FF */	li r27, -0x1
.L_802A56F4:
/* 802A56F4 0026ECB4  2C 1B 00 00 */	cmpwi r27, 0x0
/* 802A56F8 0026ECB8  40 80 00 0C */	bge .L_802A5704
/* 802A56FC 0026ECBC  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 802A5700 0026ECC0  48 00 00 08 */	b .L_802A5708
.L_802A5704:
/* 802A5704 0026ECC4  80 7E 00 08 */	lwz r3, 0x8(r30)
.L_802A5708:
/* 802A5708 0026ECC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A570C 0026ECCC  41 82 00 34 */	beq .L_802A5740
/* 802A5710 0026ECD0  4B E1 19 7D */	bl func_800B708C
/* 802A5714 0026ECD4  4B EC A7 21 */	bl func_8016FE34
/* 802A5718 0026ECD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A571C 0026ECDC  41 82 00 24 */	beq .L_802A5740
/* 802A5720 0026ECE0  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A5724 0026ECE4  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 802A5728 0026ECE8  41 82 00 18 */	beq .L_802A5740
/* 802A572C 0026ECEC  48 00 20 BD */	bl func_802A77E8
/* 802A5730 0026ECF0  2C 03 00 02 */	cmpwi r3, 0x2
/* 802A5734 0026ECF4  40 82 00 0C */	bne .L_802A5740
/* 802A5738 0026ECF8  38 00 00 00 */	li r0, 0x0
/* 802A573C 0026ECFC  48 00 00 18 */	b .L_802A5754
.L_802A5740:
/* 802A5740 0026ED00  3B 7B 00 01 */	addi r27, r27, 0x1
/* 802A5744 0026ED04  3B DE 00 04 */	addi r30, r30, 0x4
/* 802A5748 0026ED08  2C 1B 00 10 */	cmpwi r27, 0x10
/* 802A574C 0026ED0C  41 80 FF A8 */	blt .L_802A56F4
/* 802A5750 0026ED10  38 00 00 01 */	li r0, 0x1
.L_802A5754:
/* 802A5754 0026ED14  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A5758 0026ED18  41 82 00 B8 */	beq .L_802A5810
/* 802A575C 0026ED1C  38 60 00 02 */	li r3, 0x2
/* 802A5760 0026ED20  48 00 22 F5 */	bl func_802A7A54
/* 802A5764 0026ED24  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A5768 0026ED28  40 82 00 0C */	bne .L_802A5774
/* 802A576C 0026ED2C  38 C0 00 00 */	li r6, 0x0
/* 802A5770 0026ED30  48 00 00 48 */	b .L_802A57B8
.L_802A5774:
/* 802A5774 0026ED34  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A5778 0026ED38  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A577C 0026ED3C  41 80 00 0C */	blt .L_802A5788
/* 802A5780 0026ED40  38 C0 00 00 */	li r6, 0x0
/* 802A5784 0026ED44  48 00 00 34 */	b .L_802A57B8
.L_802A5788:
/* 802A5788 0026ED48  80 BA 00 00 */	lwz r5, 0x0(r26)
/* 802A578C 0026ED4C  54 00 10 3A */	slwi r0, r0, 2
/* 802A5790 0026ED50  38 80 08 FE */	li r4, 0x8fe
/* 802A5794 0026ED54  38 C0 00 01 */	li r6, 0x1
/* 802A5798 0026ED58  7C 65 01 2E */	stwx r3, r5, r0
/* 802A579C 0026ED5C  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A57A0 0026ED60  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A57A4 0026ED64  54 00 10 3A */	slwi r0, r0, 2
/* 802A57A8 0026ED68  7C 83 01 2E */	stwx r4, r3, r0
/* 802A57AC 0026ED6C  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A57B0 0026ED70  38 03 00 01 */	addi r0, r3, 0x1
/* 802A57B4 0026ED74  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A57B8:
/* 802A57B8 0026ED78  2C 06 00 00 */	cmpwi r6, 0x0
/* 802A57BC 0026ED7C  41 82 00 54 */	beq .L_802A5810
/* 802A57C0 0026ED80  38 60 00 64 */	li r3, 0x64
/* 802A57C4 0026ED84  48 19 07 39 */	bl mtRand__2mlFi
/* 802A57C8 0026ED88  2C 03 00 32 */	cmpwi r3, 0x32
/* 802A57CC 0026ED8C  40 80 00 44 */	bge .L_802A5810
/* 802A57D0 0026ED90  2C 1C 00 00 */	cmpwi r28, 0x0
/* 802A57D4 0026ED94  41 82 00 3C */	beq .L_802A5810
/* 802A57D8 0026ED98  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A57DC 0026ED9C  2C 00 00 03 */	cmpwi r0, 0x3
/* 802A57E0 0026EDA0  40 80 00 30 */	bge .L_802A5810
/* 802A57E4 0026EDA4  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A57E8 0026EDA8  54 00 10 3A */	slwi r0, r0, 2
/* 802A57EC 0026EDAC  38 80 08 FE */	li r4, 0x8fe
/* 802A57F0 0026EDB0  7F 83 01 2E */	stwx r28, r3, r0
/* 802A57F4 0026EDB4  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 802A57F8 0026EDB8  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 802A57FC 0026EDBC  54 00 10 3A */	slwi r0, r0, 2
/* 802A5800 0026EDC0  7C 83 01 2E */	stwx r4, r3, r0
/* 802A5804 0026EDC4  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 802A5808 0026EDC8  38 03 00 01 */	addi r0, r3, 0x1
/* 802A580C 0026EDCC  90 1A 00 08 */	stw r0, 0x8(r26)
.L_802A5810:
/* 802A5810 0026EDD0  80 7A 00 08 */	lwz r3, 0x8(r26)
.L_802A5814:
/* 802A5814 0026EDD4  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 802A5818 0026EDD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A581C 0026EDDC  7C 08 03 A6 */	mtlr r0
/* 802A5820 0026EDE0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5824 0026EDE4  4E 80 00 20 */	blr
.endfn func_802A5174

.fn func_802A5828, global
/* 802A5828 0026EDE8  38 60 01 04 */	li r3, 0x104
/* 802A582C 0026EDEC  4E 80 00 20 */	blr
.endfn func_802A5828

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8

.global cf_CVS_THREAD_BUF_typestr
cf_CVS_THREAD_BUF_typestr:
	.4byte 0x63663A3A
	.4byte 0x4356535F
	.4byte 0x54485245
	.4byte 0x41445F42
	.4byte 0x55460000
	.4byte 0x00000000

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8
.global lbl_8053D170
lbl_8053D170:
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte func_802A4FA4
.global lbl_8053D17C
lbl_8053D17C:
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte func_802A5060
.global lbl_8053D188
lbl_8053D188:
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte func_802A4FA4

.global __vt__cf_CVS_THREAD_BUF
__vt__cf_CVS_THREAD_BUF:
	.4byte __RTTI__cf_CVS_THREAD_BUF
	.4byte 0x00000000
	.4byte func_802A3B50
	.4byte func_802A50E0
	.4byte func_802A5828
	.4byte func_802A1EA0
	.4byte func_802A3740

.global cf_CVS_THREAD_BUF_hierarchy
cf_CVS_THREAD_BUF_hierarchy:
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8

.global __RTTI__cf_CVS_THREAD_BUF
__RTTI__cf_CVS_THREAD_BUF:
	.4byte cf_CVS_THREAD_BUF_typestr
	.4byte cf_CVS_THREAD_BUF_hierarchy

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001AB44", local
.hidden "@etb_8001AB44"
	.4byte 0x30180000
	.4byte 0x000000D4
	.4byte 0x00000018
	.4byte 0x0000011C
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x0000010C
	.4byte 0x00000038
	.4byte 0x8D000038
.endobj "@etb_8001AB44"

.obj "@etb_8001AB70", local
.hidden "@etb_8001AB70"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AB70"

.obj "@etb_8001AB78", local
.hidden "@etb_8001AB78"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AB78"

.obj "@etb_8001AB80", local
.hidden "@etb_8001AB80"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AB80"

.obj "@etb_8001AB88", local
.hidden "@etb_8001AB88"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8001AB88"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80032A20", local
.hidden "@eti_80032A20"
	.4byte func_802A4E48
	.4byte 0x0000015C
	.4byte "@etb_8001AB44"
.endobj "@eti_80032A20"

.obj "@eti_80032A2C", local
.hidden "@eti_80032A2C"
	.4byte func_802A4FA4
	.4byte 0x000000BC
	.4byte "@etb_8001AB70"
.endobj "@eti_80032A2C"

.obj "@eti_80032A38", local
.hidden "@eti_80032A38"
	.4byte func_802A5060
	.4byte 0x00000080
	.4byte "@etb_8001AB78"
.endobj "@eti_80032A38"

.obj "@eti_80032A44", local
.hidden "@eti_80032A44"
	.4byte func_802A50E0
	.4byte 0x00000094
	.4byte "@etb_8001AB80"
.endobj "@eti_80032A44"

.obj "@eti_80032A50", local
.hidden "@eti_80032A50"
	.4byte func_802A5174
	.4byte 0x000006B4
	.4byte "@etb_8001AB88"
.endobj "@eti_80032A50"
