.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn CFT_Ycc420plnToArgb8888Init, global
/* 8039B7F8 00364DB8  3C 80 80 60 */	lis r4, y__r@ha
/* 8039B7FC 00364DBC  3D 00 80 52 */	lis r8, lbl_8051CDF0@ha
/* 8039B800 00364DC0  39 08 CD F0 */	addi r8, r8, lbl_8051CDF0@l
/* 8039B804 00364DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039B808 00364DC8  38 84 13 80 */	addi r4, r4, y__r@l
/* 8039B80C 00364DCC  3C 60 43 30 */	lis r3, 0x4330
/* 8039B810 00364DD0  38 00 00 80 */	li r0, 0x80
/* 8039B814 00364DD4  90 61 00 08 */	stw r3, 8(r1)
/* 8039B818 00364DD8  39 24 00 00 */	addi r9, r4, 0
/* 8039B81C 00364DDC  38 E4 04 00 */	addi r7, r4, 0x400
/* 8039B820 00364DE0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8039B824 00364DE4  38 C4 08 00 */	addi r6, r4, 0x800
/* 8039B828 00364DE8  38 A4 0C 00 */	addi r5, r4, 0xc00
/* 8039B82C 00364DEC  38 84 10 00 */	addi r4, r4, 0x1000
/* 8039B830 00364DF0  C9 48 00 18 */	lfd f10, 0x18(r8)
/* 8039B834 00364DF4  39 60 00 00 */	li r11, 0
/* 8039B838 00364DF8  C1 28 00 00 */	lfs f9, 0(r8)
/* 8039B83C 00364DFC  38 60 00 00 */	li r3, 0
/* 8039B840 00364E00  C1 08 00 04 */	lfs f8, 4(r8)
/* 8039B844 00364E04  C0 C8 00 08 */	lfs f6, 8(r8)
/* 8039B848 00364E08  C0 88 00 0C */	lfs f4, 0xc(r8)
/* 8039B84C 00364E0C  C0 48 00 10 */	lfs f2, 0x10(r8)
/* 8039B850 00364E10  C0 08 00 14 */	lfs f0, 0x14(r8)
/* 8039B854 00364E14  7C 09 03 A6 */	mtctr r0
.L_8039B858:
/* 8039B858 00364E18  39 4B FF F0 */	addi r10, r11, -16
/* 8039B85C 00364E1C  39 0B FF 80 */	addi r8, r11, -128
/* 8039B860 00364E20  6D 4A 80 00 */	xoris r10, r10, 0x8000
/* 8039B864 00364E24  91 41 00 0C */	stw r10, 0xc(r1)
/* 8039B868 00364E28  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 8039B86C 00364E2C  39 4B FF F1 */	addi r10, r11, -15
/* 8039B870 00364E30  39 0B FF 81 */	addi r8, r11, -127
/* 8039B874 00364E34  C8 A1 00 08 */	lfd f5, 8(r1)
/* 8039B878 00364E38  6D 4A 80 00 */	xoris r10, r10, 0x8000
/* 8039B87C 00364E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B880 00364E40  39 6B 00 02 */	addi r11, r11, 2
/* 8039B884 00364E44  EC A5 50 28 */	fsubs f5, f5, f10
/* 8039B888 00364E48  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 8039B88C 00364E4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8039B890 00364E50  ED 69 01 72 */	fmuls f11, f9, f5
/* 8039B894 00364E54  C8 21 00 08 */	lfd f1, 8(r1)
/* 8039B898 00364E58  EC 63 50 28 */	fsubs f3, f3, f10
/* 8039B89C 00364E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B8A0 00364E60  EC E8 58 2A */	fadds f7, f8, f11
/* 8039B8A4 00364E64  ED 66 00 F2 */	fmuls f11, f6, f3
/* 8039B8A8 00364E68  90 01 00 0C */	stw r0, 0xc(r1)
/* 8039B8AC 00364E6C  EC A1 50 28 */	fsubs f5, f1, f10
/* 8039B8B0 00364E70  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 8039B8B4 00364E74  C8 21 00 08 */	lfd f1, 8(r1)
/* 8039B8B8 00364E78  7D 67 1D 2E */	stfsx f11, r7, r3
/* 8039B8BC 00364E7C  ED 64 01 72 */	fmuls f11, f4, f5
/* 8039B8C0 00364E80  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 8039B8C4 00364E84  91 41 00 0C */	stw r10, 0xc(r1)
/* 8039B8C8 00364E88  EC 63 50 28 */	fsubs f3, f3, f10
/* 8039B8CC 00364E8C  EC 21 50 28 */	fsubs f1, f1, f10
/* 8039B8D0 00364E90  C8 A1 00 08 */	lfd f5, 8(r1)
/* 8039B8D4 00364E94  7D 66 1D 2E */	stfsx f11, r6, r3
/* 8039B8D8 00364E98  ED 62 00 F2 */	fmuls f11, f2, f3
/* 8039B8DC 00364E9C  EC A5 50 28 */	fsubs f5, f5, f10
/* 8039B8E0 00364EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B8E4 00364EA4  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 8039B8E8 00364EA8  7D 65 1D 2E */	stfsx f11, r5, r3
/* 8039B8EC 00364EAC  ED 60 00 72 */	fmuls f11, f0, f1
/* 8039B8F0 00364EB0  EC 63 50 28 */	fsubs f3, f3, f10
/* 8039B8F4 00364EB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8039B8F8 00364EB8  7D 64 1D 2E */	stfsx f11, r4, r3
/* 8039B8FC 00364EBC  ED 69 01 72 */	fmuls f11, f9, f5
/* 8039B900 00364EC0  C8 21 00 08 */	lfd f1, 8(r1)
/* 8039B904 00364EC4  7C E9 1D 2E */	stfsx f7, r9, r3
/* 8039B908 00364EC8  38 63 00 04 */	addi r3, r3, 4
/* 8039B90C 00364ECC  EC E8 58 2A */	fadds f7, f8, f11
/* 8039B910 00364ED0  ED 66 00 F2 */	fmuls f11, f6, f3
/* 8039B914 00364ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B918 00364ED8  EC A1 50 28 */	fsubs f5, f1, f10
/* 8039B91C 00364EDC  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 8039B920 00364EE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8039B924 00364EE4  EC 63 50 28 */	fsubs f3, f3, f10
/* 8039B928 00364EE8  7D 67 1D 2E */	stfsx f11, r7, r3
/* 8039B92C 00364EEC  ED 64 01 72 */	fmuls f11, f4, f5
/* 8039B930 00364EF0  C8 21 00 08 */	lfd f1, 8(r1)
/* 8039B934 00364EF4  7C E9 1D 2E */	stfsx f7, r9, r3
/* 8039B938 00364EF8  EC 21 50 28 */	fsubs f1, f1, f10
/* 8039B93C 00364EFC  7D 66 1D 2E */	stfsx f11, r6, r3
/* 8039B940 00364F00  ED 62 00 F2 */	fmuls f11, f2, f3
/* 8039B944 00364F04  7D 65 1D 2E */	stfsx f11, r5, r3
/* 8039B948 00364F08  ED 60 00 72 */	fmuls f11, f0, f1
/* 8039B94C 00364F0C  7D 64 1D 2E */	stfsx f11, r4, r3
/* 8039B950 00364F10  38 63 00 04 */	addi r3, r3, 4
/* 8039B954 00364F14  42 00 FF 04 */	bdnz .L_8039B858
/* 8039B958 00364F18  38 21 00 20 */	addi r1, r1, 0x20
/* 8039B95C 00364F1C  4E 80 00 20 */	blr
.endfn CFT_Ycc420plnToArgb8888Init

.fn CFT_Ycc420plnToY84C44, global
/* 8039B960 00364F20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8039B964 00364F24  38 C0 00 08 */	li r6, 8
/* 8039B968 00364F28  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8039B96C 00364F2C  38 A0 00 00 */	li r5, 0
/* 8039B970 00364F30  BE 81 00 10 */	stmw r20, 0x10(r1)
/* 8039B974 00364F34  54 07 10 3A */	slwi r7, r0, 2
/* 8039B978 00364F38  81 04 00 10 */	lwz r8, 0x10(r4)
/* 8039B97C 00364F3C  7C E0 38 50 */	subf r7, r0, r7
/* 8039B980 00364F40  81 84 00 04 */	lwz r12, 4(r4)
/* 8039B984 00364F44  7C EB 1E 70 */	srawi r11, r7, 3
/* 8039B988 00364F48  81 24 00 0C */	lwz r9, 0xc(r4)
/* 8039B98C 00364F4C  7E AB 01 94 */	addze r21, r11
/* 8039B990 00364F50  7D 40 40 50 */	subf r10, r0, r8
/* 8039B994 00364F54  7C 08 1E 70 */	srawi r8, r0, 3
/* 8039B998 00364F58  82 E3 00 04 */	lwz r23, 4(r3)
/* 8039B99C 00364F5C  7D 08 01 94 */	addze r8, r8
/* 8039B9A0 00364F60  3A CC FF F8 */	addi r22, r12, -8
/* 8039B9A4 00364F64  7D 29 16 70 */	srawi r9, r9, 2
/* 8039B9A8 00364F68  54 18 08 3C */	slwi r24, r0, 1
/* 8039B9AC 00364F6C  7D 29 01 94 */	addze r9, r9
/* 8039B9B0 00364F70  56 B4 18 38 */	slwi r20, r21, 3
/* 8039B9B4 00364F74  7D 4A 1E 70 */	srawi r10, r10, 3
/* 8039B9B8 00364F78  7D 4A 01 94 */	addze r10, r10
/* 8039B9BC 00364F7C  55 55 28 34 */	slwi r21, r10, 5
/* 8039B9C0 00364F80  48 00 00 64 */	b .L_8039BA24
.L_8039B9C4:
/* 8039B9C4 00364F84  7D 80 BA 14 */	add r12, r0, r23
/* 8039B9C8 00364F88  7D 78 BA 14 */	add r11, r24, r23
/* 8039B9CC 00364F8C  7D 47 BA 14 */	add r10, r7, r23
/* 8039B9D0 00364F90  7D 09 03 A6 */	mtctr r8
/* 8039B9D4 00364F94  2C 08 00 00 */	cmpwi r8, 0
/* 8039B9D8 00364F98  40 81 00 40 */	ble .L_8039BA18
.L_8039B9DC:
/* 8039B9DC 00364F9C  7C 16 37 EC */	dcbz r22, r6
/* 8039B9E0 00364FA0  C8 17 00 00 */	lfd f0, 0(r23)
/* 8039B9E4 00364FA4  C8 2C 00 00 */	lfd f1, 0(r12)
/* 8039B9E8 00364FA8  C8 4B 00 00 */	lfd f2, 0(r11)
/* 8039B9EC 00364FAC  C8 6A 00 00 */	lfd f3, 0(r10)
/* 8039B9F0 00364FB0  7C 17 32 2C */	dcbt r23, r6
/* 8039B9F4 00364FB4  3A F7 00 08 */	addi r23, r23, 8
/* 8039B9F8 00364FB8  DC 16 00 08 */	stfdu f0, 8(r22)
/* 8039B9FC 00364FBC  39 4A 00 08 */	addi r10, r10, 8
/* 8039BA00 00364FC0  39 6B 00 08 */	addi r11, r11, 8
/* 8039BA04 00364FC4  39 8C 00 08 */	addi r12, r12, 8
/* 8039BA08 00364FC8  DC 36 00 08 */	stfdu f1, 8(r22)
/* 8039BA0C 00364FCC  DC 56 00 08 */	stfdu f2, 8(r22)
/* 8039BA10 00364FD0  DC 76 00 08 */	stfdu f3, 8(r22)
/* 8039BA14 00364FD4  42 00 FF C8 */	bdnz .L_8039B9DC
.L_8039BA18:
/* 8039BA18 00364FD8  7E D6 AA 14 */	add r22, r22, r21
/* 8039BA1C 00364FDC  7E F7 A2 14 */	add r23, r23, r20
/* 8039BA20 00364FE0  38 A5 00 01 */	addi r5, r5, 1
.L_8039BA24:
/* 8039BA24 00364FE4  7C 05 48 00 */	cmpw r5, r9
/* 8039BA28 00364FE8  41 80 FF 9C */	blt .L_8039B9C4
/* 8039BA2C 00364FEC  81 03 00 10 */	lwz r8, 0x10(r3)
/* 8039BA30 00364FF0  38 C0 00 04 */	li r6, 4
/* 8039BA34 00364FF4  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 8039BA38 00364FF8  38 A0 00 00 */	li r5, 0
/* 8039BA3C 00364FFC  55 00 0F FE */	srwi r0, r8, 0x1f
/* 8039BA40 00365000  82 84 00 14 */	lwz r20, 0x14(r4)
/* 8039BA44 00365004  7D 20 42 14 */	add r9, r0, r8
/* 8039BA48 00365008  81 43 00 20 */	lwz r10, 0x20(r3)
/* 8039BA4C 0036500C  7D 24 1E 70 */	srawi r4, r9, 3
/* 8039BA50 00365010  54 E0 0F FE */	srwi r0, r7, 0x1f
/* 8039BA54 00365014  7D 04 01 94 */	addze r8, r4
/* 8039BA58 00365018  81 63 00 14 */	lwz r11, 0x14(r3)
/* 8039BA5C 0036501C  7D 24 0E 70 */	srawi r4, r9, 1
/* 8039BA60 00365020  81 83 00 24 */	lwz r12, 0x24(r3)
/* 8039BA64 00365024  7C 84 50 50 */	subf r4, r4, r10
/* 8039BA68 00365028  7C 00 3A 14 */	add r0, r0, r7
/* 8039BA6C 0036502C  7C 83 16 70 */	srawi r3, r4, 2
/* 8039BA70 00365030  7E A3 01 94 */	addze r21, r3
/* 8039BA74 00365034  38 94 FF FC */	addi r4, r20, -4
/* 8039BA78 00365038  7C 00 1E 70 */	srawi r0, r0, 3
/* 8039BA7C 0036503C  7D 20 01 94 */	addze r9, r0
/* 8039BA80 00365040  56 B8 28 34 */	slwi r24, r21, 5
/* 8039BA84 00365044  7D 40 16 70 */	srawi r0, r10, 2
/* 8039BA88 00365048  7C 00 01 94 */	addze r0, r0
/* 8039BA8C 0036504C  54 03 10 3A */	slwi r3, r0, 2
/* 8039BA90 00365050  7C E0 18 50 */	subf r7, r0, r3
/* 8039BA94 00365054  54 00 18 38 */	slwi r0, r0, 3
/* 8039BA98 00365058  7D 47 AA 14 */	add r10, r7, r21
/* 8039BA9C 0036505C  54 F4 10 3A */	slwi r20, r7, 2
/* 8039BAA0 00365060  55 59 10 3A */	slwi r25, r10, 2
/* 8039BAA4 00365064  48 00 01 30 */	b .L_8039BBD4
.L_8039BAA8:
/* 8039BAA8 00365068  7F 43 62 14 */	add r26, r3, r12
/* 8039BAAC 0036506C  7F 60 62 14 */	add r27, r0, r12
/* 8039BAB0 00365070  7F 94 62 14 */	add r28, r20, r12
/* 8039BAB4 00365074  7F A3 5A 14 */	add r29, r3, r11
/* 8039BAB8 00365078  7F C0 5A 14 */	add r30, r0, r11
/* 8039BABC 0036507C  7F F4 5A 14 */	add r31, r20, r11
/* 8039BAC0 00365080  7D 09 03 A6 */	mtctr r8
/* 8039BAC4 00365084  2C 08 00 00 */	cmpwi r8, 0
/* 8039BAC8 00365088  40 81 00 FC */	ble .L_8039BBC4
.L_8039BACC:
/* 8039BACC 0036508C  7C 04 37 EC */	dcbz r4, r6
/* 8039BAD0 00365090  81 4C 00 00 */	lwz r10, 0(r12)
/* 8039BAD4 00365094  39 8C 00 04 */	addi r12, r12, 4
/* 8039BAD8 00365098  80 EB 00 00 */	lwz r7, 0(r11)
/* 8039BADC 0036509C  55 57 C2 1E */	rlwinm r23, r10, 0x18, 8, 0xf
/* 8039BAE0 003650A0  55 55 42 1E */	rlwinm r21, r10, 8, 8, 0xf
/* 8039BAE4 003650A4  39 6B 00 04 */	addi r11, r11, 4
/* 8039BAE8 003650A8  50 F7 00 0E */	rlwimi r23, r7, 0, 0, 7
/* 8039BAEC 003650AC  54 F6 44 2E */	rlwinm r22, r7, 8, 0x10, 0x17
/* 8039BAF0 003650B0  50 F7 C4 2E */	rlwimi r23, r7, 0x18, 0x10, 0x17
/* 8039BAF4 003650B4  50 F5 80 0E */	rlwimi r21, r7, 0x10, 0, 7
/* 8039BAF8 003650B8  51 57 86 3E */	rlwimi r23, r10, 0x10, 0x18, 0x1f
/* 8039BAFC 003650BC  51 56 06 3E */	rlwimi r22, r10, 0, 0x18, 0x1f
/* 8039BB00 003650C0  92 E4 00 04 */	stw r23, 4(r4)
/* 8039BB04 003650C4  7E C7 AB 78 */	or r7, r22, r21
/* 8039BB08 003650C8  90 E4 00 08 */	stw r7, 8(r4)
/* 8039BB0C 003650CC  81 5A 00 00 */	lwz r10, 0(r26)
/* 8039BB10 003650D0  3B 5A 00 04 */	addi r26, r26, 4
/* 8039BB14 003650D4  80 FD 00 00 */	lwz r7, 0(r29)
/* 8039BB18 003650D8  3B BD 00 04 */	addi r29, r29, 4
/* 8039BB1C 003650DC  55 57 C2 1E */	rlwinm r23, r10, 0x18, 8, 0xf
/* 8039BB20 003650E0  55 55 42 1E */	rlwinm r21, r10, 8, 8, 0xf
/* 8039BB24 003650E4  50 F7 00 0E */	rlwimi r23, r7, 0, 0, 7
/* 8039BB28 003650E8  54 F6 44 2E */	rlwinm r22, r7, 8, 0x10, 0x17
/* 8039BB2C 003650EC  50 F7 C4 2E */	rlwimi r23, r7, 0x18, 0x10, 0x17
/* 8039BB30 003650F0  50 F5 80 0E */	rlwimi r21, r7, 0x10, 0, 7
/* 8039BB34 003650F4  51 57 86 3E */	rlwimi r23, r10, 0x10, 0x18, 0x1f
/* 8039BB38 003650F8  51 56 06 3E */	rlwimi r22, r10, 0, 0x18, 0x1f
/* 8039BB3C 003650FC  92 E4 00 0C */	stw r23, 0xc(r4)
/* 8039BB40 00365100  7E C7 AB 78 */	or r7, r22, r21
/* 8039BB44 00365104  90 E4 00 10 */	stw r7, 0x10(r4)
/* 8039BB48 00365108  81 5B 00 00 */	lwz r10, 0(r27)
/* 8039BB4C 0036510C  3B 7B 00 04 */	addi r27, r27, 4
/* 8039BB50 00365110  80 FE 00 00 */	lwz r7, 0(r30)
/* 8039BB54 00365114  3B DE 00 04 */	addi r30, r30, 4
/* 8039BB58 00365118  55 57 C2 1E */	rlwinm r23, r10, 0x18, 8, 0xf
/* 8039BB5C 0036511C  55 55 42 1E */	rlwinm r21, r10, 8, 8, 0xf
/* 8039BB60 00365120  50 F7 00 0E */	rlwimi r23, r7, 0, 0, 7
/* 8039BB64 00365124  54 F6 44 2E */	rlwinm r22, r7, 8, 0x10, 0x17
/* 8039BB68 00365128  50 F7 C4 2E */	rlwimi r23, r7, 0x18, 0x10, 0x17
/* 8039BB6C 0036512C  50 F5 80 0E */	rlwimi r21, r7, 0x10, 0, 7
/* 8039BB70 00365130  51 57 86 3E */	rlwimi r23, r10, 0x10, 0x18, 0x1f
/* 8039BB74 00365134  51 56 06 3E */	rlwimi r22, r10, 0, 0x18, 0x1f
/* 8039BB78 00365138  92 E4 00 14 */	stw r23, 0x14(r4)
/* 8039BB7C 0036513C  7E C7 AB 78 */	or r7, r22, r21
/* 8039BB80 00365140  90 E4 00 18 */	stw r7, 0x18(r4)
/* 8039BB84 00365144  81 5C 00 00 */	lwz r10, 0(r28)
/* 8039BB88 00365148  3B 9C 00 04 */	addi r28, r28, 4
/* 8039BB8C 0036514C  80 FF 00 00 */	lwz r7, 0(r31)
/* 8039BB90 00365150  3B FF 00 04 */	addi r31, r31, 4
/* 8039BB94 00365154  55 55 C2 1E */	rlwinm r21, r10, 0x18, 8, 0xf
/* 8039BB98 00365158  55 57 42 1E */	rlwinm r23, r10, 8, 8, 0xf
/* 8039BB9C 0036515C  50 F5 00 0E */	rlwimi r21, r7, 0, 0, 7
/* 8039BBA0 00365160  54 F6 44 2E */	rlwinm r22, r7, 8, 0x10, 0x17
/* 8039BBA4 00365164  50 F5 C4 2E */	rlwimi r21, r7, 0x18, 0x10, 0x17
/* 8039BBA8 00365168  50 F7 80 0E */	rlwimi r23, r7, 0x10, 0, 7
/* 8039BBAC 0036516C  51 55 86 3E */	rlwimi r21, r10, 0x10, 0x18, 0x1f
/* 8039BBB0 00365170  51 56 06 3E */	rlwimi r22, r10, 0, 0x18, 0x1f
/* 8039BBB4 00365174  92 A4 00 1C */	stw r21, 0x1c(r4)
/* 8039BBB8 00365178  7E C7 BB 78 */	or r7, r22, r23
/* 8039BBBC 0036517C  94 E4 00 20 */	stwu r7, 0x20(r4)
/* 8039BBC0 00365180  42 00 FF 0C */	bdnz .L_8039BACC
.L_8039BBC4:
/* 8039BBC4 00365184  7C 84 C2 14 */	add r4, r4, r24
/* 8039BBC8 00365188  7D 6B CA 14 */	add r11, r11, r25
/* 8039BBCC 0036518C  7D 8C CA 14 */	add r12, r12, r25
/* 8039BBD0 00365190  38 A5 00 01 */	addi r5, r5, 1
.L_8039BBD4:
/* 8039BBD4 00365194  7C 05 48 00 */	cmpw r5, r9
/* 8039BBD8 00365198  41 80 FE D0 */	blt .L_8039BAA8
/* 8039BBDC 0036519C  BA 81 00 10 */	lmw r20, 0x10(r1)
/* 8039BBE0 003651A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8039BBE4 003651A4  4E 80 00 20 */	blr 
.endfn CFT_Ycc420plnToY84C44

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8051CDF0, global
	.4byte 0x3F950A85

	.float 0.5

	.4byte 0xBEC880BB

	.4byte 0x40011A55

	.4byte 0x3FCC4A9A

	.4byte 0xBF50147A

	.8byte 0x4330000080000000

	.4byte 0x437F0000

	.4byte 0x3F94FDF4

	.4byte 0x40011687

	.4byte 0xBEC8B439

	.4byte 0

	.4byte 0xBF5020C5

	.4byte 0x3FCC49BA

	.4byte 0x41800000

	.4byte 0x40145D17

	.4byte 0x437B0000

	.8byte 0x4330000000000000

	.4byte 0xC1910A85

	.4byte 0x42880000

	.4byte 0x40945D17

	.4byte 0x43770000

	.4byte 0x401306EB
.endobj lbl_8051CDF0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj y__r, local
	.skip 0x400
.endobj y__r

.obj cb_g, local
	.skip 0x400
.endobj cb_g

.obj cb_b, local
	.skip 0x400
.endobj cb_b

.obj cr_r, local
	.skip 0x400
.endobj cr_r

.obj cr_g, local
	.skip 0x400
.endobj cr_g

.obj gqr_save, local
	.skip 0x4
.endobj gqr_save

.skip 0x4
