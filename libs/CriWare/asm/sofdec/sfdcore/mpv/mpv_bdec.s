.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn MPVBDEC_Init, global
/* 803A3BAC 0036D16C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803A3BB0 0036D170  7C 08 02 A6 */	mflr r0
/* 803A3BB4 0036D174  3C C0 80 60 */	lis r6, mpvbdec_dfl_iqm_general@ha
/* 803A3BB8 0036D178  39 60 00 00 */	li r11, 0
/* 803A3BBC 0036D17C  90 01 00 74 */	stw r0, 0x74(r1)
/* 803A3BC0 0036D180  38 00 00 02 */	li r0, 2
/* 803A3BC4 0036D184  38 C6 5E D0 */	addi r6, r6, mpvbdec_dfl_iqm_general@l
/* 803A3BC8 0036D188  39 81 00 08 */	addi r12, r1, 8
/* 803A3BCC 0036D18C  BE C1 00 48 */	stmw r22, 0x48(r1)
/* 803A3BD0 0036D190  3F E0 80 52 */	lis r31, mpvbdec_bitmsk@ha
/* 803A3BD4 0036D194  7C 7E 1B 78 */	mr r30, r3
/* 803A3BD8 0036D198  3B FF F5 38 */	addi r31, r31, mpvbdec_bitmsk@l
/* 803A3BDC 0036D19C  7C 09 03 A6 */	mtctr r0
.L_803A3BE0:
/* 803A3BE0 0036D1A0  99 6C 00 00 */	stb r11, 0(r12)
/* 803A3BE4 0036D1A4  39 4B 00 01 */	addi r10, r11, 1
/* 803A3BE8 0036D1A8  39 2B 00 02 */	addi r9, r11, 2
/* 803A3BEC 0036D1AC  39 0B 00 03 */	addi r8, r11, 3
/* 803A3BF0 0036D1B0  99 4C 00 01 */	stb r10, 1(r12)
/* 803A3BF4 0036D1B4  38 EB 00 04 */	addi r7, r11, 4
/* 803A3BF8 0036D1B8  38 AB 00 05 */	addi r5, r11, 5
/* 803A3BFC 0036D1BC  38 8B 00 06 */	addi r4, r11, 6
/* 803A3C00 0036D1C0  99 2C 00 02 */	stb r9, 2(r12)
/* 803A3C04 0036D1C4  38 0B 00 07 */	addi r0, r11, 7
/* 803A3C08 0036D1C8  39 4B 00 09 */	addi r10, r11, 9
/* 803A3C0C 0036D1CC  39 2B 00 0A */	addi r9, r11, 0xa
/* 803A3C10 0036D1D0  99 0C 00 03 */	stb r8, 3(r12)
/* 803A3C14 0036D1D4  39 0B 00 0B */	addi r8, r11, 0xb
/* 803A3C18 0036D1D8  98 EC 00 04 */	stb r7, 4(r12)
/* 803A3C1C 0036D1DC  38 EB 00 0C */	addi r7, r11, 0xc
/* 803A3C20 0036D1E0  98 AC 00 05 */	stb r5, 5(r12)
/* 803A3C24 0036D1E4  38 AB 00 0D */	addi r5, r11, 0xd
/* 803A3C28 0036D1E8  98 8C 00 06 */	stb r4, 6(r12)
/* 803A3C2C 0036D1EC  38 8B 00 0E */	addi r4, r11, 0xe
/* 803A3C30 0036D1F0  98 0C 00 07 */	stb r0, 7(r12)
/* 803A3C34 0036D1F4  38 0B 00 0F */	addi r0, r11, 0xf
/* 803A3C38 0036D1F8  39 6B 00 08 */	addi r11, r11, 8
/* 803A3C3C 0036D1FC  99 6C 00 08 */	stb r11, 8(r12)
/* 803A3C40 0036D200  99 4C 00 09 */	stb r10, 9(r12)
/* 803A3C44 0036D204  39 4B 00 09 */	addi r10, r11, 9
/* 803A3C48 0036D208  99 2C 00 0A */	stb r9, 0xa(r12)
/* 803A3C4C 0036D20C  39 2B 00 0A */	addi r9, r11, 0xa
/* 803A3C50 0036D210  99 0C 00 0B */	stb r8, 0xb(r12)
/* 803A3C54 0036D214  39 0B 00 0B */	addi r8, r11, 0xb
/* 803A3C58 0036D218  98 EC 00 0C */	stb r7, 0xc(r12)
/* 803A3C5C 0036D21C  38 EB 00 0C */	addi r7, r11, 0xc
/* 803A3C60 0036D220  98 AC 00 0D */	stb r5, 0xd(r12)
/* 803A3C64 0036D224  38 AB 00 0D */	addi r5, r11, 0xd
/* 803A3C68 0036D228  98 8C 00 0E */	stb r4, 0xe(r12)
/* 803A3C6C 0036D22C  38 8B 00 0E */	addi r4, r11, 0xe
/* 803A3C70 0036D230  98 0C 00 0F */	stb r0, 0xf(r12)
/* 803A3C74 0036D234  38 0B 00 0F */	addi r0, r11, 0xf
/* 803A3C78 0036D238  39 6B 00 08 */	addi r11, r11, 8
/* 803A3C7C 0036D23C  99 6C 00 10 */	stb r11, 0x10(r12)
/* 803A3C80 0036D240  99 4C 00 11 */	stb r10, 0x11(r12)
/* 803A3C84 0036D244  39 4B 00 09 */	addi r10, r11, 9
/* 803A3C88 0036D248  99 2C 00 12 */	stb r9, 0x12(r12)
/* 803A3C8C 0036D24C  39 2B 00 0A */	addi r9, r11, 0xa
/* 803A3C90 0036D250  99 0C 00 13 */	stb r8, 0x13(r12)
/* 803A3C94 0036D254  39 0B 00 0B */	addi r8, r11, 0xb
/* 803A3C98 0036D258  98 EC 00 14 */	stb r7, 0x14(r12)
/* 803A3C9C 0036D25C  38 EB 00 0C */	addi r7, r11, 0xc
/* 803A3CA0 0036D260  98 AC 00 15 */	stb r5, 0x15(r12)
/* 803A3CA4 0036D264  38 AB 00 0D */	addi r5, r11, 0xd
/* 803A3CA8 0036D268  98 8C 00 16 */	stb r4, 0x16(r12)
/* 803A3CAC 0036D26C  38 8B 00 0E */	addi r4, r11, 0xe
/* 803A3CB0 0036D270  98 0C 00 17 */	stb r0, 0x17(r12)
/* 803A3CB4 0036D274  38 0B 00 0F */	addi r0, r11, 0xf
/* 803A3CB8 0036D278  39 6B 00 08 */	addi r11, r11, 8
/* 803A3CBC 0036D27C  99 6C 00 18 */	stb r11, 0x18(r12)
/* 803A3CC0 0036D280  39 6B 00 08 */	addi r11, r11, 8
/* 803A3CC4 0036D284  99 4C 00 19 */	stb r10, 0x19(r12)
/* 803A3CC8 0036D288  99 2C 00 1A */	stb r9, 0x1a(r12)
/* 803A3CCC 0036D28C  99 0C 00 1B */	stb r8, 0x1b(r12)
/* 803A3CD0 0036D290  98 EC 00 1C */	stb r7, 0x1c(r12)
/* 803A3CD4 0036D294  98 AC 00 1D */	stb r5, 0x1d(r12)
/* 803A3CD8 0036D298  98 8C 00 1E */	stb r4, 0x1e(r12)
/* 803A3CDC 0036D29C  98 0C 00 1F */	stb r0, 0x1f(r12)
/* 803A3CE0 0036D2A0  39 8C 00 20 */	addi r12, r12, 0x20
/* 803A3CE4 0036D2A4  42 00 FE FC */	bdnz .L_803A3BE0
/* 803A3CE8 0036D2A8  39 41 00 08 */	addi r10, r1, 8
/* 803A3CEC 0036D2AC  38 00 00 08 */	li r0, 8
/* 803A3CF0 0036D2B0  7D 45 53 78 */	mr r5, r10
/* 803A3CF4 0036D2B4  39 1F 00 20 */	addi r8, r31, 0x20
/* 803A3CF8 0036D2B8  39 3F 00 60 */	addi r9, r31, 0x60
/* 803A3CFC 0036D2BC  38 86 00 00 */	addi r4, r6, 0
/* 803A3D00 0036D2C0  38 E0 00 00 */	li r7, 0
/* 803A3D04 0036D2C4  7C 09 03 A6 */	mtctr r0
.L_803A3D08:
/* 803A3D08 0036D2C8  88 08 00 00 */	lbz r0, 0(r8)
/* 803A3D0C 0036D2CC  7D 63 3A 14 */	add r11, r3, r7
/* 803A3D10 0036D2D0  89 8A 00 00 */	lbz r12, 0(r10)
/* 803A3D14 0036D2D4  38 E7 00 08 */	addi r7, r7, 8
/* 803A3D18 0036D2D8  7C 16 07 74 */	extsb r22, r0
/* 803A3D1C 0036D2DC  88 08 00 01 */	lbz r0, 1(r8)
/* 803A3D20 0036D2E0  7E E5 B0 AE */	lbzx r23, r5, r22
/* 803A3D24 0036D2E4  7D 96 07 74 */	extsb r22, r12
/* 803A3D28 0036D2E8  7C 0C 07 74 */	extsb r12, r0
/* 803A3D2C 0036D2EC  8B 09 00 00 */	lbz r24, 0(r9)
/* 803A3D30 0036D2F0  9A EB 11 20 */	stb r23, 0x1120(r11)
/* 803A3D34 0036D2F4  88 0A 00 01 */	lbz r0, 1(r10)
/* 803A3D38 0036D2F8  7F 04 B1 AE */	stbx r24, r4, r22
/* 803A3D3C 0036D2FC  7D 85 60 AE */	lbzx r12, r5, r12
/* 803A3D40 0036D300  7C 17 07 74 */	extsb r23, r0
/* 803A3D44 0036D304  88 08 00 02 */	lbz r0, 2(r8)
/* 803A3D48 0036D308  99 8B 11 21 */	stb r12, 0x1121(r11)
/* 803A3D4C 0036D30C  8B 09 00 01 */	lbz r24, 1(r9)
/* 803A3D50 0036D310  7C 16 07 74 */	extsb r22, r0
/* 803A3D54 0036D314  89 8A 00 02 */	lbz r12, 2(r10)
/* 803A3D58 0036D318  7F 04 B9 AE */	stbx r24, r4, r23
/* 803A3D5C 0036D31C  7E E5 B0 AE */	lbzx r23, r5, r22
/* 803A3D60 0036D320  7D 98 07 74 */	extsb r24, r12
/* 803A3D64 0036D324  88 08 00 03 */	lbz r0, 3(r8)
/* 803A3D68 0036D328  89 8A 00 03 */	lbz r12, 3(r10)
/* 803A3D6C 0036D32C  7C 16 07 74 */	extsb r22, r0
/* 803A3D70 0036D330  9A EB 11 22 */	stb r23, 0x1122(r11)
/* 803A3D74 0036D334  8B 29 00 02 */	lbz r25, 2(r9)
/* 803A3D78 0036D338  7D 9C 07 74 */	extsb r28, r12
/* 803A3D7C 0036D33C  88 08 00 04 */	lbz r0, 4(r8)
/* 803A3D80 0036D340  7F 24 C1 AE */	stbx r25, r4, r24
/* 803A3D84 0036D344  7C 17 07 74 */	extsb r23, r0
/* 803A3D88 0036D348  7E C5 B0 AE */	lbzx r22, r5, r22
/* 803A3D8C 0036D34C  89 8A 00 04 */	lbz r12, 4(r10)
/* 803A3D90 0036D350  9A CB 11 23 */	stb r22, 0x1123(r11)
/* 803A3D94 0036D354  8A C9 00 03 */	lbz r22, 3(r9)
/* 803A3D98 0036D358  7D 98 07 74 */	extsb r24, r12
/* 803A3D9C 0036D35C  89 8A 00 05 */	lbz r12, 5(r10)
/* 803A3DA0 0036D360  88 08 00 05 */	lbz r0, 5(r8)
/* 803A3DA4 0036D364  7D 9A 07 74 */	extsb r26, r12
/* 803A3DA8 0036D368  7E C4 E1 AE */	stbx r22, r4, r28
/* 803A3DAC 0036D36C  7E E5 B8 AE */	lbzx r23, r5, r23
/* 803A3DB0 0036D370  7C 19 07 74 */	extsb r25, r0
/* 803A3DB4 0036D374  89 8A 00 06 */	lbz r12, 6(r10)
/* 803A3DB8 0036D378  9A EB 11 24 */	stb r23, 0x1124(r11)
/* 803A3DBC 0036D37C  8A E9 00 04 */	lbz r23, 4(r9)
/* 803A3DC0 0036D380  7D 9C 07 74 */	extsb r28, r12
/* 803A3DC4 0036D384  7D 85 C8 AE */	lbzx r12, r5, r25
/* 803A3DC8 0036D388  7E E4 C1 AE */	stbx r23, r4, r24
/* 803A3DCC 0036D38C  88 08 00 06 */	lbz r0, 6(r8)
/* 803A3DD0 0036D390  8B 29 00 05 */	lbz r25, 5(r9)
/* 803A3DD4 0036D394  99 8B 11 25 */	stb r12, 0x1125(r11)
/* 803A3DD8 0036D398  7C 1B 07 74 */	extsb r27, r0
/* 803A3DDC 0036D39C  88 08 00 07 */	lbz r0, 7(r8)
/* 803A3DE0 0036D3A0  39 08 00 08 */	addi r8, r8, 8
/* 803A3DE4 0036D3A4  7D 85 D8 AE */	lbzx r12, r5, r27
/* 803A3DE8 0036D3A8  7C 1D 07 74 */	extsb r29, r0
/* 803A3DEC 0036D3AC  88 0A 00 07 */	lbz r0, 7(r10)
/* 803A3DF0 0036D3B0  7F 24 D1 AE */	stbx r25, r4, r26
/* 803A3DF4 0036D3B4  39 4A 00 08 */	addi r10, r10, 8
/* 803A3DF8 0036D3B8  8B 69 00 06 */	lbz r27, 6(r9)
/* 803A3DFC 0036D3BC  7C 00 07 74 */	extsb r0, r0
/* 803A3E00 0036D3C0  99 8B 11 26 */	stb r12, 0x1126(r11)
/* 803A3E04 0036D3C4  89 89 00 07 */	lbz r12, 7(r9)
/* 803A3E08 0036D3C8  39 29 00 08 */	addi r9, r9, 8
/* 803A3E0C 0036D3CC  7F 64 E1 AE */	stbx r27, r4, r28
/* 803A3E10 0036D3D0  7F A5 E8 AE */	lbzx r29, r5, r29
/* 803A3E14 0036D3D4  9B AB 11 27 */	stb r29, 0x1127(r11)
/* 803A3E18 0036D3D8  7D 84 01 AE */	stbx r12, r4, r0
/* 803A3E1C 0036D3DC  42 00 FE EC */	bdnz .L_803A3D08
/* 803A3E20 0036D3E0  38 A3 11 20 */	addi r5, r3, 0x1120
/* 803A3E24 0036D3E4  38 86 00 40 */	addi r4, r6, 0x40
/* 803A3E28 0036D3E8  90 A4 00 08 */	stw r5, 8(r4)
/* 803A3E2C 0036D3EC  38 06 00 00 */	addi r0, r6, 0
/* 803A3E30 0036D3F0  38 C6 00 4C */	addi r6, r6, 0x4c
/* 803A3E34 0036D3F4  38 9F 00 00 */	addi r4, r31, 0
/* 803A3E38 0036D3F8  90 06 00 08 */	stw r0, 8(r6)
/* 803A3E3C 0036D3FC  38 A0 00 08 */	li r5, 8
/* 803A3E40 0036D400  38 63 11 00 */	addi r3, r3, 0x1100
/* 803A3E44 0036D404  48 03 05 C9 */	bl UTY_MemcpyDword
/* 803A3E48 0036D408  38 7E 11 E0 */	addi r3, r30, 0x11e0
/* 803A3E4C 0036D40C  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 803A3E50 0036D410  38 A0 00 20 */	li r5, 0x20
/* 803A3E54 0036D414  4B C6 01 AD */	bl memcpy
/* 803A3E58 0036D418  3C 60 80 60 */	lis r3, mpvvlc_run_level_4@ha
/* 803A3E5C 0036D41C  38 00 00 15 */	li r0, 0x15
/* 803A3E60 0036D420  80 83 7B 20 */	lwz r4, mpvvlc_run_level_4@l(r3)
/* 803A3E64 0036D424  3C 60 80 60 */	lis r3, mpvvlc_run_level_2@ha
/* 803A3E68 0036D428  39 40 00 13 */	li r10, 0x13
/* 803A3E6C 0036D42C  3D 20 80 60 */	lis r9, mpvvlc_run_level_1@ha
/* 803A3E70 0036D430  38 84 FF F0 */	addi r4, r4, -16
/* 803A3E74 0036D434  90 1E 12 04 */	stw r0, 0x1204(r30)
/* 803A3E78 0036D438  39 00 00 12 */	li r8, 0x12
/* 803A3E7C 0036D43C  3C E0 80 60 */	lis r7, mpvvlc_run_level_0a@ha
/* 803A3E80 0036D440  90 9E 12 00 */	stw r4, 0x1200(r30)
/* 803A3E84 0036D444  38 C0 00 11 */	li r6, 0x11
/* 803A3E88 0036D448  3C A0 80 60 */	lis r5, mpvvlc_run_level_0b@ha
/* 803A3E8C 0036D44C  38 80 00 10 */	li r4, 0x10
/* 803A3E90 0036D450  81 63 7B 1C */	lwz r11, mpvvlc_run_level_2@l(r3)
/* 803A3E94 0036D454  3C 60 80 60 */	lis r3, mpvvlc_run_level_0c@ha
/* 803A3E98 0036D458  38 00 00 0F */	li r0, 0xf
/* 803A3E9C 0036D45C  39 6B FF E0 */	addi r11, r11, -32
/* 803A3EA0 0036D460  91 5E 12 0C */	stw r10, 0x120c(r30)
/* 803A3EA4 0036D464  91 7E 12 08 */	stw r11, 0x1208(r30)
/* 803A3EA8 0036D468  81 29 7B 18 */	lwz r9, mpvvlc_run_level_1@l(r9)
/* 803A3EAC 0036D46C  39 29 FF E0 */	addi r9, r9, -32
/* 803A3EB0 0036D470  91 1E 12 14 */	stw r8, 0x1214(r30)
/* 803A3EB4 0036D474  91 3E 12 10 */	stw r9, 0x1210(r30)
/* 803A3EB8 0036D478  80 E7 7B 14 */	lwz r7, mpvvlc_run_level_0a@l(r7)
/* 803A3EBC 0036D47C  38 E7 FF E0 */	addi r7, r7, -32
/* 803A3EC0 0036D480  90 DE 12 1C */	stw r6, 0x121c(r30)
/* 803A3EC4 0036D484  90 FE 12 18 */	stw r7, 0x1218(r30)
/* 803A3EC8 0036D488  80 A5 7B 10 */	lwz r5, mpvvlc_run_level_0b@l(r5)
/* 803A3ECC 0036D48C  38 A5 FF E0 */	addi r5, r5, -32
/* 803A3ED0 0036D490  90 9E 12 24 */	stw r4, 0x1224(r30)
/* 803A3ED4 0036D494  90 BE 12 20 */	stw r5, 0x1220(r30)
/* 803A3ED8 0036D498  80 63 7B 0C */	lwz r3, mpvvlc_run_level_0c@l(r3)
/* 803A3EDC 0036D49C  38 63 FF E0 */	addi r3, r3, -32
/* 803A3EE0 0036D4A0  90 1E 12 2C */	stw r0, 0x122c(r30)
/* 803A3EE4 0036D4A4  90 7E 12 28 */	stw r3, 0x1228(r30)
/* 803A3EE8 0036D4A8  48 00 B1 11 */	bl MPVABDEC_Init
/* 803A3EEC 0036D4AC  BA C1 00 48 */	lmw r22, 0x48(r1)
/* 803A3EF0 0036D4B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803A3EF4 0036D4B4  7C 08 03 A6 */	mtlr r0
/* 803A3EF8 0036D4B8  38 21 00 70 */	addi r1, r1, 0x70
/* 803A3EFC 0036D4BC  4E 80 00 20 */	blr 
.endfn MPVBDEC_Init

.fn MPVBDEC_StartFrame, global
/* 803A3F00 0036D4C0  80 03 0D 00 */	lwz r0, 0xd00(r3)
/* 803A3F04 0036D4C4  3C 80 80 60 */	lis r4, mpvabdec_funcs_idct@ha
/* 803A3F08 0036D4C8  38 84 7B 68 */	addi r4, r4, mpvabdec_funcs_idct@l
/* 803A3F0C 0036D4CC  2C 00 00 08 */	cmpwi r0, 8
/* 803A3F10 0036D4D0  80 84 00 08 */	lwz r4, 8(r4)
/* 803A3F14 0036D4D4  41 82 00 34 */	beq .L_803A3F48
/* 803A3F18 0036D4D8  80 03 0D 38 */	lwz r0, 0xd38(r3)
/* 803A3F1C 0036D4DC  2C 00 00 00 */	cmpwi r0, 0
/* 803A3F20 0036D4E0  40 82 00 10 */	bne .L_803A3F30
/* 803A3F24 0036D4E4  80 04 00 00 */	lwz r0, 0(r4)
/* 803A3F28 0036D4E8  90 03 0D 3C */	stw r0, 0xd3c(r3)
/* 803A3F2C 0036D4EC  48 00 00 0C */	b .L_803A3F38
.L_803A3F30:
/* 803A3F30 0036D4F0  80 04 00 04 */	lwz r0, 4(r4)
/* 803A3F34 0036D4F4  90 03 0D 3C */	stw r0, 0xd3c(r3)
.L_803A3F38:
/* 803A3F38 0036D4F8  80 84 00 08 */	lwz r4, 8(r4)
/* 803A3F3C 0036D4FC  38 00 00 00 */	li r0, 0
/* 803A3F40 0036D500  90 83 0D 40 */	stw r4, 0xd40(r3)
/* 803A3F44 0036D504  90 03 0D 44 */	stw r0, 0xd44(r3)
.L_803A3F48:
/* 803A3F48 0036D508  80 03 0D 38 */	lwz r0, 0xd38(r3)
/* 803A3F4C 0036D50C  2C 00 00 00 */	cmpwi r0, 0
/* 803A3F50 0036D510  40 82 00 20 */	bne .L_803A3F70
/* 803A3F54 0036D514  3C A0 80 60 */	lis r5, mpvvlc_y_dcsiz@ha
/* 803A3F58 0036D518  3C 80 80 60 */	lis r4, mpvvlc_c_dcsiz@ha
/* 803A3F5C 0036D51C  80 05 68 B8 */	lwz r0, mpvvlc_y_dcsiz@l(r5)
/* 803A3F60 0036D520  90 03 0D 4C */	stw r0, 0xd4c(r3)
/* 803A3F64 0036D524  80 04 69 40 */	lwz r0, mpvvlc_c_dcsiz@l(r4)
/* 803A3F68 0036D528  90 03 0D 50 */	stw r0, 0xd50(r3)
/* 803A3F6C 0036D52C  4E 80 00 20 */	blr
.L_803A3F70:
/* 803A3F70 0036D530  3C A0 80 60 */	lis r5, mpvvlc2_y_dcsiz@ha
/* 803A3F74 0036D534  3C 80 80 60 */	lis r4, mpvvlc2_c_dcsiz@ha
/* 803A3F78 0036D538  80 05 7B 04 */	lwz r0, mpvvlc2_y_dcsiz@l(r5)
/* 803A3F7C 0036D53C  90 03 0D 4C */	stw r0, 0xd4c(r3)
/* 803A3F80 0036D540  80 04 7B 08 */	lwz r0, mpvvlc2_c_dcsiz@l(r4)
/* 803A3F84 0036D544  90 03 0D 50 */	stw r0, 0xd50(r3)
/* 803A3F88 0036D548  4E 80 00 20 */	blr 
.endfn MPVBDEC_StartFrame

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj mpvbdec_bitmsk, local
	.2byte 0xFFFF
	.2byte 0x7FFF
	.2byte 0x3FFF
	.2byte 0x1FFF
	.2byte 0x0FFF
	.2byte 0x07FF
	.2byte 0x03FF
	.2byte 0x01FF
	.2byte 0x00FF
	.2byte 0x007F
	.2byte 0x003F
	.2byte 0x001F
	.2byte 0x000F
	.2byte 0x0007
	.2byte 0x0003
	.2byte 0x0001
.endobj mpvbdec_bitmsk

.obj zigzag2seq, local
	.2byte 0x0001
	.2byte 0x0810
	.2byte 0x0902
	.2byte 0x030A
	.2byte 0x1118
	.2byte 0x2019
	.2byte 0x120B
	.2byte 0x0405
	.2byte 0x0C13
	.2byte 0x1A21
	.2byte 0x2830
	.2byte 0x2922
	.2byte 0x1B14
	.2byte 0x0D06
	.2byte 0x070E
	.2byte 0x151C
	.2byte 0x232A
	.2byte 0x3138
	.2byte 0x3932
	.2byte 0x2B24
	.2byte 0x1D16
	.2byte 0x0F17
	.2byte 0x1E25
	.2byte 0x2C33
	.2byte 0x3A3B
	.2byte 0x342D
	.2byte 0x261F
	.2byte 0x272E
	.2byte 0x353C
	.2byte 0x3D36
	.2byte 0x2F37
	.2byte 0x3E3F
.endobj zigzag2seq

.obj org_iqm, local
	.2byte 0x0810
	.2byte 0x1316
	.2byte 0x1A1B
	.2byte 0x1D22
	.2byte 0x1010
	.2byte 0x1618
	.2byte 0x1B1D
	.2byte 0x2225
	.2byte 0x1316
	.2byte 0x1A1B
	.2byte 0x1D22
	.2byte 0x2226
	.2byte 0x1616
	.2byte 0x1A1B
	.2byte 0x1D22
	.2byte 0x2528
	.2byte 0x161A
	.2byte 0x1B1D
	.2byte 0x2023
	.2byte 0x2830
	.2byte 0x1A1B
	.2byte 0x1D20
	.2byte 0x2328
	.2byte 0x303A
	.2byte 0x1A1B
	.2byte 0x1D22
	.2byte 0x262E
	.2byte 0x3845
	.2byte 0x1B1D
	.2byte 0x2326
	.2byte 0x2E38
	.2byte 0x4553
.endobj org_iqm

.obj group_tbl, local
	.2byte 0x0504
	.2byte 0x0303
	.2byte 0x0202
	.2byte 0x0202
	.2byte 0x0101
	.2byte 0x0101
	.2byte 0x0101
	.2byte 0x0101
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj group_tbl

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj mpvbdec_dfl_iqm_general, local
	.skip 0x40
.endobj mpvbdec_dfl_iqm_general

.obj mpvbdec_zigzag_idct, global
	.skip 0xC
.endobj mpvbdec_zigzag_idct

.obj mpvbdec_dfl_iqm, global
	.skip 0xC
.endobj mpvbdec_dfl_iqm
