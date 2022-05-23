lbl_802DCAA0:.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

/* 802DCAA0 002A6060  2C 03 00 04 */	cmpwi r3, 4
/* 802DCAA4 002A6064  4C 82 00 20 */	bnelr 
/* 802DCAA8 002A6068  7C 83 07 74 */	extsb r3, r4
/* 802DCAAC 002A606C  48 00 17 14 */	b lbl_802DE1C0
/* 802DCAB0 002A6070  4E 80 00 20 */	blr 
/* 802DCAB4 002A6074  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DCAB8 002A6078  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DCABC 002A607C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DCAC0
func_802DCAC0:
/* 802DCAC0 002A6080  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802DCAC4 002A6084  7C 08 02 A6 */	mflr r0
/* 802DCAC8 002A6088  90 01 00 64 */	stw r0, 0x64(r1)
/* 802DCACC 002A608C  39 61 00 60 */	addi r11, r1, 0x60
/* 802DCAD0 002A6090  4B FD D6 51 */	bl _savegpr_14
/* 802DCAD4 002A6094  88 04 00 1E */	lbz r0, 0x1e(r4)
/* 802DCAD8 002A6098  7C 8F 23 78 */	mr r15, r4
/* 802DCADC 002A609C  3A 60 00 00 */	li r19, 0
/* 802DCAE0 002A60A0  28 00 00 02 */	cmplwi r0, 2
/* 802DCAE4 002A60A4  41 82 00 0C */	beq lbl_802DCAF0
/* 802DCAE8 002A60A8  38 60 00 00 */	li r3, 0
/* 802DCAEC 002A60AC  48 00 03 54 */	b lbl_802DCE40
lbl_802DCAF0:
/* 802DCAF0 002A60B0  3A 83 00 01 */	addi r20, r3, 1
/* 802DCAF4 002A60B4  54 60 0B FC */	rlwinm r0, r3, 1, 0xf, 0x1e
/* 802DCAF8 002A60B8  3F E0 80 5C */	lis r31, lbl_805BBC20@ha
/* 802DCAFC 002A60BC  7E C4 1A 14 */	add r22, r4, r3
/* 802DCB00 002A60C0  56 90 04 3E */	clrlwi r16, r20, 0x10
/* 802DCB04 002A60C4  54 77 13 BA */	rlwinm r23, r3, 2, 0xe, 0x1d
/* 802DCB08 002A60C8  7E A4 02 14 */	add r21, r4, r0
/* 802DCB0C 002A60CC  3B FF BC 20 */	addi r31, r31, lbl_805BBC20@l
/* 802DCB10 002A60D0  3B A0 00 00 */	li r29, 0
/* 802DCB14 002A60D4  3B C0 00 04 */	li r30, 4
/* 802DCB18 002A60D8  3B 82 BB B0 */	addi r28, r2, lbl_8066BF30@sda21
/* 802DCB1C 002A60DC  3B 20 00 03 */	li r25, 3
/* 802DCB20 002A60E0  3B 00 00 02 */	li r24, 2
/* 802DCB24 002A60E4  3D C0 80 54 */	lis r14, lbl_80543F60@ha
/* 802DCB28 002A60E8  3B 42 BB B8 */	addi r26, r2, lbl_8066BF38@sda21
/* 802DCB2C 002A60EC  3B 60 00 01 */	li r27, 1
lbl_802DCB30:
/* 802DCB30 002A60F0  56 03 06 3E */	clrlwi r3, r16, 0x18
/* 802DCB34 002A60F4  38 81 00 08 */	addi r4, r1, 8
/* 802DCB38 002A60F8  38 A0 00 01 */	li r5, 1
/* 802DCB3C 002A60FC  48 00 0F 85 */	bl func_802DDAC0
/* 802DCB40 002A6100  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 802DCB44 002A6104  41 82 02 F8 */	beq lbl_802DCE3C
/* 802DCB48 002A6108  88 16 00 1A */	lbz r0, 0x1a(r22)
/* 802DCB4C 002A610C  3A 20 00 00 */	li r17, 0
/* 802DCB50 002A6110  3A 73 00 01 */	addi r19, r19, 1
/* 802DCB54 002A6114  2C 00 00 00 */	cmpwi r0, 0
/* 802DCB58 002A6118  41 82 00 28 */	beq lbl_802DCB80
/* 802DCB5C 002A611C  2C 00 00 01 */	cmpwi r0, 1
/* 802DCB60 002A6120  41 82 00 C8 */	beq lbl_802DCC28
/* 802DCB64 002A6124  2C 00 00 02 */	cmpwi r0, 2
/* 802DCB68 002A6128  41 82 01 B8 */	beq lbl_802DCD20
/* 802DCB6C 002A612C  2C 00 00 03 */	cmpwi r0, 3
/* 802DCB70 002A6130  41 82 01 FC */	beq lbl_802DCD6C
/* 802DCB74 002A6134  2C 00 00 04 */	cmpwi r0, 4
/* 802DCB78 002A6138  41 82 02 8C */	beq lbl_802DCE04
/* 802DCB7C 002A613C  48 00 02 A0 */	b lbl_802DCE1C
lbl_802DCB80:
/* 802DCB80 002A6140  28 10 00 01 */	cmplwi r16, 1
/* 802DCB84 002A6144  40 82 00 18 */	bne lbl_802DCB9C
/* 802DCB88 002A6148  38 60 00 02 */	li r3, 2
/* 802DCB8C 002A614C  4B FF E8 65 */	bl func_802DB3F0
/* 802DCB90 002A6150  7C 6F B9 2E */	stwx r3, r15, r23
/* 802DCB94 002A6154  9B D6 00 14 */	stb r30, 0x14(r22)
/* 802DCB98 002A6158  48 00 00 38 */	b lbl_802DCBD0
lbl_802DCB9C:
/* 802DCB9C 002A615C  28 10 00 02 */	cmplwi r16, 2
/* 802DCBA0 002A6160  40 82 00 18 */	bne lbl_802DCBB8
/* 802DCBA4 002A6164  38 60 00 03 */	li r3, 3
/* 802DCBA8 002A6168  4B FF E8 49 */	bl func_802DB3F0
/* 802DCBAC 002A616C  7C 6F B9 2E */	stwx r3, r15, r23
/* 802DCBB0 002A6170  9B 16 00 14 */	stb r24, 0x14(r22)
/* 802DCBB4 002A6174  48 00 00 1C */	b lbl_802DCBD0
lbl_802DCBB8:
/* 802DCBB8 002A6178  28 10 00 03 */	cmplwi r16, 3
/* 802DCBBC 002A617C  40 82 02 60 */	bne lbl_802DCE1C
/* 802DCBC0 002A6180  38 60 00 01 */	li r3, 1
/* 802DCBC4 002A6184  4B FF E8 2D */	bl func_802DB3F0
/* 802DCBC8 002A6188  7C 6F B9 2E */	stwx r3, r15, r23
/* 802DCBCC 002A618C  9B 36 00 14 */	stb r25, 0x14(r22)
lbl_802DCBD0:
/* 802DCBD0 002A6190  7C 6F B8 2E */	lwzx r3, r15, r23
/* 802DCBD4 002A6194  2C 03 00 00 */	cmpwi r3, 0
/* 802DCBD8 002A6198  41 82 00 30 */	beq lbl_802DCC08
/* 802DCBDC 002A619C  B3 A3 00 02 */	sth r29, 2(r3)
/* 802DCBE0 002A61A0  88 16 00 14 */	lbz r0, 0x14(r22)
/* 802DCBE4 002A61A4  7C 6F B8 2E */	lwzx r3, r15, r23
/* 802DCBE8 002A61A8  54 00 08 3C */	slwi r0, r0, 1
/* 802DCBEC 002A61AC  7C 9A 02 14 */	add r4, r26, r0
/* 802DCBF0 002A61B0  A0 04 FF FE */	lhz r0, -2(r4)
/* 802DCBF4 002A61B4  B0 03 00 00 */	sth r0, 0(r3)
/* 802DCBF8 002A61B8  7C 6F B8 2E */	lwzx r3, r15, r23
/* 802DCBFC 002A61BC  B3 A3 00 04 */	sth r29, 4(r3)
/* 802DCC00 002A61C0  9B 76 00 1A */	stb r27, 0x1a(r22)
/* 802DCC04 002A61C4  48 00 00 14 */	b lbl_802DCC18
lbl_802DCC08:
/* 802DCC08 002A61C8  38 8E 3F 60 */	addi r4, r14, lbl_80543F60@l
/* 802DCC0C 002A61CC  3C 60 00 07 */	lis r3, 7
/* 802DCC10 002A61D0  48 00 13 91 */	bl func_802DDFA0
/* 802DCC14 002A61D4  9B 16 00 1A */	stb r24, 0x1a(r22)
lbl_802DCC18:
/* 802DCC18 002A61D8  88 16 00 14 */	lbz r0, 0x14(r22)
/* 802DCC1C 002A61DC  7C 7C 02 14 */	add r3, r28, r0
/* 802DCC20 002A61E0  88 03 FF FF */	lbz r0, -1(r3)
/* 802DCC24 002A61E4  B0 15 00 0C */	sth r0, 0xc(r21)
lbl_802DCC28:
/* 802DCC28 002A61E8  7C CF B8 2E */	lwzx r6, r15, r23
/* 802DCC2C 002A61EC  88 A1 00 08 */	lbz r5, 8(r1)
/* 802DCC30 002A61F0  A0 86 00 02 */	lhz r4, 2(r6)
/* 802DCC34 002A61F4  7C 66 22 14 */	add r3, r6, r4
/* 802DCC38 002A61F8  38 04 00 01 */	addi r0, r4, 1
/* 802DCC3C 002A61FC  98 A3 00 08 */	stb r5, 8(r3)
/* 802DCC40 002A6200  B0 06 00 02 */	sth r0, 2(r6)
/* 802DCC44 002A6204  A0 75 00 0C */	lhz r3, 0xc(r21)
/* 802DCC48 002A6208  38 03 FF FF */	addi r0, r3, -1
/* 802DCC4C 002A620C  B0 15 00 0C */	sth r0, 0xc(r21)
/* 802DCC50 002A6210  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 802DCC54 002A6214  40 82 00 C0 */	bne lbl_802DCD14
/* 802DCC58 002A6218  88 16 00 14 */	lbz r0, 0x14(r22)
/* 802DCC5C 002A621C  8A 41 00 08 */	lbz r18, 8(r1)
/* 802DCC60 002A6220  28 00 00 02 */	cmplwi r0, 2
/* 802DCC64 002A6224  40 82 00 44 */	bne lbl_802DCCA8
/* 802DCC68 002A6228  88 16 00 17 */	lbz r0, 0x17(r22)
/* 802DCC6C 002A622C  56 44 42 2E */	rlwinm r4, r18, 8, 8, 0x17
/* 802DCC70 002A6230  7C 6F B8 2E */	lwzx r3, r15, r23
/* 802DCC74 002A6234  7C 04 02 14 */	add r0, r4, r0
/* 802DCC78 002A6238  54 12 04 3E */	clrlwi r18, r0, 0x10
/* 802DCC7C 002A623C  48 01 CA 75 */	bl func_802F96F0
/* 802DCC80 002A6240  2C 03 00 00 */	cmpwi r3, 0
/* 802DCC84 002A6244  7C 6F B9 2E */	stwx r3, r15, r23
/* 802DCC88 002A6248  40 82 00 20 */	bne lbl_802DCCA8
/* 802DCC8C 002A624C  2C 12 00 00 */	cmpwi r18, 0
/* 802DCC90 002A6250  B2 55 00 0C */	sth r18, 0xc(r21)
/* 802DCC94 002A6254  40 82 00 0C */	bne lbl_802DCCA0
/* 802DCC98 002A6258  9B B6 00 1A */	stb r29, 0x1a(r22)
/* 802DCC9C 002A625C  48 00 01 80 */	b lbl_802DCE1C
lbl_802DCCA0:
/* 802DCCA0 002A6260  9B D6 00 1A */	stb r30, 0x1a(r22)
/* 802DCCA4 002A6264  48 00 01 78 */	b lbl_802DCE1C
lbl_802DCCA8:
/* 802DCCA8 002A6268  B2 55 00 0C */	sth r18, 0xc(r21)
/* 802DCCAC 002A626C  7C 6F B8 2E */	lwzx r3, r15, r23
/* 802DCCB0 002A6270  4B FF E9 A1 */	bl func_802DB650
/* 802DCCB4 002A6274  88 16 00 14 */	lbz r0, 0x14(r22)
/* 802DCCB8 002A6278  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 802DCCBC 002A627C  7C 7C 02 14 */	add r3, r28, r0
/* 802DCCC0 002A6280  88 03 FF FF */	lbz r0, -1(r3)
/* 802DCCC4 002A6284  7C 72 02 14 */	add r3, r18, r0
/* 802DCCC8 002A6288  38 03 00 08 */	addi r0, r3, 8
/* 802DCCCC 002A628C  7C 00 20 40 */	cmplw r0, r4
/* 802DCCD0 002A6290  40 81 00 28 */	ble lbl_802DCCF8
/* 802DCCD4 002A6294  7C 6F B8 2E */	lwzx r3, r15, r23
/* 802DCCD8 002A6298  4B FF E8 09 */	bl func_802DB4E0
/* 802DCCDC 002A629C  7F AF B9 2E */	stwx r29, r15, r23
/* 802DCCE0 002A62A0  3C 60 80 54 */	lis r3, lbl_80543F9C@ha
/* 802DCCE4 002A62A4  38 83 3F 9C */	addi r4, r3, lbl_80543F9C@l
/* 802DCCE8 002A62A8  9B D6 00 1A */	stb r30, 0x1a(r22)
/* 802DCCEC 002A62AC  3C 60 00 07 */	lis r3, 7
/* 802DCCF0 002A62B0  48 00 12 B1 */	bl func_802DDFA0
/* 802DCCF4 002A62B4  48 00 01 28 */	b lbl_802DCE1C
lbl_802DCCF8:
/* 802DCCF8 002A62B8  2C 12 00 00 */	cmpwi r18, 0
/* 802DCCFC 002A62BC  41 82 00 0C */	beq lbl_802DCD08
/* 802DCD00 002A62C0  9B 36 00 1A */	stb r25, 0x1a(r22)
/* 802DCD04 002A62C4  48 00 01 18 */	b lbl_802DCE1C
lbl_802DCD08:
/* 802DCD08 002A62C8  9B B6 00 1A */	stb r29, 0x1a(r22)
/* 802DCD0C 002A62CC  3A 20 00 01 */	li r17, 1
/* 802DCD10 002A62D0  48 00 01 0C */	b lbl_802DCE1C
lbl_802DCD14:
/* 802DCD14 002A62D4  88 01 00 08 */	lbz r0, 8(r1)
/* 802DCD18 002A62D8  98 16 00 17 */	stb r0, 0x17(r22)
/* 802DCD1C 002A62DC  48 00 01 00 */	b lbl_802DCE1C
lbl_802DCD20:
/* 802DCD20 002A62E0  A0 75 00 0C */	lhz r3, 0xc(r21)
/* 802DCD24 002A62E4  38 03 FF FF */	addi r0, r3, -1
/* 802DCD28 002A62E8  B0 15 00 0C */	sth r0, 0xc(r21)
/* 802DCD2C 002A62EC  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 802DCD30 002A62F0  40 82 00 30 */	bne lbl_802DCD60
/* 802DCD34 002A62F4  88 16 00 14 */	lbz r0, 0x14(r22)
/* 802DCD38 002A62F8  88 61 00 08 */	lbz r3, 8(r1)
/* 802DCD3C 002A62FC  28 00 00 02 */	cmplwi r0, 2
/* 802DCD40 002A6300  40 82 00 14 */	bne lbl_802DCD54
/* 802DCD44 002A6304  88 16 00 17 */	lbz r0, 0x17(r22)
/* 802DCD48 002A6308  54 63 42 2E */	rlwinm r3, r3, 8, 8, 0x17
/* 802DCD4C 002A630C  7C 03 02 14 */	add r0, r3, r0
/* 802DCD50 002A6310  54 03 04 3E */	clrlwi r3, r0, 0x10
lbl_802DCD54:
/* 802DCD54 002A6314  B0 75 00 0C */	sth r3, 0xc(r21)
/* 802DCD58 002A6318  9B D6 00 1A */	stb r30, 0x1a(r22)
/* 802DCD5C 002A631C  48 00 00 C0 */	b lbl_802DCE1C
lbl_802DCD60:
/* 802DCD60 002A6320  88 01 00 08 */	lbz r0, 8(r1)
/* 802DCD64 002A6324  98 16 00 17 */	stb r0, 0x17(r22)
/* 802DCD68 002A6328  48 00 00 B4 */	b lbl_802DCE1C
lbl_802DCD6C:
/* 802DCD6C 002A632C  7C EF B8 2E */	lwzx r7, r15, r23
/* 802DCD70 002A6330  56 83 06 3E */	clrlwi r3, r20, 0x18
/* 802DCD74 002A6334  88 C1 00 08 */	lbz r6, 8(r1)
/* 802DCD78 002A6338  A0 A7 00 02 */	lhz r5, 2(r7)
/* 802DCD7C 002A633C  7C 87 2A 14 */	add r4, r7, r5
/* 802DCD80 002A6340  38 05 00 01 */	addi r0, r5, 1
/* 802DCD84 002A6344  98 C4 00 08 */	stb r6, 8(r4)
/* 802DCD88 002A6348  B0 07 00 02 */	sth r0, 2(r7)
/* 802DCD8C 002A634C  A0 95 00 0C */	lhz r4, 0xc(r21)
/* 802DCD90 002A6350  38 04 FF FF */	addi r0, r4, -1
/* 802DCD94 002A6354  B0 15 00 0C */	sth r0, 0xc(r21)
/* 802DCD98 002A6358  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802DCD9C 002A635C  7C 8F B8 2E */	lwzx r4, r15, r23
/* 802DCDA0 002A6360  A0 04 00 02 */	lhz r0, 2(r4)
/* 802DCDA4 002A6364  7C 84 02 14 */	add r4, r4, r0
/* 802DCDA8 002A6368  38 84 00 08 */	addi r4, r4, 8
/* 802DCDAC 002A636C  48 00 0D 15 */	bl func_802DDAC0
/* 802DCDB0 002A6370  7C 8F B8 2E */	lwzx r4, r15, r23
/* 802DCDB4 002A6374  7E 73 1A 14 */	add r19, r19, r3
/* 802DCDB8 002A6378  A0 04 00 02 */	lhz r0, 2(r4)
/* 802DCDBC 002A637C  7C 00 1A 14 */	add r0, r0, r3
/* 802DCDC0 002A6380  B0 04 00 02 */	sth r0, 2(r4)
/* 802DCDC4 002A6384  A0 15 00 0C */	lhz r0, 0xc(r21)
/* 802DCDC8 002A6388  7C 03 00 50 */	subf r0, r3, r0
/* 802DCDCC 002A638C  B0 15 00 0C */	sth r0, 0xc(r21)
/* 802DCDD0 002A6390  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 802DCDD4 002A6394  40 82 00 48 */	bne lbl_802DCE1C
/* 802DCDD8 002A6398  88 16 00 14 */	lbz r0, 0x14(r22)
/* 802DCDDC 002A639C  28 00 00 02 */	cmplwi r0, 2
/* 802DCDE0 002A63A0  40 82 00 18 */	bne lbl_802DCDF8
/* 802DCDE4 002A63A4  48 01 CA DD */	bl func_802F98C0
/* 802DCDE8 002A63A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DCDEC 002A63AC  40 82 00 0C */	bne lbl_802DCDF8
/* 802DCDF0 002A63B0  9B B6 00 1A */	stb r29, 0x1a(r22)
/* 802DCDF4 002A63B4  48 00 00 28 */	b lbl_802DCE1C
lbl_802DCDF8:
/* 802DCDF8 002A63B8  9B B6 00 1A */	stb r29, 0x1a(r22)
/* 802DCDFC 002A63BC  3A 20 00 01 */	li r17, 1
/* 802DCE00 002A63C0  48 00 00 1C */	b lbl_802DCE1C
lbl_802DCE04:
/* 802DCE04 002A63C4  A0 75 00 0C */	lhz r3, 0xc(r21)
/* 802DCE08 002A63C8  38 03 FF FF */	addi r0, r3, -1
/* 802DCE0C 002A63CC  B0 15 00 0C */	sth r0, 0xc(r21)
/* 802DCE10 002A63D0  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 802DCE14 002A63D4  40 82 00 08 */	bne lbl_802DCE1C
/* 802DCE18 002A63D8  9B B6 00 1A */	stb r29, 0x1a(r22)
lbl_802DCE1C:
/* 802DCE1C 002A63DC  2C 11 00 00 */	cmpwi r17, 0
/* 802DCE20 002A63E0  41 82 FD 10 */	beq lbl_802DCB30
/* 802DCE24 002A63E4  88 7F 00 1F */	lbz r3, 0x1f(r31)
/* 802DCE28 002A63E8  38 80 00 00 */	li r4, 0
/* 802DCE2C 002A63EC  7C AF B8 2E */	lwzx r5, r15, r23
/* 802DCE30 002A63F0  4B FF E8 71 */	bl func_802DB6A0
/* 802DCE34 002A63F4  7F AF B9 2E */	stwx r29, r15, r23
/* 802DCE38 002A63F8  4B FF FC F8 */	b lbl_802DCB30
lbl_802DCE3C:
/* 802DCE3C 002A63FC  7E 63 9B 78 */	mr r3, r19
lbl_802DCE40:
/* 802DCE40 002A6400  39 61 00 60 */	addi r11, r1, 0x60
/* 802DCE44 002A6404  4B FD D3 29 */	bl _restgpr_14
/* 802DCE48 002A6408  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802DCE4C 002A640C  7C 08 03 A6 */	mtlr r0
/* 802DCE50 002A6410  38 21 00 60 */	addi r1, r1, 0x60
/* 802DCE54 002A6414  4E 80 00 20 */	blr 
/* 802DCE58 002A6418  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DCE5C 002A641C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DCE60
func_802DCE60:
/* 802DCE60 002A6420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DCE64 002A6424  7C 08 02 A6 */	mflr r0
/* 802DCE68 002A6428  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DCE6C 002A642C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DCE70 002A6430  4B FD D2 E5 */	bl _savegpr_27
/* 802DCE74 002A6434  A0 A4 00 00 */	lhz r5, 0(r4)
/* 802DCE78 002A6438  7C 9B 23 78 */	mr r27, r4
/* 802DCE7C 002A643C  A0 04 00 04 */	lhz r0, 4(r4)
/* 802DCE80 002A6440  28 05 21 00 */	cmplwi r5, 0x2100
/* 802DCE84 002A6444  7C 64 02 14 */	add r3, r4, r0
/* 802DCE88 002A6448  38 C3 00 08 */	addi r6, r3, 8
/* 802DCE8C 002A644C  40 82 00 0C */	bne lbl_802DCE98
/* 802DCE90 002A6450  3B 80 00 02 */	li r28, 2
/* 802DCE94 002A6454  48 00 00 20 */	b lbl_802DCEB4
lbl_802DCE98:
/* 802DCE98 002A6458  28 05 22 00 */	cmplwi r5, 0x2200
/* 802DCE9C 002A645C  40 82 00 0C */	bne lbl_802DCEA8
/* 802DCEA0 002A6460  3B 80 00 03 */	li r28, 3
/* 802DCEA4 002A6464  48 00 00 10 */	b lbl_802DCEB4
lbl_802DCEA8:
/* 802DCEA8 002A6468  28 05 20 00 */	cmplwi r5, 0x2000
/* 802DCEAC 002A646C  40 82 00 08 */	bne lbl_802DCEB4
/* 802DCEB0 002A6470  3B 80 00 00 */	li r28, 0
lbl_802DCEB4:
/* 802DCEB4 002A6474  28 05 21 00 */	cmplwi r5, 0x2100
/* 802DCEB8 002A6478  40 82 01 20 */	bne lbl_802DCFD8
/* 802DCEBC 002A647C  3C 60 80 5C */	lis r3, lbl_805BF4D0@ha
/* 802DCEC0 002A6480  A0 84 00 02 */	lhz r4, 2(r4)
/* 802DCEC4 002A6484  3B C3 F4 D0 */	addi r30, r3, lbl_805BF4D0@l
/* 802DCEC8 002A6488  A0 1E 00 7E */	lhz r0, 0x7e(r30)
/* 802DCECC 002A648C  7C 04 00 40 */	cmplw r4, r0
/* 802DCED0 002A6490  40 81 01 08 */	ble lbl_802DCFD8
/* 802DCED4 002A6494  88 06 00 01 */	lbz r0, 1(r6)
/* 802DCED8 002A6498  88 66 00 00 */	lbz r3, 0(r6)
/* 802DCEDC 002A649C  38 C6 00 02 */	addi r6, r6, 2
/* 802DCEE0 002A64A0  54 00 44 2E */	rlwinm r0, r0, 8, 0x10, 0x17
/* 802DCEE4 002A64A4  7C 03 02 14 */	add r0, r3, r0
/* 802DCEE8 002A64A8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802DCEEC 002A64AC  70 00 CF FF */	andi. r0, r0, 0xcfff
/* 802DCEF0 002A64B0  60 1F 10 00 */	ori r31, r0, 0x1000
/* 802DCEF4 002A64B4  7F FD 46 70 */	srawi r29, r31, 8
/* 802DCEF8 002A64B8  48 00 00 D0 */	b lbl_802DCFC8
lbl_802DCEFC:
/* 802DCEFC 002A64BC  7C C4 33 78 */	mr r4, r6
/* 802DCF00 002A64C0  7F 83 E3 78 */	mr r3, r28
/* 802DCF04 002A64C4  7F 66 DB 78 */	mr r6, r27
/* 802DCF08 002A64C8  48 00 0B C9 */	bl func_802DDAD0
/* 802DCF0C 002A64CC  A0 7B 00 04 */	lhz r3, 4(r27)
/* 802DCF10 002A64D0  A0 1E 00 7C */	lhz r0, 0x7c(r30)
/* 802DCF14 002A64D4  A0 9B 00 02 */	lhz r4, 2(r27)
/* 802DCF18 002A64D8  7C 03 02 14 */	add r0, r3, r0
/* 802DCF1C 002A64DC  B0 1B 00 04 */	sth r0, 4(r27)
/* 802DCF20 002A64E0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802DCF24 002A64E4  A0 BE 00 7C */	lhz r5, 0x7c(r30)
/* 802DCF28 002A64E8  7C 7B 02 14 */	add r3, r27, r0
/* 802DCF2C 002A64EC  38 C3 00 0A */	addi r6, r3, 0xa
/* 802DCF30 002A64F0  7C 05 20 50 */	subf r0, r5, r4
/* 802DCF34 002A64F4  B0 1B 00 02 */	sth r0, 2(r27)
/* 802DCF38 002A64F8  9B E3 00 08 */	stb r31, 8(r3)
/* 802DCF3C 002A64FC  9B A3 00 09 */	stb r29, 9(r3)
/* 802DCF40 002A6500  A0 7B 00 02 */	lhz r3, 2(r27)
/* 802DCF44 002A6504  A0 1E 00 7E */	lhz r0, 0x7e(r30)
/* 802DCF48 002A6508  7C 03 00 40 */	cmplw r3, r0
/* 802DCF4C 002A650C  40 81 00 20 */	ble lbl_802DCF6C
/* 802DCF50 002A6510  A0 1E 00 7C */	lhz r0, 0x7c(r30)
/* 802DCF54 002A6514  98 06 00 00 */	stb r0, 0(r6)
/* 802DCF58 002A6518  A0 1E 00 7C */	lhz r0, 0x7c(r30)
/* 802DCF5C 002A651C  7C 00 46 70 */	srawi r0, r0, 8
/* 802DCF60 002A6520  98 06 00 01 */	stb r0, 1(r6)
/* 802DCF64 002A6524  38 C6 00 02 */	addi r6, r6, 2
/* 802DCF68 002A6528  48 00 00 20 */	b lbl_802DCF88
lbl_802DCF6C:
/* 802DCF6C 002A652C  38 03 FF FC */	addi r0, r3, -4
/* 802DCF70 002A6530  98 06 00 00 */	stb r0, 0(r6)
/* 802DCF74 002A6534  A0 7B 00 02 */	lhz r3, 2(r27)
/* 802DCF78 002A6538  38 03 FF FC */	addi r0, r3, -4
/* 802DCF7C 002A653C  7C 00 46 70 */	srawi r0, r0, 8
/* 802DCF80 002A6540  98 06 00 01 */	stb r0, 1(r6)
/* 802DCF84 002A6544  38 C6 00 02 */	addi r6, r6, 2
lbl_802DCF88:
/* 802DCF88 002A6548  A0 7B 00 06 */	lhz r3, 6(r27)
/* 802DCF8C 002A654C  2C 03 00 00 */	cmpwi r3, 0
/* 802DCF90 002A6550  41 82 00 38 */	beq lbl_802DCFC8
/* 802DCF94 002A6554  38 03 FF FF */	addi r0, r3, -1
/* 802DCF98 002A6558  B0 1B 00 06 */	sth r0, 6(r27)
/* 802DCF9C 002A655C  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 802DCFA0 002A6560  40 82 00 28 */	bne lbl_802DCFC8
/* 802DCFA4 002A6564  38 00 19 00 */	li r0, 0x1900
/* 802DCFA8 002A6568  3C 60 80 5C */	lis r3, lbl_805BBC20@ha
/* 802DCFAC 002A656C  B0 1B 00 00 */	sth r0, 0(r27)
/* 802DCFB0 002A6570  38 63 BC 20 */	addi r3, r3, lbl_805BBC20@l
/* 802DCFB4 002A6574  7F 65 DB 78 */	mr r5, r27
/* 802DCFB8 002A6578  38 80 00 00 */	li r4, 0
/* 802DCFBC 002A657C  88 63 00 1F */	lbz r3, 0x1f(r3)
/* 802DCFC0 002A6580  4B FF E6 E1 */	bl func_802DB6A0
/* 802DCFC4 002A6584  48 00 00 30 */	b lbl_802DCFF4
lbl_802DCFC8:
/* 802DCFC8 002A6588  A0 BE 00 7E */	lhz r5, 0x7e(r30)
/* 802DCFCC 002A658C  A0 1B 00 02 */	lhz r0, 2(r27)
/* 802DCFD0 002A6590  7C 00 28 40 */	cmplw r0, r5
/* 802DCFD4 002A6594  41 81 FF 28 */	bgt lbl_802DCEFC
lbl_802DCFD8:
/* 802DCFD8 002A6598  A0 BB 00 02 */	lhz r5, 2(r27)
/* 802DCFDC 002A659C  7C C4 33 78 */	mr r4, r6
/* 802DCFE0 002A65A0  7F 83 E3 78 */	mr r3, r28
/* 802DCFE4 002A65A4  7F 66 DB 78 */	mr r6, r27
/* 802DCFE8 002A65A8  48 00 0A E9 */	bl func_802DDAD0
/* 802DCFEC 002A65AC  7F 63 DB 78 */	mr r3, r27
/* 802DCFF0 002A65B0  4B FF E4 F1 */	bl func_802DB4E0
lbl_802DCFF4:
/* 802DCFF4 002A65B4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DCFF8 002A65B8  4B FD D1 A9 */	bl _restgpr_27
/* 802DCFFC 002A65BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DD000 002A65C0  7C 08 03 A6 */	mtlr r0
/* 802DD004 002A65C4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DD008 002A65C8  4E 80 00 20 */	blr 
/* 802DD00C 002A65CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global lbl_802DD010
lbl_802DD010:
/* 802DD010 002A65D0  3C C0 80 5C */	lis r6, lbl_805BBC20@ha
/* 802DD014 002A65D4  38 00 00 00 */	li r0, 0
/* 802DD018 002A65D8  38 C6 BC 20 */	addi r6, r6, lbl_805BBC20@l
/* 802DD01C 002A65DC  98 06 00 1E */	stb r0, 0x1e(r6)
/* 802DD020 002A65E0  98 06 00 1A */	stb r0, 0x1a(r6)
/* 802DD024 002A65E4  98 06 00 1B */	stb r0, 0x1b(r6)
/* 802DD028 002A65E8  98 06 00 1C */	stb r0, 0x1c(r6)
/* 802DD02C 002A65EC  98 66 00 1F */	stb r3, 0x1f(r6)
/* 802DD030 002A65F0  98 86 00 20 */	stb r4, 0x20(r6)
/* 802DD034 002A65F4  B0 A6 00 12 */	sth r5, 0x12(r6)
/* 802DD038 002A65F8  4E 80 00 20 */	blr 
/* 802DD03C 002A65FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global lbl_802DD040
lbl_802DD040:
/* 802DD040 002A6600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DD044 002A6604  7C 08 02 A6 */	mflr r0
/* 802DD048 002A6608  3C A0 80 5C */	lis r5, lbl_805BBC20@ha
/* 802DD04C 002A660C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DD050 002A6610  38 00 00 00 */	li r0, 0
/* 802DD054 002A6614  38 A5 BC 20 */	addi r5, r5, lbl_805BBC20@l
/* 802DD058 002A6618  98 01 00 13 */	stb r0, 0x13(r1)
/* 802DD05C 002A661C  38 00 00 02 */	li r0, 2
/* 802DD060 002A6620  A0 83 00 00 */	lhz r4, 0(r3)
/* 802DD064 002A6624  B0 81 00 0C */	sth r4, 0xc(r1)
/* 802DD068 002A6628  88 85 00 1F */	lbz r4, 0x1f(r5)
/* 802DD06C 002A662C  A0 C3 00 02 */	lhz r6, 2(r3)
/* 802DD070 002A6630  38 61 00 08 */	addi r3, r1, 8
/* 802DD074 002A6634  B0 C1 00 0E */	sth r6, 0xe(r1)
/* 802DD078 002A6638  B0 81 00 10 */	sth r4, 0x10(r1)
/* 802DD07C 002A663C  98 05 00 1E */	stb r0, 0x1e(r5)
/* 802DD080 002A6640  48 00 06 A1 */	bl func_802DD720
/* 802DD084 002A6644  3C 80 80 2E */	lis r4, lbl_802DCAA0@ha
/* 802DD088 002A6648  38 61 00 08 */	addi r3, r1, 8
/* 802DD08C 002A664C  38 84 CA A0 */	addi r4, r4, lbl_802DCAA0@l
/* 802DD090 002A6650  48 00 08 A1 */	bl func_802DD930
/* 802DD094 002A6654  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DD098 002A6658  38 60 00 01 */	li r3, 1
/* 802DD09C 002A665C  7C 08 03 A6 */	mtlr r0
/* 802DD0A0 002A6660  38 21 00 20 */	addi r1, r1, 0x20
/* 802DD0A4 002A6664  4E 80 00 20 */	blr 
/* 802DD0A8 002A6668  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DD0AC 002A666C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global lbl_802DD0B0
lbl_802DD0B0:
/* 802DD0B0 002A6670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD0B4 002A6674  7C 08 02 A6 */	mflr r0
/* 802DD0B8 002A6678  3C 60 80 5C */	lis r3, lbl_805BBC20@ha
/* 802DD0BC 002A667C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD0C0 002A6680  38 63 BC 20 */	addi r3, r3, lbl_805BBC20@l
/* 802DD0C4 002A6684  38 00 00 00 */	li r0, 0
/* 802DD0C8 002A6688  98 03 00 1E */	stb r0, 0x1e(r3)
/* 802DD0CC 002A668C  48 00 0C 15 */	bl func_802DDCE0
/* 802DD0D0 002A6690  48 00 0C C1 */	bl func_802DDD90
/* 802DD0D4 002A6694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD0D8 002A6698  7C 08 03 A6 */	mtlr r0
/* 802DD0DC 002A669C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD0E0 002A66A0  4E 80 00 20 */	blr 
/* 802DD0E4 002A66A4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DD0E8 002A66A8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DD0EC 002A66AC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global lbl_802DD0F0
lbl_802DD0F0:
/* 802DD0F0 002A66B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD0F4 002A66B4  7C 08 02 A6 */	mflr r0
/* 802DD0F8 002A66B8  3C A0 80 5C */	lis r5, lbl_805BBC20@ha
/* 802DD0FC 002A66BC  7C 64 1B 78 */	mr r4, r3
/* 802DD100 002A66C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD104 002A66C4  38 65 BC 20 */	addi r3, r5, lbl_805BBC20@l
/* 802DD108 002A66C8  4B FF FD 59 */	bl func_802DCE60
/* 802DD10C 002A66CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD110 002A66D0  38 60 00 01 */	li r3, 1
/* 802DD114 002A66D4  7C 08 03 A6 */	mtlr r0
/* 802DD118 002A66D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD11C 002A66DC  4E 80 00 20 */	blr 
.global lbl_802DD120
lbl_802DD120:
/* 802DD120 002A66E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD124 002A66E4  7C 08 02 A6 */	mflr r0
/* 802DD128 002A66E8  3C 80 80 5C */	lis r4, lbl_805BBC20@ha
/* 802DD12C 002A66EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD130 002A66F0  38 84 BC 20 */	addi r4, r4, lbl_805BBC20@l
/* 802DD134 002A66F4  38 03 FF F8 */	addi r0, r3, -8
/* 802DD138 002A66F8  A0 64 00 12 */	lhz r3, 0x12(r4)
/* 802DD13C 002A66FC  7C 03 00 50 */	subf r0, r3, r0
/* 802DD140 002A6700  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 802DD144 002A6704  4B FF F9 7D */	bl func_802DCAC0
/* 802DD148 002A6708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD14C 002A670C  38 60 00 00 */	li r3, 0
/* 802DD150 002A6710  7C 08 03 A6 */	mtlr r0
/* 802DD154 002A6714  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD158 002A6718  4E 80 00 20 */	blr 
/* 802DD15C 002A671C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
