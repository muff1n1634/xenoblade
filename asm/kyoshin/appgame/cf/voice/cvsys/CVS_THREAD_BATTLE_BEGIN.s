.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__802AFA80, global
/* 802AFA80 00279040  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AFA84 00279044  7C 08 02 A6 */	mflr r0
/* 802AFA88 00279048  2C 03 00 00 */	cmpwi r3, 0
/* 802AFA8C 0027904C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AFA90 00279050  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802AFA94 00279054  7C 3F 0B 78 */	mr r31, r1
/* 802AFA98 00279058  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802AFA9C 0027905C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802AFAA0 00279060  7C 7D 1B 78 */	mr r29, r3
/* 802AFAA4 00279064  7F BE EB 78 */	mr r30, r29
/* 802AFAA8 00279068  93 81 00 20 */	stw r28, 0x20(r1)
/* 802AFAAC 0027906C  7C 9C 23 78 */	mr r28, r4
/* 802AFAB0 00279070  41 82 00 08 */	beq .L_802AFAB8
/* 802AFAB4 00279074  3B DD 3E 9C */	addi r30, r29, 0x3e9c
.L_802AFAB8:
/* 802AFAB8 00279078  38 60 00 00 */	li r3, 0
/* 802AFABC 0027907C  4B DD 32 99 */	bl func_80082D54
/* 802AFAC0 00279080  7C 1E 18 40 */	cmplw r30, r3
/* 802AFAC4 00279084  41 82 00 0C */	beq .L_802AFAD0
/* 802AFAC8 00279088  38 60 00 00 */	li r3, 0
/* 802AFACC 0027908C  48 00 01 60 */	b .L_802AFC2C
.L_802AFAD0:
/* 802AFAD0 00279090  7F 83 E3 78 */	mr r3, r28
/* 802AFAD4 00279094  4B FF F8 B5 */	bl func_802AF388
/* 802AFAD8 00279098  2C 03 00 00 */	cmpwi r3, 0
/* 802AFADC 0027909C  41 82 00 0C */	beq .L_802AFAE8
/* 802AFAE0 002790A0  38 60 00 00 */	li r3, 0
/* 802AFAE4 002790A4  48 00 01 48 */	b .L_802AFC2C
.L_802AFAE8:
/* 802AFAE8 002790A8  81 9D 00 00 */	lwz r12, 0(r29)
/* 802AFAEC 002790AC  7F A3 EB 78 */	mr r3, r29
/* 802AFAF0 002790B0  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 802AFAF4 002790B4  7D 89 03 A6 */	mtctr r12
/* 802AFAF8 002790B8  4E 80 04 21 */	bctrl 
/* 802AFAFC 002790BC  81 9C 00 00 */	lwz r12, 0(r28)
/* 802AFB00 002790C0  3B C3 FF FA */	addi r30, r3, -6
/* 802AFB04 002790C4  7F 83 E3 78 */	mr r3, r28
/* 802AFB08 002790C8  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 802AFB0C 002790CC  7D 89 03 A6 */	mtctr r12
/* 802AFB10 002790D0  4E 80 04 21 */	bctrl 
/* 802AFB14 002790D4  7C 03 F0 00 */	cmpw r3, r30
/* 802AFB18 002790D8  41 81 00 0C */	bgt .L_802AFB24
/* 802AFB1C 002790DC  3B C0 00 00 */	li r30, 0
/* 802AFB20 002790E0  48 00 00 48 */	b .L_802AFB68
.L_802AFB24:
/* 802AFB24 002790E4  81 9D 00 00 */	lwz r12, 0(r29)
/* 802AFB28 002790E8  7F A3 EB 78 */	mr r3, r29
/* 802AFB2C 002790EC  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 802AFB30 002790F0  7D 89 03 A6 */	mtctr r12
/* 802AFB34 002790F4  4E 80 04 21 */	bctrl 
/* 802AFB38 002790F8  81 9C 00 00 */	lwz r12, 0(r28)
/* 802AFB3C 002790FC  3B C3 00 06 */	addi r30, r3, 6
/* 802AFB40 00279100  7F 83 E3 78 */	mr r3, r28
/* 802AFB44 00279104  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 802AFB48 00279108  7D 89 03 A6 */	mtctr r12
/* 802AFB4C 0027910C  4E 80 04 21 */	bctrl 
/* 802AFB50 00279110  7C 1E 18 10 */	subfc r0, r30, r3
/* 802AFB54 00279114  57 C4 0F FE */	srwi r4, r30, 0x1f
/* 802AFB58 00279118  54 63 0F FE */	srwi r3, r3, 0x1f
/* 802AFB5C 0027911C  38 00 00 02 */	li r0, 2
/* 802AFB60 00279120  7C 63 21 10 */	subfe r3, r3, r4
/* 802AFB64 00279124  7F C3 02 14 */	add r30, r3, r0
.L_802AFB68:
/* 802AFB68 00279128  38 60 00 1E */	li r3, 0x1e
/* 802AFB6C 0027912C  38 80 00 01 */	li r4, 1
/* 802AFB70 00279130  4B FF 37 9D */	bl func_802A330C
/* 802AFB74 00279134  2C 03 00 00 */	cmpwi r3, 0
/* 802AFB78 00279138  40 82 00 0C */	bne .L_802AFB84
/* 802AFB7C 0027913C  38 60 00 00 */	li r3, 0
/* 802AFB80 00279140  48 00 00 AC */	b .L_802AFC2C
.L_802AFB84:
/* 802AFB84 00279144  38 60 00 3C */	li r3, 0x3c
/* 802AFB88 00279148  4B FF 39 5D */	bl func_802A34E4
/* 802AFB8C 0027914C  2C 03 00 00 */	cmpwi r3, 0
/* 802AFB90 00279150  7C 7D 1B 78 */	mr r29, r3
/* 802AFB94 00279154  40 82 00 0C */	bne .L_802AFBA0
/* 802AFB98 00279158  38 60 00 00 */	li r3, 0
/* 802AFB9C 0027915C  48 00 00 90 */	b .L_802AFC2C
.L_802AFBA0:
/* 802AFBA0 00279160  41 82 00 68 */	beq .L_802AFC08
/* 802AFBA4 00279164  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802AFBA8 00279168  4B FF 3E D9 */	bl __ct__cf_CVS_THREAD
/* 802AFBAC 0027916C  3C 80 80 54 */	lis r4, __vt__cf_CVS_THREAD_BATTLE_BEGIN@ha
/* 802AFBB0 00279170  38 7D 00 28 */	addi r3, r29, 0x28
/* 802AFBB4 00279174  38 84 E3 D0 */	addi r4, r4, __vt__cf_CVS_THREAD_BATTLE_BEGIN@l
/* 802AFBB8 00279178  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 802AFBBC 0027917C  38 80 00 00 */	li r4, 0
/* 802AFBC0 00279180  38 A0 00 0C */	li r5, 0xc
/* 802AFBC4 00279184  93 9D 00 24 */	stw r28, 0x24(r29)
/* 802AFBC8 00279188  B3 DD 00 34 */	sth r30, 0x34(r29)
/* 802AFBCC 0027918C  4B D5 47 85 */	bl memset
/* 802AFBD0 00279190  38 00 00 00 */	li r0, 0
/* 802AFBD4 00279194  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 802AFBD8 00279198  38 60 00 02 */	li r3, 2
/* 802AFBDC 0027919C  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 802AFBE0 002791A0  48 18 63 1D */	bl mtRand__2mlFi
/* 802AFBE4 002791A4  7C 03 00 D0 */	neg r0, r3
/* 802AFBE8 002791A8  7C 00 1B 78 */	or r0, r0, r3
/* 802AFBEC 002791AC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802AFBF0 002791B0  98 1D 00 3A */	stb r0, 0x3a(r29)
/* 802AFBF4 002791B4  48 00 00 14 */	b .L_802AFC08
/* 802AFBF8 002791B8  38 60 00 00 */	li r3, 0
/* 802AFBFC 002791BC  38 80 00 00 */	li r4, 0
/* 802AFC00 002791C0  38 A0 00 00 */	li r5, 0
/* 802AFC04 002791C4  48 00 BF B9 */	bl __throw
.L_802AFC08:
/* 802AFC08 002791C8  3C A0 80 54 */	lis r5, lbl_8053E3A0@ha
/* 802AFC0C 002791CC  7F A3 EB 78 */	mr r3, r29
/* 802AFC10 002791D0  38 A5 E3 A0 */	addi r5, r5, lbl_8053E3A0@l
/* 802AFC14 002791D4  80 05 00 04 */	lwz r0, 4(r5)
/* 802AFC18 002791D8  80 85 00 00 */	lwz r4, 0(r5)
/* 802AFC1C 002791DC  90 9D 00 00 */	stw r4, 0(r29)
/* 802AFC20 002791E0  90 1D 00 04 */	stw r0, 4(r29)
/* 802AFC24 002791E4  80 05 00 08 */	lwz r0, 8(r5)
/* 802AFC28 002791E8  90 1D 00 08 */	stw r0, 8(r29)
.L_802AFC2C:
/* 802AFC2C 002791EC  7F EA FB 78 */	mr r10, r31
/* 802AFC30 002791F0  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802AFC34 002791F4  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802AFC38 002791F8  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802AFC3C 002791FC  83 8A 00 20 */	lwz r28, 0x20(r10)
/* 802AFC40 00279200  81 41 00 00 */	lwz r10, 0(r1)
/* 802AFC44 00279204  80 0A 00 04 */	lwz r0, 4(r10)
/* 802AFC48 00279208  7D 41 53 78 */	mr r1, r10
/* 802AFC4C 0027920C  7C 08 03 A6 */	mtlr r0
/* 802AFC50 00279210  4E 80 00 20 */	blr 
.endfn __ct__802AFA80

.fn func_802AFC54, global
/* 802AFC54 00279214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AFC58 00279218  7C 08 02 A6 */	mflr r0
/* 802AFC5C 0027921C  3C E0 80 54 */	lis r7, lbl_8053E3AC@ha
/* 802AFC60 00279220  38 80 00 03 */	li r4, 3
/* 802AFC64 00279224  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AFC68 00279228  38 A0 00 00 */	li r5, 0
/* 802AFC6C 0027922C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AFC70 00279230  7C 7F 1B 78 */	mr r31, r3
/* 802AFC74 00279234  84 C7 E3 AC */	lwzu r6, lbl_8053E3AC@l(r7)
/* 802AFC78 00279238  80 07 00 04 */	lwz r0, 4(r7)
/* 802AFC7C 0027923C  90 03 00 04 */	stw r0, 4(r3)
/* 802AFC80 00279240  90 C3 00 00 */	stw r6, 0(r3)
/* 802AFC84 00279244  80 07 00 08 */	lwz r0, 8(r7)
/* 802AFC88 00279248  90 03 00 08 */	stw r0, 8(r3)
/* 802AFC8C 0027924C  38 63 00 28 */	addi r3, r3, 0x28
/* 802AFC90 00279250  4B FF 7B E1 */	bl func_802A7870
/* 802AFC94 00279254  7C 60 07 35 */	extsh. r0, r3
/* 802AFC98 00279258  B0 7F 00 38 */	sth r3, 0x38(r31)
/* 802AFC9C 0027925C  41 81 00 18 */	bgt .L_802AFCB4
/* 802AFCA0 00279260  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802AFCA4 00279264  7F E3 FB 78 */	mr r3, r31
/* 802AFCA8 00279268  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AFCAC 0027926C  7D 89 03 A6 */	mtctr r12
/* 802AFCB0 00279270  4E 80 04 21 */	bctrl 
.L_802AFCB4:
/* 802AFCB4 00279274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AFCB8 00279278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AFCBC 0027927C  7C 08 03 A6 */	mtlr r0
/* 802AFCC0 00279280  38 21 00 10 */	addi r1, r1, 0x10
/* 802AFCC4 00279284  4E 80 00 20 */	blr 
.endfn func_802AFC54

.fn func_802AFCC8, global
/* 802AFCC8 00279288  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AFCCC 0027928C  7C 08 02 A6 */	mflr r0
/* 802AFCD0 00279290  3C E0 80 54 */	lis r7, lbl_8053E3B8@ha
/* 802AFCD4 00279294  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AFCD8 00279298  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AFCDC 0027929C  7C 7F 1B 78 */	mr r31, r3
/* 802AFCE0 002792A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AFCE4 002792A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AFCE8 002792A8  84 C7 E3 B8 */	lwzu r6, lbl_8053E3B8@l(r7)
/* 802AFCEC 002792AC  A8 03 00 36 */	lha r0, 0x36(r3)
/* 802AFCF0 002792B0  80 A7 00 04 */	lwz r5, 4(r7)
/* 802AFCF4 002792B4  54 00 10 3A */	slwi r0, r0, 2
/* 802AFCF8 002792B8  90 A3 00 04 */	stw r5, 4(r3)
/* 802AFCFC 002792BC  7C 83 02 14 */	add r4, r3, r0
/* 802AFD00 002792C0  90 C3 00 00 */	stw r6, 0(r3)
/* 802AFD04 002792C4  80 07 00 08 */	lwz r0, 8(r7)
/* 802AFD08 002792C8  90 03 00 08 */	stw r0, 8(r3)
/* 802AFD0C 002792CC  80 64 00 28 */	lwz r3, 0x28(r4)
/* 802AFD10 002792D0  2C 03 00 00 */	cmpwi r3, 0
/* 802AFD14 002792D4  41 82 03 BC */	beq .L_802B00D0
/* 802AFD18 002792D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AFD1C 002792DC  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AFD20 002792E0  7D 89 03 A6 */	mtctr r12
/* 802AFD24 002792E4  4E 80 04 21 */	bctrl 
/* 802AFD28 002792E8  2C 03 00 00 */	cmpwi r3, 0
/* 802AFD2C 002792EC  40 82 03 A4 */	bne .L_802B00D0
/* 802AFD30 002792F0  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 802AFD34 002792F4  2C 03 00 00 */	cmpwi r3, 0
/* 802AFD38 002792F8  40 82 01 34 */	bne .L_802AFE6C
/* 802AFD3C 002792FC  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 802AFD40 00279300  54 63 10 3A */	slwi r3, r3, 2
/* 802AFD44 00279304  7C 7F 1A 14 */	add r3, r31, r3
/* 802AFD48 00279308  2C 00 00 01 */	cmpwi r0, 1
/* 802AFD4C 0027930C  83 C3 00 28 */	lwz r30, 0x28(r3)
/* 802AFD50 00279310  40 82 00 30 */	bne .L_802AFD80
/* 802AFD54 00279314  7F C3 F3 78 */	mr r3, r30
/* 802AFD58 00279318  4B FF 7A 91 */	bl func_802A77E8
/* 802AFD5C 0027931C  2C 03 00 01 */	cmpwi r3, 1
/* 802AFD60 00279320  40 82 00 20 */	bne .L_802AFD80
/* 802AFD64 00279324  38 60 00 64 */	li r3, 0x64
/* 802AFD68 00279328  48 18 61 95 */	bl mtRand__2mlFi
/* 802AFD6C 0027932C  2C 03 00 32 */	cmpwi r3, 0x32
/* 802AFD70 00279330  38 A0 02 5B */	li r5, 0x25b
/* 802AFD74 00279334  40 80 00 B4 */	bge .L_802AFE28
/* 802AFD78 00279338  38 A0 0D BB */	li r5, 0xdbb
/* 802AFD7C 0027933C  48 00 00 AC */	b .L_802AFE28
.L_802AFD80:
/* 802AFD80 00279340  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 802AFD84 00279344  2C 00 00 01 */	cmpwi r0, 1
/* 802AFD88 00279348  40 82 00 30 */	bne .L_802AFDB8
/* 802AFD8C 0027934C  7F C3 F3 78 */	mr r3, r30
/* 802AFD90 00279350  4B FF 7A 59 */	bl func_802A77E8
/* 802AFD94 00279354  2C 03 00 03 */	cmpwi r3, 3
/* 802AFD98 00279358  40 82 00 20 */	bne .L_802AFDB8
/* 802AFD9C 0027935C  38 60 00 64 */	li r3, 0x64
/* 802AFDA0 00279360  48 18 61 5D */	bl mtRand__2mlFi
/* 802AFDA4 00279364  2C 03 00 32 */	cmpwi r3, 0x32
/* 802AFDA8 00279368  38 A0 02 5E */	li r5, 0x25e
/* 802AFDAC 0027936C  40 80 00 7C */	bge .L_802AFE28
/* 802AFDB0 00279370  38 A0 02 59 */	li r5, 0x259
/* 802AFDB4 00279374  48 00 00 74 */	b .L_802AFE28
.L_802AFDB8:
/* 802AFDB8 00279378  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 802AFDBC 0027937C  2C 00 00 01 */	cmpwi r0, 1
/* 802AFDC0 00279380  40 82 00 38 */	bne .L_802AFDF8
/* 802AFDC4 00279384  7F C3 F3 78 */	mr r3, r30
/* 802AFDC8 00279388  4B FF 7A 21 */	bl func_802A77E8
/* 802AFDCC 0027938C  2C 03 00 07 */	cmpwi r3, 7
/* 802AFDD0 00279390  40 82 00 28 */	bne .L_802AFDF8
/* 802AFDD4 00279394  38 60 00 64 */	li r3, 0x64
/* 802AFDD8 00279398  48 18 61 25 */	bl mtRand__2mlFi
/* 802AFDDC 0027939C  38 80 00 32 */	li r4, 0x32
/* 802AFDE0 002793A0  54 60 0F FE */	srwi r0, r3, 0x1f
/* 802AFDE4 002793A4  7C 64 18 10 */	subfc r3, r4, r3
/* 802AFDE8 002793A8  38 60 00 00 */	li r3, 0
/* 802AFDEC 002793AC  7C 60 19 10 */	subfe r3, r0, r3
/* 802AFDF0 002793B0  38 A3 02 5C */	addi r5, r3, 0x25c
/* 802AFDF4 002793B4  48 00 00 34 */	b .L_802AFE28
.L_802AFDF8:
/* 802AFDF8 002793B8  A8 1F 00 34 */	lha r0, 0x34(r31)
/* 802AFDFC 002793BC  2C 00 00 01 */	cmpwi r0, 1
/* 802AFE00 002793C0  41 82 00 14 */	beq .L_802AFE14
/* 802AFE04 002793C4  2C 00 00 02 */	cmpwi r0, 2
/* 802AFE08 002793C8  41 82 00 1C */	beq .L_802AFE24
/* 802AFE0C 002793CC  38 A0 02 5D */	li r5, 0x25d
/* 802AFE10 002793D0  48 00 00 18 */	b .L_802AFE28
.L_802AFE14:
/* 802AFE14 002793D4  38 60 00 03 */	li r3, 3
/* 802AFE18 002793D8  48 18 60 E5 */	bl mtRand__2mlFi
/* 802AFE1C 002793DC  38 A3 02 59 */	addi r5, r3, 0x259
/* 802AFE20 002793E0  48 00 00 08 */	b .L_802AFE28
.L_802AFE24:
/* 802AFE24 002793E4  38 A0 02 5C */	li r5, 0x25c
.L_802AFE28:
/* 802AFE28 002793E8  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 802AFE2C 002793EC  54 00 10 3A */	slwi r0, r0, 2
/* 802AFE30 002793F0  7C 7F 02 14 */	add r3, r31, r0
/* 802AFE34 002793F4  80 83 00 28 */	lwz r4, 0x28(r3)
/* 802AFE38 002793F8  2C 04 00 00 */	cmpwi r4, 0
/* 802AFE3C 002793FC  41 82 00 08 */	beq .L_802AFE44
/* 802AFE40 00279400  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802AFE44:
/* 802AFE44 00279404  7F E3 FB 78 */	mr r3, r31
/* 802AFE48 00279408  4B FF 3D FD */	bl func_802A3C44
/* 802AFE4C 0027940C  2C 03 00 00 */	cmpwi r3, 0
/* 802AFE50 00279410  40 82 02 80 */	bne .L_802B00D0
/* 802AFE54 00279414  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802AFE58 00279418  7F E3 FB 78 */	mr r3, r31
/* 802AFE5C 0027941C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AFE60 00279420  7D 89 03 A6 */	mtctr r12
/* 802AFE64 00279424  4E 80 04 21 */	bctrl 
/* 802AFE68 00279428  48 00 02 68 */	b .L_802B00D0
.L_802AFE6C:
/* 802AFE6C 0027942C  38 60 00 64 */	li r3, 0x64
/* 802AFE70 00279430  48 18 60 8D */	bl mtRand__2mlFi
/* 802AFE74 00279434  2C 03 00 32 */	cmpwi r3, 0x32
/* 802AFE78 00279438  40 80 00 18 */	bge .L_802AFE90
/* 802AFE7C 0027943C  A8 1F 00 34 */	lha r0, 0x34(r31)
/* 802AFE80 00279440  2C 00 00 02 */	cmpwi r0, 2
/* 802AFE84 00279444  41 80 00 0C */	blt .L_802AFE90
/* 802AFE88 00279448  38 A0 08 A0 */	li r5, 0x8a0
/* 802AFE8C 0027944C  48 00 02 04 */	b .L_802B0090
.L_802AFE90:
/* 802AFE90 00279450  38 60 00 64 */	li r3, 0x64
/* 802AFE94 00279454  48 18 60 69 */	bl mtRand__2mlFi
/* 802AFE98 00279458  2C 03 00 14 */	cmpwi r3, 0x14
/* 802AFE9C 0027945C  40 80 00 DC */	bge .L_802AFF78
/* 802AFEA0 00279460  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 802AFEA4 00279464  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802AFEA8 00279468  54 00 10 3A */	slwi r0, r0, 2
/* 802AFEAC 0027946C  7C 9F 02 14 */	add r4, r31, r0
/* 802AFEB0 00279470  2C 03 00 00 */	cmpwi r3, 0
/* 802AFEB4 00279474  83 C4 00 28 */	lwz r30, 0x28(r4)
/* 802AFEB8 00279478  41 82 00 1C */	beq .L_802AFED4
/* 802AFEBC 0027947C  81 83 00 00 */	lwz r12, 0(r3)
/* 802AFEC0 00279480  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AFEC4 00279484  7D 89 03 A6 */	mtctr r12
/* 802AFEC8 00279488  4E 80 04 21 */	bctrl 
/* 802AFECC 0027948C  2C 03 00 00 */	cmpwi r3, 0
/* 802AFED0 00279490  41 82 00 0C */	beq .L_802AFEDC
.L_802AFED4:
/* 802AFED4 00279494  38 00 00 00 */	li r0, 0
/* 802AFED8 00279498  48 00 00 90 */	b .L_802AFF68
.L_802AFEDC:
/* 802AFEDC 0027949C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802AFEE0 002794A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802AFEE4 002794A4  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 802AFEE8 002794A8  7D 89 03 A6 */	mtctr r12
/* 802AFEEC 002794AC  4E 80 04 21 */	bctrl 
/* 802AFEF0 002794B0  37 A3 FF FF */	addic. r29, r3, -1
/* 802AFEF4 002794B4  41 80 00 10 */	blt .L_802AFF04
/* 802AFEF8 002794B8  2C 1D 00 0A */	cmpwi r29, 0xa
/* 802AFEFC 002794BC  40 80 00 08 */	bge .L_802AFF04
/* 802AFF00 002794C0  48 00 00 08 */	b .L_802AFF08
.L_802AFF04:
/* 802AFF04 002794C4  3B A0 FF FF */	li r29, -1
.L_802AFF08:
/* 802AFF08 002794C8  7F E3 FB 78 */	mr r3, r31
/* 802AFF0C 002794CC  7F C4 F3 78 */	mr r4, r30
/* 802AFF10 002794D0  48 00 03 39 */	bl func_802B0248
/* 802AFF14 002794D4  2C 03 00 00 */	cmpwi r3, 0
/* 802AFF18 002794D8  41 80 00 0C */	blt .L_802AFF24
/* 802AFF1C 002794DC  2C 03 00 0C */	cmpwi r3, 0xc
/* 802AFF20 002794E0  41 80 00 0C */	blt .L_802AFF2C
.L_802AFF24:
/* 802AFF24 002794E4  38 60 00 00 */	li r3, 0
/* 802AFF28 002794E8  48 00 00 34 */	b .L_802AFF5C
.L_802AFF2C:
/* 802AFF2C 002794EC  2C 1D 00 00 */	cmpwi r29, 0
/* 802AFF30 002794F0  41 80 00 0C */	blt .L_802AFF3C
/* 802AFF34 002794F4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 802AFF38 002794F8  41 80 00 0C */	blt .L_802AFF44
.L_802AFF3C:
/* 802AFF3C 002794FC  38 60 00 00 */	li r3, 0
/* 802AFF40 00279500  48 00 00 1C */	b .L_802AFF5C
.L_802AFF44:
/* 802AFF44 00279504  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 802AFF48 00279508  3C 80 80 54 */	lis r4, lbl_8053E1C0@ha
/* 802AFF4C 0027950C  54 63 10 3A */	slwi r3, r3, 2
/* 802AFF50 00279510  38 84 E1 C0 */	addi r4, r4, lbl_8053E1C0@l
/* 802AFF54 00279514  7C 04 02 14 */	add r0, r4, r0
/* 802AFF58 00279518  7C 63 00 2E */	lwzx r3, r3, r0
.L_802AFF5C:
/* 802AFF5C 0027951C  38 03 FF FF */	addi r0, r3, -1
/* 802AFF60 00279520  7C 00 00 34 */	cntlzw r0, r0
/* 802AFF64 00279524  54 00 D9 7E */	srwi r0, r0, 5
.L_802AFF68:
/* 802AFF68 00279528  2C 00 00 00 */	cmpwi r0, 0
/* 802AFF6C 0027952C  41 82 00 0C */	beq .L_802AFF78
/* 802AFF70 00279530  38 A0 08 9E */	li r5, 0x89e
/* 802AFF74 00279534  48 00 01 1C */	b .L_802B0090
.L_802AFF78:
/* 802AFF78 00279538  38 60 00 64 */	li r3, 0x64
/* 802AFF7C 0027953C  48 18 5F 81 */	bl mtRand__2mlFi
/* 802AFF80 00279540  2C 03 00 19 */	cmpwi r3, 0x19
/* 802AFF84 00279544  40 80 00 DC */	bge .L_802B0060
/* 802AFF88 00279548  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 802AFF8C 0027954C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802AFF90 00279550  54 00 10 3A */	slwi r0, r0, 2
/* 802AFF94 00279554  7C 9F 02 14 */	add r4, r31, r0
/* 802AFF98 00279558  2C 03 00 00 */	cmpwi r3, 0
/* 802AFF9C 0027955C  83 A4 00 28 */	lwz r29, 0x28(r4)
/* 802AFFA0 00279560  41 82 00 1C */	beq .L_802AFFBC
/* 802AFFA4 00279564  81 83 00 00 */	lwz r12, 0(r3)
/* 802AFFA8 00279568  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AFFAC 0027956C  7D 89 03 A6 */	mtctr r12
/* 802AFFB0 00279570  4E 80 04 21 */	bctrl 
/* 802AFFB4 00279574  2C 03 00 00 */	cmpwi r3, 0
/* 802AFFB8 00279578  41 82 00 0C */	beq .L_802AFFC4
.L_802AFFBC:
/* 802AFFBC 0027957C  38 00 00 00 */	li r0, 0
/* 802AFFC0 00279580  48 00 00 90 */	b .L_802B0050
.L_802AFFC4:
/* 802AFFC4 00279584  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802AFFC8 00279588  81 83 00 00 */	lwz r12, 0(r3)
/* 802AFFCC 0027958C  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 802AFFD0 00279590  7D 89 03 A6 */	mtctr r12
/* 802AFFD4 00279594  4E 80 04 21 */	bctrl 
/* 802AFFD8 00279598  37 C3 FF FF */	addic. r30, r3, -1
/* 802AFFDC 0027959C  41 80 00 10 */	blt .L_802AFFEC
/* 802AFFE0 002795A0  2C 1E 00 0A */	cmpwi r30, 0xa
/* 802AFFE4 002795A4  40 80 00 08 */	bge .L_802AFFEC
/* 802AFFE8 002795A8  48 00 00 08 */	b .L_802AFFF0
.L_802AFFEC:
/* 802AFFEC 002795AC  3B C0 FF FF */	li r30, -1
.L_802AFFF0:
/* 802AFFF0 002795B0  7F E3 FB 78 */	mr r3, r31
/* 802AFFF4 002795B4  7F A4 EB 78 */	mr r4, r29
/* 802AFFF8 002795B8  48 00 02 51 */	bl func_802B0248
/* 802AFFFC 002795BC  2C 03 00 00 */	cmpwi r3, 0
/* 802B0000 002795C0  41 80 00 0C */	blt .L_802B000C
/* 802B0004 002795C4  2C 03 00 0C */	cmpwi r3, 0xc
/* 802B0008 002795C8  41 80 00 0C */	blt .L_802B0014
.L_802B000C:
/* 802B000C 002795CC  38 60 00 00 */	li r3, 0
/* 802B0010 002795D0  48 00 00 34 */	b .L_802B0044
.L_802B0014:
/* 802B0014 002795D4  2C 1E 00 00 */	cmpwi r30, 0
/* 802B0018 002795D8  41 80 00 0C */	blt .L_802B0024
/* 802B001C 002795DC  2C 1E 00 0A */	cmpwi r30, 0xa
/* 802B0020 002795E0  41 80 00 0C */	blt .L_802B002C
.L_802B0024:
/* 802B0024 002795E4  38 60 00 00 */	li r3, 0
/* 802B0028 002795E8  48 00 00 1C */	b .L_802B0044
.L_802B002C:
/* 802B002C 002795EC  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 802B0030 002795F0  3C 80 80 54 */	lis r4, lbl_8053E1C0@ha
/* 802B0034 002795F4  54 63 10 3A */	slwi r3, r3, 2
/* 802B0038 002795F8  38 84 E1 C0 */	addi r4, r4, lbl_8053E1C0@l
/* 802B003C 002795FC  7C 04 02 14 */	add r0, r4, r0
/* 802B0040 00279600  7C 63 00 2E */	lwzx r3, r3, r0
.L_802B0044:
/* 802B0044 00279604  38 03 FF FE */	addi r0, r3, -2
/* 802B0048 00279608  7C 00 00 34 */	cntlzw r0, r0
/* 802B004C 0027960C  54 00 D9 7E */	srwi r0, r0, 5
.L_802B0050:
/* 802B0050 00279610  2C 00 00 00 */	cmpwi r0, 0
/* 802B0054 00279614  41 82 00 0C */	beq .L_802B0060
/* 802B0058 00279618  38 A0 08 9F */	li r5, 0x89f
/* 802B005C 0027961C  48 00 00 34 */	b .L_802B0090
.L_802B0060:
/* 802B0060 00279620  A8 1F 00 34 */	lha r0, 0x34(r31)
/* 802B0064 00279624  2C 00 00 01 */	cmpwi r0, 1
/* 802B0068 00279628  41 82 00 14 */	beq .L_802B007C
/* 802B006C 0027962C  2C 00 00 02 */	cmpwi r0, 2
/* 802B0070 00279630  41 82 00 1C */	beq .L_802B008C
/* 802B0074 00279634  38 A0 02 61 */	li r5, 0x261
/* 802B0078 00279638  48 00 00 18 */	b .L_802B0090
.L_802B007C:
/* 802B007C 0027963C  38 60 00 02 */	li r3, 2
/* 802B0080 00279640  48 18 5E 7D */	bl mtRand__2mlFi
/* 802B0084 00279644  38 A3 02 5E */	addi r5, r3, 0x25e
/* 802B0088 00279648  48 00 00 08 */	b .L_802B0090
.L_802B008C:
/* 802B008C 0027964C  38 A0 02 60 */	li r5, 0x260
.L_802B0090:
/* 802B0090 00279650  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 802B0094 00279654  54 00 10 3A */	slwi r0, r0, 2
/* 802B0098 00279658  7C 7F 02 14 */	add r3, r31, r0
/* 802B009C 0027965C  80 83 00 28 */	lwz r4, 0x28(r3)
/* 802B00A0 00279660  2C 04 00 00 */	cmpwi r4, 0
/* 802B00A4 00279664  41 82 00 08 */	beq .L_802B00AC
/* 802B00A8 00279668  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802B00AC:
/* 802B00AC 0027966C  7F E3 FB 78 */	mr r3, r31
/* 802B00B0 00279670  4B FF 3B 95 */	bl func_802A3C44
/* 802B00B4 00279674  2C 03 00 00 */	cmpwi r3, 0
/* 802B00B8 00279678  40 82 00 18 */	bne .L_802B00D0
/* 802B00BC 0027967C  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802B00C0 00279680  7F E3 FB 78 */	mr r3, r31
/* 802B00C4 00279684  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B00C8 00279688  7D 89 03 A6 */	mtctr r12
/* 802B00CC 0027968C  4E 80 04 21 */	bctrl 
.L_802B00D0:
/* 802B00D0 00279690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B00D4 00279694  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B00D8 00279698  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B00DC 0027969C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B00E0 002796A0  7C 08 03 A6 */	mtlr r0
/* 802B00E4 002796A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802B00E8 002796A8  4E 80 00 20 */	blr 
.endfn func_802AFCC8

.fn func_802B00EC, global
/* 802B00EC 002796AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B00F0 002796B0  7C 08 02 A6 */	mflr r0
/* 802B00F4 002796B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B00F8 002796B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B00FC 002796BC  7C 7F 1B 78 */	mr r31, r3
/* 802B0100 002796C0  4B FF 3D 89 */	bl func_802A3E88
/* 802B0104 002796C4  2C 03 00 00 */	cmpwi r3, 0
/* 802B0108 002796C8  40 82 00 94 */	bne .L_802B019C
/* 802B010C 002796CC  3C 80 80 54 */	lis r4, lbl_8053E3C4@ha
/* 802B0110 002796D0  88 1F 00 3A */	lbz r0, 0x3a(r31)
/* 802B0114 002796D4  84 64 E3 C4 */	lwzu r3, lbl_8053E3C4@l(r4)
/* 802B0118 002796D8  2C 00 00 00 */	cmpwi r0, 0
/* 802B011C 002796DC  80 04 00 04 */	lwz r0, 4(r4)
/* 802B0120 002796E0  90 1F 00 04 */	stw r0, 4(r31)
/* 802B0124 002796E4  90 7F 00 00 */	stw r3, 0(r31)
/* 802B0128 002796E8  80 04 00 08 */	lwz r0, 8(r4)
/* 802B012C 002796EC  90 1F 00 08 */	stw r0, 8(r31)
/* 802B0130 002796F0  40 82 00 2C */	bne .L_802B015C
/* 802B0134 002796F4  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 802B0138 002796F8  A8 7F 00 38 */	lha r3, 0x38(r31)
/* 802B013C 002796FC  38 04 00 01 */	addi r0, r4, 1
/* 802B0140 00279700  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 802B0144 00279704  7C 00 07 34 */	extsh r0, r0
/* 802B0148 00279708  7C 03 00 00 */	cmpw r3, r0
/* 802B014C 0027970C  41 81 00 30 */	bgt .L_802B017C
/* 802B0150 00279710  38 00 00 00 */	li r0, 0
/* 802B0154 00279714  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 802B0158 00279718  48 00 00 24 */	b .L_802B017C
.L_802B015C:
/* 802B015C 0027971C  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 802B0160 00279720  38 03 FF FF */	addi r0, r3, -1
/* 802B0164 00279724  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 802B0168 00279728  7C 00 07 35 */	extsh. r0, r0
/* 802B016C 0027972C  40 80 00 10 */	bge .L_802B017C
/* 802B0170 00279730  A8 7F 00 38 */	lha r3, 0x38(r31)
/* 802B0174 00279734  38 03 FF FF */	addi r0, r3, -1
/* 802B0178 00279738  B0 1F 00 36 */	sth r0, 0x36(r31)
.L_802B017C:
/* 802B017C 0027973C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 802B0180 00279740  2C 00 00 00 */	cmpwi r0, 0
/* 802B0184 00279744  40 82 00 18 */	bne .L_802B019C
/* 802B0188 00279748  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802B018C 0027974C  7F E3 FB 78 */	mr r3, r31
/* 802B0190 00279750  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B0194 00279754  7D 89 03 A6 */	mtctr r12
/* 802B0198 00279758  4E 80 04 21 */	bctrl 
.L_802B019C:
/* 802B019C 0027975C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B01A0 00279760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B01A4 00279764  7C 08 03 A6 */	mtlr r0
/* 802B01A8 00279768  38 21 00 10 */	addi r1, r1, 0x10
/* 802B01AC 0027976C  4E 80 00 20 */	blr 
.endfn func_802B00EC

.fn func_802B01B0, global
/* 802B01B0 00279770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B01B4 00279774  7C 08 02 A6 */	mflr r0
/* 802B01B8 00279778  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B01BC 0027977C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B01C0 00279780  7C 9F 23 78 */	mr r31, r4
/* 802B01C4 00279784  93 C1 00 08 */	stw r30, 8(r1)
/* 802B01C8 00279788  7C 7E 1B 78 */	mr r30, r3
/* 802B01CC 0027978C  4B FF 3A 21 */	bl func_802A3BEC
/* 802B01D0 00279790  7F C5 F3 78 */	mr r5, r30
/* 802B01D4 00279794  38 C0 00 00 */	li r6, 0
/* 802B01D8 00279798  38 60 00 00 */	li r3, 0
/* 802B01DC 0027979C  48 00 00 28 */	b .L_802B0204
.L_802B01E0:
/* 802B01E0 002797A0  80 85 00 28 */	lwz r4, 0x28(r5)
/* 802B01E4 002797A4  2C 04 00 00 */	cmpwi r4, 0
/* 802B01E8 002797A8  41 82 00 08 */	beq .L_802B01F0
/* 802B01EC 002797AC  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802B01F0:
/* 802B01F0 002797B0  7C 04 F8 40 */	cmplw r4, r31
/* 802B01F4 002797B4  40 82 00 08 */	bne .L_802B01FC
/* 802B01F8 002797B8  90 65 00 28 */	stw r3, 0x28(r5)
.L_802B01FC:
/* 802B01FC 002797BC  38 A5 00 04 */	addi r5, r5, 4
/* 802B0200 002797C0  38 C6 00 01 */	addi r6, r6, 1
.L_802B0204:
/* 802B0204 002797C4  A8 1E 00 38 */	lha r0, 0x38(r30)
/* 802B0208 002797C8  7C 06 00 00 */	cmpw r6, r0
/* 802B020C 002797CC  41 80 FF D4 */	blt .L_802B01E0
/* 802B0210 002797D0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802B0214 002797D4  2C 03 00 00 */	cmpwi r3, 0
/* 802B0218 002797D8  41 82 00 08 */	beq .L_802B0220
/* 802B021C 002797DC  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802B0220:
/* 802B0220 002797E0  7C 03 F8 40 */	cmplw r3, r31
/* 802B0224 002797E4  40 82 00 0C */	bne .L_802B0230
/* 802B0228 002797E8  38 00 00 00 */	li r0, 0
/* 802B022C 002797EC  90 1E 00 24 */	stw r0, 0x24(r30)
.L_802B0230:
/* 802B0230 002797F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B0234 002797F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B0238 002797F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B023C 002797FC  7C 08 03 A6 */	mtlr r0
/* 802B0240 00279800  38 21 00 10 */	addi r1, r1, 0x10
/* 802B0244 00279804  4E 80 00 20 */	blr 
.endfn func_802B01B0

.fn func_802B0248, global
/* 802B0248 00279808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B024C 0027980C  7C 08 02 A6 */	mflr r0
/* 802B0250 00279810  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B0254 00279814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B0258 00279818  7C 9F 23 78 */	mr r31, r4
/* 802B025C 0027981C  7F E3 FB 78 */	mr r3, r31
/* 802B0260 00279820  4B FF 75 89 */	bl func_802A77E8
/* 802B0264 00279824  2C 03 00 01 */	cmpwi r3, 1
/* 802B0268 00279828  41 82 00 38 */	beq .L_802B02A0
/* 802B026C 0027982C  2C 03 00 02 */	cmpwi r3, 2
/* 802B0270 00279830  41 82 00 54 */	beq .L_802B02C4
/* 802B0274 00279834  2C 03 00 03 */	cmpwi r3, 3
/* 802B0278 00279838  41 82 00 54 */	beq .L_802B02CC
/* 802B027C 0027983C  2C 03 00 04 */	cmpwi r3, 4
/* 802B0280 00279840  41 82 00 64 */	beq .L_802B02E4
/* 802B0284 00279844  2C 03 00 05 */	cmpwi r3, 5
/* 802B0288 00279848  41 82 00 84 */	beq .L_802B030C
/* 802B028C 0027984C  2C 03 00 06 */	cmpwi r3, 6
/* 802B0290 00279850  41 82 00 84 */	beq .L_802B0314
/* 802B0294 00279854  2C 03 00 07 */	cmpwi r3, 7
/* 802B0298 00279858  41 82 00 84 */	beq .L_802B031C
/* 802B029C 0027985C  48 00 00 88 */	b .L_802B0324
.L_802B02A0:
/* 802B02A0 00279860  80 7F 33 74 */	lwz r3, 0x3374(r31)
/* 802B02A4 00279864  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 802B02A8 00279868  41 82 00 0C */	beq .L_802B02B4
/* 802B02AC 0027986C  38 60 00 01 */	li r3, 1
/* 802B02B0 00279870  48 00 00 78 */	b .L_802B0328
.L_802B02B4:
/* 802B02B4 00279874  54 60 8F FE */	rlwinm r0, r3, 0x11, 0x1f, 0x1f
/* 802B02B8 00279878  7C 00 00 D0 */	neg r0, r0
/* 802B02BC 0027987C  54 03 07 BC */	rlwinm r3, r0, 0, 0x1e, 0x1e
/* 802B02C0 00279880  48 00 00 68 */	b .L_802B0328
.L_802B02C4:
/* 802B02C4 00279884  38 60 00 03 */	li r3, 3
/* 802B02C8 00279888  48 00 00 60 */	b .L_802B0328
.L_802B02CC:
/* 802B02CC 0027988C  A0 7F 3F 28 */	lhz r3, 0x3f28(r31)
/* 802B02D0 00279890  38 03 FF F8 */	addi r0, r3, -8
/* 802B02D4 00279894  7C 00 00 34 */	cntlzw r0, r0
/* 802B02D8 00279898  54 03 D9 7E */	srwi r3, r0, 5
/* 802B02DC 0027989C  38 63 00 04 */	addi r3, r3, 4
/* 802B02E0 002798A0  48 00 00 48 */	b .L_802B0328
.L_802B02E4:
/* 802B02E4 002798A4  80 7F 33 74 */	lwz r3, 0x3374(r31)
/* 802B02E8 002798A8  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 802B02EC 002798AC  41 82 00 0C */	beq .L_802B02F8
/* 802B02F0 002798B0  38 60 00 07 */	li r3, 7
/* 802B02F4 002798B4  48 00 00 34 */	b .L_802B0328
.L_802B02F8:
/* 802B02F8 002798B8  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 802B02FC 002798BC  38 60 00 06 */	li r3, 6
/* 802B0300 002798C0  41 82 00 28 */	beq .L_802B0328
/* 802B0304 002798C4  38 60 00 08 */	li r3, 8
/* 802B0308 002798C8  48 00 00 20 */	b .L_802B0328
.L_802B030C:
/* 802B030C 002798CC  38 60 00 09 */	li r3, 9
/* 802B0310 002798D0  48 00 00 18 */	b .L_802B0328
.L_802B0314:
/* 802B0314 002798D4  38 60 00 0A */	li r3, 0xa
/* 802B0318 002798D8  48 00 00 10 */	b .L_802B0328
.L_802B031C:
/* 802B031C 002798DC  38 60 00 0B */	li r3, 0xb
/* 802B0320 002798E0  48 00 00 08 */	b .L_802B0328
.L_802B0324:
/* 802B0324 002798E4  38 60 FF FF */	li r3, -1
.L_802B0328:
/* 802B0328 002798E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B032C 002798EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B0330 002798F0  7C 08 03 A6 */	mtlr r0
/* 802B0334 002798F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B0338 002798F8  4E 80 00 20 */	blr 
.endfn func_802B0248

.fn func_802B033C, global
/* 802B033C 002798FC  38 60 00 1E */	li r3, 0x1e
/* 802B0340 00279900  4E 80 00 20 */	blr 
.endfn func_802B033C

.fn func_802B0344, global
/* 802B0344 00279904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B0348 00279908  7C 08 02 A6 */	mflr r0
/* 802B034C 0027990C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B0350 00279910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B0354 00279914  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802B0358 00279918  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 802B035C 0027991C  40 82 00 0C */	bne .L_802B0368
/* 802B0360 00279920  38 60 00 00 */	li r3, 0
/* 802B0364 00279924  48 00 00 2C */	b .L_802B0390
.L_802B0368:
/* 802B0368 00279928  2C 03 00 00 */	cmpwi r3, 0
/* 802B036C 0027992C  7C 7F 1B 78 */	mr r31, r3
/* 802B0370 00279930  41 82 00 08 */	beq .L_802B0378
/* 802B0374 00279934  3B E3 3E 9C */	addi r31, r3, 0x3e9c
.L_802B0378:
/* 802B0378 00279938  4B FF E9 95 */	bl func_802AED0C
/* 802B037C 0027993C  7C 64 1B 78 */	mr r4, r3
/* 802B0380 00279940  7F E3 FB 78 */	mr r3, r31
/* 802B0384 00279944  38 A0 00 1E */	li r5, 0x1e
/* 802B0388 00279948  4B FF 39 CD */	bl func_802A3D54
/* 802B038C 0027994C  38 60 00 00 */	li r3, 0
.L_802B0390:
/* 802B0390 00279950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B0394 00279954  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B0398 00279958  7C 08 03 A6 */	mtlr r0
/* 802B039C 0027995C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B03A0 00279960  4E 80 00 20 */	blr 
.endfn func_802B0344

.fn func_802B03A4, global
/* 802B03A4 00279964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B03A8 00279968  7C 08 02 A6 */	mflr r0
/* 802B03AC 0027996C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B03B0 00279970  4B FF E9 5D */	bl func_802AED0C
/* 802B03B4 00279974  7C 03 00 D0 */	neg r0, r3
/* 802B03B8 00279978  7C 00 18 78 */	andc r0, r0, r3
/* 802B03BC 0027997C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802B03C0 00279980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B03C4 00279984  7C 08 03 A6 */	mtlr r0
/* 802B03C8 00279988  38 21 00 10 */	addi r1, r1, 0x10
/* 802B03CC 0027998C  4E 80 00 20 */	blr
.endfn func_802B03A4

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CVS_THREAD_BATTLE_BEGIN_typestr, global
	.asciz "cf::CVS_THREAD_BATTLE_BEGIN"
.endobj cf_CVS_THREAD_BATTLE_BEGIN_typestr

.obj cf_EVS_THREAD_LIB_typestr, global
	.asciz "cf::EVS_THREAD_LIB"
	.balign 4
.endobj cf_EVS_THREAD_LIB_typestr

.obj cf_CVS_THREAD_LIB_typestr, global
	.asciz "cf::CVS_THREAD_LIB"
	.balign 4
	.4byte 0
.endobj cf_CVS_THREAD_LIB_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053E1C0, global
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_8053E1C0


.obj lbl_8053E3A0, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802AFC54
.endobj lbl_8053E3A0

.obj lbl_8053E3AC, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802AFCC8
.endobj lbl_8053E3AC

.obj lbl_8053E3B8, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B00EC
.endobj lbl_8053E3B8

.obj lbl_8053E3C4, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802AFCC8
.endobj lbl_8053E3C4


.obj __vt__cf_CVS_THREAD_BATTLE_BEGIN, global
	.4byte __RTTI__cf_CVS_THREAD_BATTLE_BEGIN
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802B01B0
	.4byte func_802B033C
	.4byte func_802A1EA0
	.4byte func_802A3740
	.4byte 0
.endobj __vt__cf_CVS_THREAD_BATTLE_BEGIN

.obj cf_CVS_THREAD_BATTLE_BEGIN_hierarchy, global
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0
	.4byte __RTTI__cf_EVS_THREAD_LIB
	.4byte 0x80000021
	.4byte 0x00000001
	.4byte __RTTI__cf_CVS_THREAD_LIB
	.4byte 0x00000021
	.4byte 0
.endobj cf_CVS_THREAD_BATTLE_BEGIN_hierarchy

.obj cf_EVS_THREAD_LIB_hierarchy, global
	.4byte __RTTI__cf_CVS_THREAD_LIB
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_EVS_THREAD_LIB_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__cf_CVS_THREAD_BATTLE_BEGIN, global
	.4byte cf_CVS_THREAD_BATTLE_BEGIN_typestr
	.4byte cf_CVS_THREAD_BATTLE_BEGIN_hierarchy
.endobj __RTTI__cf_CVS_THREAD_BATTLE_BEGIN

.obj __RTTI__cf_EVS_THREAD_LIB, global
	.4byte cf_EVS_THREAD_LIB_typestr
	.4byte cf_EVS_THREAD_LIB_hierarchy
.endobj __RTTI__cf_EVS_THREAD_LIB

.obj __RTTI__cf_CVS_THREAD_LIB, global
	.4byte cf_CVS_THREAD_LIB_typestr
	.4byte 0
.endobj __RTTI__cf_CVS_THREAD_LIB

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001B62C", local
.hidden "@etb_8001B62C"
	.4byte 0x20180000
	.4byte 0x0000012C
	.4byte 0x000E0018
	.4byte 0x00000188
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x00000178
	.4byte 0x00000008
	.4byte 0x8D000008
.endobj "@etb_8001B62C"

.obj "@etb_8001B658", local
.hidden "@etb_8001B658"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B658"

.obj "@etb_8001B660", local
.hidden "@etb_8001B660"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001B660"

.obj "@etb_8001B668", local
.hidden "@etb_8001B668"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B668"

.obj "@etb_8001B670", local
.hidden "@etb_8001B670"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001B670"

.obj "@etb_8001B678", local
.hidden "@etb_8001B678"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B678"

.obj "@etb_8001B680", local
.hidden "@etb_8001B680"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B680"

.obj "@etb_8001B688", local
.hidden "@etb_8001B688"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001B688"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800332F0", local
.hidden "@eti_800332F0"
	.4byte __ct__802AFA80
	.4byte 0x000001D4
	.4byte "@etb_8001B62C"
.endobj "@eti_800332F0"

.obj "@eti_800332FC", local
.hidden "@eti_800332FC"
	.4byte func_802AFC54
	.4byte 0x00000074
	.4byte "@etb_8001B658"
.endobj "@eti_800332FC"

.obj "@eti_80033308", local
.hidden "@eti_80033308"
	.4byte func_802AFCC8
	.4byte 0x00000424
	.4byte "@etb_8001B660"
.endobj "@eti_80033308"

.obj "@eti_80033314", local
.hidden "@eti_80033314"
	.4byte func_802B00EC
	.4byte 0x000000C4
	.4byte "@etb_8001B668"
.endobj "@eti_80033314"

.obj "@eti_80033320", local
.hidden "@eti_80033320"
	.4byte func_802B01B0
	.4byte 0x00000098
	.4byte "@etb_8001B670"
.endobj "@eti_80033320"

.obj "@eti_8003332C", local
.hidden "@eti_8003332C"
	.4byte func_802B0248
	.4byte 0x000000F4
	.4byte "@etb_8001B678"
.endobj "@eti_8003332C"

.obj "@eti_80033338", local
.hidden "@eti_80033338"
	.4byte func_802B0344
	.4byte 0x00000060
	.4byte "@etb_8001B680"
.endobj "@eti_80033338"

.obj "@eti_80033344", local
.hidden "@eti_80033344"
	.4byte func_802B03A4
	.4byte 0x0000002C
	.4byte "@etb_8001B688"
.endobj "@eti_80033344"
