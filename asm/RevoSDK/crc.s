.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global NETCalcCRC16
NETCalcCRC16:
/* 8035F000 003285C0  2C 04 00 00 */	cmpwi r4, 0
/* 8035F004 003285C4  3C E0 80 52 */	lis r7, lbl_80518D10@ha
/* 8035F008 003285C8  39 00 00 00 */	li r8, 0
/* 8035F00C 003285CC  38 E7 8D 10 */	addi r7, r7, lbl_80518D10@l
/* 8035F010 003285D0  41 82 01 1C */	beq lbl_8035F12C
/* 8035F014 003285D4  54 80 F0 BF */	rlwinm. r0, r4, 0x1e, 2, 0x1f
/* 8035F018 003285D8  7C 09 03 A6 */	mtctr r0
/* 8035F01C 003285DC  41 82 00 D4 */	beq lbl_8035F0F0
lbl_8035F020:
/* 8035F020 003285E0  89 23 00 00 */	lbz r9, 0(r3)
/* 8035F024 003285E4  55 06 E1 3E */	srwi r6, r8, 4
/* 8035F028 003285E8  7D 00 4A 78 */	xor r0, r8, r9
/* 8035F02C 003285EC  55 25 E1 3E */	srwi r5, r9, 4
/* 8035F030 003285F0  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F034 003285F4  89 23 00 01 */	lbz r9, 1(r3)
/* 8035F038 003285F8  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F03C 003285FC  7C C6 02 78 */	xor r6, r6, r0
/* 8035F040 00328600  7C C0 2A 78 */	xor r0, r6, r5
/* 8035F044 00328604  55 25 E1 3E */	srwi r5, r9, 4
/* 8035F048 00328608  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F04C 0032860C  54 C6 E1 3E */	srwi r6, r6, 4
/* 8035F050 00328610  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F054 00328614  7C C8 02 78 */	xor r8, r6, r0
/* 8035F058 00328618  7D 00 4A 78 */	xor r0, r8, r9
/* 8035F05C 0032861C  89 23 00 02 */	lbz r9, 2(r3)
/* 8035F060 00328620  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F064 00328624  55 06 E1 3E */	srwi r6, r8, 4
/* 8035F068 00328628  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F06C 0032862C  7C C6 02 78 */	xor r6, r6, r0
/* 8035F070 00328630  7C C0 2A 78 */	xor r0, r6, r5
/* 8035F074 00328634  55 25 E1 3E */	srwi r5, r9, 4
/* 8035F078 00328638  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F07C 0032863C  54 C6 E1 3E */	srwi r6, r6, 4
/* 8035F080 00328640  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F084 00328644  7C C8 02 78 */	xor r8, r6, r0
/* 8035F088 00328648  7D 00 4A 78 */	xor r0, r8, r9
/* 8035F08C 0032864C  89 23 00 03 */	lbz r9, 3(r3)
/* 8035F090 00328650  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F094 00328654  55 06 E1 3E */	srwi r6, r8, 4
/* 8035F098 00328658  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F09C 0032865C  38 63 00 04 */	addi r3, r3, 4
/* 8035F0A0 00328660  7C C6 02 78 */	xor r6, r6, r0
/* 8035F0A4 00328664  7C C0 2A 78 */	xor r0, r6, r5
/* 8035F0A8 00328668  55 25 E1 3E */	srwi r5, r9, 4
/* 8035F0AC 0032866C  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F0B0 00328670  54 C6 E1 3E */	srwi r6, r6, 4
/* 8035F0B4 00328674  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F0B8 00328678  7C C8 02 78 */	xor r8, r6, r0
/* 8035F0BC 0032867C  7D 00 4A 78 */	xor r0, r8, r9
/* 8035F0C0 00328680  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F0C4 00328684  55 06 E1 3E */	srwi r6, r8, 4
/* 8035F0C8 00328688  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F0CC 0032868C  7C C6 02 78 */	xor r6, r6, r0
/* 8035F0D0 00328690  7C C0 2A 78 */	xor r0, r6, r5
/* 8035F0D4 00328694  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F0D8 00328698  54 C6 E1 3E */	srwi r6, r6, 4
/* 8035F0DC 0032869C  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F0E0 003286A0  7C C8 02 78 */	xor r8, r6, r0
/* 8035F0E4 003286A4  42 00 FF 3C */	bdnz lbl_8035F020
/* 8035F0E8 003286A8  70 84 00 03 */	andi. r4, r4, 3
/* 8035F0EC 003286AC  41 82 00 40 */	beq lbl_8035F12C
lbl_8035F0F0:
/* 8035F0F0 003286B0  7C 89 03 A6 */	mtctr r4
lbl_8035F0F4:
/* 8035F0F4 003286B4  89 23 00 00 */	lbz r9, 0(r3)
/* 8035F0F8 003286B8  55 06 E1 3E */	srwi r6, r8, 4
/* 8035F0FC 003286BC  38 63 00 01 */	addi r3, r3, 1
/* 8035F100 003286C0  7D 00 4A 78 */	xor r0, r8, r9
/* 8035F104 003286C4  55 25 E1 3E */	srwi r5, r9, 4
/* 8035F108 003286C8  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F10C 003286CC  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F110 003286D0  7C C6 02 78 */	xor r6, r6, r0
/* 8035F114 003286D4  7C C0 2A 78 */	xor r0, r6, r5
/* 8035F118 003286D8  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 8035F11C 003286DC  54 C6 E1 3E */	srwi r6, r6, 4
/* 8035F120 003286E0  7C 07 02 2E */	lhzx r0, r7, r0
/* 8035F124 003286E4  7C C8 02 78 */	xor r8, r6, r0
/* 8035F128 003286E8  42 00 FF CC */	bdnz lbl_8035F0F4
lbl_8035F12C:
/* 8035F12C 003286EC  55 03 04 3E */	clrlwi r3, r8, 0x10
/* 8035F130 003286F0  4E 80 00 20 */	blr 
.balign 16, 0