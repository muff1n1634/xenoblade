.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.global func_804F5158
func_804F5158:
/* 804F5158 004BE718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F515C 004BE71C  7C 08 02 A6 */	mflr r0
/* 804F5160 004BE720  3C C0 80 57 */	lis r6, lbl_80573BC0@ha
/* 804F5164 004BE724  38 E3 01 20 */	addi r7, r3, 0x120
/* 804F5168 004BE728  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F516C 004BE72C  38 83 02 FC */	addi r4, r3, 0x2fc
/* 804F5170 004BE730  7C 07 20 40 */	cmplw r7, r4
/* 804F5174 004BE734  38 A0 00 00 */	li r5, 0
/* 804F5178 004BE738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F517C 004BE73C  38 C6 3B C0 */	addi r6, r6, lbl_80573BC0@l
/* 804F5180 004BE740  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5184 004BE744  7C 7E 1B 78 */	mr r30, r3
/* 804F5188 004BE748  90 C3 00 00 */	stw r6, 0(r3)
/* 804F518C 004BE74C  98 A3 00 10 */	stb r5, 0x10(r3)
/* 804F5190 004BE750  90 A3 00 50 */	stw r5, 0x50(r3)
/* 804F5194 004BE754  98 A3 00 54 */	stb r5, 0x54(r3)
/* 804F5198 004BE758  90 A3 00 94 */	stw r5, 0x94(r3)
/* 804F519C 004BE75C  98 A3 00 98 */	stb r5, 0x98(r3)
/* 804F51A0 004BE760  90 A3 00 D8 */	stw r5, 0xd8(r3)
/* 804F51A4 004BE764  98 A3 00 DC */	stb r5, 0xdc(r3)
/* 804F51A8 004BE768  90 A3 01 1C */	stw r5, 0x11c(r3)
/* 804F51AC 004BE76C  40 80 00 2C */	bge lbl_804F51D8
/* 804F51B0 004BE770  38 84 00 43 */	addi r4, r4, 0x43
/* 804F51B4 004BE774  38 00 00 44 */	li r0, 0x44
/* 804F51B8 004BE778  7C 87 20 50 */	subf r4, r7, r4
/* 804F51BC 004BE77C  7C 84 03 96 */	divwu r4, r4, r0
/* 804F51C0 004BE780  7C 89 03 A6 */	mtctr r4
/* 804F51C4 004BE784  40 80 00 14 */	bge lbl_804F51D8
lbl_804F51C8:
/* 804F51C8 004BE788  98 A7 00 00 */	stb r5, 0(r7)
/* 804F51CC 004BE78C  90 A7 00 40 */	stw r5, 0x40(r7)
/* 804F51D0 004BE790  38 E7 00 44 */	addi r7, r7, 0x44
/* 804F51D4 004BE794  42 00 FF F4 */	bdnz lbl_804F51C8
lbl_804F51D8:
/* 804F51D8 004BE798  3B E0 00 00 */	li r31, 0
/* 804F51DC 004BE79C  93 E3 00 04 */	stw r31, 4(r3)
/* 804F51E0 004BE7A0  38 80 00 00 */	li r4, 0
/* 804F51E4 004BE7A4  38 A0 00 20 */	li r5, 0x20
/* 804F51E8 004BE7A8  93 E3 00 08 */	stw r31, 8(r3)
/* 804F51EC 004BE7AC  93 E3 00 0C */	stw r31, 0xc(r3)
/* 804F51F0 004BE7B0  38 63 02 FC */	addi r3, r3, 0x2fc
/* 804F51F4 004BE7B4  4B B0 F1 5D */	bl memset
/* 804F51F8 004BE7B8  93 FE 03 1C */	stw r31, 0x31c(r30)
/* 804F51FC 004BE7BC  7F C3 F3 78 */	mr r3, r30
/* 804F5200 004BE7C0  93 FE 03 20 */	stw r31, 0x320(r30)
/* 804F5204 004BE7C4  9B FE 03 24 */	stb r31, 0x324(r30)
/* 804F5208 004BE7C8  9B FE 03 25 */	stb r31, 0x325(r30)
/* 804F520C 004BE7CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5210 004BE7D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F5214 004BE7D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5218 004BE7D8  7C 08 03 A6 */	mtlr r0
/* 804F521C 004BE7DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5220 004BE7E0  4E 80 00 20 */	blr 

.global func_804F5224
func_804F5224:
/* 804F5224 004BE7E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F5228 004BE7E8  7C 08 02 A6 */	mflr r0
/* 804F522C 004BE7EC  2C 03 00 00 */	cmpwi r3, 0
/* 804F5230 004BE7F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F5234 004BE7F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F5238 004BE7F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F523C 004BE7FC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804F5240 004BE800  7C 9D 23 78 */	mr r29, r4
/* 804F5244 004BE804  93 81 00 10 */	stw r28, 0x10(r1)
/* 804F5248 004BE808  7C 7C 1B 78 */	mr r28, r3
/* 804F524C 004BE80C  41 82 00 88 */	beq lbl_804F52D4
/* 804F5250 004BE810  88 03 03 24 */	lbz r0, 0x324(r3)
/* 804F5254 004BE814  3C 80 80 57 */	lis r4, lbl_80573BC0@ha
/* 804F5258 004BE818  38 84 3B C0 */	addi r4, r4, lbl_80573BC0@l
/* 804F525C 004BE81C  90 83 00 00 */	stw r4, 0(r3)
/* 804F5260 004BE820  2C 00 00 00 */	cmpwi r0, 0
/* 804F5264 004BE824  41 82 00 48 */	beq lbl_804F52AC
/* 804F5268 004BE828  38 63 00 98 */	addi r3, r3, 0x98
/* 804F526C 004BE82C  4B F5 9E 79 */	bl func_8044F0E4
/* 804F5270 004BE830  3B E0 00 00 */	li r31, 0
/* 804F5274 004BE834  3B C0 00 00 */	li r30, 0
/* 804F5278 004BE838  48 00 00 20 */	b lbl_804F5298
lbl_804F527C:
/* 804F527C 004BE83C  7C 7C F2 14 */	add r3, r28, r30
/* 804F5280 004BE840  8C 03 00 DC */	lbzu r0, 0xdc(r3)
/* 804F5284 004BE844  7C 00 07 75 */	extsb. r0, r0
/* 804F5288 004BE848  41 82 00 08 */	beq lbl_804F5290
/* 804F528C 004BE84C  4B F5 9E 59 */	bl func_8044F0E4
lbl_804F5290:
/* 804F5290 004BE850  3B DE 00 44 */	addi r30, r30, 0x44
/* 804F5294 004BE854  3B FF 00 01 */	addi r31, r31, 1
lbl_804F5298:
/* 804F5298 004BE858  80 1C 03 1C */	lwz r0, 0x31c(r28)
/* 804F529C 004BE85C  7C 1F 00 00 */	cmpw r31, r0
/* 804F52A0 004BE860  41 80 FF DC */	blt lbl_804F527C
/* 804F52A4 004BE864  38 00 00 00 */	li r0, 0
/* 804F52A8 004BE868  98 1C 03 24 */	stb r0, 0x324(r28)
lbl_804F52AC:
/* 804F52AC 004BE86C  80 7C 00 04 */	lwz r3, 4(r28)
/* 804F52B0 004BE870  2C 03 00 00 */	cmpwi r3, 0
/* 804F52B4 004BE874  41 82 00 10 */	beq lbl_804F52C4
/* 804F52B8 004BE878  4B F3 F9 75 */	bl func_80434C2C
/* 804F52BC 004BE87C  38 00 00 00 */	li r0, 0
/* 804F52C0 004BE880  90 1C 00 04 */	stw r0, 4(r28)
lbl_804F52C4:
/* 804F52C4 004BE884  2C 1D 00 00 */	cmpwi r29, 0
/* 804F52C8 004BE888  40 81 00 0C */	ble lbl_804F52D4
/* 804F52CC 004BE88C  7F 83 E3 78 */	mr r3, r28
/* 804F52D0 004BE890  4B F3 F9 5D */	bl func_80434C2C
lbl_804F52D4:
/* 804F52D4 004BE894  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F52D8 004BE898  7F 83 E3 78 */	mr r3, r28
/* 804F52DC 004BE89C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F52E0 004BE8A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804F52E4 004BE8A4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 804F52E8 004BE8A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F52EC 004BE8AC  7C 08 03 A6 */	mtlr r0
/* 804F52F0 004BE8B0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F52F4 004BE8B4  4E 80 00 20 */	blr 

.global func_804F52F8
func_804F52F8:
/* 804F52F8 004BE8B8  4C C6 31 82 */	crclr 6
/* 804F52FC 004BE8BC  38 63 00 10 */	addi r3, r3, 0x10
/* 804F5300 004BE8C0  4B B5 15 18 */	b Print_80046818

.global func_804F5304
func_804F5304:
/* 804F5304 004BE8C4  4C C6 31 82 */	crclr 6
/* 804F5308 004BE8C8  38 63 00 54 */	addi r3, r3, 0x54
/* 804F530C 004BE8CC  4B B5 15 0C */	b Print_80046818

.global func_804F5310
func_804F5310:
/* 804F5310 004BE8D0  4C C6 31 82 */	crclr 6
/* 804F5314 004BE8D4  38 63 00 98 */	addi r3, r3, 0x98
/* 804F5318 004BE8D8  4B B5 15 00 */	b Print_80046818

.global func_804F531C
func_804F531C:
/* 804F531C 004BE8DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F5320 004BE8E0  7C 08 02 A6 */	mflr r0
/* 804F5324 004BE8E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F5328 004BE8E8  BF 41 00 08 */	stmw r26, 8(r1)
/* 804F532C 004BE8EC  7C 7A 1B 78 */	mr r26, r3
/* 804F5330 004BE8F0  7C 9C 23 78 */	mr r28, r4
/* 804F5334 004BE8F4  7C BE 2B 78 */	mr r30, r5
/* 804F5338 004BE8F8  3B A3 00 DC */	addi r29, r3, 0xdc
/* 804F533C 004BE8FC  7F 5F D3 78 */	mr r31, r26
/* 804F5340 004BE900  3B 60 00 00 */	li r27, 0
/* 804F5344 004BE904  48 00 00 2C */	b lbl_804F5370
lbl_804F5348:
/* 804F5348 004BE908  7F A3 EB 78 */	mr r3, r29
/* 804F534C 004BE90C  4C C6 31 82 */	crclr 6
/* 804F5350 004BE910  4B B5 14 C9 */	bl Print_80046818
/* 804F5354 004BE914  80 1E 00 00 */	lwz r0, 0(r30)
/* 804F5358 004BE918  3B BD 00 44 */	addi r29, r29, 0x44
/* 804F535C 004BE91C  90 1F 02 FC */	stw r0, 0x2fc(r31)
/* 804F5360 004BE920  3B DE 00 04 */	addi r30, r30, 4
/* 804F5364 004BE924  3B FF 00 04 */	addi r31, r31, 4
/* 804F5368 004BE928  3B 7B 00 01 */	addi r27, r27, 1
/* 804F536C 004BE92C  3B 9C 00 04 */	addi r28, r28, 4
lbl_804F5370:
/* 804F5370 004BE930  80 9C 00 00 */	lwz r4, 0(r28)
/* 804F5374 004BE934  2C 04 00 00 */	cmpwi r4, 0
/* 804F5378 004BE938  40 82 FF D0 */	bne lbl_804F5348
/* 804F537C 004BE93C  1C 7B 00 44 */	mulli r3, r27, 0x44
/* 804F5380 004BE940  57 60 10 3A */	slwi r0, r27, 2
/* 804F5384 004BE944  93 7A 03 1C */	stw r27, 0x31c(r26)
/* 804F5388 004BE948  3F C0 80 53 */	lis r30, lbl_805281C4@ha
/* 804F538C 004BE94C  7F 9A 02 14 */	add r28, r26, r0
/* 804F5390 004BE950  7C 7A 1A 14 */	add r3, r26, r3
/* 804F5394 004BE954  3B A3 00 DC */	addi r29, r3, 0xdc
/* 804F5398 004BE958  3B E0 00 00 */	li r31, 0
/* 804F539C 004BE95C  48 00 00 24 */	b lbl_804F53C0
lbl_804F53A0:
/* 804F53A0 004BE960  7F A3 EB 78 */	mr r3, r29
/* 804F53A4 004BE964  38 9E 81 C4 */	addi r4, r30, lbl_805281C4@l
/* 804F53A8 004BE968  4C C6 31 82 */	crclr 6
/* 804F53AC 004BE96C  4B B5 14 6D */	bl Print_80046818
/* 804F53B0 004BE970  93 FC 02 FC */	stw r31, 0x2fc(r28)
/* 804F53B4 004BE974  3B BD 00 44 */	addi r29, r29, 0x44
/* 804F53B8 004BE978  3B 9C 00 04 */	addi r28, r28, 4
/* 804F53BC 004BE97C  3B 7B 00 01 */	addi r27, r27, 1
lbl_804F53C0:
/* 804F53C0 004BE980  2C 1B 00 08 */	cmpwi r27, 8
/* 804F53C4 004BE984  41 80 FF DC */	blt lbl_804F53A0
/* 804F53C8 004BE988  BB 41 00 08 */	lmw r26, 8(r1)
/* 804F53CC 004BE98C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F53D0 004BE990  7C 08 03 A6 */	mtlr r0
/* 804F53D4 004BE994  38 21 00 20 */	addi r1, r1, 0x20
/* 804F53D8 004BE998  4E 80 00 20 */	blr 

.global func_804F53DC
func_804F53DC:
/* 804F53DC 004BE99C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804F53E0 004BE9A0  7C 08 02 A6 */	mflr r0
/* 804F53E4 004BE9A4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804F53E8 004BE9A8  93 E1 00 AC */	stw r31, 0xac(r1)
/* 804F53EC 004BE9AC  7C 7F 1B 78 */	mr r31, r3
/* 804F53F0 004BE9B0  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 804F53F4 004BE9B4  3B C0 00 00 */	li r30, 0
/* 804F53F8 004BE9B8  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 804F53FC 004BE9BC  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 804F5400 004BE9C0  9B C3 03 25 */	stb r30, 0x325(r3)
/* 804F5404 004BE9C4  4B F3 EF 9D */	bl func_804343A0
/* 804F5408 004BE9C8  3C A0 00 01 */	lis r5, 0x0000F0A0@ha
/* 804F540C 004BE9CC  7C 64 1B 78 */	mr r4, r3
/* 804F5410 004BE9D0  38 65 F0 A0 */	addi r3, r5, 0x0000F0A0@l
/* 804F5414 004BE9D4  38 A0 00 20 */	li r5, 0x20
/* 804F5418 004BE9D8  4B F3 F6 8D */	bl func_80434AA4
/* 804F541C 004BE9DC  2C 03 00 00 */	cmpwi r3, 0
/* 804F5420 004BE9E0  90 7F 00 04 */	stw r3, 4(r31)
/* 804F5424 004BE9E4  40 82 00 0C */	bne lbl_804F5430
/* 804F5428 004BE9E8  38 60 00 00 */	li r3, 0
/* 804F542C 004BE9EC  48 00 02 EC */	b lbl_804F5718
lbl_804F5430:
/* 804F5430 004BE9F0  3B BF 00 10 */	addi r29, r31, 0x10
/* 804F5434 004BE9F4  38 00 00 20 */	li r0, 0x20
/* 804F5438 004BE9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F543C 004BE9FC  7F A3 EB 78 */	mr r3, r29
/* 804F5440 004BEA00  4B DC 41 79 */	bl strlen
/* 804F5444 004BEA04  54 60 08 3C */	slwi r0, r3, 1
/* 804F5448 004BEA08  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F544C 004BEA0C  7F A5 EB 78 */	mr r5, r29
/* 804F5450 004BEA10  38 61 00 58 */	addi r3, r1, 0x58
/* 804F5454 004BEA14  38 81 00 14 */	addi r4, r1, 0x14
/* 804F5458 004BEA18  38 C1 00 10 */	addi r6, r1, 0x10
/* 804F545C 004BEA1C  4B E1 DA 95 */	bl func_80312EF0
/* 804F5460 004BEA20  2C 03 00 00 */	cmpwi r3, 0
/* 804F5464 004BEA24  41 82 00 0C */	beq lbl_804F5470
/* 804F5468 004BEA28  38 80 00 00 */	li r4, 0
/* 804F546C 004BEA2C  48 00 00 18 */	b lbl_804F5484
lbl_804F5470:
/* 804F5470 004BEA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5474 004BEA34  38 61 00 58 */	addi r3, r1, 0x58
/* 804F5478 004BEA38  38 80 00 01 */	li r4, 1
/* 804F547C 004BEA3C  54 00 08 3C */	slwi r0, r0, 1
/* 804F5480 004BEA40  7F C3 03 2E */	sthx r30, r3, r0
lbl_804F5484:
/* 804F5484 004BEA44  2C 04 00 00 */	cmpwi r4, 0
/* 804F5488 004BEA48  40 82 00 0C */	bne lbl_804F5494
/* 804F548C 004BEA4C  38 60 00 00 */	li r3, 0
/* 804F5490 004BEA50  48 00 02 88 */	b lbl_804F5718
lbl_804F5494:
/* 804F5494 004BEA54  3B BF 00 54 */	addi r29, r31, 0x54
/* 804F5498 004BEA58  38 00 00 20 */	li r0, 0x20
/* 804F549C 004BEA5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F54A0 004BEA60  7F A3 EB 78 */	mr r3, r29
/* 804F54A4 004BEA64  4B DC 41 15 */	bl strlen
/* 804F54A8 004BEA68  54 60 08 3C */	slwi r0, r3, 1
/* 804F54AC 004BEA6C  90 01 00 08 */	stw r0, 8(r1)
/* 804F54B0 004BEA70  7F A5 EB 78 */	mr r5, r29
/* 804F54B4 004BEA74  38 61 00 18 */	addi r3, r1, 0x18
/* 804F54B8 004BEA78  38 81 00 0C */	addi r4, r1, 0xc
/* 804F54BC 004BEA7C  38 C1 00 08 */	addi r6, r1, 8
/* 804F54C0 004BEA80  4B E1 DA 31 */	bl func_80312EF0
/* 804F54C4 004BEA84  2C 03 00 00 */	cmpwi r3, 0
/* 804F54C8 004BEA88  41 82 00 0C */	beq lbl_804F54D4
/* 804F54CC 004BEA8C  38 A0 00 00 */	li r5, 0
/* 804F54D0 004BEA90  48 00 00 1C */	b lbl_804F54EC
lbl_804F54D4:
/* 804F54D4 004BEA94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804F54D8 004BEA98  38 61 00 18 */	addi r3, r1, 0x18
/* 804F54DC 004BEA9C  38 80 00 00 */	li r4, 0
/* 804F54E0 004BEAA0  38 A0 00 01 */	li r5, 1
/* 804F54E4 004BEAA4  54 00 08 3C */	slwi r0, r0, 1
/* 804F54E8 004BEAA8  7C 83 03 2E */	sthx r4, r3, r0
lbl_804F54EC:
/* 804F54EC 004BEAAC  2C 05 00 00 */	cmpwi r5, 0
/* 804F54F0 004BEAB0  40 82 00 0C */	bne lbl_804F54FC
/* 804F54F4 004BEAB4  38 60 00 00 */	li r3, 0
/* 804F54F8 004BEAB8  48 00 02 20 */	b lbl_804F5718
lbl_804F54FC:
/* 804F54FC 004BEABC  3C 80 00 01 */	lis r4, 0x0000F0A0@ha
/* 804F5500 004BEAC0  80 7F 00 04 */	lwz r3, 4(r31)
/* 804F5504 004BEAC4  38 A4 F0 A0 */	addi r5, r4, 0x0000F0A0@l
/* 804F5508 004BEAC8  38 80 00 00 */	li r4, 0
/* 804F550C 004BEACC  4B B0 EE 45 */	bl memset
/* 804F5510 004BEAD0  80 7F 00 04 */	lwz r3, 4(r31)
/* 804F5514 004BEAD4  38 A1 00 58 */	addi r5, r1, 0x58
/* 804F5518 004BEAD8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 804F551C 004BEADC  38 C1 00 18 */	addi r6, r1, 0x18
/* 804F5520 004BEAE0  4B E5 B9 A1 */	bl func_80350EC0
/* 804F5524 004BEAE4  7F E8 FB 78 */	mr r8, r31
/* 804F5528 004BEAE8  39 20 00 00 */	li r9, 0
/* 804F552C 004BEAEC  38 E0 00 00 */	li r7, 0
/* 804F5530 004BEAF0  38 80 00 03 */	li r4, 3
/* 804F5534 004BEAF4  48 00 00 30 */	b lbl_804F5564
lbl_804F5538:
/* 804F5538 004BEAF8  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F553C 004BEAFC  7C 83 38 30 */	slw r3, r4, r7
/* 804F5540 004BEB00  80 08 02 FC */	lwz r0, 0x2fc(r8)
/* 804F5544 004BEB04  39 08 00 04 */	addi r8, r8, 4
/* 804F5548 004BEB08  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F554C 004BEB0C  39 29 00 01 */	addi r9, r9, 1
/* 804F5550 004BEB10  7C 00 38 30 */	slw r0, r0, r7
/* 804F5554 004BEB14  38 E7 00 02 */	addi r7, r7, 2
/* 804F5558 004BEB18  7C A3 18 78 */	andc r3, r5, r3
/* 804F555C 004BEB1C  7C 60 03 78 */	or r0, r3, r0
/* 804F5560 004BEB20  B0 06 00 08 */	sth r0, 8(r6)
lbl_804F5564:
/* 804F5564 004BEB24  80 1F 03 1C */	lwz r0, 0x31c(r31)
/* 804F5568 004BEB28  7C 09 00 00 */	cmpw r9, r0
/* 804F556C 004BEB2C  41 80 FF CC */	blt lbl_804F5538
/* 804F5570 004BEB30  2C 09 00 08 */	cmpwi r9, 8
/* 804F5574 004BEB34  55 27 08 3C */	slwi r7, r9, 1
/* 804F5578 004BEB38  20 69 00 08 */	subfic r3, r9, 8
/* 804F557C 004BEB3C  38 80 00 03 */	li r4, 3
/* 804F5580 004BEB40  40 80 00 FC */	bge lbl_804F567C
/* 804F5584 004BEB44  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 804F5588 004BEB48  7C 09 03 A6 */	mtctr r0
/* 804F558C 004BEB4C  41 82 00 D0 */	beq lbl_804F565C
lbl_804F5590:
/* 804F5590 004BEB50  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F5594 004BEB54  7C 80 38 30 */	slw r0, r4, r7
/* 804F5598 004BEB58  38 E7 00 02 */	addi r7, r7, 2
/* 804F559C 004BEB5C  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F55A0 004BEB60  7C A0 00 78 */	andc r0, r5, r0
/* 804F55A4 004BEB64  B0 06 00 08 */	sth r0, 8(r6)
/* 804F55A8 004BEB68  7C 80 38 30 */	slw r0, r4, r7
/* 804F55AC 004BEB6C  38 E7 00 02 */	addi r7, r7, 2
/* 804F55B0 004BEB70  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F55B4 004BEB74  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F55B8 004BEB78  7C A0 00 78 */	andc r0, r5, r0
/* 804F55BC 004BEB7C  B0 06 00 08 */	sth r0, 8(r6)
/* 804F55C0 004BEB80  7C 80 38 30 */	slw r0, r4, r7
/* 804F55C4 004BEB84  38 E7 00 02 */	addi r7, r7, 2
/* 804F55C8 004BEB88  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F55CC 004BEB8C  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F55D0 004BEB90  7C A0 00 78 */	andc r0, r5, r0
/* 804F55D4 004BEB94  B0 06 00 08 */	sth r0, 8(r6)
/* 804F55D8 004BEB98  7C 80 38 30 */	slw r0, r4, r7
/* 804F55DC 004BEB9C  38 E7 00 02 */	addi r7, r7, 2
/* 804F55E0 004BEBA0  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F55E4 004BEBA4  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F55E8 004BEBA8  7C A0 00 78 */	andc r0, r5, r0
/* 804F55EC 004BEBAC  B0 06 00 08 */	sth r0, 8(r6)
/* 804F55F0 004BEBB0  7C 80 38 30 */	slw r0, r4, r7
/* 804F55F4 004BEBB4  38 E7 00 02 */	addi r7, r7, 2
/* 804F55F8 004BEBB8  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F55FC 004BEBBC  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F5600 004BEBC0  7C A0 00 78 */	andc r0, r5, r0
/* 804F5604 004BEBC4  B0 06 00 08 */	sth r0, 8(r6)
/* 804F5608 004BEBC8  7C 80 38 30 */	slw r0, r4, r7
/* 804F560C 004BEBCC  38 E7 00 02 */	addi r7, r7, 2
/* 804F5610 004BEBD0  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F5614 004BEBD4  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F5618 004BEBD8  7C A0 00 78 */	andc r0, r5, r0
/* 804F561C 004BEBDC  B0 06 00 08 */	sth r0, 8(r6)
/* 804F5620 004BEBE0  7C 80 38 30 */	slw r0, r4, r7
/* 804F5624 004BEBE4  38 E7 00 02 */	addi r7, r7, 2
/* 804F5628 004BEBE8  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F562C 004BEBEC  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F5630 004BEBF0  7C A0 00 78 */	andc r0, r5, r0
/* 804F5634 004BEBF4  B0 06 00 08 */	sth r0, 8(r6)
/* 804F5638 004BEBF8  7C 80 38 30 */	slw r0, r4, r7
/* 804F563C 004BEBFC  38 E7 00 02 */	addi r7, r7, 2
/* 804F5640 004BEC00  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F5644 004BEC04  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F5648 004BEC08  7C A0 00 78 */	andc r0, r5, r0
/* 804F564C 004BEC0C  B0 06 00 08 */	sth r0, 8(r6)
/* 804F5650 004BEC10  42 00 FF 40 */	bdnz lbl_804F5590
/* 804F5654 004BEC14  70 63 00 07 */	andi. r3, r3, 7
/* 804F5658 004BEC18  41 82 00 24 */	beq lbl_804F567C
lbl_804F565C:
/* 804F565C 004BEC1C  7C 69 03 A6 */	mtctr r3
lbl_804F5660:
/* 804F5660 004BEC20  80 DF 00 04 */	lwz r6, 4(r31)
/* 804F5664 004BEC24  7C 80 38 30 */	slw r0, r4, r7
/* 804F5668 004BEC28  38 E7 00 02 */	addi r7, r7, 2
/* 804F566C 004BEC2C  A0 A6 00 08 */	lhz r5, 8(r6)
/* 804F5670 004BEC30  7C A0 00 78 */	andc r0, r5, r0
/* 804F5674 004BEC34  B0 06 00 08 */	sth r0, 8(r6)
/* 804F5678 004BEC38  42 00 FF E8 */	bdnz lbl_804F5660
lbl_804F567C:
/* 804F567C 004BEC3C  80 7F 00 04 */	lwz r3, 4(r31)
/* 804F5680 004BEC40  38 80 00 01 */	li r4, 1
/* 804F5684 004BEC44  38 00 00 00 */	li r0, 0
/* 804F5688 004BEC48  98 9F 03 24 */	stb r4, 0x324(r31)
/* 804F568C 004BEC4C  7F E5 FB 78 */	mr r5, r31
/* 804F5690 004BEC50  38 63 00 A0 */	addi r3, r3, 0xa0
/* 804F5694 004BEC54  90 1F 03 20 */	stw r0, 0x320(r31)
/* 804F5698 004BEC58  38 9F 00 98 */	addi r4, r31, 0x98
/* 804F569C 004BEC5C  38 C0 00 40 */	li r6, 0x40
/* 804F56A0 004BEC60  38 E0 60 00 */	li r7, 0x6000
/* 804F56A4 004BEC64  4B F5 94 C1 */	bl func_8044EB64
/* 804F56A8 004BEC68  80 7F 03 20 */	lwz r3, 0x320(r31)
/* 804F56AC 004BEC6C  3B BF 00 DC */	addi r29, r31, 0xdc
/* 804F56B0 004BEC70  3B 80 00 00 */	li r28, 0
/* 804F56B4 004BEC74  3B C0 00 00 */	li r30, 0
/* 804F56B8 004BEC78  38 03 00 01 */	addi r0, r3, 1
/* 804F56BC 004BEC7C  90 1F 03 20 */	stw r0, 0x320(r31)
/* 804F56C0 004BEC80  48 00 00 3C */	b lbl_804F56FC
lbl_804F56C4:
/* 804F56C4 004BEC84  80 1F 00 04 */	lwz r0, 4(r31)
/* 804F56C8 004BEC88  7F A4 EB 78 */	mr r4, r29
/* 804F56CC 004BEC8C  7F E5 FB 78 */	mr r5, r31
/* 804F56D0 004BEC90  38 C0 00 40 */	li r6, 0x40
/* 804F56D4 004BEC94  7C 60 F2 14 */	add r3, r0, r30
/* 804F56D8 004BEC98  38 E0 12 00 */	li r7, 0x1200
/* 804F56DC 004BEC9C  38 63 60 A0 */	addi r3, r3, 0x60a0
/* 804F56E0 004BECA0  4B F5 94 85 */	bl func_8044EB64
/* 804F56E4 004BECA4  80 7F 03 20 */	lwz r3, 0x320(r31)
/* 804F56E8 004BECA8  3B BD 00 44 */	addi r29, r29, 0x44
/* 804F56EC 004BECAC  3B DE 12 00 */	addi r30, r30, 0x1200
/* 804F56F0 004BECB0  3B 9C 00 01 */	addi r28, r28, 1
/* 804F56F4 004BECB4  38 03 00 01 */	addi r0, r3, 1
/* 804F56F8 004BECB8  90 1F 03 20 */	stw r0, 0x320(r31)
lbl_804F56FC:
/* 804F56FC 004BECBC  80 1F 03 1C */	lwz r0, 0x31c(r31)
/* 804F5700 004BECC0  7C 1C 00 00 */	cmpw r28, r0
/* 804F5704 004BECC4  41 80 FF C0 */	blt lbl_804F56C4
/* 804F5708 004BECC8  1C 80 12 00 */	mulli r4, r0, 0x1200
/* 804F570C 004BECCC  38 60 00 01 */	li r3, 1
/* 804F5710 004BECD0  38 04 60 A0 */	addi r0, r4, 0x60a0
/* 804F5714 004BECD4  90 1F 00 08 */	stw r0, 8(r31)
lbl_804F5718:
/* 804F5718 004BECD8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804F571C 004BECDC  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 804F5720 004BECE0  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 804F5724 004BECE4  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 804F5728 004BECE8  83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 804F572C 004BECEC  7C 08 03 A6 */	mtlr r0
/* 804F5730 004BECF0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804F5734 004BECF4  4E 80 00 20 */	blr 

.global func_804F5738
func_804F5738:
/* 804F5738 004BECF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F573C 004BECFC  7C 08 02 A6 */	mflr r0
/* 804F5740 004BED00  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F5744 004BED04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F5748 004BED08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F574C 004BED0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804F5750 004BED10  93 81 00 10 */	stw r28, 0x10(r1)
/* 804F5754 004BED14  7C 7C 1B 78 */	mr r28, r3
/* 804F5758 004BED18  88 03 03 24 */	lbz r0, 0x324(r3)
/* 804F575C 004BED1C  2C 00 00 00 */	cmpwi r0, 0
/* 804F5760 004BED20  41 82 00 50 */	beq lbl_804F57B0
/* 804F5764 004BED24  38 63 00 98 */	addi r3, r3, 0x98
/* 804F5768 004BED28  4B F5 99 7D */	bl func_8044F0E4
/* 804F576C 004BED2C  7F 9F E3 78 */	mr r31, r28
/* 804F5770 004BED30  3B DC 00 DC */	addi r30, r28, 0xdc
/* 804F5774 004BED34  3B A0 00 00 */	li r29, 0
/* 804F5778 004BED38  48 00 00 24 */	b lbl_804F579C
lbl_804F577C:
/* 804F577C 004BED3C  88 1F 00 DC */	lbz r0, 0xdc(r31)
/* 804F5780 004BED40  7C 00 07 75 */	extsb. r0, r0
/* 804F5784 004BED44  41 82 00 0C */	beq lbl_804F5790
/* 804F5788 004BED48  7F C3 F3 78 */	mr r3, r30
/* 804F578C 004BED4C  4B F5 99 59 */	bl func_8044F0E4
lbl_804F5790:
/* 804F5790 004BED50  3B FF 00 44 */	addi r31, r31, 0x44
/* 804F5794 004BED54  3B DE 00 44 */	addi r30, r30, 0x44
/* 804F5798 004BED58  3B BD 00 01 */	addi r29, r29, 1
lbl_804F579C:
/* 804F579C 004BED5C  80 1C 03 1C */	lwz r0, 0x31c(r28)
/* 804F57A0 004BED60  7C 1D 00 00 */	cmpw r29, r0
/* 804F57A4 004BED64  41 80 FF D8 */	blt lbl_804F577C
/* 804F57A8 004BED68  38 00 00 00 */	li r0, 0
/* 804F57AC 004BED6C  98 1C 03 24 */	stb r0, 0x324(r28)
lbl_804F57B0:
/* 804F57B0 004BED70  80 7C 00 04 */	lwz r3, 4(r28)
/* 804F57B4 004BED74  2C 03 00 00 */	cmpwi r3, 0
/* 804F57B8 004BED78  41 82 00 10 */	beq lbl_804F57C8
/* 804F57BC 004BED7C  4B F3 F4 71 */	bl func_80434C2C
/* 804F57C0 004BED80  38 00 00 00 */	li r0, 0
/* 804F57C4 004BED84  90 1C 00 04 */	stw r0, 4(r28)
lbl_804F57C8:
/* 804F57C8 004BED88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F57CC 004BED8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F57D0 004BED90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F57D4 004BED94  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804F57D8 004BED98  83 81 00 10 */	lwz r28, 0x10(r1)
/* 804F57DC 004BED9C  7C 08 03 A6 */	mtlr r0
/* 804F57E0 004BEDA0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F57E4 004BEDA4  4E 80 00 20 */	blr 

.global func_804F57E8
func_804F57E8:
/* 804F57E8 004BEDA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F57EC 004BEDAC  7C 08 02 A6 */	mflr r0
/* 804F57F0 004BEDB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F57F4 004BEDB4  BF 41 00 08 */	stmw r26, 8(r1)
/* 804F57F8 004BEDB8  7C 7F 1B 78 */	mr r31, r3
/* 804F57FC 004BEDBC  80 A4 00 00 */	lwz r5, 0(r4)
/* 804F5800 004BEDC0  83 84 00 0C */	lwz r28, 0xc(r4)
/* 804F5804 004BEDC4  38 9F 00 98 */	addi r4, r31, 0x98
/* 804F5808 004BEDC8  20 65 00 01 */	subfic r3, r5, 1
/* 804F580C 004BEDCC  38 05 FF FF */	addi r0, r5, -1
/* 804F5810 004BEDD0  7C 60 03 78 */	or r0, r3, r0
/* 804F5814 004BEDD4  7F 83 E3 78 */	mr r3, r28
/* 804F5818 004BEDD8  54 1B 0F FE */	srwi r27, r0, 0x1f
/* 804F581C 004BEDDC  4B DC D0 19 */	bl strcmp
/* 804F5820 004BEDE0  2C 03 00 00 */	cmpwi r3, 0
/* 804F5824 004BEDE4  40 82 00 40 */	bne lbl_804F5864
/* 804F5828 004BEDE8  80 9F 03 20 */	lwz r4, 0x320(r31)
/* 804F582C 004BEDEC  38 60 00 01 */	li r3, 1
/* 804F5830 004BEDF0  88 1F 03 25 */	lbz r0, 0x325(r31)
/* 804F5834 004BEDF4  38 C4 FF FF */	addi r6, r4, -1
/* 804F5838 004BEDF8  90 DF 03 20 */	stw r6, 0x320(r31)
/* 804F583C 004BEDFC  7C 04 DB 78 */	or r4, r0, r27
/* 804F5840 004BEE00  7C A6 00 D0 */	neg r5, r6
/* 804F5844 004BEE04  7C 04 00 D0 */	neg r0, r4
/* 804F5848 004BEE08  7C 00 23 78 */	or r0, r0, r4
/* 804F584C 004BEE0C  7C A5 30 78 */	andc r5, r5, r6
/* 804F5850 004BEE10  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 804F5854 004BEE14  98 9F 03 24 */	stb r4, 0x324(r31)
/* 804F5858 004BEE18  54 00 0F FE */	srwi r0, r0, 0x1f
/* 804F585C 004BEE1C  98 1F 03 25 */	stb r0, 0x325(r31)
/* 804F5860 004BEE20  48 00 00 78 */	b lbl_804F58D8
lbl_804F5864:
/* 804F5864 004BEE24  83 BF 03 1C */	lwz r29, 0x31c(r31)
/* 804F5868 004BEE28  3B DF 00 DC */	addi r30, r31, 0xdc
/* 804F586C 004BEE2C  3B 40 00 00 */	li r26, 0
/* 804F5870 004BEE30  48 00 00 5C */	b lbl_804F58CC
lbl_804F5874:
/* 804F5874 004BEE34  7F 83 E3 78 */	mr r3, r28
/* 804F5878 004BEE38  7F C4 F3 78 */	mr r4, r30
/* 804F587C 004BEE3C  4B DC CF B9 */	bl strcmp
/* 804F5880 004BEE40  2C 03 00 00 */	cmpwi r3, 0
/* 804F5884 004BEE44  40 82 00 40 */	bne lbl_804F58C4
/* 804F5888 004BEE48  80 9F 03 20 */	lwz r4, 0x320(r31)
/* 804F588C 004BEE4C  38 60 00 01 */	li r3, 1
/* 804F5890 004BEE50  88 1F 03 25 */	lbz r0, 0x325(r31)
/* 804F5894 004BEE54  38 C4 FF FF */	addi r6, r4, -1
/* 804F5898 004BEE58  90 DF 03 20 */	stw r6, 0x320(r31)
/* 804F589C 004BEE5C  7C 04 DB 78 */	or r4, r0, r27
/* 804F58A0 004BEE60  7C A6 00 D0 */	neg r5, r6
/* 804F58A4 004BEE64  7C 04 00 D0 */	neg r0, r4
/* 804F58A8 004BEE68  7C 00 23 78 */	or r0, r0, r4
/* 804F58AC 004BEE6C  7C A5 30 78 */	andc r5, r5, r6
/* 804F58B0 004BEE70  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 804F58B4 004BEE74  98 9F 03 24 */	stb r4, 0x324(r31)
/* 804F58B8 004BEE78  54 00 0F FE */	srwi r0, r0, 0x1f
/* 804F58BC 004BEE7C  98 1F 03 25 */	stb r0, 0x325(r31)
/* 804F58C0 004BEE80  48 00 00 18 */	b lbl_804F58D8
lbl_804F58C4:
/* 804F58C4 004BEE84  3B DE 00 44 */	addi r30, r30, 0x44
/* 804F58C8 004BEE88  3B 5A 00 01 */	addi r26, r26, 1
lbl_804F58CC:
/* 804F58CC 004BEE8C  7C 1A E8 00 */	cmpw r26, r29
/* 804F58D0 004BEE90  41 80 FF A4 */	blt lbl_804F5874
/* 804F58D4 004BEE94  38 60 00 00 */	li r3, 0
lbl_804F58D8:
/* 804F58D8 004BEE98  BB 41 00 08 */	lmw r26, 8(r1)
/* 804F58DC 004BEE9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F58E0 004BEEA0  7C 08 03 A6 */	mtlr r0
/* 804F58E4 004BEEA4  38 21 00 20 */	addi r1, r1, 0x20
/* 804F58E8 004BEEA8  4E 80 00 20 */	blr 
