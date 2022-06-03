.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global CXiLHVerifyTable
CXiLHVerifyTable:
/* 80308F10 002D24D0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80308F14 002D24D4  38 A4 FF FE */	addi r5, r4, -2
/* 80308F18 002D24D8  39 00 00 01 */	li r8, 1
/* 80308F1C 002D24DC  38 04 FF FF */	addi r0, r4, -1
/* 80308F20 002D24E0  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80308F24 002D24E4  7D 0A 28 30 */	slw r10, r8, r5
/* 80308F28 002D24E8  7D 08 00 30 */	slw r8, r8, r0
/* 80308F2C 002D24EC  38 00 00 04 */	li r0, 4
/* 80308F30 002D24F0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80308F34 002D24F4  38 EA FF FF */	addi r7, r10, -1
/* 80308F38 002D24F8  38 A3 00 02 */	addi r5, r3, 2
/* 80308F3C 002D24FC  55 08 04 3E */	clrlwi r8, r8, 0x10
/* 80308F40 002D2500  93 A1 00 94 */	stw r29, 0x94(r1)
/* 80308F44 002D2504  54 E7 04 3E */	clrlwi r7, r7, 0x10
/* 80308F48 002D2508  39 61 00 08 */	addi r11, r1, 8
/* 80308F4C 002D250C  A0 C3 00 00 */	lhz r6, 0(r3)
/* 80308F50 002D2510  54 C9 08 3C */	slwi r9, r6, 1
/* 80308F54 002D2514  7C 63 4A 14 */	add r3, r3, r9
/* 80308F58 002D2518  55 49 04 3E */	clrlwi r9, r10, 0x10
/* 80308F5C 002D251C  39 40 00 00 */	li r10, 0
/* 80308F60 002D2520  7C 09 03 A6 */	mtctr r0
lbl_80308F64:
/* 80308F64 002D2524  99 4B 00 00 */	stb r10, 0(r11)
/* 80308F68 002D2528  99 4B 00 01 */	stb r10, 1(r11)
/* 80308F6C 002D252C  99 4B 00 02 */	stb r10, 2(r11)
/* 80308F70 002D2530  99 4B 00 03 */	stb r10, 3(r11)
/* 80308F74 002D2534  99 4B 00 04 */	stb r10, 4(r11)
/* 80308F78 002D2538  99 4B 00 05 */	stb r10, 5(r11)
/* 80308F7C 002D253C  99 4B 00 06 */	stb r10, 6(r11)
/* 80308F80 002D2540  99 4B 00 07 */	stb r10, 7(r11)
/* 80308F84 002D2544  99 4B 00 08 */	stb r10, 8(r11)
/* 80308F88 002D2548  99 4B 00 09 */	stb r10, 9(r11)
/* 80308F8C 002D254C  99 4B 00 0A */	stb r10, 0xa(r11)
/* 80308F90 002D2550  99 4B 00 0B */	stb r10, 0xb(r11)
/* 80308F94 002D2554  99 4B 00 0C */	stb r10, 0xc(r11)
/* 80308F98 002D2558  99 4B 00 0D */	stb r10, 0xd(r11)
/* 80308F9C 002D255C  99 4B 00 0E */	stb r10, 0xe(r11)
/* 80308FA0 002D2560  99 4B 00 0F */	stb r10, 0xf(r11)
/* 80308FA4 002D2564  99 4B 00 10 */	stb r10, 0x10(r11)
/* 80308FA8 002D2568  99 4B 00 11 */	stb r10, 0x11(r11)
/* 80308FAC 002D256C  99 4B 00 12 */	stb r10, 0x12(r11)
/* 80308FB0 002D2570  99 4B 00 13 */	stb r10, 0x13(r11)
/* 80308FB4 002D2574  99 4B 00 14 */	stb r10, 0x14(r11)
/* 80308FB8 002D2578  99 4B 00 15 */	stb r10, 0x15(r11)
/* 80308FBC 002D257C  99 4B 00 16 */	stb r10, 0x16(r11)
/* 80308FC0 002D2580  99 4B 00 17 */	stb r10, 0x17(r11)
/* 80308FC4 002D2584  99 4B 00 18 */	stb r10, 0x18(r11)
/* 80308FC8 002D2588  99 4B 00 19 */	stb r10, 0x19(r11)
/* 80308FCC 002D258C  99 4B 00 1A */	stb r10, 0x1a(r11)
/* 80308FD0 002D2590  99 4B 00 1B */	stb r10, 0x1b(r11)
/* 80308FD4 002D2594  99 4B 00 1C */	stb r10, 0x1c(r11)
/* 80308FD8 002D2598  99 4B 00 1D */	stb r10, 0x1d(r11)
/* 80308FDC 002D259C  99 4B 00 1E */	stb r10, 0x1e(r11)
/* 80308FE0 002D25A0  99 4B 00 1F */	stb r10, 0x1f(r11)
/* 80308FE4 002D25A4  39 6B 00 20 */	addi r11, r11, 0x20
/* 80308FE8 002D25A8  42 00 FF 7C */	bdnz lbl_80308F64
/* 80308FEC 002D25AC  38 84 00 01 */	addi r4, r4, 1
/* 80308FF0 002D25B0  38 00 00 01 */	li r0, 1
/* 80308FF4 002D25B4  7C 04 20 30 */	slw r4, r0, r4
/* 80308FF8 002D25B8  7C 06 20 40 */	cmplw r6, r4
/* 80308FFC 002D25BC  40 81 00 0C */	ble lbl_80309008
/* 80309000 002D25C0  38 60 00 00 */	li r3, 0
/* 80309004 002D25C4  48 00 00 EC */	b lbl_803090F0
lbl_80309008:
/* 80309008 002D25C8  39 43 00 01 */	addi r10, r3, 1
/* 8030900C 002D25CC  3B E1 00 08 */	addi r31, r1, 8
/* 80309010 002D25D0  7D 45 50 50 */	subf r10, r5, r10
/* 80309014 002D25D4  38 80 00 01 */	li r4, 1
/* 80309018 002D25D8  55 4A F8 7E */	srwi r10, r10, 1
/* 8030901C 002D25DC  7D 49 03 A6 */	mtctr r10
/* 80309020 002D25E0  7C 05 18 40 */	cmplw r5, r3
/* 80309024 002D25E4  40 80 00 C8 */	bge lbl_803090EC
lbl_80309028:
/* 80309028 002D25E8  54 8B E8 FE */	srwi r11, r4, 3
/* 8030902C 002D25EC  54 8A 07 7E */	clrlwi r10, r4, 0x1d
/* 80309030 002D25F0  7D 7F 58 AE */	lbzx r11, r31, r11
/* 80309034 002D25F4  7C 0A 50 30 */	slw r10, r0, r10
/* 80309038 002D25F8  7D 6A 50 39 */	and. r10, r11, r10
/* 8030903C 002D25FC  40 82 00 A4 */	bne lbl_803090E0
/* 80309040 002D2600  A3 C5 00 00 */	lhz r30, 0(r5)
/* 80309044 002D2604  54 AB 00 3A */	rlwinm r11, r5, 0, 0, 0x1d
/* 80309048 002D2608  7F CA 38 38 */	and r10, r30, r7
/* 8030904C 002D260C  2C 1E 00 00 */	cmpwi r30, 0
/* 80309050 002D2610  39 8A 00 01 */	addi r12, r10, 1
/* 80309054 002D2614  55 8A 10 3A */	slwi r10, r12, 2
/* 80309058 002D2618  55 9D 08 3C */	slwi r29, r12, 1
/* 8030905C 002D261C  7D 6B 52 14 */	add r11, r11, r10
/* 80309060 002D2620  40 82 00 10 */	bne lbl_80309070
/* 80309064 002D2624  39 46 FF FC */	addi r10, r6, -4
/* 80309068 002D2628  7C 04 50 40 */	cmplw r4, r10
/* 8030906C 002D262C  40 80 00 74 */	bge lbl_803090E0
lbl_80309070:
/* 80309070 002D2630  7C 0B 18 40 */	cmplw r11, r3
/* 80309074 002D2634  41 80 00 0C */	blt lbl_80309080
/* 80309078 002D2638  38 60 00 00 */	li r3, 0
/* 8030907C 002D263C  48 00 00 74 */	b lbl_803090F0
lbl_80309080:
/* 80309080 002D2640  7F CA 40 39 */	and. r10, r30, r8
/* 80309084 002D2644  41 82 00 28 */	beq lbl_803090AC
/* 80309088 002D2648  54 8A 00 3C */	rlwinm r10, r4, 0, 0, 0x1e
/* 8030908C 002D264C  7D 4A EA 14 */	add r10, r10, r29
/* 80309090 002D2650  55 4C E8 FE */	srwi r12, r10, 3
/* 80309094 002D2654  55 4A 07 7E */	clrlwi r10, r10, 0x1d
/* 80309098 002D2658  7D 7F 60 AE */	lbzx r11, r31, r12
/* 8030909C 002D265C  7C 0A 50 30 */	slw r10, r0, r10
/* 803090A0 002D2660  55 4A 06 3E */	clrlwi r10, r10, 0x18
/* 803090A4 002D2664  7D 6A 53 78 */	or r10, r11, r10
/* 803090A8 002D2668  7D 5F 61 AE */	stbx r10, r31, r12
lbl_803090AC:
/* 803090AC 002D266C  A1 45 00 00 */	lhz r10, 0(r5)
/* 803090B0 002D2670  7D 4A 48 39 */	and. r10, r10, r9
/* 803090B4 002D2674  41 82 00 2C */	beq lbl_803090E0
/* 803090B8 002D2678  54 8A 00 3C */	rlwinm r10, r4, 0, 0, 0x1e
/* 803090BC 002D267C  7D 5D 52 14 */	add r10, r29, r10
/* 803090C0 002D2680  39 4A 00 01 */	addi r10, r10, 1
/* 803090C4 002D2684  55 4C E8 FE */	srwi r12, r10, 3
/* 803090C8 002D2688  55 4A 07 7E */	clrlwi r10, r10, 0x1d
/* 803090CC 002D268C  7D 7F 60 AE */	lbzx r11, r31, r12
/* 803090D0 002D2690  7C 0A 50 30 */	slw r10, r0, r10
/* 803090D4 002D2694  55 4A 06 3E */	clrlwi r10, r10, 0x18
/* 803090D8 002D2698  7D 6A 53 78 */	or r10, r11, r10
/* 803090DC 002D269C  7D 5F 61 AE */	stbx r10, r31, r12
lbl_803090E0:
/* 803090E0 002D26A0  38 84 00 01 */	addi r4, r4, 1
/* 803090E4 002D26A4  38 A5 00 02 */	addi r5, r5, 2
/* 803090E8 002D26A8  42 00 FF 40 */	bdnz lbl_80309028
lbl_803090EC:
/* 803090EC 002D26AC  38 60 00 01 */	li r3, 1
lbl_803090F0:
/* 803090F0 002D26B0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 803090F4 002D26B4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 803090F8 002D26B8  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 803090FC 002D26BC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80309100 002D26C0  4E 80 00 20 */	blr 