.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn DSPCheckMailToDSP, global
/* 80309210 002D27D0  3C 60 CC 00 */	lis r3, 0xcc00
/* 80309214 002D27D4  A0 03 50 00 */	lhz r0, 0x5000(r3)
/* 80309218 002D27D8  54 03 8F FE */	extrwi r3, r0, 1, 16
/* 8030921C 002D27DC  4E 80 00 20 */	blr
.endfn DSPCheckMailToDSP

.fn DSPCheckMailFromDSP, global
/* 80309220 002D27E0  3C 60 CC 00 */	lis r3, 0xcc00
/* 80309224 002D27E4  A0 03 50 04 */	lhz r0, 0x5004(r3)
/* 80309228 002D27E8  54 03 8F FE */	extrwi r3, r0, 1, 16
/* 8030922C 002D27EC  4E 80 00 20 */	blr
.endfn DSPCheckMailFromDSP

.fn DSPReadMailFromDSP, global
/* 80309230 002D27F0  3C 60 CC 00 */	lis r3, 0xcc00
/* 80309234 002D27F4  A0 03 50 04 */	lhz r0, 0x5004(r3)
/* 80309238 002D27F8  A0 63 50 06 */	lhz r3, 0x5006(r3)
/* 8030923C 002D27FC  50 03 80 1E */	rlwimi r3, r0, 16, 0, 15
/* 80309240 002D2800  4E 80 00 20 */	blr
.endfn DSPReadMailFromDSP
/* 80309244 002D2804  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80309248 002D2808  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8030924C 002D280C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn DSPSendMailToDSP, global
/* 80309250 002D2810  3C 80 CC 00 */	lis r4, 0xcc00
/* 80309254 002D2814  54 60 84 3E */	srwi r0, r3, 16
/* 80309258 002D2818  B0 04 50 00 */	sth r0, 0x5000(r4)
/* 8030925C 002D281C  B0 64 50 02 */	sth r3, 0x5002(r4)
/* 80309260 002D2820  4E 80 00 20 */	blr
.endfn DSPSendMailToDSP
/* 80309264 002D2824  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80309268 002D2828  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8030926C 002D282C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn DSPInit, global
/* 80309270 002D2830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309274 002D2834  7C 08 02 A6 */	mflr r0
/* 80309278 002D2838  3C A0 80 55 */	lis r5, lbl_805495F8@ha
/* 8030927C 002D283C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309280 002D2840  38 A5 95 F8 */	addi r5, r5, lbl_805495F8@l
/* 80309284 002D2844  38 65 00 48 */	addi r3, r5, 0x48
/* 80309288 002D2848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030928C 002D284C  38 85 00 68 */	addi r4, r5, 0x68
/* 80309290 002D2850  38 A5 00 74 */	addi r5, r5, 0x74
/* 80309294 002D2854  4C C6 31 82 */	crclr 4*cr1+eq
/* 80309298 002D2858  48 00 02 19 */	bl __DSP_debug_printf
/* 8030929C 002D285C  80 0D B6 08 */	lwz r0, lbl_80667788@sda21(r13)
/* 803092A0 002D2860  2C 00 00 01 */	cmpwi r0, 0x1
/* 803092A4 002D2864  41 82 00 78 */	beq .L_8030931C
/* 803092A8 002D2868  80 6D 97 E8 */	lwz r3, lbl_80665968@sda21(r13)
/* 803092AC 002D286C  48 04 9A 55 */	bl OSRegisterVersion
/* 803092B0 002D2870  48 04 F7 01 */	bl OSDisableInterrupts
/* 803092B4 002D2874  3C 80 80 31 */	lis r4, __DSPHandler@ha
/* 803092B8 002D2878  7C 7F 1B 78 */	mr r31, r3
/* 803092BC 002D287C  38 84 95 00 */	addi r4, r4, __DSPHandler@l
/* 803092C0 002D2880  38 60 00 07 */	li r3, 0x7
/* 803092C4 002D2884  48 04 F7 5D */	bl __OSSetInterruptHandler
/* 803092C8 002D2888  3C 60 01 00 */	lis r3, 0x100
/* 803092CC 002D288C  48 04 FB 35 */	bl __OSUnmaskInterrupts
/* 803092D0 002D2890  3C E0 CC 00 */	lis r7, 0xcc00
/* 803092D4 002D2894  38 60 FF 57 */	li r3, -0xa9
/* 803092D8 002D2898  A0 C7 50 0A */	lhz r6, 0x500a(r7)
/* 803092DC 002D289C  38 A0 FF 53 */	li r5, -0xad
/* 803092E0 002D28A0  38 80 00 00 */	li r4, 0x0
/* 803092E4 002D28A4  38 00 00 01 */	li r0, 0x1
/* 803092E8 002D28A8  7C C3 18 38 */	and r3, r6, r3
/* 803092EC 002D28AC  60 63 08 00 */	ori r3, r3, 0x800
/* 803092F0 002D28B0  B0 67 50 0A */	sth r3, 0x500a(r7)
/* 803092F4 002D28B4  7F E3 FB 78 */	mr r3, r31
/* 803092F8 002D28B8  A0 C7 50 0A */	lhz r6, 0x500a(r7)
/* 803092FC 002D28BC  7C C5 28 38 */	and r5, r6, r5
/* 80309300 002D28C0  B0 A7 50 0A */	sth r5, 0x500a(r7)
/* 80309304 002D28C4  90 8D B6 18 */	stw r4, lbl_80667798@sda21(r13)
/* 80309308 002D28C8  90 8D B6 24 */	stw r4, lbl_806677A4@sda21(r13)
/* 8030930C 002D28CC  90 8D B6 1C */	stw r4, lbl_8066779C@sda21(r13)
/* 80309310 002D28D0  90 8D B6 20 */	stw r4, lbl_806677A0@sda21(r13)
/* 80309314 002D28D4  90 0D B6 08 */	stw r0, lbl_80667788@sda21(r13)
/* 80309318 002D28D8  48 04 F6 D9 */	bl OSRestoreInterrupts
.L_8030931C:
/* 8030931C 002D28DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309320 002D28E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309324 002D28E4  7C 08 03 A6 */	mtlr r0
/* 80309328 002D28E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030932C 002D28EC  4E 80 00 20 */	blr
.endfn DSPInit

.fn DSPCheckInit, global
/* 80309330 002D28F0  80 6D B6 08 */	lwz r3, lbl_80667788@sda21(r13)
/* 80309334 002D28F4  4E 80 00 20 */	blr
.endfn DSPCheckInit
/* 80309338 002D28F8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8030933C 002D28FC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn DSPAddTask, global
/* 80309340 002D2900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309344 002D2904  7C 08 02 A6 */	mflr r0
/* 80309348 002D2908  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030934C 002D290C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309350 002D2910  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80309354 002D2914  7C 7E 1B 78 */	mr r30, r3
/* 80309358 002D2918  48 04 F6 59 */	bl OSDisableInterrupts
/* 8030935C 002D291C  7C 7F 1B 78 */	mr r31, r3
/* 80309360 002D2920  7F C3 F3 78 */	mr r3, r30
/* 80309364 002D2924  48 00 09 0D */	bl __DSP_insert_task
/* 80309368 002D2928  38 00 00 00 */	li r0, 0x0
/* 8030936C 002D292C  90 1E 00 00 */	stw r0, 0x0(r30)
/* 80309370 002D2930  38 00 00 01 */	li r0, 0x1
/* 80309374 002D2934  7F E3 FB 78 */	mr r3, r31
/* 80309378 002D2938  90 1E 00 08 */	stw r0, 0x8(r30)
/* 8030937C 002D293C  48 04 F6 75 */	bl OSRestoreInterrupts
/* 80309380 002D2940  80 0D B6 20 */	lwz r0, lbl_806677A0@sda21(r13)
/* 80309384 002D2944  7C 1E 00 40 */	cmplw r30, r0
/* 80309388 002D2948  40 82 00 0C */	bne .L_80309394
/* 8030938C 002D294C  7F C3 F3 78 */	mr r3, r30
/* 80309390 002D2950  48 00 07 51 */	bl __DSP_boot_task
.L_80309394:
/* 80309394 002D2954  7F C3 F3 78 */	mr r3, r30
/* 80309398 002D2958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030939C 002D295C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803093A0 002D2960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803093A4 002D2964  7C 08 03 A6 */	mtlr r0
/* 803093A8 002D2968  38 21 00 10 */	addi r1, r1, 0x10
/* 803093AC 002D296C  4E 80 00 20 */	blr
.endfn DSPAddTask

.fn DSPCancelTask, global
/* 803093B0 002D2970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803093B4 002D2974  7C 08 02 A6 */	mflr r0
/* 803093B8 002D2978  90 01 00 14 */	stw r0, 0x14(r1)
/* 803093BC 002D297C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803093C0 002D2980  7C 7F 1B 78 */	mr r31, r3
/* 803093C4 002D2984  48 04 F5 ED */	bl OSDisableInterrupts
/* 803093C8 002D2988  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 803093CC 002D298C  60 00 00 02 */	ori r0, r0, 0x2
/* 803093D0 002D2990  90 1F 00 08 */	stw r0, 0x8(r31)
/* 803093D4 002D2994  48 04 F6 1D */	bl OSRestoreInterrupts
/* 803093D8 002D2998  7F E3 FB 78 */	mr r3, r31
/* 803093DC 002D299C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803093E0 002D29A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803093E4 002D29A4  7C 08 03 A6 */	mtlr r0
/* 803093E8 002D29A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803093EC 002D29AC  4E 80 00 20 */	blr
.endfn DSPCancelTask

.fn DSPAssertTask, global
/* 803093F0 002D29B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803093F4 002D29B4  7C 08 02 A6 */	mflr r0
/* 803093F8 002D29B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803093FC 002D29BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309400 002D29C0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80309404 002D29C4  7C 7E 1B 78 */	mr r30, r3
/* 80309408 002D29C8  48 04 F5 A9 */	bl OSDisableInterrupts
/* 8030940C 002D29CC  80 AD B6 24 */	lwz r5, lbl_806677A4@sda21(r13)
/* 80309410 002D29D0  7C 7F 1B 78 */	mr r31, r3
/* 80309414 002D29D4  7C 05 F0 40 */	cmplw r5, r30
/* 80309418 002D29D8  40 82 00 1C */	bne .L_80309434
/* 8030941C 002D29DC  38 00 00 01 */	li r0, 0x1
/* 80309420 002D29E0  93 CD B6 14 */	stw r30, lbl_80667794@sda21(r13)
/* 80309424 002D29E4  90 0D B6 10 */	stw r0, lbl_80667790@sda21(r13)
/* 80309428 002D29E8  48 04 F5 C9 */	bl OSRestoreInterrupts
/* 8030942C 002D29EC  7F C3 F3 78 */	mr r3, r30
/* 80309430 002D29F0  48 00 00 64 */	b .L_80309494
.L_80309434:
/* 80309434 002D29F4  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 80309438 002D29F8  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8030943C 002D29FC  7C 04 00 40 */	cmplw r4, r0
/* 80309440 002D2A00  40 80 00 4C */	bge .L_8030948C
/* 80309444 002D2A04  38 00 00 01 */	li r0, 0x1
/* 80309448 002D2A08  93 CD B6 14 */	stw r30, lbl_80667794@sda21(r13)
/* 8030944C 002D2A0C  90 0D B6 10 */	stw r0, lbl_80667790@sda21(r13)
/* 80309450 002D2A10  80 05 00 00 */	lwz r0, 0x0(r5)
/* 80309454 002D2A14  28 00 00 01 */	cmplwi r0, 0x1
/* 80309458 002D2A18  40 82 00 24 */	bne .L_8030947C
/* 8030945C 002D2A1C  48 04 F5 55 */	bl OSDisableInterrupts
/* 80309460 002D2A20  3C A0 CC 00 */	lis r5, 0xcc00
/* 80309464 002D2A24  38 00 FF 57 */	li r0, -0xa9
/* 80309468 002D2A28  A0 85 50 0A */	lhz r4, 0x500a(r5)
/* 8030946C 002D2A2C  7C 80 00 38 */	and r0, r4, r0
/* 80309470 002D2A30  60 00 00 02 */	ori r0, r0, 0x2
/* 80309474 002D2A34  B0 05 50 0A */	sth r0, 0x500a(r5)
/* 80309478 002D2A38  48 04 F5 79 */	bl OSRestoreInterrupts
.L_8030947C:
/* 8030947C 002D2A3C  7F E3 FB 78 */	mr r3, r31
/* 80309480 002D2A40  48 04 F5 71 */	bl OSRestoreInterrupts
/* 80309484 002D2A44  7F C3 F3 78 */	mr r3, r30
/* 80309488 002D2A48  48 00 00 0C */	b .L_80309494
.L_8030948C:
/* 8030948C 002D2A4C  48 04 F5 65 */	bl OSRestoreInterrupts
/* 80309490 002D2A50  38 60 00 00 */	li r3, 0x0
.L_80309494:
/* 80309494 002D2A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309498 002D2A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030949C 002D2A5C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803094A0 002D2A60  7C 08 03 A6 */	mtlr r0
/* 803094A4 002D2A64  38 21 00 10 */	addi r1, r1, 0x10
/* 803094A8 002D2A68  4E 80 00 20 */	blr
.endfn DSPAssertTask
/* 803094AC 002D2A6C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8
.global lbl_805495F8
lbl_805495F8:
	.4byte 0x3C3C2052
	.4byte 0x564C5F53
	.4byte 0x444B202D
	.4byte 0x20445350
	.4byte 0x20097265
	.4byte 0x6C656173
	.4byte 0x65206275
	.4byte 0x696C643A
	.4byte 0x20466562
	.4byte 0x20323720
	.4byte 0x32303039
	.4byte 0x2031303A
	.4byte 0x30313A35
	.4byte 0x37202830
	.4byte 0x78343330
	.4byte 0x325F3134
	.4byte 0x3529203E
	.4byte 0x3E000000
	.4byte 0x44535049
	.4byte 0x6E697428
	.4byte 0x293A2042
	.4byte 0x75696C64
	.4byte 0x20446174
	.4byte 0x653A2025
	.4byte 0x73202573
	.4byte 0x0A000000
	.4byte 0x46656220
	.4byte 0x32372032
	.4byte 0x30303900
	.4byte 0x31303A30
	.4byte 0x313A3537
	.4byte 0x00000000

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8
.global lbl_80665968
lbl_80665968:
	.4byte lbl_805495F8
	.4byte 0x00000000

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8
.global lbl_80667788
lbl_80667788:
	.skip 0x8
.global lbl_80667790
lbl_80667790:
	.skip 0x4
.global lbl_80667794
lbl_80667794:
	.skip 0x4
.global lbl_80667798
lbl_80667798:
	.skip 0x4
.global lbl_8066779C
lbl_8066779C:
	.skip 0x4
.global lbl_806677A0
lbl_806677A0:
	.skip 0x4
.global lbl_806677A4
lbl_806677A4:
	.skip 0x4
