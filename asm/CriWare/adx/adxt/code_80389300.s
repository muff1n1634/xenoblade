.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80389300, global
/* 80389300 003528C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80389304 003528C4  7C 08 02 A6 */	mflr r0
/* 80389308 003528C8  3C C0 80 00 */	lis r6, 0x7FFFFFFF@ha
/* 8038930C 003528CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80389310 003528D0  BF 41 00 08 */	stmw r26, 8(r1)
/* 80389314 003528D4  7C 7A 1B 78 */	mr r26, r3
/* 80389318 003528D8  7C BB 2B 78 */	mr r27, r5
/* 8038931C 003528DC  3B E4 FF FD */	addi r31, r4, -3
/* 80389320 003528E0  3B 86 FF FF */	addi r28, r6, 0x7FFFFFFF@l
/* 80389324 003528E4  3B A0 00 00 */	li r29, 0
/* 80389328 003528E8  3F C0 80 52 */	lis r30, lbl_8051AA88@ha
/* 8038932C 003528EC  48 00 00 38 */	b .L_80389364
.L_80389330:
/* 80389330 003528F0  7C 7A EA 14 */	add r3, r26, r29
/* 80389334 003528F4  38 9E AA 88 */	addi r4, r30, lbl_8051AA88@l
/* 80389338 003528F8  38 A0 00 04 */	li r5, 4
/* 8038933C 003528FC  4B F3 54 F1 */	bl memcmp
/* 80389340 00352900  2C 03 00 00 */	cmpwi r3, 0
/* 80389344 00352904  40 82 00 1C */	bne .L_80389360
/* 80389348 00352908  3C 60 80 00 */	lis r3, 0x7FFFFFFF@ha
/* 8038934C 0035290C  3B 83 FF FF */	addi r28, r3, 0x7FFFFFFF@l
/* 80389350 00352910  7C 1D E0 00 */	cmpw r29, r28
/* 80389354 00352914  40 80 00 18 */	bge .L_8038936C
/* 80389358 00352918  7F BC EB 78 */	mr r28, r29
/* 8038935C 0035291C  48 00 00 10 */	b .L_8038936C
.L_80389360:
/* 80389360 00352920  3B BD 00 01 */	addi r29, r29, 1
.L_80389364:
/* 80389364 00352924  7C 1D F8 00 */	cmpw r29, r31
/* 80389368 00352928  41 80 FF C8 */	blt .L_80389330
.L_8038936C:
/* 8038936C 0035292C  3C 1C 80 01 */	addis r0, r28, 0x8001
/* 80389370 00352930  28 00 FF FF */	cmplwi r0, 0xffff
/* 80389374 00352934  41 82 00 10 */	beq .L_80389384
/* 80389378 00352938  B3 9B 00 00 */	sth r28, 0(r27)
/* 8038937C 0035293C  38 60 00 00 */	li r3, 0
/* 80389380 00352940  48 00 00 10 */	b .L_80389390
.L_80389384:
/* 80389384 00352944  38 00 00 00 */	li r0, 0
/* 80389388 00352948  38 60 FF FF */	li r3, -1
/* 8038938C 0035294C  B0 1B 00 00 */	sth r0, 0(r27)
.L_80389390:
/* 80389390 00352950  BB 41 00 08 */	lmw r26, 8(r1)
/* 80389394 00352954  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80389398 00352958  7C 08 03 A6 */	mtlr r0
/* 8038939C 0035295C  38 21 00 20 */	addi r1, r1, 0x20
/* 803893A0 00352960  4E 80 00 20 */	blr 
.endfn func_80389300
