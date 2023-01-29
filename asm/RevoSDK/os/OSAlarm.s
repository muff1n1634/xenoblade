.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn __OSInitAlarm, global
/* 80352DC0 0031C380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80352DC4 0031C384  7C 08 02 A6 */	mflr r0
/* 80352DC8 0031C388  38 60 00 08 */	li r3, 0x8
/* 80352DCC 0031C38C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80352DD0 0031C390  4B FF FD B1 */	bl __OSGetExceptionHandler
/* 80352DD4 0031C394  3C 80 80 35 */	lis r4, DecrementerExceptionHandler@ha
/* 80352DD8 0031C398  38 84 34 D0 */	addi r4, r4, DecrementerExceptionHandler@l
/* 80352DDC 0031C39C  7C 03 20 40 */	cmplw r3, r4
/* 80352DE0 0031C3A0  41 82 00 28 */	beq .L_80352E08
/* 80352DE4 0031C3A4  38 6D B8 C8 */	addi r3, r13, AlarmQueue@sda21
/* 80352DE8 0031C3A8  38 00 00 00 */	li r0, 0x0
/* 80352DEC 0031C3AC  90 03 00 04 */	stw r0, 0x4(r3)
/* 80352DF0 0031C3B0  38 60 00 08 */	li r3, 0x8
/* 80352DF4 0031C3B4  90 0D B8 C8 */	stw r0, AlarmQueue@sda21(r13)
/* 80352DF8 0031C3B8  4B FF FD 69 */	bl __OSSetExceptionHandler
/* 80352DFC 0031C3BC  3C 60 80 55 */	lis r3, ShutdownFunctionInfo@ha
/* 80352E00 0031C3C0  38 63 17 A8 */	addi r3, r3, ShutdownFunctionInfo@l
/* 80352E04 0031C3C4  48 00 71 0D */	bl OSRegisterShutdownFunction
.L_80352E08:
/* 80352E08 0031C3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80352E0C 0031C3CC  7C 08 03 A6 */	mtlr r0
/* 80352E10 0031C3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80352E14 0031C3D4  4E 80 00 20 */	blr
.endfn __OSInitAlarm
/* 80352E18 0031C3D8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80352E1C 0031C3DC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSCreateAlarm, global
/* 80352E20 0031C3E0  38 00 00 00 */	li r0, 0x0
/* 80352E24 0031C3E4  90 03 00 00 */	stw r0, 0x0(r3)
/* 80352E28 0031C3E8  90 03 00 04 */	stw r0, 0x4(r3)
/* 80352E2C 0031C3EC  4E 80 00 20 */	blr
.endfn OSCreateAlarm

.fn InsertAlarm, local
/* 80352E30 0031C3F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80352E34 0031C3F4  7C 08 02 A6 */	mflr r0
/* 80352E38 0031C3F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80352E3C 0031C3FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80352E40 0031C400  4B F6 73 0D */	bl _savegpr_25
/* 80352E44 0031C404  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80352E48 0031C408  3B A0 00 00 */	li r29, 0x0
/* 80352E4C 0031C40C  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 80352E50 0031C410  7C 7E 1B 78 */	mr r30, r3
/* 80352E54 0031C414  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 80352E58 0031C418  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80352E5C 0031C41C  7C 68 E8 10 */	subfc r3, r8, r29
/* 80352E60 0031C420  7C FF 3B 78 */	mr r31, r7
/* 80352E64 0031C424  7C 84 01 10 */	subfe r4, r4, r0
/* 80352E68 0031C428  7C 80 01 10 */	subfe r4, r0, r0
/* 80352E6C 0031C42C  7C 84 00 D1 */	neg. r4, r4
/* 80352E70 0031C430  41 82 00 7C */	beq .L_80352EEC
/* 80352E74 0031C434  48 00 9B 1D */	bl __OSGetSystemTime
/* 80352E78 0031C438  83 9E 00 20 */	lwz r28, 0x20(r30)
/* 80352E7C 0031C43C  6C 67 80 00 */	xoris r7, r3, 0x8000
/* 80352E80 0031C440  83 7E 00 24 */	lwz r27, 0x24(r30)
/* 80352E84 0031C444  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80352E88 0031C448  7F 85 E3 78 */	mr r5, r28
/* 80352E8C 0031C44C  7C C4 D8 10 */	subfc r6, r4, r27
/* 80352E90 0031C450  7C E7 01 10 */	subfe r7, r7, r0
/* 80352E94 0031C454  7C E0 01 10 */	subfe r7, r0, r0
/* 80352E98 0031C458  7F 66 DB 78 */	mr r6, r27
/* 80352E9C 0031C45C  7C E7 00 D1 */	neg. r7, r7
/* 80352EA0 0031C460  41 82 00 4C */	beq .L_80352EEC
/* 80352EA4 0031C464  83 5E 00 18 */	lwz r26, 0x18(r30)
/* 80352EA8 0031C468  7C 9B 20 10 */	subfc r4, r27, r4
/* 80352EAC 0031C46C  83 3E 00 1C */	lwz r25, 0x1c(r30)
/* 80352EB0 0031C470  7C 7C 19 10 */	subfe r3, r28, r3
/* 80352EB4 0031C474  7F 45 D3 78 */	mr r5, r26
/* 80352EB8 0031C478  7F 26 CB 78 */	mr r6, r25
/* 80352EBC 0031C47C  4B F6 73 E9 */	bl __div2i
/* 80352EC0 0031C480  38 00 00 01 */	li r0, 0x1
/* 80352EC4 0031C484  7C 84 00 14 */	addc r4, r4, r0
/* 80352EC8 0031C488  7C 19 20 16 */	mulhwu r0, r25, r4
/* 80352ECC 0031C48C  7C A3 E9 14 */	adde r5, r3, r29
/* 80352ED0 0031C490  7C 7A 21 D6 */	mullw r3, r26, r4
/* 80352ED4 0031C494  7C 99 21 D6 */	mullw r4, r25, r4
/* 80352ED8 0031C498  7C 60 1A 14 */	add r3, r0, r3
/* 80352EDC 0031C49C  7C 19 29 D6 */	mullw r0, r25, r5
/* 80352EE0 0031C4A0  7C DB 20 14 */	addc r6, r27, r4
/* 80352EE4 0031C4A4  7C 03 02 14 */	add r0, r3, r0
/* 80352EE8 0031C4A8  7C BC 01 14 */	adde r5, r28, r0
.L_80352EEC:
/* 80352EEC 0031C4AC  93 FE 00 00 */	stw r31, 0x0(r30)
/* 80352EF0 0031C4B0  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80352EF4 0031C4B4  90 DE 00 0C */	stw r6, 0xc(r30)
/* 80352EF8 0031C4B8  90 BE 00 08 */	stw r5, 0x8(r30)
/* 80352EFC 0031C4BC  80 ED B8 C8 */	lwz r7, AlarmQueue@sda21(r13)
/* 80352F00 0031C4C0  48 00 00 C4 */	b .L_80352FC4
.L_80352F04:
/* 80352F04 0031C4C4  80 67 00 08 */	lwz r3, 0x8(r7)
/* 80352F08 0031C4C8  80 A7 00 0C */	lwz r5, 0xc(r7)
/* 80352F0C 0031C4CC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80352F10 0031C4D0  7C 65 30 10 */	subfc r3, r5, r6
/* 80352F14 0031C4D4  7C 84 01 10 */	subfe r4, r4, r0
/* 80352F18 0031C4D8  7C 80 01 10 */	subfe r4, r0, r0
/* 80352F1C 0031C4DC  7C 84 00 D1 */	neg. r4, r4
/* 80352F20 0031C4E0  41 82 00 A0 */	beq .L_80352FC0
/* 80352F24 0031C4E4  80 07 00 10 */	lwz r0, 0x10(r7)
/* 80352F28 0031C4E8  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80352F2C 0031C4EC  93 C7 00 10 */	stw r30, 0x10(r7)
/* 80352F30 0031C4F0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80352F34 0031C4F4  90 FE 00 14 */	stw r7, 0x14(r30)
/* 80352F38 0031C4F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 80352F3C 0031C4FC  41 82 00 0C */	beq .L_80352F48
/* 80352F40 0031C500  93 C3 00 14 */	stw r30, 0x14(r3)
/* 80352F44 0031C504  48 00 01 24 */	b .L_80353068
.L_80352F48:
/* 80352F48 0031C508  93 CD B8 C8 */	stw r30, AlarmQueue@sda21(r13)
/* 80352F4C 0031C50C  48 00 9A 45 */	bl __OSGetSystemTime
/* 80352F50 0031C510  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80352F54 0031C514  38 E0 00 00 */	li r7, 0x0
/* 80352F58 0031C518  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 80352F5C 0031C51C  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 80352F60 0031C520  7D 04 28 10 */	subfc r8, r4, r5
/* 80352F64 0031C524  7C 03 01 10 */	subfe r0, r3, r0
/* 80352F68 0031C528  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80352F6C 0031C52C  7C 07 40 10 */	subfc r0, r7, r8
/* 80352F70 0031C530  7C C6 29 10 */	subfe r6, r6, r5
/* 80352F74 0031C534  7C C5 29 10 */	subfe r6, r5, r5
/* 80352F78 0031C538  7C C6 00 D1 */	neg. r6, r6
/* 80352F7C 0031C53C  41 82 00 10 */	beq .L_80352F8C
/* 80352F80 0031C540  38 60 00 00 */	li r3, 0x0
/* 80352F84 0031C544  4B F8 7C 2D */	bl PPCMtdec
/* 80352F88 0031C548  48 00 00 E0 */	b .L_80353068
.L_80352F8C:
/* 80352F8C 0031C54C  3C 80 80 00 */	lis r4, 0x8000
/* 80352F90 0031C550  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80352F94 0031C554  7C 04 40 10 */	subfc r0, r4, r8
/* 80352F98 0031C558  7C 63 29 10 */	subfe r3, r3, r5
/* 80352F9C 0031C55C  7C 65 29 10 */	subfe r3, r5, r5
/* 80352FA0 0031C560  7C 63 00 D1 */	neg. r3, r3
/* 80352FA4 0031C564  41 82 00 10 */	beq .L_80352FB4
/* 80352FA8 0031C568  7D 03 43 78 */	mr r3, r8
/* 80352FAC 0031C56C  4B F8 7C 05 */	bl PPCMtdec
/* 80352FB0 0031C570  48 00 00 B8 */	b .L_80353068
.L_80352FB4:
/* 80352FB4 0031C574  38 64 FF FF */	addi r3, r4, -0x1
/* 80352FB8 0031C578  4B F8 7B F9 */	bl PPCMtdec
/* 80352FBC 0031C57C  48 00 00 AC */	b .L_80353068
.L_80352FC0:
/* 80352FC0 0031C580  80 E7 00 14 */	lwz r7, 0x14(r7)
.L_80352FC4:
/* 80352FC4 0031C584  2C 07 00 00 */	cmpwi r7, 0x0
/* 80352FC8 0031C588  40 82 FF 3C */	bne .L_80352F04
/* 80352FCC 0031C58C  3B E0 00 00 */	li r31, 0x0
/* 80352FD0 0031C590  93 FE 00 14 */	stw r31, 0x14(r30)
/* 80352FD4 0031C594  38 6D B8 C8 */	addi r3, r13, AlarmQueue@sda21
/* 80352FD8 0031C598  80 83 00 04 */	lwz r4, 0x4(r3)
/* 80352FDC 0031C59C  93 C3 00 04 */	stw r30, 0x4(r3)
/* 80352FE0 0031C5A0  2C 04 00 00 */	cmpwi r4, 0x0
/* 80352FE4 0031C5A4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80352FE8 0031C5A8  41 82 00 0C */	beq .L_80352FF4
/* 80352FEC 0031C5AC  93 C4 00 14 */	stw r30, 0x14(r4)
/* 80352FF0 0031C5B0  48 00 00 78 */	b .L_80353068
.L_80352FF4:
/* 80352FF4 0031C5B4  93 C3 00 04 */	stw r30, 0x4(r3)
/* 80352FF8 0031C5B8  93 CD B8 C8 */	stw r30, AlarmQueue@sda21(r13)
/* 80352FFC 0031C5BC  48 00 99 95 */	bl __OSGetSystemTime
/* 80353000 0031C5C0  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80353004 0031C5C4  6F E6 80 00 */	xoris r6, r31, 0x8000
/* 80353008 0031C5C8  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8035300C 0031C5CC  7C E4 28 10 */	subfc r7, r4, r5
/* 80353010 0031C5D0  7C 03 01 10 */	subfe r0, r3, r0
/* 80353014 0031C5D4  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80353018 0031C5D8  7C 1F 38 10 */	subfc r0, r31, r7
/* 8035301C 0031C5DC  7C C6 29 10 */	subfe r6, r6, r5
/* 80353020 0031C5E0  7C C5 29 10 */	subfe r6, r5, r5
/* 80353024 0031C5E4  7C C6 00 D1 */	neg. r6, r6
/* 80353028 0031C5E8  41 82 00 10 */	beq .L_80353038
/* 8035302C 0031C5EC  38 60 00 00 */	li r3, 0x0
/* 80353030 0031C5F0  4B F8 7B 81 */	bl PPCMtdec
/* 80353034 0031C5F4  48 00 00 34 */	b .L_80353068
.L_80353038:
/* 80353038 0031C5F8  3C 80 80 00 */	lis r4, 0x8000
/* 8035303C 0031C5FC  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80353040 0031C600  7C 04 38 10 */	subfc r0, r4, r7
/* 80353044 0031C604  7C 63 29 10 */	subfe r3, r3, r5
/* 80353048 0031C608  7C 65 29 10 */	subfe r3, r5, r5
/* 8035304C 0031C60C  7C 63 00 D1 */	neg. r3, r3
/* 80353050 0031C610  41 82 00 10 */	beq .L_80353060
/* 80353054 0031C614  7C E3 3B 78 */	mr r3, r7
/* 80353058 0031C618  4B F8 7B 59 */	bl PPCMtdec
/* 8035305C 0031C61C  48 00 00 0C */	b .L_80353068
.L_80353060:
/* 80353060 0031C620  38 64 FF FF */	addi r3, r4, -0x1
/* 80353064 0031C624  4B F8 7B 4D */	bl PPCMtdec
.L_80353068:
/* 80353068 0031C628  39 61 00 30 */	addi r11, r1, 0x30
/* 8035306C 0031C62C  4B F6 71 2D */	bl _restgpr_25
/* 80353070 0031C630  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80353074 0031C634  7C 08 03 A6 */	mtlr r0
/* 80353078 0031C638  38 21 00 30 */	addi r1, r1, 0x30
/* 8035307C 0031C63C  4E 80 00 20 */	blr
.endfn InsertAlarm

.fn OSSetAlarm, global
/* 80353080 0031C640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80353084 0031C644  7C 08 02 A6 */	mflr r0
/* 80353088 0031C648  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035308C 0031C64C  39 61 00 20 */	addi r11, r1, 0x20
/* 80353090 0031C650  4B F6 70 C5 */	bl _savegpr_27
/* 80353094 0031C654  7C 7B 1B 78 */	mr r27, r3
/* 80353098 0031C658  7C BD 2B 78 */	mr r29, r5
/* 8035309C 0031C65C  7C DC 33 78 */	mr r28, r6
/* 803530A0 0031C660  7C FE 3B 78 */	mr r30, r7
/* 803530A4 0031C664  48 00 59 0D */	bl OSDisableInterrupts
/* 803530A8 0031C668  38 00 00 00 */	li r0, 0x0
/* 803530AC 0031C66C  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 803530B0 0031C670  7C 7F 1B 78 */	mr r31, r3
/* 803530B4 0031C674  90 1B 00 18 */	stw r0, 0x18(r27)
/* 803530B8 0031C678  48 00 98 D9 */	bl __OSGetSystemTime
/* 803530BC 0031C67C  7C DC 20 14 */	addc r6, r28, r4
/* 803530C0 0031C680  7F C7 F3 78 */	mr r7, r30
/* 803530C4 0031C684  7C BD 19 14 */	adde r5, r29, r3
/* 803530C8 0031C688  7F 63 DB 78 */	mr r3, r27
/* 803530CC 0031C68C  4B FF FD 65 */	bl InsertAlarm
/* 803530D0 0031C690  7F E3 FB 78 */	mr r3, r31
/* 803530D4 0031C694  48 00 59 1D */	bl OSRestoreInterrupts
/* 803530D8 0031C698  39 61 00 20 */	addi r11, r1, 0x20
/* 803530DC 0031C69C  4B F6 70 C5 */	bl _restgpr_27
/* 803530E0 0031C6A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803530E4 0031C6A4  7C 08 03 A6 */	mtlr r0
/* 803530E8 0031C6A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803530EC 0031C6AC  4E 80 00 20 */	blr
.endfn OSSetAlarm

.fn OSSetPeriodicAlarm, global
/* 803530F0 0031C6B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803530F4 0031C6B4  7C 08 02 A6 */	mflr r0
/* 803530F8 0031C6B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803530FC 0031C6BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80353100 0031C6C0  4B F6 70 51 */	bl _savegpr_26
/* 80353104 0031C6C4  7C 7A 1B 78 */	mr r26, r3
/* 80353108 0031C6C8  7C BC 2B 78 */	mr r28, r5
/* 8035310C 0031C6CC  7C DB 33 78 */	mr r27, r6
/* 80353110 0031C6D0  7C FD 3B 78 */	mr r29, r7
/* 80353114 0031C6D4  7D 1F 43 78 */	mr r31, r8
/* 80353118 0031C6D8  7D 3E 4B 78 */	mr r30, r9
/* 8035311C 0031C6DC  48 00 58 95 */	bl OSDisableInterrupts
/* 80353120 0031C6E0  93 FA 00 1C */	stw r31, 0x1c(r26)
/* 80353124 0031C6E4  7C 7F 1B 78 */	mr r31, r3
/* 80353128 0031C6E8  7F 64 DB 78 */	mr r4, r27
/* 8035312C 0031C6EC  7F 83 E3 78 */	mr r3, r28
/* 80353130 0031C6F0  93 BA 00 18 */	stw r29, 0x18(r26)
/* 80353134 0031C6F4  48 00 98 CD */	bl __OSTimeToSystemTime
/* 80353138 0031C6F8  90 7A 00 20 */	stw r3, 0x20(r26)
/* 8035313C 0031C6FC  7F 43 D3 78 */	mr r3, r26
/* 80353140 0031C700  7F C7 F3 78 */	mr r7, r30
/* 80353144 0031C704  38 C0 00 00 */	li r6, 0x0
/* 80353148 0031C708  90 9A 00 24 */	stw r4, 0x24(r26)
/* 8035314C 0031C70C  38 A0 00 00 */	li r5, 0x0
/* 80353150 0031C710  4B FF FC E1 */	bl InsertAlarm
/* 80353154 0031C714  7F E3 FB 78 */	mr r3, r31
/* 80353158 0031C718  48 00 58 99 */	bl OSRestoreInterrupts
/* 8035315C 0031C71C  39 61 00 20 */	addi r11, r1, 0x20
/* 80353160 0031C720  4B F6 70 3D */	bl _restgpr_26
/* 80353164 0031C724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80353168 0031C728  7C 08 03 A6 */	mtlr r0
/* 8035316C 0031C72C  38 21 00 20 */	addi r1, r1, 0x20
/* 80353170 0031C730  4E 80 00 20 */	blr
.endfn OSSetPeriodicAlarm
/* 80353174 0031C734  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353178 0031C738  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8035317C 0031C73C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSCancelAlarm, global
/* 80353180 0031C740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80353184 0031C744  7C 08 02 A6 */	mflr r0
/* 80353188 0031C748  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035318C 0031C74C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80353190 0031C750  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80353194 0031C754  7C 7E 1B 78 */	mr r30, r3
/* 80353198 0031C758  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035319C 0031C75C  48 00 58 15 */	bl OSDisableInterrupts
/* 803531A0 0031C760  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 803531A4 0031C764  7C 7F 1B 78 */	mr r31, r3
/* 803531A8 0031C768  2C 00 00 00 */	cmpwi r0, 0x0
/* 803531AC 0031C76C  40 82 00 0C */	bne .L_803531B8
/* 803531B0 0031C770  48 00 58 41 */	bl OSRestoreInterrupts
/* 803531B4 0031C774  48 00 00 C8 */	b .L_8035327C
.L_803531B8:
/* 803531B8 0031C778  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 803531BC 0031C77C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 803531C0 0031C780  40 82 00 14 */	bne .L_803531D4
/* 803531C4 0031C784  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 803531C8 0031C788  38 6D B8 C8 */	addi r3, r13, AlarmQueue@sda21
/* 803531CC 0031C78C  90 03 00 04 */	stw r0, 0x4(r3)
/* 803531D0 0031C790  48 00 00 0C */	b .L_803531DC
.L_803531D4:
/* 803531D4 0031C794  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 803531D8 0031C798  90 1D 00 10 */	stw r0, 0x10(r29)
.L_803531DC:
/* 803531DC 0031C79C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 803531E0 0031C7A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803531E4 0031C7A4  41 82 00 0C */	beq .L_803531F0
/* 803531E8 0031C7A8  93 A3 00 14 */	stw r29, 0x14(r3)
/* 803531EC 0031C7AC  48 00 00 80 */	b .L_8035326C
.L_803531F0:
/* 803531F0 0031C7B0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 803531F4 0031C7B4  93 AD B8 C8 */	stw r29, AlarmQueue@sda21(r13)
/* 803531F8 0031C7B8  41 82 00 74 */	beq .L_8035326C
/* 803531FC 0031C7BC  48 00 97 95 */	bl __OSGetSystemTime
/* 80353200 0031C7C0  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 80353204 0031C7C4  38 E0 00 00 */	li r7, 0x0
/* 80353208 0031C7C8  80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8035320C 0031C7CC  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 80353210 0031C7D0  7D 04 28 10 */	subfc r8, r4, r5
/* 80353214 0031C7D4  7C 03 01 10 */	subfe r0, r3, r0
/* 80353218 0031C7D8  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8035321C 0031C7DC  7C 07 40 10 */	subfc r0, r7, r8
/* 80353220 0031C7E0  7C C6 29 10 */	subfe r6, r6, r5
/* 80353224 0031C7E4  7C C5 29 10 */	subfe r6, r5, r5
/* 80353228 0031C7E8  7C C6 00 D1 */	neg. r6, r6
/* 8035322C 0031C7EC  41 82 00 10 */	beq .L_8035323C
/* 80353230 0031C7F0  38 60 00 00 */	li r3, 0x0
/* 80353234 0031C7F4  4B F8 79 7D */	bl PPCMtdec
/* 80353238 0031C7F8  48 00 00 34 */	b .L_8035326C
.L_8035323C:
/* 8035323C 0031C7FC  3C 80 80 00 */	lis r4, 0x8000
/* 80353240 0031C800  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80353244 0031C804  7C 04 40 10 */	subfc r0, r4, r8
/* 80353248 0031C808  7C 63 29 10 */	subfe r3, r3, r5
/* 8035324C 0031C80C  7C 65 29 10 */	subfe r3, r5, r5
/* 80353250 0031C810  7C 63 00 D1 */	neg. r3, r3
/* 80353254 0031C814  41 82 00 10 */	beq .L_80353264
/* 80353258 0031C818  7D 03 43 78 */	mr r3, r8
/* 8035325C 0031C81C  4B F8 79 55 */	bl PPCMtdec
/* 80353260 0031C820  48 00 00 0C */	b .L_8035326C
.L_80353264:
/* 80353264 0031C824  38 64 FF FF */	addi r3, r4, -0x1
/* 80353268 0031C828  4B F8 79 49 */	bl PPCMtdec
.L_8035326C:
/* 8035326C 0031C82C  38 00 00 00 */	li r0, 0x0
/* 80353270 0031C830  90 1E 00 00 */	stw r0, 0x0(r30)
/* 80353274 0031C834  7F E3 FB 78 */	mr r3, r31
/* 80353278 0031C838  48 00 57 79 */	bl OSRestoreInterrupts
.L_8035327C:
/* 8035327C 0031C83C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80353280 0031C840  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80353284 0031C844  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80353288 0031C848  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035328C 0031C84C  7C 08 03 A6 */	mtlr r0
/* 80353290 0031C850  38 21 00 20 */	addi r1, r1, 0x20
/* 80353294 0031C854  4E 80 00 20 */	blr
.endfn OSCancelAlarm
/* 80353298 0031C858  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8035329C 0031C85C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn DecrementerExceptionCallback, local
/* 803532A0 0031C860  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 803532A4 0031C864  7C 08 02 A6 */	mflr r0
/* 803532A8 0031C868  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 803532AC 0031C86C  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 803532B0 0031C870  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 803532B4 0031C874  93 A1 02 D4 */	stw r29, 0x2d4(r1)
/* 803532B8 0031C878  7C 9D 23 78 */	mr r29, r4
/* 803532BC 0031C87C  93 81 02 D0 */	stw r28, 0x2d0(r1)
/* 803532C0 0031C880  48 00 96 D1 */	bl __OSGetSystemTime
/* 803532C4 0031C884  83 ED B8 C8 */	lwz r31, AlarmQueue@sda21(r13)
/* 803532C8 0031C888  7C 9C 23 78 */	mr r28, r4
/* 803532CC 0031C88C  7C 7E 1B 78 */	mr r30, r3
/* 803532D0 0031C890  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803532D4 0031C894  40 82 00 0C */	bne .L_803532E0
/* 803532D8 0031C898  7F A3 EB 78 */	mr r3, r29
/* 803532DC 0031C89C  48 00 16 95 */	bl OSLoadContext
.L_803532E0:
/* 803532E0 0031C8A0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 803532E4 0031C8A4  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 803532E8 0031C8A8  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 803532EC 0031C8AC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 803532F0 0031C8B0  7C 65 E0 10 */	subfc r3, r5, r28
/* 803532F4 0031C8B4  7C 84 01 10 */	subfe r4, r4, r0
/* 803532F8 0031C8B8  7C 80 01 10 */	subfe r4, r0, r0
/* 803532FC 0031C8BC  7C 84 00 D1 */	neg. r4, r4
/* 80353300 0031C8C0  41 82 00 7C */	beq .L_8035337C
/* 80353304 0031C8C4  48 00 96 8D */	bl __OSGetSystemTime
/* 80353308 0031C8C8  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8035330C 0031C8CC  38 E0 00 00 */	li r7, 0x0
/* 80353310 0031C8D0  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 80353314 0031C8D4  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 80353318 0031C8D8  7D 04 28 10 */	subfc r8, r4, r5
/* 8035331C 0031C8DC  7C 03 01 10 */	subfe r0, r3, r0
/* 80353320 0031C8E0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80353324 0031C8E4  7C 07 40 10 */	subfc r0, r7, r8
/* 80353328 0031C8E8  7C C6 29 10 */	subfe r6, r6, r5
/* 8035332C 0031C8EC  7C C5 29 10 */	subfe r6, r5, r5
/* 80353330 0031C8F0  7C C6 00 D1 */	neg. r6, r6
/* 80353334 0031C8F4  41 82 00 10 */	beq .L_80353344
/* 80353338 0031C8F8  38 60 00 00 */	li r3, 0x0
/* 8035333C 0031C8FC  4B F8 78 75 */	bl PPCMtdec
/* 80353340 0031C900  48 00 00 34 */	b .L_80353374
.L_80353344:
/* 80353344 0031C904  3C 80 80 00 */	lis r4, 0x8000
/* 80353348 0031C908  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8035334C 0031C90C  7C 04 40 10 */	subfc r0, r4, r8
/* 80353350 0031C910  7C 63 29 10 */	subfe r3, r3, r5
/* 80353354 0031C914  7C 65 29 10 */	subfe r3, r5, r5
/* 80353358 0031C918  7C 63 00 D1 */	neg. r3, r3
/* 8035335C 0031C91C  41 82 00 10 */	beq .L_8035336C
/* 80353360 0031C920  7D 03 43 78 */	mr r3, r8
/* 80353364 0031C924  4B F8 78 4D */	bl PPCMtdec
/* 80353368 0031C928  48 00 00 0C */	b .L_80353374
.L_8035336C:
/* 8035336C 0031C92C  38 64 FF FF */	addi r3, r4, -0x1
/* 80353370 0031C930  4B F8 78 41 */	bl PPCMtdec
.L_80353374:
/* 80353374 0031C934  7F A3 EB 78 */	mr r3, r29
/* 80353378 0031C938  48 00 15 F9 */	bl OSLoadContext
.L_8035337C:
/* 8035337C 0031C93C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80353380 0031C940  90 6D B8 C8 */	stw r3, AlarmQueue@sda21(r13)
/* 80353384 0031C944  2C 03 00 00 */	cmpwi r3, 0x0
/* 80353388 0031C948  40 82 00 14 */	bne .L_8035339C
/* 8035338C 0031C94C  38 6D B8 C8 */	addi r3, r13, AlarmQueue@sda21
/* 80353390 0031C950  38 00 00 00 */	li r0, 0x0
/* 80353394 0031C954  90 03 00 04 */	stw r0, 0x4(r3)
/* 80353398 0031C958  48 00 00 0C */	b .L_803533A4
.L_8035339C:
/* 8035339C 0031C95C  38 00 00 00 */	li r0, 0x0
/* 803533A0 0031C960  90 03 00 10 */	stw r0, 0x10(r3)
.L_803533A4:
/* 803533A4 0031C964  83 DF 00 00 */	lwz r30, 0x0(r31)
/* 803533A8 0031C968  38 C0 00 00 */	li r6, 0x0
/* 803533AC 0031C96C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 803533B0 0031C970  90 DF 00 00 */	stw r6, 0x0(r31)
/* 803533B4 0031C974  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 803533B8 0031C978  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 803533BC 0031C97C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 803533C0 0031C980  7C 65 30 10 */	subfc r3, r5, r6
/* 803533C4 0031C984  7C 84 01 10 */	subfe r4, r4, r0
/* 803533C8 0031C988  7C 80 01 10 */	subfe r4, r0, r0
/* 803533CC 0031C98C  7C 84 00 D1 */	neg. r4, r4
/* 803533D0 0031C990  41 82 00 18 */	beq .L_803533E8
/* 803533D4 0031C994  7F E3 FB 78 */	mr r3, r31
/* 803533D8 0031C998  7F C7 F3 78 */	mr r7, r30
/* 803533DC 0031C99C  38 C0 00 00 */	li r6, 0x0
/* 803533E0 0031C9A0  38 A0 00 00 */	li r5, 0x0
/* 803533E4 0031C9A4  4B FF FA 4D */	bl InsertAlarm
.L_803533E8:
/* 803533E8 0031C9A8  83 8D B8 C8 */	lwz r28, AlarmQueue@sda21(r13)
/* 803533EC 0031C9AC  2C 1C 00 00 */	cmpwi r28, 0x0
/* 803533F0 0031C9B0  41 82 00 74 */	beq .L_80353464
/* 803533F4 0031C9B4  48 00 95 9D */	bl __OSGetSystemTime
/* 803533F8 0031C9B8  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 803533FC 0031C9BC  38 E0 00 00 */	li r7, 0x0
/* 80353400 0031C9C0  80 1C 00 08 */	lwz r0, 0x8(r28)
/* 80353404 0031C9C4  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 80353408 0031C9C8  7D 04 28 10 */	subfc r8, r4, r5
/* 8035340C 0031C9CC  7C 03 01 10 */	subfe r0, r3, r0
/* 80353410 0031C9D0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80353414 0031C9D4  7C 07 40 10 */	subfc r0, r7, r8
/* 80353418 0031C9D8  7C C6 29 10 */	subfe r6, r6, r5
/* 8035341C 0031C9DC  7C C5 29 10 */	subfe r6, r5, r5
/* 80353420 0031C9E0  7C C6 00 D1 */	neg. r6, r6
/* 80353424 0031C9E4  41 82 00 10 */	beq .L_80353434
/* 80353428 0031C9E8  38 60 00 00 */	li r3, 0x0
/* 8035342C 0031C9EC  4B F8 77 85 */	bl PPCMtdec
/* 80353430 0031C9F0  48 00 00 34 */	b .L_80353464
.L_80353434:
/* 80353434 0031C9F4  3C 80 80 00 */	lis r4, 0x8000
/* 80353438 0031C9F8  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8035343C 0031C9FC  7C 04 40 10 */	subfc r0, r4, r8
/* 80353440 0031CA00  7C 63 29 10 */	subfe r3, r3, r5
/* 80353444 0031CA04  7C 65 29 10 */	subfe r3, r5, r5
/* 80353448 0031CA08  7C 63 00 D1 */	neg. r3, r3
/* 8035344C 0031CA0C  41 82 00 10 */	beq .L_8035345C
/* 80353450 0031CA10  7D 03 43 78 */	mr r3, r8
/* 80353454 0031CA14  4B F8 77 5D */	bl PPCMtdec
/* 80353458 0031CA18  48 00 00 0C */	b .L_80353464
.L_8035345C:
/* 8035345C 0031CA1C  38 64 FF FF */	addi r3, r4, -0x1
/* 80353460 0031CA20  4B F8 77 51 */	bl PPCMtdec
.L_80353464:
/* 80353464 0031CA24  48 00 81 8D */	bl OSDisableScheduler
/* 80353468 0031CA28  38 61 00 08 */	addi r3, r1, 0x8
/* 8035346C 0031CA2C  48 00 16 55 */	bl OSClearContext
/* 80353470 0031CA30  38 61 00 08 */	addi r3, r1, 0x8
/* 80353474 0031CA34  48 00 14 0D */	bl OSSetCurrentContext
/* 80353478 0031CA38  7F CC F3 78 */	mr r12, r30
/* 8035347C 0031CA3C  7F E3 FB 78 */	mr r3, r31
/* 80353480 0031CA40  7F A4 EB 78 */	mr r4, r29
/* 80353484 0031CA44  7D 89 03 A6 */	mtctr r12
/* 80353488 0031CA48  4E 80 04 21 */	bctrl
/* 8035348C 0031CA4C  38 61 00 08 */	addi r3, r1, 0x8
/* 80353490 0031CA50  48 00 16 31 */	bl OSClearContext
/* 80353494 0031CA54  7F A3 EB 78 */	mr r3, r29
/* 80353498 0031CA58  48 00 13 E9 */	bl OSSetCurrentContext
/* 8035349C 0031CA5C  48 00 81 95 */	bl OSEnableScheduler
/* 803534A0 0031CA60  48 00 86 B1 */	bl __OSReschedule
/* 803534A4 0031CA64  7F A3 EB 78 */	mr r3, r29
/* 803534A8 0031CA68  48 00 14 C9 */	bl OSLoadContext
/* 803534AC 0031CA6C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 803534B0 0031CA70  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 803534B4 0031CA74  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 803534B8 0031CA78  83 A1 02 D4 */	lwz r29, 0x2d4(r1)
/* 803534BC 0031CA7C  83 81 02 D0 */	lwz r28, 0x2d0(r1)
/* 803534C0 0031CA80  7C 08 03 A6 */	mtlr r0
/* 803534C4 0031CA84  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 803534C8 0031CA88  4E 80 00 20 */	blr
.endfn DecrementerExceptionCallback
/* 803534CC 0031CA8C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn DecrementerExceptionHandler, local
/* 803534D0 0031CA90  90 04 00 00 */	stw r0, 0x0(r4)
/* 803534D4 0031CA94  90 24 00 04 */	stw r1, 0x4(r4)
/* 803534D8 0031CA98  90 44 00 08 */	stw r2, 0x8(r4)
/* 803534DC 0031CA9C  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 803534E0 0031CAA0  7C 11 E2 A6 */	mfspr r0, GQR1
/* 803534E4 0031CAA4  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 803534E8 0031CAA8  7C 12 E2 A6 */	mfspr r0, GQR2
/* 803534EC 0031CAAC  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 803534F0 0031CAB0  7C 13 E2 A6 */	mfspr r0, GQR3
/* 803534F4 0031CAB4  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 803534F8 0031CAB8  7C 14 E2 A6 */	mfspr r0, GQR4
/* 803534FC 0031CABC  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 80353500 0031CAC0  7C 15 E2 A6 */	mfspr r0, GQR5
/* 80353504 0031CAC4  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 80353508 0031CAC8  7C 16 E2 A6 */	mfspr r0, GQR6
/* 8035350C 0031CACC  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 80353510 0031CAD0  7C 17 E2 A6 */	mfspr r0, GQR7
/* 80353514 0031CAD4  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 80353518 0031CAD8  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 8035351C 0031CADC  4B FF FD 84 */	b DecrementerExceptionCallback
.endfn DecrementerExceptionHandler

.fn OnReset, global
/* 80353520 0031CAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80353524 0031CAE4  7C 08 02 A6 */	mflr r0
/* 80353528 0031CAE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8035352C 0031CAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80353530 0031CAF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80353534 0031CAF4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80353538 0031CAF8  41 82 00 58 */	beq .L_80353590
/* 8035353C 0031CAFC  83 ED B8 C8 */	lwz r31, AlarmQueue@sda21(r13)
/* 80353540 0031CB00  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80353544 0031CB04  41 82 00 0C */	beq .L_80353550
/* 80353548 0031CB08  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 8035354C 0031CB0C  48 00 00 3C */	b .L_80353588
.L_80353550:
/* 80353550 0031CB10  3B C0 00 00 */	li r30, 0x0
/* 80353554 0031CB14  48 00 00 34 */	b .L_80353588
.L_80353558:
/* 80353558 0031CB18  7F E3 FB 78 */	mr r3, r31
/* 8035355C 0031CB1C  4B FB BE D5 */	bl __DVDTestAlarm
/* 80353560 0031CB20  2C 03 00 00 */	cmpwi r3, 0x0
/* 80353564 0031CB24  40 82 00 0C */	bne .L_80353570
/* 80353568 0031CB28  7F E3 FB 78 */	mr r3, r31
/* 8035356C 0031CB2C  4B FF FC 15 */	bl OSCancelAlarm
.L_80353570:
/* 80353570 0031CB30  2C 1E 00 00 */	cmpwi r30, 0x0
/* 80353574 0031CB34  7F DF F3 78 */	mr r31, r30
/* 80353578 0031CB38  41 82 00 0C */	beq .L_80353584
/* 8035357C 0031CB3C  83 DE 00 14 */	lwz r30, 0x14(r30)
/* 80353580 0031CB40  48 00 00 08 */	b .L_80353588
.L_80353584:
/* 80353584 0031CB44  3B C0 00 00 */	li r30, 0x0
.L_80353588:
/* 80353588 0031CB48  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8035358C 0031CB4C  40 82 FF CC */	bne .L_80353558
.L_80353590:
/* 80353590 0031CB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80353594 0031CB54  38 60 00 01 */	li r3, 0x1
/* 80353598 0031CB58  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8035359C 0031CB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803535A0 0031CB60  7C 08 03 A6 */	mtlr r0
/* 803535A4 0031CB64  38 21 00 10 */	addi r1, r1, 0x10
/* 803535A8 0031CB68  4E 80 00 20 */	blr
.endfn OnReset
/* 803535AC 0031CB6C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSSetAlarmUserData, global
/* 803535B0 0031CB70  90 83 00 28 */	stw r4, 0x28(r3)
/* 803535B4 0031CB74  4E 80 00 20 */	blr
.endfn OSSetAlarmUserData
/* 803535B8 0031CB78  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803535BC 0031CB7C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSGetAlarmUserData, global
/* 803535C0 0031CB80  80 63 00 28 */	lwz r3, 0x28(r3)
/* 803535C4 0031CB84  4E 80 00 20 */	blr
.endfn OSGetAlarmUserData
/* 803535C8 0031CB88  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803535CC 0031CB8C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn __OSCancelInternalAlarms, global
/* 803535D0 0031CB90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803535D4 0031CB94  7C 08 02 A6 */	mflr r0
/* 803535D8 0031CB98  90 01 00 24 */	stw r0, 0x24(r1)
/* 803535DC 0031CB9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803535E0 0031CBA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803535E4 0031CBA4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803535E8 0031CBA8  7C 7D 1B 78 */	mr r29, r3
/* 803535EC 0031CBAC  48 00 53 C5 */	bl OSDisableInterrupts
/* 803535F0 0031CBB0  80 8D B8 C8 */	lwz r4, AlarmQueue@sda21(r13)
/* 803535F4 0031CBB4  7C 7F 1B 78 */	mr r31, r3
/* 803535F8 0031CBB8  2C 04 00 00 */	cmpwi r4, 0x0
/* 803535FC 0031CBBC  41 82 00 0C */	beq .L_80353608
/* 80353600 0031CBC0  83 C4 00 14 */	lwz r30, 0x14(r4)
/* 80353604 0031CBC4  48 00 00 48 */	b .L_8035364C
.L_80353608:
/* 80353608 0031CBC8  3B C0 00 00 */	li r30, 0x0
/* 8035360C 0031CBCC  48 00 00 40 */	b .L_8035364C
.L_80353610:
/* 80353610 0031CBD0  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80353614 0031CBD4  3C 03 00 01 */	addis r0, r3, 0x1
/* 80353618 0031CBD8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8035361C 0031CBDC  40 82 00 18 */	bne .L_80353634
/* 80353620 0031CBE0  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80353624 0031CBE4  7C 00 E8 40 */	cmplw r0, r29
/* 80353628 0031CBE8  40 82 00 0C */	bne .L_80353634
/* 8035362C 0031CBEC  7C 83 23 78 */	mr r3, r4
/* 80353630 0031CBF0  4B FF FB 51 */	bl OSCancelAlarm
.L_80353634:
/* 80353634 0031CBF4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 80353638 0031CBF8  7F C4 F3 78 */	mr r4, r30
/* 8035363C 0031CBFC  41 82 00 0C */	beq .L_80353648
/* 80353640 0031CC00  83 DE 00 14 */	lwz r30, 0x14(r30)
/* 80353644 0031CC04  48 00 00 08 */	b .L_8035364C
.L_80353648:
/* 80353648 0031CC08  3B C0 00 00 */	li r30, 0x0
.L_8035364C:
/* 8035364C 0031CC0C  2C 04 00 00 */	cmpwi r4, 0x0
/* 80353650 0031CC10  40 82 FF C0 */	bne .L_80353610
/* 80353654 0031CC14  7F E3 FB 78 */	mr r3, r31
/* 80353658 0031CC18  48 00 53 99 */	bl OSRestoreInterrupts
/* 8035365C 0031CC1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80353660 0031CC20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80353664 0031CC24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80353668 0031CC28  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035366C 0031CC2C  7C 08 03 A6 */	mtlr r0
/* 80353670 0031CC30  38 21 00 20 */	addi r1, r1, 0x20
/* 80353674 0031CC34  4E 80 00 20 */	blr
.endfn __OSCancelInternalAlarms
/* 80353678 0031CC38  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8035367C 0031CC3C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

ShutdownFunctionInfo:
	.4byte OnReset
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8

AlarmQueue:
	.skip 0x8
