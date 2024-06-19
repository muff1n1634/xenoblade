.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802B9064, global
/* 802B9064 00282624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B9068 00282628  7C 08 02 A6 */	mflr r0
/* 802B906C 0028262C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B9070 00282630  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802B9074 00282634  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802B9078 00282638  FF E0 08 90 */	fmr f31, f1
/* 802B907C 0028263C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802B9080 00282640  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 802B9084 00282644  FF C0 10 90 */	fmr f30, f2
/* 802B9088 00282648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B908C 0028264C  93 C1 00 08 */	stw r30, 8(r1)
/* 802B9090 00282650  7C 7E 1B 78 */	mr r30, r3
/* 802B9094 00282654  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802B9098 00282658  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802B909C 0028265C  40 82 00 0C */	bne .L_802B90A8
/* 802B90A0 00282660  38 60 00 00 */	li r3, 0
/* 802B90A4 00282664  48 00 01 1C */	b .L_802B91C0
.L_802B90A8:
/* 802B90A8 00282668  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802B90AC 0028266C  4C 40 13 82 */	cror 2, 0, 2
/* 802B90B0 00282670  40 82 00 0C */	bne .L_802B90BC
/* 802B90B4 00282674  38 60 00 00 */	li r3, 0
/* 802B90B8 00282678  48 00 01 08 */	b .L_802B91C0
.L_802B90BC:
/* 802B90BC 0028267C  81 83 00 00 */	lwz r12, 0(r3)
/* 802B90C0 00282680  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802B90C4 00282684  7D 89 03 A6 */	mtctr r12
/* 802B90C8 00282688  4E 80 04 21 */	bctrl 
/* 802B90CC 0028268C  2C 03 00 00 */	cmpwi r3, 0
/* 802B90D0 00282690  41 82 00 0C */	beq .L_802B90DC
/* 802B90D4 00282694  38 60 00 00 */	li r3, 0
/* 802B90D8 00282698  48 00 00 E8 */	b .L_802B91C0
.L_802B90DC:
/* 802B90DC 0028269C  4B E2 00 AD */	bl getBattleManagerInstancePtr__Fv
/* 802B90E0 002826A0  A8 03 20 C8 */	lha r0, 0x20c8(r3)
/* 802B90E4 002826A4  2C 00 00 00 */	cmpwi r0, 0
/* 802B90E8 002826A8  41 82 00 0C */	beq .L_802B90F4
/* 802B90EC 002826AC  38 60 00 00 */	li r3, 0
/* 802B90F0 002826B0  48 00 00 D0 */	b .L_802B91C0
.L_802B90F4:
/* 802B90F4 002826B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802B90F8 002826B8  7F C3 F3 78 */	mr r3, r30
/* 802B90FC 002826BC  81 8C 01 5C */	lwz r12, 0x15c(r12)
/* 802B9100 002826C0  7D 89 03 A6 */	mtctr r12
/* 802B9104 002826C4  4E 80 04 21 */	bctrl 
/* 802B9108 002826C8  EF FF 08 24 */	fdivs f31, f31, f1
/* 802B910C 002826CC  81 9E 00 00 */	lwz r12, 0(r30)
/* 802B9110 002826D0  7F C3 F3 78 */	mr r3, r30
/* 802B9114 002826D4  81 8C 01 5C */	lwz r12, 0x15c(r12)
/* 802B9118 002826D8  7D 89 03 A6 */	mtctr r12
/* 802B911C 002826DC  4E 80 04 21 */	bctrl 
/* 802B9120 002826E0  EC 3E 08 24 */	fdivs f1, f30, f1
/* 802B9124 002826E4  C0 02 B4 98 */	lfs f0, float_8066B818@sda21(r2)
/* 802B9128 002826E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B912C 002826EC  40 80 00 18 */	bge .L_802B9144
/* 802B9130 002826F0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802B9134 002826F4  4C 40 13 82 */	cror 2, 0, 2
/* 802B9138 002826F8  40 82 00 0C */	bne .L_802B9144
/* 802B913C 002826FC  3B E0 0A 2A */	li r31, 0xa2a
/* 802B9140 00282700  48 00 00 2C */	b .L_802B916C
.L_802B9144:
/* 802B9144 00282704  C0 02 B4 9C */	lfs f0, float_8066B81C@sda21(r2)
/* 802B9148 00282708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B914C 0028270C  40 80 00 18 */	bge .L_802B9164
/* 802B9150 00282710  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802B9154 00282714  4C 40 13 82 */	cror 2, 0, 2
/* 802B9158 00282718  40 82 00 0C */	bne .L_802B9164
/* 802B915C 0028271C  3B E0 0A 29 */	li r31, 0xa29
/* 802B9160 00282720  48 00 00 0C */	b .L_802B916C
.L_802B9164:
/* 802B9164 00282724  38 60 00 00 */	li r3, 0
/* 802B9168 00282728  48 00 00 58 */	b .L_802B91C0
.L_802B916C:
/* 802B916C 0028272C  38 60 00 7D */	li r3, 0x7d
/* 802B9170 00282730  38 80 00 01 */	li r4, 1
/* 802B9174 00282734  4B FE A1 99 */	bl func_802A330C
/* 802B9178 00282738  2C 03 00 00 */	cmpwi r3, 0
/* 802B917C 0028273C  40 82 00 0C */	bne .L_802B9188
/* 802B9180 00282740  38 60 00 00 */	li r3, 0
/* 802B9184 00282744  48 00 00 3C */	b .L_802B91C0
.L_802B9188:
/* 802B9188 00282748  38 60 00 20 */	li r3, 0x20
/* 802B918C 0028274C  4B FE A3 59 */	bl func_802A34E4
/* 802B9190 00282750  2C 03 00 00 */	cmpwi r3, 0
/* 802B9194 00282754  40 82 00 0C */	bne .L_802B91A0
/* 802B9198 00282758  38 60 00 00 */	li r3, 0
/* 802B919C 0028275C  48 00 00 24 */	b .L_802B91C0
.L_802B91A0:
/* 802B91A0 00282760  2C 1E 00 00 */	cmpwi r30, 0
/* 802B91A4 00282764  41 82 00 08 */	beq .L_802B91AC
/* 802B91A8 00282768  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_802B91AC:
/* 802B91AC 0028276C  7F C3 F3 78 */	mr r3, r30
/* 802B91B0 00282770  7F E4 FB 78 */	mr r4, r31
/* 802B91B4 00282774  38 A0 00 7D */	li r5, 0x7d
/* 802B91B8 00282778  4B FE AB 9D */	bl func_802A3D54
/* 802B91BC 0028277C  38 60 00 00 */	li r3, 0
.L_802B91C0:
/* 802B91C0 00282780  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B91C4 00282784  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802B91C8 00282788  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802B91CC 0028278C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 802B91D0 00282790  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 802B91D4 00282794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B91D8 00282798  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B91DC 0028279C  7C 08 03 A6 */	mtlr r0
/* 802B91E0 002827A0  38 21 00 30 */	addi r1, r1, 0x30
/* 802B91E4 002827A4  4E 80 00 20 */	blr 
.endfn func_802B9064


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066B818, global
	.float 1.0
.endobj float_8066B818


.obj float_8066B81C, global
	.float 0.5
.endobj float_8066B81C


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BE8C", local
.hidden "@etb_8001BE8C"
	.4byte 0x108A0000
	.4byte 0x00000000
.endobj "@etb_8001BE8C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033A28", local
.hidden "@eti_80033A28"
	.4byte func_802B9064
	.4byte 0x00000184
	.4byte "@etb_8001BE8C"
.endobj "@eti_80033A28"

