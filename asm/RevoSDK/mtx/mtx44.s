.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn C_MTXFrustum, global
/* 8034DE50 00317410  EC 04 18 28 */	fsubs f0, f4, f3
/* 8034DE54 00317414  C1 22 BD D0 */	lfs f9, float_8066C150@sda21(r2)
/* 8034DE58 00317418  C1 62 BD C8 */	lfs f11, float_8066C148@sda21(r2)
/* 8034DE5C 0031741C  ED 01 10 28 */	fsubs f8, f1, f2
/* 8034DE60 00317420  EC E6 28 28 */	fsubs f7, f6, f5
/* 8034DE64 00317424  C1 42 BD CC */	lfs f10, float_8066C14C@sda21(r2)
/* 8034DE68 00317428  ED 8B 00 24 */	fdivs f12, f11, f0
/* 8034DE6C 0031742C  C0 02 BD D4 */	lfs f0, float_8066C154@sda21(r2)
/* 8034DE70 00317430  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8034DE74 00317434  D1 23 00 04 */	stfs f9, 4(r3)
/* 8034DE78 00317438  D1 23 00 0C */	stfs f9, 0xc(r3)
/* 8034DE7C 0031743C  D1 23 00 10 */	stfs f9, 0x10(r3)
/* 8034DE80 00317440  ED 0B 40 24 */	fdivs f8, f11, f8
/* 8034DE84 00317444  D1 23 00 1C */	stfs f9, 0x1c(r3)
/* 8034DE88 00317448  D1 23 00 20 */	stfs f9, 0x20(r3)
/* 8034DE8C 0031744C  D1 23 00 24 */	stfs f9, 0x24(r3)
/* 8034DE90 00317450  D1 23 00 30 */	stfs f9, 0x30(r3)
/* 8034DE94 00317454  D1 23 00 34 */	stfs f9, 0x34(r3)
/* 8034DE98 00317458  EC 01 10 2A */	fadds f0, f1, f2
/* 8034DE9C 0031745C  D1 23 00 3C */	stfs f9, 0x3c(r3)
/* 8034DEA0 00317460  EC 64 18 2A */	fadds f3, f4, f3
/* 8034DEA4 00317464  ED 4A 01 72 */	fmuls f10, f10, f5
/* 8034DEA8 00317468  EC 08 00 32 */	fmuls f0, f8, f0
/* 8034DEAC 0031746C  EC 4C 00 F2 */	fmuls f2, f12, f3
/* 8034DEB0 00317470  EC 2A 02 32 */	fmuls f1, f10, f8
/* 8034DEB4 00317474  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8034DEB8 00317478  EC C6 01 72 */	fmuls f6, f6, f5
/* 8034DEBC 0031747C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8034DEC0 00317480  EC 8A 03 32 */	fmuls f4, f10, f12
/* 8034DEC4 00317484  EC 6B 38 24 */	fdivs f3, f11, f7
/* 8034DEC8 00317488  D0 83 00 00 */	stfs f4, 0(r3)
/* 8034DECC 0031748C  D0 43 00 08 */	stfs f2, 8(r3)
/* 8034DED0 00317490  FC 20 28 50 */	fneg f1, f5
/* 8034DED4 00317494  FC 00 30 50 */	fneg f0, f6
/* 8034DED8 00317498  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8034DEDC 0031749C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8034DEE0 003174A0  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8034DEE4 003174A4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8034DEE8 003174A8  4E 80 00 20 */	blr 
.endfn C_MTXFrustum

.balign 16, 0
.fn C_MTXPerspective, global
/* 8034DEF0 003174B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034DEF4 003174B4  7C 08 02 A6 */	mflr r0
/* 8034DEF8 003174B8  C0 A2 BD D8 */	lfs f5, float_8066C158@sda21(r2)
/* 8034DEFC 003174BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8034DF00 003174C0  EC 25 00 72 */	fmuls f1, f5, f1
/* 8034DF04 003174C4  C0 02 BD DC */	lfs f0, float_8066C15C@sda21(r2)
/* 8034DF08 003174C8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8034DF0C 003174CC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8034DF10 003174D0  FF E0 20 90 */	fmr f31, f4
/* 8034DF14 003174D4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8034DF18 003174D8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8034DF1C 003174DC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8034DF20 003174E0  FF C0 18 90 */	fmr f30, f3
/* 8034DF24 003174E4  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 8034DF28 003174E8  F3 A1 00 18 */	psq_st f29, 24(r1), 0, qr0
/* 8034DF2C 003174EC  FF A0 10 90 */	fmr f29, f2
/* 8034DF30 003174F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034DF34 003174F4  7C 7F 1B 78 */	mr r31, r3
/* 8034DF38 003174F8  4B F7 D2 51 */	bl tan
/* 8034DF3C 003174FC  FC 80 08 18 */	frsp f4, f1
/* 8034DF40 00317500  C0 62 BD D0 */	lfs f3, float_8066C150@sda21(r2)
/* 8034DF44 00317504  C0 A2 BD C8 */	lfs f5, float_8066C148@sda21(r2)
/* 8034DF48 00317508  EC 5F F0 28 */	fsubs f2, f31, f30
/* 8034DF4C 0031750C  C0 02 BD D4 */	lfs f0, float_8066C154@sda21(r2)
/* 8034DF50 00317510  EC 3F 07 B2 */	fmuls f1, f31, f30
/* 8034DF54 00317514  EC C5 20 24 */	fdivs f6, f5, f4
/* 8034DF58 00317518  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8034DF5C 0031751C  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8034DF60 00317520  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8034DF64 00317524  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 8034DF68 00317528  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 8034DF6C 0031752C  EC A5 10 24 */	fdivs f5, f5, f2
/* 8034DF70 00317530  D0 7F 00 18 */	stfs f3, 0x18(r31)
/* 8034DF74 00317534  D0 DF 00 14 */	stfs f6, 0x14(r31)
/* 8034DF78 00317538  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 8034DF7C 0031753C  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 8034DF80 00317540  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 8034DF84 00317544  EC 86 E8 24 */	fdivs f4, f6, f29
/* 8034DF88 00317548  D0 7F 00 30 */	stfs f3, 0x30(r31)
/* 8034DF8C 0031754C  D0 7F 00 34 */	stfs f3, 0x34(r31)
/* 8034DF90 00317550  D0 7F 00 3C */	stfs f3, 0x3c(r31)
/* 8034DF94 00317554  D0 9F 00 00 */	stfs f4, 0(r31)
/* 8034DF98 00317558  FC 00 08 50 */	fneg f0, f1
/* 8034DF9C 0031755C  FC 40 F0 50 */	fneg f2, f30
/* 8034DFA0 00317560  EC 05 00 32 */	fmuls f0, f5, f0
/* 8034DFA4 00317564  EC 22 01 72 */	fmuls f1, f2, f5
/* 8034DFA8 00317568  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8034DFAC 0031756C  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8034DFB0 00317570  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8034DFB4 00317574  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8034DFB8 00317578  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8034DFBC 0031757C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8034DFC0 00317580  E3 A1 00 18 */	psq_l f29, 24(r1), 0, qr0
/* 8034DFC4 00317584  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 8034DFC8 00317588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034DFCC 0031758C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034DFD0 00317590  7C 08 03 A6 */	mtlr r0
/* 8034DFD4 00317594  38 21 00 40 */	addi r1, r1, 0x40
/* 8034DFD8 00317598  4E 80 00 20 */	blr 
.endfn C_MTXPerspective

.balign 16, 0
.fn C_MTXOrtho, global
/* 8034DFE0 003175A0  ED 64 18 28 */	fsubs f11, f4, f3
/* 8034DFE4 003175A4  C1 02 BD D0 */	lfs f8, float_8066C150@sda21(r2)
/* 8034DFE8 003175A8  C1 42 BD C8 */	lfs f10, float_8066C148@sda21(r2)
/* 8034DFEC 003175AC  EC E1 10 28 */	fsubs f7, f1, f2
/* 8034DFF0 003175B0  EC 06 28 28 */	fsubs f0, f6, f5
/* 8034DFF4 003175B4  C1 22 BD CC */	lfs f9, float_8066C14C@sda21(r2)
/* 8034DFF8 003175B8  ED 8A 58 24 */	fdivs f12, f10, f11
/* 8034DFFC 003175BC  C0 A2 BD D4 */	lfs f5, float_8066C154@sda21(r2)
/* 8034E000 003175C0  D1 03 00 04 */	stfs f8, 4(r3)
/* 8034E004 003175C4  D1 03 00 08 */	stfs f8, 8(r3)
/* 8034E008 003175C8  D1 03 00 10 */	stfs f8, 0x10(r3)
/* 8034E00C 003175CC  D1 03 00 18 */	stfs f8, 0x18(r3)
/* 8034E010 003175D0  ED 6A 38 24 */	fdivs f11, f10, f7
/* 8034E014 003175D4  D1 03 00 20 */	stfs f8, 0x20(r3)
/* 8034E018 003175D8  D1 03 00 24 */	stfs f8, 0x24(r3)
/* 8034E01C 003175DC  D1 03 00 30 */	stfs f8, 0x30(r3)
/* 8034E020 003175E0  D1 03 00 34 */	stfs f8, 0x34(r3)
/* 8034E024 003175E4  D1 03 00 38 */	stfs f8, 0x38(r3)
/* 8034E028 003175E8  EC EA 00 24 */	fdivs f7, f10, f0
/* 8034E02C 003175EC  D1 43 00 3C */	stfs f10, 0x3c(r3)
/* 8034E030 003175F0  FC 00 30 50 */	fneg f0, f6
/* 8034E034 003175F4  EC 21 10 2A */	fadds f1, f1, f2
/* 8034E038 003175F8  EC 64 18 2A */	fadds f3, f4, f3
/* 8034E03C 003175FC  EC C9 03 32 */	fmuls f6, f9, f12
/* 8034E040 00317600  EC 00 01 F2 */	fmuls f0, f0, f7
/* 8034E044 00317604  FC 40 18 50 */	fneg f2, f3
/* 8034E048 00317608  D0 C3 00 00 */	stfs f6, 0(r3)
/* 8034E04C 0031760C  EC 69 02 F2 */	fmuls f3, f9, f11
/* 8034E050 00317610  FC 20 08 50 */	fneg f1, f1
/* 8034E054 00317614  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8034E058 00317618  EC 8C 00 B2 */	fmuls f4, f12, f2
/* 8034E05C 0031761C  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 8034E060 00317620  EC 4B 00 72 */	fmuls f2, f11, f1
/* 8034E064 00317624  EC 25 01 F2 */	fmuls f1, f5, f7
/* 8034E068 00317628  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 8034E06C 0031762C  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8034E070 00317630  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8034E074 00317634  4E 80 00 20 */	blr 
.endfn C_MTXOrtho

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066C148, global
	.float 1.0
.endobj float_8066C148


.obj float_8066C14C, global
	.float 2 #0x40000000
.endobj float_8066C14C


.obj float_8066C150, global
	.float 0
.endobj float_8066C150


.obj float_8066C154, global
	.float -1.0
.endobj float_8066C154


.obj float_8066C158, global
	.float 0.5
.endobj float_8066C158


.obj float_8066C15C, global
	.4byte 0x3C8EFA35
.endobj float_8066C15C
