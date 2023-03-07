.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SFD_SetConcatPlay, global
/* 803BFD38 003892F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFD3C 003892FC  7C 08 02 A6 */	mflr r0
/* 803BFD40 00389300  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFD44 00389304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BFD48 00389308  7C 7F 1B 78 */	mr r31, r3
/* 803BFD4C 0038930C  48 00 10 B9 */	bl SFLIB_CheckHn
/* 803BFD50 00389310  2C 03 00 00 */	cmpwi r3, 0
/* 803BFD54 00389314  41 82 00 18 */	beq .L_803BFD6C
/* 803BFD58 00389318  3C 80 FF 00 */	lis r4, 0xFF000161@ha
/* 803BFD5C 0038931C  38 60 00 00 */	li r3, 0
/* 803BFD60 00389320  38 84 01 61 */	addi r4, r4, 0xFF000161@l
/* 803BFD64 00389324  48 00 0E F1 */	bl SFLIB_SetErr
/* 803BFD68 00389328  48 00 00 18 */	b .L_803BFD80
.L_803BFD6C:
/* 803BFD6C 0038932C  7F E3 FB 78 */	mr r3, r31
/* 803BFD70 00389330  38 80 00 31 */	li r4, 0x31
/* 803BFD74 00389334  38 A0 00 01 */	li r5, 1
/* 803BFD78 00389338  48 00 C7 BD */	bl SFSET_SetCond
/* 803BFD7C 0038933C  38 60 00 00 */	li r3, 0
.L_803BFD80:
/* 803BFD80 00389340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFD84 00389344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BFD88 00389348  7C 08 03 A6 */	mtlr r0
/* 803BFD8C 0038934C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFD90 00389350  4E 80 00 20 */	blr 
.endfn SFD_SetConcatPlay

.fn SFCON_IsEndcodeSkip, global
/* 803BFD94 00389354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFD98 00389358  7C 08 02 A6 */	mflr r0
/* 803BFD9C 0038935C  38 80 00 31 */	li r4, 0x31
/* 803BFDA0 00389360  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFDA4 00389364  48 00 C8 D1 */	bl SFSET_GetCond
/* 803BFDA8 00389368  7C 03 00 D0 */	neg r0, r3
/* 803BFDAC 0038936C  7C 00 1B 78 */	or r0, r0, r3
/* 803BFDB0 00389370  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803BFDB4 00389374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFDB8 00389378  7C 08 03 A6 */	mtlr r0
/* 803BFDBC 0038937C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFDC0 00389380  4E 80 00 20 */	blr 
.endfn SFCON_IsEndcodeSkip

.fn SFCON_IsSystemEndcodeSkip, global
/* 803BFDC4 00389384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFDC8 00389388  7C 08 02 A6 */	mflr r0
/* 803BFDCC 0038938C  38 80 00 31 */	li r4, 0x31
/* 803BFDD0 00389390  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFDD4 00389394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BFDD8 00389398  7C 7F 1B 78 */	mr r31, r3
/* 803BFDDC 0038939C  48 00 C8 99 */	bl SFSET_GetCond
/* 803BFDE0 003893A0  2C 03 00 00 */	cmpwi r3, 0
/* 803BFDE4 003893A4  40 82 00 18 */	bne .L_803BFDFC
/* 803BFDE8 003893A8  7F E3 FB 78 */	mr r3, r31
/* 803BFDEC 003893AC  38 80 00 38 */	li r4, 0x38
/* 803BFDF0 003893B0  48 00 C8 85 */	bl SFSET_GetCond
/* 803BFDF4 003893B4  2C 03 00 00 */	cmpwi r3, 0
/* 803BFDF8 003893B8  41 82 00 0C */	beq .L_803BFE04
.L_803BFDFC:
/* 803BFDFC 003893BC  38 60 00 01 */	li r3, 1
/* 803BFE00 003893C0  48 00 00 08 */	b .L_803BFE08
.L_803BFE04:
/* 803BFE04 003893C4  38 60 00 00 */	li r3, 0
.L_803BFE08:
/* 803BFE08 003893C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFE0C 003893CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BFE10 003893D0  7C 08 03 A6 */	mtlr r0
/* 803BFE14 003893D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFE18 003893D8  4E 80 00 20 */	blr 
.endfn SFCON_IsSystemEndcodeSkip

.fn SFCON_IsVideoEndcodeSkip, global
/* 803BFE1C 003893DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFE20 003893E0  7C 08 02 A6 */	mflr r0
/* 803BFE24 003893E4  38 80 00 31 */	li r4, 0x31
/* 803BFE28 003893E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFE2C 003893EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BFE30 003893F0  7C 7F 1B 78 */	mr r31, r3
/* 803BFE34 003893F4  48 00 C8 41 */	bl SFSET_GetCond
/* 803BFE38 003893F8  2C 03 00 00 */	cmpwi r3, 0
/* 803BFE3C 003893FC  40 82 00 18 */	bne .L_803BFE54
/* 803BFE40 00389400  7F E3 FB 78 */	mr r3, r31
/* 803BFE44 00389404  38 80 00 39 */	li r4, 0x39
/* 803BFE48 00389408  48 00 C8 2D */	bl SFSET_GetCond
/* 803BFE4C 0038940C  2C 03 00 00 */	cmpwi r3, 0
/* 803BFE50 00389410  41 82 00 0C */	beq .L_803BFE5C
.L_803BFE54:
/* 803BFE54 00389414  38 60 00 01 */	li r3, 1
/* 803BFE58 00389418  48 00 00 08 */	b .L_803BFE60
.L_803BFE5C:
/* 803BFE5C 0038941C  38 60 00 00 */	li r3, 0
.L_803BFE60:
/* 803BFE60 00389420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFE64 00389424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BFE68 00389428  7C 08 03 A6 */	mtlr r0
/* 803BFE6C 0038942C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFE70 00389430  4E 80 00 20 */	blr 
.endfn SFCON_IsVideoEndcodeSkip

.fn SFCON_UpdateConcatTime, global
/* 803BFE74 00389434  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BFE78 00389438  7C 08 02 A6 */	mflr r0
/* 803BFE7C 0038943C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BFE80 00389440  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BFE84 00389444  3B E3 0D 90 */	addi r31, r3, 0xd90
/* 803BFE88 00389448  38 61 00 08 */	addi r3, r1, 8
/* 803BFE8C 0038944C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BFE90 00389450  7C 9E 23 78 */	mr r30, r4
/* 803BFE94 00389454  48 00 0F A5 */	bl SFLIB_LockCs
/* 803BFE98 00389458  80 BF 01 68 */	lwz r5, 0x168(r31)
/* 803BFE9C 0038945C  38 61 00 08 */	addi r3, r1, 8
/* 803BFEA0 00389460  80 9F 01 64 */	lwz r4, 0x164(r31)
/* 803BFEA4 00389464  38 A5 00 01 */	addi r5, r5, 1
/* 803BFEA8 00389468  7C C4 F2 14 */	add r6, r4, r30
/* 803BFEAC 0038946C  54 A0 D8 08 */	slwi r0, r5, 0x1b
/* 803BFEB0 00389470  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 803BFEB4 00389474  7C 04 00 50 */	subf r0, r4, r0
/* 803BFEB8 00389478  90 DF 01 64 */	stw r6, 0x164(r31)
/* 803BFEBC 0038947C  54 00 28 3E */	rotlwi r0, r0, 5
/* 803BFEC0 00389480  7C 00 22 14 */	add r0, r0, r4
/* 803BFEC4 00389484  54 00 10 3A */	slwi r0, r0, 2
/* 803BFEC8 00389488  7C 9F 02 14 */	add r4, r31, r0
/* 803BFECC 0038948C  90 C4 01 6C */	stw r6, 0x16c(r4)
/* 803BFED0 00389490  90 BF 01 68 */	stw r5, 0x168(r31)
/* 803BFED4 00389494  48 00 0F 69 */	bl SFLIB_UnlockCs
/* 803BFED8 00389498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BFEDC 0038949C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BFEE0 003894A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BFEE4 003894A4  7C 08 03 A6 */	mtlr r0
/* 803BFEE8 003894A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803BFEEC 003894AC  4E 80 00 20 */	blr
.endfn SFCON_UpdateConcatTime

.fn SFCON_WriteTotSmplQue, global
/* 803BFEF0 003894B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BFEF4 003894B4  7C 08 02 A6 */	mflr r0
/* 803BFEF8 003894B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BFEFC 003894BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BFF00 003894C0  3B E3 0D 90 */	addi r31, r3, 0xd90
/* 803BFF04 003894C4  38 61 00 08 */	addi r3, r1, 8
/* 803BFF08 003894C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BFF0C 003894CC  7C BE 2B 78 */	mr r30, r5
/* 803BFF10 003894D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BFF14 003894D4  7C 9D 23 78 */	mr r29, r4
/* 803BFF18 003894D8  48 00 0F 21 */	bl SFLIB_LockCs
/* 803BFF1C 003894DC  80 1F 01 FC */	lwz r0, 0x1fc(r31)
/* 803BFF20 003894E0  80 7F 01 F8 */	lwz r3, 0x1f8(r31)
/* 803BFF24 003894E4  7C 00 18 50 */	subf r0, r0, r3
/* 803BFF28 003894E8  2C 00 00 20 */	cmpwi r0, 0x20
/* 803BFF2C 003894EC  41 80 00 0C */	blt .L_803BFF38
/* 803BFF30 003894F0  3B C0 00 00 */	li r30, 0
/* 803BFF34 003894F4  48 00 00 44 */	b .L_803BFF78
.L_803BFF38:
/* 803BFF38 003894F8  54 60 D8 08 */	slwi r0, r3, 0x1b
/* 803BFF3C 003894FC  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803BFF40 00389500  7C 03 00 50 */	subf r0, r3, r0
/* 803BFF44 00389504  93 DF 01 EC */	stw r30, 0x1ec(r31)
/* 803BFF48 00389508  54 00 28 3E */	rotlwi r0, r0, 5
/* 803BFF4C 0038950C  3B C0 00 01 */	li r30, 1
/* 803BFF50 00389510  7C 00 1A 14 */	add r0, r0, r3
/* 803BFF54 00389514  54 00 10 3A */	slwi r0, r0, 2
/* 803BFF58 00389518  7C 7F 02 14 */	add r3, r31, r0
/* 803BFF5C 0038951C  93 A3 02 00 */	stw r29, 0x200(r3)
/* 803BFF60 00389520  80 7F 01 F8 */	lwz r3, 0x1f8(r31)
/* 803BFF64 00389524  80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 803BFF68 00389528  38 63 00 01 */	addi r3, r3, 1
/* 803BFF6C 0038952C  7C 00 EA 14 */	add r0, r0, r29
/* 803BFF70 00389530  90 7F 01 F8 */	stw r3, 0x1f8(r31)
/* 803BFF74 00389534  90 1F 01 F0 */	stw r0, 0x1f0(r31)
.L_803BFF78:
/* 803BFF78 00389538  38 61 00 08 */	addi r3, r1, 8
/* 803BFF7C 0038953C  48 00 0E C1 */	bl SFLIB_UnlockCs
/* 803BFF80 00389540  7F C3 F3 78 */	mr r3, r30
/* 803BFF84 00389544  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BFF88 00389548  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BFF8C 0038954C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803BFF90 00389550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BFF94 00389554  7C 08 03 A6 */	mtlr r0
/* 803BFF98 00389558  38 21 00 20 */	addi r1, r1, 0x20
/* 803BFF9C 0038955C  4E 80 00 20 */	blr 
.endfn SFCON_WriteTotSmplQue

.fn SFCON_ReadTotSmplQue, global
/* 803BFFA0 00389560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BFFA4 00389564  7C 08 02 A6 */	mflr r0
/* 803BFFA8 00389568  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BFFAC 0038956C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BFFB0 00389570  7C 9F 23 78 */	mr r31, r4
/* 803BFFB4 00389574  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BFFB8 00389578  3B C3 0D 90 */	addi r30, r3, 0xd90
/* 803BFFBC 0038957C  38 61 00 08 */	addi r3, r1, 8
/* 803BFFC0 00389580  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BFFC4 00389584  93 81 00 10 */	stw r28, 0x10(r1)
/* 803BFFC8 00389588  7C BC 2B 78 */	mr r28, r5
/* 803BFFCC 0038958C  48 00 0E 6D */	bl SFLIB_LockCs
/* 803BFFD0 00389590  80 7E 01 FC */	lwz r3, 0x1fc(r30)
/* 803BFFD4 00389594  80 1E 01 F8 */	lwz r0, 0x1f8(r30)
/* 803BFFD8 00389598  7C 03 00 51 */	subf. r0, r3, r0
/* 803BFFDC 0038959C  41 81 00 14 */	bgt .L_803BFFF0
/* 803BFFE0 003895A0  38 00 FF FF */	li r0, -1
/* 803BFFE4 003895A4  3B A0 00 00 */	li r29, 0
/* 803BFFE8 003895A8  90 1F 00 00 */	stw r0, 0(r31)
/* 803BFFEC 003895AC  48 00 00 44 */	b .L_803C0030
.L_803BFFF0:
/* 803BFFF0 003895B0  80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 803BFFF4 003895B4  3B A0 00 01 */	li r29, 1
/* 803BFFF8 003895B8  90 1C 00 00 */	stw r0, 0(r28)
/* 803BFFFC 003895BC  80 7E 01 FC */	lwz r3, 0x1fc(r30)
/* 803C0000 003895C0  54 60 D8 08 */	slwi r0, r3, 0x1b
/* 803C0004 003895C4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803C0008 003895C8  7C 03 00 50 */	subf r0, r3, r0
/* 803C000C 003895CC  54 00 28 3E */	rotlwi r0, r0, 5
/* 803C0010 003895D0  7C 00 1A 14 */	add r0, r0, r3
/* 803C0014 003895D4  54 00 10 3A */	slwi r0, r0, 2
/* 803C0018 003895D8  7C 7E 02 14 */	add r3, r30, r0
/* 803C001C 003895DC  80 03 02 00 */	lwz r0, 0x200(r3)
/* 803C0020 003895E0  90 1F 00 00 */	stw r0, 0(r31)
/* 803C0024 003895E4  80 7E 01 FC */	lwz r3, 0x1fc(r30)
/* 803C0028 003895E8  38 03 00 01 */	addi r0, r3, 1
/* 803C002C 003895EC  90 1E 01 FC */	stw r0, 0x1fc(r30)
.L_803C0030:
/* 803C0030 003895F0  38 61 00 08 */	addi r3, r1, 8
/* 803C0034 003895F4  48 00 0E 09 */	bl SFLIB_UnlockCs
/* 803C0038 003895F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C003C 003895FC  7F A3 EB 78 */	mr r3, r29
/* 803C0040 00389600  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C0044 00389604  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803C0048 00389608  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803C004C 0038960C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C0050 00389610  7C 08 03 A6 */	mtlr r0
/* 803C0054 00389614  38 21 00 20 */	addi r1, r1, 0x20
/* 803C0058 00389618  4E 80 00 20 */	blr 
.endfn SFCON_ReadTotSmplQue
