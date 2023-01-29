.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4hbm::ut::TagProcessorBase_c_::TagProcessorBase_c_()
.fn __ct__Q36nw4hbm2ut19TagProcessorBase_c_Fv, global
/* 80339110 003026D0  3C 80 80 55 */	lis r4, lbl_8054EEB8@ha
/* 80339114 003026D4  38 84 EE B8 */	addi r4, r4, lbl_8054EEB8@l
/* 80339118 003026D8  90 83 00 00 */	stw r4, 0x0(r3)
/* 8033911C 003026DC  4E 80 00 20 */	blr
.endfn __ct__Q36nw4hbm2ut19TagProcessorBase_c_Fv

# nw4hbm::ut::TagProcessorBase_c_::~TagProcessorBase_c_()
.fn __dt__Q36nw4hbm2ut19TagProcessorBase_c_Fv, global
/* 80339120 003026E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339124 003026E4  7C 08 02 A6 */	mflr r0
/* 80339128 003026E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8033912C 003026EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80339130 003026F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339134 003026F4  7C 7F 1B 78 */	mr r31, r3
/* 80339138 003026F8  41 82 00 10 */	beq .L_80339148
/* 8033913C 003026FC  2C 04 00 00 */	cmpwi r4, 0x0
/* 80339140 00302700  40 81 00 08 */	ble .L_80339148
/* 80339144 00302704  48 0F BA E9 */	bl __dl__FPv
.L_80339148:
/* 80339148 00302708  7F E3 FB 78 */	mr r3, r31
/* 8033914C 0030270C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80339150 00302710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80339154 00302714  7C 08 03 A6 */	mtlr r0
/* 80339158 00302718  38 21 00 10 */	addi r1, r1, 0x10
/* 8033915C 0030271C  4E 80 00 20 */	blr
.endfn __dt__Q36nw4hbm2ut19TagProcessorBase_c_Fv

.fn func_80339160, global
/* 80339160 00302720  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80339164 00302724  7C 08 02 A6 */	mflr r0
/* 80339168 00302728  2C 04 00 0A */	cmpwi r4, 0xa
/* 8033916C 0030272C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80339170 00302730  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80339174 00302734  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 80339178 00302738  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8033917C 0030273C  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 80339180 00302740  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80339184 00302744  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80339188 00302748  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8033918C 0030274C  7C BD 2B 78 */	mr r29, r5
/* 80339190 00302750  41 82 00 10 */	beq .L_803391A0
/* 80339194 00302754  2C 04 00 09 */	cmpwi r4, 0x9
/* 80339198 00302758  41 82 00 3C */	beq .L_803391D4
/* 8033919C 0030275C  48 00 00 F0 */	b .L_8033928C
.L_803391A0:
/* 803391A0 00302760  83 E5 00 00 */	lwz r31, 0x0(r5)
/* 803391A4 00302764  C3 C5 00 08 */	lfs f30, 0x8(r5)
/* 803391A8 00302768  7F E3 FB 78 */	mr r3, r31
/* 803391AC 0030276C  48 00 0B 85 */	bl func_80339D30
/* 803391B0 00302770  FF E0 08 90 */	fmr f31, f1
/* 803391B4 00302774  7F E3 FB 78 */	mr r3, r31
/* 803391B8 00302778  4B FF ED 39 */	bl func_80337EF0
/* 803391BC 0030277C  EC 41 F8 2A */	fadds f2, f1, f31
/* 803391C0 00302780  7F E3 FB 78 */	mr r3, r31
/* 803391C4 00302784  FC 20 F0 90 */	fmr f1, f30
/* 803391C8 00302788  4B FF EC C9 */	bl func_80337E90
/* 803391CC 0030278C  38 60 00 03 */	li r3, 0x3
/* 803391D0 00302790  48 00 00 C0 */	b .L_80339290
.L_803391D4:
/* 803391D4 00302794  83 C5 00 00 */	lwz r30, 0x0(r5)
/* 803391D8 00302798  7F C3 F3 78 */	mr r3, r30
/* 803391DC 0030279C  48 00 0C 35 */	bl func_80339E10
/* 803391E0 003027A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803391E4 003027A4  7C 7F 1B 78 */	mr r31, r3
/* 803391E8 003027A8  40 81 00 9C */	ble .L_80339284
/* 803391EC 003027AC  7F C3 F3 78 */	mr r3, r30
/* 803391F0 003027B0  4B FF EB 41 */	bl func_80337D30
/* 803391F4 003027B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 803391F8 003027B8  41 82 00 14 */	beq .L_8033920C
/* 803391FC 003027BC  7F C3 F3 78 */	mr r3, r30
/* 80339200 003027C0  4B FF EB 41 */	bl func_80337D40
/* 80339204 003027C4  FF E0 08 90 */	fmr f31, f1
/* 80339208 003027C8  48 00 00 10 */	b .L_80339218
.L_8033920C:
/* 8033920C 003027CC  7F C3 F3 78 */	mr r3, r30
/* 80339210 003027D0  4B FF E9 D1 */	bl func_80337BE0
/* 80339214 003027D4  FF E0 08 90 */	fmr f31, f1
.L_80339218:
/* 80339218 003027D8  7F C3 F3 78 */	mr r3, r30
/* 8033921C 003027DC  4B FF EC C5 */	bl func_80337EE0
/* 80339220 003027E0  3C 00 43 30 */	lis r0, 0x4330
/* 80339224 003027E4  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80339228 003027E8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8033922C 003027EC  3C 80 80 52 */	lis r4, lbl_80518B38@ha
/* 80339230 003027F0  C8 44 8B 38 */	lfd f2, lbl_80518B38@l(r4)
/* 80339234 003027F4  7F C3 F3 78 */	mr r3, r30
/* 80339238 003027F8  90 01 00 08 */	stw r0, 0x8(r1)
/* 8033923C 003027FC  C0 7D 00 08 */	lfs f3, 0x8(r29)
/* 80339240 00302800  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 80339244 00302804  EC 81 18 28 */	fsubs f4, f1, f3
/* 80339248 00302808  90 01 00 18 */	stw r0, 0x18(r1)
/* 8033924C 0030280C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80339250 00302810  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80339254 00302814  EC 04 08 24 */	fdivs f0, f4, f1
/* 80339258 00302818  FC 00 00 1E */	fctiwz f0, f0
/* 8033925C 0030281C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80339260 00302820  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80339264 00302824  38 04 00 01 */	addi r0, r4, 0x1
/* 80339268 00302828  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8033926C 0030282C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80339270 00302830  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80339274 00302834  EC 00 10 28 */	fsubs f0, f0, f2
/* 80339278 00302838  EC 01 00 32 */	fmuls f0, f1, f0
/* 8033927C 0030283C  EC 23 00 2A */	fadds f1, f3, f0
/* 80339280 00302840  4B FF EC 21 */	bl func_80337EA0
.L_80339284:
/* 80339284 00302844  38 60 00 01 */	li r3, 0x1
/* 80339288 00302848  48 00 00 08 */	b .L_80339290
.L_8033928C:
/* 8033928C 0030284C  38 60 00 00 */	li r3, 0x0
.L_80339290:
/* 80339290 00302850  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80339294 00302854  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 80339298 00302858  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8033929C 0030285C  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 803392A0 00302860  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 803392A4 00302864  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803392A8 00302868  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803392AC 0030286C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803392B0 00302870  7C 08 03 A6 */	mtlr r0
/* 803392B4 00302874  38 21 00 50 */	addi r1, r1, 0x50
/* 803392B8 00302878  4E 80 00 20 */	blr
.endfn func_80339160
/* 803392BC 0030287C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn func_803392C0, global
/* 803392C0 00302880  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803392C4 00302884  7C 08 02 A6 */	mflr r0
/* 803392C8 00302888  90 01 00 64 */	stw r0, 0x64(r1)
/* 803392CC 0030288C  39 61 00 40 */	addi r11, r1, 0x40
/* 803392D0 00302890  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803392D4 00302894  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 803392D8 00302898  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 803392DC 0030289C  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 803392E0 003028A0  4B F8 0E 75 */	bl _savegpr_27
/* 803392E4 003028A4  2C 05 00 0A */	cmpwi r5, 0xa
/* 803392E8 003028A8  7C 9B 23 78 */	mr r27, r4
/* 803392EC 003028AC  7C DC 33 78 */	mr r28, r6
/* 803392F0 003028B0  41 82 00 10 */	beq .L_80339300
/* 803392F4 003028B4  2C 05 00 09 */	cmpwi r5, 0x9
/* 803392F8 003028B8  41 82 00 B0 */	beq .L_803393A8
/* 803392FC 003028BC  48 00 01 CC */	b .L_803394C8
.L_80339300:
/* 80339300 003028C0  83 C6 00 00 */	lwz r30, 0x0(r6)
/* 80339304 003028C4  7F C3 F3 78 */	mr r3, r30
/* 80339308 003028C8  4B FF EB D9 */	bl func_80337EE0
/* 8033930C 003028CC  D0 3B 00 08 */	stfs f1, 0x8(r27)
/* 80339310 003028D0  7F C3 F3 78 */	mr r3, r30
/* 80339314 003028D4  4B FF EB DD */	bl func_80337EF0
/* 80339318 003028D8  D0 3B 00 04 */	stfs f1, 0x4(r27)
/* 8033931C 003028DC  83 FC 00 00 */	lwz r31, 0x0(r28)
/* 80339320 003028E0  C3 DC 00 08 */	lfs f30, 0x8(r28)
/* 80339324 003028E4  7F E3 FB 78 */	mr r3, r31
/* 80339328 003028E8  48 00 0A 09 */	bl func_80339D30
/* 8033932C 003028EC  FF E0 08 90 */	fmr f31, f1
/* 80339330 003028F0  7F E3 FB 78 */	mr r3, r31
/* 80339334 003028F4  4B FF EB BD */	bl func_80337EF0
/* 80339338 003028F8  EC 41 F8 2A */	fadds f2, f1, f31
/* 8033933C 003028FC  7F E3 FB 78 */	mr r3, r31
/* 80339340 00302900  FC 20 F0 90 */	fmr f1, f30
/* 80339344 00302904  4B FF EB 4D */	bl func_80337E90
/* 80339348 00302908  7F C3 F3 78 */	mr r3, r30
/* 8033934C 0030290C  4B FF EB 95 */	bl func_80337EE0
/* 80339350 00302910  D0 3B 00 00 */	stfs f1, 0x0(r27)
/* 80339354 00302914  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 80339358 00302918  4B FF E8 F9 */	bl func_80337C50
/* 8033935C 0030291C  FF E0 08 90 */	fmr f31, f1
/* 80339360 00302920  7F C3 F3 78 */	mr r3, r30
/* 80339364 00302924  4B FF EB 8D */	bl func_80337EF0
/* 80339368 00302928  EC 01 F8 2A */	fadds f0, f1, f31
/* 8033936C 0030292C  C0 DB 00 04 */	lfs f6, 0x4(r27)
/* 80339370 00302930  C0 FB 00 00 */	lfs f7, 0x0(r27)
/* 80339374 00302934  38 60 00 03 */	li r3, 0x3
/* 80339378 00302938  C0 BB 00 08 */	lfs f5, 0x8(r27)
/* 8033937C 0030293C  EC 40 30 28 */	fsubs f2, f0, f6
/* 80339380 00302940  EC 65 38 28 */	fsubs f3, f5, f7
/* 80339384 00302944  FC 22 01 AE */	fsel f1, f2, f6, f0
/* 80339388 00302948  FC 83 29 EE */	fsel f4, f3, f7, f5
/* 8033938C 0030294C  FC 63 39 6E */	fsel f3, f3, f5, f7
/* 80339390 00302950  D0 3B 00 04 */	stfs f1, 0x4(r27)
/* 80339394 00302954  FC 02 30 2E */	fsel f0, f2, f0, f6
/* 80339398 00302958  D0 9B 00 00 */	stfs f4, 0x0(r27)
/* 8033939C 0030295C  D0 7B 00 08 */	stfs f3, 0x8(r27)
/* 803393A0 00302960  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 803393A4 00302964  48 00 01 28 */	b .L_803394CC
.L_803393A8:
/* 803393A8 00302968  83 A6 00 00 */	lwz r29, 0x0(r6)
/* 803393AC 0030296C  7F A3 EB 78 */	mr r3, r29
/* 803393B0 00302970  4B FF EB 31 */	bl func_80337EE0
/* 803393B4 00302974  D0 3B 00 00 */	stfs f1, 0x0(r27)
/* 803393B8 00302978  83 DC 00 00 */	lwz r30, 0x0(r28)
/* 803393BC 0030297C  7F C3 F3 78 */	mr r3, r30
/* 803393C0 00302980  48 00 0A 51 */	bl func_80339E10
/* 803393C4 00302984  2C 03 00 00 */	cmpwi r3, 0x0
/* 803393C8 00302988  7C 7F 1B 78 */	mr r31, r3
/* 803393CC 0030298C  40 81 00 9C */	ble .L_80339468
/* 803393D0 00302990  7F C3 F3 78 */	mr r3, r30
/* 803393D4 00302994  4B FF E9 5D */	bl func_80337D30
/* 803393D8 00302998  2C 03 00 00 */	cmpwi r3, 0x0
/* 803393DC 0030299C  41 82 00 14 */	beq .L_803393F0
/* 803393E0 003029A0  7F C3 F3 78 */	mr r3, r30
/* 803393E4 003029A4  4B FF E9 5D */	bl func_80337D40
/* 803393E8 003029A8  FF E0 08 90 */	fmr f31, f1
/* 803393EC 003029AC  48 00 00 10 */	b .L_803393FC
.L_803393F0:
/* 803393F0 003029B0  7F C3 F3 78 */	mr r3, r30
/* 803393F4 003029B4  4B FF E7 ED */	bl func_80337BE0
/* 803393F8 003029B8  FF E0 08 90 */	fmr f31, f1
.L_803393FC:
/* 803393FC 003029BC  7F C3 F3 78 */	mr r3, r30
/* 80339400 003029C0  4B FF EA E1 */	bl func_80337EE0
/* 80339404 003029C4  3C 00 43 30 */	lis r0, 0x4330
/* 80339408 003029C8  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 8033940C 003029CC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80339410 003029D0  3C 80 80 52 */	lis r4, lbl_80518B38@ha
/* 80339414 003029D4  C8 44 8B 38 */	lfd f2, lbl_80518B38@l(r4)
/* 80339418 003029D8  7F C3 F3 78 */	mr r3, r30
/* 8033941C 003029DC  90 01 00 08 */	stw r0, 0x8(r1)
/* 80339420 003029E0  C0 7C 00 08 */	lfs f3, 0x8(r28)
/* 80339424 003029E4  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 80339428 003029E8  EC 81 18 28 */	fsubs f4, f1, f3
/* 8033942C 003029EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80339430 003029F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80339434 003029F4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80339438 003029F8  EC 04 08 24 */	fdivs f0, f4, f1
/* 8033943C 003029FC  FC 00 00 1E */	fctiwz f0, f0
/* 80339440 00302A00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80339444 00302A04  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80339448 00302A08  38 04 00 01 */	addi r0, r4, 0x1
/* 8033944C 00302A0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80339450 00302A10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80339454 00302A14  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80339458 00302A18  EC 00 10 28 */	fsubs f0, f0, f2
/* 8033945C 00302A1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80339460 00302A20  EC 23 00 2A */	fadds f1, f3, f0
/* 80339464 00302A24  4B FF EA 3D */	bl func_80337EA0
.L_80339468:
/* 80339468 00302A28  7F A3 EB 78 */	mr r3, r29
/* 8033946C 00302A2C  4B FF EA 75 */	bl func_80337EE0
/* 80339470 00302A30  D0 3B 00 08 */	stfs f1, 0x8(r27)
/* 80339474 00302A34  7F A3 EB 78 */	mr r3, r29
/* 80339478 00302A38  4B FF EA 79 */	bl func_80337EF0
/* 8033947C 00302A3C  D0 3B 00 04 */	stfs f1, 0x4(r27)
/* 80339480 00302A40  7F A3 EB 78 */	mr r3, r29
/* 80339484 00302A44  4B FF E7 CD */	bl func_80337C50
/* 80339488 00302A48  C0 5B 00 04 */	lfs f2, 0x4(r27)
/* 8033948C 00302A4C  38 60 00 01 */	li r3, 0x1
/* 80339490 00302A50  C0 DB 00 00 */	lfs f6, 0x0(r27)
/* 80339494 00302A54  EC 02 08 2A */	fadds f0, f2, f1
/* 80339498 00302A58  C0 9B 00 08 */	lfs f4, 0x8(r27)
/* 8033949C 00302A5C  EC 24 30 28 */	fsubs f1, f4, f6
/* 803394A0 00302A60  EC 60 10 28 */	fsubs f3, f0, f2
/* 803394A4 00302A64  FC A1 21 AE */	fsel f5, f1, f6, f4
/* 803394A8 00302A68  FC 81 31 2E */	fsel f4, f1, f4, f6
/* 803394AC 00302A6C  FC 23 00 AE */	fsel f1, f3, f2, f0
/* 803394B0 00302A70  D0 BB 00 00 */	stfs f5, 0x0(r27)
/* 803394B4 00302A74  FC 03 10 2E */	fsel f0, f3, f0, f2
/* 803394B8 00302A78  D0 9B 00 08 */	stfs f4, 0x8(r27)
/* 803394BC 00302A7C  D0 3B 00 04 */	stfs f1, 0x4(r27)
/* 803394C0 00302A80  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 803394C4 00302A84  48 00 00 08 */	b .L_803394CC
.L_803394C8:
/* 803394C8 00302A88  38 60 00 00 */	li r3, 0x0
.L_803394CC:
/* 803394CC 00302A8C  39 61 00 40 */	addi r11, r1, 0x40
/* 803394D0 00302A90  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 803394D4 00302A94  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803394D8 00302A98  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 803394DC 00302A9C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 803394E0 00302AA0  4B F8 0C C1 */	bl _restgpr_27
/* 803394E4 00302AA4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803394E8 00302AA8  7C 08 03 A6 */	mtlr r0
/* 803394EC 00302AAC  38 21 00 60 */	addi r1, r1, 0x60
/* 803394F0 00302AB0  4E 80 00 20 */	blr
.endfn func_803392C0
/* 803394F4 00302AB4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803394F8 00302AB8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803394FC 00302ABC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn func_80339500, global
/* 80339500 00302AC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80339504 00302AC4  7C 08 02 A6 */	mflr r0
/* 80339508 00302AC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033950C 00302ACC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80339510 00302AD0  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 80339514 00302AD4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80339518 00302AD8  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 8033951C 00302ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339520 00302AE0  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 80339524 00302AE4  C3 C4 00 08 */	lfs f30, 0x8(r4)
/* 80339528 00302AE8  7F E3 FB 78 */	mr r3, r31
/* 8033952C 00302AEC  48 00 08 05 */	bl func_80339D30
/* 80339530 00302AF0  FF E0 08 90 */	fmr f31, f1
/* 80339534 00302AF4  7F E3 FB 78 */	mr r3, r31
/* 80339538 00302AF8  4B FF E9 B9 */	bl func_80337EF0
/* 8033953C 00302AFC  EC 41 F8 2A */	fadds f2, f1, f31
/* 80339540 00302B00  7F E3 FB 78 */	mr r3, r31
/* 80339544 00302B04  FC 20 F0 90 */	fmr f1, f30
/* 80339548 00302B08  4B FF E9 49 */	bl func_80337E90
/* 8033954C 00302B0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80339550 00302B10  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 80339554 00302B14  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80339558 00302B18  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 8033955C 00302B1C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80339560 00302B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80339564 00302B24  7C 08 03 A6 */	mtlr r0
/* 80339568 00302B28  38 21 00 30 */	addi r1, r1, 0x30
/* 8033956C 00302B2C  4E 80 00 20 */	blr
.endfn func_80339500

.fn func_80339570, global
/* 80339570 00302B30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80339574 00302B34  7C 08 02 A6 */	mflr r0
/* 80339578 00302B38  90 01 00 44 */	stw r0, 0x44(r1)
/* 8033957C 00302B3C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80339580 00302B40  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 80339584 00302B44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80339588 00302B48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8033958C 00302B4C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80339590 00302B50  7C 9D 23 78 */	mr r29, r4
/* 80339594 00302B54  83 C4 00 00 */	lwz r30, 0x0(r4)
/* 80339598 00302B58  7F C3 F3 78 */	mr r3, r30
/* 8033959C 00302B5C  48 00 08 75 */	bl func_80339E10
/* 803395A0 00302B60  2C 03 00 00 */	cmpwi r3, 0x0
/* 803395A4 00302B64  7C 7F 1B 78 */	mr r31, r3
/* 803395A8 00302B68  40 81 00 9C */	ble .L_80339644
/* 803395AC 00302B6C  7F C3 F3 78 */	mr r3, r30
/* 803395B0 00302B70  4B FF E7 81 */	bl func_80337D30
/* 803395B4 00302B74  2C 03 00 00 */	cmpwi r3, 0x0
/* 803395B8 00302B78  41 82 00 14 */	beq .L_803395CC
/* 803395BC 00302B7C  7F C3 F3 78 */	mr r3, r30
/* 803395C0 00302B80  4B FF E7 81 */	bl func_80337D40
/* 803395C4 00302B84  FF E0 08 90 */	fmr f31, f1
/* 803395C8 00302B88  48 00 00 10 */	b .L_803395D8
.L_803395CC:
/* 803395CC 00302B8C  7F C3 F3 78 */	mr r3, r30
/* 803395D0 00302B90  4B FF E6 11 */	bl func_80337BE0
/* 803395D4 00302B94  FF E0 08 90 */	fmr f31, f1
.L_803395D8:
/* 803395D8 00302B98  7F C3 F3 78 */	mr r3, r30
/* 803395DC 00302B9C  4B FF E9 05 */	bl func_80337EE0
/* 803395E0 00302BA0  3C 00 43 30 */	lis r0, 0x4330
/* 803395E4 00302BA4  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 803395E8 00302BA8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803395EC 00302BAC  3C 80 80 52 */	lis r4, lbl_80518B38@ha
/* 803395F0 00302BB0  C8 44 8B 38 */	lfd f2, lbl_80518B38@l(r4)
/* 803395F4 00302BB4  7F C3 F3 78 */	mr r3, r30
/* 803395F8 00302BB8  90 01 00 08 */	stw r0, 0x8(r1)
/* 803395FC 00302BBC  C0 7D 00 08 */	lfs f3, 0x8(r29)
/* 80339600 00302BC0  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 80339604 00302BC4  EC 21 18 28 */	fsubs f1, f1, f3
/* 80339608 00302BC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8033960C 00302BCC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80339610 00302BD0  EC 80 07 F2 */	fmuls f4, f0, f31
/* 80339614 00302BD4  EC 01 20 24 */	fdivs f0, f1, f4
/* 80339618 00302BD8  FC 00 00 1E */	fctiwz f0, f0
/* 8033961C 00302BDC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80339620 00302BE0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80339624 00302BE4  38 04 00 01 */	addi r0, r4, 0x1
/* 80339628 00302BE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8033962C 00302BEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80339630 00302BF0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80339634 00302BF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80339638 00302BF8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8033963C 00302BFC  EC 23 00 2A */	fadds f1, f3, f0
/* 80339640 00302C00  4B FF E8 61 */	bl func_80337EA0
.L_80339644:
/* 80339644 00302C04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80339648 00302C08  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8033964C 00302C0C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80339650 00302C10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80339654 00302C14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80339658 00302C18  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8033965C 00302C1C  7C 08 03 A6 */	mtlr r0
/* 80339660 00302C20  38 21 00 40 */	addi r1, r1, 0x40
/* 80339664 00302C24  4E 80 00 20 */	blr
.endfn func_80339570
/* 80339668 00302C28  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8033966C 00302C2C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# nw4hbm::ut::TagProcessorBase_w_::TagProcessorBase_w_()
.fn __ct__Q36nw4hbm2ut19TagProcessorBase_w_Fv, global
/* 80339670 00302C30  3C 80 80 55 */	lis r4, __vt__8054EE70@ha
/* 80339674 00302C34  38 84 EE 70 */	addi r4, r4, __vt__8054EE70@l
/* 80339678 00302C38  90 83 00 00 */	stw r4, 0x0(r3)
/* 8033967C 00302C3C  4E 80 00 20 */	blr
.endfn __ct__Q36nw4hbm2ut19TagProcessorBase_w_Fv

.fn func_80339680, global
/* 80339680 00302C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339684 00302C44  7C 08 02 A6 */	mflr r0
/* 80339688 00302C48  2C 03 00 00 */	cmpwi r3, 0x0
/* 8033968C 00302C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80339690 00302C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339694 00302C54  7C 7F 1B 78 */	mr r31, r3
/* 80339698 00302C58  41 82 00 10 */	beq .L_803396A8
/* 8033969C 00302C5C  2C 04 00 00 */	cmpwi r4, 0x0
/* 803396A0 00302C60  40 81 00 08 */	ble .L_803396A8
/* 803396A4 00302C64  48 0F B5 89 */	bl __dl__FPv
.L_803396A8:
/* 803396A8 00302C68  7F E3 FB 78 */	mr r3, r31
/* 803396AC 00302C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803396B0 00302C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803396B4 00302C74  7C 08 03 A6 */	mtlr r0
/* 803396B8 00302C78  38 21 00 10 */	addi r1, r1, 0x10
/* 803396BC 00302C7C  4E 80 00 20 */	blr
.endfn func_80339680

.fn func_803396C0, global
/* 803396C0 00302C80  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803396C4 00302C84  7C 08 02 A6 */	mflr r0
/* 803396C8 00302C88  2C 04 00 0A */	cmpwi r4, 0xa
/* 803396CC 00302C8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 803396D0 00302C90  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803396D4 00302C94  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 803396D8 00302C98  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 803396DC 00302C9C  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 803396E0 00302CA0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803396E4 00302CA4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803396E8 00302CA8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803396EC 00302CAC  7C BD 2B 78 */	mr r29, r5
/* 803396F0 00302CB0  41 82 00 10 */	beq .L_80339700
/* 803396F4 00302CB4  2C 04 00 09 */	cmpwi r4, 0x9
/* 803396F8 00302CB8  41 82 00 3C */	beq .L_80339734
/* 803396FC 00302CBC  48 00 00 F0 */	b .L_803397EC
.L_80339700:
/* 80339700 00302CC0  83 E5 00 00 */	lwz r31, 0x0(r5)
/* 80339704 00302CC4  C3 C5 00 08 */	lfs f30, 0x8(r5)
/* 80339708 00302CC8  7F E3 FB 78 */	mr r3, r31
/* 8033970C 00302CCC  48 00 2F E5 */	bl func_8033C6F0
/* 80339710 00302CD0  FF E0 08 90 */	fmr f31, f1
/* 80339714 00302CD4  7F E3 FB 78 */	mr r3, r31
/* 80339718 00302CD8  4B FF E7 D9 */	bl func_80337EF0
/* 8033971C 00302CDC  EC 41 F8 2A */	fadds f2, f1, f31
/* 80339720 00302CE0  7F E3 FB 78 */	mr r3, r31
/* 80339724 00302CE4  FC 20 F0 90 */	fmr f1, f30
/* 80339728 00302CE8  4B FF E7 69 */	bl func_80337E90
/* 8033972C 00302CEC  38 60 00 03 */	li r3, 0x3
/* 80339730 00302CF0  48 00 00 C0 */	b .L_803397F0
.L_80339734:
/* 80339734 00302CF4  83 C5 00 00 */	lwz r30, 0x0(r5)
/* 80339738 00302CF8  7F C3 F3 78 */	mr r3, r30
/* 8033973C 00302CFC  48 00 30 95 */	bl func_8033C7D0
/* 80339740 00302D00  2C 03 00 00 */	cmpwi r3, 0x0
/* 80339744 00302D04  7C 7F 1B 78 */	mr r31, r3
/* 80339748 00302D08  40 81 00 9C */	ble .L_803397E4
/* 8033974C 00302D0C  7F C3 F3 78 */	mr r3, r30
/* 80339750 00302D10  4B FF E5 E1 */	bl func_80337D30
/* 80339754 00302D14  2C 03 00 00 */	cmpwi r3, 0x0
/* 80339758 00302D18  41 82 00 14 */	beq .L_8033976C
/* 8033975C 00302D1C  7F C3 F3 78 */	mr r3, r30
/* 80339760 00302D20  4B FF E5 E1 */	bl func_80337D40
/* 80339764 00302D24  FF E0 08 90 */	fmr f31, f1
/* 80339768 00302D28  48 00 00 10 */	b .L_80339778
.L_8033976C:
/* 8033976C 00302D2C  7F C3 F3 78 */	mr r3, r30
/* 80339770 00302D30  4B FF E4 71 */	bl func_80337BE0
/* 80339774 00302D34  FF E0 08 90 */	fmr f31, f1
.L_80339778:
/* 80339778 00302D38  7F C3 F3 78 */	mr r3, r30
/* 8033977C 00302D3C  4B FF E7 65 */	bl func_80337EE0
/* 80339780 00302D40  3C 00 43 30 */	lis r0, 0x4330
/* 80339784 00302D44  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80339788 00302D48  90 61 00 0C */	stw r3, 0xc(r1)
/* 8033978C 00302D4C  3C 80 80 52 */	lis r4, lbl_80518B38@ha
/* 80339790 00302D50  C8 44 8B 38 */	lfd f2, lbl_80518B38@l(r4)
/* 80339794 00302D54  7F C3 F3 78 */	mr r3, r30
/* 80339798 00302D58  90 01 00 08 */	stw r0, 0x8(r1)
/* 8033979C 00302D5C  C0 7D 00 08 */	lfs f3, 0x8(r29)
/* 803397A0 00302D60  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 803397A4 00302D64  EC 81 18 28 */	fsubs f4, f1, f3
/* 803397A8 00302D68  90 01 00 18 */	stw r0, 0x18(r1)
/* 803397AC 00302D6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803397B0 00302D70  EC 20 07 F2 */	fmuls f1, f0, f31
/* 803397B4 00302D74  EC 04 08 24 */	fdivs f0, f4, f1
/* 803397B8 00302D78  FC 00 00 1E */	fctiwz f0, f0
/* 803397BC 00302D7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803397C0 00302D80  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803397C4 00302D84  38 04 00 01 */	addi r0, r4, 0x1
/* 803397C8 00302D88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803397CC 00302D8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803397D0 00302D90  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803397D4 00302D94  EC 00 10 28 */	fsubs f0, f0, f2
/* 803397D8 00302D98  EC 01 00 32 */	fmuls f0, f1, f0
/* 803397DC 00302D9C  EC 23 00 2A */	fadds f1, f3, f0
/* 803397E0 00302DA0  4B FF E6 C1 */	bl func_80337EA0
.L_803397E4:
/* 803397E4 00302DA4  38 60 00 01 */	li r3, 0x1
/* 803397E8 00302DA8  48 00 00 08 */	b .L_803397F0
.L_803397EC:
/* 803397EC 00302DAC  38 60 00 00 */	li r3, 0x0
.L_803397F0:
/* 803397F0 00302DB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803397F4 00302DB4  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 803397F8 00302DB8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803397FC 00302DBC  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 80339800 00302DC0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80339804 00302DC4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80339808 00302DC8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8033980C 00302DCC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80339810 00302DD0  7C 08 03 A6 */	mtlr r0
/* 80339814 00302DD4  38 21 00 50 */	addi r1, r1, 0x50
/* 80339818 00302DD8  4E 80 00 20 */	blr
.endfn func_803396C0
/* 8033981C 00302DDC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn func_80339820, global
/* 80339820 00302DE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80339824 00302DE4  7C 08 02 A6 */	mflr r0
/* 80339828 00302DE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8033982C 00302DEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80339830 00302DF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80339834 00302DF4  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 80339838 00302DF8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8033983C 00302DFC  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 80339840 00302E00  4B F8 09 15 */	bl _savegpr_27
/* 80339844 00302E04  2C 05 00 0A */	cmpwi r5, 0xa
/* 80339848 00302E08  7C 9B 23 78 */	mr r27, r4
/* 8033984C 00302E0C  7C DC 33 78 */	mr r28, r6
/* 80339850 00302E10  41 82 00 10 */	beq .L_80339860
/* 80339854 00302E14  2C 05 00 09 */	cmpwi r5, 0x9
/* 80339858 00302E18  41 82 00 B0 */	beq .L_80339908
/* 8033985C 00302E1C  48 00 01 CC */	b .L_80339A28
.L_80339860:
/* 80339860 00302E20  83 C6 00 00 */	lwz r30, 0x0(r6)
/* 80339864 00302E24  7F C3 F3 78 */	mr r3, r30
/* 80339868 00302E28  4B FF E6 79 */	bl func_80337EE0
/* 8033986C 00302E2C  D0 3B 00 08 */	stfs f1, 0x8(r27)
/* 80339870 00302E30  7F C3 F3 78 */	mr r3, r30
/* 80339874 00302E34  4B FF E6 7D */	bl func_80337EF0
/* 80339878 00302E38  D0 3B 00 04 */	stfs f1, 0x4(r27)
/* 8033987C 00302E3C  83 FC 00 00 */	lwz r31, 0x0(r28)
/* 80339880 00302E40  C3 DC 00 08 */	lfs f30, 0x8(r28)
/* 80339884 00302E44  7F E3 FB 78 */	mr r3, r31
/* 80339888 00302E48  48 00 2E 69 */	bl func_8033C6F0
/* 8033988C 00302E4C  FF E0 08 90 */	fmr f31, f1
/* 80339890 00302E50  7F E3 FB 78 */	mr r3, r31
/* 80339894 00302E54  4B FF E6 5D */	bl func_80337EF0
/* 80339898 00302E58  EC 41 F8 2A */	fadds f2, f1, f31
/* 8033989C 00302E5C  7F E3 FB 78 */	mr r3, r31
/* 803398A0 00302E60  FC 20 F0 90 */	fmr f1, f30
/* 803398A4 00302E64  4B FF E5 ED */	bl func_80337E90
/* 803398A8 00302E68  7F C3 F3 78 */	mr r3, r30
/* 803398AC 00302E6C  4B FF E6 35 */	bl func_80337EE0
/* 803398B0 00302E70  D0 3B 00 00 */	stfs f1, 0x0(r27)
/* 803398B4 00302E74  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 803398B8 00302E78  4B FF E3 99 */	bl func_80337C50
/* 803398BC 00302E7C  FF E0 08 90 */	fmr f31, f1
/* 803398C0 00302E80  7F C3 F3 78 */	mr r3, r30
/* 803398C4 00302E84  4B FF E6 2D */	bl func_80337EF0
/* 803398C8 00302E88  EC 01 F8 2A */	fadds f0, f1, f31
/* 803398CC 00302E8C  C0 DB 00 04 */	lfs f6, 0x4(r27)
/* 803398D0 00302E90  C0 FB 00 00 */	lfs f7, 0x0(r27)
/* 803398D4 00302E94  38 60 00 03 */	li r3, 0x3
/* 803398D8 00302E98  C0 BB 00 08 */	lfs f5, 0x8(r27)
/* 803398DC 00302E9C  EC 40 30 28 */	fsubs f2, f0, f6
/* 803398E0 00302EA0  EC 65 38 28 */	fsubs f3, f5, f7
/* 803398E4 00302EA4  FC 22 01 AE */	fsel f1, f2, f6, f0
/* 803398E8 00302EA8  FC 83 29 EE */	fsel f4, f3, f7, f5
/* 803398EC 00302EAC  FC 63 39 6E */	fsel f3, f3, f5, f7
/* 803398F0 00302EB0  D0 3B 00 04 */	stfs f1, 0x4(r27)
/* 803398F4 00302EB4  FC 02 30 2E */	fsel f0, f2, f0, f6
/* 803398F8 00302EB8  D0 9B 00 00 */	stfs f4, 0x0(r27)
/* 803398FC 00302EBC  D0 7B 00 08 */	stfs f3, 0x8(r27)
/* 80339900 00302EC0  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 80339904 00302EC4  48 00 01 28 */	b .L_80339A2C
.L_80339908:
/* 80339908 00302EC8  83 A6 00 00 */	lwz r29, 0x0(r6)
/* 8033990C 00302ECC  7F A3 EB 78 */	mr r3, r29
/* 80339910 00302ED0  4B FF E5 D1 */	bl func_80337EE0
/* 80339914 00302ED4  D0 3B 00 00 */	stfs f1, 0x0(r27)
/* 80339918 00302ED8  83 DC 00 00 */	lwz r30, 0x0(r28)
/* 8033991C 00302EDC  7F C3 F3 78 */	mr r3, r30
/* 80339920 00302EE0  48 00 2E B1 */	bl func_8033C7D0
/* 80339924 00302EE4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80339928 00302EE8  7C 7F 1B 78 */	mr r31, r3
/* 8033992C 00302EEC  40 81 00 9C */	ble .L_803399C8
/* 80339930 00302EF0  7F C3 F3 78 */	mr r3, r30
/* 80339934 00302EF4  4B FF E3 FD */	bl func_80337D30
/* 80339938 00302EF8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8033993C 00302EFC  41 82 00 14 */	beq .L_80339950
/* 80339940 00302F00  7F C3 F3 78 */	mr r3, r30
/* 80339944 00302F04  4B FF E3 FD */	bl func_80337D40
/* 80339948 00302F08  FF E0 08 90 */	fmr f31, f1
/* 8033994C 00302F0C  48 00 00 10 */	b .L_8033995C
.L_80339950:
/* 80339950 00302F10  7F C3 F3 78 */	mr r3, r30
/* 80339954 00302F14  4B FF E2 8D */	bl func_80337BE0
/* 80339958 00302F18  FF E0 08 90 */	fmr f31, f1
.L_8033995C:
/* 8033995C 00302F1C  7F C3 F3 78 */	mr r3, r30
/* 80339960 00302F20  4B FF E5 81 */	bl func_80337EE0
/* 80339964 00302F24  3C 00 43 30 */	lis r0, 0x4330
/* 80339968 00302F28  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 8033996C 00302F2C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80339970 00302F30  3C 80 80 52 */	lis r4, lbl_80518B38@ha
/* 80339974 00302F34  C8 44 8B 38 */	lfd f2, lbl_80518B38@l(r4)
/* 80339978 00302F38  7F C3 F3 78 */	mr r3, r30
/* 8033997C 00302F3C  90 01 00 08 */	stw r0, 0x8(r1)
/* 80339980 00302F40  C0 7C 00 08 */	lfs f3, 0x8(r28)
/* 80339984 00302F44  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 80339988 00302F48  EC 81 18 28 */	fsubs f4, f1, f3
/* 8033998C 00302F4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80339990 00302F50  EC 00 10 28 */	fsubs f0, f0, f2
/* 80339994 00302F54  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80339998 00302F58  EC 04 08 24 */	fdivs f0, f4, f1
/* 8033999C 00302F5C  FC 00 00 1E */	fctiwz f0, f0
/* 803399A0 00302F60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803399A4 00302F64  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803399A8 00302F68  38 04 00 01 */	addi r0, r4, 0x1
/* 803399AC 00302F6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803399B0 00302F70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803399B4 00302F74  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803399B8 00302F78  EC 00 10 28 */	fsubs f0, f0, f2
/* 803399BC 00302F7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803399C0 00302F80  EC 23 00 2A */	fadds f1, f3, f0
/* 803399C4 00302F84  4B FF E4 DD */	bl func_80337EA0
.L_803399C8:
/* 803399C8 00302F88  7F A3 EB 78 */	mr r3, r29
/* 803399CC 00302F8C  4B FF E5 15 */	bl func_80337EE0
/* 803399D0 00302F90  D0 3B 00 08 */	stfs f1, 0x8(r27)
/* 803399D4 00302F94  7F A3 EB 78 */	mr r3, r29
/* 803399D8 00302F98  4B FF E5 19 */	bl func_80337EF0
/* 803399DC 00302F9C  D0 3B 00 04 */	stfs f1, 0x4(r27)
/* 803399E0 00302FA0  7F A3 EB 78 */	mr r3, r29
/* 803399E4 00302FA4  4B FF E2 6D */	bl func_80337C50
/* 803399E8 00302FA8  C0 5B 00 04 */	lfs f2, 0x4(r27)
/* 803399EC 00302FAC  38 60 00 01 */	li r3, 0x1
/* 803399F0 00302FB0  C0 DB 00 00 */	lfs f6, 0x0(r27)
/* 803399F4 00302FB4  EC 02 08 2A */	fadds f0, f2, f1
/* 803399F8 00302FB8  C0 9B 00 08 */	lfs f4, 0x8(r27)
/* 803399FC 00302FBC  EC 24 30 28 */	fsubs f1, f4, f6
/* 80339A00 00302FC0  EC 60 10 28 */	fsubs f3, f0, f2
/* 80339A04 00302FC4  FC A1 21 AE */	fsel f5, f1, f6, f4
/* 80339A08 00302FC8  FC 81 31 2E */	fsel f4, f1, f4, f6
/* 80339A0C 00302FCC  FC 23 00 AE */	fsel f1, f3, f2, f0
/* 80339A10 00302FD0  D0 BB 00 00 */	stfs f5, 0x0(r27)
/* 80339A14 00302FD4  FC 03 10 2E */	fsel f0, f3, f0, f2
/* 80339A18 00302FD8  D0 9B 00 08 */	stfs f4, 0x8(r27)
/* 80339A1C 00302FDC  D0 3B 00 04 */	stfs f1, 0x4(r27)
/* 80339A20 00302FE0  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 80339A24 00302FE4  48 00 00 08 */	b .L_80339A2C
.L_80339A28:
/* 80339A28 00302FE8  38 60 00 00 */	li r3, 0x0
.L_80339A2C:
/* 80339A2C 00302FEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80339A30 00302FF0  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 80339A34 00302FF4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80339A38 00302FF8  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 80339A3C 00302FFC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80339A40 00303000  4B F8 07 61 */	bl _restgpr_27
/* 80339A44 00303004  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80339A48 00303008  7C 08 03 A6 */	mtlr r0
/* 80339A4C 0030300C  38 21 00 60 */	addi r1, r1, 0x60
/* 80339A50 00303010  4E 80 00 20 */	blr
.endfn func_80339820
/* 80339A54 00303014  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339A58 00303018  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339A5C 0030301C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn func_80339A60, global
/* 80339A60 00303020  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80339A64 00303024  7C 08 02 A6 */	mflr r0
/* 80339A68 00303028  90 01 00 34 */	stw r0, 0x34(r1)
/* 80339A6C 0030302C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80339A70 00303030  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 80339A74 00303034  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80339A78 00303038  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 80339A7C 0030303C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339A80 00303040  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 80339A84 00303044  C3 C4 00 08 */	lfs f30, 0x8(r4)
/* 80339A88 00303048  7F E3 FB 78 */	mr r3, r31
/* 80339A8C 0030304C  48 00 2C 65 */	bl func_8033C6F0
/* 80339A90 00303050  FF E0 08 90 */	fmr f31, f1
/* 80339A94 00303054  7F E3 FB 78 */	mr r3, r31
/* 80339A98 00303058  4B FF E4 59 */	bl func_80337EF0
/* 80339A9C 0030305C  EC 41 F8 2A */	fadds f2, f1, f31
/* 80339AA0 00303060  7F E3 FB 78 */	mr r3, r31
/* 80339AA4 00303064  FC 20 F0 90 */	fmr f1, f30
/* 80339AA8 00303068  4B FF E3 E9 */	bl func_80337E90
/* 80339AAC 0030306C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80339AB0 00303070  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 80339AB4 00303074  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80339AB8 00303078  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 80339ABC 0030307C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80339AC0 00303080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80339AC4 00303084  7C 08 03 A6 */	mtlr r0
/* 80339AC8 00303088  38 21 00 30 */	addi r1, r1, 0x30
/* 80339ACC 0030308C  4E 80 00 20 */	blr
.endfn func_80339A60

.fn func_80339AD0, global
/* 80339AD0 00303090  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80339AD4 00303094  7C 08 02 A6 */	mflr r0
/* 80339AD8 00303098  90 01 00 44 */	stw r0, 0x44(r1)
/* 80339ADC 0030309C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80339AE0 003030A0  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 80339AE4 003030A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80339AE8 003030A8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80339AEC 003030AC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80339AF0 003030B0  7C 9D 23 78 */	mr r29, r4
/* 80339AF4 003030B4  83 C4 00 00 */	lwz r30, 0x0(r4)
/* 80339AF8 003030B8  7F C3 F3 78 */	mr r3, r30
/* 80339AFC 003030BC  48 00 2C D5 */	bl func_8033C7D0
/* 80339B00 003030C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80339B04 003030C4  7C 7F 1B 78 */	mr r31, r3
/* 80339B08 003030C8  40 81 00 9C */	ble .L_80339BA4
/* 80339B0C 003030CC  7F C3 F3 78 */	mr r3, r30
/* 80339B10 003030D0  4B FF E2 21 */	bl func_80337D30
/* 80339B14 003030D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80339B18 003030D8  41 82 00 14 */	beq .L_80339B2C
/* 80339B1C 003030DC  7F C3 F3 78 */	mr r3, r30
/* 80339B20 003030E0  4B FF E2 21 */	bl func_80337D40
/* 80339B24 003030E4  FF E0 08 90 */	fmr f31, f1
/* 80339B28 003030E8  48 00 00 10 */	b .L_80339B38
.L_80339B2C:
/* 80339B2C 003030EC  7F C3 F3 78 */	mr r3, r30
/* 80339B30 003030F0  4B FF E0 B1 */	bl func_80337BE0
/* 80339B34 003030F4  FF E0 08 90 */	fmr f31, f1
.L_80339B38:
/* 80339B38 003030F8  7F C3 F3 78 */	mr r3, r30
/* 80339B3C 003030FC  4B FF E3 A5 */	bl func_80337EE0
/* 80339B40 00303100  3C 00 43 30 */	lis r0, 0x4330
/* 80339B44 00303104  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80339B48 00303108  90 61 00 0C */	stw r3, 0xc(r1)
/* 80339B4C 0030310C  3C 80 80 52 */	lis r4, lbl_80518B38@ha
/* 80339B50 00303110  C8 44 8B 38 */	lfd f2, lbl_80518B38@l(r4)
/* 80339B54 00303114  7F C3 F3 78 */	mr r3, r30
/* 80339B58 00303118  90 01 00 08 */	stw r0, 0x8(r1)
/* 80339B5C 0030311C  C0 7D 00 08 */	lfs f3, 0x8(r29)
/* 80339B60 00303120  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 80339B64 00303124  EC 21 18 28 */	fsubs f1, f1, f3
/* 80339B68 00303128  90 01 00 18 */	stw r0, 0x18(r1)
/* 80339B6C 0030312C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80339B70 00303130  EC 80 07 F2 */	fmuls f4, f0, f31
/* 80339B74 00303134  EC 01 20 24 */	fdivs f0, f1, f4
/* 80339B78 00303138  FC 00 00 1E */	fctiwz f0, f0
/* 80339B7C 0030313C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80339B80 00303140  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80339B84 00303144  38 04 00 01 */	addi r0, r4, 0x1
/* 80339B88 00303148  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80339B8C 0030314C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80339B90 00303150  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80339B94 00303154  EC 00 10 28 */	fsubs f0, f0, f2
/* 80339B98 00303158  EC 04 00 32 */	fmuls f0, f4, f0
/* 80339B9C 0030315C  EC 23 00 2A */	fadds f1, f3, f0
/* 80339BA0 00303160  4B FF E3 01 */	bl func_80337EA0
.L_80339BA4:
/* 80339BA4 00303164  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80339BA8 00303168  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 80339BAC 0030316C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80339BB0 00303170  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80339BB4 00303174  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80339BB8 00303178  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80339BBC 0030317C  7C 08 03 A6 */	mtlr r0
/* 80339BC0 00303180  38 21 00 40 */	addi r1, r1, 0x40
/* 80339BC4 00303184  4E 80 00 20 */	blr
.endfn func_80339AD0
/* 80339BC8 00303188  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339BCC 0030318C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8
.global lbl_80518B38
lbl_80518B38:
	.4byte 0x43300000
	.4byte 0x80000000

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.global __vt__8054EE70
__vt__8054EE70:
	.4byte lbl_8054EEB0
	.4byte 0x00000000
	.4byte func_80339680
	.4byte func_803396C0
	.4byte func_80339820
.global lbl_8054EE84
lbl_8054EE84:
	.4byte 0x6E773468
	.4byte 0x626D3A3A
	.4byte 0x75743A3A
	.4byte 0x54616750
	.4byte 0x726F6365
	.4byte 0x73736F72
	.4byte 0x42617365
	.4byte 0x3C776368
	.4byte 0x61725F74
	.4byte 0x3E000000
	.4byte 0x00000000
.global lbl_8054EEB0
lbl_8054EEB0:
	.4byte lbl_8054EE84
	.4byte 0x00000000
.global lbl_8054EEB8
lbl_8054EEB8:
	.4byte lbl_8054EEF0
	.4byte 0x00000000
	.4byte __dt__Q36nw4hbm2ut19TagProcessorBase_c_Fv
	.4byte func_80339160
	.4byte func_803392C0
.global lbl_8054EECC
lbl_8054EECC:
	.4byte 0x6E773468
	.4byte 0x626D3A3A
	.4byte 0x75743A3A
	.4byte 0x54616750
	.4byte 0x726F6365
	.4byte 0x73736F72
	.4byte 0x42617365
	.4byte 0x3C636861
	.4byte 0x723E0000
.global lbl_8054EEF0
lbl_8054EEF0:
	.4byte lbl_8054EECC
	.4byte 0x00000000
