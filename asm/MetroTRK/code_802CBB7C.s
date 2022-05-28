.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802CBB7C
func_802CBB7C:
/* 802CBB7C 0029513C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBB80 00295140  2C 05 00 00 */	cmpwi r5, 0
/* 802CBB84 00295144  39 20 00 FF */	li r9, 0xff
/* 802CBB88 00295148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CBB8C 0029514C  93 C1 00 08 */	stw r30, 8(r1)
/* 802CBB90 00295150  7C 7E 1B 78 */	mr r30, r3
/* 802CBB94 00295154  41 82 01 14 */	beq lbl_802CBCA8
/* 802CBB98 00295158  54 A0 F8 7F */	rlwinm. r0, r5, 0x1f, 1, 0x1f
/* 802CBB9C 0029515C  7C 09 03 A6 */	mtctr r0
/* 802CBBA0 00295160  41 82 00 B0 */	beq lbl_802CBC50
lbl_802CBBA4:
/* 802CBBA4 00295164  57 CC 00 3A */	rlwinm r12, r30, 0, 0, 0x1d
/* 802CBBA8 00295168  54 8B 00 3A */	rlwinm r11, r4, 0, 0, 0x1d
/* 802CBBAC 0029516C  7C 0C F0 50 */	subf r0, r12, r30
/* 802CBBB0 00295170  80 EB 00 00 */	lwz r7, 0(r11)
/* 802CBBB4 00295174  21 40 00 03 */	subfic r10, r0, 3
/* 802CBBB8 00295178  7C CB 20 50 */	subf r6, r11, r4
/* 802CBBBC 0029517C  20 06 00 03 */	subfic r0, r6, 3
/* 802CBBC0 00295180  38 84 00 01 */	addi r4, r4, 1
/* 802CBBC4 00295184  54 00 18 38 */	slwi r0, r0, 3
/* 802CBBC8 00295188  55 5F 18 38 */	slwi r31, r10, 3
/* 802CBBCC 0029518C  7C E0 04 30 */	srw r0, r7, r0
/* 802CBBD0 00295190  54 8B 00 3A */	rlwinm r11, r4, 0, 0, 0x1d
/* 802CBBD4 00295194  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802CBBD8 00295198  81 0C 00 00 */	lwz r8, 0(r12)
/* 802CBBDC 0029519C  7D 2A F8 30 */	slw r10, r9, r31
/* 802CBBE0 002951A0  7C CB 20 50 */	subf r6, r11, r4
/* 802CBBE4 002951A4  7C 00 F8 30 */	slw r0, r0, r31
/* 802CBBE8 002951A8  3B DE 00 01 */	addi r30, r30, 1
/* 802CBBEC 002951AC  7D 07 50 78 */	andc r7, r8, r10
/* 802CBBF0 002951B0  38 84 00 01 */	addi r4, r4, 1
/* 802CBBF4 002951B4  7D 40 00 38 */	and r0, r10, r0
/* 802CBBF8 002951B8  7C E0 03 78 */	or r0, r7, r0
/* 802CBBFC 002951BC  90 0C 00 00 */	stw r0, 0(r12)
/* 802CBC00 002951C0  57 CC 00 3A */	rlwinm r12, r30, 0, 0, 0x1d
/* 802CBC04 002951C4  7C 0C F0 50 */	subf r0, r12, r30
/* 802CBC08 002951C8  80 EB 00 00 */	lwz r7, 0(r11)
/* 802CBC0C 002951CC  21 40 00 03 */	subfic r10, r0, 3
/* 802CBC10 002951D0  81 0C 00 00 */	lwz r8, 0(r12)
/* 802CBC14 002951D4  20 06 00 03 */	subfic r0, r6, 3
/* 802CBC18 002951D8  3B DE 00 01 */	addi r30, r30, 1
/* 802CBC1C 002951DC  54 00 18 38 */	slwi r0, r0, 3
/* 802CBC20 002951E0  55 5F 18 38 */	slwi r31, r10, 3
/* 802CBC24 002951E4  7C E0 04 30 */	srw r0, r7, r0
/* 802CBC28 002951E8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802CBC2C 002951EC  7D 2A F8 30 */	slw r10, r9, r31
/* 802CBC30 002951F0  7C 00 F8 30 */	slw r0, r0, r31
/* 802CBC34 002951F4  7D 07 50 78 */	andc r7, r8, r10
/* 802CBC38 002951F8  7D 40 00 38 */	and r0, r10, r0
/* 802CBC3C 002951FC  7C E0 03 78 */	or r0, r7, r0
/* 802CBC40 00295200  90 0C 00 00 */	stw r0, 0(r12)
/* 802CBC44 00295204  42 00 FF 60 */	bdnz lbl_802CBBA4
/* 802CBC48 00295208  70 A5 00 01 */	andi. r5, r5, 1
/* 802CBC4C 0029520C  41 82 00 5C */	beq lbl_802CBCA8
lbl_802CBC50:
/* 802CBC50 00295210  7C A9 03 A6 */	mtctr r5
lbl_802CBC54:
/* 802CBC54 00295214  57 CC 00 3A */	rlwinm r12, r30, 0, 0, 0x1d
/* 802CBC58 00295218  54 8B 00 3A */	rlwinm r11, r4, 0, 0, 0x1d
/* 802CBC5C 0029521C  7C 0C F0 50 */	subf r0, r12, r30
/* 802CBC60 00295220  80 EB 00 00 */	lwz r7, 0(r11)
/* 802CBC64 00295224  21 40 00 03 */	subfic r10, r0, 3
/* 802CBC68 00295228  7C CB 20 50 */	subf r6, r11, r4
/* 802CBC6C 0029522C  20 06 00 03 */	subfic r0, r6, 3
/* 802CBC70 00295230  81 0C 00 00 */	lwz r8, 0(r12)
/* 802CBC74 00295234  54 00 18 38 */	slwi r0, r0, 3
/* 802CBC78 00295238  55 5F 18 38 */	slwi r31, r10, 3
/* 802CBC7C 0029523C  7C E0 04 30 */	srw r0, r7, r0
/* 802CBC80 00295240  38 84 00 01 */	addi r4, r4, 1
/* 802CBC84 00295244  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802CBC88 00295248  7D 2A F8 30 */	slw r10, r9, r31
/* 802CBC8C 0029524C  7C 00 F8 30 */	slw r0, r0, r31
/* 802CBC90 00295250  3B DE 00 01 */	addi r30, r30, 1
/* 802CBC94 00295254  7D 07 50 78 */	andc r7, r8, r10
/* 802CBC98 00295258  7D 40 00 38 */	and r0, r10, r0
/* 802CBC9C 0029525C  7C E0 03 78 */	or r0, r7, r0
/* 802CBCA0 00295260  90 0C 00 00 */	stw r0, 0(r12)
/* 802CBCA4 00295264  42 00 FF B0 */	bdnz lbl_802CBC54
lbl_802CBCA8:
/* 802CBCA8 00295268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CBCAC 0029526C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CBCB0 00295270  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBCB4 00295274  4E 80 00 20 */	blr 

.global func_802CBCB8
func_802CBCB8:
/* 802CBCB8 00295278  2C 05 00 00 */	cmpwi r5, 0
/* 802CBCBC 0029527C  54 88 06 3E */	clrlwi r8, r4, 0x18
/* 802CBCC0 00295280  7C 67 1B 78 */	mr r7, r3
/* 802CBCC4 00295284  38 C0 00 FF */	li r6, 0xff
/* 802CBCC8 00295288  4D 82 00 20 */	beqlr 
/* 802CBCCC 0029528C  54 A0 F0 BF */	rlwinm. r0, r5, 0x1e, 2, 0x1f
/* 802CBCD0 00295290  7C 09 03 A6 */	mtctr r0
/* 802CBCD4 00295294  41 82 00 D0 */	beq lbl_802CBDA4
lbl_802CBCD8:
/* 802CBCD8 00295298  54 EA 00 3A */	rlwinm r10, r7, 0, 0, 0x1d
/* 802CBCDC 0029529C  7C 0A 38 50 */	subf r0, r10, r7
/* 802CBCE0 002952A0  80 8A 00 00 */	lwz r4, 0(r10)
/* 802CBCE4 002952A4  20 00 00 03 */	subfic r0, r0, 3
/* 802CBCE8 002952A8  38 E7 00 01 */	addi r7, r7, 1
/* 802CBCEC 002952AC  54 00 18 38 */	slwi r0, r0, 3
/* 802CBCF0 002952B0  7C C9 00 30 */	slw r9, r6, r0
/* 802CBCF4 002952B4  7D 00 00 30 */	slw r0, r8, r0
/* 802CBCF8 002952B8  7C 84 48 78 */	andc r4, r4, r9
/* 802CBCFC 002952BC  7D 20 00 38 */	and r0, r9, r0
/* 802CBD00 002952C0  7C 80 03 78 */	or r0, r4, r0
/* 802CBD04 002952C4  90 0A 00 00 */	stw r0, 0(r10)
/* 802CBD08 002952C8  54 EA 00 3A */	rlwinm r10, r7, 0, 0, 0x1d
/* 802CBD0C 002952CC  7C 0A 38 50 */	subf r0, r10, r7
/* 802CBD10 002952D0  80 8A 00 00 */	lwz r4, 0(r10)
/* 802CBD14 002952D4  20 00 00 03 */	subfic r0, r0, 3
/* 802CBD18 002952D8  38 E7 00 01 */	addi r7, r7, 1
/* 802CBD1C 002952DC  54 00 18 38 */	slwi r0, r0, 3
/* 802CBD20 002952E0  7C C9 00 30 */	slw r9, r6, r0
/* 802CBD24 002952E4  7D 00 00 30 */	slw r0, r8, r0
/* 802CBD28 002952E8  7C 84 48 78 */	andc r4, r4, r9
/* 802CBD2C 002952EC  7D 20 00 38 */	and r0, r9, r0
/* 802CBD30 002952F0  7C 80 03 78 */	or r0, r4, r0
/* 802CBD34 002952F4  90 0A 00 00 */	stw r0, 0(r10)
/* 802CBD38 002952F8  54 EA 00 3A */	rlwinm r10, r7, 0, 0, 0x1d
/* 802CBD3C 002952FC  7C 0A 38 50 */	subf r0, r10, r7
/* 802CBD40 00295300  80 8A 00 00 */	lwz r4, 0(r10)
/* 802CBD44 00295304  20 00 00 03 */	subfic r0, r0, 3
/* 802CBD48 00295308  38 E7 00 01 */	addi r7, r7, 1
/* 802CBD4C 0029530C  54 00 18 38 */	slwi r0, r0, 3
/* 802CBD50 00295310  7C C9 00 30 */	slw r9, r6, r0
/* 802CBD54 00295314  7D 00 00 30 */	slw r0, r8, r0
/* 802CBD58 00295318  7C 84 48 78 */	andc r4, r4, r9
/* 802CBD5C 0029531C  7D 20 00 38 */	and r0, r9, r0
/* 802CBD60 00295320  7C 80 03 78 */	or r0, r4, r0
/* 802CBD64 00295324  90 0A 00 00 */	stw r0, 0(r10)
/* 802CBD68 00295328  54 EA 00 3A */	rlwinm r10, r7, 0, 0, 0x1d
/* 802CBD6C 0029532C  7C 0A 38 50 */	subf r0, r10, r7
/* 802CBD70 00295330  80 8A 00 00 */	lwz r4, 0(r10)
/* 802CBD74 00295334  20 00 00 03 */	subfic r0, r0, 3
/* 802CBD78 00295338  38 E7 00 01 */	addi r7, r7, 1
/* 802CBD7C 0029533C  54 00 18 38 */	slwi r0, r0, 3
/* 802CBD80 00295340  7C C9 00 30 */	slw r9, r6, r0
/* 802CBD84 00295344  7D 00 00 30 */	slw r0, r8, r0
/* 802CBD88 00295348  7C 84 48 78 */	andc r4, r4, r9
/* 802CBD8C 0029534C  7D 20 00 38 */	and r0, r9, r0
/* 802CBD90 00295350  7C 80 03 78 */	or r0, r4, r0
/* 802CBD94 00295354  90 0A 00 00 */	stw r0, 0(r10)
/* 802CBD98 00295358  42 00 FF 40 */	bdnz lbl_802CBCD8
/* 802CBD9C 0029535C  70 A5 00 03 */	andi. r5, r5, 3
/* 802CBDA0 00295360  4D 82 00 20 */	beqlr 
lbl_802CBDA4:
/* 802CBDA4 00295364  7C A9 03 A6 */	mtctr r5
lbl_802CBDA8:
/* 802CBDA8 00295368  54 EA 00 3A */	rlwinm r10, r7, 0, 0, 0x1d
/* 802CBDAC 0029536C  7C 0A 38 50 */	subf r0, r10, r7
/* 802CBDB0 00295370  80 8A 00 00 */	lwz r4, 0(r10)
/* 802CBDB4 00295374  20 00 00 03 */	subfic r0, r0, 3
/* 802CBDB8 00295378  38 E7 00 01 */	addi r7, r7, 1
/* 802CBDBC 0029537C  54 00 18 38 */	slwi r0, r0, 3
/* 802CBDC0 00295380  7C C9 00 30 */	slw r9, r6, r0
/* 802CBDC4 00295384  7D 00 00 30 */	slw r0, r8, r0
/* 802CBDC8 00295388  7C 84 48 78 */	andc r4, r4, r9
/* 802CBDCC 0029538C  7D 20 00 38 */	and r0, r9, r0
/* 802CBDD0 00295390  7C 80 03 78 */	or r0, r4, r0
/* 802CBDD4 00295394  90 0A 00 00 */	stw r0, 0(r10)
/* 802CBDD8 00295398  42 00 FF D0 */	bdnz lbl_802CBDA8
/* 802CBDDC 0029539C  4E 80 00 20 */	blr 

.global func_802CBDE0
func_802CBDE0:
/* 802CBDE0 002953A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBDE4 002953A4  7C 08 02 A6 */	mflr r0
/* 802CBDE8 002953A8  38 80 00 00 */	li r4, 0
/* 802CBDEC 002953AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CBDF0 002953B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CBDF4 002953B4  3B E0 05 00 */	li r31, 0x500
/* 802CBDF8 002953B8  93 C1 00 08 */	stw r30, 8(r1)
/* 802CBDFC 002953BC  7C 7E 1B 78 */	mr r30, r3
/* 802CBE00 002953C0  48 00 17 B5 */	bl TRKSetBufferPosition
/* 802CBE04 002953C4  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 802CBE08 002953C8  28 00 00 1A */	cmplwi r0, 0x1a
/* 802CBE0C 002953CC  41 81 00 D8 */	bgt func_802CBEE4
/* 802CBE10 002953D0  3C 60 80 54 */	lis r3, lbl_8053FCD0@ha
/* 802CBE14 002953D4  54 00 10 3A */	slwi r0, r0, 2
/* 802CBE18 002953D8  38 63 FC D0 */	addi r3, r3, lbl_8053FCD0@l
/* 802CBE1C 002953DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 802CBE20 002953E0  7C 69 03 A6 */	mtctr r3
/* 802CBE24 002953E4  4E 80 04 20 */	bctr 

.global func_802CBE28
func_802CBE28:
/* 802CBE28 002953E8  7F C3 F3 78 */	mr r3, r30
/* 802CBE2C 002953EC  48 00 1E 6D */	bl func_802CDC98
/* 802CBE30 002953F0  7C 7F 1B 78 */	mr r31, r3
/* 802CBE34 002953F4  48 00 00 B0 */	b func_802CBEE4

.global func_802CBE38
func_802CBE38:
/* 802CBE38 002953F8  7F C3 F3 78 */	mr r3, r30
/* 802CBE3C 002953FC  48 00 1E CD */	bl func_802CDD08
/* 802CBE40 00295400  7C 7F 1B 78 */	mr r31, r3
/* 802CBE44 00295404  48 00 00 A0 */	b func_802CBEE4

.global func_802CBE48
func_802CBE48:
/* 802CBE48 00295408  7F C3 F3 78 */	mr r3, r30
/* 802CBE4C 0029540C  48 00 1F 45 */	bl func_802CDD90
/* 802CBE50 00295410  7C 7F 1B 78 */	mr r31, r3
/* 802CBE54 00295414  48 00 00 90 */	b func_802CBEE4

.global func_802CBE58
func_802CBE58:
/* 802CBE58 00295418  7F C3 F3 78 */	mr r3, r30
/* 802CBE5C 0029541C  48 00 1F A1 */	bl func_802CDDFC
/* 802CBE60 00295420  7C 7F 1B 78 */	mr r31, r3
/* 802CBE64 00295424  48 00 00 80 */	b func_802CBEE4

.global func_802CBE68
func_802CBE68:
/* 802CBE68 00295428  7F C3 F3 78 */	mr r3, r30
/* 802CBE6C 0029542C  48 00 1F FD */	bl func_802CDE68
/* 802CBE70 00295430  7C 7F 1B 78 */	mr r31, r3
/* 802CBE74 00295434  48 00 00 70 */	b func_802CBEE4

.global func_802CBE78
func_802CBE78:
/* 802CBE78 00295438  7F C3 F3 78 */	mr r3, r30
/* 802CBE7C 0029543C  48 00 22 21 */	bl func_802CE09C
/* 802CBE80 00295440  7C 7F 1B 78 */	mr r31, r3
/* 802CBE84 00295444  48 00 00 60 */	b func_802CBEE4

.global func_802CBE88
func_802CBE88:
/* 802CBE88 00295448  7F C3 F3 78 */	mr r3, r30
/* 802CBE8C 0029544C  48 00 24 21 */	bl func_802CE2AC
/* 802CBE90 00295450  7C 7F 1B 78 */	mr r31, r3
/* 802CBE94 00295454  48 00 00 50 */	b func_802CBEE4

.global func_802CBE98
func_802CBE98:
/* 802CBE98 00295458  7F C3 F3 78 */	mr r3, r30
/* 802CBE9C 0029545C  48 00 26 0D */	bl func_802CE4A8
/* 802CBEA0 00295460  7C 7F 1B 78 */	mr r31, r3
/* 802CBEA4 00295464  48 00 00 40 */	b func_802CBEE4

.global func_802CBEA8
func_802CBEA8:
/* 802CBEA8 00295468  7F C3 F3 78 */	mr r3, r30
/* 802CBEAC 0029546C  48 00 28 9D */	bl func_802CE748
/* 802CBEB0 00295470  7C 7F 1B 78 */	mr r31, r3
/* 802CBEB4 00295474  48 00 00 30 */	b func_802CBEE4

.global func_802CBEB8
func_802CBEB8:
/* 802CBEB8 00295478  7F C3 F3 78 */	mr r3, r30
/* 802CBEBC 0029547C  48 00 29 51 */	bl func_802CE80C
/* 802CBEC0 00295480  7C 7F 1B 78 */	mr r31, r3
/* 802CBEC4 00295484  48 00 00 20 */	b func_802CBEE4

.global func_802CBEC8
func_802CBEC8:
/* 802CBEC8 00295488  7F C3 F3 78 */	mr r3, r30
/* 802CBECC 0029548C  48 00 2B C5 */	bl func_802CEA90
/* 802CBED0 00295490  7C 7F 1B 78 */	mr r31, r3
/* 802CBED4 00295494  48 00 00 10 */	b func_802CBEE4

.global func_802CBED8
func_802CBED8:
/* 802CBED8 00295498  7F C3 F3 78 */	mr r3, r30
/* 802CBEDC 0029549C  48 00 2C 6D */	bl func_802CEB48
/* 802CBEE0 002954A0  7C 7F 1B 78 */	mr r31, r3
.global func_802CBEE4
func_802CBEE4:
/* 802CBEE4 002954A4  7F E3 FB 78 */	mr r3, r31
/* 802CBEE8 002954A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CBEEC 002954AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CBEF0 002954B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CBEF4 002954B4  7C 08 03 A6 */	mtlr r0
/* 802CBEF8 002954B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBEFC 002954BC  4E 80 00 20 */	blr 
