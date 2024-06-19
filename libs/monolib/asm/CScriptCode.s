.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__11CScriptCodeFv, global
/* 8043A0E0 004036A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043A0E4 004036A4  7C 08 02 A6 */	mflr r0
/* 8043A0E8 004036A8  2C 03 00 00 */	cmpwi r3, 0
/* 8043A0EC 004036AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043A0F0 004036B0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8043A0F4 004036B4  7C 7B 1B 78 */	mr r27, r3
/* 8043A0F8 004036B8  7C 9C 23 78 */	mr r28, r4
/* 8043A0FC 004036BC  41 82 00 C0 */	beq .L_8043A1BC
/* 8043A100 004036C0  3C 80 80 57 */	lis r4, __vt__11CScriptCode@ha
/* 8043A104 004036C4  7F 7E DB 78 */	mr r30, r27
/* 8043A108 004036C8  38 84 EC 90 */	addi r4, r4, __vt__11CScriptCode@l
/* 8043A10C 004036CC  90 83 00 00 */	stw r4, 0(r3)
/* 8043A110 004036D0  3B A0 00 00 */	li r29, 0
/* 8043A114 004036D4  3B E0 00 00 */	li r31, 0
/* 8043A118 004036D8  48 00 00 20 */	b .L_8043A138
.L_8043A11C:
/* 8043A11C 004036DC  80 7E 01 C4 */	lwz r3, 0x1c4(r30)
/* 8043A120 004036E0  2C 03 00 00 */	cmpwi r3, 0
/* 8043A124 004036E4  41 82 00 0C */	beq .L_8043A130
/* 8043A128 004036E8  4B FF AB 05 */	bl __dl__FPv
/* 8043A12C 004036EC  93 FE 01 C4 */	stw r31, 0x1c4(r30)
.L_8043A130:
/* 8043A130 004036F0  3B DE 00 04 */	addi r30, r30, 4
/* 8043A134 004036F4  3B BD 00 01 */	addi r29, r29, 1
.L_8043A138:
/* 8043A138 004036F8  A8 1B 03 C4 */	lha r0, 0x3c4(r27)
/* 8043A13C 004036FC  7F A3 07 34 */	extsh r3, r29
/* 8043A140 00403700  7C 03 00 00 */	cmpw r3, r0
/* 8043A144 00403704  41 80 FF D8 */	blt .L_8043A11C
/* 8043A148 00403708  7F 7E DB 78 */	mr r30, r27
/* 8043A14C 0040370C  3B A0 00 00 */	li r29, 0
/* 8043A150 00403710  3B E0 00 00 */	li r31, 0
/* 8043A154 00403714  48 00 00 20 */	b .L_8043A174
.L_8043A158:
/* 8043A158 00403718  80 7E 03 C8 */	lwz r3, 0x3c8(r30)
/* 8043A15C 0040371C  2C 03 00 00 */	cmpwi r3, 0
/* 8043A160 00403720  41 82 00 0C */	beq .L_8043A16C
/* 8043A164 00403724  4B FF AA C9 */	bl __dl__FPv
/* 8043A168 00403728  93 FE 03 C8 */	stw r31, 0x3c8(r30)
.L_8043A16C:
/* 8043A16C 0040372C  3B DE 00 04 */	addi r30, r30, 4
/* 8043A170 00403730  3B BD 00 01 */	addi r29, r29, 1
.L_8043A174:
/* 8043A174 00403734  A8 1B 05 C8 */	lha r0, 0x5c8(r27)
/* 8043A178 00403738  7F A3 07 34 */	extsh r3, r29
/* 8043A17C 0040373C  7C 03 00 00 */	cmpw r3, r0
/* 8043A180 00403740  41 80 FF D8 */	blt .L_8043A158
/* 8043A184 00403744  38 00 00 00 */	li r0, 0
/* 8043A188 00403748  B0 1B 03 C4 */	sth r0, 0x3c4(r27)
/* 8043A18C 0040374C  38 7B 05 CC */	addi r3, r27, 0x5cc
/* 8043A190 00403750  38 80 FF FF */	li r4, -1
/* 8043A194 00403754  B0 1B 05 C8 */	sth r0, 0x5c8(r27)
/* 8043A198 00403758  90 0D BD 10 */	stw r0, lbl_80667E90@sda21(r13)
/* 8043A19C 0040375C  48 00 08 41 */	bl __dt__6CTokenFv
/* 8043A1A0 00403760  7F 63 DB 78 */	mr r3, r27
/* 8043A1A4 00403764  38 80 00 00 */	li r4, 0
/* 8043A1A8 00403768  4B FF D9 21 */	bl __dt__11CWorkThreadFv
/* 8043A1AC 0040376C  2C 1C 00 00 */	cmpwi r28, 0
/* 8043A1B0 00403770  40 81 00 0C */	ble .L_8043A1BC
/* 8043A1B4 00403774  7F 63 DB 78 */	mr r3, r27
/* 8043A1B8 00403778  4B FF AA 75 */	bl __dl__FPv
.L_8043A1BC:
/* 8043A1BC 0040377C  7F 63 DB 78 */	mr r3, r27
/* 8043A1C0 00403780  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8043A1C4 00403784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043A1C8 00403788  7C 08 03 A6 */	mtlr r0
/* 8043A1CC 0040378C  38 21 00 20 */	addi r1, r1, 0x20
/* 8043A1D0 00403790  4E 80 00 20 */	blr 
.endfn __dt__11CScriptCodeFv

.fn func_8043A1D4, global
/* 8043A1D4 00403794  80 6D BD 10 */	lwz r3, lbl_80667E90@sda21(r13)
/* 8043A1D8 00403798  4E 80 00 20 */	blr 
.endfn func_8043A1D4

.fn func_8043A1DC, global
/* 8043A1DC 0040379C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8043A1E0 004037A0  7C 08 02 A6 */	mflr r0
/* 8043A1E4 004037A4  2C 04 00 00 */	cmpwi r4, 0
/* 8043A1E8 004037A8  90 01 01 34 */	stw r0, 0x134(r1)
/* 8043A1EC 004037AC  BF 21 01 14 */	stmw r25, 0x114(r1)
/* 8043A1F0 004037B0  7C 7C 1B 78 */	mr r28, r3
/* 8043A1F4 004037B4  7C 9D 23 78 */	mr r29, r4
/* 8043A1F8 004037B8  7C BE 2B 78 */	mr r30, r5
/* 8043A1FC 004037BC  3B E0 00 00 */	li r31, 0
/* 8043A200 004037C0  41 82 00 E4 */	beq .L_8043A2E4
/* 8043A204 004037C4  3B 61 00 08 */	addi r27, r1, 8
/* 8043A208 004037C8  3B 20 00 20 */	li r25, 0x20
/* 8043A20C 004037CC  3B 40 00 00 */	li r26, 0
/* 8043A210 004037D0  48 00 00 C8 */	b .L_8043A2D8
.L_8043A214:
/* 8043A214 004037D4  7C DD FA 14 */	add r6, r29, r31
/* 8043A218 004037D8  38 A1 00 08 */	addi r5, r1, 8
/* 8043A21C 004037DC  7C C3 33 78 */	mr r3, r6
/* 8043A220 004037E0  38 81 00 08 */	addi r4, r1, 8
/* 8043A224 004037E4  38 E0 00 00 */	li r7, 0
/* 8043A228 004037E8  48 00 00 44 */	b .L_8043A26C
.L_8043A22C:
/* 8043A22C 004037EC  88 03 00 00 */	lbz r0, 0(r3)
/* 8043A230 004037F0  38 C6 00 01 */	addi r6, r6, 1
/* 8043A234 004037F4  98 04 00 00 */	stb r0, 0(r4)
/* 8043A238 004037F8  3B FF 00 01 */	addi r31, r31, 1
/* 8043A23C 004037FC  38 63 00 01 */	addi r3, r3, 1
/* 8043A240 00403800  38 E7 00 01 */	addi r7, r7, 1
/* 8043A244 00403804  88 05 00 00 */	lbz r0, 0(r5)
/* 8043A248 00403808  38 84 00 01 */	addi r4, r4, 1
/* 8043A24C 0040380C  38 A5 00 01 */	addi r5, r5, 1
/* 8043A250 00403810  2C 00 00 09 */	cmpwi r0, 9
/* 8043A254 00403814  40 82 00 08 */	bne .L_8043A25C
/* 8043A258 00403818  9B 25 FF FF */	stb r25, -1(r5)
.L_8043A25C:
/* 8043A25C 0040381C  28 07 00 FF */	cmplwi r7, 0xff
/* 8043A260 00403820  40 80 00 24 */	bge .L_8043A284
/* 8043A264 00403824  7C 1F F0 40 */	cmplw r31, r30
/* 8043A268 00403828  40 80 00 1C */	bge .L_8043A284
.L_8043A26C:
/* 8043A26C 0040382C  88 06 00 00 */	lbz r0, 0(r6)
/* 8043A270 00403830  28 00 00 20 */	cmplwi r0, 0x20
/* 8043A274 00403834  40 80 FF B8 */	bge .L_8043A22C
/* 8043A278 00403838  88 03 00 00 */	lbz r0, 0(r3)
/* 8043A27C 0040383C  2C 00 00 09 */	cmpwi r0, 9
/* 8043A280 00403840  41 82 FF AC */	beq .L_8043A22C
.L_8043A284:
/* 8043A284 00403844  7C 1F F0 40 */	cmplw r31, r30
/* 8043A288 00403848  40 80 00 5C */	bge .L_8043A2E4
/* 8043A28C 0040384C  7F 5B 39 AE */	stbx r26, r27, r7
/* 8043A290 00403850  7F 83 E3 78 */	mr r3, r28
/* 8043A294 00403854  7F 64 DB 78 */	mr r4, r27
/* 8043A298 00403858  38 A0 00 01 */	li r5, 1
/* 8043A29C 0040385C  48 00 00 F5 */	bl func_8043A390
/* 8043A2A0 00403860  7C 7D FA 14 */	add r3, r29, r31
.L_8043A2A4:
/* 8043A2A4 00403864  88 03 00 00 */	lbz r0, 0(r3)
/* 8043A2A8 00403868  7C 00 07 74 */	extsb r0, r0
/* 8043A2AC 0040386C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8043A2B0 00403870  40 82 00 0C */	bne .L_8043A2BC
/* 8043A2B4 00403874  3B FF 00 01 */	addi r31, r31, 1
/* 8043A2B8 00403878  48 00 00 20 */	b .L_8043A2D8
.L_8043A2BC:
/* 8043A2BC 0040387C  7C 1F F0 40 */	cmplw r31, r30
/* 8043A2C0 00403880  40 80 00 18 */	bge .L_8043A2D8
/* 8043A2C4 00403884  2C 00 00 00 */	cmpwi r0, 0
/* 8043A2C8 00403888  41 82 00 10 */	beq .L_8043A2D8
/* 8043A2CC 0040388C  3B FF 00 01 */	addi r31, r31, 1
/* 8043A2D0 00403890  38 63 00 01 */	addi r3, r3, 1
/* 8043A2D4 00403894  4B FF FF D0 */	b .L_8043A2A4
.L_8043A2D8:
/* 8043A2D8 00403898  7C 1D F8 AE */	lbzx r0, r29, r31
/* 8043A2DC 0040389C  7C 00 07 75 */	extsb. r0, r0
/* 8043A2E0 004038A0  40 82 FF 34 */	bne .L_8043A214
.L_8043A2E4:
/* 8043A2E4 004038A4  BB 21 01 14 */	lmw r25, 0x114(r1)
/* 8043A2E8 004038A8  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8043A2EC 004038AC  7C 08 03 A6 */	mtlr r0
/* 8043A2F0 004038B0  38 21 01 30 */	addi r1, r1, 0x130
/* 8043A2F4 004038B4  4E 80 00 20 */	blr 
.endfn func_8043A1DC

.fn func_8043A2F8, global
/* 8043A2F8 004038B8  39 20 00 00 */	li r9, 0
/* 8043A2FC 004038BC  39 40 00 00 */	li r10, 0
/* 8043A300 004038C0  39 00 00 00 */	li r8, 0
/* 8043A304 004038C4  38 E0 00 00 */	li r7, 0
.L_8043A308:
/* 8043A308 004038C8  88 C5 00 00 */	lbz r6, 0(r5)
/* 8043A30C 004038CC  7C C0 07 74 */	extsb r0, r6
/* 8043A310 004038D0  2C 00 00 7C */	cmpwi r0, 0x7c
/* 8043A314 004038D4  40 82 00 34 */	bne .L_8043A348
/* 8043A318 004038D8  39 29 00 01 */	addi r9, r9, 1
/* 8043A31C 004038DC  7D 46 07 34 */	extsh r6, r10
/* 8043A320 004038E0  7D 20 07 34 */	extsh r0, r9
/* 8043A324 004038E4  7C 68 22 14 */	add r3, r8, r4
/* 8043A328 004038E8  2C 00 00 08 */	cmpwi r0, 8
/* 8043A32C 004038EC  7C E6 19 AE */	stbx r7, r6, r3
/* 8043A330 004038F0  39 40 00 00 */	li r10, 0
/* 8043A334 004038F4  38 A5 00 01 */	addi r5, r5, 1
/* 8043A338 004038F8  39 08 01 00 */	addi r8, r8, 0x100
/* 8043A33C 004038FC  41 80 FF CC */	blt .L_8043A308
/* 8043A340 00403900  38 60 00 08 */	li r3, 8
/* 8043A344 00403904  4E 80 00 20 */	blr
.L_8043A348:
/* 8043A348 00403908  2C 00 00 00 */	cmpwi r0, 0
/* 8043A34C 0040390C  40 82 00 28 */	bne .L_8043A374
/* 8043A350 00403910  7D 43 07 34 */	extsh r3, r10
/* 8043A354 00403914  7D 20 07 34 */	extsh r0, r9
/* 8043A358 00403918  54 05 40 2E */	slwi r5, r0, 8
/* 8043A35C 0040391C  7C 64 1A 14 */	add r3, r4, r3
/* 8043A360 00403920  38 80 00 00 */	li r4, 0
/* 8043A364 00403924  38 09 00 01 */	addi r0, r9, 1
/* 8043A368 00403928  7C 85 19 AE */	stbx r4, r5, r3
/* 8043A36C 0040392C  7C 03 07 34 */	extsh r3, r0
/* 8043A370 00403930  4E 80 00 20 */	blr
.L_8043A374:
/* 8043A374 00403934  7D 43 07 34 */	extsh r3, r10
/* 8043A378 00403938  7C 08 22 14 */	add r0, r8, r4
/* 8043A37C 0040393C  7C C3 01 AE */	stbx r6, r3, r0
/* 8043A380 00403940  38 A5 00 01 */	addi r5, r5, 1
/* 8043A384 00403944  39 4A 00 01 */	addi r10, r10, 1
/* 8043A388 00403948  4B FF FF 80 */	b .L_8043A308
/* 8043A38C 0040394C  4E 80 00 20 */	blr 
.endfn func_8043A2F8

.fn func_8043A390, global
/* 8043A390 00403950  94 21 F7 D0 */	stwu r1, -0x830(r1)
/* 8043A394 00403954  7C 08 02 A6 */	mflr r0
/* 8043A398 00403958  90 01 08 34 */	stw r0, 0x834(r1)
/* 8043A39C 0040395C  BE E1 08 0C */	stmw r23, 0x80c(r1)
/* 8043A3A0 00403960  7C 7B 1B 78 */	mr r27, r3
/* 8043A3A4 00403964  7C BC 2B 78 */	mr r28, r5
/* 8043A3A8 00403968  7C 85 23 78 */	mr r5, r4
/* 8043A3AC 0040396C  38 81 00 08 */	addi r4, r1, 8
/* 8043A3B0 00403970  80 6D BD 10 */	lwz r3, lbl_80667E90@sda21(r13)
/* 8043A3B4 00403974  4B FF FF 45 */	bl func_8043A2F8
/* 8043A3B8 00403978  7C 7A 07 34 */	extsh r26, r3
/* 8043A3BC 0040397C  3B E0 00 00 */	li r31, 0
/* 8043A3C0 00403980  3B 20 00 00 */	li r25, 0
/* 8043A3C4 00403984  48 00 01 94 */	b .L_8043A558
.L_8043A3C8:
/* 8043A3C8 00403988  3B C1 00 08 */	addi r30, r1, 8
/* 8043A3CC 0040398C  3B A0 00 00 */	li r29, 0
/* 8043A3D0 00403990  7F DE CA 14 */	add r30, r30, r25
/* 8043A3D4 00403994  3B 00 00 00 */	li r24, 0
/* 8043A3D8 00403998  48 00 00 AC */	b .L_8043A484
.L_8043A3DC:
/* 8043A3DC 0040399C  80 6D BD 10 */	lwz r3, lbl_80667E90@sda21(r13)
/* 8043A3E0 004039A0  7F C5 F3 78 */	mr r5, r30
/* 8043A3E4 004039A4  7C 83 C2 14 */	add r4, r3, r24
/* 8043A3E8 004039A8  38 63 05 CC */	addi r3, r3, 0x5cc
/* 8043A3EC 004039AC  80 84 03 C8 */	lwz r4, 0x3c8(r4)
/* 8043A3F0 004039B0  80 84 00 00 */	lwz r4, 0(r4)
/* 8043A3F4 004039B4  48 00 07 E1 */	bl func_8043ABD4
/* 8043A3F8 004039B8  2C 03 00 00 */	cmpwi r3, 0
/* 8043A3FC 004039BC  41 82 00 80 */	beq .L_8043A47C
/* 8043A400 004039C0  2C 1B 00 00 */	cmpwi r27, 0
/* 8043A404 004039C4  38 60 00 00 */	li r3, 0
/* 8043A408 004039C8  41 82 00 34 */	beq .L_8043A43C
/* 8043A40C 004039CC  7F A0 07 34 */	extsh r0, r29
/* 8043A410 004039D0  80 8D BD 10 */	lwz r4, lbl_80667E90@sda21(r13)
/* 8043A414 004039D4  54 00 10 3A */	slwi r0, r0, 2
/* 8043A418 004039D8  81 9B 00 00 */	lwz r12, 0(r27)
/* 8043A41C 004039DC  7C A4 02 14 */	add r5, r4, r0
/* 8043A420 004039E0  7F 63 DB 78 */	mr r3, r27
/* 8043A424 004039E4  80 A5 03 C8 */	lwz r5, 0x3c8(r5)
/* 8043A428 004039E8  38 84 05 CC */	addi r4, r4, 0x5cc
/* 8043A42C 004039EC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8043A430 004039F0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8043A434 004039F4  7D 89 03 A6 */	mtctr r12
/* 8043A438 004039F8  4E 80 04 21 */	bctrl 
.L_8043A43C:
/* 8043A43C 004039FC  80 8D BD 10 */	lwz r4, lbl_80667E90@sda21(r13)
/* 8043A440 00403A00  7F A0 07 34 */	extsh r0, r29
/* 8043A444 00403A04  54 00 10 3A */	slwi r0, r0, 2
/* 8043A448 00403A08  38 A4 03 C8 */	addi r5, r4, 0x3c8
/* 8043A44C 00403A0C  7C A5 00 2E */	lwzx r5, r5, r0
/* 8043A450 00403A10  80 05 00 04 */	lwz r0, 4(r5)
/* 8043A454 00403A14  2C 00 00 00 */	cmpwi r0, 0
/* 8043A458 00403A18  41 82 01 10 */	beq .L_8043A568
/* 8043A45C 00403A1C  7C 03 03 78 */	mr r3, r0
/* 8043A460 00403A20  38 84 05 CC */	addi r4, r4, 0x5cc
/* 8043A464 00403A24  81 83 00 00 */	lwz r12, 0(r3)
/* 8043A468 00403A28  80 A5 00 00 */	lwz r5, 0(r5)
/* 8043A46C 00403A2C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8043A470 00403A30  7D 89 03 A6 */	mtctr r12
/* 8043A474 00403A34  4E 80 04 21 */	bctrl 
/* 8043A478 00403A38  48 00 00 F0 */	b .L_8043A568
.L_8043A47C:
/* 8043A47C 00403A3C  3B 18 00 04 */	addi r24, r24, 4
/* 8043A480 00403A40  3B BD 00 01 */	addi r29, r29, 1
.L_8043A484:
/* 8043A484 00403A44  80 8D BD 10 */	lwz r4, lbl_80667E90@sda21(r13)
/* 8043A488 00403A48  7F A3 07 34 */	extsh r3, r29
/* 8043A48C 00403A4C  A8 04 05 C8 */	lha r0, 0x5c8(r4)
/* 8043A490 00403A50  7C 03 00 00 */	cmpw r3, r0
/* 8043A494 00403A54  41 80 FF 48 */	blt .L_8043A3DC
/* 8043A498 00403A58  2C 1C 00 00 */	cmpwi r28, 0
/* 8043A49C 00403A5C  41 82 00 B4 */	beq .L_8043A550
/* 8043A4A0 00403A60  3B 00 00 00 */	li r24, 0
/* 8043A4A4 00403A64  3B A0 00 00 */	li r29, 0
/* 8043A4A8 00403A68  48 00 00 94 */	b .L_8043A53C
.L_8043A4AC:
/* 8043A4AC 00403A6C  80 6D BD 10 */	lwz r3, lbl_80667E90@sda21(r13)
/* 8043A4B0 00403A70  7F C5 F3 78 */	mr r5, r30
/* 8043A4B4 00403A74  7C 83 EA 14 */	add r4, r3, r29
/* 8043A4B8 00403A78  38 63 05 CC */	addi r3, r3, 0x5cc
/* 8043A4BC 00403A7C  82 E4 01 C4 */	lwz r23, 0x1c4(r4)
/* 8043A4C0 00403A80  80 97 00 00 */	lwz r4, 0(r23)
/* 8043A4C4 00403A84  48 00 07 11 */	bl func_8043ABD4
/* 8043A4C8 00403A88  2C 03 00 00 */	cmpwi r3, 0
/* 8043A4CC 00403A8C  41 82 00 68 */	beq .L_8043A534
/* 8043A4D0 00403A90  2C 1B 00 00 */	cmpwi r27, 0
/* 8043A4D4 00403A94  38 60 00 00 */	li r3, 0
/* 8043A4D8 00403A98  41 82 00 24 */	beq .L_8043A4FC
/* 8043A4DC 00403A9C  81 9B 00 00 */	lwz r12, 0(r27)
/* 8043A4E0 00403AA0  7F 63 DB 78 */	mr r3, r27
/* 8043A4E4 00403AA4  80 8D BD 10 */	lwz r4, lbl_80667E90@sda21(r13)
/* 8043A4E8 00403AA8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8043A4EC 00403AAC  38 84 05 CC */	addi r4, r4, 0x5cc
/* 8043A4F0 00403AB0  80 B7 00 00 */	lwz r5, 0(r23)
/* 8043A4F4 00403AB4  7D 89 03 A6 */	mtctr r12
/* 8043A4F8 00403AB8  4E 80 04 21 */	bctrl 
.L_8043A4FC:
/* 8043A4FC 00403ABC  80 17 00 04 */	lwz r0, 4(r23)
/* 8043A500 00403AC0  2C 00 00 00 */	cmpwi r0, 0
/* 8043A504 00403AC4  41 82 00 24 */	beq .L_8043A528
/* 8043A508 00403AC8  7C 03 03 78 */	mr r3, r0
/* 8043A50C 00403ACC  80 8D BD 10 */	lwz r4, lbl_80667E90@sda21(r13)
/* 8043A510 00403AD0  81 83 00 00 */	lwz r12, 0(r3)
/* 8043A514 00403AD4  38 84 05 CC */	addi r4, r4, 0x5cc
/* 8043A518 00403AD8  80 B7 00 00 */	lwz r5, 0(r23)
/* 8043A51C 00403ADC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8043A520 00403AE0  7D 89 03 A6 */	mtctr r12
/* 8043A524 00403AE4  4E 80 04 21 */	bctrl 
.L_8043A528:
/* 8043A528 00403AE8  80 8D BD 10 */	lwz r4, lbl_80667E90@sda21(r13)
/* 8043A52C 00403AEC  92 E4 17 38 */	stw r23, 0x1738(r4)
/* 8043A530 00403AF0  48 00 00 38 */	b .L_8043A568
.L_8043A534:
/* 8043A534 00403AF4  3B BD 00 04 */	addi r29, r29, 4
/* 8043A538 00403AF8  3B 18 00 01 */	addi r24, r24, 1
.L_8043A53C:
/* 8043A53C 00403AFC  80 8D BD 10 */	lwz r4, lbl_80667E90@sda21(r13)
/* 8043A540 00403B00  7F 03 07 34 */	extsh r3, r24
/* 8043A544 00403B04  A8 04 03 C4 */	lha r0, 0x3c4(r4)
/* 8043A548 00403B08  7C 03 00 00 */	cmpw r3, r0
/* 8043A54C 00403B0C  41 80 FF 60 */	blt .L_8043A4AC
.L_8043A550:
/* 8043A550 00403B10  3B 39 01 00 */	addi r25, r25, 0x100
/* 8043A554 00403B14  3B FF 00 01 */	addi r31, r31, 1
.L_8043A558:
/* 8043A558 00403B18  7F E0 07 34 */	extsh r0, r31
/* 8043A55C 00403B1C  7C 00 D0 00 */	cmpw r0, r26
/* 8043A560 00403B20  41 80 FE 68 */	blt .L_8043A3C8
/* 8043A564 00403B24  38 60 00 01 */	li r3, 1
.L_8043A568:
/* 8043A568 00403B28  BA E1 08 0C */	lmw r23, 0x80c(r1)
/* 8043A56C 00403B2C  80 01 08 34 */	lwz r0, 0x834(r1)
/* 8043A570 00403B30  7C 08 03 A6 */	mtlr r0
/* 8043A574 00403B34  38 21 08 30 */	addi r1, r1, 0x830
/* 8043A578 00403B38  4E 80 00 20 */	blr
.endfn func_8043A390

.fn __dt__8043A57C, global
/* 8043A57C 00403B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043A580 00403B40  7C 08 02 A6 */	mflr r0
/* 8043A584 00403B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043A588 00403B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043A58C 00403B4C  3B E0 00 00 */	li r31, 0
/* 8043A590 00403B50  93 C1 00 08 */	stw r30, 8(r1)
/* 8043A594 00403B54  80 ED BD 10 */	lwz r7, lbl_80667E90@sda21(r13)
/* 8043A598 00403B58  A8 C7 03 C4 */	lha r6, 0x3c4(r7)
/* 8043A59C 00403B5C  7C E5 3B 78 */	mr r5, r7
/* 8043A5A0 00403B60  48 00 00 98 */	b .L_8043A638
.L_8043A5A4:
/* 8043A5A4 00403B64  80 85 01 C4 */	lwz r4, 0x1c4(r5)
/* 8043A5A8 00403B68  80 04 00 00 */	lwz r0, 0(r4)
/* 8043A5AC 00403B6C  7C 00 18 40 */	cmplw r0, r3
/* 8043A5B0 00403B70  40 82 00 80 */	bne .L_8043A630
/* 8043A5B4 00403B74  7F E0 07 34 */	extsh r0, r31
/* 8043A5B8 00403B78  54 1E 10 3A */	slwi r30, r0, 2
/* 8043A5BC 00403B7C  7C 67 F2 14 */	add r3, r7, r30
/* 8043A5C0 00403B80  80 63 01 C4 */	lwz r3, 0x1c4(r3)
/* 8043A5C4 00403B84  2C 03 00 00 */	cmpwi r3, 0
/* 8043A5C8 00403B88  41 82 00 18 */	beq .L_8043A5E0
/* 8043A5CC 00403B8C  4B FF A6 61 */	bl __dl__FPv
/* 8043A5D0 00403B90  80 0D BD 10 */	lwz r0, lbl_80667E90@sda21(r13)
/* 8043A5D4 00403B94  38 80 00 00 */	li r4, 0
/* 8043A5D8 00403B98  7C 60 F2 14 */	add r3, r0, r30
/* 8043A5DC 00403B9C  90 83 01 C4 */	stw r4, 0x1c4(r3)
.L_8043A5E0:
/* 8043A5E0 00403BA0  7F E0 07 34 */	extsh r0, r31
/* 8043A5E4 00403BA4  54 06 10 3A */	slwi r6, r0, 2
/* 8043A5E8 00403BA8  7C C5 33 78 */	mr r5, r6
/* 8043A5EC 00403BAC  48 00 00 24 */	b .L_8043A610
.L_8043A5F0:
/* 8043A5F0 00403BB0  80 0D BD 10 */	lwz r0, lbl_80667E90@sda21(r13)
/* 8043A5F4 00403BB4  3B FF 00 01 */	addi r31, r31, 1
/* 8043A5F8 00403BB8  7C 80 32 14 */	add r4, r0, r6
/* 8043A5FC 00403BBC  7C 60 2A 14 */	add r3, r0, r5
/* 8043A600 00403BC0  80 04 01 C8 */	lwz r0, 0x1c8(r4)
/* 8043A604 00403BC4  38 A5 00 04 */	addi r5, r5, 4
/* 8043A608 00403BC8  90 03 01 C4 */	stw r0, 0x1c4(r3)
/* 8043A60C 00403BCC  38 C6 00 04 */	addi r6, r6, 4
.L_8043A610:
/* 8043A610 00403BD0  80 ED BD 10 */	lwz r7, lbl_80667E90@sda21(r13)
/* 8043A614 00403BD4  7F E4 07 34 */	extsh r4, r31
/* 8043A618 00403BD8  A8 67 03 C4 */	lha r3, 0x3c4(r7)
/* 8043A61C 00403BDC  38 03 FF FF */	addi r0, r3, -1
/* 8043A620 00403BE0  7C 04 00 00 */	cmpw r4, r0
/* 8043A624 00403BE4  41 80 FF CC */	blt .L_8043A5F0
/* 8043A628 00403BE8  B0 07 03 C4 */	sth r0, 0x3c4(r7)
/* 8043A62C 00403BEC  48 00 00 C8 */	b .L_8043A6F4
.L_8043A630:
/* 8043A630 00403BF0  38 A5 00 04 */	addi r5, r5, 4
/* 8043A634 00403BF4  3B FF 00 01 */	addi r31, r31, 1
.L_8043A638:
/* 8043A638 00403BF8  7F E0 07 34 */	extsh r0, r31
/* 8043A63C 00403BFC  7C 00 30 00 */	cmpw r0, r6
/* 8043A640 00403C00  41 80 FF 64 */	blt .L_8043A5A4
/* 8043A644 00403C04  A8 C7 05 C8 */	lha r6, 0x5c8(r7)
/* 8043A648 00403C08  7C E5 3B 78 */	mr r5, r7
/* 8043A64C 00403C0C  3B E0 00 00 */	li r31, 0
/* 8043A650 00403C10  48 00 00 98 */	b .L_8043A6E8
.L_8043A654:
/* 8043A654 00403C14  80 85 03 C8 */	lwz r4, 0x3c8(r5)
/* 8043A658 00403C18  80 04 00 00 */	lwz r0, 0(r4)
/* 8043A65C 00403C1C  7C 00 18 40 */	cmplw r0, r3
/* 8043A660 00403C20  40 82 00 80 */	bne .L_8043A6E0
/* 8043A664 00403C24  7F E0 07 34 */	extsh r0, r31
/* 8043A668 00403C28  54 1E 10 3A */	slwi r30, r0, 2
/* 8043A66C 00403C2C  7C 67 F2 14 */	add r3, r7, r30
/* 8043A670 00403C30  80 63 03 C8 */	lwz r3, 0x3c8(r3)
/* 8043A674 00403C34  2C 03 00 00 */	cmpwi r3, 0
/* 8043A678 00403C38  41 82 00 18 */	beq .L_8043A690
/* 8043A67C 00403C3C  4B FF A5 B1 */	bl __dl__FPv
/* 8043A680 00403C40  80 0D BD 10 */	lwz r0, lbl_80667E90@sda21(r13)
/* 8043A684 00403C44  38 80 00 00 */	li r4, 0
/* 8043A688 00403C48  7C 60 F2 14 */	add r3, r0, r30
/* 8043A68C 00403C4C  90 83 03 C8 */	stw r4, 0x3c8(r3)
.L_8043A690:
/* 8043A690 00403C50  7F E0 07 34 */	extsh r0, r31
/* 8043A694 00403C54  54 06 10 3A */	slwi r6, r0, 2
/* 8043A698 00403C58  7C C5 33 78 */	mr r5, r6
/* 8043A69C 00403C5C  48 00 00 24 */	b .L_8043A6C0
.L_8043A6A0:
/* 8043A6A0 00403C60  80 0D BD 10 */	lwz r0, lbl_80667E90@sda21(r13)
/* 8043A6A4 00403C64  3B FF 00 01 */	addi r31, r31, 1
/* 8043A6A8 00403C68  7C 80 32 14 */	add r4, r0, r6
/* 8043A6AC 00403C6C  7C 60 2A 14 */	add r3, r0, r5
/* 8043A6B0 00403C70  80 04 03 CC */	lwz r0, 0x3cc(r4)
/* 8043A6B4 00403C74  38 A5 00 04 */	addi r5, r5, 4
/* 8043A6B8 00403C78  90 03 03 C8 */	stw r0, 0x3c8(r3)
/* 8043A6BC 00403C7C  38 C6 00 04 */	addi r6, r6, 4
.L_8043A6C0:
/* 8043A6C0 00403C80  80 ED BD 10 */	lwz r7, lbl_80667E90@sda21(r13)
/* 8043A6C4 00403C84  7F E4 07 34 */	extsh r4, r31
/* 8043A6C8 00403C88  A8 67 05 C8 */	lha r3, 0x5c8(r7)
/* 8043A6CC 00403C8C  38 03 FF FF */	addi r0, r3, -1
/* 8043A6D0 00403C90  7C 04 00 00 */	cmpw r4, r0
/* 8043A6D4 00403C94  41 80 FF CC */	blt .L_8043A6A0
/* 8043A6D8 00403C98  B0 07 05 C8 */	sth r0, 0x5c8(r7)
/* 8043A6DC 00403C9C  48 00 00 18 */	b .L_8043A6F4
.L_8043A6E0:
/* 8043A6E0 00403CA0  38 A5 00 04 */	addi r5, r5, 4
/* 8043A6E4 00403CA4  3B FF 00 01 */	addi r31, r31, 1
.L_8043A6E8:
/* 8043A6E8 00403CA8  7F E0 07 34 */	extsh r0, r31
/* 8043A6EC 00403CAC  7C 00 30 00 */	cmpw r0, r6
/* 8043A6F0 00403CB0  41 80 FF 64 */	blt .L_8043A654
.L_8043A6F4:
/* 8043A6F4 00403CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043A6F8 00403CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043A6FC 00403CBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043A700 00403CC0  7C 08 03 A6 */	mtlr r0
/* 8043A704 00403CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8043A708 00403CC8  4E 80 00 20 */	blr
.endfn __dt__8043A57C

.fn func_8043A70C, global
/* 8043A70C 00403CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043A710 00403CD0  7C 08 02 A6 */	mflr r0
/* 8043A714 00403CD4  38 E0 00 00 */	li r7, 0
/* 8043A718 00403CD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043A71C 00403CDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043A720 00403CE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8043A724 00403CE4  7C 9E 23 78 */	mr r30, r4
/* 8043A728 00403CE8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8043A72C 00403CEC  7C 7D 1B 78 */	mr r29, r3
/* 8043A730 00403CF0  80 CD BD 10 */	lwz r6, lbl_80667E90@sda21(r13)
/* 8043A734 00403CF4  A8 A6 03 C4 */	lha r5, 0x3c4(r6)
/* 8043A738 00403CF8  48 00 00 1C */	b .L_8043A754
.L_8043A73C:
/* 8043A73C 00403CFC  80 86 01 C4 */	lwz r4, 0x1c4(r6)
/* 8043A740 00403D00  80 04 00 00 */	lwz r0, 0(r4)
/* 8043A744 00403D04  7C 00 18 40 */	cmplw r0, r3
/* 8043A748 00403D08  41 82 00 5C */	beq .L_8043A7A4
/* 8043A74C 00403D0C  38 C6 00 04 */	addi r6, r6, 4
/* 8043A750 00403D10  38 E7 00 01 */	addi r7, r7, 1
.L_8043A754:
/* 8043A754 00403D14  7C E0 07 34 */	extsh r0, r7
/* 8043A758 00403D18  7C 00 28 00 */	cmpw r0, r5
/* 8043A75C 00403D1C  41 80 FF E0 */	blt .L_8043A73C
/* 8043A760 00403D20  48 00 9D B5 */	bl func_80444514
/* 8043A764 00403D24  7C 64 1B 78 */	mr r4, r3
/* 8043A768 00403D28  38 60 00 08 */	li r3, 8
/* 8043A76C 00403D2C  4B FF A2 F1 */	bl heap_malloc__3mtlFUli
/* 8043A770 00403D30  7C 7F 1B 78 */	mr r31, r3
/* 8043A774 00403D34  38 80 00 00 */	li r4, 0
/* 8043A778 00403D38  38 A0 00 08 */	li r5, 8
/* 8043A77C 00403D3C  4B BC 9B D5 */	bl memset
/* 8043A780 00403D40  93 BF 00 00 */	stw r29, 0(r31)
/* 8043A784 00403D44  93 DF 00 04 */	stw r30, 4(r31)
/* 8043A788 00403D48  80 AD BD 10 */	lwz r5, lbl_80667E90@sda21(r13)
/* 8043A78C 00403D4C  A8 65 03 C4 */	lha r3, 0x3c4(r5)
/* 8043A790 00403D50  54 60 10 3A */	slwi r0, r3, 2
/* 8043A794 00403D54  38 83 00 01 */	addi r4, r3, 1
/* 8043A798 00403D58  7C 65 02 14 */	add r3, r5, r0
/* 8043A79C 00403D5C  93 E3 01 C4 */	stw r31, 0x1c4(r3)
/* 8043A7A0 00403D60  B0 85 03 C4 */	sth r4, 0x3c4(r5)
.L_8043A7A4:
/* 8043A7A4 00403D64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043A7A8 00403D68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043A7AC 00403D6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8043A7B0 00403D70  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8043A7B4 00403D74  7C 08 03 A6 */	mtlr r0
/* 8043A7B8 00403D78  38 21 00 20 */	addi r1, r1, 0x20
/* 8043A7BC 00403D7C  4E 80 00 20 */	blr 
.endfn func_8043A70C

.fn CScriptCode_WorkThreadEvent5, global
/* 8043A7C0 00403D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043A7C4 00403D84  7C 08 02 A6 */	mflr r0
/* 8043A7C8 00403D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043A7CC 00403D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043A7D0 00403D90  7C 7F 1B 78 */	mr r31, r3
/* 8043A7D4 00403D94  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8043A7D8 00403D98  80 04 00 00 */	lwz r0, 0(r4)
/* 8043A7DC 00403D9C  7C 00 20 40 */	cmplw r0, r4
/* 8043A7E0 00403DA0  40 82 00 28 */	bne .L_8043A808
/* 8043A7E4 00403DA4  4B FF EF C9 */	bl func_804397AC
/* 8043A7E8 00403DA8  2C 03 00 00 */	cmpwi r3, 0
/* 8043A7EC 00403DAC  40 82 00 1C */	bne .L_8043A808
/* 8043A7F0 00403DB0  48 00 79 F5 */	bl func_804421E4
/* 8043A7F4 00403DB4  2C 03 00 00 */	cmpwi r3, 0
/* 8043A7F8 00403DB8  40 82 00 10 */	bne .L_8043A808
/* 8043A7FC 00403DBC  7F E3 FB 78 */	mr r3, r31
/* 8043A800 00403DC0  4B FF E2 25 */	bl WorkThreadEvent5__11CWorkThreadFv
/* 8043A804 00403DC4  48 00 00 08 */	b .L_8043A80C
.L_8043A808:
/* 8043A808 00403DC8  38 60 00 00 */	li r3, 0
.L_8043A80C:
/* 8043A80C 00403DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043A810 00403DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043A814 00403DD4  7C 08 03 A6 */	mtlr r0
/* 8043A818 00403DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8043A81C 00403DDC  4E 80 00 20 */	blr 
.endfn CScriptCode_WorkThreadEvent5

.fn __ct__8043A820, global
/* 8043A820 00403DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043A824 00403DE4  7C 08 02 A6 */	mflr r0
/* 8043A828 00403DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043A82C 00403DEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043A830 00403DF0  3F E0 80 52 */	lis r31, lbl_80525E64@ha
/* 8043A834 00403DF4  3B FF 5E 64 */	addi r31, r31, lbl_80525E64@l
/* 8043A838 00403DF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8043A83C 00403DFC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8043A840 00403E00  7C 7D 1B 78 */	mr r29, r3
/* 8043A844 00403E04  4B FF CD 71 */	bl getHeapIndex__3mtlFv
/* 8043A848 00403E08  7C 64 1B 78 */	mr r4, r3
/* 8043A84C 00403E0C  38 60 17 40 */	li r3, 0x1740
/* 8043A850 00403E10  4B FF A2 0D */	bl heap_malloc__3mtlFUli
/* 8043A854 00403E14  2C 03 00 00 */	cmpwi r3, 0
/* 8043A858 00403E18  7C 7E 1B 78 */	mr r30, r3
/* 8043A85C 00403E1C  41 82 00 4C */	beq .L_8043A8A8
/* 8043A860 00403E20  7F E4 FB 78 */	mr r4, r31
/* 8043A864 00403E24  7F A5 EB 78 */	mr r5, r29
/* 8043A868 00403E28  38 C0 00 01 */	li r6, 1
/* 8043A86C 00403E2C  4B FF CD 51 */	bl __ct__CWorkThread
/* 8043A870 00403E30  3C 60 80 57 */	lis r3, __vt__11CScriptCode@ha
/* 8043A874 00403E34  3B E0 00 00 */	li r31, 0
/* 8043A878 00403E38  38 63 EC 90 */	addi r3, r3, __vt__11CScriptCode@l
/* 8043A87C 00403E3C  90 7E 00 00 */	stw r3, 0(r30)
/* 8043A880 00403E40  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 8043A884 00403E44  B3 FE 03 C4 */	sth r31, 0x3c4(r30)
/* 8043A888 00403E48  B3 FE 05 C8 */	sth r31, 0x5c8(r30)
/* 8043A88C 00403E4C  48 00 00 F9 */	bl __ct__CToken
/* 8043A890 00403E50  93 FE 17 38 */	stw r31, 0x1738(r30)
/* 8043A894 00403E54  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 8043A898 00403E58  93 CD BD 10 */	stw r30, lbl_80667E90@sda21(r13)
/* 8043A89C 00403E5C  48 00 01 81 */	bl func_8043AA1C
/* 8043A8A0 00403E60  38 00 00 3B */	li r0, 0x3b
/* 8043A8A4 00403E64  90 1E 00 50 */	stw r0, 0x50(r30)
.L_8043A8A8:
/* 8043A8A8 00403E68  7F C3 F3 78 */	mr r3, r30
/* 8043A8AC 00403E6C  7F A4 EB 78 */	mr r4, r29
/* 8043A8B0 00403E70  38 A0 00 00 */	li r5, 0
/* 8043A8B4 00403E74  4B FF E3 25 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 8043A8B8 00403E78  7F C3 F3 78 */	mr r3, r30
/* 8043A8BC 00403E7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043A8C0 00403E80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8043A8C4 00403E84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8043A8C8 00403E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043A8CC 00403E8C  7C 08 03 A6 */	mtlr r0
/* 8043A8D0 00403E90  38 21 00 20 */	addi r1, r1, 0x20
/* 8043A8D4 00403E94  4E 80 00 20 */	blr 
.endfn __ct__8043A820

.fn func_8043A8D8, global
/* 8043A8D8 00403E98  88 03 00 00 */	lbz r0, 0(r3)
/* 8043A8DC 00403E9C  38 C0 00 00 */	li r6, 0
/* 8043A8E0 00403EA0  38 E0 00 02 */	li r7, 2
/* 8043A8E4 00403EA4  39 00 00 01 */	li r8, 1
/* 8043A8E8 00403EA8  2C 00 00 30 */	cmpwi r0, 0x30
/* 8043A8EC 00403EAC  40 82 00 90 */	bne .L_8043A97C
/* 8043A8F0 00403EB0  88 03 00 01 */	lbz r0, 1(r3)
/* 8043A8F4 00403EB4  2C 00 00 78 */	cmpwi r0, 0x78
/* 8043A8F8 00403EB8  40 82 00 84 */	bne .L_8043A97C
/* 8043A8FC 00403EBC  38 83 00 02 */	addi r4, r3, 2
/* 8043A900 00403EC0  48 00 00 0C */	b .L_8043A90C
.L_8043A904:
/* 8043A904 00403EC4  38 E7 00 01 */	addi r7, r7, 1
/* 8043A908 00403EC8  38 84 00 01 */	addi r4, r4, 1
.L_8043A90C:
/* 8043A90C 00403ECC  88 A4 00 00 */	lbz r5, 0(r4)
/* 8043A910 00403ED0  38 05 FF D0 */	addi r0, r5, -48
/* 8043A914 00403ED4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8043A918 00403ED8  28 00 00 09 */	cmplwi r0, 9
/* 8043A91C 00403EDC  40 81 FF E8 */	ble .L_8043A904
/* 8043A920 00403EE0  38 05 FF 9F */	addi r0, r5, -97
/* 8043A924 00403EE4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8043A928 00403EE8  28 00 00 05 */	cmplwi r0, 5
/* 8043A92C 00403EEC  40 81 FF D8 */	ble .L_8043A904
/* 8043A930 00403EF0  38 87 FF FF */	addi r4, r7, -1
/* 8043A934 00403EF4  38 04 FF FF */	addi r0, r4, -1
/* 8043A938 00403EF8  7C 63 22 14 */	add r3, r3, r4
/* 8043A93C 00403EFC  7C 09 03 A6 */	mtctr r0
/* 8043A940 00403F00  2C 04 00 02 */	cmpwi r4, 2
/* 8043A944 00403F04  41 80 00 38 */	blt .L_8043A97C
.L_8043A948:
/* 8043A948 00403F08  88 83 00 00 */	lbz r4, 0(r3)
/* 8043A94C 00403F0C  38 04 FF D0 */	addi r0, r4, -48
/* 8043A950 00403F10  7C 84 07 74 */	extsb r4, r4
/* 8043A954 00403F14  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8043A958 00403F18  28 00 00 09 */	cmplwi r0, 9
/* 8043A95C 00403F1C  38 04 FF A9 */	addi r0, r4, -87
/* 8043A960 00403F20  41 81 00 08 */	bgt .L_8043A968
/* 8043A964 00403F24  38 04 FF D0 */	addi r0, r4, -48
.L_8043A968:
/* 8043A968 00403F28  7C 00 41 D6 */	mullw r0, r0, r8
/* 8043A96C 00403F2C  55 08 20 36 */	slwi r8, r8, 4
/* 8043A970 00403F30  38 63 FF FF */	addi r3, r3, -1
/* 8043A974 00403F34  7C C6 02 14 */	add r6, r6, r0
/* 8043A978 00403F38  42 00 FF D0 */	bdnz .L_8043A948
.L_8043A97C:
/* 8043A97C 00403F3C  7C C3 33 78 */	mr r3, r6
/* 8043A980 00403F40  4E 80 00 20 */	blr 
.endfn func_8043A8D8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CScriptCode_typestr, global
	.asciz "CScriptCode"
.endobj CScriptCode_typestr


.obj lbl_80525E64, global
	.asciz "CScriptCode"
.endobj lbl_80525E64

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__11CScriptCode, global
	.4byte __RTTI__11CScriptCode
	.4byte 0
	.4byte __dt__11CScriptCodeFv
	.4byte WorkEvent1__10IWorkEventFv
	.4byte OnFileEvent__10IWorkEventFP10CEventFile
	.4byte WorkEvent3__10IWorkEventFv
	.4byte WorkEvent4__10IWorkEventFv
	.4byte WorkEvent5__10IWorkEventFPv
	.4byte WorkEvent6__10IWorkEventFv
	.4byte WorkEvent7__10IWorkEventFv
	.4byte WorkEvent8__10IWorkEventFv
	.4byte WorkEvent9__10IWorkEventFv
	.4byte WorkEvent10__10IWorkEventFv
	.4byte WorkEvent11__10IWorkEventFv
	.4byte WorkEvent12__10IWorkEventFv
	.4byte WorkEvent13__10IWorkEventFv
	.4byte WorkEvent14__10IWorkEventFv
	.4byte WorkEvent15__10IWorkEventFv
	.4byte WorkEvent16__10IWorkEventFv
	.4byte WorkEvent17__10IWorkEventFv
	.4byte WorkEvent18__10IWorkEventFv
	.4byte WorkEvent19__10IWorkEventFv
	.4byte WorkEvent20__10IWorkEventFv
	.4byte WorkEvent21__10IWorkEventFv
	.4byte WorkEvent22__10IWorkEventFv
	.4byte WorkEvent23__10IWorkEventFv
	.4byte WorkEvent24__10IWorkEventFv
	.4byte WorkEvent25__10IWorkEventFv
	.4byte WorkEvent26__10IWorkEventFv
	.4byte WorkEvent27__10IWorkEventFv
	.4byte WorkEvent28__10IWorkEventFv
	.4byte WorkEvent29__10IWorkEventFv
	.4byte WorkEvent30__10IWorkEventFv
	.4byte WorkEvent31__10IWorkEventFv
	.4byte wkUpdate__11CWorkThreadFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte WorkThreadEvent4__11CWorkThreadFv
	.4byte CScriptCode_WorkThreadEvent5
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj __vt__11CScriptCode

.obj CScriptCode_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CScriptCode_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__11CScriptCode, global
	.4byte CScriptCode_typestr
	.4byte CScriptCode_hierarchy
.endobj __RTTI__11CScriptCode

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667E90, global
	.skip 0x8
.endobj lbl_80667E90

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C2CC", local
.hidden "@etb_8001C2CC"
	.4byte 0x28080000
	.4byte 0x000000CC
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8780001B
	.4byte 0x000005CC
	.4byte __dt__6CTokenFv
.endobj "@etb_8001C2CC"

.obj "@etb_8001C2E8", local
.hidden "@etb_8001C2E8"
	.4byte 0x38080000
	.4byte 0x00000000
.endobj "@etb_8001C2E8"

.obj "@etb_8001C2F0", local
.hidden "@etb_8001C2F0"
	.4byte 0x48080000
	.4byte 0x00000000
.endobj "@etb_8001C2F0"

.obj "@etb_8001C2F8", local
.hidden "@etb_8001C2F8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C2F8"

.obj "@etb_8001C300", local
.hidden "@etb_8001C300"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C300"

.obj "@etb_8001C308", local
.hidden "@etb_8001C308"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C308"

.obj "@etb_8001C310", local
.hidden "@etb_8001C310"
	.4byte 0x18080000
	.4byte 0x00000070
	.4byte 0x00000024
	.4byte 0x00000080
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x000005CC
	.4byte __dt__6CTokenFv
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__11CWorkThreadFv
.endobj "@etb_8001C310"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033F50", local
.hidden "@eti_80033F50"
	.4byte __dt__11CScriptCodeFv
	.4byte 0x000000F4
	.4byte "@etb_8001C2CC"
.endobj "@eti_80033F50"

.obj "@eti_80033F5C", local
.hidden "@eti_80033F5C"
	.4byte func_8043A1DC
	.4byte 0x0000011C
	.4byte "@etb_8001C2E8"
.endobj "@eti_80033F5C"

.obj "@eti_80033F68", local
.hidden "@eti_80033F68"
	.4byte func_8043A390
	.4byte 0x000001EC
	.4byte "@etb_8001C2F0"
.endobj "@eti_80033F68"

.obj "@eti_80033F74", local
.hidden "@eti_80033F74"
	.4byte __dt__8043A57C
	.4byte 0x00000190
	.4byte "@etb_8001C2F8"
.endobj "@eti_80033F74"

.obj "@eti_80033F80", local
.hidden "@eti_80033F80"
	.4byte func_8043A70C
	.4byte 0x000000B4
	.4byte "@etb_8001C300"
.endobj "@eti_80033F80"

.obj "@eti_80033F8C", local
.hidden "@eti_80033F8C"
	.4byte CScriptCode_WorkThreadEvent5
	.4byte 0x00000060
	.4byte "@etb_8001C308"
.endobj "@eti_80033F8C"

.obj "@eti_80033F98", local
.hidden "@eti_80033F98"
	.4byte __ct__8043A820
	.4byte 0x000000B8
	.4byte "@etb_8001C310"
.endobj "@eti_80033F98"
