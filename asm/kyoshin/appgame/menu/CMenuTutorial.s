.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CMenuTutorial, global
/* 8029A0B8 00263678  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029A0BC 0026367C  7C 08 02 A6 */	mflr r0
/* 8029A0C0 00263680  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029A0C4 00263684  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 8029A0C8 00263688  7C 7C 1B 78 */	mr r28, r3
/* 8029A0CC 0026368C  7C 9D 23 78 */	mr r29, r4
/* 8029A0D0 00263690  7C BE 2B 78 */	mr r30, r5
/* 8029A0D4 00263694  48 1A A9 45 */	bl __ct__8CProcessFv
/* 8029A0D8 00263698  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 8029A0DC 0026369C  3C C0 80 54 */	lis r6, __vt__CMenuTutorial@ha
/* 8029A0E0 002636A0  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 8029A0E4 002636A4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8029A0E8 002636A8  3D 20 80 51 */	lis r9, lbl_8050CE10@ha
/* 8029A0EC 002636AC  38 C6 C9 78 */	addi r6, r6, __vt__CMenuTutorial@l
/* 8029A0F0 002636B0  84 A9 CE 10 */	lwzu r5, lbl_8050CE10@l(r9)
/* 8029A0F4 002636B4  38 06 00 24 */	addi r0, r6, 0x24
/* 8029A0F8 002636B8  3B E0 00 00 */	li r31, 0
/* 8029A0FC 002636BC  38 80 00 00 */	li r4, 0
/* 8029A100 002636C0  80 69 00 04 */	lwz r3, 4(r9)
/* 8029A104 002636C4  90 7C 00 40 */	stw r3, 0x40(r28)
/* 8029A108 002636C8  38 7C 00 60 */	addi r3, r28, 0x60
/* 8029A10C 002636CC  90 BC 00 3C */	stw r5, 0x3c(r28)
/* 8029A110 002636D0  38 A0 00 00 */	li r5, 0
/* 8029A114 002636D4  80 E9 00 08 */	lwz r7, 8(r9)
/* 8029A118 002636D8  90 FC 00 44 */	stw r7, 0x44(r28)
/* 8029A11C 002636DC  81 09 00 00 */	lwz r8, 0(r9)
/* 8029A120 002636E0  80 E9 00 04 */	lwz r7, 4(r9)
/* 8029A124 002636E4  90 FC 00 4C */	stw r7, 0x4c(r28)
/* 8029A128 002636E8  91 1C 00 48 */	stw r8, 0x48(r28)
/* 8029A12C 002636EC  80 E9 00 08 */	lwz r7, 8(r9)
/* 8029A130 002636F0  90 FC 00 50 */	stw r7, 0x50(r28)
/* 8029A134 002636F4  9B FC 00 54 */	stb r31, 0x54(r28)
/* 8029A138 002636F8  9B FC 00 55 */	stb r31, 0x55(r28)
/* 8029A13C 002636FC  90 DC 00 10 */	stw r6, 0x10(r28)
/* 8029A140 00263700  90 1C 00 58 */	stw r0, 0x58(r28)
/* 8029A144 00263704  93 BC 00 5C */	stw r29, 0x5c(r28)
/* 8029A148 00263708  48 00 07 ED */	bl __ct__CTutorial
/* 8029A14C 0026370C  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 8029A150 00263710  38 80 00 00 */	li r4, 0
/* 8029A154 00263714  38 A0 00 00 */	li r5, 0
/* 8029A158 00263718  4B F2 9D 79 */	bl __ct__CTitleAHelp
/* 8029A15C 0026371C  9B FC 00 EC */	stb r31, 0xec(r28)
/* 8029A160 00263720  9B DC 00 ED */	stb r30, 0xed(r28)
/* 8029A164 00263724  9B FC 00 EE */	stb r31, 0xee(r28)
/* 8029A168 00263728  93 FC 00 F0 */	stw r31, 0xf0(r28)
/* 8029A16C 0026372C  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 8029A170 00263730  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 8029A174 00263734  98 1C 00 EE */	stb r0, 0xee(r28)
/* 8029A178 00263738  40 82 00 0C */	bne .L_8029A184
/* 8029A17C 0026373C  38 60 00 01 */	li r3, 1
/* 8029A180 00263740  4B DE 87 CD */	bl func_8008294C
.L_8029A184:
/* 8029A184 00263744  4B EA 17 ED */	bl func_8013B970
/* 8029A188 00263748  4B DE CD BD */	bl func_80086F44
/* 8029A18C 0026374C  90 7C 00 F0 */	stw r3, 0xf0(r28)
/* 8029A190 00263750  38 60 FF FF */	li r3, -1
/* 8029A194 00263754  4B DE CE 09 */	bl func_80086F9C
/* 8029A198 00263758  2C 03 00 00 */	cmpwi r3, 0
/* 8029A19C 0026375C  3B E0 00 30 */	li r31, 0x30
/* 8029A1A0 00263760  41 82 00 08 */	beq .L_8029A1A8
/* 8029A1A4 00263764  3F E0 00 60 */	lis r31, 0x60
.L_8029A1A8:
/* 8029A1A8 00263768  38 60 FF FF */	li r3, -1
/* 8029A1AC 0026376C  38 80 00 00 */	li r4, 0
/* 8029A1B0 00263770  4B DE CC 11 */	bl func_80086DC0
/* 8029A1B4 00263774  7F E3 FB 78 */	mr r3, r31
/* 8029A1B8 00263778  38 80 00 01 */	li r4, 1
/* 8029A1BC 0026377C  4B DE CC 05 */	bl func_80086DC0
/* 8029A1C0 00263780  7F 83 E3 78 */	mr r3, r28
/* 8029A1C4 00263784  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 8029A1C8 00263788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029A1CC 0026378C  7C 08 03 A6 */	mtlr r0
/* 8029A1D0 00263790  38 21 00 20 */	addi r1, r1, 0x20
/* 8029A1D4 00263794  4E 80 00 20 */	blr
.endfn __ct__CMenuTutorial

.fn __dt__CMenuTutorial, global
/* 8029A1D8 00263798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A1DC 0026379C  7C 08 02 A6 */	mflr r0
/* 8029A1E0 002637A0  2C 03 00 00 */	cmpwi r3, 0
/* 8029A1E4 002637A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A1E8 002637A8  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029A1EC 002637AC  7C 7E 1B 78 */	mr r30, r3
/* 8029A1F0 002637B0  7C 9F 23 78 */	mr r31, r4
/* 8029A1F4 002637B4  41 82 00 38 */	beq .L_8029A22C
/* 8029A1F8 002637B8  38 80 FF FF */	li r4, -1
/* 8029A1FC 002637BC  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8029A200 002637C0  4B F2 9D 51 */	bl __dt__CTitleAHelp
/* 8029A204 002637C4  38 7E 00 60 */	addi r3, r30, 0x60
/* 8029A208 002637C8  38 80 FF FF */	li r4, -1
/* 8029A20C 002637CC  48 00 07 C9 */	bl __dt__CTutorial
/* 8029A210 002637D0  7F C3 F3 78 */	mr r3, r30
/* 8029A214 002637D4  38 80 00 00 */	li r4, 0
/* 8029A218 002637D8  4B E6 4A F5 */	bl __dt__800FED0C
/* 8029A21C 002637DC  2C 1F 00 00 */	cmpwi r31, 0
/* 8029A220 002637E0  40 81 00 0C */	ble .L_8029A22C
/* 8029A224 002637E4  7F C3 F3 78 */	mr r3, r30
/* 8029A228 002637E8  48 19 AA 05 */	bl __dl__FPv
.L_8029A22C:
/* 8029A22C 002637EC  7F C3 F3 78 */	mr r3, r30
/* 8029A230 002637F0  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029A234 002637F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A238 002637F8  7C 08 03 A6 */	mtlr r0
/* 8029A23C 002637FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A240 00263800  4E 80 00 20 */	blr 
.endfn __dt__CMenuTutorial

.fn CMenuTutorial_Init, global
/* 8029A244 00263804  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8029A248 00263808  7C 08 02 A6 */	mflr r0
/* 8029A24C 0026380C  3C 80 80 51 */	lis r4, CMenuTutorial_strpool@ha
/* 8029A250 00263810  38 A0 00 23 */	li r5, 0x23
/* 8029A254 00263814  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8029A258 00263818  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8029A25C 0026381C  7C 7F 1B 78 */	mr r31, r3
/* 8029A260 00263820  38 64 B8 58 */	addi r3, r4, CMenuTutorial_strpool@l
/* 8029A264 00263824  38 83 00 09 */	addi r4, r3, 9
/* 8029A268 00263828  4B E9 BF 29 */	bl func_80136190
/* 8029A26C 0026382C  7C 64 1B 78 */	mr r4, r3
/* 8029A270 00263830  38 61 00 08 */	addi r3, r1, 8
/* 8029A274 00263834  38 A0 00 6F */	li r5, 0x6f
/* 8029A278 00263838  4B F2 9C 59 */	bl __ct__CTitleAHelp
/* 8029A27C 0026383C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029A280 00263840  38 81 00 0C */	addi r4, r1, 0xc
/* 8029A284 00263844  4B E8 26 F1 */	bl __ct__UnkClass_8011C974
/* 8029A288 00263848  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8029A28C 0026384C  38 61 00 08 */	addi r3, r1, 8
/* 8029A290 00263850  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8029A294 00263854  38 80 FF FF */	li r4, -1
/* 8029A298 00263858  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8029A29C 0026385C  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 8029A2A0 00263860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029A2A4 00263864  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8029A2A8 00263868  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8029A2AC 0026386C  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 8029A2B0 00263870  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8029A2B4 00263874  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 8029A2B8 00263878  88 01 00 30 */	lbz r0, 0x30(r1)
/* 8029A2BC 0026387C  98 1F 00 DC */	stb r0, 0xdc(r31)
/* 8029A2C0 00263880  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8029A2C4 00263884  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 8029A2C8 00263888  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8029A2CC 0026388C  90 1F 00 E4 */	stw r0, 0xe4(r31)
/* 8029A2D0 00263890  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 8029A2D4 00263894  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 8029A2D8 00263898  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 8029A2DC 0026389C  98 1F 00 E9 */	stb r0, 0xe9(r31)
/* 8029A2E0 002638A0  88 01 00 3E */	lbz r0, 0x3e(r1)
/* 8029A2E4 002638A4  98 1F 00 EA */	stb r0, 0xea(r31)
/* 8029A2E8 002638A8  88 01 00 3F */	lbz r0, 0x3f(r1)
/* 8029A2EC 002638AC  98 1F 00 EB */	stb r0, 0xeb(r31)
/* 8029A2F0 002638B0  4B F2 9C 61 */	bl __dt__CTitleAHelp
/* 8029A2F4 002638B4  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A2F8 002638B8  4B F2 9C AD */	bl CTitleAHelp_load
/* 8029A2FC 002638BC  88 9F 00 ED */	lbz r4, 0xed(r31)
/* 8029A300 002638C0  38 61 00 40 */	addi r3, r1, 0x40
/* 8029A304 002638C4  38 A0 00 01 */	li r5, 1
/* 8029A308 002638C8  48 00 06 2D */	bl __ct__CTutorial
/* 8029A30C 002638CC  38 7F 00 64 */	addi r3, r31, 0x64
/* 8029A310 002638D0  38 81 00 44 */	addi r4, r1, 0x44
/* 8029A314 002638D4  4B E8 26 61 */	bl __ct__UnkClass_8011C974
/* 8029A318 002638D8  38 7F 00 74 */	addi r3, r31, 0x74
/* 8029A31C 002638DC  38 81 00 54 */	addi r4, r1, 0x54
/* 8029A320 002638E0  4B E8 26 55 */	bl __ct__UnkClass_8011C974
/* 8029A324 002638E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8029A328 002638E8  38 61 00 40 */	addi r3, r1, 0x40
/* 8029A32C 002638EC  90 1F 00 84 */	stw r0, 0x84(r31)
/* 8029A330 002638F0  38 80 FF FF */	li r4, -1
/* 8029A334 002638F4  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8029A338 002638F8  90 1F 00 88 */	stw r0, 0x88(r31)
/* 8029A33C 002638FC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8029A340 00263900  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 8029A344 00263904  80 01 00 70 */	lwz r0, 0x70(r1)
/* 8029A348 00263908  90 1F 00 90 */	stw r0, 0x90(r31)
/* 8029A34C 0026390C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8029A350 00263910  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8029A354 00263914  80 01 00 78 */	lwz r0, 0x78(r1)
/* 8029A358 00263918  90 1F 00 98 */	stw r0, 0x98(r31)
/* 8029A35C 0026391C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8029A360 00263920  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 8029A364 00263924  80 01 00 80 */	lwz r0, 0x80(r1)
/* 8029A368 00263928  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 8029A36C 0026392C  88 01 00 84 */	lbz r0, 0x84(r1)
/* 8029A370 00263930  98 1F 00 A4 */	stb r0, 0xa4(r31)
/* 8029A374 00263934  88 01 00 85 */	lbz r0, 0x85(r1)
/* 8029A378 00263938  98 1F 00 A5 */	stb r0, 0xa5(r31)
/* 8029A37C 0026393C  88 01 00 86 */	lbz r0, 0x86(r1)
/* 8029A380 00263940  98 1F 00 A6 */	stb r0, 0xa6(r31)
/* 8029A384 00263944  88 01 00 87 */	lbz r0, 0x87(r1)
/* 8029A388 00263948  98 1F 00 A7 */	stb r0, 0xa7(r31)
/* 8029A38C 0026394C  88 01 00 88 */	lbz r0, 0x88(r1)
/* 8029A390 00263950  98 1F 00 A8 */	stb r0, 0xa8(r31)
/* 8029A394 00263954  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8029A398 00263958  90 1F 00 AC */	stw r0, 0xac(r31)
/* 8029A39C 0026395C  88 01 00 90 */	lbz r0, 0x90(r1)
/* 8029A3A0 00263960  98 1F 00 B0 */	stb r0, 0xb0(r31)
/* 8029A3A4 00263964  88 01 00 91 */	lbz r0, 0x91(r1)
/* 8029A3A8 00263968  98 1F 00 B1 */	stb r0, 0xb1(r31)
/* 8029A3AC 0026396C  88 01 00 92 */	lbz r0, 0x92(r1)
/* 8029A3B0 00263970  98 1F 00 B2 */	stb r0, 0xb2(r31)
/* 8029A3B4 00263974  88 01 00 93 */	lbz r0, 0x93(r1)
/* 8029A3B8 00263978  98 1F 00 B3 */	stb r0, 0xb3(r31)
/* 8029A3BC 0026397C  48 00 06 19 */	bl __dt__CTutorial
/* 8029A3C0 00263980  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A3C4 00263984  48 00 06 71 */	bl func_8029AA34
/* 8029A3C8 00263988  2C 1F 00 00 */	cmpwi r31, 0
/* 8029A3CC 0026398C  7F E4 FB 78 */	mr r4, r31
/* 8029A3D0 00263990  41 82 00 08 */	beq .L_8029A3D8
/* 8029A3D4 00263994  38 9F 00 58 */	addi r4, r31, 0x58
.L_8029A3D8:
/* 8029A3D8 00263998  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 8029A3DC 0026399C  38 A0 00 11 */	li r5, 0x11
/* 8029A3E0 002639A0  38 C0 00 00 */	li r6, 0
/* 8029A3E4 002639A4  48 1F BA D1 */	bl func_80495EB4
/* 8029A3E8 002639A8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8029A3EC 002639AC  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8029A3F0 002639B0  7C 08 03 A6 */	mtlr r0
/* 8029A3F4 002639B4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8029A3F8 002639B8  4E 80 00 20 */	blr 
.endfn CMenuTutorial_Init

.fn func_8029A3FC, global
/* 8029A3FC 002639BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A400 002639C0  7C 08 02 A6 */	mflr r0
/* 8029A404 002639C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A408 002639C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A40C 002639CC  7C 7F 1B 78 */	mr r31, r3
/* 8029A410 002639D0  48 1A E6 35 */	bl func_80448A44
/* 8029A414 002639D4  2C 1F 00 00 */	cmpwi r31, 0
/* 8029A418 002639D8  7F E4 FB 78 */	mr r4, r31
/* 8029A41C 002639DC  41 82 00 08 */	beq .L_8029A424
/* 8029A420 002639E0  38 9F 00 58 */	addi r4, r31, 0x58
.L_8029A424:
/* 8029A424 002639E4  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 8029A428 002639E8  48 1F BB 29 */	bl func_80495F50
/* 8029A42C 002639EC  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A430 002639F0  4B F2 9C 71 */	bl func_801C40A0
/* 8029A434 002639F4  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A438 002639F8  48 00 07 A1 */	bl func_8029ABD8
/* 8029A43C 002639FC  38 00 00 00 */	li r0, 0
/* 8029A440 00263A00  90 0D B1 98 */	stw r0, lbl_80667318@sda21(r13)
/* 8029A444 00263A04  38 60 FF FF */	li r3, -1
/* 8029A448 00263A08  38 80 00 00 */	li r4, 0
/* 8029A44C 00263A0C  4B DE C9 75 */	bl func_80086DC0
/* 8029A450 00263A10  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8029A454 00263A14  38 80 00 01 */	li r4, 1
/* 8029A458 00263A18  4B DE C9 69 */	bl func_80086DC0
/* 8029A45C 00263A1C  4B EA 15 25 */	bl func_8013B980
/* 8029A460 00263A20  88 1F 00 EE */	lbz r0, 0xee(r31)
/* 8029A464 00263A24  2C 00 00 00 */	cmpwi r0, 0
/* 8029A468 00263A28  40 82 00 1C */	bne .L_8029A484
/* 8029A46C 00263A2C  4B EA 15 39 */	bl func_8013B9A4
/* 8029A470 00263A30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029A474 00263A34  40 82 00 0C */	bne .L_8029A480
/* 8029A478 00263A38  38 60 00 00 */	li r3, 0
/* 8029A47C 00263A3C  4B DE 84 D1 */	bl func_8008294C
.L_8029A480:
/* 8029A480 00263A40  4B E9 B0 D1 */	bl func_80135550
.L_8029A484:
/* 8029A484 00263A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A488 00263A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A48C 00263A4C  7C 08 03 A6 */	mtlr r0
/* 8029A490 00263A50  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A494 00263A54  4E 80 00 20 */	blr 
.endfn func_8029A3FC

.fn func_8029A498, global
/* 8029A498 00263A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A49C 00263A5C  7C 08 02 A6 */	mflr r0
/* 8029A4A0 00263A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A4A4 00263A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A4A8 00263A68  7C 7F 1B 78 */	mr r31, r3
/* 8029A4AC 00263A6C  4B DA 60 3D */	bl func_800404E8
/* 8029A4B0 00263A70  4B DA 82 41 */	bl func_800426F0
/* 8029A4B4 00263A74  2C 03 00 00 */	cmpwi r3, 0
/* 8029A4B8 00263A78  40 82 00 78 */	bne .L_8029A530
/* 8029A4BC 00263A7C  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8029A4C0 00263A80  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8029A4C4 00263A84  41 82 00 08 */	beq .L_8029A4CC
/* 8029A4C8 00263A88  48 00 00 68 */	b .L_8029A530
.L_8029A4CC:
/* 8029A4CC 00263A8C  88 1F 00 EC */	lbz r0, 0xec(r31)
/* 8029A4D0 00263A90  2C 00 00 00 */	cmpwi r0, 0
/* 8029A4D4 00263A94  41 82 00 20 */	beq .L_8029A4F4
/* 8029A4D8 00263A98  2C 00 00 01 */	cmpwi r0, 1
/* 8029A4DC 00263A9C  41 82 00 24 */	beq .L_8029A500
/* 8029A4E0 00263AA0  2C 00 00 02 */	cmpwi r0, 2
/* 8029A4E4 00263AA4  41 82 00 28 */	beq .L_8029A50C
/* 8029A4E8 00263AA8  2C 00 00 03 */	cmpwi r0, 3
/* 8029A4EC 00263AAC  41 82 00 2C */	beq .L_8029A518
/* 8029A4F0 00263AB0  48 00 00 30 */	b .L_8029A520
.L_8029A4F4:
/* 8029A4F4 00263AB4  7F E3 FB 78 */	mr r3, r31
/* 8029A4F8 00263AB8  48 00 01 71 */	bl func_8029A668
/* 8029A4FC 00263ABC  48 00 00 24 */	b .L_8029A520
.L_8029A500:
/* 8029A500 00263AC0  7F E3 FB 78 */	mr r3, r31
/* 8029A504 00263AC4  48 00 02 61 */	bl func_8029A764
/* 8029A508 00263AC8  48 00 00 18 */	b .L_8029A520
.L_8029A50C:
/* 8029A50C 00263ACC  7F E3 FB 78 */	mr r3, r31
/* 8029A510 00263AD0  48 00 02 A5 */	bl func_8029A7B4
/* 8029A514 00263AD4  48 00 00 0C */	b .L_8029A520
.L_8029A518:
/* 8029A518 00263AD8  7F E3 FB 78 */	mr r3, r31
/* 8029A51C 00263ADC  48 00 03 B9 */	bl func_8029A8D4
.L_8029A520:
/* 8029A520 00263AE0  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A524 00263AE4  4B F2 9A CD */	bl func_801C3FF0
/* 8029A528 00263AE8  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A52C 00263AEC  48 00 05 FD */	bl func_8029AB28
.L_8029A530:
/* 8029A530 00263AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A534 00263AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A538 00263AF8  7C 08 03 A6 */	mtlr r0
/* 8029A53C 00263AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A540 00263B00  4E 80 00 20 */	blr
.endfn func_8029A498

.fn func_8029A544, global
/* 8029A544 00263B04  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8029A548 00263B08  7C 08 02 A6 */	mflr r0
/* 8029A54C 00263B0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8029A550 00263B10  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8029A554 00263B14  7C 7F 1B 78 */	mr r31, r3
/* 8029A558 00263B18  4B DA 5F 91 */	bl func_800404E8
/* 8029A55C 00263B1C  4B DA 81 95 */	bl func_800426F0
/* 8029A560 00263B20  2C 03 00 00 */	cmpwi r3, 0
/* 8029A564 00263B24  40 82 00 64 */	bne .L_8029A5C8
/* 8029A568 00263B28  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8029A56C 00263B2C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8029A570 00263B30  41 82 00 08 */	beq .L_8029A578
/* 8029A574 00263B34  48 00 00 54 */	b .L_8029A5C8
.L_8029A578:
/* 8029A578 00263B38  4B EA 18 D9 */	bl func_8013BE50
/* 8029A57C 00263B3C  2C 03 00 00 */	cmpwi r3, 0
/* 8029A580 00263B40  41 82 00 48 */	beq .L_8029A5C8
/* 8029A584 00263B44  38 60 00 00 */	li r3, 0
/* 8029A588 00263B48  38 80 00 00 */	li r4, 0
/* 8029A58C 00263B4C  38 A0 00 00 */	li r5, 0
/* 8029A590 00263B50  48 08 3C B1 */	bl GXSetZMode
/* 8029A594 00263B54  38 61 00 08 */	addi r3, r1, 8
/* 8029A598 00263B58  48 16 E0 D1 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 8029A59C 00263B5C  38 61 00 08 */	addi r3, r1, 8
/* 8029A5A0 00263B60  4B E9 CC B1 */	bl func_80137250
/* 8029A5A4 00263B64  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A5A8 00263B68  38 81 00 08 */	addi r4, r1, 8
/* 8029A5AC 00263B6C  48 00 06 0D */	bl func_8029ABB8
/* 8029A5B0 00263B70  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A5B4 00263B74  38 81 00 08 */	addi r4, r1, 8
/* 8029A5B8 00263B78  4B F2 9A C9 */	bl func_801C4080
/* 8029A5BC 00263B7C  38 61 00 08 */	addi r3, r1, 8
/* 8029A5C0 00263B80  38 80 FF FF */	li r4, -1
/* 8029A5C4 00263B84  48 16 E1 19 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_8029A5C8:
/* 8029A5C8 00263B88  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8029A5CC 00263B8C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8029A5D0 00263B90  7C 08 03 A6 */	mtlr r0
/* 8029A5D4 00263B94  38 21 00 70 */	addi r1, r1, 0x70
/* 8029A5D8 00263B98  4E 80 00 20 */	blr 
.endfn func_8029A544

.fn func_8029A5DC, global
/* 8029A5DC 00263B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029A5E0 00263BA0  7C 08 02 A6 */	mflr r0
/* 8029A5E4 00263BA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029A5E8 00263BA8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8029A5EC 00263BAC  7C 7D 1B 78 */	mr r29, r3
/* 8029A5F0 00263BB0  7C 9E 23 78 */	mr r30, r4
/* 8029A5F4 00263BB4  7C BF 2B 78 */	mr r31, r5
/* 8029A5F8 00263BB8  80 0D B1 98 */	lwz r0, lbl_80667318@sda21(r13)
/* 8029A5FC 00263BBC  2C 00 00 00 */	cmpwi r0, 0
/* 8029A600 00263BC0  41 82 00 0C */	beq .L_8029A60C
/* 8029A604 00263BC4  38 60 00 00 */	li r3, 0
/* 8029A608 00263BC8  48 00 00 3C */	b .L_8029A644
.L_8029A60C:
/* 8029A60C 00263BCC  48 19 CF A9 */	bl getHeapIndex
/* 8029A610 00263BD0  7C 64 1B 78 */	mr r4, r3
/* 8029A614 00263BD4  38 60 00 F4 */	li r3, 0xf4
/* 8029A618 00263BD8  48 19 A4 45 */	bl heap_malloc
/* 8029A61C 00263BDC  2C 03 00 00 */	cmpwi r3, 0
/* 8029A620 00263BE0  41 82 00 10 */	beq .L_8029A630
/* 8029A624 00263BE4  7F C4 F3 78 */	mr r4, r30
/* 8029A628 00263BE8  7F E5 FB 78 */	mr r5, r31
/* 8029A62C 00263BEC  4B FF FA 8D */	bl __ct__CMenuTutorial
.L_8029A630:
/* 8029A630 00263BF0  90 6D B1 98 */	stw r3, lbl_80667318@sda21(r13)
/* 8029A634 00263BF4  7F A4 EB 78 */	mr r4, r29
/* 8029A638 00263BF8  38 A0 00 00 */	li r5, 0
/* 8029A63C 00263BFC  48 1A A6 39 */	bl func_80444C74
/* 8029A640 00263C00  80 6D B1 98 */	lwz r3, lbl_80667318@sda21(r13)
.L_8029A644:
/* 8029A644 00263C04  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8029A648 00263C08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029A64C 00263C0C  7C 08 03 A6 */	mtlr r0
/* 8029A650 00263C10  38 21 00 20 */	addi r1, r1, 0x20
/* 8029A654 00263C14  4E 80 00 20 */	blr 
.endfn func_8029A5DC

.fn func_8029A658, global
/* 8029A658 00263C18  80 6D B1 98 */	lwz r3, lbl_80667318@sda21(r13)
/* 8029A65C 00263C1C  30 03 FF FF */	addic r0, r3, -1
/* 8029A660 00263C20  7C 60 19 10 */	subfe r3, r0, r3
/* 8029A664 00263C24  4E 80 00 20 */	blr 
.endfn func_8029A658

.fn func_8029A668, global
/* 8029A668 00263C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A66C 00263C2C  7C 08 02 A6 */	mflr r0
/* 8029A670 00263C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A674 00263C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A678 00263C38  7C 7F 1B 78 */	mr r31, r3
/* 8029A67C 00263C3C  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8029A680 00263C40  4B F2 9A 95 */	bl func_801C4114
/* 8029A684 00263C44  2C 03 00 00 */	cmpwi r3, 0
/* 8029A688 00263C48  41 82 00 C8 */	beq .L_8029A750
/* 8029A68C 00263C4C  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A690 00263C50  48 00 06 1D */	bl func_8029ACAC
/* 8029A694 00263C54  2C 03 00 00 */	cmpwi r3, 0
/* 8029A698 00263C58  41 82 00 B8 */	beq .L_8029A750
/* 8029A69C 00263C5C  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A6A0 00263C60  4B F2 A0 C1 */	bl func_801C4760
/* 8029A6A4 00263C64  3C 80 80 51 */	lis r4, CMenuTutorial_strpool@ha
/* 8029A6A8 00263C68  88 BF 00 ED */	lbz r5, 0xed(r31)
/* 8029A6AC 00263C6C  38 84 B8 58 */	addi r4, r4, CMenuTutorial_strpool@l
/* 8029A6B0 00263C70  38 64 00 0E */	addi r3, r4, 0xe
/* 8029A6B4 00263C74  38 84 00 17 */	addi r4, r4, 0x17
/* 8029A6B8 00263C78  4B E9 BA D9 */	bl func_80136190
/* 8029A6BC 00263C7C  7C 64 1B 78 */	mr r4, r3
/* 8029A6C0 00263C80  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A6C4 00263C84  4B F2 9A FD */	bl func_801C41C0
/* 8029A6C8 00263C88  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A6CC 00263C8C  48 00 07 91 */	bl func_8029AE5C
/* 8029A6D0 00263C90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029A6D4 00263C94  41 82 00 20 */	beq .L_8029A6F4
/* 8029A6D8 00263C98  2C 00 00 01 */	cmpwi r0, 1
/* 8029A6DC 00263C9C  41 82 00 28 */	beq .L_8029A704
/* 8029A6E0 00263CA0  2C 00 00 02 */	cmpwi r0, 2
/* 8029A6E4 00263CA4  41 82 00 30 */	beq .L_8029A714
/* 8029A6E8 00263CA8  2C 00 00 03 */	cmpwi r0, 3
/* 8029A6EC 00263CAC  41 82 00 38 */	beq .L_8029A724
/* 8029A6F0 00263CB0  48 00 00 40 */	b .L_8029A730
.L_8029A6F4:
/* 8029A6F4 00263CB4  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A6F8 00263CB8  38 80 00 6F */	li r4, 0x6f
/* 8029A6FC 00263CBC  4B F2 9A ED */	bl func_801C41E8
/* 8029A700 00263CC0  48 00 00 30 */	b .L_8029A730
.L_8029A704:
/* 8029A704 00263CC4  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A708 00263CC8  38 80 00 70 */	li r4, 0x70
/* 8029A70C 00263CCC  4B F2 9A DD */	bl func_801C41E8
/* 8029A710 00263CD0  48 00 00 20 */	b .L_8029A730
.L_8029A714:
/* 8029A714 00263CD4  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A718 00263CD8  38 80 00 71 */	li r4, 0x71
/* 8029A71C 00263CDC  4B F2 9A CD */	bl func_801C41E8
/* 8029A720 00263CE0  48 00 00 10 */	b .L_8029A730
.L_8029A724:
/* 8029A724 00263CE4  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A728 00263CE8  38 80 00 72 */	li r4, 0x72
/* 8029A72C 00263CEC  4B F2 9A BD */	bl func_801C41E8
.L_8029A730:
/* 8029A730 00263CF0  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8029A734 00263CF4  4B F2 99 F9 */	bl func_801C412C
/* 8029A738 00263CF8  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A73C 00263CFC  48 00 05 89 */	bl func_8029ACC4
/* 8029A740 00263D00  38 00 00 01 */	li r0, 1
/* 8029A744 00263D04  98 1F 00 EC */	stb r0, 0xec(r31)
/* 8029A748 00263D08  38 60 00 6D */	li r3, 0x6d
/* 8029A74C 00263D0C  4B E9 D9 2D */	bl func_80138078
.L_8029A750:
/* 8029A750 00263D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A754 00263D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A758 00263D18  7C 08 03 A6 */	mtlr r0
/* 8029A75C 00263D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A760 00263D20  4E 80 00 20 */	blr 
.endfn func_8029A668

.fn func_8029A764, global
/* 8029A764 00263D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A768 00263D28  7C 08 02 A6 */	mflr r0
/* 8029A76C 00263D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A770 00263D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A774 00263D34  7C 7F 1B 78 */	mr r31, r3
/* 8029A778 00263D38  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8029A77C 00263D3C  4B F2 99 A9 */	bl func_801C4124
/* 8029A780 00263D40  2C 03 00 00 */	cmpwi r3, 0
/* 8029A784 00263D44  41 82 00 1C */	beq .L_8029A7A0
/* 8029A788 00263D48  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A78C 00263D4C  48 00 05 29 */	bl func_8029ACB4
/* 8029A790 00263D50  2C 03 00 00 */	cmpwi r3, 0
/* 8029A794 00263D54  41 82 00 0C */	beq .L_8029A7A0
/* 8029A798 00263D58  38 00 00 02 */	li r0, 2
/* 8029A79C 00263D5C  98 1F 00 EC */	stb r0, 0xec(r31)
.L_8029A7A0:
/* 8029A7A0 00263D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A7A4 00263D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A7A8 00263D68  7C 08 03 A6 */	mtlr r0
/* 8029A7AC 00263D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A7B0 00263D70  4E 80 00 20 */	blr 
.endfn func_8029A764

.fn func_8029A7B4, global
/* 8029A7B4 00263D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A7B8 00263D78  7C 08 02 A6 */	mflr r0
/* 8029A7BC 00263D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A7C0 00263D80  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029A7C4 00263D84  7C 7E 1B 78 */	mr r30, r3
/* 8029A7C8 00263D88  38 63 00 60 */	addi r3, r3, 0x60
/* 8029A7CC 00263D8C  48 00 04 E1 */	bl func_8029ACAC
/* 8029A7D0 00263D90  2C 03 00 00 */	cmpwi r3, 0
/* 8029A7D4 00263D94  41 82 00 EC */	beq .L_8029A8C0
/* 8029A7D8 00263D98  4B DE C9 E5 */	bl func_800871BC
/* 8029A7DC 00263D9C  7C 7F 1B 78 */	mr r31, r3
/* 8029A7E0 00263DA0  38 60 FF FF */	li r3, -1
/* 8029A7E4 00263DA4  4B DE C7 B9 */	bl func_80086F9C
/* 8029A7E8 00263DA8  2C 03 00 00 */	cmpwi r3, 0
/* 8029A7EC 00263DAC  41 82 00 14 */	beq .L_8029A800
/* 8029A7F0 00263DB0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8029A7F4 00263DB4  54 03 5F FE */	rlwinm r3, r0, 0xb, 0x1f, 0x1f
/* 8029A7F8 00263DB8  54 00 57 FE */	rlwinm r0, r0, 0xa, 0x1f, 0x1f
/* 8029A7FC 00263DBC  48 00 00 10 */	b .L_8029A80C
.L_8029A800:
/* 8029A800 00263DC0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8029A804 00263DC4  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 8029A808 00263DC8  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
.L_8029A80C:
/* 8029A80C 00263DCC  2C 03 00 00 */	cmpwi r3, 0
/* 8029A810 00263DD0  41 82 00 38 */	beq .L_8029A848
/* 8029A814 00263DD4  38 7E 00 60 */	addi r3, r30, 0x60
/* 8029A818 00263DD8  48 00 05 71 */	bl func_8029AD88
/* 8029A81C 00263DDC  38 7E 00 60 */	addi r3, r30, 0x60
/* 8029A820 00263DE0  48 00 04 9D */	bl func_8029ACBC
/* 8029A824 00263DE4  2C 03 00 00 */	cmpwi r3, 0
/* 8029A828 00263DE8  41 82 00 30 */	beq .L_8029A858
/* 8029A82C 00263DEC  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8029A830 00263DF0  4B F2 99 1D */	bl func_801C414C
/* 8029A834 00263DF4  38 7E 00 60 */	addi r3, r30, 0x60
/* 8029A838 00263DF8  48 00 04 B5 */	bl func_8029ACEC
/* 8029A83C 00263DFC  38 00 00 03 */	li r0, 3
/* 8029A840 00263E00  98 1E 00 EC */	stb r0, 0xec(r30)
/* 8029A844 00263E04  48 00 00 14 */	b .L_8029A858
.L_8029A848:
/* 8029A848 00263E08  2C 00 00 00 */	cmpwi r0, 0
/* 8029A84C 00263E0C  41 82 00 0C */	beq .L_8029A858
/* 8029A850 00263E10  38 7E 00 60 */	addi r3, r30, 0x60
/* 8029A854 00263E14  48 00 05 A5 */	bl func_8029ADF8
.L_8029A858:
/* 8029A858 00263E18  38 7E 00 60 */	addi r3, r30, 0x60
/* 8029A85C 00263E1C  48 00 06 01 */	bl func_8029AE5C
/* 8029A860 00263E20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029A864 00263E24  41 82 00 20 */	beq .L_8029A884
/* 8029A868 00263E28  2C 00 00 01 */	cmpwi r0, 1
/* 8029A86C 00263E2C  41 82 00 28 */	beq .L_8029A894
/* 8029A870 00263E30  2C 00 00 02 */	cmpwi r0, 2
/* 8029A874 00263E34  41 82 00 30 */	beq .L_8029A8A4
/* 8029A878 00263E38  2C 00 00 03 */	cmpwi r0, 3
/* 8029A87C 00263E3C  41 82 00 38 */	beq .L_8029A8B4
/* 8029A880 00263E40  48 00 00 40 */	b .L_8029A8C0
.L_8029A884:
/* 8029A884 00263E44  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8029A888 00263E48  38 80 00 6F */	li r4, 0x6f
/* 8029A88C 00263E4C  4B F2 99 5D */	bl func_801C41E8
/* 8029A890 00263E50  48 00 00 30 */	b .L_8029A8C0
.L_8029A894:
/* 8029A894 00263E54  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8029A898 00263E58  38 80 00 70 */	li r4, 0x70
/* 8029A89C 00263E5C  4B F2 99 4D */	bl func_801C41E8
/* 8029A8A0 00263E60  48 00 00 20 */	b .L_8029A8C0
.L_8029A8A4:
/* 8029A8A4 00263E64  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8029A8A8 00263E68  38 80 00 71 */	li r4, 0x71
/* 8029A8AC 00263E6C  4B F2 99 3D */	bl func_801C41E8
/* 8029A8B0 00263E70  48 00 00 10 */	b .L_8029A8C0
.L_8029A8B4:
/* 8029A8B4 00263E74  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8029A8B8 00263E78  38 80 00 72 */	li r4, 0x72
/* 8029A8BC 00263E7C  4B F2 99 2D */	bl func_801C41E8
.L_8029A8C0:
/* 8029A8C0 00263E80  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029A8C4 00263E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A8C8 00263E88  7C 08 03 A6 */	mtlr r0
/* 8029A8CC 00263E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A8D0 00263E90  4E 80 00 20 */	blr 
.endfn func_8029A7B4

.fn func_8029A8D4, global
/* 8029A8D4 00263E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A8D8 00263E98  7C 08 02 A6 */	mflr r0
/* 8029A8DC 00263E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A8E0 00263EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A8E4 00263EA4  7C 7F 1B 78 */	mr r31, r3
/* 8029A8E8 00263EA8  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8029A8EC 00263EAC  4B F2 98 39 */	bl func_801C4124
/* 8029A8F0 00263EB0  2C 03 00 00 */	cmpwi r3, 0
/* 8029A8F4 00263EB4  41 82 00 1C */	beq .L_8029A910
/* 8029A8F8 00263EB8  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029A8FC 00263EBC  48 00 03 B9 */	bl func_8029ACB4
/* 8029A900 00263EC0  2C 03 00 00 */	cmpwi r3, 0
/* 8029A904 00263EC4  41 82 00 0C */	beq .L_8029A910
/* 8029A908 00263EC8  38 00 00 01 */	li r0, 1
/* 8029A90C 00263ECC  98 1F 00 54 */	stb r0, 0x54(r31)
.L_8029A910:
/* 8029A910 00263ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A914 00263ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A918 00263ED8  7C 08 03 A6 */	mtlr r0
/* 8029A91C 00263EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A920 00263EE0  4E 80 00 20 */	blr 
.endfn func_8029A8D4

.fn func_8029A924, global
/* 8029A924 00263EE4  38 63 FF A8 */	addi r3, r3, -88
/* 8029A928 00263EE8  4B FF FC 1C */	b func_8029A544
.endfn func_8029A924

.fn func_8029A92C, global
/* 8029A92C 00263EEC  38 63 FF A8 */	addi r3, r3, -88
/* 8029A930 00263EF0  4B FF F8 A8 */	b __dt__CMenuTutorial
.endfn func_8029A92C

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CMenuTutorial_typestr, global
	.asciz "CMenuTutorial"
	.balign 4
.endobj CMenuTutorial_typestr


.obj CMenuTutorial_strpool, global
	.asciz "MNU_main"
	.asciz "name"
	.asciz "MNU_ttrl"
	.asciz "title"
	.balign 4
.endobj CMenuTutorial_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CMenuTutorial, global
	.4byte __RTTI__CMenuTutorial
	.4byte 0
	.4byte __dt__CMenuTutorial
	.4byte CChildListNode_Reset
	.4byte CMenuTutorial_Init
	.4byte func_8029A3FC
	.4byte func_8029A498
	.4byte CTTask_IUICf_func_80101FB8
	.4byte CProcess_func_80043F20
	.4byte __RTTI__CMenuTutorial
	.4byte 0xFFFFFFA8
	.4byte func_8029A92C
	.4byte func_8029A924
	.4byte func_8029A544
.endobj __vt__CMenuTutorial

.obj CMenuTutorial_hierarchy, global
	.4byte __RTTI__IScnRender
	.4byte 0x00000058
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte __RTTI__IUICf
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CMenuTutorial_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CMenuTutorial, global
	.4byte CMenuTutorial_typestr
	.4byte CMenuTutorial_hierarchy
.endobj __RTTI__CMenuTutorial


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667318, global
	.skip 0x8
.endobj lbl_80667318

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001A020", local
.hidden "@etb_8001A020"
	.4byte 0x20080000
	.4byte 0x00000094
	.4byte 0x00000038
	.4byte 0x000000A4
	.4byte 0x0000002C
	.4byte 0x000000CC
	.4byte 0x000F0020
	.4byte 0x00000000
	.4byte 0x0780001C
	.4byte 0x000000B4
	.4byte __dt__CTitleAHelp
	.4byte 0x0780001C
	.4byte 0x00000060
	.4byte __dt__CTutorial
	.4byte 0x0680001C
	.4byte 0x00000058
	.4byte __dt__IScnRender
	.4byte 0x8680001C
	.4byte 0x00000000
	.4byte __dt__800FED0C
.endobj "@etb_8001A020"

.obj "@etb_8001A070", local
.hidden "@etb_8001A070"
	.4byte 0x10080000
	.4byte 0x00000038
	.4byte 0x00000018
	.4byte 0x00000044
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0x8780001E
	.4byte 0x000000B4
	.4byte __dt__CTitleAHelp
	.4byte 0x0780001E
	.4byte 0x000000B4
	.4byte __dt__CTitleAHelp
	.4byte 0x0780001E
	.4byte 0x00000060
	.4byte __dt__CTutorial
	.4byte 0x8680001E
	.4byte 0x00000058
	.4byte __dt__IScnRender
.endobj "@etb_8001A070"

.obj "@etb_8001A0B8", local
.hidden "@etb_8001A0B8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A0B8"

.obj "@etb_8001A0C0", local
.hidden "@etb_8001A0C0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A0C0"

.obj "@etb_8001A0C8", local
.hidden "@etb_8001A0C8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A0C8"

.obj "@etb_8001A0D0", local
.hidden "@etb_8001A0D0"
	.4byte 0x08080000
	.4byte 0x00000060
	.4byte 0x00060010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
.endobj "@etb_8001A0D0"

.obj "@etb_8001A0E8", local
.hidden "@etb_8001A0E8"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001A0E8"

.obj "@etb_8001A0F0", local
.hidden "@etb_8001A0F0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A0F0"

.obj "@etb_8001A0F8", local
.hidden "@etb_8001A0F8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A0F8"

.obj "@etb_8001A100", local
.hidden "@etb_8001A100"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A100"

.obj "@etb_8001A108", local
.hidden "@etb_8001A108"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A108"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80032084", local
.hidden "@eti_80032084"
	.4byte __ct__CMenuTutorial
	.4byte 0x00000120
	.4byte "@etb_8001A020"
.endobj "@eti_80032084"

.obj "@eti_80032090", local
.hidden "@eti_80032090"
	.4byte __dt__CMenuTutorial
	.4byte 0x0000006C
	.4byte "@etb_8001A070"
.endobj "@eti_80032090"

.obj "@eti_8003209C", local
.hidden "@eti_8003209C"
	.4byte CMenuTutorial_Init
	.4byte 0x000001B8
	.4byte "@etb_8001A0B8"
.endobj "@eti_8003209C"

.obj "@eti_800320A8", local
.hidden "@eti_800320A8"
	.4byte func_8029A3FC
	.4byte 0x0000009C
	.4byte "@etb_8001A0C0"
.endobj "@eti_800320A8"

.obj "@eti_800320B4", local
.hidden "@eti_800320B4"
	.4byte func_8029A498
	.4byte 0x000000AC
	.4byte "@etb_8001A0C8"
.endobj "@eti_800320B4"

.obj "@eti_800320C0", local
.hidden "@eti_800320C0"
	.4byte func_8029A544
	.4byte 0x00000098
	.4byte "@etb_8001A0D0"
.endobj "@eti_800320C0"

.obj "@eti_800320CC", local
.hidden "@eti_800320CC"
	.4byte func_8029A5DC
	.4byte 0x0000007C
	.4byte "@etb_8001A0E8"
.endobj "@eti_800320CC"

.obj "@eti_800320D8", local
.hidden "@eti_800320D8"
	.4byte func_8029A668
	.4byte 0x000000FC
	.4byte "@etb_8001A0F0"
.endobj "@eti_800320D8"

.obj "@eti_800320E4", local
.hidden "@eti_800320E4"
	.4byte func_8029A764
	.4byte 0x00000050
	.4byte "@etb_8001A0F8"
.endobj "@eti_800320E4"

.obj "@eti_800320F0", local
.hidden "@eti_800320F0"
	.4byte func_8029A7B4
	.4byte 0x00000120
	.4byte "@etb_8001A100"
.endobj "@eti_800320F0"

.obj "@eti_800320FC", local
.hidden "@eti_800320FC"
	.4byte func_8029A8D4
	.4byte 0x00000050
	.4byte "@etb_8001A108"
.endobj "@eti_800320FC"
