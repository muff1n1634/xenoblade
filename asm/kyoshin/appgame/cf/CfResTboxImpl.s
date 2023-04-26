.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__cf_CfResTboxImpl, global
/* 801F8E34 001C23F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F8E38 001C23F8  7C 08 02 A6 */	mflr r0
/* 801F8E3C 001C23FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8E40 001C2400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F8E44 001C2404  7C 7F 1B 78 */	mr r31, r3
/* 801F8E48 001C2408  4B F7 39 A9 */	bl __ct__cf_CfResObjImpl
/* 801F8E4C 001C240C  3C 80 80 54 */	lis r4, __vt__cf_CfResTboxImpl@ha
/* 801F8E50 001C2410  7F E3 FB 78 */	mr r3, r31
/* 801F8E54 001C2414  38 84 89 C0 */	addi r4, r4, __vt__cf_CfResTboxImpl@l
/* 801F8E58 001C2418  90 9F 00 10 */	stw r4, 0x10(r31)
/* 801F8E5C 001C241C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F8E60 001C2420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F8E64 001C2424  7C 08 03 A6 */	mtlr r0
/* 801F8E68 001C2428  38 21 00 10 */	addi r1, r1, 0x10
/* 801F8E6C 001C242C  4E 80 00 20 */	blr 
.endfn __ct__cf_CfResTboxImpl

.fn func_801F8E70, global
/* 801F8E70 001C2430  38 60 01 00 */	li r3, 0x100
/* 801F8E74 001C2434  4E 80 00 20 */	blr 
.endfn func_801F8E70

.fn func_801F8E78, global
/* 801F8E78 001C2438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F8E7C 001C243C  7C 08 02 A6 */	mflr r0
/* 801F8E80 001C2440  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8E84 001C2444  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801F8E88 001C2448  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801F8E8C 001C244C  7D 89 03 A6 */	mtctr r12
/* 801F8E90 001C2450  4E 80 04 21 */	bctrl 
/* 801F8E94 001C2454  7C 60 00 34 */	cntlzw r0, r3
/* 801F8E98 001C2458  54 00 D9 7E */	srwi r0, r0, 5
/* 801F8E9C 001C245C  7C 60 00 D0 */	neg r3, r0
/* 801F8EA0 001C2460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F8EA4 001C2464  7C 08 03 A6 */	mtlr r0
/* 801F8EA8 001C2468  38 21 00 10 */	addi r1, r1, 0x10
/* 801F8EAC 001C246C  4E 80 00 20 */	blr 
.endfn func_801F8E78

.fn func_801F8EB0, global
/* 801F8EB0 001C2470  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801F8EB4 001C2474  7C 08 02 A6 */	mflr r0
/* 801F8EB8 001C2478  90 01 00 84 */	stw r0, 0x84(r1)
/* 801F8EBC 001C247C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801F8EC0 001C2480  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801F8EC4 001C2484  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801F8EC8 001C2488  7C 7F 1B 78 */	mr r31, r3
/* 801F8ECC 001C248C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801F8ED0 001C2490  93 A1 00 64 */	stw r29, 0x64(r1)
/* 801F8ED4 001C2494  80 63 00 00 */	lwz r3, 0(r3)
/* 801F8ED8 001C2498  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8EDC 001C249C  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 801F8EE0 001C24A0  7D 89 03 A6 */	mtctr r12
/* 801F8EE4 001C24A4  4E 80 04 21 */	bctrl 
/* 801F8EE8 001C24A8  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F8EEC 001C24AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8EF0 001C24B0  81 8C 01 78 */	lwz r12, 0x178(r12)
/* 801F8EF4 001C24B4  7D 89 03 A6 */	mtctr r12
/* 801F8EF8 001C24B8  4E 80 04 21 */	bctrl 
/* 801F8EFC 001C24BC  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F8F00 001C24C0  38 00 00 00 */	li r0, 0
/* 801F8F04 001C24C4  90 03 00 90 */	stw r0, 0x90(r3)
/* 801F8F08 001C24C8  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F8F0C 001C24CC  90 03 00 94 */	stw r0, 0x94(r3)
/* 801F8F10 001C24D0  4B E8 99 F1 */	bl func_80082900
/* 801F8F14 001C24D4  2C 03 00 00 */	cmpwi r3, 0
/* 801F8F18 001C24D8  41 82 02 74 */	beq .L_801F918C
/* 801F8F1C 001C24DC  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 801F8F20 001C24E0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 801F8F24 001C24E4  40 82 02 68 */	bne .L_801F918C
/* 801F8F28 001C24E8  4B E8 C9 35 */	bl func_8008585C
/* 801F8F2C 001C24EC  2C 03 00 00 */	cmpwi r3, 0
/* 801F8F30 001C24F0  40 82 02 5C */	bne .L_801F918C
/* 801F8F34 001C24F4  4B E6 A1 4D */	bl func_80063080
/* 801F8F38 001C24F8  7C 7E 1B 78 */	mr r30, r3
/* 801F8F3C 001C24FC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 801F8F40 001C2500  7F C4 F3 78 */	mr r4, r30
/* 801F8F44 001C2504  3B A0 00 01 */	li r29, 1
/* 801F8F48 001C2508  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8F4C 001C250C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 801F8F50 001C2510  7D 89 03 A6 */	mtctr r12
/* 801F8F54 001C2514  4E 80 04 21 */	bctrl 
/* 801F8F58 001C2518  2C 03 00 00 */	cmpwi r3, 0
/* 801F8F5C 001C251C  40 82 00 08 */	bne .L_801F8F64
/* 801F8F60 001C2520  3B A0 00 00 */	li r29, 0
.L_801F8F64:
/* 801F8F64 001C2524  2C 1D 00 00 */	cmpwi r29, 0
/* 801F8F68 001C2528  41 82 02 24 */	beq .L_801F918C
/* 801F8F6C 001C252C  A0 9F 00 08 */	lhz r4, 8(r31)
/* 801F8F70 001C2530  38 60 00 00 */	li r3, 0
/* 801F8F74 001C2534  38 04 00 01 */	addi r0, r4, 1
/* 801F8F78 001C2538  B0 1F 00 08 */	sth r0, 8(r31)
/* 801F8F7C 001C253C  48 23 BA D1 */	bl func_80434A4C
/* 801F8F80 001C2540  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F8F84 001C2544  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 801F8F88 001C2548  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801F8F8C 001C254C  41 82 00 B4 */	beq .L_801F9040
/* 801F8F90 001C2550  80 03 00 98 */	lwz r0, 0x98(r3)
/* 801F8F94 001C2554  2C 00 00 00 */	cmpwi r0, 0
/* 801F8F98 001C2558  40 82 00 A8 */	bne .L_801F9040
/* 801F8F9C 001C255C  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 801F8FA0 001C2560  7F E3 FB 78 */	mr r3, r31
/* 801F8FA4 001C2564  38 80 00 01 */	li r4, 1
/* 801F8FA8 001C2568  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801F8FAC 001C256C  7D 89 03 A6 */	mtctr r12
/* 801F8FB0 001C2570  4E 80 04 21 */	bctrl 
/* 801F8FB4 001C2574  7C 64 1B 78 */	mr r4, r3
/* 801F8FB8 001C2578  7F C3 F3 78 */	mr r3, r30
/* 801F8FBC 001C257C  4B E6 DE C1 */	bl func_80066E7C
/* 801F8FC0 001C2580  80 DF 00 00 */	lwz r6, 0(r31)
/* 801F8FC4 001C2584  38 A1 00 0C */	addi r5, r1, 0xc
/* 801F8FC8 001C2588  38 80 00 00 */	li r4, 0
/* 801F8FCC 001C258C  90 66 00 90 */	stw r3, 0x90(r6)
/* 801F8FD0 001C2590  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F8FD4 001C2594  80 63 00 90 */	lwz r3, 0x90(r3)
/* 801F8FD8 001C2598  4B E6 91 3D */	bl func_80062114
/* 801F8FDC 001C259C  80 9F 00 00 */	lwz r4, 0(r31)
/* 801F8FE0 001C25A0  90 64 00 90 */	stw r3, 0x90(r4)
/* 801F8FE4 001C25A4  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F8FE8 001C25A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8FEC 001C25AC  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 801F8FF0 001C25B0  7D 89 03 A6 */	mtctr r12
/* 801F8FF4 001C25B4  4E 80 04 21 */	bctrl 
/* 801F8FF8 001C25B8  80 9F 00 00 */	lwz r4, 0(r31)
/* 801F8FFC 001C25BC  FF E0 08 90 */	fmr f31, f1
/* 801F9000 001C25C0  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 801F9004 001C25C4  38 A0 00 06 */	li r5, 6
/* 801F9008 001C25C8  80 84 00 90 */	lwz r4, 0x90(r4)
/* 801F900C 001C25CC  38 C0 00 01 */	li r6, 1
/* 801F9010 001C25D0  38 E0 00 00 */	li r7, 0
/* 801F9014 001C25D4  39 00 00 70 */	li r8, 0x70
/* 801F9018 001C25D8  48 29 0A 49 */	bl func_80489A60
/* 801F901C 001C25DC  7C 64 1B 78 */	mr r4, r3
/* 801F9020 001C25E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F9024 001C25E4  4B EC 2A B9 */	bl func_800BBADC
/* 801F9028 001C25E8  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F902C 001C25EC  FC 20 F8 90 */	fmr f1, f31
/* 801F9030 001C25F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9034 001C25F4  81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 801F9038 001C25F8  7D 89 03 A6 */	mtctr r12
/* 801F903C 001C25FC  4E 80 04 21 */	bctrl 
.L_801F9040:
/* 801F9040 001C2600  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F9044 001C2604  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 801F9048 001C2608  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801F904C 001C260C  41 82 00 AC */	beq .L_801F90F8
/* 801F9050 001C2610  38 00 00 00 */	li r0, 0
/* 801F9054 001C2614  98 01 00 10 */	stb r0, 0x10(r1)
/* 801F9058 001C2618  90 01 00 50 */	stw r0, 0x50(r1)
/* 801F905C 001C261C  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 801F9060 001C2620  2C 00 00 00 */	cmpwi r0, 0
/* 801F9064 001C2624  40 82 00 94 */	bne .L_801F90F8
/* 801F9068 001C2628  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 801F906C 001C262C  7F E3 FB 78 */	mr r3, r31
/* 801F9070 001C2630  38 80 00 00 */	li r4, 0
/* 801F9074 001C2634  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801F9078 001C2638  7D 89 03 A6 */	mtctr r12
/* 801F907C 001C263C  4E 80 04 21 */	bctrl 
/* 801F9080 001C2640  7C 64 1B 78 */	mr r4, r3
/* 801F9084 001C2644  38 61 00 10 */	addi r3, r1, 0x10
/* 801F9088 001C2648  38 A0 00 00 */	li r5, 0
/* 801F908C 001C264C  38 C0 00 00 */	li r6, 0
/* 801F9090 001C2650  4B EB 12 AD */	bl func_800AA33C
/* 801F9094 001C2654  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 801F9098 001C2658  7F E3 FB 78 */	mr r3, r31
/* 801F909C 001C265C  38 80 00 01 */	li r4, 1
/* 801F90A0 001C2660  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801F90A4 001C2664  7D 89 03 A6 */	mtctr r12
/* 801F90A8 001C2668  4E 80 04 21 */	bctrl 
/* 801F90AC 001C266C  7C 64 1B 78 */	mr r4, r3
/* 801F90B0 001C2670  7F C3 F3 78 */	mr r3, r30
/* 801F90B4 001C2674  4B E6 DD C9 */	bl func_80066E7C
/* 801F90B8 001C2678  80 DF 00 00 */	lwz r6, 0(r31)
/* 801F90BC 001C267C  38 A1 00 08 */	addi r5, r1, 8
/* 801F90C0 001C2680  38 80 00 01 */	li r4, 1
/* 801F90C4 001C2684  90 66 00 94 */	stw r3, 0x94(r6)
/* 801F90C8 001C2688  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F90CC 001C268C  80 63 00 94 */	lwz r3, 0x94(r3)
/* 801F90D0 001C2690  4B E6 90 45 */	bl func_80062114
/* 801F90D4 001C2694  80 9F 00 00 */	lwz r4, 0(r31)
/* 801F90D8 001C2698  90 64 00 94 */	stw r3, 0x94(r4)
/* 801F90DC 001C269C  4B E6 8E FD */	bl func_80061FD8
/* 801F90E0 001C26A0  80 9F 00 00 */	lwz r4, 0(r31)
/* 801F90E4 001C26A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 801F90E8 001C26A8  80 84 00 94 */	lwz r4, 0x94(r4)
/* 801F90EC 001C26AC  4B E5 F3 CD */	bl func_800584B8
/* 801F90F0 001C26B0  80 9F 00 00 */	lwz r4, 0(r31)
/* 801F90F4 001C26B4  90 64 00 9C */	stw r3, 0x9c(r4)
.L_801F90F8:
/* 801F90F8 001C26B8  38 60 00 01 */	li r3, 1
/* 801F90FC 001C26BC  48 23 B9 51 */	bl func_80434A4C
/* 801F9100 001C26C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F9104 001C26C4  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 801F9108 001C26C8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 801F910C 001C26CC  41 82 00 34 */	beq .L_801F9140
/* 801F9110 001C26D0  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 801F9114 001C26D4  C0 22 A7 10 */	lfs f1, float_8066AA90@sda21(r2)
/* 801F9118 001C26D8  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 801F911C 001C26DC  90 03 00 6C */	stw r0, 0x6c(r3)
/* 801F9120 001C26E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F9124 001C26E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9128 001C26E8  81 8C 01 68 */	lwz r12, 0x168(r12)
/* 801F912C 001C26EC  7D 89 03 A6 */	mtctr r12
/* 801F9130 001C26F0  4E 80 04 21 */	bctrl 
/* 801F9134 001C26F4  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F9138 001C26F8  C0 22 A7 14 */	lfs f1, float_8066AA94@sda21(r2)
/* 801F913C 001C26FC  4B EC 32 75 */	bl func_800BC3B0
.L_801F9140:
/* 801F9140 001C2700  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F9144 001C2704  4B EC 3E 5D */	bl func_800BCFA0
/* 801F9148 001C2708  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F914C 001C270C  80 63 00 38 */	lwz r3, 0x38(r3)
/* 801F9150 001C2710  2C 03 00 00 */	cmpwi r3, 0
/* 801F9154 001C2714  41 82 00 14 */	beq .L_801F9168
/* 801F9158 001C2718  81 83 00 00 */	lwz r12, 0(r3)
/* 801F915C 001C271C  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 801F9160 001C2720  7D 89 03 A6 */	mtctr r12
/* 801F9164 001C2724  4E 80 04 21 */	bctrl 
.L_801F9168:
/* 801F9168 001C2728  80 7F 00 00 */	lwz r3, 0(r31)
/* 801F916C 001C272C  80 63 00 98 */	lwz r3, 0x98(r3)
/* 801F9170 001C2730  2C 03 00 00 */	cmpwi r3, 0
/* 801F9174 001C2734  41 82 00 18 */	beq .L_801F918C
/* 801F9178 001C2738  81 83 00 00 */	lwz r12, 0(r3)
/* 801F917C 001C273C  38 80 00 01 */	li r4, 1
/* 801F9180 001C2740  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 801F9184 001C2744  7D 89 03 A6 */	mtctr r12
/* 801F9188 001C2748  4E 80 04 21 */	bctrl 
.L_801F918C:
/* 801F918C 001C274C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801F9190 001C2750  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801F9194 001C2754  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801F9198 001C2758  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801F919C 001C275C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801F91A0 001C2760  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 801F91A4 001C2764  7C 08 03 A6 */	mtlr r0
/* 801F91A8 001C2768  38 21 00 80 */	addi r1, r1, 0x80
/* 801F91AC 001C276C  4E 80 00 20 */	blr 
.endfn func_801F8EB0

.fn func_801F91B0, global
/* 801F91B0 001C2770  4E 80 00 20 */	blr 
.endfn func_801F91B0

.fn func_801F91B4, global
/* 801F91B4 001C2774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F91B8 001C2778  7C 08 02 A6 */	mflr r0
/* 801F91BC 001C277C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F91C0 001C2780  88 0D AD D0 */	lbz r0, lbl_80666F50@sda21(r13)
/* 801F91C4 001C2784  7C 00 07 75 */	extsb. r0, r0
/* 801F91C8 001C2788  40 82 00 2C */	bne .L_801F91F4
/* 801F91CC 001C278C  3C 80 80 51 */	lis r4, __ptmf_null@ha
/* 801F91D0 001C2790  84 C4 CE 10 */	lwzu r6, __ptmf_null@l(r4)
/* 801F91D4 001C2794  3C E0 80 54 */	lis r7, lbl_80538998@ha
/* 801F91D8 001C2798  94 C7 89 98 */	stwu r6, lbl_80538998@l(r7)
/* 801F91DC 001C279C  80 A4 00 04 */	lwz r5, 4(r4)
/* 801F91E0 001C27A0  38 00 00 01 */	li r0, 1
/* 801F91E4 001C27A4  80 84 00 08 */	lwz r4, 8(r4)
/* 801F91E8 001C27A8  90 A7 00 04 */	stw r5, 4(r7)
/* 801F91EC 001C27AC  90 87 00 08 */	stw r4, 8(r7)
/* 801F91F0 001C27B0  98 0D AD D0 */	stb r0, lbl_80666F50@sda21(r13)
.L_801F91F4:
/* 801F91F4 001C27B4  A0 03 00 08 */	lhz r0, 8(r3)
/* 801F91F8 001C27B8  28 00 00 03 */	cmplwi r0, 3
/* 801F91FC 001C27BC  40 80 00 1C */	bge .L_801F9218
/* 801F9200 001C27C0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801F9204 001C27C4  3C 80 80 54 */	lis r4, lbl_80538998@ha
/* 801F9208 001C27C8  38 84 89 98 */	addi r4, r4, lbl_80538998@l
/* 801F920C 001C27CC  7D 84 02 14 */	add r12, r4, r0
/* 801F9210 001C27D0  48 0C 0B 4D */	bl __ptmf_scall
/* 801F9214 001C27D4  60 00 00 00 */	nop 
.L_801F9218:
/* 801F9218 001C27D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F921C 001C27DC  7C 08 03 A6 */	mtlr r0
/* 801F9220 001C27E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9224 001C27E4  4E 80 00 20 */	blr 
.endfn func_801F91B4

.fn __dt__cf_CfResTboxImpl, global
/* 801F9228 001C27E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F922C 001C27EC  7C 08 02 A6 */	mflr r0
/* 801F9230 001C27F0  2C 03 00 00 */	cmpwi r3, 0
/* 801F9234 001C27F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9238 001C27F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F923C 001C27FC  7C 7F 1B 78 */	mr r31, r3
/* 801F9240 001C2800  41 82 00 10 */	beq .L_801F9250
/* 801F9244 001C2804  2C 04 00 00 */	cmpwi r4, 0
/* 801F9248 001C2808  40 81 00 08 */	ble .L_801F9250
/* 801F924C 001C280C  48 23 B9 E1 */	bl __dl__FPv
.L_801F9250:
/* 801F9250 001C2810  7F E3 FB 78 */	mr r3, r31
/* 801F9254 001C2814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9258 001C2818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F925C 001C281C  7C 08 03 A6 */	mtlr r0
/* 801F9260 001C2820  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9264 001C2824  4E 80 00 20 */	blr 
.endfn __dt__cf_CfResTboxImpl

.fn func_801F9268, global
/* 801F9268 001C2828  1C 04 00 49 */	mulli r0, r4, 0x49
/* 801F926C 001C282C  54 A4 08 3C */	slwi r4, r5, 1
/* 801F9270 001C2830  7C 03 02 14 */	add r0, r3, r0
/* 801F9274 001C2834  7C 64 00 AE */	lbzx r3, r4, r0
/* 801F9278 001C2838  7C 03 00 D0 */	neg r0, r3
/* 801F927C 001C283C  7C 00 1B 78 */	or r0, r0, r3
/* 801F9280 001C2840  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801F9284 001C2844  4E 80 00 20 */	blr 
.endfn func_801F9268

.fn func_801F9288, global
/* 801F9288 001C2848  1C 04 00 49 */	mulli r0, r4, 0x49
/* 801F928C 001C284C  54 A5 20 36 */	slwi r5, r5, 4
/* 801F9290 001C2850  54 C4 08 3C */	slwi r4, r6, 1
/* 801F9294 001C2854  7C 03 02 14 */	add r0, r3, r0
/* 801F9298 001C2858  7C 05 02 14 */	add r0, r5, r0
/* 801F929C 001C285C  7C 64 02 14 */	add r3, r4, r0
/* 801F92A0 001C2860  88 03 00 01 */	lbz r0, 1(r3)
/* 801F92A4 001C2864  60 00 00 80 */	ori r0, r0, 0x80
/* 801F92A8 001C2868  98 03 00 01 */	stb r0, 1(r3)
/* 801F92AC 001C286C  4E 80 00 20 */	blr 
.endfn func_801F9288

.fn func_801F92B0, global
/* 801F92B0 001C2870  1C 04 00 49 */	mulli r0, r4, 0x49
/* 801F92B4 001C2874  54 A5 20 36 */	slwi r5, r5, 4
/* 801F92B8 001C2878  54 C4 08 3C */	slwi r4, r6, 1
/* 801F92BC 001C287C  7C 03 02 14 */	add r0, r3, r0
/* 801F92C0 001C2880  7C 05 02 14 */	add r0, r5, r0
/* 801F92C4 001C2884  7C 64 02 14 */	add r3, r4, r0
/* 801F92C8 001C2888  88 03 00 01 */	lbz r0, 1(r3)
/* 801F92CC 001C288C  60 00 00 40 */	ori r0, r0, 0x40
/* 801F92D0 001C2890  98 03 00 01 */	stb r0, 1(r3)
/* 801F92D4 001C2894  4E 80 00 20 */	blr 
.endfn func_801F92B0


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CfResTboxImpl_typestr, global
	.asciz "cf::CfResTboxImpl"
	.balign 4
	.4byte 0
.endobj cf_CfResTboxImpl_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80538998, global
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_801F8EB0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_801F91B0
	.4byte 0
.endobj lbl_80538998


.obj __vt__cf_CfResTboxImpl, global
	.4byte __RTTI__cf_CfResTboxImpl
	.4byte 0
	.4byte __dt__cf_CfResTboxImpl
	.4byte func_801F91B4
	.4byte func_800BEA34
	.4byte func_8016C860
	.4byte func_800BE9AC
	.4byte func_8016CD64
	.4byte func_801F8E70
	.4byte func_800BC2DC
	.4byte func_800BF2F4
	.4byte func_8016CD68
	.4byte func_8016CCBC
	.4byte func_800BEA38
	.4byte func_800BED64
	.4byte func_800BEE30
	.4byte func_800BC3AC
	.4byte func_800BEC44
	.4byte func_800BED5C
	.4byte func_8016CD5C
	.4byte func_8016C888
	.4byte func_800BF2C4
	.4byte func_800BF2C8
	.4byte func_801F8E78
	.4byte func_8016CD54
	.4byte func_800BF30C
.endobj __vt__cf_CfResTboxImpl

.obj cf_CfResTboxImpl_hierarchy, global
	.4byte __RTTI__cf_CfResImpl
	.4byte 0
	.4byte __RTTI__cf_CfResObjImpl
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CfResTboxImpl_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__cf_CfResTboxImpl, global
	.4byte cf_CfResTboxImpl_typestr
	.4byte cf_CfResTboxImpl_hierarchy
.endobj __RTTI__cf_CfResTboxImpl

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066AA90, global
	.float 1.0
.endobj float_8066AA90


.obj float_8066AA94, global
	.float 20
.endobj float_8066AA94

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80666F50, global
	.skip 0x8
.endobj lbl_80666F50

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80012438", local
.hidden "@etb_80012438"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80012438"

.obj "@etb_80012440", local
.hidden "@etb_80012440"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80012440"

.obj "@etb_80012448", local
.hidden "@etb_80012448"
	.4byte 0x184A0000
	.4byte 0x00000000
.endobj "@etb_80012448"

.obj "@etb_80012450", local
.hidden "@etb_80012450"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80012450"

.obj "@etb_80012458", local
.hidden "@etb_80012458"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80012458"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002C594", local
.hidden "@eti_8002C594"
	.4byte __ct__cf_CfResTboxImpl
	.4byte 0x0000003C
	.4byte "@etb_80012438"
.endobj "@eti_8002C594"

.obj "@eti_8002C5A0", local
.hidden "@eti_8002C5A0"
	.4byte func_801F8E78
	.4byte 0x00000038
	.4byte "@etb_80012440"
.endobj "@eti_8002C5A0"

.obj "@eti_8002C5AC", local
.hidden "@eti_8002C5AC"
	.4byte func_801F8EB0
	.4byte 0x00000300
	.4byte "@etb_80012448"
.endobj "@eti_8002C5AC"

.obj "@eti_8002C5B8", local
.hidden "@eti_8002C5B8"
	.4byte func_801F91B4
	.4byte 0x00000074
	.4byte "@etb_80012450"
.endobj "@eti_8002C5B8"

.obj "@eti_8002C5C4", local
.hidden "@eti_8002C5C4"
	.4byte __dt__cf_CfResTboxImpl
	.4byte 0x00000040
	.4byte "@etb_80012458"
.endobj "@eti_8002C5C4"
