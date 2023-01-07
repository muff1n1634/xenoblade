.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global PSQUATMultiply
PSQUATMultiply:
/* 8034E2C0 00317880  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8034E2C4 00317884  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8034E2C8 00317888  10 A0 00 50 */	ps_neg f5, f0
/* 8034E2CC 0031788C  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 8034E2D0 00317890  10 C0 08 50 */	ps_neg f6, f1
/* 8034E2D4 00317894  E0 64 00 08 */	psq_l f3, 8(r4), 0, qr0
/* 8034E2D8 00317898  10 E1 00 98 */	ps_muls0 f7, f1, f2
/* 8034E2DC 0031789C  10 85 04 60 */	ps_merge01 f4, f5, f0
/* 8034E2E0 003178A0  10 26 0C 60 */	ps_merge01 f1, f6, f1
/* 8034E2E4 003178A4  10 A5 00 98 */	ps_muls0 f5, f5, f2
/* 8034E2E8 003178A8  11 04 00 9A */	ps_muls1 f8, f4, f2
/* 8034E2EC 003178AC  10 E4 38 DC */	ps_madds0 f7, f4, f3, f7
/* 8034E2F0 003178B0  10 41 00 9A */	ps_muls1 f2, f1, f2
/* 8034E2F4 003178B4  10 A1 28 DC */	ps_madds0 f5, f1, f3, f5
/* 8034E2F8 003178B8  10 E7 3C A0 */	ps_merge10 f7, f7, f7
/* 8034E2FC 003178BC  10 40 10 DE */	ps_madds1 f2, f0, f3, f2
/* 8034E300 003178C0  10 A5 2C A0 */	ps_merge10 f5, f5, f5
/* 8034E304 003178C4  11 06 40 DE */	ps_madds1 f8, f6, f3, f8
/* 8034E308 003178C8  10 E7 10 2A */	ps_add f7, f7, f2
/* 8034E30C 003178CC  10 A5 40 28 */	ps_sub f5, f5, f8
/* 8034E310 003178D0  F0 E5 00 00 */	psq_st f7, 0(r5), 0, qr0
/* 8034E314 003178D4  F0 A5 00 08 */	psq_st f5, 8(r5), 0, qr0
/* 8034E318 003178D8  4E 80 00 20 */	blr 

.balign 16, 0
.global PSQUATScale
PSQUATScale:
/* 8034E320 003178E0  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8034E324 003178E4  E0 43 00 08 */	psq_l f2, 8(r3), 0, qr0
/* 8034E328 003178E8  10 00 00 58 */	ps_muls0 f0, f0, f1
/* 8034E32C 003178EC  10 42 00 58 */	ps_muls0 f2, f2, f1
/* 8034E330 003178F0  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8034E334 003178F4  F0 44 00 08 */	psq_st f2, 8(r4), 0, qr0
/* 8034E338 003178F8  4E 80 00 20 */	blr 

.balign 16, 0
.global PSQUATDotProduct
PSQUATDotProduct:
/* 8034E340 00317900  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8034E344 00317904  E0 24 00 00 */	psq_l f1, 0(r4), 0, qr0
/* 8034E348 00317908  E0 43 00 08 */	psq_l f2, 8(r3), 0, qr0
/* 8034E34C 0031790C  10 20 00 72 */	ps_mul f1, f0, f1
/* 8034E350 00317910  E0 04 00 08 */	psq_l f0, 8(r4), 0, qr0
/* 8034E354 00317914  10 22 08 3A */	ps_madd f1, f2, f0, f1
/* 8034E358 00317918  10 21 08 54 */	ps_sum0 f1, f1, f1, f1
/* 8034E35C 0031791C  4E 80 00 20 */	blr 

.balign 16, 0
.global PSQUATNormalize
PSQUATNormalize:
/* 8034E360 00317920  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8034E364 00317924  C0 82 BD F0 */	lfs f4, float_8066C170@sda21(r2)
/* 8034E368 00317928  10 40 00 32 */	ps_mul f2, f0, f0
/* 8034E36C 0031792C  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8034E370 00317930  C0 E2 BD FC */	lfs f7, float_8066C17C@sda21(r2)
/* 8034E374 00317934  10 A4 20 28 */	ps_sub f5, f4, f4
/* 8034E378 00317938  C1 02 BE 00 */	lfs f8, float_8066C180@sda21(r2)
/* 8034E37C 0031793C  10 41 10 7A */	ps_madd f2, f1, f1, f2
/* 8034E380 00317940  10 42 10 94 */	ps_sum0 f2, f2, f2, f2
/* 8034E384 00317944  FC 60 10 34 */	frsqrte f3, f2
/* 8034E388 00317948  10 82 20 28 */	ps_sub f4, f2, f4
/* 8034E38C 0031794C  FC C3 00 F2 */	fmul f6, f3, f3
/* 8034E390 00317950  FC 63 01 F2 */	fmul f3, f3, f7
/* 8034E394 00317954  FC C6 40 BC */	fnmsub f6, f6, f2, f8
/* 8034E398 00317958  FC 66 00 F2 */	fmul f3, f6, f3
/* 8034E39C 0031795C  10 64 28 EE */	ps_sel f3, f4, f3, f5
/* 8034E3A0 00317960  10 00 00 D8 */	ps_muls0 f0, f0, f3
/* 8034E3A4 00317964  10 21 00 D8 */	ps_muls0 f1, f1, f3
/* 8034E3A8 00317968  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8034E3AC 0031796C  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 8034E3B0 00317970  4E 80 00 20 */	blr

.balign 16, 0
.global C_QUATMtx
C_QUATMtx:
/* 8034E3C0 00317980  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034E3C4 00317984  7C 08 02 A6 */	mflr r0
/* 8034E3C8 00317988  90 01 00 44 */	stw r0, 0x44(r1)
/* 8034E3CC 0031798C  39 61 00 40 */	addi r11, r1, 0x40
/* 8034E3D0 00317990  4B F6 BD 7D */	bl _savegpr_25
/* 8034E3D4 00317994  C0 64 00 00 */	lfs f3, 0(r4)
/* 8034E3D8 00317998  3C C0 80 52 */	lis r6, lbl_80518BB8@ha
/* 8034E3DC 0031799C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 8034E3E0 003179A0  7C 7F 1B 78 */	mr r31, r3
/* 8034E3E4 003179A4  84 A6 8B B8 */	lwzu r5, lbl_80518BB8@l(r6)
/* 8034E3E8 003179A8  7C 99 23 78 */	mr r25, r4
/* 8034E3EC 003179AC  EC 23 10 2A */	fadds f1, f3, f2
/* 8034E3F0 003179B0  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8034E3F4 003179B4  80 66 00 04 */	lwz r3, 4(r6)
/* 8034E3F8 003179B8  80 06 00 08 */	lwz r0, 8(r6)
/* 8034E3FC 003179BC  EC 20 08 2A */	fadds f1, f0, f1
/* 8034E400 003179C0  C0 02 BD F8 */	lfs f0, float_8066C178@sda21(r2)
/* 8034E404 003179C4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8034E408 003179C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8034E40C 003179CC  90 61 00 18 */	stw r3, 0x18(r1)
/* 8034E410 003179D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8034E414 003179D4  40 81 00 64 */	ble .L_8034E478
/* 8034E418 003179D8  C0 02 BD F4 */	lfs f0, float_8066C174@sda21(r2)
/* 8034E41C 003179DC  EC 20 08 2A */	fadds f1, f0, f1
/* 8034E420 003179E0  4B F7 D0 49 */	bl sqrt
/* 8034E424 003179E4  FC E0 08 18 */	frsp f7, f1
/* 8034E428 003179E8  C0 C2 BD FC */	lfs f6, float_8066C17C@sda21(r2)
/* 8034E42C 003179EC  C0 B9 00 24 */	lfs f5, 0x24(r25)
/* 8034E430 003179F0  C0 99 00 18 */	lfs f4, 0x18(r25)
/* 8034E434 003179F4  ED 06 38 24 */	fdivs f8, f6, f7
/* 8034E438 003179F8  C0 79 00 08 */	lfs f3, 8(r25)
/* 8034E43C 003179FC  C0 59 00 20 */	lfs f2, 0x20(r25)
/* 8034E440 00317A00  C0 39 00 10 */	lfs f1, 0x10(r25)
/* 8034E444 00317A04  C0 19 00 04 */	lfs f0, 4(r25)
/* 8034E448 00317A08  EC 85 20 28 */	fsubs f4, f5, f4
/* 8034E44C 00317A0C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8034E450 00317A10  EC 01 00 28 */	fsubs f0, f1, f0
/* 8034E454 00317A14  EC A6 01 F2 */	fmuls f5, f6, f7
/* 8034E458 00317A18  EC 68 01 32 */	fmuls f3, f8, f4
/* 8034E45C 00317A1C  EC 28 00 B2 */	fmuls f1, f8, f2
/* 8034E460 00317A20  D0 BF 00 0C */	stfs f5, 0xc(r31)
/* 8034E464 00317A24  EC 08 00 32 */	fmuls f0, f8, f0
/* 8034E468 00317A28  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8034E46C 00317A2C  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8034E470 00317A30  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8034E474 00317A34  48 00 01 00 */	b .L_8034E574
.L_8034E478:
/* 8034E478 00317A38  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8034E47C 00317A3C  38 A0 00 00 */	li r5, 0
/* 8034E480 00317A40  40 81 00 08 */	ble .L_8034E488
/* 8034E484 00317A44  38 A0 00 01 */	li r5, 1
.L_8034E488:
/* 8034E488 00317A48  54 A0 20 36 */	slwi r0, r5, 4
/* 8034E48C 00317A4C  54 A3 10 3A */	slwi r3, r5, 2
/* 8034E490 00317A50  7C 04 02 14 */	add r0, r4, r0
/* 8034E494 00317A54  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8034E498 00317A58  7C 03 04 2E */	lfsx f0, r3, r0
/* 8034E49C 00317A5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8034E4A0 00317A60  40 81 00 08 */	ble .L_8034E4A8
/* 8034E4A4 00317A64  38 A0 00 02 */	li r5, 2
.L_8034E4A8:
/* 8034E4A8 00317A68  54 BA 10 3A */	slwi r26, r5, 2
/* 8034E4AC 00317A6C  38 61 00 14 */	addi r3, r1, 0x14
/* 8034E4B0 00317A70  7C C3 D0 2E */	lwzx r6, r3, r26
/* 8034E4B4 00317A74  54 A0 20 36 */	slwi r0, r5, 4
/* 8034E4B8 00317A78  7F 24 02 14 */	add r25, r4, r0
/* 8034E4BC 00317A7C  C0 02 BD F4 */	lfs f0, float_8066C174@sda21(r2)
/* 8034E4C0 00317A80  54 DC 10 3A */	slwi r28, r6, 2
/* 8034E4C4 00317A84  54 C0 20 36 */	slwi r0, r6, 4
/* 8034E4C8 00317A88  7C 63 E0 2E */	lwzx r3, r3, r28
/* 8034E4CC 00317A8C  7F A4 02 14 */	add r29, r4, r0
/* 8034E4D0 00317A90  7C 7D E4 2E */	lfsx f3, r29, r28
/* 8034E4D4 00317A94  54 60 20 36 */	slwi r0, r3, 4
/* 8034E4D8 00317A98  54 7E 10 3A */	slwi r30, r3, 2
/* 8034E4DC 00317A9C  7F 64 02 14 */	add r27, r4, r0
/* 8034E4E0 00317AA0  7C 39 D4 2E */	lfsx f1, r25, r26
/* 8034E4E4 00317AA4  7C 5B F4 2E */	lfsx f2, r27, r30
/* 8034E4E8 00317AA8  EC 43 10 2A */	fadds f2, f3, f2
/* 8034E4EC 00317AAC  EC 21 10 28 */	fsubs f1, f1, f2
/* 8034E4F0 00317AB0  EC 20 08 2A */	fadds f1, f0, f1
/* 8034E4F4 00317AB4  4B F7 CF 75 */	bl sqrt
/* 8034E4F8 00317AB8  FC A0 08 18 */	frsp f5, f1
/* 8034E4FC 00317ABC  C0 42 BD FC */	lfs f2, float_8066C17C@sda21(r2)
/* 8034E500 00317AC0  C0 02 BD F8 */	lfs f0, float_8066C178@sda21(r2)
/* 8034E504 00317AC4  38 61 00 08 */	addi r3, r1, 8
/* 8034E508 00317AC8  EC 22 01 72 */	fmuls f1, f2, f5
/* 8034E50C 00317ACC  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8034E510 00317AD0  7C 23 D5 2E */	stfsx f1, r3, r26
/* 8034E514 00317AD4  41 82 00 08 */	beq .L_8034E51C
/* 8034E518 00317AD8  EC A2 28 24 */	fdivs f5, f2, f5
.L_8034E51C:
/* 8034E51C 00317ADC  7C 59 E4 2E */	lfsx f2, r25, r28
/* 8034E520 00317AE0  38 61 00 08 */	addi r3, r1, 8
/* 8034E524 00317AE4  7C 1D D4 2E */	lfsx f0, r29, r26
/* 8034E528 00317AE8  7C 39 F4 2E */	lfsx f1, r25, r30
/* 8034E52C 00317AEC  EC 42 00 2A */	fadds f2, f2, f0
/* 8034E530 00317AF0  7C 1B D4 2E */	lfsx f0, r27, r26
/* 8034E534 00317AF4  7C 9B E4 2E */	lfsx f4, r27, r28
/* 8034E538 00317AF8  EC 01 00 2A */	fadds f0, f1, f0
/* 8034E53C 00317AFC  7C 7D F4 2E */	lfsx f3, r29, r30
/* 8034E540 00317B00  EC 25 00 B2 */	fmuls f1, f5, f2
/* 8034E544 00317B04  EC 44 18 28 */	fsubs f2, f4, f3
/* 8034E548 00317B08  7C 23 E5 2E */	stfsx f1, r3, r28
/* 8034E54C 00317B0C  EC 05 00 32 */	fmuls f0, f5, f0
/* 8034E550 00317B10  7C 03 F5 2E */	stfsx f0, r3, r30
/* 8034E554 00317B14  EC 65 00 B2 */	fmuls f3, f5, f2
/* 8034E558 00317B18  C0 41 00 08 */	lfs f2, 8(r1)
/* 8034E55C 00317B1C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8034E560 00317B20  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8034E564 00317B24  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 8034E568 00317B28  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8034E56C 00317B2C  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8034E570 00317B30  D0 1F 00 08 */	stfs f0, 8(r31)
.L_8034E574:
/* 8034E574 00317B34  39 61 00 40 */	addi r11, r1, 0x40
/* 8034E578 00317B38  4B F6 BC 21 */	bl _restgpr_25
/* 8034E57C 00317B3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034E580 00317B40  7C 08 03 A6 */	mtlr r0
/* 8034E584 00317B44  38 21 00 40 */	addi r1, r1, 0x40
/* 8034E588 00317B48  4E 80 00 20 */	blr 

.balign 16, 0
.global C_QUATSlerp
C_QUATSlerp:
/* 8034E590 00317B50  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8034E594 00317B54  7C 08 02 A6 */	mflr r0
/* 8034E598 00317B58  C0 83 00 00 */	lfs f4, 0(r3)
/* 8034E59C 00317B5C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8034E5A0 00317B60  C0 64 00 00 */	lfs f3, 0(r4)
/* 8034E5A4 00317B64  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8034E5A8 00317B68  C0 43 00 04 */	lfs f2, 4(r3)
/* 8034E5AC 00317B6C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8034E5B0 00317B70  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8034E5B4 00317B74  FF E0 08 90 */	fmr f31, f1
/* 8034E5B8 00317B78  C0 04 00 04 */	lfs f0, 4(r4)
/* 8034E5BC 00317B7C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8034E5C0 00317B80  EC 02 00 32 */	fmuls f0, f2, f0
/* 8034E5C4 00317B84  C0 83 00 08 */	lfs f4, 8(r3)
/* 8034E5C8 00317B88  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8034E5CC 00317B8C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8034E5D0 00317B90  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8034E5D4 00317B94  EC 84 00 B2 */	fmuls f4, f4, f2
/* 8034E5D8 00317B98  C0 C3 00 0C */	lfs f6, 0xc(r3)
/* 8034E5DC 00317B9C  EC 43 00 2A */	fadds f2, f3, f0
/* 8034E5E0 00317BA0  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 8034E5E4 00317BA4  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 8034E5E8 00317BA8  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 8034E5EC 00317BAC  EC 66 01 72 */	fmuls f3, f6, f5
/* 8034E5F0 00317BB0  C0 02 BD F8 */	lfs f0, float_8066C178@sda21(r2)
/* 8034E5F4 00317BB4  EC 44 10 2A */	fadds f2, f4, f2
/* 8034E5F8 00317BB8  F3 81 00 28 */	psq_st f28, 40(r1), 0, qr0
/* 8034E5FC 00317BBC  C3 C2 BD F4 */	lfs f30, float_8066C174@sda21(r2)
/* 8034E600 00317BC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034E604 00317BC4  EC 43 10 2A */	fadds f2, f3, f2
/* 8034E608 00317BC8  7C BF 2B 78 */	mr r31, r5
/* 8034E60C 00317BCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034E610 00317BD0  7C 9E 23 78 */	mr r30, r4
/* 8034E614 00317BD4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034E618 00317BD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8034E61C 00317BDC  7C 7D 1B 78 */	mr r29, r3
/* 8034E620 00317BE0  40 80 00 0C */	bge .L_8034E62C
/* 8034E624 00317BE4  FC 40 10 50 */	fneg f2, f2
/* 8034E628 00317BE8  FF C0 F0 50 */	fneg f30, f30
.L_8034E62C:
/* 8034E62C 00317BEC  C0 02 BE 04 */	lfs f0, float_8066C184@sda21(r2)
/* 8034E630 00317BF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8034E634 00317BF4  4C 40 13 82 */	cror 2, 0, 2
/* 8034E638 00317BF8  40 82 00 4C */	bne .L_8034E684
/* 8034E63C 00317BFC  FC 20 10 90 */	fmr f1, f2
/* 8034E640 00317C00  4B F7 CB C1 */	bl acos
/* 8034E644 00317C04  FF A0 08 18 */	frsp f29, f1
/* 8034E648 00317C08  FC 20 E8 90 */	fmr f1, f29
/* 8034E64C 00317C0C  4B F7 CA 71 */	bl sin
/* 8034E650 00317C10  C0 02 BD F4 */	lfs f0, float_8066C174@sda21(r2)
/* 8034E654 00317C14  FF 80 08 18 */	frsp f28, f1
/* 8034E658 00317C18  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8034E65C 00317C1C  EC 20 07 72 */	fmuls f1, f0, f29
/* 8034E660 00317C20  4B F7 CA 5D */	bl sin
/* 8034E664 00317C24  FC 00 08 18 */	frsp f0, f1
/* 8034E668 00317C28  EC 3F 07 72 */	fmuls f1, f31, f29
/* 8034E66C 00317C2C  EF E0 E0 24 */	fdivs f31, f0, f28
/* 8034E670 00317C30  4B F7 CA 4D */	bl sin
/* 8034E674 00317C34  FC 00 08 18 */	frsp f0, f1
/* 8034E678 00317C38  EC 00 E0 24 */	fdivs f0, f0, f28
/* 8034E67C 00317C3C  EF DE 00 32 */	fmuls f30, f30, f0
/* 8034E680 00317C40  48 00 00 10 */	b .L_8034E690
.L_8034E684:
/* 8034E684 00317C44  C0 02 BD F4 */	lfs f0, float_8066C174@sda21(r2)
/* 8034E688 00317C48  EF DE 00 72 */	fmuls f30, f30, f1
/* 8034E68C 00317C4C  EF E0 08 28 */	fsubs f31, f0, f1
.L_8034E690:
/* 8034E690 00317C50  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8034E694 00317C54  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8034E698 00317C58  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8034E69C 00317C5C  EC FF 00 32 */	fmuls f7, f31, f0
/* 8034E6A0 00317C60  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8034E6A4 00317C64  EC DE 00 B2 */	fmuls f6, f30, f2
/* 8034E6A8 00317C68  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8034E6AC 00317C6C  EC BF 00 72 */	fmuls f5, f31, f1
/* 8034E6B0 00317C70  EC 9E 00 32 */	fmuls f4, f30, f0
/* 8034E6B4 00317C74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8034E6B8 00317C78  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 8034E6BC 00317C7C  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8034E6C0 00317C80  EC C7 30 2A */	fadds f6, f7, f6
/* 8034E6C4 00317C84  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8034E6C8 00317C88  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8034E6CC 00317C8C  D0 DF 00 00 */	stfs f6, 0(r31)
/* 8034E6D0 00317C90  EC 85 20 2A */	fadds f4, f5, f4
/* 8034E6D4 00317C94  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8034E6D8 00317C98  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8034E6DC 00317C9C  D0 9F 00 04 */	stfs f4, 4(r31)
/* 8034E6E0 00317CA0  EC 43 10 2A */	fadds f2, f3, f2
/* 8034E6E4 00317CA4  EC 01 00 2A */	fadds f0, f1, f0
/* 8034E6E8 00317CA8  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8034E6EC 00317CAC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8034E6F0 00317CB0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8034E6F4 00317CB4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8034E6F8 00317CB8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8034E6FC 00317CBC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8034E700 00317CC0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 8034E704 00317CC4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8034E708 00317CC8  E3 81 00 28 */	psq_l f28, 40(r1), 0, qr0
/* 8034E70C 00317CCC  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 8034E710 00317CD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034E714 00317CD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034E718 00317CD8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034E71C 00317CDC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8034E720 00317CE0  7C 08 03 A6 */	mtlr r0
/* 8034E724 00317CE4  38 21 00 60 */	addi r1, r1, 0x60
/* 8034E728 00317CE8  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_80518BB8
lbl_80518BB8:
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066C170
float_8066C170:
	# ROM: 0x575FD0
	.4byte 0x3727C5AC


.global float_8066C174
float_8066C174:
	# ROM: 0x575FD4
	.float 1.0


.global float_8066C178
float_8066C178:
	# ROM: 0x575FD8
	.4byte 0


.global float_8066C17C
float_8066C17C:
	# ROM: 0x575FDC
	.float 0.5


.global float_8066C180
float_8066C180:
	# ROM: 0x575FE0
	.4byte 0x40400000


.global float_8066C184
float_8066C184:
	# ROM: 0x575FE4
	.4byte 0x3F7FFF58