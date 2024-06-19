.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__cf_CChainTime, global
/* 8027CDD4 00246394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027CDD8 00246398  7C 08 02 A6 */	mflr r0
/* 8027CDDC 0024639C  3C 80 80 53 */	lis r4, __vt__Q22cf10CChainTime@ha
/* 8027CDE0 002463A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027CDE4 002463A4  38 84 F5 44 */	addi r4, r4, __vt__Q22cf10CChainTime@l
/* 8027CDE8 002463A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027CDEC 002463AC  7C 7F 1B 78 */	mr r31, r3
/* 8027CDF0 002463B0  90 83 00 14 */	stw r4, 0x14(r3)
/* 8027CDF4 002463B4  38 63 00 08 */	addi r3, r3, 8
/* 8027CDF8 002463B8  48 02 3A E1 */	bl __ct__cf_CChainEffect
/* 8027CDFC 002463BC  C0 02 AF B0 */	lfs f0, float_8066B330@sda21(r2)
/* 8027CE00 002463C0  38 00 00 01 */	li r0, 1
/* 8027CE04 002463C4  38 80 00 00 */	li r4, 0
/* 8027CE08 002463C8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8027CE0C 002463CC  7F E3 FB 78 */	mr r3, r31
/* 8027CE10 002463D0  98 9F 00 04 */	stb r4, 4(r31)
/* 8027CE14 002463D4  98 1F 00 06 */	stb r0, 6(r31)
/* 8027CE18 002463D8  98 1F 00 05 */	stb r0, 5(r31)
/* 8027CE1C 002463DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027CE20 002463E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027CE24 002463E4  7C 08 03 A6 */	mtlr r0
/* 8027CE28 002463E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8027CE2C 002463EC  4E 80 00 20 */	blr 
.endfn __ct__cf_CChainTime

.fn func_8027CE30, global
/* 8027CE30 002463F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027CE34 002463F4  7C 08 02 A6 */	mflr r0
/* 8027CE38 002463F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027CE3C 002463FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027CE40 00246400  7C 7F 1B 78 */	mr r31, r3
/* 8027CE44 00246404  4B E5 C3 45 */	bl getBattleManagerInstancePtr__Fv
/* 8027CE48 00246408  C0 22 AF B0 */	lfs f1, float_8066B330@sda21(r2)
/* 8027CE4C 0024640C  38 80 00 13 */	li r4, 0x13
/* 8027CE50 00246410  4B E6 D6 35 */	bl func_800EA484
/* 8027CE54 00246414  88 1F 00 06 */	lbz r0, 6(r31)
/* 8027CE58 00246418  38 7F 00 08 */	addi r3, r31, 8
/* 8027CE5C 0024641C  38 80 00 00 */	li r4, 0
/* 8027CE60 00246420  38 A0 00 BB */	li r5, 0xbb
/* 8027CE64 00246424  2C 00 00 00 */	cmpwi r0, 0
/* 8027CE68 00246428  41 82 00 08 */	beq .L_8027CE70
/* 8027CE6C 0024642C  38 A0 00 B4 */	li r5, 0xb4
.L_8027CE70:
/* 8027CE70 00246430  38 C0 00 00 */	li r6, 0
/* 8027CE74 00246434  38 E0 00 00 */	li r7, 0
/* 8027CE78 00246438  39 00 00 00 */	li r8, 0
/* 8027CE7C 0024643C  48 02 3A D5 */	bl func_802A0950
/* 8027CE80 00246440  C0 02 AF B0 */	lfs f0, float_8066B330@sda21(r2)
/* 8027CE84 00246444  38 00 00 01 */	li r0, 1
/* 8027CE88 00246448  38 60 00 00 */	li r3, 0
/* 8027CE8C 0024644C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8027CE90 00246450  98 7F 00 04 */	stb r3, 4(r31)
/* 8027CE94 00246454  98 1F 00 06 */	stb r0, 6(r31)
/* 8027CE98 00246458  98 1F 00 05 */	stb r0, 5(r31)
/* 8027CE9C 0024645C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027CEA0 00246460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027CEA4 00246464  7C 08 03 A6 */	mtlr r0
/* 8027CEA8 00246468  38 21 00 10 */	addi r1, r1, 0x10
/* 8027CEAC 0024646C  4E 80 00 20 */	blr 
.endfn func_8027CE30

.fn func_8027CEB0, global
/* 8027CEB0 00246470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027CEB4 00246474  7C 08 02 A6 */	mflr r0
/* 8027CEB8 00246478  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027CEBC 0024647C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027CEC0 00246480  7C 9F 23 78 */	mr r31, r4
/* 8027CEC4 00246484  93 C1 00 08 */	stw r30, 8(r1)
/* 8027CEC8 00246488  7C 7E 1B 78 */	mr r30, r3
/* 8027CECC 0024648C  4B E5 C2 BD */	bl getBattleManagerInstancePtr__Fv
/* 8027CED0 00246490  C0 22 AF B0 */	lfs f1, float_8066B330@sda21(r2)
/* 8027CED4 00246494  38 80 00 13 */	li r4, 0x13
/* 8027CED8 00246498  4B E6 D5 AD */	bl func_800EA484
/* 8027CEDC 0024649C  88 1E 00 06 */	lbz r0, 6(r30)
/* 8027CEE0 002464A0  38 7E 00 08 */	addi r3, r30, 8
/* 8027CEE4 002464A4  38 80 00 00 */	li r4, 0
/* 8027CEE8 002464A8  38 A0 00 BB */	li r5, 0xbb
/* 8027CEEC 002464AC  2C 00 00 00 */	cmpwi r0, 0
/* 8027CEF0 002464B0  41 82 00 08 */	beq .L_8027CEF8
/* 8027CEF4 002464B4  38 A0 00 B4 */	li r5, 0xb4
.L_8027CEF8:
/* 8027CEF8 002464B8  38 C0 00 00 */	li r6, 0
/* 8027CEFC 002464BC  38 E0 00 00 */	li r7, 0
/* 8027CF00 002464C0  39 00 00 00 */	li r8, 0
/* 8027CF04 002464C4  48 02 3A 4D */	bl func_802A0950
/* 8027CF08 002464C8  C0 02 AF B0 */	lfs f0, float_8066B330@sda21(r2)
/* 8027CF0C 002464CC  38 60 00 00 */	li r3, 0
/* 8027CF10 002464D0  38 00 00 01 */	li r0, 1
/* 8027CF14 002464D4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8027CF18 002464D8  98 7E 00 04 */	stb r3, 4(r30)
/* 8027CF1C 002464DC  98 1E 00 05 */	stb r0, 5(r30)
/* 8027CF20 002464E0  9B FE 00 06 */	stb r31, 6(r30)
/* 8027CF24 002464E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027CF28 002464E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027CF2C 002464EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027CF30 002464F0  7C 08 03 A6 */	mtlr r0
/* 8027CF34 002464F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8027CF38 002464F8  4E 80 00 20 */	blr 
.endfn func_8027CEB0

.fn func_8027CF3C, global
/* 8027CF3C 002464FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027CF40 00246500  7C 08 02 A6 */	mflr r0
/* 8027CF44 00246504  C0 02 AF B0 */	lfs f0, float_8066B330@sda21(r2)
/* 8027CF48 00246508  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027CF4C 0024650C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8027CF50 00246510  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8027CF54 00246514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027CF58 00246518  7C 7F 1B 78 */	mr r31, r3
/* 8027CF5C 0024651C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8027CF60 00246520  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8027CF64 00246524  41 82 01 18 */	beq .L_8027D07C
/* 8027CF68 00246528  88 03 00 04 */	lbz r0, 4(r3)
/* 8027CF6C 0024652C  2C 00 00 00 */	cmpwi r0, 0
/* 8027CF70 00246530  41 82 00 80 */	beq .L_8027CFF0
/* 8027CF74 00246534  C0 02 AF B4 */	lfs f0, float_8066B334@sda21(r2)
/* 8027CF78 00246538  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8027CF7C 0024653C  40 82 00 10 */	bne .L_8027CF8C
/* 8027CF80 00246540  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8027CF84 00246544  2C 00 00 00 */	cmpwi r0, 0
/* 8027CF88 00246548  41 82 00 C4 */	beq .L_8027D04C
.L_8027CF8C:
/* 8027CF8C 0024654C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8027CF90 00246550  C0 02 AF B4 */	lfs f0, float_8066B334@sda21(r2)
/* 8027CF94 00246554  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8027CF98 00246558  4C 40 13 82 */	cror 2, 0, 2
/* 8027CF9C 0024655C  40 82 00 40 */	bne .L_8027CFDC
/* 8027CFA0 00246560  38 60 00 B8 */	li r3, 0xb8
/* 8027CFA4 00246564  38 80 00 00 */	li r4, 0
/* 8027CFA8 00246568  48 02 38 71 */	bl func_802A0818
/* 8027CFAC 0024656C  38 60 00 C1 */	li r3, 0xc1
/* 8027CFB0 00246570  38 80 00 00 */	li r4, 0
/* 8027CFB4 00246574  48 02 38 65 */	bl func_802A0818
/* 8027CFB8 00246578  38 60 00 C2 */	li r3, 0xc2
/* 8027CFBC 0024657C  38 80 00 00 */	li r4, 0
/* 8027CFC0 00246580  48 02 38 59 */	bl func_802A0818
/* 8027CFC4 00246584  38 60 00 C9 */	li r3, 0xc9
/* 8027CFC8 00246588  38 80 00 00 */	li r4, 0
/* 8027CFCC 0024658C  48 02 38 4D */	bl func_802A0818
/* 8027CFD0 00246590  38 60 00 CA */	li r3, 0xca
/* 8027CFD4 00246594  38 80 00 00 */	li r4, 0
/* 8027CFD8 00246598  48 02 38 41 */	bl func_802A0818
.L_8027CFDC:
/* 8027CFDC 0024659C  4B E5 C1 AD */	bl getBattleManagerInstancePtr__Fv
/* 8027CFE0 002465A0  FC 20 F8 90 */	fmr f1, f31
/* 8027CFE4 002465A4  38 80 00 13 */	li r4, 0x13
/* 8027CFE8 002465A8  4B E6 D4 9D */	bl func_800EA484
/* 8027CFEC 002465AC  48 00 00 60 */	b .L_8027D04C
.L_8027CFF0:
/* 8027CFF0 002465B0  C0 02 AF B4 */	lfs f0, float_8066B334@sda21(r2)
/* 8027CFF4 002465B4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8027CFF8 002465B8  4C 40 13 82 */	cror 2, 0, 2
/* 8027CFFC 002465BC  40 82 00 40 */	bne .L_8027D03C
/* 8027D000 002465C0  38 60 00 B8 */	li r3, 0xb8
/* 8027D004 002465C4  38 80 00 00 */	li r4, 0
/* 8027D008 002465C8  48 02 38 11 */	bl func_802A0818
/* 8027D00C 002465CC  38 60 00 C1 */	li r3, 0xc1
/* 8027D010 002465D0  38 80 00 00 */	li r4, 0
/* 8027D014 002465D4  48 02 38 05 */	bl func_802A0818
/* 8027D018 002465D8  38 60 00 C2 */	li r3, 0xc2
/* 8027D01C 002465DC  38 80 00 00 */	li r4, 0
/* 8027D020 002465E0  48 02 37 F9 */	bl func_802A0818
/* 8027D024 002465E4  38 60 00 C9 */	li r3, 0xc9
/* 8027D028 002465E8  38 80 00 00 */	li r4, 0
/* 8027D02C 002465EC  48 02 37 ED */	bl func_802A0818
/* 8027D030 002465F0  38 60 00 CA */	li r3, 0xca
/* 8027D034 002465F4  38 80 00 00 */	li r4, 0
/* 8027D038 002465F8  48 02 37 E1 */	bl func_802A0818
.L_8027D03C:
/* 8027D03C 002465FC  4B E5 C1 4D */	bl getBattleManagerInstancePtr__Fv
/* 8027D040 00246600  FC 20 F8 90 */	fmr f1, f31
/* 8027D044 00246604  38 80 00 13 */	li r4, 0x13
/* 8027D048 00246608  4B E6 D4 3D */	bl func_800EA484
.L_8027D04C:
/* 8027D04C 0024660C  88 1F 00 06 */	lbz r0, 6(r31)
/* 8027D050 00246610  38 7F 00 08 */	addi r3, r31, 8
/* 8027D054 00246614  88 9F 00 04 */	lbz r4, 4(r31)
/* 8027D058 00246618  38 A0 00 BB */	li r5, 0xbb
/* 8027D05C 0024661C  2C 00 00 00 */	cmpwi r0, 0
/* 8027D060 00246620  41 82 00 08 */	beq .L_8027D068
/* 8027D064 00246624  38 A0 00 B4 */	li r5, 0xb4
.L_8027D068:
/* 8027D068 00246628  38 C0 00 00 */	li r6, 0
/* 8027D06C 0024662C  38 E0 00 00 */	li r7, 0
/* 8027D070 00246630  39 00 00 00 */	li r8, 0
/* 8027D074 00246634  48 02 38 DD */	bl func_802A0950
/* 8027D078 00246638  48 00 00 4C */	b .L_8027D0C4
.L_8027D07C:
/* 8027D07C 0024663C  88 03 00 05 */	lbz r0, 5(r3)
/* 8027D080 00246640  2C 00 00 00 */	cmpwi r0, 0
/* 8027D084 00246644  41 82 00 14 */	beq .L_8027D098
/* 8027D088 00246648  4B E5 C1 01 */	bl getBattleManagerInstancePtr__Fv
/* 8027D08C 0024664C  C0 22 AF B0 */	lfs f1, float_8066B330@sda21(r2)
/* 8027D090 00246650  38 80 00 13 */	li r4, 0x13
/* 8027D094 00246654  4B E6 D3 F1 */	bl func_800EA484
.L_8027D098:
/* 8027D098 00246658  88 1F 00 06 */	lbz r0, 6(r31)
/* 8027D09C 0024665C  38 7F 00 08 */	addi r3, r31, 8
/* 8027D0A0 00246660  38 80 00 00 */	li r4, 0
/* 8027D0A4 00246664  38 A0 00 BB */	li r5, 0xbb
/* 8027D0A8 00246668  2C 00 00 00 */	cmpwi r0, 0
/* 8027D0AC 0024666C  41 82 00 08 */	beq .L_8027D0B4
/* 8027D0B0 00246670  38 A0 00 B4 */	li r5, 0xb4
.L_8027D0B4:
/* 8027D0B4 00246674  38 C0 00 00 */	li r6, 0
/* 8027D0B8 00246678  38 E0 00 00 */	li r7, 0
/* 8027D0BC 0024667C  39 00 00 00 */	li r8, 0
/* 8027D0C0 00246680  48 02 38 91 */	bl func_802A0950
.L_8027D0C4:
/* 8027D0C4 00246684  38 00 00 00 */	li r0, 0
/* 8027D0C8 00246688  98 1F 00 05 */	stb r0, 5(r31)
/* 8027D0CC 0024668C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8027D0D0 00246690  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8027D0D4 00246694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D0D8 00246698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027D0DC 0024669C  7C 08 03 A6 */	mtlr r0
/* 8027D0E0 002466A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8027D0E4 002466A4  4E 80 00 20 */	blr 
.endfn func_8027CF3C

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066B330, global
	.float 1.0
.endobj float_8066B330


.obj float_8066B334, global
	.float 0
.endobj float_8066B334

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80018A14", local
.hidden "@etb_80018A14"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80018A14"

.obj "@etb_80018A1C", local
.hidden "@etb_80018A1C"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80018A1C"

.obj "@etb_80018A24", local
.hidden "@etb_80018A24"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80018A24"

.obj "@etb_80018A2C", local
.hidden "@etb_80018A2C"
	.4byte 0x084A0000
	.4byte 0x00000000
.endobj "@etb_80018A2C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80031040", local
.hidden "@eti_80031040"
	.4byte __ct__cf_CChainTime
	.4byte 0x0000005C
	.4byte "@etb_80018A14"
.endobj "@eti_80031040"

.obj "@eti_8003104C", local
.hidden "@eti_8003104C"
	.4byte func_8027CE30
	.4byte 0x00000080
	.4byte "@etb_80018A1C"
.endobj "@eti_8003104C"

.obj "@eti_80031058", local
.hidden "@eti_80031058"
	.4byte func_8027CEB0
	.4byte 0x0000008C
	.4byte "@etb_80018A24"
.endobj "@eti_80031058"

.obj "@eti_80031064", local
.hidden "@eti_80031064"
	.4byte func_8027CF3C
	.4byte 0x000001AC
	.4byte "@etb_80018A2C"
.endobj "@eti_80031064"
