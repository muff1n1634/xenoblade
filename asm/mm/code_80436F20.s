.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_80436F20, global
/* 80436F20 004004E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80436F24 004004E4  7C 08 02 A6 */	mflr r0
/* 80436F28 004004E8  E0 45 00 00 */	psq_l f2, 0x0(r5), 0, qr0
/* 80436F2C 004004EC  E0 24 00 00 */	psq_l f1, 0x0(r4), 0, qr0
/* 80436F30 004004F0  39 01 00 14 */	addi r8, r1, 0x14
/* 80436F34 004004F4  E0 66 00 00 */	psq_l f3, 0x0(r6), 0, qr0
/* 80436F38 004004F8  38 E1 00 20 */	addi r7, r1, 0x20
/* 80436F3C 004004FC  10 02 08 28 */	ps_sub f0, f2, f1
/* 80436F40 00400500  E0 45 80 08 */	psq_l f2, 0x8(r5), 1, qr0
/* 80436F44 00400504  10 23 08 28 */	ps_sub f1, f3, f1
/* 80436F48 00400508  90 01 00 64 */	stw r0, 0x64(r1)
/* 80436F4C 0040050C  E0 66 80 08 */	psq_l f3, 0x8(r6), 1, qr0
/* 80436F50 00400510  38 01 00 44 */	addi r0, r1, 0x44
/* 80436F54 00400514  F0 07 00 00 */	psq_st f0, 0x0(r7), 0, qr0
/* 80436F58 00400518  38 A1 00 38 */	addi r5, r1, 0x38
/* 80436F5C 0040051C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80436F60 00400520  7C 9F 23 78 */	mr r31, r4
/* 80436F64 00400524  C0 A1 00 20 */	lfs f5, 0x20(r1)
/* 80436F68 00400528  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80436F6C 0040052C  7C 7E 1B 78 */	mr r30, r3
/* 80436F70 00400530  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 80436F74 00400534  7C 03 03 78 */	mr r3, r0
/* 80436F78 00400538  F0 28 00 00 */	psq_st f1, 0x0(r8), 0, qr0
/* 80436F7C 0040053C  E0 24 80 08 */	psq_l f1, 0x8(r4), 1, qr0
/* 80436F80 00400540  7C A4 2B 78 */	mr r4, r5
/* 80436F84 00400544  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80436F88 00400548  38 A1 00 08 */	addi r5, r1, 0x8
/* 80436F8C 0040054C  10 02 08 28 */	ps_sub f0, f2, f1
/* 80436F90 00400550  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80436F94 00400554  10 23 08 28 */	ps_sub f1, f3, f1
/* 80436F98 00400558  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80436F9C 0040055C  F0 07 80 08 */	psq_st f0, 0x8(r7), 1, qr0
/* 80436FA0 00400560  F0 28 80 08 */	psq_st f1, 0x8(r8), 1, qr0
/* 80436FA4 00400564  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 80436FA8 00400568  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80436FAC 0040056C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80436FB0 00400570  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80436FB4 00400574  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80436FB8 00400578  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80436FBC 0040057C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80436FC0 00400580  4B F1 71 B1 */	bl PSVECCrossProduct
/* 80436FC4 00400584  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80436FC8 00400588  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80436FCC 0040058C  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 80436FD0 00400590  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80436FD4 00400594  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80436FD8 00400598  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80436FDC 0040059C  C0 42 C6 E0 */	lfs f2, lbl_8066CA60@sda21(r2)
/* 80436FE0 004005A0  90 1E 00 04 */	stw r0, 0x4(r30)
/* 80436FE4 004005A4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80436FE8 004005A8  C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 80436FEC 004005AC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80436FF0 004005B0  EC 20 00 32 */	fmuls f1, f0, f0
/* 80436FF4 004005B4  90 1E 00 00 */	stw r0, 0x0(r30)
/* 80436FF8 004005B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80436FFC 004005BC  C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 80437000 004005C0  90 1E 00 08 */	stw r0, 0x8(r30)
/* 80437004 004005C4  EC 20 08 3A */	fmadds f1, f0, f0, f1
/* 80437008 004005C8  C0 1E 00 08 */	lfs f0, 0x8(r30)
/* 8043700C 004005CC  EC 00 08 3A */	fmadds f0, f0, f0, f1
/* 80437010 004005D0  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80437014 004005D4  40 82 00 24 */	bne .L_80437038
/* 80437018 004005D8  3C 80 80 66 */	lis r4, lbl_80659DB0@ha
/* 8043701C 004005DC  84 64 9D B0 */	lwzu r3, lbl_80659DB0@l(r4)
/* 80437020 004005E0  80 04 00 04 */	lwz r0, 0x4(r4)
/* 80437024 004005E4  90 1E 00 04 */	stw r0, 0x4(r30)
/* 80437028 004005E8  90 7E 00 00 */	stw r3, 0x0(r30)
/* 8043702C 004005EC  80 04 00 08 */	lwz r0, 0x8(r4)
/* 80437030 004005F0  90 1E 00 08 */	stw r0, 0x8(r30)
/* 80437034 004005F4  48 00 00 10 */	b .L_80437044
.L_80437038:
/* 80437038 004005F8  7F C3 F3 78 */	mr r3, r30
/* 8043703C 004005FC  7F C4 F3 78 */	mr r4, r30
/* 80437040 00400600  4B F1 70 71 */	bl PSVECNormalize
.L_80437044:
/* 80437044 00400604  E0 5F 00 04 */	psq_l f2, 0x4(r31), 0, qr0
/* 80437048 00400608  7F C3 F3 78 */	mr r3, r30
/* 8043704C 0040060C  E0 3E 00 04 */	psq_l f1, 0x4(r30), 0, qr0
/* 80437050 00400610  E0 1F 80 00 */	psq_l f0, 0x0(r31), 1, qr0
/* 80437054 00400614  10 42 00 72 */	ps_mul f2, f2, f1
/* 80437058 00400618  E0 3E 80 00 */	psq_l f1, 0x0(r30), 1, qr0
/* 8043705C 0040061C  10 20 10 7A */	ps_madd f1, f0, f1, f2
/* 80437060 00400620  10 01 10 94 */	ps_sum0 f0, f1, f2, f2
/* 80437064 00400624  FC 00 00 50 */	fneg f0, f0
/* 80437068 00400628  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8043706C 0040062C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80437070 00400630  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80437074 00400634  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80437078 00400638  7C 08 03 A6 */	mtlr r0
/* 8043707C 0040063C  38 21 00 60 */	addi r1, r1, 0x60
/* 80437080 00400640  4E 80 00 20 */	blr
.endfn func_80436F20

.fn func_80437084, global
/* 80437084 00400644  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80437088 00400648  E0 45 00 04 */	psq_l f2, 0x4(r5), 0, qr0
/* 8043708C 0040064C  E0 64 00 04 */	psq_l f3, 0x4(r4), 0, qr0
/* 80437090 00400650  39 01 00 14 */	addi r8, r1, 0x14
/* 80437094 00400654  E0 24 80 00 */	psq_l f1, 0x0(r4), 1, qr0
/* 80437098 00400658  38 E1 00 20 */	addi r7, r1, 0x20
/* 8043709C 0040065C  10 63 00 B2 */	ps_mul f3, f3, f2
/* 804370A0 00400660  E0 05 80 00 */	psq_l f0, 0x0(r5), 1, qr0
/* 804370A4 00400664  E0 C4 00 04 */	psq_l f6, 0x4(r4), 0, qr0
/* 804370A8 00400668  39 21 00 08 */	addi r9, r1, 0x8
/* 804370AC 0040066C  E0 A6 00 04 */	psq_l f5, 0x4(r6), 0, qr0
/* 804370B0 00400670  10 41 18 3A */	ps_madd f2, f1, f0, f3
/* 804370B4 00400674  10 C6 01 72 */	ps_mul f6, f6, f5
/* 804370B8 00400678  E0 86 80 00 */	psq_l f4, 0x0(r6), 1, qr0
/* 804370BC 0040067C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 804370C0 00400680  10 42 18 D4 */	ps_sum0 f2, f2, f3, f3
/* 804370C4 00400684  E0 E6 00 00 */	psq_l f7, 0x0(r6), 0, qr0
/* 804370C8 00400688  10 A1 31 3A */	ps_madd f5, f1, f4, f6
/* 804370CC 0040068C  E0 65 00 00 */	psq_l f3, 0x0(r5), 0, qr0
/* 804370D0 00400690  EC 00 10 2A */	fadds f0, f0, f2
/* 804370D4 00400694  10 25 31 94 */	ps_sum0 f1, f5, f6, f6
/* 804370D8 00400698  FC 00 00 50 */	fneg f0, f0
/* 804370DC 0040069C  EC 20 08 24 */	fdivs f1, f0, f1
/* 804370E0 004006A0  10 07 00 58 */	ps_muls0 f0, f7, f1
/* 804370E4 004006A4  E0 E6 80 08 */	psq_l f7, 0x8(r6), 1, qr0
/* 804370E8 004006A8  F0 08 00 00 */	psq_st f0, 0x0(r8), 0, qr0
/* 804370EC 004006AC  10 07 00 58 */	ps_muls0 f0, f7, f1
/* 804370F0 004006B0  F0 08 80 08 */	psq_st f0, 0x8(r8), 1, qr0
/* 804370F4 004006B4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804370F8 004006B8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804370FC 004006BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80437100 004006C0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80437104 004006C4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80437108 004006C8  E0 27 00 00 */	psq_l f1, 0x0(r7), 0, qr0
/* 8043710C 004006CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80437110 004006D0  10 03 08 2A */	ps_add f0, f3, f1
/* 80437114 004006D4  E0 65 80 08 */	psq_l f3, 0x8(r5), 1, qr0
/* 80437118 004006D8  E0 27 80 08 */	psq_l f1, 0x8(r7), 1, qr0
/* 8043711C 004006DC  F0 09 00 00 */	psq_st f0, 0x0(r9), 0, qr0
/* 80437120 004006E0  10 03 08 2A */	ps_add f0, f3, f1
/* 80437124 004006E4  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 80437128 004006E8  F0 09 80 08 */	psq_st f0, 0x8(r9), 1, qr0
/* 8043712C 004006EC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80437130 004006F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80437134 004006F4  D0 43 00 00 */	stfs f2, 0x0(r3)
/* 80437138 004006F8  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8043713C 004006FC  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 80437140 00400700  38 21 00 30 */	addi r1, r1, 0x30
/* 80437144 00400704  4E 80 00 20 */	blr
.endfn func_80437084

.fn func_80437148, global
/* 80437148 00400708  7C 60 1B 78 */	mr r0, r3
/* 8043714C 0040070C  7C 83 23 78 */	mr r3, r4
/* 80437150 00400710  7C A4 2B 78 */	mr r4, r5
/* 80437154 00400714  7C 05 03 78 */	mr r5, r0
/* 80437158 00400718  4B F1 74 38 */	b C_QUATSlerp
.endfn func_80437148

.fn func_8043715C, global
/* 8043715C 0040071C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80437160 00400720  7C 08 02 A6 */	mflr r0
/* 80437164 00400724  C0 02 C6 E8 */	lfs f0, lbl_8066CA68@sda21(r2)
/* 80437168 00400728  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8043716C 0040072C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80437170 00400730  F3 E1 00 C8 */	psq_st f31, 0xc8(r1), 0, qr0
/* 80437174 00400734  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80437178 00400738  F3 C1 00 B8 */	psq_st f30, 0xb8(r1), 0, qr0
/* 8043717C 0040073C  C3 C4 00 08 */	lfs f30, 0x8(r4)
/* 80437180 00400740  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80437184 00400744  7C 9F 23 78 */	mr r31, r4
/* 80437188 00400748  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8043718C 0040074C  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 80437190 00400750  7C 7E 1B 78 */	mr r30, r3
/* 80437194 00400754  4B FD 3B 99 */	bl SinFIdx__Q24nw4r4mathFf
/* 80437198 00400758  C0 02 C6 E8 */	lfs f0, lbl_8066CA68@sda21(r2)
/* 8043719C 0040075C  FF E0 08 90 */	fmr f31, f1
/* 804371A0 00400760  EC 20 07 B2 */	fmuls f1, f0, f30
/* 804371A4 00400764  4B FD 3B F1 */	bl CosFIdx__Q24nw4r4mathFf
/* 804371A8 00400768  C3 DF 00 00 */	lfs f30, 0x0(r31)
/* 804371AC 0040076C  FC 80 F8 50 */	fneg f4, f31
/* 804371B0 00400770  C0 02 C6 E8 */	lfs f0, lbl_8066CA68@sda21(r2)
/* 804371B4 00400774  C0 62 C6 EC */	lfs f3, lbl_8066CA6C@sda21(r2)
/* 804371B8 00400778  C0 42 C6 F0 */	lfs f2, lbl_8066CA70@sda21(r2)
/* 804371BC 0040077C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 804371C0 00400780  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 804371C4 00400784  EC 20 07 B2 */	fmuls f1, f0, f30
/* 804371C8 00400788  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 804371CC 0040078C  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 804371D0 00400790  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 804371D4 00400794  D3 E1 00 88 */	stfs f31, 0x88(r1)
/* 804371D8 00400798  D0 61 00 90 */	stfs f3, 0x90(r1)
/* 804371DC 0040079C  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 804371E0 004007A0  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 804371E4 004007A4  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 804371E8 004007A8  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 804371EC 004007AC  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 804371F0 004007B0  4B FD 3B 3D */	bl SinFIdx__Q24nw4r4mathFf
/* 804371F4 004007B4  C0 02 C6 E8 */	lfs f0, lbl_8066CA68@sda21(r2)
/* 804371F8 004007B8  FF E0 08 90 */	fmr f31, f1
/* 804371FC 004007BC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80437200 004007C0  4B FD 3B 95 */	bl CosFIdx__Q24nw4r4mathFf
/* 80437204 004007C4  FC 00 F8 50 */	fneg f0, f31
/* 80437208 004007C8  C0 42 C6 EC */	lfs f2, lbl_8066CA6C@sda21(r2)
/* 8043720C 004007CC  C0 62 C6 F0 */	lfs f3, lbl_8066CA70@sda21(r2)
/* 80437210 004007D0  38 81 00 78 */	addi r4, r1, 0x78
/* 80437214 004007D4  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80437218 004007D8  7C 85 23 78 */	mr r5, r4
/* 8043721C 004007DC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80437220 004007E0  38 61 00 18 */	addi r3, r1, 0x18
/* 80437224 004007E4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80437228 004007E8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8043722C 004007EC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80437230 004007F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80437234 004007F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80437238 004007F8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8043723C 004007FC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80437240 00400800  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 80437244 00400804  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80437248 00400808  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8043724C 0040080C  4B F1 60 05 */	bl PSMTXConcat
/* 80437250 00400810  C3 DF 00 04 */	lfs f30, 0x4(r31)
/* 80437254 00400814  C0 02 C6 E8 */	lfs f0, lbl_8066CA68@sda21(r2)
/* 80437258 00400818  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8043725C 0040081C  4B FD 3A D1 */	bl SinFIdx__Q24nw4r4mathFf
/* 80437260 00400820  C0 02 C6 E8 */	lfs f0, lbl_8066CA68@sda21(r2)
/* 80437264 00400824  FF E0 08 90 */	fmr f31, f1
/* 80437268 00400828  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8043726C 0040082C  4B FD 3B 29 */	bl CosFIdx__Q24nw4r4mathFf
/* 80437270 00400830  FC 00 F8 50 */	fneg f0, f31
/* 80437274 00400834  C0 62 C6 EC */	lfs f3, lbl_8066CA6C@sda21(r2)
/* 80437278 00400838  C0 42 C6 F0 */	lfs f2, lbl_8066CA70@sda21(r2)
/* 8043727C 0040083C  38 81 00 78 */	addi r4, r1, 0x78
/* 80437280 00400840  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80437284 00400844  7C 85 23 78 */	mr r5, r4
/* 80437288 00400848  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8043728C 0040084C  38 61 00 48 */	addi r3, r1, 0x48
/* 80437290 00400850  D3 E1 00 50 */	stfs f31, 0x50(r1)
/* 80437294 00400854  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 80437298 00400858  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 8043729C 0040085C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 804372A0 00400860  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 804372A4 00400864  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 804372A8 00400868  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804372AC 0040086C  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 804372B0 00400870  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 804372B4 00400874  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 804372B8 00400878  4B F1 5F 99 */	bl PSMTXConcat
/* 804372BC 0040087C  38 61 00 08 */	addi r3, r1, 0x8
/* 804372C0 00400880  38 81 00 78 */	addi r4, r1, 0x78
/* 804372C4 00400884  4B F1 70 FD */	bl C_QUATMtx
/* 804372C8 00400888  80 61 00 08 */	lwz r3, 0x8(r1)
/* 804372CC 0040088C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804372D0 00400890  90 1E 00 04 */	stw r0, 0x4(r30)
/* 804372D4 00400894  90 7E 00 00 */	stw r3, 0x0(r30)
/* 804372D8 00400898  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804372DC 0040089C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804372E0 004008A0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804372E4 004008A4  90 7E 00 08 */	stw r3, 0x8(r30)
/* 804372E8 004008A8  E3 E1 00 C8 */	psq_l f31, 0xc8(r1), 0, qr0
/* 804372EC 004008AC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 804372F0 004008B0  E3 C1 00 B8 */	psq_l f30, 0xb8(r1), 0, qr0
/* 804372F4 004008B4  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 804372F8 004008B8  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 804372FC 004008BC  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80437300 004008C0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80437304 004008C4  7C 08 03 A6 */	mtlr r0
/* 80437308 004008C8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8043730C 004008CC  4E 80 00 20 */	blr
.endfn func_8043715C

.fn func_80437310, global
/* 80437310 004008D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80437314 004008D4  7C 08 02 A6 */	mflr r0
/* 80437318 004008D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8043731C 004008DC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80437320 004008E0  7C 9F 23 78 */	mr r31, r4
/* 80437324 004008E4  7C 64 1B 78 */	mr r4, r3
/* 80437328 004008E8  38 61 00 08 */	addi r3, r1, 0x8
/* 8043732C 004008EC  4B F1 66 55 */	bl PSMTXQuat
/* 80437330 004008F0  7F E4 FB 78 */	mr r4, r31
/* 80437334 004008F4  38 61 00 08 */	addi r3, r1, 0x8
/* 80437338 004008F8  4B FF F5 F5 */	bl func_8043692C
/* 8043733C 004008FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80437340 00400900  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80437344 00400904  7C 08 03 A6 */	mtlr r0
/* 80437348 00400908  38 21 00 40 */	addi r1, r1, 0x40
/* 8043734C 0040090C  4E 80 00 20 */	blr
.endfn func_80437310

.fn sinit_80437350, global
/* 80437350 00400910  3C C0 80 66 */	lis r6, lbl_8065A068@ha
/* 80437354 00400914  3C 80 80 66 */	lis r4, lbl_8065A078@ha
/* 80437358 00400918  C0 22 C6 EC */	lfs f1, lbl_8066CA6C@sda21(r2)
/* 8043735C 0040091C  38 A6 A0 68 */	addi r5, r6, lbl_8065A068@l
/* 80437360 00400920  38 64 A0 78 */	addi r3, r4, lbl_8065A078@l
/* 80437364 00400924  C0 02 C6 F0 */	lfs f0, lbl_8066CA70@sda21(r2)
/* 80437368 00400928  D0 26 A0 68 */	stfs f1, lbl_8065A068@l(r6)
/* 8043736C 0040092C  D0 25 00 04 */	stfs f1, 0x4(r5)
/* 80437370 00400930  D0 25 00 08 */	stfs f1, 0x8(r5)
/* 80437374 00400934  D0 25 00 0C */	stfs f1, 0xc(r5)
/* 80437378 00400938  D0 24 A0 78 */	stfs f1, lbl_8065A078@l(r4)
/* 8043737C 0040093C  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 80437380 00400940  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 80437384 00400944  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80437388 00400948  4E 80 00 20 */	blr
.endfn sinit_80437350

.section .ctors, "wa" # 0x804F5900 - 0x804F5B00

.balign 4
	.4byte sinit_80437350

.section .bss, "wa", @nobits # 0x80573C80 - 0x8066417B

.balign 8
.global lbl_8065A068
lbl_8065A068:
	.skip 0x10
.global lbl_8065A078
lbl_8065A078:
	.skip 0x10

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_8066CA60
lbl_8066CA60:
	.4byte 0x00000000
	.4byte 0x00000000
.global lbl_8066CA68
lbl_8066CA68:
	.4byte 0x4222F983
.global lbl_8066CA6C
lbl_8066CA6C:
	.4byte 0x00000000
.global lbl_8066CA70
lbl_8066CA70:
	.4byte 0x3F800000
	.4byte 0x00000000

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C0D0", local
.hidden "@etb_8001C0D0"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001C0D0"

.obj "@etb_8001C0D8", local
.hidden "@etb_8001C0D8"
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_8001C0D8"

.obj "@etb_8001C0E0", local
.hidden "@etb_8001C0E0"
	.4byte 0x108A0000
	.4byte 0x00000000
.endobj "@etb_8001C0E0"

.obj "@etb_8001C0E8", local
.hidden "@etb_8001C0E8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C0E8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033D04", local
.hidden "@eti_80033D04"
	.4byte func_80436F20
	.4byte 0x00000164
	.4byte "@etb_8001C0D0"
.endobj "@eti_80033D04"

.obj "@eti_80033D10", local
.hidden "@eti_80033D10"
	.4byte func_80437084
	.4byte 0x000000C4
	.4byte "@etb_8001C0D8"
.endobj "@eti_80033D10"

.obj "@eti_80033D1C", local
.hidden "@eti_80033D1C"
	.4byte func_8043715C
	.4byte 0x000001B4
	.4byte "@etb_8001C0E0"
.endobj "@eti_80033D1C"

.obj "@eti_80033D28", local
.hidden "@eti_80033D28"
	.4byte func_80437310
	.4byte 0x00000040
	.4byte "@etb_8001C0E8"
.endobj "@eti_80033D28"
