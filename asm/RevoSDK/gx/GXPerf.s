.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn GXSetGPMetric, global
/* 8031EA70 002E8030  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031EA74 002E8034  80 C5 05 EC */	lwz r6, 0x5ec(r5)
/* 8031EA78 002E8038  38 06 FF F5 */	addi r0, r6, -0xb
/* 8031EA7C 002E803C  28 00 00 0F */	cmplwi r0, 0xf
/* 8031EA80 002E8040  40 81 00 40 */	ble .L_8031EAC0
/* 8031EA84 002E8044  28 06 00 0A */	cmplwi r6, 0xa
/* 8031EA88 002E8048  40 81 00 18 */	ble .L_8031EAA0
/* 8031EA8C 002E804C  38 06 FF E5 */	addi r0, r6, -0x1b
/* 8031EA90 002E8050  28 00 00 06 */	cmplwi r0, 0x6
/* 8031EA94 002E8054  40 81 00 44 */	ble .L_8031EAD8
/* 8031EA98 002E8058  2C 06 00 22 */	cmpwi r6, 0x22
/* 8031EA9C 002E805C  40 82 00 50 */	bne .L_8031EAEC
.L_8031EAA0:
/* 8031EAA0 002E8060  3C E0 CC 01 */	lis r7, 0xcc01
/* 8031EAA4 002E8064  38 00 00 10 */	li r0, 0x10
/* 8031EAA8 002E8068  98 07 80 00 */	stb r0, -0x8000(r7)
/* 8031EAAC 002E806C  38 C0 10 06 */	li r6, 0x1006
/* 8031EAB0 002E8070  38 00 00 00 */	li r0, 0x0
/* 8031EAB4 002E8074  90 C7 80 00 */	stw r6, -0x8000(r7)
/* 8031EAB8 002E8078  90 07 80 00 */	stw r0, -0x8000(r7)
/* 8031EABC 002E807C  48 00 00 30 */	b .L_8031EAEC
.L_8031EAC0:
/* 8031EAC0 002E8080  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EAC4 002E8084  38 00 00 61 */	li r0, 0x61
/* 8031EAC8 002E8088  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EACC 002E808C  3C 00 23 00 */	lis r0, 0x2300
/* 8031EAD0 002E8090  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EAD4 002E8094  48 00 00 18 */	b .L_8031EAEC
.L_8031EAD8:
/* 8031EAD8 002E8098  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EADC 002E809C  38 00 00 61 */	li r0, 0x61
/* 8031EAE0 002E80A0  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EAE4 002E80A4  3C 00 24 00 */	lis r0, 0x2400
/* 8031EAE8 002E80A8  90 06 80 00 */	stw r0, -0x8000(r6)
.L_8031EAEC:
/* 8031EAEC 002E80AC  80 C5 05 F0 */	lwz r6, 0x5f0(r5)
/* 8031EAF0 002E80B0  28 06 00 08 */	cmplwi r6, 0x8
/* 8031EAF4 002E80B4  40 81 00 24 */	ble .L_8031EB18
/* 8031EAF8 002E80B8  38 06 FF F7 */	addi r0, r6, -0x9
/* 8031EAFC 002E80BC  28 00 00 07 */	cmplwi r0, 0x7
/* 8031EB00 002E80C0  40 81 00 30 */	ble .L_8031EB30
/* 8031EB04 002E80C4  38 06 FF EF */	addi r0, r6, -0x11
/* 8031EB08 002E80C8  28 00 00 03 */	cmplwi r0, 0x3
/* 8031EB0C 002E80CC  40 81 00 50 */	ble .L_8031EB5C
/* 8031EB10 002E80D0  2C 06 00 15 */	cmpwi r6, 0x15
/* 8031EB14 002E80D4  40 82 00 54 */	bne .L_8031EB68
.L_8031EB18:
/* 8031EB18 002E80D8  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EB1C 002E80DC  38 00 00 61 */	li r0, 0x61
/* 8031EB20 002E80E0  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EB24 002E80E4  3C 00 67 00 */	lis r0, 0x6700
/* 8031EB28 002E80E8  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EB2C 002E80EC  48 00 00 3C */	b .L_8031EB68
.L_8031EB30:
/* 8031EB30 002E80F0  81 05 05 F4 */	lwz r8, 0x5f4(r5)
/* 8031EB34 002E80F4  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EB38 002E80F8  38 E0 00 08 */	li r7, 0x8
/* 8031EB3C 002E80FC  38 00 00 20 */	li r0, 0x20
/* 8031EB40 002E8100  55 08 07 2E */	rlwinm r8, r8, 0, 28, 23
/* 8031EB44 002E8104  91 05 05 F4 */	stw r8, 0x5f4(r5)
/* 8031EB48 002E8108  98 E6 80 00 */	stb r7, -0x8000(r6)
/* 8031EB4C 002E810C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EB50 002E8110  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031EB54 002E8114  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EB58 002E8118  48 00 00 10 */	b .L_8031EB68
.L_8031EB5C:
/* 8031EB5C 002E811C  80 CD B7 8C */	lwz r6, lbl_8066790C@sda21(r13)
/* 8031EB60 002E8120  38 00 00 00 */	li r0, 0x0
/* 8031EB64 002E8124  B0 06 00 06 */	sth r0, 0x6(r6)
.L_8031EB68:
/* 8031EB68 002E8128  28 03 00 22 */	cmplwi r3, 0x22
/* 8031EB6C 002E812C  90 65 05 EC */	stw r3, 0x5ec(r5)
/* 8031EB70 002E8130  41 81 04 1C */	bgt .L_8031EF8C
/* 8031EB74 002E8134  3C C0 80 55 */	lis r6, jumptable_8054C188@ha
/* 8031EB78 002E8138  54 60 10 3A */	slwi r0, r3, 2
/* 8031EB7C 002E813C  38 C6 C1 88 */	addi r6, r6, jumptable_8054C188@l
/* 8031EB80 002E8140  7C C6 00 2E */	lwzx r6, r6, r0
/* 8031EB84 002E8144  7C C9 03 A6 */	mtctr r6
/* 8031EB88 002E8148  4E 80 04 20 */	bctr
.L_8031EB8C:
/* 8031EB8C 002E814C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EB90 002E8150  38 00 00 10 */	li r0, 0x10
/* 8031EB94 002E8154  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EB98 002E8158  38 60 10 06 */	li r3, 0x1006
/* 8031EB9C 002E815C  38 00 02 73 */	li r0, 0x273
/* 8031EBA0 002E8160  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031EBA4 002E8164  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EBA8 002E8168  48 00 03 E4 */	b .L_8031EF8C
.L_8031EBAC:
/* 8031EBAC 002E816C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EBB0 002E8170  38 00 00 10 */	li r0, 0x10
/* 8031EBB4 002E8174  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EBB8 002E8178  38 60 10 06 */	li r3, 0x1006
/* 8031EBBC 002E817C  38 00 01 4A */	li r0, 0x14a
/* 8031EBC0 002E8180  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031EBC4 002E8184  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EBC8 002E8188  48 00 03 C4 */	b .L_8031EF8C
.L_8031EBCC:
/* 8031EBCC 002E818C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EBD0 002E8190  38 00 00 10 */	li r0, 0x10
/* 8031EBD4 002E8194  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EBD8 002E8198  38 60 10 06 */	li r3, 0x1006
/* 8031EBDC 002E819C  38 00 01 6B */	li r0, 0x16b
/* 8031EBE0 002E81A0  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031EBE4 002E81A4  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EBE8 002E81A8  48 00 03 A4 */	b .L_8031EF8C
.L_8031EBEC:
/* 8031EBEC 002E81AC  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EBF0 002E81B0  38 00 00 10 */	li r0, 0x10
/* 8031EBF4 002E81B4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EBF8 002E81B8  38 60 10 06 */	li r3, 0x1006
/* 8031EBFC 002E81BC  38 00 00 84 */	li r0, 0x84
/* 8031EC00 002E81C0  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031EC04 002E81C4  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EC08 002E81C8  48 00 03 84 */	b .L_8031EF8C
.L_8031EC0C:
/* 8031EC0C 002E81CC  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EC10 002E81D0  38 00 00 10 */	li r0, 0x10
/* 8031EC14 002E81D4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EC18 002E81D8  38 60 10 06 */	li r3, 0x1006
/* 8031EC1C 002E81DC  38 00 00 C6 */	li r0, 0xc6
/* 8031EC20 002E81E0  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031EC24 002E81E4  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EC28 002E81E8  48 00 03 64 */	b .L_8031EF8C
.L_8031EC2C:
/* 8031EC2C 002E81EC  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EC30 002E81F0  38 00 00 10 */	li r0, 0x10
/* 8031EC34 002E81F4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EC38 002E81F8  38 60 10 06 */	li r3, 0x1006
/* 8031EC3C 002E81FC  38 00 02 10 */	li r0, 0x210
/* 8031EC40 002E8200  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031EC44 002E8204  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EC48 002E8208  48 00 03 44 */	b .L_8031EF8C
.L_8031EC4C:
/* 8031EC4C 002E820C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EC50 002E8210  38 00 00 10 */	li r0, 0x10
/* 8031EC54 002E8214  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EC58 002E8218  38 60 10 06 */	li r3, 0x1006
/* 8031EC5C 002E821C  38 00 02 52 */	li r0, 0x252
/* 8031EC60 002E8220  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031EC64 002E8224  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EC68 002E8228  48 00 03 24 */	b .L_8031EF8C
.L_8031EC6C:
/* 8031EC6C 002E822C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EC70 002E8230  38 00 00 10 */	li r0, 0x10
/* 8031EC74 002E8234  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EC78 002E8238  38 60 10 06 */	li r3, 0x1006
/* 8031EC7C 002E823C  38 00 02 31 */	li r0, 0x231
/* 8031EC80 002E8240  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031EC84 002E8244  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EC88 002E8248  48 00 03 04 */	b .L_8031EF8C
.L_8031EC8C:
/* 8031EC8C 002E824C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EC90 002E8250  38 00 00 10 */	li r0, 0x10
/* 8031EC94 002E8254  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EC98 002E8258  38 60 10 06 */	li r3, 0x1006
/* 8031EC9C 002E825C  38 00 01 AD */	li r0, 0x1ad
/* 8031ECA0 002E8260  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031ECA4 002E8264  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ECA8 002E8268  48 00 02 E4 */	b .L_8031EF8C
.L_8031ECAC:
/* 8031ECAC 002E826C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ECB0 002E8270  38 00 00 10 */	li r0, 0x10
/* 8031ECB4 002E8274  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031ECB8 002E8278  38 60 10 06 */	li r3, 0x1006
/* 8031ECBC 002E827C  38 00 01 CE */	li r0, 0x1ce
/* 8031ECC0 002E8280  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031ECC4 002E8284  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ECC8 002E8288  48 00 02 C4 */	b .L_8031EF8C
.L_8031ECCC:
/* 8031ECCC 002E828C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ECD0 002E8290  38 00 00 10 */	li r0, 0x10
/* 8031ECD4 002E8294  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031ECD8 002E8298  38 60 10 06 */	li r3, 0x1006
/* 8031ECDC 002E829C  38 00 00 21 */	li r0, 0x21
/* 8031ECE0 002E82A0  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031ECE4 002E82A4  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ECE8 002E82A8  48 00 02 A4 */	b .L_8031EF8C
.L_8031ECEC:
/* 8031ECEC 002E82AC  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ECF0 002E82B0  38 00 00 10 */	li r0, 0x10
/* 8031ECF4 002E82B4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031ECF8 002E82B8  38 60 10 06 */	li r3, 0x1006
/* 8031ECFC 002E82BC  38 00 01 53 */	li r0, 0x153
/* 8031ED00 002E82C0  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031ED04 002E82C4  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ED08 002E82C8  48 00 02 84 */	b .L_8031EF8C
.L_8031ED0C:
/* 8031ED0C 002E82CC  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ED10 002E82D0  38 00 00 61 */	li r0, 0x61
/* 8031ED14 002E82D4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031ED18 002E82D8  3C 60 23 01 */	lis r3, 0x2301
/* 8031ED1C 002E82DC  38 03 AE 7F */	addi r0, r3, -0x5181
/* 8031ED20 002E82E0  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ED24 002E82E4  48 00 02 68 */	b .L_8031EF8C
.L_8031ED28:
/* 8031ED28 002E82E8  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ED2C 002E82EC  38 00 00 61 */	li r0, 0x61
/* 8031ED30 002E82F0  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031ED34 002E82F4  3C 60 23 01 */	lis r3, 0x2301
/* 8031ED38 002E82F8  38 03 8E 7F */	addi r0, r3, -0x7181
/* 8031ED3C 002E82FC  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ED40 002E8300  48 00 02 4C */	b .L_8031EF8C
.L_8031ED44:
/* 8031ED44 002E8304  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ED48 002E8308  38 00 00 61 */	li r0, 0x61
/* 8031ED4C 002E830C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031ED50 002E8310  3C 60 23 01 */	lis r3, 0x2301
/* 8031ED54 002E8314  38 03 9E 7F */	addi r0, r3, -0x6181
/* 8031ED58 002E8318  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ED5C 002E831C  48 00 02 30 */	b .L_8031EF8C
.L_8031ED60:
/* 8031ED60 002E8320  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ED64 002E8324  38 00 00 61 */	li r0, 0x61
/* 8031ED68 002E8328  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031ED6C 002E832C  3C 60 23 00 */	lis r3, 0x2300
/* 8031ED70 002E8330  38 03 1E 7F */	addi r0, r3, 0x1e7f
/* 8031ED74 002E8334  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ED78 002E8338  48 00 02 14 */	b .L_8031EF8C
.L_8031ED7C:
/* 8031ED7C 002E833C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ED80 002E8340  38 00 00 61 */	li r0, 0x61
/* 8031ED84 002E8344  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031ED88 002E8348  3C 60 23 01 */	lis r3, 0x2301
/* 8031ED8C 002E834C  38 03 AC 3F */	addi r0, r3, -0x53c1
/* 8031ED90 002E8350  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031ED94 002E8354  48 00 01 F8 */	b .L_8031EF8C
.L_8031ED98:
/* 8031ED98 002E8358  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031ED9C 002E835C  38 00 00 61 */	li r0, 0x61
/* 8031EDA0 002E8360  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EDA4 002E8364  3C 60 23 01 */	lis r3, 0x2301
/* 8031EDA8 002E8368  38 03 AC 7F */	addi r0, r3, -0x5381
/* 8031EDAC 002E836C  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EDB0 002E8370  48 00 01 DC */	b .L_8031EF8C
.L_8031EDB4:
/* 8031EDB4 002E8374  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EDB8 002E8378  38 00 00 61 */	li r0, 0x61
/* 8031EDBC 002E837C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EDC0 002E8380  3C 60 23 01 */	lis r3, 0x2301
/* 8031EDC4 002E8384  38 03 AC BF */	addi r0, r3, -0x5341
/* 8031EDC8 002E8388  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EDCC 002E838C  48 00 01 C0 */	b .L_8031EF8C
.L_8031EDD0:
/* 8031EDD0 002E8390  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EDD4 002E8394  38 00 00 61 */	li r0, 0x61
/* 8031EDD8 002E8398  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EDDC 002E839C  3C 60 23 01 */	lis r3, 0x2301
/* 8031EDE0 002E83A0  38 03 AC FF */	addi r0, r3, -0x5301
/* 8031EDE4 002E83A4  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EDE8 002E83A8  48 00 01 A4 */	b .L_8031EF8C
.L_8031EDEC:
/* 8031EDEC 002E83AC  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EDF0 002E83B0  38 00 00 61 */	li r0, 0x61
/* 8031EDF4 002E83B4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EDF8 002E83B8  3C 60 23 01 */	lis r3, 0x2301
/* 8031EDFC 002E83BC  38 03 AD 3F */	addi r0, r3, -0x52c1
/* 8031EE00 002E83C0  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EE04 002E83C4  48 00 01 88 */	b .L_8031EF8C
.L_8031EE08:
/* 8031EE08 002E83C8  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EE0C 002E83CC  38 00 00 61 */	li r0, 0x61
/* 8031EE10 002E83D0  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EE14 002E83D4  3C 60 23 01 */	lis r3, 0x2301
/* 8031EE18 002E83D8  38 03 AD 7F */	addi r0, r3, -0x5281
/* 8031EE1C 002E83DC  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EE20 002E83E0  48 00 01 6C */	b .L_8031EF8C
.L_8031EE24:
/* 8031EE24 002E83E4  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EE28 002E83E8  38 00 00 61 */	li r0, 0x61
/* 8031EE2C 002E83EC  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EE30 002E83F0  3C 60 23 01 */	lis r3, 0x2301
/* 8031EE34 002E83F4  38 03 AD BF */	addi r0, r3, -0x5241
/* 8031EE38 002E83F8  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EE3C 002E83FC  48 00 01 50 */	b .L_8031EF8C
.L_8031EE40:
/* 8031EE40 002E8400  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EE44 002E8404  38 00 00 61 */	li r0, 0x61
/* 8031EE48 002E8408  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EE4C 002E840C  3C 60 23 01 */	lis r3, 0x2301
/* 8031EE50 002E8410  38 03 AD FF */	addi r0, r3, -0x5201
/* 8031EE54 002E8414  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EE58 002E8418  48 00 01 34 */	b .L_8031EF8C
.L_8031EE5C:
/* 8031EE5C 002E841C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EE60 002E8420  38 00 00 61 */	li r0, 0x61
/* 8031EE64 002E8424  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EE68 002E8428  3C 60 23 01 */	lis r3, 0x2301
/* 8031EE6C 002E842C  38 03 AE 3F */	addi r0, r3, -0x51c1
/* 8031EE70 002E8430  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EE74 002E8434  48 00 01 18 */	b .L_8031EF8C
.L_8031EE78:
/* 8031EE78 002E8438  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EE7C 002E843C  38 00 00 61 */	li r0, 0x61
/* 8031EE80 002E8440  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EE84 002E8444  3C 60 23 01 */	lis r3, 0x2301
/* 8031EE88 002E8448  38 03 A2 7F */	addi r0, r3, -0x5d81
/* 8031EE8C 002E844C  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EE90 002E8450  48 00 00 FC */	b .L_8031EF8C
.L_8031EE94:
/* 8031EE94 002E8454  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EE98 002E8458  38 00 00 61 */	li r0, 0x61
/* 8031EE9C 002E845C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EEA0 002E8460  3C 60 23 01 */	lis r3, 0x2301
/* 8031EEA4 002E8464  38 03 A6 7F */	addi r0, r3, -0x5981
/* 8031EEA8 002E8468  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EEAC 002E846C  48 00 00 E0 */	b .L_8031EF8C
.L_8031EEB0:
/* 8031EEB0 002E8470  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EEB4 002E8474  38 00 00 61 */	li r0, 0x61
/* 8031EEB8 002E8478  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EEBC 002E847C  3C 60 23 01 */	lis r3, 0x2301
/* 8031EEC0 002E8480  38 03 AA 7F */	addi r0, r3, -0x5581
/* 8031EEC4 002E8484  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EEC8 002E8488  48 00 00 C4 */	b .L_8031EF8C
.L_8031EECC:
/* 8031EECC 002E848C  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EED0 002E8490  38 00 00 61 */	li r0, 0x61
/* 8031EED4 002E8494  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EED8 002E8498  3C 60 24 03 */	lis r3, 0x2403
/* 8031EEDC 002E849C  38 03 C0 C6 */	addi r0, r3, -0x3f3a
/* 8031EEE0 002E84A0  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EEE4 002E84A4  48 00 00 A8 */	b .L_8031EF8C
.L_8031EEE8:
/* 8031EEE8 002E84A8  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EEEC 002E84AC  38 00 00 61 */	li r0, 0x61
/* 8031EEF0 002E84B0  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EEF4 002E84B4  3C 60 24 03 */	lis r3, 0x2403
/* 8031EEF8 002E84B8  38 03 C1 6B */	addi r0, r3, -0x3e95
/* 8031EEFC 002E84BC  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EF00 002E84C0  48 00 00 8C */	b .L_8031EF8C
.L_8031EF04:
/* 8031EF04 002E84C4  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EF08 002E84C8  38 00 00 61 */	li r0, 0x61
/* 8031EF0C 002E84CC  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EF10 002E84D0  3C 60 24 03 */	lis r3, 0x2403
/* 8031EF14 002E84D4  38 03 C0 E7 */	addi r0, r3, -0x3f19
/* 8031EF18 002E84D8  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EF1C 002E84DC  48 00 00 70 */	b .L_8031EF8C
.L_8031EF20:
/* 8031EF20 002E84E0  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EF24 002E84E4  38 00 00 61 */	li r0, 0x61
/* 8031EF28 002E84E8  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EF2C 002E84EC  3C 60 24 03 */	lis r3, 0x2403
/* 8031EF30 002E84F0  38 03 C1 08 */	addi r0, r3, -0x3ef8
/* 8031EF34 002E84F4  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EF38 002E84F8  48 00 00 54 */	b .L_8031EF8C
.L_8031EF3C:
/* 8031EF3C 002E84FC  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EF40 002E8500  38 00 00 61 */	li r0, 0x61
/* 8031EF44 002E8504  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EF48 002E8508  3C 60 24 03 */	lis r3, 0x2403
/* 8031EF4C 002E850C  38 03 C1 29 */	addi r0, r3, -0x3ed7
/* 8031EF50 002E8510  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EF54 002E8514  48 00 00 38 */	b .L_8031EF8C
.L_8031EF58:
/* 8031EF58 002E8518  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EF5C 002E851C  38 00 00 61 */	li r0, 0x61
/* 8031EF60 002E8520  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EF64 002E8524  3C 60 24 03 */	lis r3, 0x2403
/* 8031EF68 002E8528  38 03 C1 4A */	addi r0, r3, -0x3eb6
/* 8031EF6C 002E852C  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8031EF70 002E8530  48 00 00 1C */	b .L_8031EF8C
.L_8031EF74:
/* 8031EF74 002E8534  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031EF78 002E8538  38 00 00 61 */	li r0, 0x61
/* 8031EF7C 002E853C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031EF80 002E8540  3C 60 24 03 */	lis r3, 0x2403
/* 8031EF84 002E8544  38 03 C1 AD */	addi r0, r3, -0x3e53
/* 8031EF88 002E8548  90 06 80 00 */	stw r0, -0x8000(r6)
.L_8031EF8C:
/* 8031EF8C 002E854C  28 04 00 15 */	cmplwi r4, 0x15
/* 8031EF90 002E8550  90 85 05 F0 */	stw r4, 0x5f0(r5)
/* 8031EF94 002E8554  41 81 02 EC */	bgt .L_8031F280
/* 8031EF98 002E8558  3C 60 80 55 */	lis r3, jumptable_8054C130@ha
/* 8031EF9C 002E855C  54 80 10 3A */	slwi r0, r4, 2
/* 8031EFA0 002E8560  38 63 C1 30 */	addi r3, r3, jumptable_8054C130@l
/* 8031EFA4 002E8564  7C 63 00 2E */	lwzx r3, r3, r0
/* 8031EFA8 002E8568  7C 69 03 A6 */	mtctr r3
/* 8031EFAC 002E856C  4E 80 04 20 */	bctr
.L_8031EFB0:
/* 8031EFB0 002E8570  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031EFB4 002E8574  38 00 00 61 */	li r0, 0x61
/* 8031EFB8 002E8578  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031EFBC 002E857C  3C 60 67 00 */	lis r3, 0x6700
/* 8031EFC0 002E8580  38 03 00 42 */	addi r0, r3, 0x42
/* 8031EFC4 002E8584  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031EFC8 002E8588  48 00 02 B8 */	b .L_8031F280
.L_8031EFCC:
/* 8031EFCC 002E858C  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031EFD0 002E8590  38 00 00 61 */	li r0, 0x61
/* 8031EFD4 002E8594  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031EFD8 002E8598  3C 60 67 00 */	lis r3, 0x6700
/* 8031EFDC 002E859C  38 03 00 84 */	addi r0, r3, 0x84
/* 8031EFE0 002E85A0  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031EFE4 002E85A4  48 00 02 9C */	b .L_8031F280
.L_8031EFE8:
/* 8031EFE8 002E85A8  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031EFEC 002E85AC  38 00 00 61 */	li r0, 0x61
/* 8031EFF0 002E85B0  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031EFF4 002E85B4  3C 60 67 00 */	lis r3, 0x6700
/* 8031EFF8 002E85B8  38 03 00 63 */	addi r0, r3, 0x63
/* 8031EFFC 002E85BC  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031F000 002E85C0  48 00 02 80 */	b .L_8031F280
.L_8031F004:
/* 8031F004 002E85C4  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031F008 002E85C8  38 00 00 61 */	li r0, 0x61
/* 8031F00C 002E85CC  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031F010 002E85D0  3C 60 67 00 */	lis r3, 0x6700
/* 8031F014 002E85D4  38 03 01 29 */	addi r0, r3, 0x129
/* 8031F018 002E85D8  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031F01C 002E85DC  48 00 02 64 */	b .L_8031F280
.L_8031F020:
/* 8031F020 002E85E0  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031F024 002E85E4  38 00 00 61 */	li r0, 0x61
/* 8031F028 002E85E8  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031F02C 002E85EC  3C 60 67 00 */	lis r3, 0x6700
/* 8031F030 002E85F0  38 03 02 52 */	addi r0, r3, 0x252
/* 8031F034 002E85F4  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031F038 002E85F8  48 00 02 48 */	b .L_8031F280
.L_8031F03C:
/* 8031F03C 002E85FC  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031F040 002E8600  38 00 00 61 */	li r0, 0x61
/* 8031F044 002E8604  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031F048 002E8608  3C 60 67 00 */	lis r3, 0x6700
/* 8031F04C 002E860C  38 03 00 21 */	addi r0, r3, 0x21
/* 8031F050 002E8610  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031F054 002E8614  48 00 02 2C */	b .L_8031F280
.L_8031F058:
/* 8031F058 002E8618  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031F05C 002E861C  38 00 00 61 */	li r0, 0x61
/* 8031F060 002E8620  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031F064 002E8624  3C 60 67 00 */	lis r3, 0x6700
/* 8031F068 002E8628  38 03 01 4B */	addi r0, r3, 0x14b
/* 8031F06C 002E862C  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031F070 002E8630  48 00 02 10 */	b .L_8031F280
.L_8031F074:
/* 8031F074 002E8634  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031F078 002E8638  38 00 00 61 */	li r0, 0x61
/* 8031F07C 002E863C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031F080 002E8640  3C 60 67 00 */	lis r3, 0x6700
/* 8031F084 002E8644  38 03 01 8D */	addi r0, r3, 0x18d
/* 8031F088 002E8648  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031F08C 002E864C  48 00 01 F4 */	b .L_8031F280
.L_8031F090:
/* 8031F090 002E8650  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031F094 002E8654  38 00 00 61 */	li r0, 0x61
/* 8031F098 002E8658  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031F09C 002E865C  3C 60 67 00 */	lis r3, 0x6700
/* 8031F0A0 002E8660  38 03 01 CF */	addi r0, r3, 0x1cf
/* 8031F0A4 002E8664  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031F0A8 002E8668  48 00 01 D8 */	b .L_8031F280
.L_8031F0AC:
/* 8031F0AC 002E866C  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031F0B0 002E8670  38 00 00 61 */	li r0, 0x61
/* 8031F0B4 002E8674  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031F0B8 002E8678  3C 60 67 00 */	lis r3, 0x6700
/* 8031F0BC 002E867C  38 03 02 11 */	addi r0, r3, 0x211
/* 8031F0C0 002E8680  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031F0C4 002E8684  48 00 01 BC */	b .L_8031F280
.L_8031F0C8:
/* 8031F0C8 002E8688  80 65 05 F4 */	lwz r3, 0x5f4(r5)
/* 8031F0CC 002E868C  38 00 00 02 */	li r0, 0x2
/* 8031F0D0 002E8690  50 03 26 36 */	rlwimi r3, r0, 4, 24, 27
/* 8031F0D4 002E8694  90 65 05 F4 */	stw r3, 0x5f4(r5)
/* 8031F0D8 002E8698  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031F0DC 002E869C  38 00 00 08 */	li r0, 0x8
/* 8031F0E0 002E86A0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F0E4 002E86A4  38 00 00 20 */	li r0, 0x20
/* 8031F0E8 002E86A8  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F0EC 002E86AC  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F0F0 002E86B0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031F0F4 002E86B4  48 00 01 8C */	b .L_8031F280
.L_8031F0F8:
/* 8031F0F8 002E86B8  80 65 05 F4 */	lwz r3, 0x5f4(r5)
/* 8031F0FC 002E86BC  38 00 00 03 */	li r0, 0x3
/* 8031F100 002E86C0  50 03 26 36 */	rlwimi r3, r0, 4, 24, 27
/* 8031F104 002E86C4  90 65 05 F4 */	stw r3, 0x5f4(r5)
/* 8031F108 002E86C8  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031F10C 002E86CC  38 00 00 08 */	li r0, 0x8
/* 8031F110 002E86D0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F114 002E86D4  38 00 00 20 */	li r0, 0x20
/* 8031F118 002E86D8  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F11C 002E86DC  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F120 002E86E0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031F124 002E86E4  48 00 01 5C */	b .L_8031F280
.L_8031F128:
/* 8031F128 002E86E8  80 65 05 F4 */	lwz r3, 0x5f4(r5)
/* 8031F12C 002E86EC  38 00 00 04 */	li r0, 0x4
/* 8031F130 002E86F0  50 03 26 36 */	rlwimi r3, r0, 4, 24, 27
/* 8031F134 002E86F4  90 65 05 F4 */	stw r3, 0x5f4(r5)
/* 8031F138 002E86F8  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031F13C 002E86FC  38 00 00 08 */	li r0, 0x8
/* 8031F140 002E8700  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F144 002E8704  38 00 00 20 */	li r0, 0x20
/* 8031F148 002E8708  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F14C 002E870C  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F150 002E8710  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031F154 002E8714  48 00 01 2C */	b .L_8031F280
.L_8031F158:
/* 8031F158 002E8718  80 65 05 F4 */	lwz r3, 0x5f4(r5)
/* 8031F15C 002E871C  38 00 00 05 */	li r0, 0x5
/* 8031F160 002E8720  50 03 26 36 */	rlwimi r3, r0, 4, 24, 27
/* 8031F164 002E8724  90 65 05 F4 */	stw r3, 0x5f4(r5)
/* 8031F168 002E8728  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031F16C 002E872C  38 00 00 08 */	li r0, 0x8
/* 8031F170 002E8730  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F174 002E8734  38 00 00 20 */	li r0, 0x20
/* 8031F178 002E8738  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F17C 002E873C  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F180 002E8740  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031F184 002E8744  48 00 00 FC */	b .L_8031F280
.L_8031F188:
/* 8031F188 002E8748  80 65 05 F4 */	lwz r3, 0x5f4(r5)
/* 8031F18C 002E874C  38 00 00 06 */	li r0, 0x6
/* 8031F190 002E8750  50 03 26 36 */	rlwimi r3, r0, 4, 24, 27
/* 8031F194 002E8754  90 65 05 F4 */	stw r3, 0x5f4(r5)
/* 8031F198 002E8758  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031F19C 002E875C  38 00 00 08 */	li r0, 0x8
/* 8031F1A0 002E8760  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F1A4 002E8764  38 00 00 20 */	li r0, 0x20
/* 8031F1A8 002E8768  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F1AC 002E876C  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F1B0 002E8770  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031F1B4 002E8774  48 00 00 CC */	b .L_8031F280
.L_8031F1B8:
/* 8031F1B8 002E8778  80 65 05 F4 */	lwz r3, 0x5f4(r5)
/* 8031F1BC 002E877C  38 00 00 07 */	li r0, 0x7
/* 8031F1C0 002E8780  50 03 26 36 */	rlwimi r3, r0, 4, 24, 27
/* 8031F1C4 002E8784  90 65 05 F4 */	stw r3, 0x5f4(r5)
/* 8031F1C8 002E8788  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031F1CC 002E878C  38 00 00 08 */	li r0, 0x8
/* 8031F1D0 002E8790  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F1D4 002E8794  38 00 00 20 */	li r0, 0x20
/* 8031F1D8 002E8798  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F1DC 002E879C  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F1E0 002E87A0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031F1E4 002E87A4  48 00 00 9C */	b .L_8031F280
.L_8031F1E8:
/* 8031F1E8 002E87A8  80 65 05 F4 */	lwz r3, 0x5f4(r5)
/* 8031F1EC 002E87AC  38 00 00 09 */	li r0, 0x9
/* 8031F1F0 002E87B0  50 03 26 36 */	rlwimi r3, r0, 4, 24, 27
/* 8031F1F4 002E87B4  90 65 05 F4 */	stw r3, 0x5f4(r5)
/* 8031F1F8 002E87B8  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031F1FC 002E87BC  38 00 00 08 */	li r0, 0x8
/* 8031F200 002E87C0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F204 002E87C4  38 00 00 20 */	li r0, 0x20
/* 8031F208 002E87C8  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F20C 002E87CC  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F210 002E87D0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031F214 002E87D4  48 00 00 6C */	b .L_8031F280
.L_8031F218:
/* 8031F218 002E87D8  38 80 00 08 */	li r4, 0x8
/* 8031F21C 002E87DC  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F220 002E87E0  50 80 26 36 */	rlwimi r0, r4, 4, 24, 27
/* 8031F224 002E87E4  90 05 05 F4 */	stw r0, 0x5f4(r5)
/* 8031F228 002E87E8  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031F22C 002E87EC  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8031F230 002E87F0  38 00 00 20 */	li r0, 0x20
/* 8031F234 002E87F4  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031F238 002E87F8  80 05 05 F4 */	lwz r0, 0x5f4(r5)
/* 8031F23C 002E87FC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031F240 002E8800  48 00 00 40 */	b .L_8031F280
.L_8031F244:
/* 8031F244 002E8804  80 6D B7 8C */	lwz r3, lbl_8066790C@sda21(r13)
/* 8031F248 002E8808  38 00 00 02 */	li r0, 0x2
/* 8031F24C 002E880C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 8031F250 002E8810  48 00 00 30 */	b .L_8031F280
.L_8031F254:
/* 8031F254 002E8814  80 6D B7 8C */	lwz r3, lbl_8066790C@sda21(r13)
/* 8031F258 002E8818  38 00 00 03 */	li r0, 0x3
/* 8031F25C 002E881C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 8031F260 002E8820  48 00 00 20 */	b .L_8031F280
.L_8031F264:
/* 8031F264 002E8824  80 6D B7 8C */	lwz r3, lbl_8066790C@sda21(r13)
/* 8031F268 002E8828  38 00 00 04 */	li r0, 0x4
/* 8031F26C 002E882C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 8031F270 002E8830  48 00 00 10 */	b .L_8031F280
.L_8031F274:
/* 8031F274 002E8834  80 6D B7 8C */	lwz r3, lbl_8066790C@sda21(r13)
/* 8031F278 002E8838  38 00 00 05 */	li r0, 0x5
/* 8031F27C 002E883C  B0 03 00 06 */	sth r0, 0x6(r3)
.L_8031F280:
/* 8031F280 002E8840  38 00 00 00 */	li r0, 0x0
/* 8031F284 002E8844  B0 05 00 02 */	sth r0, 0x2(r5)
/* 8031F288 002E8848  4E 80 00 20 */	blr
.endfn GXSetGPMetric
/* 8031F28C 002E884C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXClearGPMetric, global
/* 8031F290 002E8850  80 6D B7 8C */	lwz r3, lbl_8066790C@sda21(r13)
/* 8031F294 002E8854  38 00 00 04 */	li r0, 0x4
/* 8031F298 002E8858  B0 03 00 04 */	sth r0, 0x4(r3)
/* 8031F29C 002E885C  4E 80 00 20 */	blr
.endfn GXClearGPMetric

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

jumptable_8054C130:
	.rel GXSetGPMetric, .L_8031EFB0
	.rel GXSetGPMetric, .L_8031EFCC
	.rel GXSetGPMetric, .L_8031EFE8
	.rel GXSetGPMetric, .L_8031F004
	.rel GXSetGPMetric, .L_8031F058
	.rel GXSetGPMetric, .L_8031F074
	.rel GXSetGPMetric, .L_8031F090
	.rel GXSetGPMetric, .L_8031F0AC
	.rel GXSetGPMetric, .L_8031F020
	.rel GXSetGPMetric, .L_8031F0C8
	.rel GXSetGPMetric, .L_8031F0F8
	.rel GXSetGPMetric, .L_8031F128
	.rel GXSetGPMetric, .L_8031F158
	.rel GXSetGPMetric, .L_8031F188
	.rel GXSetGPMetric, .L_8031F1B8
	.rel GXSetGPMetric, .L_8031F1E8
	.rel GXSetGPMetric, .L_8031F218
	.rel GXSetGPMetric, .L_8031F244
	.rel GXSetGPMetric, .L_8031F254
	.rel GXSetGPMetric, .L_8031F264
	.rel GXSetGPMetric, .L_8031F274
	.rel GXSetGPMetric, .L_8031F03C

jumptable_8054C188:
	.rel GXSetGPMetric, .L_8031EB8C
	.rel GXSetGPMetric, .L_8031EBAC
	.rel GXSetGPMetric, .L_8031EBCC
	.rel GXSetGPMetric, .L_8031EBEC
	.rel GXSetGPMetric, .L_8031EC0C
	.rel GXSetGPMetric, .L_8031EC2C
	.rel GXSetGPMetric, .L_8031EC4C
	.rel GXSetGPMetric, .L_8031EC6C
	.rel GXSetGPMetric, .L_8031EC8C
	.rel GXSetGPMetric, .L_8031ECAC
	.rel GXSetGPMetric, .L_8031ECEC
	.rel GXSetGPMetric, .L_8031ED0C
	.rel GXSetGPMetric, .L_8031ED28
	.rel GXSetGPMetric, .L_8031ED44
	.rel GXSetGPMetric, .L_8031ED60
	.rel GXSetGPMetric, .L_8031ED7C
	.rel GXSetGPMetric, .L_8031ED98
	.rel GXSetGPMetric, .L_8031EDB4
	.rel GXSetGPMetric, .L_8031EDD0
	.rel GXSetGPMetric, .L_8031EDEC
	.rel GXSetGPMetric, .L_8031EE08
	.rel GXSetGPMetric, .L_8031EE24
	.rel GXSetGPMetric, .L_8031EE40
	.rel GXSetGPMetric, .L_8031EE5C
	.rel GXSetGPMetric, .L_8031EE78
	.rel GXSetGPMetric, .L_8031EE94
	.rel GXSetGPMetric, .L_8031EEB0
	.rel GXSetGPMetric, .L_8031EECC
	.rel GXSetGPMetric, .L_8031EEE8
	.rel GXSetGPMetric, .L_8031EF04
	.rel GXSetGPMetric, .L_8031EF20
	.rel GXSetGPMetric, .L_8031EF3C
	.rel GXSetGPMetric, .L_8031EF58
	.rel GXSetGPMetric, .L_8031EF74
	.rel GXSetGPMetric, .L_8031ECCC
	.4byte 0x00000000
