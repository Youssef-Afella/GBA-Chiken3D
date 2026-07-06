	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"main.c"
@ GNU C23 (devkitARM) version 15.2.0 (arm-none-eabi)
@	compiled by GNU C version 13.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mthumb-interwork -mcpu=arm7tdmi -march=armv4t -O3
	.text
	.section	.iwram,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	raster
	.syntax unified
	.code	16
	.thumb_func
	.type	raster, %function
raster:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	mov	r5, r8	@,
	mov	lr, fp	@,
	mov	r7, r10	@,
	mov	r6, r9	@,
	push	{r5, r6, r7, lr}	@
	sub	sp, sp, #76	@,,
@ src/main.c:75: {
	add	r4, sp, #120	@ tmp290,,
	ldrh	r4, [r4]	@ color, color
	mov	r8, r2	@ v1$x, tmp444
	ldr	r2, [sp, #112]	@ v2$x, v2.x
	str	r4, [sp, #4]	@ color, %sfp
	mov	ip, r2	@ v2$x, v2$x
	movs	r4, r1	@ v0$y, tmp443
@ src/main.c:28:     return a < b ? a : b;
	movs	r5, r3	@ _66, tmp445
	ldr	r2, [sp, #116]	@ v2$y, v2.y
	cmp	r3, r1	@ tmp445, v0$y
	ble	.L2		@,
	movs	r5, r1	@ _66, v0$y
.L2:
	cmp	r5, r2	@ _67, v2$y
	ble	.L3		@,
	movs	r5, r2	@ _67, v2$y
.L3:
@ src/main.c:80:         tmp = v0; v0 = v1; v1 = v2; v2 = tmp;
	movs	r1, r5	@ v1$y, _67
@ src/main.c:79:     if(v1.y == min_y) {
	cmp	r3, r5	@ tmp445, _67
	beq	.L4		@,
	movs	r1, r4	@ v1$y, v0$y
	movs	r4, r2	@ v0$y, v2$y
	movs	r2, r3	@ v2$y, tmp445
	mov	r3, r8	@ v1$x, v1$x
	mov	r8, r0	@ v1$x, v0$x
	mov	r0, ip	@ v0$x, v2$x
	mov	ip, r3	@ v2$x, v1$x
.L4:
@ src/main.c:82:     if(v2.y == min_y) {
	cmp	r5, r4	@ _67, v0$y
	beq	.L5		@,
	movs	r3, r4	@ v0$y, v0$y
	movs	r4, r1	@ v0$y, v1$y
	movs	r1, r2	@ v1$y, v2$y
	movs	r2, r3	@ v2$y, v0$y
	movs	r3, r0	@ v0$x, v0$x
	mov	r0, r8	@ v0$x, v1$x
	mov	r8, ip	@ v1$x, v2$x
	mov	ip, r3	@ v2$x, v0$x
.L5:
@ src/main.c:93:         max_y = v1.y;
	movs	r3, r1	@ max_y, v1$y
@ src/main.c:92:         mid_y = v2.y;
	str	r2, [sp, #20]	@ v2$y, %sfp
@ src/main.c:87:     if(v1.y < v2.y) {
	cmp	r2, r1	@ v2$y, v1$y
	ble	.L6		@,
@ src/main.c:89:         max_y = v2.y;
	movs	r3, r2	@ max_y, v2$y
@ src/main.c:88:         mid_y = v1.y;
	str	r1, [sp, #20]	@ v1$y, %sfp
.L6:
@ src/main.c:100:     int s01 = (v1.x - v0.x) * id01y;
	mov	r7, r8	@ v1$x, v1$x
@ src/main.c:98:     int id12y = LUT_Div[max_y - mid_y];
	ldr	r5, [sp, #20]	@ mid_y, %sfp
@ src/main.c:96:     int id01y = LUT_Div[v1.y - v0.y];
	subs	r6, r1, r4	@ _1, v1$y, v0$y
@ src/main.c:98:     int id12y = LUT_Div[max_y - mid_y];
	subs	r3, r3, r5	@ _3, max_y, mid_y
@ src/main.c:100:     int s01 = (v1.x - v0.x) * id01y;
	ldr	r5, .L58	@ tmp302,
@ src/main.c:96:     int id01y = LUT_Div[v1.y - v0.y];
	lsls	r6, r6, #2	@ tmp304, _1,
@ src/main.c:98:     int id12y = LUT_Div[max_y - mid_y];
	mov	r10, r3	@ _3, _3
@ src/main.c:100:     int s01 = (v1.x - v0.x) * id01y;
	ldr	r3, [r6, r5]	@ LUT_Div[_1], LUT_Div[_1]
@ src/main.c:100:     int s01 = (v1.x - v0.x) * id01y;
	subs	r7, r7, r0	@ _4, v1$x, v0$x
@ src/main.c:100:     int s01 = (v1.x - v0.x) * id01y;
	movs	r6, r3	@ dx1, LUT_Div[_1]
	muls	r6, r7	@ dx1, _4
@ src/main.c:101:     int s02 = (v2.x - v0.x) * id02y;
	mov	r3, ip	@ v2$x, v2$x
@ src/main.c:97:     int id02y = LUT_Div[v2.y - v0.y];
	subs	r2, r2, r4	@ _2, v2$y, v0$y
@ src/main.c:97:     int id02y = LUT_Div[v2.y - v0.y];
	lsls	r2, r2, #2	@ tmp309, _2,
@ src/main.c:101:     int s02 = (v2.x - v0.x) * id02y;
	ldr	r2, [r2, r5]	@ LUT_Div[_2], LUT_Div[_2]
@ src/main.c:101:     int s02 = (v2.x - v0.x) * id02y;
	subs	r3, r3, r0	@ _5, v2$x, v0$x
@ src/main.c:100:     int s01 = (v1.x - v0.x) * id01y;
	mov	fp, r6	@ dx1, dx1
@ src/main.c:101:     int s02 = (v2.x - v0.x) * id02y;
	movs	r6, r2	@ s02, LUT_Div[_2]
	muls	r6, r3	@ s02, _5
@ src/main.c:102:     int s12 = (v2.x - v1.x) * id12y;
	mov	r2, r8	@ v1$x, v1$x
	mov	r3, ip	@ v2$x, v2$x
	subs	r3, r3, r2	@ _6, v2$x, v1$x
@ src/main.c:98:     int id12y = LUT_Div[max_y - mid_y];
	mov	r2, r10	@ _3, _3
	lsls	r2, r2, #2	@ tmp417, _3,
	str	r2, [sp, #32]	@ tmp417, %sfp
@ src/main.c:102:     int s12 = (v2.x - v1.x) * id12y;
	ldr	r2, [r5, r2]	@ LUT_Div[_3], LUT_Div[_3]
@ src/main.c:101:     int s02 = (v2.x - v0.x) * id02y;
	mov	r9, r6	@ s02, s02
@ src/main.c:102:     int s12 = (v2.x - v1.x) * id12y;
	movs	r6, r2	@ s12, LUT_Div[_3]
	muls	r6, r3	@ s12, _6
@ src/main.c:104:     int row = v0.y * GBA_SW;
	lsls	r3, r4, #2	@ tmp317, v0$y,
	adds	r3, r3, r4	@ row_47, tmp317, v0$y
@ src/main.c:105:     int range = mid_y - v0.y + 1;
	ldr	r5, [sp, #20]	@ mid_y, %sfp
@ src/main.c:104:     int row = v0.y * GBA_SW;
	lsls	r7, r3, #5	@ tmp319, row_47,
	movs	r2, r7	@ row, tmp319
@ src/main.c:102:     int s12 = (v2.x - v1.x) * id12y;
	str	r6, [sp, #52]	@ s12, %sfp
@ src/main.c:104:     int row = v0.y * GBA_SW;
	str	r7, [sp, #28]	@ tmp319, %sfp
@ src/main.c:105:     int range = mid_y - v0.y + 1;
	subs	r3, r5, r4	@ _7, mid_y, v0$y
@ src/main.c:107:     int x0 = v0.x << 16;
	lsls	r0, r0, #16	@ x0, v0$x,
@ src/main.c:116:         for(int i = 0; i < range; i++)
	cmp	r3, #0	@ _7,
	bge	.LCB104	@
	b	.L38	@long jump	@
.LCB104:
	adds	r4, r4, #1	@ _98,
	adds	r4, r4, r3	@ _243, _98, _7
	lsls	r2, r4, #2	@ tmp323, _243,
	adds	r2, r2, r4	@ _153, tmp323, _243
	lsls	r4, r2, #5	@ tmp325, _153,
	str	r4, [sp]	@ tmp325, %sfp
	ldr	r4, [sp, #4]	@ color, %sfp
@ src/main.c:104:     int row = v0.y * GBA_SW;
	movs	r2, r7	@ row, tmp319
	lsls	r7, r4, #16	@ tmp435, color,
	orrs	r7, r4	@ tmp437, color
	mov	r4, r8	@ v1$x, v1$x
	str	r4, [sp, #36]	@ v1$x, %sfp
	mov	r4, r10	@ _3, _3
	mov	r10, r3	@ _7, _7
	mov	r3, ip	@ v2$x, v2$x
@ src/main.c:108:     int x1 = x0;
	movs	r6, r0	@ x1, x0
@ src/main.c:107:     int x0 = v0.x << 16;
	movs	r5, r0	@ x0, x0
	str	r4, [sp, #8]	@ _3, %sfp
	str	r3, [sp, #40]	@ v2$x, %sfp
	str	r1, [sp, #44]	@ v1$y, %sfp
	str	r0, [sp, #48]	@ x0, %sfp
	str	r7, [sp, #16]	@ tmp437, %sfp
	b	.L9		@
.L15:
@ src/main.c:116:         for(int i = 0; i < range; i++)
	ldr	r3, [sp]	@ tmp325, %sfp
@ src/main.c:132:             row += GBA_SW;
	adds	r2, r2, #160	@ row,
@ src/main.c:130:             x0 += dx0;
	add	r5, r5, r9	@ x0, s02
@ src/main.c:131:             x1 += dx1;
	add	r6, r6, fp	@ x1, dx1
@ src/main.c:116:         for(int i = 0; i < range; i++)
	cmp	r2, r3	@ row, tmp325
	beq	.L57		@,
.L9:
@ src/main.c:118:             if(row >= 0 && row < SH * GBA_SW)
	ldr	r3, .L58+4	@ tmp516,
	cmp	r2, r3	@ row, tmp516
	bhi	.L15		@,
@ src/main.c:120:                 int start = (x0 >> 16);
	asrs	r1, r5, #16	@ tmp.86, x0,
@ src/main.c:28:     return a < b ? a : b;
	cmp	r1, #159	@ tmp.86,
	bgt	.LCB146	@
	b	.L11	@long jump	@
.LCB146:
	movs	r1, #159	@ tmp.86,
.L12:
@ src/main.c:121:                 int end = (x1 >> 16);
	asrs	r0, r6, #16	@ _108, x1,
@ src/main.c:28:     return a < b ? a : b;
	cmp	r0, #159	@ _108,
	bgt	.LCB152	@
	b	.L13	@long jump	@
.LCB152:
	movs	r0, #159	@ _108,
.L14:
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r1, r0	@ tmp.86, _108
	bgt	.L15		@,
	subs	r4, r0, r1	@ _18, _108, tmp.86
	cmp	r4, #5	@ _18,
	bls	.L16		@,
	adds	r3, r4, #1	@ niters.80, _18,
	ldr	r7, [sp, #124]	@ tmp522, VRAM
	str	r3, [sp, #24]	@ niters.80, %sfp
	adds	r3, r1, r2	@ _10, tmp.86, row
	mov	r8, r3	@ _10, _10
	lsls	r3, r3, #1	@ _9, _10,
	adds	r3, r3, r7	@ _9, _9, tmp522
	lsrs	r7, r3, #1	@ _194, vectp.81,
	str	r3, [sp, #12]	@ vectp.81, %sfp
	movs	r3, #1	@ prolog_loop_niters.82,
	movs	r4, r7	@ _194, _194
	ands	r3, r7	@ prolog_loop_niters.82, _194
	movs	r7, #1	@ tmp529,
	tst	r7, r4	@ tmp529, _194
	beq	.L17		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	ldr	r7, [sp, #12]	@ vectp.81, %sfp
	ldr	r4, [sp, #4]	@ color, %sfp
	strh	r4, [r7]	@ color, *vectp.81_16
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r1, r1, #1	@ tmp.86,
.L17:
	ldr	r4, [sp, #24]	@ niters.80, %sfp
	subs	r4, r4, r3	@ niters.83, niters.80, prolog_loop_niters.82
	mov	ip, r4	@ niters.83, niters.83
	add	r3, r3, r8	@ _232, _10
	ldr	r4, [sp, #124]	@ tmp535, VRAM
	lsls	r3, r3, #1	@ _233, _232,
	adds	r3, r3, r4	@ ivtmp.111, _233, tmp535
	mov	r4, ip	@ niters.83, niters.83
	ldr	r7, [sp, #8]	@ _3, %sfp
	lsrs	r4, r4, #1	@ bnd.84_223, niters.83,
	mov	r8, r7	@ _3, _3
	lsls	r4, r4, #2	@ _218, bnd.84_223,
	ldr	r7, [sp, #16]	@ tmp437, %sfp
	adds	r4, r4, r3	@ _12, _218, ivtmp.111
.L18:
@ src/main.c:127:                     VRAM[row + x] = color;
	stmia	r3!, {r7}	@ MEM <vector(2) short unsigned int> [(u16 *)_219], tmp437
	cmp	r4, r3	@ _12, ivtmp.111
	bne	.L18		@,
	mov	r3, r8	@ _3, _3
	mov	r4, ip	@ niters.83, niters.83
	str	r3, [sp, #8]	@ _3, %sfp
	movs	r3, #1	@ tmp538,
	str	r7, [sp, #16]	@ tmp437, %sfp
	tst	r3, r4	@ tmp538, niters.83
	beq	.L15		@,
	bics	r4, r3	@ niters.83, tmp541
	adds	r1, r1, r4	@ tmp.86, tmp.86, niters_vector_mult_vf.85_224
.L16:
	ldr	r7, [sp, #124]	@ tmp542, VRAM
	ldr	r4, [sp, #4]	@ color, %sfp
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r2, r1	@ tmp347, row, tmp.86
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp348, tmp347,
	strh	r4, [r3, r7]	@ color, *_272
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r3, r1, #1	@ x, tmp.86,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r0, r3	@ _108, x
	blt	.L15		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r2, r3	@ tmp350, row, x
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp351, tmp350,
	strh	r4, [r3, r7]	@ color, *_280
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r3, r1, #2	@ x, tmp.86,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r0, r3	@ _108, x
	blt	.L15		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r2, r3	@ tmp353, row, x
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp354, tmp353,
	strh	r4, [r3, r7]	@ color, *_288
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r3, r1, #3	@ x, tmp.86,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r0, r3	@ _108, x
	blt	.L15		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r2, r3	@ tmp356, row, x
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp357, tmp356,
	strh	r4, [r3, r7]	@ color, *_296
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r3, r1, #4	@ x, tmp.86,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r0, r3	@ _108, x
	blt	.L15		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r2, r3	@ tmp359, row, x
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp360, tmp359,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r1, r1, #5	@ x,
@ src/main.c:127:                     VRAM[row + x] = color;
	strh	r4, [r3, r7]	@ color, *_304
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r0, r1	@ _108, x
	blt	.L15		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r1, r2, r1	@ tmp362, row, x
@ src/main.c:116:         for(int i = 0; i < range; i++)
	ldr	r3, [sp]	@ tmp325, %sfp
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r1, r1, #1	@ tmp363, tmp362,
@ src/main.c:132:             row += GBA_SW;
	adds	r2, r2, #160	@ row,
@ src/main.c:127:                     VRAM[row + x] = color;
	strh	r4, [r1, r7]	@ color, *_213
@ src/main.c:130:             x0 += dx0;
	add	r5, r5, r9	@ x0, s02
@ src/main.c:131:             x1 += dx1;
	add	r6, r6, fp	@ x1, dx1
@ src/main.c:116:         for(int i = 0; i < range; i++)
	cmp	r2, r3	@ row, tmp325
	bne	.L9		@,
.L57:
	mov	r3, r10	@ _7, _7
	ldr	r2, [sp, #8]	@ _3, %sfp
	mov	r10, r2	@ _3, _3
	ldr	r2, [sp, #36]	@ v1$x, %sfp
	mov	r8, r2	@ v1$x, v1$x
	ldr	r2, [sp, #40]	@ v2$x, %sfp
	mov	ip, r2	@ v2$x, v2$x
	mov	r2, fp	@ dx1, dx1
	mov	r4, fp	@ _170, dx1
	muls	r4, r3	@ _170, _7
	ldr	r0, [sp, #48]	@ x0, %sfp
	adds	r2, r2, r0	@ _174, dx1, x0
	adds	r4, r4, r2	@ x1, _170, _174
	mov	r2, r9	@ _176, s02
	muls	r2, r3	@ _176, _7
	add	r0, r0, r9	@ _180, s02
	ldr	r5, [sp, #28]	@ tmp319, %sfp
	adds	r0, r2, r0	@ x0, _176, _180
	lsls	r2, r3, #2	@ tmp371, _7,
	adds	r2, r2, r3	@ _184, tmp371, _7
	adds	r5, r5, #160	@ tmp319,
	lsls	r2, r2, #5	@ tmp373, _184,
	ldr	r1, [sp, #44]	@ v1$y, %sfp
	adds	r2, r5, r2	@ row, _73, tmp373
.L7:
@ src/main.c:139:             if(v1.y == mid_y) {
	ldr	r3, [sp, #20]	@ mid_y, %sfp
	cmp	r3, r1	@ mid_y, v1$y
	bne	.LCB284	@
	b	.L21	@long jump	@
.LCB284:
@ src/main.c:144:                 x0 = v2.x << 16;
	mov	r3, ip	@ v2$x, v2$x
	lsls	r0, r3, #16	@ x0, v2$x,
@ src/main.c:145:                 dx0 = -s12;
	ldr	r3, [sp, #52]	@ s12, %sfp
	rsbs	r3, r3, #0	@ s02, s12
	mov	r9, r3	@ s02, s02
.L22:
@ src/main.c:116:         for(int i = 0; i < range; i++)
	mov	r3, r10	@ _3, _3
	cmp	r3, #0	@ _3,
	ble	.L1		@,
@ src/main.c:118:             if(row >= 0 && row < SH * GBA_SW)
	ldr	r3, .L58+4	@ tmp378,
	ldr	r7, [sp, #32]	@ tmp417, %sfp
	str	r3, [sp]	@ tmp378, %sfp
	ldr	r3, [sp, #4]	@ color, %sfp
	add	r7, r7, r10	@ tmp417, _3
	lsls	r7, r7, #5	@ tmp377, _242,
	lsls	r6, r3, #16	@ tmp431, color,
	adds	r7, r7, r2	@ _199, tmp377, row
	orrs	r6, r3	@ tmp433, color
	mov	r10, fp	@ dx1, dx1
	str	r6, [sp, #12]	@ tmp433, %sfp
	mov	fp, r9	@ s02, s02
	mov	r9, r7	@ _199, _199
	b	.L25		@
.L30:
@ src/main.c:132:             row += GBA_SW;
	adds	r2, r2, #160	@ row,
@ src/main.c:130:             x0 += dx0;
	add	r0, r0, fp	@ x0, s02
@ src/main.c:131:             x1 += dx1;
	add	r4, r4, r10	@ x1, dx1
@ src/main.c:116:         for(int i = 0; i < range; i++)
	cmp	r2, r9	@ row, _199
	beq	.L1		@,
.L25:
@ src/main.c:118:             if(row >= 0 && row < SH * GBA_SW)
	ldr	r3, [sp]	@ tmp378, %sfp
	cmp	r2, r3	@ row, tmp378
	bhi	.L30		@,
@ src/main.c:120:                 int start = (x0 >> 16);
	asrs	r1, r0, #16	@ tmp.77, x0,
@ src/main.c:28:     return a < b ? a : b;
	cmp	r1, #159	@ tmp.77,
	ble	.L26		@,
	movs	r1, #159	@ tmp.77,
.L27:
@ src/main.c:121:                 int end = (x1 >> 16);
	asrs	r5, r4, #16	@ _150, x1,
@ src/main.c:28:     return a < b ? a : b;
	cmp	r5, #159	@ _150,
	ble	.L28		@,
	movs	r5, #159	@ _150,
.L29:
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r1, r5	@ tmp.77, _150
	bgt	.L30		@,
	subs	r6, r5, r1	@ _165, _150, tmp.77
	cmp	r6, #5	@ _165,
	bls	.L31		@,
	adds	r3, r6, #1	@ niters.71, _165,
	ldr	r7, [sp, #124]	@ tmp569, VRAM
	str	r3, [sp, #16]	@ niters.71, %sfp
	adds	r3, r1, r2	@ _161, tmp.77, row
	mov	r8, r3	@ _161, _161
	lsls	r3, r3, #1	@ _160, _161,
	adds	r3, r3, r7	@ _160, _160, tmp569
	lsrs	r7, r3, #1	@ _151, vectp.72,
	str	r3, [sp, #8]	@ vectp.72, %sfp
	movs	r3, #1	@ prolog_loop_niters.73,
	movs	r6, r7	@ _151, _151
	ands	r3, r7	@ prolog_loop_niters.73, _151
	movs	r7, #1	@ tmp576,
	tst	r7, r6	@ tmp576, _151
	beq	.L32		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	ldr	r7, [sp, #8]	@ vectp.72, %sfp
	ldr	r6, [sp, #4]	@ color, %sfp
	strh	r6, [r7]	@ color, *vectp.72_164
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r1, r1, #1	@ tmp.77,
.L32:
	ldr	r6, [sp, #16]	@ niters.71, %sfp
	subs	r6, r6, r3	@ niters.74, niters.71, prolog_loop_niters.73
	mov	ip, r6	@ niters.74, niters.74
	add	r3, r3, r8	@ _33, _161
	ldr	r6, [sp, #124]	@ tmp582, VRAM
	lsls	r3, r3, #1	@ _32, _33,
	adds	r3, r3, r6	@ ivtmp.97, _32, tmp582
	mov	r6, ip	@ niters.74, niters.74
	lsrs	r6, r6, #1	@ bnd.75_58, niters.74,
	lsls	r6, r6, #2	@ _275, bnd.75_58,
	ldr	r7, [sp, #12]	@ tmp433, %sfp
	adds	r6, r6, r3	@ _231, _275, ivtmp.97
.L33:
@ src/main.c:127:                     VRAM[row + x] = color;
	stmia	r3!, {r7}	@ MEM <vector(2) short unsigned int> [(u16 *)_283], tmp433
	cmp	r6, r3	@ _231, ivtmp.97
	bne	.L33		@,
	movs	r3, #1	@ tmp585,
	mov	r6, ip	@ niters.74, niters.74
	str	r7, [sp, #12]	@ tmp433, %sfp
	tst	r3, r6	@ tmp585, niters.74
	beq	.L30		@,
	bics	r6, r3	@ niters.74, tmp588
	adds	r1, r1, r6	@ tmp.77, tmp.77, niters_vector_mult_vf.76_57
.L31:
	ldr	r7, [sp, #124]	@ tmp589, VRAM
	ldr	r6, [sp, #4]	@ color, %sfp
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r1, r2	@ tmp399, tmp.77, row
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp400, tmp399,
	strh	r6, [r3, r7]	@ color, *_116
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r3, r1, #1	@ x, tmp.77,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r3, r5	@ x, _150
	bgt	.L30		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r3, r2	@ tmp402, x, row
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp403, tmp402,
	strh	r6, [r3, r7]	@ color, *_72
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r3, r1, #2	@ x, tmp.77,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r5, r3	@ _150, x
	blt	.L30		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r2, r3	@ tmp405, row, x
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp406, tmp405,
	strh	r6, [r3, r7]	@ color, *_248
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r3, r1, #3	@ x, tmp.77,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r5, r3	@ _150, x
	blt	.L30		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r2, r3	@ tmp408, row, x
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp409, tmp408,
	strh	r6, [r3, r7]	@ color, *_256
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r3, r1, #4	@ x, tmp.77,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r5, r3	@ _150, x
	blt	.L30		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r3, r2, r3	@ tmp411, row, x
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r3, r3, #1	@ tmp412, tmp411,
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	adds	r1, r1, #5	@ x,
@ src/main.c:127:                     VRAM[row + x] = color;
	strh	r6, [r3, r7]	@ color, *_264
@ src/main.c:126:                 for(int x = start; x <= end; x++)
	cmp	r5, r1	@ _150, x
	blt	.L30		@,
@ src/main.c:127:                     VRAM[row + x] = color;
	adds	r1, r2, r1	@ tmp414, row, x
@ src/main.c:127:                     VRAM[row + x] = color;
	lsls	r1, r1, #1	@ tmp415, tmp414,
@ src/main.c:132:             row += GBA_SW;
	adds	r2, r2, #160	@ row,
@ src/main.c:127:                     VRAM[row + x] = color;
	strh	r6, [r1, r7]	@ color, *_76
@ src/main.c:130:             x0 += dx0;
	add	r0, r0, fp	@ x0, s02
@ src/main.c:131:             x1 += dx1;
	add	r4, r4, r10	@ x1, dx1
@ src/main.c:116:         for(int i = 0; i < range; i++)
	cmp	r2, r9	@ row, _199
	bne	.L25		@,
.L1:
@ src/main.c:149: }
	add	sp, sp, #76	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L13:
@ src/main.c:33:     return a > b ? a : b;
	mvns	r3, r0	@ tmp421, _108
	asrs	r3, r3, #31	@ tmp420, tmp421,
	ands	r0, r3	@ _108, tmp420
	b	.L14		@
.L11:
	mvns	r3, r1	@ tmp419, tmp.86
	asrs	r3, r3, #31	@ tmp418, tmp419,
	ands	r1, r3	@ tmp.86, tmp418
	b	.L12		@
.L28:
	mvns	r3, r5	@ tmp426, _150
	asrs	r3, r3, #31	@ tmp425, tmp426,
	ands	r5, r3	@ _150, tmp425
	b	.L29		@
.L26:
	mvns	r3, r1	@ tmp424, tmp.77
	asrs	r3, r3, #31	@ tmp423, tmp424,
	ands	r1, r3	@ tmp.77, tmp423
	b	.L27		@
.L21:
@ src/main.c:140:                 x1 = v1.x << 16;
	mov	r3, r8	@ v1$x, v1$x
	lsls	r4, r3, #16	@ x1, v1$x,
@ src/main.c:141:                 dx1 = s12;
	ldr	r3, [sp, #52]	@ dx1, %sfp
	mov	fp, r3	@ dx1, dx1
	b	.L22		@
.L38:
@ src/main.c:108:     int x1 = x0;
	movs	r4, r0	@ x1, x0
	b	.L7		@
.L59:
	.align	2
.L58:
	.word	LUT_Div
	.word	17119
	.size	raster, .-raster
	.text
	.align	1
	.p2align 2,,3
	.global	buttons
	.syntax unified
	.code	16
	.thumb_func
	.type	buttons, %function
buttons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ src/main.c:153:     if (KEY_R) {
	movs	r2, #16	@ tmp138,
	movs	r1, r2	@ tmp140, tmp138
@ src/main.c:153:     if (KEY_R) {
	ldr	r3, .L67	@ tmp131,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ src/main.c:153:     if (KEY_R) {
	ands	r1, r3	@ tmp140, MEM[(volatile u16 *)67109168B]
	tst	r2, r3	@ tmp138, MEM[(volatile u16 *)67109168B]
	bne	.L61		@,
@ src/main.c:155:         mRotation -= 3;
	ldr	r2, .L67+4	@ tmp143,
	ldr	r3, [r2]	@ mRotation, mRotation
	subs	r3, r3, #3	@ _4,
@ src/main.c:154:         *isPressed = 0;
	str	r1, [r0]	@ tmp140, *isPressed_21(D)
@ src/main.c:155:         mRotation -= 3;
	str	r3, [r2]	@ _4, mRotation
.L61:
@ src/main.c:158:     if (KEY_L) {
	movs	r2, #32	@ tmp154,
	movs	r1, r2	@ tmp156, tmp154
@ src/main.c:158:     if (KEY_L) {
	ldr	r3, .L67	@ tmp147,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ src/main.c:158:     if (KEY_L) {
	ands	r1, r3	@ tmp156, MEM[(volatile u16 *)67109168B]
	tst	r2, r3	@ tmp154, MEM[(volatile u16 *)67109168B]
	bne	.L62		@,
@ src/main.c:160:         mRotation += 3;
	ldr	r2, .L67+4	@ tmp159,
	ldr	r3, [r2]	@ mRotation, mRotation
	adds	r3, r3, #3	@ _8,
@ src/main.c:159:         *isPressed = 0;
	str	r1, [r0]	@ tmp156, *isPressed_21(D)
@ src/main.c:160:         mRotation += 3;
	str	r3, [r2]	@ _8, mRotation
.L62:
@ src/main.c:163:     if(KEY_U ) {
	ldr	r3, .L67	@ tmp163,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ src/main.c:163:     if(KEY_U ) {
	lsls	r3, r3, #25	@ tmp194, MEM[(volatile u16 *)67109168B],
	bmi	.L63		@,
@ src/main.c:164:         mPosition -= 10;
	ldr	r2, .L67+8	@ tmp174,
	ldr	r3, [r2]	@ mPosition, mPosition
	subs	r3, r3, #10	@ _12,
	str	r3, [r2]	@ _12, mPosition
.L63:
@ src/main.c:166:     if(KEY_D ) {
	ldr	r3, .L67	@ tmp178,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ src/main.c:166:     if(KEY_D ) {
	lsls	r3, r3, #24	@ tmp195, MEM[(volatile u16 *)67109168B],
	bmi	.L60		@,
@ src/main.c:167:         mPosition += 10;
	ldr	r2, .L67+8	@ tmp189,
	ldr	r3, [r2]	@ mPosition, mPosition
	adds	r3, r3, #10	@ _28,
	str	r3, [r2]	@ _28, mPosition
.L60:
@ src/main.c:169: }
	@ sp needed	@
	bx	lr
.L68:
	.align	2
.L67:
	.word	67109168
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	buttons, .-buttons
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4272
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	mov	r7, r10	@,
	mov	lr, fp	@,
	mov	r6, r9	@,
	mov	r5, r8	@,
@ src/main.c:173:     *(u16*)0x4000000 = 0x405; //Mode 5
	movs	r3, #128	@ tmp247,
@ src/main.c:172: {
	push	{r5, r6, r7, lr}	@
	ldr	r4, .L106	@,
@ src/main.c:173:     *(u16*)0x4000000 = 0x405; //Mode 5
	ldr	r2, .L106+4	@ tmp248,
	lsls	r3, r3, #19	@ tmp247, tmp247,
@ src/main.c:172: {
	add	sp, sp, r4	@,
@ src/main.c:173:     *(u16*)0x4000000 = 0x405; //Mode 5
	strh	r2, [r3]	@ tmp248, MEM[(u16 *)67108864B]
@ src/main.c:174:     REG_BG2PA = 171; // Scale X                                              
	movs	r2, #171	@ tmp251,
	ldr	r1, .L106+8	@ tmp250,
@ src/main.c:188:         if (DISPCNT & BACKB) { 
	ldr	r3, [r3]	@ prephitmp_401, MEM[(u32 *)67108864B]
@ src/main.c:174:     REG_BG2PA = 171; // Scale X                                              
	strh	r2, [r1]	@ tmp251, MEM[(volatile short unsigned int *)67108896B]
@ src/main.c:175:     REG_BG2PD = 171; // Scale Y
	ldr	r1, .L106+12	@ tmp253,
	strh	r2, [r1]	@ tmp251, MEM[(volatile short unsigned int *)67108902B]
@ src/main.c:188:         if (DISPCNT & BACKB) { 
	str	r3, [sp, #72]	@ prephitmp_401, %sfp
	movs	r3, #1	@ ivtmp.165,
	movs	r7, #176	@ tmp512,
@ src/main.c:178:     FRAME = 0;
	movs	r2, #0	@ tmp257,
@ src/main.c:188:         if (DISPCNT & BACKB) { 
	str	r3, [sp, #80]	@ ivtmp.165, %sfp
@ src/main.c:180:     int isPressed = 1;
	str	r3, [sp, #76]	@ isPressed, %sfp
	ldr	r3, .L106+16	@ tmp515,
	str	r3, [sp, #92]	@ tmp515, %sfp
	ldr	r3, .L106+20	@ tmp516,
	str	r3, [sp, #96]	@ tmp516, %sfp
	ldr	r3, .L106+24	@ ivtmp.161,
@ src/main.c:178:     FRAME = 0;
	ldr	r4, .L106+28	@ tmp513,
	str	r3, [sp, #100]	@ ivtmp.161, %sfp
	lsls	r7, r7, #3	@ tmp512, tmp512,
	add	r3, sp, #96	@ tmp746,,
	str	r2, [r4, #4]	@ tmp257, FRAME
	adds	r7, r7, r3	@ tmp512, tmp512, tmp746
@ src/main.c:155:         mRotation -= 3;
	ldr	r2, [r4]	@ prephitmp_395, mRotation
	ldr	r3, .L106+32	@ tmp518,
	str	r2, [sp, #68]	@ prephitmp_395, %sfp
	str	r3, [sp, #60]	@ tmp518, %sfp
@ src/main.c:164:         mPosition -= 10;
	ldr	r2, .L106+36	@ tmp514,
	ldr	r3, .L106+40	@ tmp519,
	str	r2, [sp, #84]	@ tmp514, %sfp
	str	r3, [sp, #64]	@ tmp519, %sfp
	ldr	r2, [r2]	@ prephitmp_397, mPosition
	ldr	r3, .L106+44	@ tmp520,
	str	r2, [sp, #56]	@ prephitmp_397, %sfp
	str	r3, [sp, #88]	@ tmp520, %sfp
	ldr	r3, .L106+48	@ _122,
	str	r3, [sp, #52]	@ _122, %sfp
	ldr	r3, .L106+52	@ tmp522,
	str	r3, [sp, #36]	@ tmp522, %sfp
	ldr	r3, .L106+56	@ tmp523,
	str	r3, [sp, #40]	@ tmp523, %sfp
	ldr	r3, .L106+60	@ tmp524,
	str	r3, [sp, #104]	@ tmp524, %sfp
.L93:
@ src/main.c:185:         while(*Scanline < 160);
	ldr	r2, .L106+64	@ tmp261,
.L70:
	ldrh	r3, [r2]	@ MEM[(volatile u16 *)67108870B], MEM[(volatile u16 *)67108870B]
@ src/main.c:185:         while(*Scanline < 160);
	cmp	r3, #159	@ MEM[(volatile u16 *)67108870B],
	bls	.L70		@,
@ src/main.c:188:         if (DISPCNT & BACKB) { 
	movs	r2, #16	@ tmp588,
	ldr	r3, [sp, #72]	@ prephitmp_401, %sfp
	tst	r2, r3	@ tmp588, prephitmp_401
	bne	.LCB658	@
	b	.L71	@long jump	@
.LCB658:
@ src/main.c:189:             DISPCNT &= ~BACKB; 
	bics	r3, r2	@ prephitmp_401, tmp591
	str	r3, [sp, #72]	@ prephitmp_401, %sfp
	ldr	r3, .L106+68	@ prephitmp_400,
	str	r3, [sp, #32]	@ prephitmp_400, %sfp
.L74:
@ src/main.c:192:             DISPCNT |= BACKB; 
	movs	r3, #128	@ tmp272,
	ldr	r2, [sp, #72]	@ prephitmp_401, %sfp
	lsls	r3, r3, #19	@ tmp272, tmp272,
	str	r2, [r3]	@ prephitmp_401, MEM[(u32 *)67108864B]
@ src/main.c:193:             VRAM = (u16*)VRAM_F;
	ldr	r3, [sp, #32]	@ prephitmp_400, %sfp
@ src/main.c:198:             VRAM[i] = 0;
	ldr	r2, .L106+72	@,
	movs	r0, r3	@, prephitmp_400
	movs	r1, #0	@,
@ src/main.c:193:             VRAM = (u16*)VRAM_F;
	str	r3, [r4, #8]	@ prephitmp_400, VRAM
@ src/main.c:198:             VRAM[i] = 0;
	bl	memset		@
@ src/main.c:153:     if (KEY_R) {
	movs	r2, #16	@ tmp596,
@ src/main.c:153:     if (KEY_R) {
	ldr	r3, .L106+76	@ tmp595,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ src/main.c:153:     if (KEY_R) {
	tst	r2, r3	@ tmp596, MEM[(volatile u16 *)67109168B]
	bne	.L73		@,
@ src/main.c:155:         mRotation -= 3;
	ldr	r3, [sp, #68]	@ prephitmp_395, %sfp
	subs	r3, r3, #3	@ prephitmp_395,
	str	r3, [sp, #68]	@ prephitmp_395, %sfp
@ src/main.c:154:         *isPressed = 0;
	movs	r3, #0	@ isPressed,
	str	r3, [sp, #76]	@ isPressed, %sfp
.L73:
@ src/main.c:158:     if (KEY_L) {
	ldr	r3, .L106+76	@ tmp602,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ src/main.c:158:     if (KEY_L) {
	lsls	r3, r3, #26	@ tmp544, MEM[(volatile u16 *)67109168B],
	bmi	.LCB702	@
	b	.L75	@long jump	@
.LCB702:
@ src/main.c:202:         mRotation += isPressed * 2;
	ldr	r2, [sp, #68]	@ prephitmp_395, %sfp
	mov	ip, r2	@ prephitmp_395, prephitmp_395
@ src/main.c:202:         mRotation += isPressed * 2;
	ldr	r3, [sp, #76]	@ isPressed, %sfp
	lsls	r3, r3, #1	@ _407, isPressed,
@ src/main.c:202:         mRotation += isPressed * 2;
	add	ip, ip, r3	@ prephitmp_395, _407
	mov	r3, ip	@ prephitmp_395, prephitmp_395
	str	r3, [sp, #68]	@ prephitmp_395, %sfp
.L76:
@ src/main.c:163:     if(KEY_U ) {
	ldr	r3, .L106+76	@ tmp609,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ src/main.c:163:     if(KEY_U ) {
	lsls	r3, r3, #25	@ tmp545, MEM[(volatile u16 *)67109168B],
	bmi	.L77		@,
@ src/main.c:164:         mPosition -= 10;
	ldr	r3, [sp, #56]	@ prephitmp_397, %sfp
	ldr	r2, [sp, #84]	@ tmp514, %sfp
	subs	r3, r3, #10	@ prephitmp_397,
	str	r3, [sp, #56]	@ prephitmp_397, %sfp
	str	r3, [r2]	@ prephitmp_397, mPosition
.L77:
@ src/main.c:166:     if(KEY_D ) {
	ldr	r3, .L106+76	@ tmp613,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ src/main.c:166:     if(KEY_D ) {
	lsls	r3, r3, #24	@ tmp546, MEM[(volatile u16 *)67109168B],
	bmi	.L78		@,
@ src/main.c:167:         mPosition += 10;
	ldr	r3, [sp, #56]	@ prephitmp_397, %sfp
	ldr	r2, [sp, #84]	@ tmp514, %sfp
	adds	r3, r3, #10	@ prephitmp_397,
	str	r3, [sp, #56]	@ prephitmp_397, %sfp
	str	r3, [r2]	@ prephitmp_397, mPosition
.L78:
@ src/main.c:203:         if(mRotation > 359) mRotation = 0;
	movs	r3, #180	@ tmp327,
@ src/main.c:202:         mRotation += isPressed * 2;
	ldr	r2, [sp, #68]	@ prephitmp_395, %sfp
@ src/main.c:203:         if(mRotation > 359) mRotation = 0;
	lsls	r3, r3, #1	@ tmp327, tmp327,
@ src/main.c:202:         mRotation += isPressed * 2;
	str	r2, [r4]	@ prephitmp_395, mRotation
@ src/main.c:203:         if(mRotation > 359) mRotation = 0;
	cmp	r2, r3	@ prephitmp_395, tmp327
	bge	.LCB751	@
	b	.L79	@long jump	@
.LCB751:
@ src/main.c:203:         if(mRotation > 359) mRotation = 0;
	movs	r3, #0	@ tmp329,
	str	r3, [r4]	@ tmp329, mRotation
	str	r3, [sp, #28]	@ pretmp_441, %sfp
	adds	r3, r3, #1	@ pretmp_439,
	adds	r3, r3, #255	@ pretmp_439,
	str	r3, [sp, #24]	@ pretmp_439, %sfp
	movs	r3, #0	@ prephitmp_395,
	str	r3, [sp, #68]	@ prephitmp_395, %sfp
.L80:
	add	r2, sp, #112	@ tmp630,,
	ldr	r3, [sp, #100]	@ ivtmp.161, %sfp
	mov	ip, r2	@ ivtmp.163, tmp630
	ldr	r2, .L106+80	@ tmp632,
	movs	r5, r3	@ ivtmp.161, ivtmp.161
	adds	r3, r3, r2	@ _531, _531, tmp632
	str	r3, [sp, #16]	@ _531, %sfp
@ src/main.c:44:     if(p.z > 2549) p.z = 2549;
	ldr	r3, .L106+84	@ tmp343,
	str	r3, [sp, #20]	@ tmp343, %sfp
	ldr	r3, [sp, #24]	@ pretmp_439, %sfp
	mov	fp, r3	@ pretmp_439, pretmp_439
	ldr	r3, [sp, #28]	@ pretmp_441, %sfp
	movs	r6, r7	@ ivtmp.162, tmp512
	mov	r10, r3	@ pretmp_441, pretmp_441
	str	r4, [sp, #44]	@ tmp513, %sfp
.L84:
@ src/main.c:211:             Vec3i p = model_vertices[i];
	ldr	r1, [r5]	@ p$x, MEM[(int *)_538]
	ldr	r4, [r5, #8]	@ p$z, MEM[(int *)_538 + 8B]
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	mov	r3, r10	@ _139, pretmp_441
	muls	r3, r1	@ _139, p$x
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	mov	r2, fp	@ _141, pretmp_439
	muls	r2, r4	@ _141, p$z
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	asrs	r3, r3, #8	@ _140, _139,
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	asrs	r2, r2, #8	@ _142, _141,
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	adds	r3, r3, r2	@ _143, _140, _142
@ src/main.c:213:             p.z += mPosition;
	ldr	r2, [sp, #56]	@ prephitmp_397, %sfp
	adds	r3, r3, r2	@ _18, _143, prephitmp_397
@ src/main.c:43:     if(p.z < 0) p.z = 0;
	mvns	r2, r3	@ tmp527, _18
@ src/main.c:44:     if(p.z > 2549) p.z = 2549;
	ldr	r0, [sp, #20]	@ tmp343, %sfp
@ src/main.c:43:     if(p.z < 0) p.z = 0;
	asrs	r2, r2, #31	@ tmp526, tmp527,
	ands	r2, r3	@ _103, _18
@ src/main.c:44:     if(p.z > 2549) p.z = 2549;
	cmp	r2, r0	@ _103, tmp343
	ble	.L83		@,
	ldr	r2, .L106+84	@ _103,
.L83:
@ src/main.c:46:     int x = (p.x * LUT_InvZ[p.z]) >> 16;
	ldr	r0, [sp, #60]	@ tmp518, %sfp
	lsls	r2, r2, #2	@ tmp344, _103,
	ldr	r2, [r0, r2]	@ _125, LUT_InvZ[_124]
@ src/main.c:47:     int y = (p.y * LUT_InvZ[p.z]) >> 16;
	ldr	r0, [r5, #4]	@ MEM[(int *)_538 + 4B], MEM[(int *)_538 + 4B]
	muls	r0, r2	@ _128, _125
@ src/main.c:47:     int y = (p.y * LUT_InvZ[p.z]) >> 16;
	asrs	r0, r0, #16	@ y_129, _128,
	mov	r9, r0	@ y_129, y_129
@ src/main.c:49:     return (Vec2i){x + (SW >> 1), y + (SH >> 1)};
	movs	r0, #53	@ _131,
	mov	r8, r0	@ _131, _131
@ src/main.c:58:     result.x = ((p.x * cosA) >> 8) - ((p.z * sinA) >> 8);
	movs	r0, r1	@ p$x, p$x
	mov	r1, fp	@ _134, pretmp_439
	muls	r1, r0	@ _134, p$x
@ src/main.c:58:     result.x = ((p.x * cosA) >> 8) - ((p.z * sinA) >> 8);
	movs	r0, r4	@ p$z, p$z
	mov	r4, r10	@ _136, pretmp_441
	muls	r4, r0	@ _136, p$z
@ src/main.c:58:     result.x = ((p.x * cosA) >> 8) - ((p.z * sinA) >> 8);
	asrs	r1, r1, #8	@ _135, _134,
@ src/main.c:58:     result.x = ((p.x * cosA) >> 8) - ((p.z * sinA) >> 8);
	asrs	r4, r4, #8	@ _137, _136,
@ src/main.c:58:     result.x = ((p.x * cosA) >> 8) - ((p.z * sinA) >> 8);
	subs	r1, r1, r4	@ _138, _135, _137
@ src/main.c:46:     int x = (p.x * LUT_InvZ[p.z]) >> 16;
	muls	r2, r1	@ _126, _138
@ src/main.c:46:     int x = (p.x * LUT_InvZ[p.z]) >> 16;
	asrs	r2, r2, #16	@ x_127, _126,
@ src/main.c:49:     return (Vec2i){x + (SW >> 1), y + (SH >> 1)};
	adds	r2, r2, #80	@ _130,
@ src/main.c:49:     return (Vec2i){x + (SW >> 1), y + (SH >> 1)};
	add	r8, r8, r9	@ _131, y_129
@ src/main.c:49:     return (Vec2i){x + (SW >> 1), y + (SH >> 1)};
	str	r2, [r6]	@ _130, MEM[(int *)_535]
	mov	r2, r8	@ _131, _131
	str	r2, [r6, #4]	@ _131, MEM[(int *)_535 + 4B]
@ src/main.c:216:             projectedZ[i] = p.z;
	mov	r2, ip	@ ivtmp.163, ivtmp.163
	stmia	r2!, {r3}	@ MEM[(int *)_533], _18
@ src/main.c:209:         for(int i = 0; i < MODEL_VERTEX_COUNT; i++)
	ldr	r3, [sp, #16]	@ _531, %sfp
	adds	r5, r5, #12	@ ivtmp.161,
@ src/main.c:216:             projectedZ[i] = p.z;
	mov	ip, r2	@ ivtmp.163, ivtmp.163
@ src/main.c:209:         for(int i = 0; i < MODEL_VERTEX_COUNT; i++)
	adds	r6, r6, #8	@ ivtmp.162,
	cmp	r3, r5	@ _531, ivtmp.161
	bne	.L84		@,
@ src/main.c:221:             depthBucketCounter[i] = 0;
	movs	r2, #128	@,
	movs	r1, #0	@,
	lsls	r2, r2, #1	@,,
	ldr	r0, [sp, #64]	@, %sfp
	ldr	r4, [sp, #44]	@ tmp513, %sfp
	bl	memset		@
@ src/main.c:222:         for(int i = 0; i < MODEL_TRI_COUNT; i++)
	movs	r3, #0	@ i,
	mov	ip, r3	@ i, i
@ src/main.c:222:         for(int i = 0; i < MODEL_TRI_COUNT; i++)
	movs	r3, #162	@ tmp419,
	lsls	r3, r3, #2	@ tmp419, tmp419,
	mov	fp, r3	@ tmp419, tmp419
	ldr	r2, [sp, #88]	@ ivtmp.155, %sfp
	str	r4, [sp, #20]	@ tmp513, %sfp
	b	.L88		@
.L104:
@ src/main.c:234:             if (b > DEPTH_BUCKET_COUNT-1) b = DEPTH_BUCKET_COUNT-1;
	movs	r3, #63	@ _174,
.L87:
@ src/main.c:236:             depthBuckets[b][depthBucketCounter[b]++] = i;
	ldr	r5, [sp, #64]	@ tmp519, %sfp
	lsls	r0, r3, #2	@ tmp410, _174,
	ldr	r1, [r5, r0]	@ _29, depthBucketCounter[_174]
@ src/main.c:236:             depthBuckets[b][depthBucketCounter[b]++] = i;
	adds	r4, r1, #1	@ _30, _29,
	str	r4, [r5, r0]	@ _30, depthBucketCounter[_174]
@ src/main.c:236:             depthBuckets[b][depthBucketCounter[b]++] = i;
	movs	r0, #100	@ tmp416,
	muls	r0, r3	@ tmp416, _174
	adds	r3, r0, r1	@ tmp417, tmp416, _29
	mov	r0, ip	@ i, i
	ldr	r1, [sp, #52]	@ _122, %sfp
	lsls	r3, r3, #2	@ tmp418, tmp417,
	str	r0, [r1, r3]	@ i, depthBuckets[_174][_29]
.L85:
@ src/main.c:222:         for(int i = 0; i < MODEL_TRI_COUNT; i++)
	movs	r3, #1	@ tmp672,
	add	ip, ip, r3	@ i, tmp672
@ src/main.c:222:         for(int i = 0; i < MODEL_TRI_COUNT; i++)
	adds	r2, r2, #6	@ ivtmp.155,
	cmp	ip, fp	@ i, tmp419
	beq	.L103		@,
.L88:
@ src/main.c:224:             int tri0 = model_triangles[i*3];
	ldrh	r5, [r2]	@ tri0, MEM[(short unsigned int *)_550]
	lsls	r3, r5, #3	@ tmp363, tri0,
	ldr	r1, [r7, r3]	@ a$x, projectedPoints[tri0_106].x
	mov	r8, r1	@ a$x, a$x
	adds	r3, r7, r3	@ tmp367, tmp512, tmp363
	ldr	r3, [r3, #4]	@ a$y, projectedPoints[tri0_106].y
	mov	r10, r3	@ a$y, a$y
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	mov	r3, r8	@ a$x, a$x
@ src/main.c:225:             int tri1 = model_triangles[i*3 + 1];
	ldrh	r4, [r2, #2]	@ tri1, MEM[(short unsigned int *)_550 + 2B]
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	lsls	r1, r4, #3	@ tmp371, tri1,
@ src/main.c:226:             int tri2 = model_triangles[i*3 + 2];
	ldrh	r0, [r2, #4]	@ tri2, MEM[(short unsigned int *)_550 + 4B]
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	ldr	r6, [r7, r1]	@ projectedPoints[tri1_107].x, projectedPoints[tri1_107].x
	subs	r6, r6, r3	@ _144, projectedPoints[tri1_107].x, a$x
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	lsls	r3, r0, #3	@ tmp376, tri2,
	mov	r9, r3	@ tmp376, tmp376
	str	r0, [sp, #16]	@ tri2, %sfp
	mov	r0, r10	@ a$y, a$y
	adds	r3, r7, r3	@ tmp377, tmp512, tmp376
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	adds	r1, r7, r1	@ tmp385, tmp512, tmp371
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	ldr	r3, [r3, #4]	@ projectedPoints[tri2_108].y, projectedPoints[tri2_108].y
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	ldr	r1, [r1, #4]	@ projectedPoints[tri1_107].y, projectedPoints[tri1_107].y
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	subs	r3, r3, r0	@ _145, projectedPoints[tri2_108].y, a$y
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	subs	r1, r1, r0	@ _147, projectedPoints[tri1_107].y, a$y
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	mov	r0, r9	@ tmp376, tmp376
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	muls	r3, r6	@ _146, _144
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	ldr	r6, [r7, r0]	@ projectedPoints[tri2_108].x, projectedPoints[tri2_108].x
	mov	r0, r8	@ a$x, a$x
	subs	r6, r6, r0	@ _148, projectedPoints[tri2_108].x, a$x
@ src/main.c:38:     return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	muls	r6, r1	@ _149, _147
@ src/main.c:229:             if(edge(projectedPoints[tri0], projectedPoints[tri1], projectedPoints[tri2]) <= 0) continue;
	cmp	r3, r6	@ _146, _149
	ble	.L85		@,
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	movs	r1, #16	@ tmp660,
	add	r3, sp, #96	@ tmp658,,
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	lsls	r5, r5, #2	@ tmp397, tri0,
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	adds	r3, r3, r1	@ tmp659, tmp658, tmp660
	ldr	r3, [r3, r5]	@ projectedZ[tri0_106], projectedZ[tri0_106]
	movs	r5, r1	@ tmp663, tmp663
	add	r0, sp, #96	@ tmp661,,
	adds	r1, r0, r1	@ tmp662, tmp661, tmp663
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	lsls	r4, r4, #2	@ tmp400, tri1,
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	ldr	r1, [r1, r4]	@ projectedZ[tri1_107], projectedZ[tri1_107]
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	ldr	r0, [sp, #16]	@ tri2, %sfp
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	adds	r3, r3, r1	@ _27, projectedZ[tri0_106], projectedZ[tri1_107]
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	add	r1, sp, #96	@ tmp664,,
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	lsls	r0, r0, #2	@ tmp406, tri2,
@ src/main.c:231:             int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
	adds	r1, r1, r5	@ tmp665, tmp664, tmp666
	ldr	r1, [r1, r0]	@ projectedZ[tri2_108], projectedZ[tri2_108]
	adds	r3, r3, r1	@ z_109, _27, projectedZ[tri2_108]
@ src/main.c:232:             int b = z >> DEPTH_SORT_ROUNDING;
	asrs	r3, r3, #5	@ _174, z_109,
@ src/main.c:234:             if (b > DEPTH_BUCKET_COUNT-1) b = DEPTH_BUCKET_COUNT-1;
	cmp	r3, #63	@ _174,
	bgt	.L104		@,
@ src/main.c:233:             if (b < 0) b = 0;
	mvns	r1, r3	@ tmp529, _174
	asrs	r1, r1, #31	@ tmp528, tmp529,
	ands	r3, r1	@ _174, tmp528
	b	.L87		@
.L103:
	movs	r2, #252	@ tmp675,
	ldr	r3, [sp, #64]	@ ivtmp.146, %sfp
	adds	r3, r3, r2	@ ivtmp.146, ivtmp.146, tmp675
	mov	r9, r3	@ ivtmp.146, ivtmp.146
	ldr	r2, .L106+88	@ tmp678,
	ldr	r3, [sp, #52]	@ ivtmp.148, %sfp
	adds	r3, r3, r2	@ ivtmp.148, ivtmp.148, tmp678
	mov	fp, r3	@ ivtmp.148, ivtmp.148
@ src/main.c:253:                 int z = ((120 - n.z) & 255) >> 3;
	movs	r3, #31	@ tmp531,
	mov	r8, r3	@ tmp531, tmp531
	mov	r3, fp	@ ivtmp.148, ivtmp.148
	str	r3, [sp, #48]	@ ivtmp.148, %sfp
	mov	r3, r9	@ ivtmp.146, ivtmp.146
	str	r3, [sp, #44]	@ ivtmp.146, %sfp
	ldr	r3, [sp, #104]	@ tmp524, %sfp
	mov	r9, r3	@ tmp524, tmp524
	ldr	r4, [sp, #20]	@ tmp513, %sfp
	ldr	r5, [sp, #88]	@ tmp520, %sfp
	str	r4, [sp, #108]	@ tmp513, %sfp
	ldr	r6, [sp, #48]	@ ivtmp.140, %sfp
.L89:
@ src/main.c:242:             for(int j = 0; j < depthBucketCounter[i]; j++)
	ldr	r3, [sp, #44]	@ ivtmp.146, %sfp
	ldr	r3, [r3]	@ _213, MEM[(int *)_123]
@ src/main.c:242:             for(int j = 0; j < depthBucketCounter[i]; j++)
	movs	r4, #0	@ j,
@ src/main.c:242:             for(int j = 0; j < depthBucketCounter[i]; j++)
	str	r3, [sp, #20]	@ _213, %sfp
@ src/main.c:242:             for(int j = 0; j < depthBucketCounter[i]; j++)
	cmp	r3, #0	@ _213,
	ble	.L92		@,
	str	r6, [sp, #16]	@ ivtmp.140, %sfp
.L90:
@ src/main.c:244:                 int tri = depthBuckets[i][j];
	ldr	r2, [sp, #16]	@ ivtmp.140, %sfp
	ldmia	r2!, {r3}	@ MEM[(int *)_117], tri
@ src/main.c:251:                 Vec3i n = (Vec3i){ model_normals[tri].x, model_normals[tri].y, model_normals[tri].z };
	ldr	r0, [sp, #36]	@ tmp522, %sfp
@ src/main.c:246:                 int t0 = model_triangles[tri * 3];
	lsls	r1, r3, #1	@ tmp422, tri,
	adds	r1, r1, r3	@ _31, tmp422, tri
@ src/main.c:244:                 int tri = depthBuckets[i][j];
	str	r2, [sp, #16]	@ ivtmp.140, %sfp
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	ldr	r6, [sp, #28]	@ _154, %sfp
@ src/main.c:251:                 Vec3i n = (Vec3i){ model_normals[tri].x, model_normals[tri].y, model_normals[tri].z };
	ldrsb	r2, [r0, r1]	@ _38, model_normals
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	muls	r6, r2	@ _154, _38
@ src/main.c:251:                 Vec3i n = (Vec3i){ model_normals[tri].x, model_normals[tri].y, model_normals[tri].z };
	adds	r0, r0, r1	@ tmp435, tmp522, _31
	ldrb	r0, [r0, #2]	@ _41, model_normals
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	asrs	r2, r6, #8	@ _155, _154,
@ src/main.c:251:                 Vec3i n = (Vec3i){ model_normals[tri].x, model_normals[tri].y, model_normals[tri].z };
	lsls	r0, r0, #24	@ _41, _41,
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	ldr	r6, [sp, #24]	@ _156, %sfp
@ src/main.c:251:                 Vec3i n = (Vec3i){ model_normals[tri].x, model_normals[tri].y, model_normals[tri].z };
	asrs	r0, r0, #24	@ _41, _41,
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	muls	r6, r0	@ _156, _41
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	asrs	r0, r6, #8	@ _157, _156,
@ src/main.c:59:     result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
	adds	r2, r2, r0	@ _158, _155, _157
@ src/main.c:253:                 int z = ((120 - n.z) & 255) >> 3;
	movs	r0, #120	@ tmp688,
	subs	r2, r0, r2	@ _43, tmp688, _158
@ src/main.c:253:                 int z = ((120 - n.z) & 255) >> 3;
	mov	r0, r8	@ tmp531, tmp531
@ src/main.c:253:                 int z = ((120 - n.z) & 255) >> 3;
	asrs	r2, r2, #3	@ _44, _43,
@ src/main.c:253:                 int z = ((120 - n.z) & 255) >> 3;
	ands	r2, r0	@ z, tmp531
@ src/main.c:254:                 Vec3i color = model_palette[model_colors[tri]];
	ldr	r0, [sp, #40]	@ tmp523, %sfp
	ldrb	r0, [r0, r3]	@ _46, model_colors
@ src/main.c:247:                 int t1 = model_triangles[tri * 3 + 1];
	adds	r3, r1, #1	@ tmp449, _31,
	lsls	r3, r3, #1	@ tmp450, tmp449,
@ src/main.c:247:                 int t1 = model_triangles[tri * 3 + 1];
	ldrh	r3, [r5, r3]	@ t1_99, model_triangles
@ src/main.c:260:                 raster(projectedPoints[t0], projectedPoints[t1], projectedPoints[t2],
	lsls	r3, r3, #3	@ tmp452, t1_99,
	mov	r10, r3	@ tmp452, tmp452
@ src/main.c:246:                 int t0 = model_triangles[tri * 3];
	lsls	r3, r1, #1	@ tmp456, _31,
@ src/main.c:246:                 int t0 = model_triangles[tri * 3];
	ldrh	r3, [r5, r3]	@ t0_98, model_triangles
@ src/main.c:260:                 raster(projectedPoints[t0], projectedPoints[t1], projectedPoints[t2],
	lsls	r3, r3, #3	@ tmp458, t0_98,
	mov	ip, r3	@ tmp458, tmp458
	ldr	r3, [sp, #32]	@ prephitmp_400, %sfp
	str	r3, [sp, #12]	@ prephitmp_400,
@ src/main.c:254:                 Vec3i color = model_palette[model_colors[tri]];
	lsls	r3, r0, #1	@ tmp461, _46,
	adds	r3, r3, r0	@ tmp462, tmp461, _46
	lsls	r3, r3, #2	@ tmp463, tmp462,
	mov	fp, r3	@ tmp463, tmp463
	mov	r3, r9	@ tmp464, tmp524
	add	r3, r3, fp	@ tmp464, tmp463
@ src/main.c:256:                 color.y = (color.y * z) >> 5;
	ldr	r0, [r3, #4]	@ model_palette[_46].y, model_palette[_46].y
@ src/main.c:257:                 color.z = (color.z * z) >> 5;
	ldr	r3, [r3, #8]	@ model_palette[_46].z, model_palette[_46].z
@ src/main.c:256:                 color.y = (color.y * z) >> 5;
	muls	r0, r2	@ _49, z
@ src/main.c:257:                 color.z = (color.z * z) >> 5;
	muls	r3, r2	@ _51, z
@ src/main.c:256:                 color.y = (color.y * z) >> 5;
	asrs	r0, r0, #5	@ _50, _49,
@ src/main.c:257:                 color.z = (color.z * z) >> 5;
	asrs	r3, r3, #5	@ _52, _51,
@ src/main.c:261:                     RGB(color.x, color.y, color.z), VRAM);
	lsls	r0, r0, #5	@ tmp470, _50,
	lsls	r3, r3, #10	@ tmp482, _52,
@ src/main.c:260:                 raster(projectedPoints[t0], projectedPoints[t1], projectedPoints[t2],
	adds	r3, r0, r3	@ tmp485, tmp470, tmp482
@ src/main.c:255:                 color.x = (color.x * z) >> 5;
	mov	r6, fp	@ tmp463, tmp463
	mov	r0, r9	@ tmp524, tmp524
	ldr	r0, [r0, r6]	@ model_palette[_46].x, model_palette[_46].x
	muls	r0, r2	@ _47, z
@ src/main.c:260:                 raster(projectedPoints[t0], projectedPoints[t1], projectedPoints[t2],
	mov	r2, sp	@ tmp507,
@ src/main.c:255:                 color.x = (color.x * z) >> 5;
	asrs	r0, r0, #5	@ _48, _47,
@ src/main.c:260:                 raster(projectedPoints[t0], projectedPoints[t1], projectedPoints[t2],
	adds	r3, r3, r0	@ tmp496, tmp485, _48
	lsls	r3, r3, #16	@ tmp498, tmp496,
@ src/main.c:248:                 int t2 = model_triangles[tri * 3 + 2];
	adds	r1, r1, #2	@ tmp502,
	lsls	r1, r1, #1	@ tmp503, tmp502,
@ src/main.c:260:                 raster(projectedPoints[t0], projectedPoints[t1], projectedPoints[t2],
	lsrs	r3, r3, #16	@ tmp497, tmp498,
	str	r3, [sp, #8]	@ tmp497,
@ src/main.c:248:                 int t2 = model_triangles[tri * 3 + 2];
	ldrh	r3, [r5, r1]	@ t2_100, model_triangles
@ src/main.c:260:                 raster(projectedPoints[t0], projectedPoints[t1], projectedPoints[t2],
	lsls	r3, r3, #3	@ tmp505, t2_100,
	adds	r3, r7, r3	@ tmp508, tmp512, tmp505
	ldmia	r3!, {r0, r1}	@ tmp508, tmp548, tmp547
	stmia	r2!, {r0, r1}	@ tmp507, tmp548, tmp547
	mov	r1, ip	@ tmp458, tmp458
	mov	r3, r10	@ tmp452, tmp452
	ldr	r0, [r7, r1]	@, projectedPoints[t0_98]
	ldr	r2, [r7, r3]	@, projectedPoints[t1_99]
	adds	r1, r7, r1	@ tmp510, tmp512, tmp458
	adds	r3, r7, r3	@ tmp509, tmp512, tmp452
	ldr	r3, [r3, #4]	@, projectedPoints[t1_99]
	ldr	r1, [r1, #4]	@, projectedPoints[t0_98]
	bl	raster		@
@ src/main.c:242:             for(int j = 0; j < depthBucketCounter[i]; j++)
	ldr	r3, [sp, #20]	@ _213, %sfp
@ src/main.c:242:             for(int j = 0; j < depthBucketCounter[i]; j++)
	adds	r4, r4, #1	@ j,
@ src/main.c:242:             for(int j = 0; j < depthBucketCounter[i]; j++)
	cmp	r4, r3	@ j, _213
	bne	.L90		@,
.L92:
@ src/main.c:240:         for(int i = DEPTH_BUCKET_COUNT-1; i >= 0; i--)
	ldr	r3, [sp, #44]	@ ivtmp.146, %sfp
	subs	r3, r3, #4	@ ivtmp.146,
	str	r3, [sp, #44]	@ ivtmp.146, %sfp
	ldr	r2, [sp, #52]	@ _122, %sfp
	ldr	r3, [sp, #48]	@ ivtmp.148, %sfp
	cmp	r2, r3	@ _122, ivtmp.148
	beq	.L91		@,
	subs	r3, r3, #145	@ ivtmp.148,
	subs	r3, r3, #255	@ ivtmp.148,
	movs	r6, r3	@ ivtmp.140, ivtmp.148
	str	r3, [sp, #48]	@ ivtmp.148, %sfp
	b	.L89		@
.L91:
@ src/main.c:265:         FRAME ++;
	ldr	r3, [sp, #80]	@ ivtmp.165, %sfp
	ldr	r4, [sp, #108]	@ tmp513, %sfp
	str	r3, [r4, #4]	@ ivtmp.165, FRAME
@ src/main.c:183:     { 
	adds	r3, r3, #1	@ ivtmp.165,
	str	r3, [sp, #80]	@ ivtmp.165, %sfp
	b	.L93		@
.L79:
@ src/main.c:204:         if(mRotation < 0) mRotation = 359;
	cmp	r2, #0	@ prephitmp_395,
	bge	.L105		@,
@ src/main.c:204:         if(mRotation < 0) mRotation = 359;
	movs	r2, #4	@ pretmp_441,
	movs	r3, #104	@ tmp335,
	rsbs	r2, r2, #0	@ pretmp_441, pretmp_441
	str	r2, [sp, #28]	@ pretmp_441, %sfp
	adds	r2, r2, #5	@ pretmp_439,
	adds	r3, r3, #255	@ tmp335,
	adds	r2, r2, #255	@ pretmp_439,
	str	r3, [r4]	@ tmp335, mRotation
	str	r2, [sp, #24]	@ pretmp_439, %sfp
	str	r3, [sp, #68]	@ tmp335, %sfp
	b	.L80		@
.L75:
@ src/main.c:160:         mRotation += 3;
	ldr	r3, [sp, #68]	@ prephitmp_395, %sfp
	adds	r3, r3, #3	@ prephitmp_395,
	str	r3, [sp, #68]	@ prephitmp_395, %sfp
@ src/main.c:159:         *isPressed = 0;
	movs	r3, #0	@ isPressed,
	str	r3, [sp, #76]	@ isPressed, %sfp
	b	.L76		@
.L71:
@ src/main.c:192:             DISPCNT |= BACKB; 
	movs	r2, #16	@ tmp598,
	orrs	r3, r2	@ prephitmp_401, tmp598
	str	r3, [sp, #72]	@ prephitmp_401, %sfp
	movs	r3, #192	@ prephitmp_400,
	lsls	r3, r3, #19	@ prephitmp_400, prephitmp_400,
	str	r3, [sp, #32]	@ prephitmp_400, %sfp
	b	.L74		@
.L105:
@ src/main.c:54:     int cosA = LUT_Cos[r];
	lsls	r3, r2, #2	@ tmp331, prephitmp_395,
	ldr	r2, [sp, #92]	@ tmp515, %sfp
	ldr	r2, [r2, r3]	@ pretmp_439, LUT_Cos[prephitmp_411]
	str	r2, [sp, #24]	@ pretmp_439, %sfp
@ src/main.c:55:     int sinA = LUT_Sin[r];
	ldr	r2, [sp, #96]	@ tmp516, %sfp
	ldr	r3, [r2, r3]	@ pretmp_441, LUT_Sin[prephitmp_411]
	str	r3, [sp, #28]	@ pretmp_441, %sfp
	b	.L80		@
.L107:
	.align	2
.L106:
	.word	-4292
	.word	1029
	.word	67108896
	.word	67108902
	.word	LUT_Cos
	.word	LUT_Sin
	.word	model_vertices
	.word	.LANCHOR0
	.word	LUT_InvZ
	.word	.LANCHOR1
	.word	depthBucketCounter
	.word	model_triangles
	.word	depthBuckets
	.word	model_normals
	.word	model_colors
	.word	.LANCHOR2
	.word	67108870
	.word	100704256
	.word	34240
	.word	67109168
	.word	4176
	.word	2549
	.word	25200
	.size	main, .-main
	.global	model_colors
	.global	model_normals
	.global	model_vertices
	.global	model_triangles
	.global	model_palette
	.global	LUT_Sin
	.global	LUT_Cos
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.type	model_palette, %object
	.size	model_palette, 48
model_palette:
@ x:
	.word	31
@ y:
	.word	17
@ z:
	.word	0
@ x:
	.word	31
@ y:
	.word	31
@ z:
	.word	31
@ x:
	.word	4
@ y:
	.word	4
@ z:
	.word	4
@ x:
	.word	31
@ y:
	.word	4
@ z:
	.word	4
	.type	model_colors, %object
	.size	model_colors, 648
model_colors:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.ascii	"\002\002\002\002\002\002\002\002\002\002\002\002\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.ascii	"\003\003\003\003\003\003\003\003\003\003\003"
	.type	model_normals, %object
	.size	model_normals, 1944
model_normals:
@ x:
	.byte	76
@ y:
	.byte	0
@ z:
	.byte	101
@ x:
	.byte	92
@ y:
	.byte	-58
@ z:
	.byte	64
@ x:
	.byte	92
@ y:
	.byte	-58
@ z:
	.byte	64
@ x:
	.byte	122
@ y:
	.byte	0
@ z:
	.byte	34
@ x:
	.byte	92
@ y:
	.byte	58
@ z:
	.byte	64
@ x:
	.byte	122
@ y:
	.byte	0
@ z:
	.byte	34
@ x:
	.byte	76
@ y:
	.byte	0
@ z:
	.byte	101
@ x:
	.byte	92
@ y:
	.byte	58
@ z:
	.byte	64
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	53
@ y:
	.byte	0
@ z:
	.byte	-115
@ x:
	.byte	-49
@ y:
	.byte	0
@ z:
	.byte	116
@ x:
	.byte	-22
@ y:
	.byte	-123
@ z:
	.byte	21
@ x:
	.byte	-10
@ y:
	.byte	-124
@ z:
	.byte	23
@ x:
	.byte	54
@ y:
	.byte	-114
@ z:
	.byte	7
@ x:
	.byte	53
@ y:
	.byte	0
@ z:
	.byte	-115
@ x:
	.byte	10
@ y:
	.byte	126
@ z:
	.byte	7
@ x:
	.byte	53
@ y:
	.byte	0
@ z:
	.byte	-115
@ x:
	.byte	53
@ y:
	.byte	0
@ z:
	.byte	-115
@ x:
	.byte	21
@ y:
	.byte	121
@ z:
	.byte	28
@ x:
	.byte	-6
@ y:
	.byte	124
@ z:
	.byte	23
@ x:
	.byte	-49
@ y:
	.byte	0
@ z:
	.byte	116
@ x:
	.byte	-32
@ y:
	.byte	0
@ z:
	.byte	122
@ x:
	.byte	75
@ y:
	.byte	101
@ z:
	.byte	11
@ x:
	.byte	-32
@ y:
	.byte	0
@ z:
	.byte	122
@ x:
	.byte	104
@ y:
	.byte	70
@ z:
	.byte	15
@ x:
	.byte	116
@ y:
	.byte	46
@ z:
	.byte	-19
@ x:
	.byte	22
@ y:
	.byte	60
@ z:
	.byte	109
@ x:
	.byte	-4
@ y:
	.byte	45
@ z:
	.byte	118
@ x:
	.byte	-117
@ y:
	.byte	-43
@ z:
	.byte	19
@ x:
	.byte	-24
@ y:
	.byte	-66
@ z:
	.byte	-105
@ x:
	.byte	-107
@ y:
	.byte	-65
@ z:
	.byte	-15
@ x:
	.byte	4
@ y:
	.byte	-47
@ z:
	.byte	-117
@ x:
	.byte	1
@ y:
	.byte	120
@ z:
	.byte	-38
@ x:
	.byte	50
@ y:
	.byte	0
@ z:
	.byte	-116
@ x:
	.byte	50
@ y:
	.byte	0
@ z:
	.byte	-116
@ x:
	.byte	-19
@ y:
	.byte	125
@ z:
	.byte	-2
@ x:
	.byte	-8
@ y:
	.byte	121
@ z:
	.byte	-37
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	-87
@ y:
	.byte	0
@ z:
	.byte	92
@ x:
	.byte	65
@ y:
	.byte	0
@ z:
	.byte	-108
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	-8
@ y:
	.byte	121
@ z:
	.byte	-36
@ x:
	.byte	65
@ y:
	.byte	0
@ z:
	.byte	-108
@ x:
	.byte	-87
@ y:
	.byte	0
@ z:
	.byte	92
@ x:
	.byte	-65
@ y:
	.byte	0
@ z:
	.byte	108
@ x:
	.byte	-19
@ y:
	.byte	125
@ z:
	.byte	-2
@ x:
	.byte	-30
@ y:
	.byte	123
@ z:
	.byte	-4
@ x:
	.byte	-27
@ y:
	.byte	121
@ z:
	.byte	-23
@ x:
	.byte	-65
@ y:
	.byte	0
@ z:
	.byte	108
@ x:
	.byte	-113
@ y:
	.byte	0
@ z:
	.byte	57
@ x:
	.byte	-1
@ y:
	.byte	124
@ z:
	.byte	26
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	-113
@ y:
	.byte	0
@ z:
	.byte	57
@ x:
	.byte	25
@ y:
	.byte	100
@ z:
	.byte	73
@ x:
	.byte	123
@ y:
	.byte	0
@ z:
	.byte	-31
@ x:
	.byte	-116
@ y:
	.byte	0
@ z:
	.byte	51
@ x:
	.byte	29
@ y:
	.byte	123
@ z:
	.byte	-7
@ x:
	.byte	26
@ y:
	.byte	-112
@ z:
	.byte	53
@ x:
	.byte	123
@ y:
	.byte	0
@ z:
	.byte	-31
@ x:
	.byte	-4
@ y:
	.byte	126
@ z:
	.byte	-4
@ x:
	.byte	116
@ y:
	.byte	0
@ z:
	.byte	-50
@ x:
	.byte	28
@ y:
	.byte	-123
@ z:
	.byte	-12
@ x:
	.byte	-116
@ y:
	.byte	0
@ z:
	.byte	51
@ x:
	.byte	116
@ y:
	.byte	0
@ z:
	.byte	-50
@ x:
	.byte	-8
@ y:
	.byte	-126
@ z:
	.byte	-10
@ x:
	.byte	73
@ y:
	.byte	57
@ z:
	.byte	86
@ x:
	.byte	116
@ y:
	.byte	0
@ z:
	.byte	51
@ x:
	.byte	73
@ y:
	.byte	57
@ z:
	.byte	86
@ x:
	.byte	32
@ y:
	.byte	0
@ z:
	.byte	122
@ x:
	.byte	116
@ y:
	.byte	0
@ z:
	.byte	51
@ x:
	.byte	32
@ y:
	.byte	0
@ z:
	.byte	122
@ x:
	.byte	73
@ y:
	.byte	-57
@ z:
	.byte	86
@ x:
	.byte	73
@ y:
	.byte	-57
@ z:
	.byte	86
@ x:
	.byte	-39
@ y:
	.byte	-120
@ z:
	.byte	0
@ x:
	.byte	17
@ y:
	.byte	0
@ z:
	.byte	-125
@ x:
	.byte	11
@ y:
	.byte	-4
@ z:
	.byte	-126
@ x:
	.byte	57
@ y:
	.byte	113
@ z:
	.byte	0
@ x:
	.byte	-39
@ y:
	.byte	-120
@ z:
	.byte	0
@ x:
	.byte	60
@ y:
	.byte	-23
@ z:
	.byte	-109
@ x:
	.byte	-72
@ y:
	.byte	-104
@ z:
	.byte	0
@ x:
	.byte	-39
@ y:
	.byte	-120
@ z:
	.byte	0
@ x:
	.byte	-72
@ y:
	.byte	-104
@ z:
	.byte	0
@ x:
	.byte	-39
@ y:
	.byte	-120
@ z:
	.byte	0
@ x:
	.byte	15
@ y:
	.byte	-5
@ z:
	.byte	125
@ x:
	.byte	60
@ y:
	.byte	-23
@ z:
	.byte	109
@ x:
	.byte	13
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	57
@ y:
	.byte	113
@ z:
	.byte	0
@ x:
	.byte	57
@ y:
	.byte	113
@ z:
	.byte	0
@ x:
	.byte	123
@ y:
	.byte	29
@ z:
	.byte	0
@ x:
	.byte	57
@ y:
	.byte	113
@ z:
	.byte	0
@ x:
	.byte	123
@ y:
	.byte	29
@ z:
	.byte	0
@ x:
	.byte	19
@ y:
	.byte	53
@ z:
	.byte	-113
@ x:
	.byte	-4
@ y:
	.byte	51
@ z:
	.byte	-116
@ x:
	.byte	116
@ y:
	.byte	46
@ z:
	.byte	19
@ x:
	.byte	104
@ y:
	.byte	70
@ z:
	.byte	-15
@ x:
	.byte	-117
@ y:
	.byte	-43
@ z:
	.byte	-19
@ x:
	.byte	-21
@ y:
	.byte	-58
@ z:
	.byte	110
@ x:
	.byte	4
@ y:
	.byte	-54
@ z:
	.byte	114
@ x:
	.byte	-107
@ y:
	.byte	-65
@ z:
	.byte	15
@ x:
	.byte	1
@ y:
	.byte	120
@ z:
	.byte	38
@ x:
	.byte	50
@ y:
	.byte	0
@ z:
	.byte	116
@ x:
	.byte	-19
@ y:
	.byte	125
@ z:
	.byte	2
@ x:
	.byte	-8
@ y:
	.byte	121
@ z:
	.byte	37
@ x:
	.byte	50
@ y:
	.byte	0
@ z:
	.byte	116
@ x:
	.byte	-8
@ y:
	.byte	121
@ z:
	.byte	36
@ x:
	.byte	65
@ y:
	.byte	0
@ z:
	.byte	108
@ x:
	.byte	-19
@ y:
	.byte	125
@ z:
	.byte	2
@ x:
	.byte	-27
@ y:
	.byte	121
@ z:
	.byte	23
@ x:
	.byte	-30
@ y:
	.byte	123
@ z:
	.byte	4
@ x:
	.byte	-87
@ y:
	.byte	0
@ z:
	.byte	-92
@ x:
	.byte	-1
@ y:
	.byte	124
@ z:
	.byte	-26
@ x:
	.byte	-113
@ y:
	.byte	0
@ z:
	.byte	-57
@ x:
	.byte	-65
@ y:
	.byte	0
@ z:
	.byte	-108
@ x:
	.byte	-87
@ y:
	.byte	0
@ z:
	.byte	-92
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	-65
@ y:
	.byte	0
@ z:
	.byte	-108
@ x:
	.byte	65
@ y:
	.byte	0
@ z:
	.byte	108
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	83
@ x:
	.byte	-113
@ y:
	.byte	0
@ z:
	.byte	-57
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	-116
@ y:
	.byte	0
@ z:
	.byte	-51
@ x:
	.byte	29
@ y:
	.byte	123
@ z:
	.byte	7
@ x:
	.byte	25
@ y:
	.byte	100
@ z:
	.byte	-73
@ x:
	.byte	123
@ y:
	.byte	0
@ z:
	.byte	31
@ x:
	.byte	54
@ y:
	.byte	-114
@ z:
	.byte	-7
@ x:
	.byte	-32
@ y:
	.byte	0
@ z:
	.byte	-122
@ x:
	.byte	26
@ y:
	.byte	-112
@ z:
	.byte	-53
@ x:
	.byte	123
@ y:
	.byte	0
@ z:
	.byte	31
@ x:
	.byte	-4
@ y:
	.byte	126
@ z:
	.byte	4
@ x:
	.byte	116
@ y:
	.byte	0
@ z:
	.byte	50
@ x:
	.byte	28
@ y:
	.byte	-123
@ z:
	.byte	12
@ x:
	.byte	-116
@ y:
	.byte	0
@ z:
	.byte	-51
@ x:
	.byte	-10
@ y:
	.byte	-124
@ z:
	.byte	-23
@ x:
	.byte	53
@ y:
	.byte	0
@ z:
	.byte	115
@ x:
	.byte	75
@ y:
	.byte	101
@ z:
	.byte	-11
@ x:
	.byte	-32
@ y:
	.byte	0
@ z:
	.byte	-122
@ x:
	.byte	116
@ y:
	.byte	0
@ z:
	.byte	50
@ x:
	.byte	-8
@ y:
	.byte	-126
@ z:
	.byte	10
@ x:
	.byte	-22
@ y:
	.byte	-123
@ z:
	.byte	-21
@ x:
	.byte	-49
@ y:
	.byte	0
@ z:
	.byte	-116
@ x:
	.byte	53
@ y:
	.byte	0
@ z:
	.byte	115
@ x:
	.byte	21
@ y:
	.byte	121
@ z:
	.byte	-28
@ x:
	.byte	-49
@ y:
	.byte	0
@ z:
	.byte	-116
@ x:
	.byte	-6
@ y:
	.byte	124
@ z:
	.byte	-23
@ x:
	.byte	53
@ y:
	.byte	0
@ z:
	.byte	115
@ x:
	.byte	0
@ y:
	.byte	-126
@ z:
	.byte	0
@ x:
	.byte	10
@ y:
	.byte	126
@ z:
	.byte	-7
@ x:
	.byte	53
@ y:
	.byte	0
@ z:
	.byte	115
@ x:
	.byte	73
@ y:
	.byte	57
@ z:
	.byte	-86
@ x:
	.byte	73
@ y:
	.byte	57
@ z:
	.byte	-86
@ x:
	.byte	116
@ y:
	.byte	0
@ z:
	.byte	-51
@ x:
	.byte	32
@ y:
	.byte	0
@ z:
	.byte	-122
@ x:
	.byte	32
@ y:
	.byte	0
@ z:
	.byte	-122
@ x:
	.byte	116
@ y:
	.byte	0
@ z:
	.byte	-51
@ x:
	.byte	73
@ y:
	.byte	-57
@ z:
	.byte	-86
@ x:
	.byte	73
@ y:
	.byte	-57
@ z:
	.byte	-86
@ x:
	.byte	76
@ y:
	.byte	0
@ z:
	.byte	-101
@ x:
	.byte	76
@ y:
	.byte	0
@ z:
	.byte	-101
@ x:
	.byte	92
@ y:
	.byte	58
@ z:
	.byte	-64
@ x:
	.byte	92
@ y:
	.byte	-58
@ z:
	.byte	-64
@ x:
	.byte	92
@ y:
	.byte	-58
@ z:
	.byte	-64
@ x:
	.byte	92
@ y:
	.byte	58
@ z:
	.byte	-64
@ x:
	.byte	122
@ y:
	.byte	0
@ z:
	.byte	-34
@ x:
	.byte	122
@ y:
	.byte	0
@ z:
	.byte	-34
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	-83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	-83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	-83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	-83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	-83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	-83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	-83
@ x:
	.byte	-95
@ y:
	.byte	0
@ z:
	.byte	-83
@ x:
	.byte	-15
@ y:
	.byte	-43
@ z:
	.byte	118
@ x:
	.byte	112
@ y:
	.byte	-59
@ z:
	.byte	-3
@ x:
	.byte	-15
@ y:
	.byte	-43
@ z:
	.byte	118
@ x:
	.byte	-124
@ y:
	.byte	26
@ z:
	.byte	-4
@ x:
	.byte	3
@ y:
	.byte	10
@ z:
	.byte	-126
@ x:
	.byte	112
@ y:
	.byte	-59
@ z:
	.byte	-3
@ x:
	.byte	3
@ y:
	.byte	10
@ z:
	.byte	-126
@ x:
	.byte	-124
@ y:
	.byte	26
@ z:
	.byte	-4
@ x:
	.byte	84
@ y:
	.byte	-93
@ z:
	.byte	-13
@ x:
	.byte	-11
@ y:
	.byte	-31
@ z:
	.byte	-122
@ x:
	.byte	-28
@ y:
	.byte	-79
@ z:
	.byte	94
@ x:
	.byte	84
@ y:
	.byte	-93
@ z:
	.byte	-13
@ x:
	.byte	84
@ y:
	.byte	-93
@ z:
	.byte	-13
@ x:
	.byte	77
@ y:
	.byte	-97
@ z:
	.byte	-25
@ x:
	.byte	-28
@ y:
	.byte	-79
@ z:
	.byte	94
@ x:
	.byte	-124
@ y:
	.byte	-17
@ z:
	.byte	-14
@ x:
	.byte	-19
@ y:
	.byte	-53
@ z:
	.byte	113
@ x:
	.byte	-11
@ y:
	.byte	-31
@ z:
	.byte	-122
@ x:
	.byte	-124
@ y:
	.byte	-17
@ z:
	.byte	-14
@ x:
	.byte	-13
@ y:
	.byte	-38
@ z:
	.byte	-120
@ x:
	.byte	-71
@ y:
	.byte	-101
@ z:
	.byte	-28
@ x:
	.byte	30
@ y:
	.byte	-117
@ z:
	.byte	37
@ x:
	.byte	-63
@ y:
	.byte	-107
@ z:
	.byte	-25
@ x:
	.byte	14
@ y:
	.byte	-83
@ z:
	.byte	-94
@ x:
	.byte	30
@ y:
	.byte	-117
@ z:
	.byte	-37
@ x:
	.byte	-23
@ y:
	.byte	-121
@ z:
	.byte	-28
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-12
@ y:
	.byte	-5
@ z:
	.byte	-126
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-19
@ y:
	.byte	-53
@ z:
	.byte	-113
@ x:
	.byte	77
@ y:
	.byte	-97
@ z:
	.byte	25
@ x:
	.byte	118
@ y:
	.byte	-34
@ z:
	.byte	-31
@ x:
	.byte	118
@ y:
	.byte	-34
@ z:
	.byte	31
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	4
@ y:
	.byte	126
@ z:
	.byte	-11
@ x:
	.byte	51
@ y:
	.byte	21
@ z:
	.byte	-114
@ x:
	.byte	118
@ y:
	.byte	-35
@ z:
	.byte	-29
@ x:
	.byte	4
@ y:
	.byte	126
@ z:
	.byte	-11
@ x:
	.byte	4
@ y:
	.byte	126
@ z:
	.byte	-11
@ x:
	.byte	49
@ y:
	.byte	87
@ z:
	.byte	-77
@ x:
	.byte	-41
@ y:
	.byte	119
@ z:
	.byte	-11
@ x:
	.byte	119
@ y:
	.byte	-30
@ z:
	.byte	-30
@ x:
	.byte	118
@ y:
	.byte	-35
@ z:
	.byte	29
@ x:
	.byte	119
@ y:
	.byte	-30
@ z:
	.byte	30
@ x:
	.byte	119
@ y:
	.byte	-40
@ z:
	.byte	16
@ x:
	.byte	119
@ y:
	.byte	-40
@ z:
	.byte	-16
@ x:
	.byte	13
@ y:
	.byte	23
@ z:
	.byte	-124
@ x:
	.byte	97
@ y:
	.byte	-80
@ z:
	.byte	13
@ x:
	.byte	97
@ y:
	.byte	-80
@ z:
	.byte	-13
@ x:
	.byte	84
@ y:
	.byte	-94
@ z:
	.byte	0
@ x:
	.byte	84
@ y:
	.byte	-94
@ z:
	.byte	0
@ x:
	.byte	101
@ y:
	.byte	1
@ z:
	.byte	-76
@ x:
	.byte	100
@ y:
	.byte	0
@ z:
	.byte	-77
@ x:
	.byte	8
@ y:
	.byte	40
@ z:
	.byte	-120
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	101
@ y:
	.byte	1
@ z:
	.byte	76
@ x:
	.byte	100
@ y:
	.byte	0
@ z:
	.byte	77
@ x:
	.byte	110
@ y:
	.byte	56
@ z:
	.byte	-25
@ x:
	.byte	110
@ y:
	.byte	56
@ z:
	.byte	25
@ x:
	.byte	115
@ y:
	.byte	52
@ z:
	.byte	0
@ x:
	.byte	115
@ y:
	.byte	52
@ z:
	.byte	0
@ x:
	.byte	29
@ y:
	.byte	112
@ z:
	.byte	-50
@ x:
	.byte	29
@ y:
	.byte	112
@ z:
	.byte	50
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-127
@ x:
	.byte	35
@ y:
	.byte	114
@ z:
	.byte	-41
@ x:
	.byte	-53
@ y:
	.byte	96
@ z:
	.byte	-62
@ x:
	.byte	35
@ y:
	.byte	114
@ z:
	.byte	41
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	-53
@ y:
	.byte	96
@ z:
	.byte	62
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-53
@ y:
	.byte	97
@ z:
	.byte	-61
@ x:
	.byte	-117
@ y:
	.byte	14
@ z:
	.byte	-46
@ x:
	.byte	-116
@ y:
	.byte	30
@ z:
	.byte	-39
@ x:
	.byte	-120
@ y:
	.byte	9
@ z:
	.byte	-40
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	-53
@ y:
	.byte	97
@ z:
	.byte	61
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	-117
@ y:
	.byte	14
@ z:
	.byte	46
@ x:
	.byte	-120
@ y:
	.byte	9
@ z:
	.byte	40
@ x:
	.byte	5
@ y:
	.byte	26
@ z:
	.byte	124
@ x:
	.byte	21
@ y:
	.byte	38
@ z:
	.byte	119
@ x:
	.byte	-116
@ y:
	.byte	30
@ z:
	.byte	39
@ x:
	.byte	20
@ y:
	.byte	35
@ z:
	.byte	120
@ x:
	.byte	-122
@ y:
	.byte	17
@ z:
	.byte	-28
@ x:
	.byte	-122
@ y:
	.byte	17
@ z:
	.byte	28
@ x:
	.byte	-38
@ y:
	.byte	120
@ z:
	.byte	-8
@ x:
	.byte	-38
@ y:
	.byte	120
@ z:
	.byte	8
@ x:
	.byte	-41
@ y:
	.byte	119
@ z:
	.byte	11
@ x:
	.byte	84
@ y:
	.byte	35
@ z:
	.byte	87
@ x:
	.byte	4
@ y:
	.byte	126
@ z:
	.byte	11
@ x:
	.byte	4
@ y:
	.byte	126
@ z:
	.byte	11
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	9
@ y:
	.byte	-59
@ z:
	.byte	111
@ x:
	.byte	84
@ y:
	.byte	-93
@ z:
	.byte	13
@ x:
	.byte	84
@ y:
	.byte	-93
@ z:
	.byte	13
@ x:
	.byte	-28
@ y:
	.byte	-79
@ z:
	.byte	-94
@ x:
	.byte	4
@ y:
	.byte	126
@ z:
	.byte	11
@ x:
	.byte	-11
@ y:
	.byte	-1
@ z:
	.byte	126
@ x:
	.byte	0
@ y:
	.byte	-5
@ z:
	.byte	126
@ x:
	.byte	4
@ y:
	.byte	126
@ z:
	.byte	11
@ x:
	.byte	39
@ y:
	.byte	120
@ z:
	.byte	11
@ x:
	.byte	4
@ y:
	.byte	126
@ z:
	.byte	-11
@ x:
	.byte	39
@ y:
	.byte	120
@ z:
	.byte	-11
@ x:
	.byte	54
@ y:
	.byte	114
@ z:
	.byte	3
@ x:
	.byte	-90
@ y:
	.byte	-10
@ z:
	.byte	-89
@ x:
	.byte	-121
@ y:
	.byte	0
@ z:
	.byte	-36
@ x:
	.byte	-75
@ y:
	.byte	0
@ z:
	.byte	-101
@ x:
	.byte	-113
@ y:
	.byte	-49
@ z:
	.byte	-28
@ x:
	.byte	-121
@ y:
	.byte	0
@ z:
	.byte	-36
@ x:
	.byte	-110
@ y:
	.byte	-61
@ z:
	.byte	-4
@ x:
	.byte	-110
@ y:
	.byte	-61
@ z:
	.byte	4
@ x:
	.byte	-46
@ y:
	.byte	-117
@ z:
	.byte	-8
@ x:
	.byte	-46
@ y:
	.byte	-117
@ z:
	.byte	8
@ x:
	.byte	-23
@ y:
	.byte	-121
@ z:
	.byte	28
@ x:
	.byte	-113
@ y:
	.byte	-49
@ z:
	.byte	28
@ x:
	.byte	-86
@ y:
	.byte	-10
@ z:
	.byte	91
@ x:
	.byte	-121
@ y:
	.byte	0
@ z:
	.byte	36
@ x:
	.byte	54
@ y:
	.byte	114
@ z:
	.byte	-3
@ x:
	.byte	-121
@ y:
	.byte	0
@ z:
	.byte	36
@ x:
	.byte	-87
@ y:
	.byte	0
@ z:
	.byte	91
@ x:
	.byte	-63
@ y:
	.byte	-107
@ z:
	.byte	25
@ x:
	.byte	-39
@ y:
	.byte	-107
@ z:
	.byte	54
@ x:
	.byte	-71
@ y:
	.byte	-101
@ z:
	.byte	28
@ x:
	.byte	-11
@ y:
	.byte	-31
@ z:
	.byte	122
@ x:
	.byte	84
@ y:
	.byte	-93
@ z:
	.byte	13
@ x:
	.byte	-124
@ y:
	.byte	-17
@ z:
	.byte	14
@ x:
	.byte	-11
@ y:
	.byte	-31
@ z:
	.byte	122
@ x:
	.byte	-28
@ y:
	.byte	-79
@ z:
	.byte	-94
@ x:
	.byte	-124
@ y:
	.byte	-17
@ z:
	.byte	14
@ x:
	.byte	3
@ y:
	.byte	10
@ z:
	.byte	126
@ x:
	.byte	112
@ y:
	.byte	-59
@ z:
	.byte	3
@ x:
	.byte	3
@ y:
	.byte	10
@ z:
	.byte	126
@ x:
	.byte	-124
@ y:
	.byte	26
@ z:
	.byte	4
@ x:
	.byte	112
@ y:
	.byte	-59
@ z:
	.byte	3
@ x:
	.byte	-15
@ y:
	.byte	-43
@ z:
	.byte	-118
@ x:
	.byte	-124
@ y:
	.byte	26
@ z:
	.byte	4
@ x:
	.byte	-15
@ y:
	.byte	-43
@ z:
	.byte	-118
@ x:
	.byte	-3
@ y:
	.byte	126
@ z:
	.byte	3
@ x:
	.byte	72
@ y:
	.byte	0
@ z:
	.byte	104
@ x:
	.byte	-4
@ y:
	.byte	126
@ z:
	.byte	3
@ x:
	.byte	-72
@ y:
	.byte	0
@ z:
	.byte	-104
@ x:
	.byte	72
@ y:
	.byte	0
@ z:
	.byte	104
@ x:
	.byte	3
@ y:
	.byte	-126
@ z:
	.byte	-3
@ x:
	.byte	-33
@ y:
	.byte	119
@ z:
	.byte	26
@ x:
	.byte	72
@ y:
	.byte	0
@ z:
	.byte	104
@ x:
	.byte	-72
@ y:
	.byte	0
@ z:
	.byte	-104
@ x:
	.byte	4
@ y:
	.byte	-126
@ z:
	.byte	-3
@ x:
	.byte	72
@ y:
	.byte	0
@ z:
	.byte	104
@ x:
	.byte	17
@ y:
	.byte	-125
@ z:
	.byte	-13
@ x:
	.byte	-36
@ y:
	.byte	119
@ z:
	.byte	25
@ x:
	.byte	-72
@ y:
	.byte	0
@ z:
	.byte	-104
@ x:
	.byte	18
@ y:
	.byte	-124
@ z:
	.byte	-13
@ x:
	.byte	-103
@ y:
	.byte	0
@ z:
	.byte	72
@ x:
	.byte	-103
@ y:
	.byte	0
@ z:
	.byte	72
@ x:
	.byte	-72
@ y:
	.byte	0
@ z:
	.byte	-104
@ x:
	.byte	72
@ y:
	.byte	0
@ z:
	.byte	-104
@ x:
	.byte	3
@ y:
	.byte	-126
@ z:
	.byte	3
@ x:
	.byte	72
@ y:
	.byte	0
@ z:
	.byte	-104
@ x:
	.byte	-3
@ y:
	.byte	126
@ z:
	.byte	-3
@ x:
	.byte	-72
@ y:
	.byte	0
@ z:
	.byte	104
@ x:
	.byte	4
@ y:
	.byte	-126
@ z:
	.byte	3
@ x:
	.byte	72
@ y:
	.byte	0
@ z:
	.byte	-104
@ x:
	.byte	17
@ y:
	.byte	-125
@ z:
	.byte	13
@ x:
	.byte	-72
@ y:
	.byte	0
@ z:
	.byte	104
@ x:
	.byte	-4
@ y:
	.byte	126
@ z:
	.byte	-3
@ x:
	.byte	18
@ y:
	.byte	-124
@ z:
	.byte	13
@ x:
	.byte	-72
@ y:
	.byte	0
@ z:
	.byte	104
@ x:
	.byte	72
@ y:
	.byte	0
@ z:
	.byte	-104
@ x:
	.byte	-33
@ y:
	.byte	119
@ z:
	.byte	-26
@ x:
	.byte	-103
@ y:
	.byte	0
@ z:
	.byte	-72
@ x:
	.byte	-36
@ y:
	.byte	119
@ z:
	.byte	-25
@ x:
	.byte	-103
@ y:
	.byte	0
@ z:
	.byte	-72
@ x:
	.byte	-72
@ y:
	.byte	0
@ z:
	.byte	104
@ x:
	.byte	25
@ y:
	.byte	123
@ z:
	.byte	17
@ x:
	.byte	-61
@ y:
	.byte	0
@ z:
	.byte	111
@ x:
	.byte	30
@ y:
	.byte	122
@ z:
	.byte	16
@ x:
	.byte	61
@ y:
	.byte	0
@ z:
	.byte	-110
@ x:
	.byte	-5
@ y:
	.byte	-126
@ z:
	.byte	-3
@ x:
	.byte	-61
@ y:
	.byte	0
@ z:
	.byte	111
@ x:
	.byte	45
@ y:
	.byte	116
@ z:
	.byte	24
@ x:
	.byte	-61
@ y:
	.byte	0
@ z:
	.byte	111
@ x:
	.byte	61
@ y:
	.byte	0
@ z:
	.byte	-110
@ x:
	.byte	-6
@ y:
	.byte	-126
@ z:
	.byte	-3
@ x:
	.byte	-61
@ y:
	.byte	0
@ z:
	.byte	111
@ x:
	.byte	-26
@ y:
	.byte	-123
@ z:
	.byte	-14
@ x:
	.byte	53
@ y:
	.byte	113
@ z:
	.byte	21
@ x:
	.byte	61
@ y:
	.byte	0
@ z:
	.byte	-110
@ x:
	.byte	117
@ y:
	.byte	0
@ z:
	.byte	48
@ x:
	.byte	-31
@ y:
	.byte	-122
@ z:
	.byte	-12
@ x:
	.byte	117
@ y:
	.byte	0
@ z:
	.byte	48
@ x:
	.byte	61
@ y:
	.byte	0
@ z:
	.byte	-110
@ x:
	.byte	34
@ y:
	.byte	114
@ z:
	.byte	41
@ x:
	.byte	-114
@ y:
	.byte	0
@ z:
	.byte	55
@ x:
	.byte	23
@ y:
	.byte	118
@ z:
	.byte	38
@ x:
	.byte	113
@ y:
	.byte	0
@ z:
	.byte	-56
@ x:
	.byte	-9
@ y:
	.byte	-126
@ z:
	.byte	-11
@ x:
	.byte	-114
@ y:
	.byte	0
@ z:
	.byte	55
@ x:
	.byte	34
@ y:
	.byte	108
@ z:
	.byte	57
@ x:
	.byte	-114
@ y:
	.byte	0
@ z:
	.byte	55
@ x:
	.byte	113
@ y:
	.byte	0
@ z:
	.byte	-56
@ x:
	.byte	-6
@ y:
	.byte	-126
@ z:
	.byte	-10
@ x:
	.byte	-114
@ y:
	.byte	0
@ z:
	.byte	55
@ x:
	.byte	-17
@ y:
	.byte	-122
@ z:
	.byte	-29
@ x:
	.byte	113
@ y:
	.byte	0
@ z:
	.byte	-56
@ x:
	.byte	21
@ y:
	.byte	112
@ z:
	.byte	54
@ x:
	.byte	47
@ y:
	.byte	0
@ z:
	.byte	117
@ x:
	.byte	-10
@ y:
	.byte	-123
@ z:
	.byte	-26
@ x:
	.byte	47
@ y:
	.byte	0
@ z:
	.byte	117
@ x:
	.byte	113
@ y:
	.byte	0
@ z:
	.byte	-56
@ x:
	.byte	117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	48
@ y:
	.byte	-117
@ z:
	.byte	0
@ x:
	.byte	117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	117
@ y:
	.byte	48
@ z:
	.byte	0
@ x:
	.byte	48
@ y:
	.byte	-117
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-48
@ y:
	.byte	-117
@ z:
	.byte	0
@ x:
	.byte	117
@ y:
	.byte	48
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	48
@ y:
	.byte	117
@ z:
	.byte	0
@ x:
	.byte	-48
@ y:
	.byte	-117
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	48
@ y:
	.byte	117
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-48
@ y:
	.byte	117
@ z:
	.byte	0
@ x:
	.byte	-117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-117
@ y:
	.byte	48
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-48
@ y:
	.byte	117
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	-126
@ x:
	.byte	-117
@ y:
	.byte	48
@ z:
	.byte	0
@ x:
	.byte	117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	48
@ y:
	.byte	-117
@ z:
	.byte	0
@ x:
	.byte	117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	117
@ y:
	.byte	48
@ z:
	.byte	0
@ x:
	.byte	48
@ y:
	.byte	-117
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	-48
@ y:
	.byte	-117
@ z:
	.byte	0
@ x:
	.byte	117
@ y:
	.byte	48
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	48
@ y:
	.byte	117
@ z:
	.byte	0
@ x:
	.byte	-48
@ y:
	.byte	-117
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	-117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	48
@ y:
	.byte	117
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	-48
@ y:
	.byte	117
@ z:
	.byte	0
@ x:
	.byte	-117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	-117
@ y:
	.byte	48
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	0
@ y:
	.byte	0
@ z:
	.byte	126
@ x:
	.byte	-117
@ y:
	.byte	48
@ z:
	.byte	0
@ x:
	.byte	-48
@ y:
	.byte	117
@ z:
	.byte	0
@ x:
	.byte	34
@ y:
	.byte	114
@ z:
	.byte	-41
@ x:
	.byte	-114
@ y:
	.byte	0
@ z:
	.byte	-55
@ x:
	.byte	23
@ y:
	.byte	118
@ z:
	.byte	-38
@ x:
	.byte	113
@ y:
	.byte	0
@ z:
	.byte	56
@ x:
	.byte	-9
@ y:
	.byte	-126
@ z:
	.byte	11
@ x:
	.byte	-114
@ y:
	.byte	0
@ z:
	.byte	-55
@ x:
	.byte	34
@ y:
	.byte	108
@ z:
	.byte	-57
@ x:
	.byte	-114
@ y:
	.byte	0
@ z:
	.byte	-55
@ x:
	.byte	113
@ y:
	.byte	0
@ z:
	.byte	56
@ x:
	.byte	-6
@ y:
	.byte	-126
@ z:
	.byte	10
@ x:
	.byte	-114
@ y:
	.byte	0
@ z:
	.byte	-55
@ x:
	.byte	-17
@ y:
	.byte	-122
@ z:
	.byte	29
@ x:
	.byte	21
@ y:
	.byte	112
@ z:
	.byte	-54
@ x:
	.byte	47
@ y:
	.byte	0
@ z:
	.byte	-117
@ x:
	.byte	113
@ y:
	.byte	0
@ z:
	.byte	56
@ x:
	.byte	47
@ y:
	.byte	0
@ z:
	.byte	-117
@ x:
	.byte	-10
@ y:
	.byte	-123
@ z:
	.byte	26
@ x:
	.byte	113
@ y:
	.byte	0
@ z:
	.byte	56
@ x:
	.byte	-5
@ y:
	.byte	-126
@ z:
	.byte	3
@ x:
	.byte	-61
@ y:
	.byte	0
@ z:
	.byte	-111
@ x:
	.byte	-6
@ y:
	.byte	-126
@ z:
	.byte	3
@ x:
	.byte	61
@ y:
	.byte	0
@ z:
	.byte	110
@ x:
	.byte	25
@ y:
	.byte	123
@ z:
	.byte	-17
@ x:
	.byte	-61
@ y:
	.byte	0
@ z:
	.byte	-111
@ x:
	.byte	-26
@ y:
	.byte	-123
@ z:
	.byte	14
@ x:
	.byte	-61
@ y:
	.byte	0
@ z:
	.byte	-111
@ x:
	.byte	30
@ y:
	.byte	122
@ z:
	.byte	-16
@ x:
	.byte	61
@ y:
	.byte	0
@ z:
	.byte	110
@ x:
	.byte	-61
@ y:
	.byte	0
@ z:
	.byte	-111
@ x:
	.byte	45
@ y:
	.byte	116
@ z:
	.byte	-24
@ x:
	.byte	-31
@ y:
	.byte	-122
@ z:
	.byte	12
@ x:
	.byte	61
@ y:
	.byte	0
@ z:
	.byte	110
@ x:
	.byte	117
@ y:
	.byte	0
@ z:
	.byte	-48
@ x:
	.byte	117
@ y:
	.byte	0
@ z:
	.byte	-48
@ x:
	.byte	61
@ y:
	.byte	0
@ z:
	.byte	110
@ x:
	.byte	53
@ y:
	.byte	113
@ z:
	.byte	-21
@ x:
	.byte	-122
@ y:
	.byte	-32
@ z:
	.byte	-3
@ x:
	.byte	-36
@ y:
	.byte	-119
@ z:
	.byte	-21
@ x:
	.byte	2
@ y:
	.byte	41
@ z:
	.byte	-120
@ x:
	.byte	-122
@ y:
	.byte	-30
@ z:
	.byte	-16
@ x:
	.byte	-36
@ y:
	.byte	-119
@ z:
	.byte	-21
@ x:
	.byte	0
@ y:
	.byte	-32
@ z:
	.byte	122
@ x:
	.byte	-30
@ y:
	.byte	120
@ z:
	.byte	27
@ x:
	.byte	-1
@ y:
	.byte	39
@ z:
	.byte	-120
@ x:
	.byte	0
@ y:
	.byte	-32
@ z:
	.byte	122
@ x:
	.byte	-30
@ y:
	.byte	120
@ z:
	.byte	27
@ x:
	.byte	92
@ y:
	.byte	-85
@ z:
	.byte	-18
@ x:
	.byte	0
@ y:
	.byte	-32
@ z:
	.byte	122
@ x:
	.byte	-5
@ y:
	.byte	38
@ z:
	.byte	-121
@ x:
	.byte	92
@ y:
	.byte	-85
@ z:
	.byte	-18
@ x:
	.byte	0
@ y:
	.byte	-32
@ z:
	.byte	122
@ x:
	.byte	122
@ y:
	.byte	34
@ z:
	.byte	3
@ x:
	.byte	-30
@ y:
	.byte	120
@ z:
	.byte	27
@ x:
	.byte	-30
@ y:
	.byte	120
@ z:
	.byte	27
@ x:
	.byte	122
@ y:
	.byte	27
@ z:
	.byte	15
@ x:
	.byte	-1
@ y:
	.byte	40
@ z:
	.byte	-120
@ x:
	.byte	-112
@ y:
	.byte	59
@ z:
	.byte	0
@ x:
	.byte	7
@ y:
	.byte	126
@ z:
	.byte	0
@ x:
	.byte	-1
@ y:
	.byte	18
@ z:
	.byte	125
@ x:
	.byte	-112
@ y:
	.byte	59
@ z:
	.byte	0
@ x:
	.byte	7
@ y:
	.byte	126
@ z:
	.byte	0
@ x:
	.byte	8
@ y:
	.byte	10
@ z:
	.byte	-126
@ x:
	.byte	3
@ y:
	.byte	9
@ z:
	.byte	-126
@ x:
	.byte	4
@ y:
	.byte	9
@ z:
	.byte	126
@ x:
	.byte	-123
@ y:
	.byte	29
@ z:
	.byte	0
@ x:
	.byte	7
@ y:
	.byte	12
@ z:
	.byte	126
@ x:
	.byte	124
@ y:
	.byte	26
@ z:
	.byte	0
@ x:
	.byte	14
@ y:
	.byte	5
@ z:
	.byte	126
@ x:
	.byte	-123
@ y:
	.byte	29
@ z:
	.byte	0
@ x:
	.byte	12
@ y:
	.byte	5
@ z:
	.byte	126
@ x:
	.byte	-115
@ y:
	.byte	-52
@ z:
	.byte	0
@ x:
	.byte	17
@ y:
	.byte	8
@ z:
	.byte	-125
@ x:
	.byte	7
@ y:
	.byte	8
@ z:
	.byte	-126
@ x:
	.byte	-115
@ y:
	.byte	-52
@ z:
	.byte	0
@ x:
	.byte	12
@ y:
	.byte	7
@ z:
	.byte	126
@ x:
	.byte	10
@ y:
	.byte	6
@ z:
	.byte	126
@ x:
	.byte	124
@ y:
	.byte	26
@ z:
	.byte	0
@ x:
	.byte	119
@ y:
	.byte	-44
@ z:
	.byte	0
@ x:
	.byte	27
@ y:
	.byte	3
@ z:
	.byte	-123
@ x:
	.byte	12
@ y:
	.byte	5
@ z:
	.byte	-126
@ x:
	.byte	119
@ y:
	.byte	-44
@ z:
	.byte	0
@ x:
	.byte	11
@ y:
	.byte	5
@ z:
	.byte	126
@ x:
	.byte	-115
@ y:
	.byte	-52
@ z:
	.byte	0
@ x:
	.byte	105
@ y:
	.byte	-70
@ z:
	.byte	0
@ x:
	.byte	12
@ y:
	.byte	5
@ z:
	.byte	-126
@ x:
	.byte	12
@ y:
	.byte	5
@ z:
	.byte	-126
@ x:
	.byte	105
@ y:
	.byte	-70
@ z:
	.byte	0
@ x:
	.byte	-115
@ y:
	.byte	-52
@ z:
	.byte	0
@ x:
	.byte	-97
@ y:
	.byte	81
@ z:
	.byte	0
@ x:
	.byte	69
@ y:
	.byte	106
@ z:
	.byte	0
@ x:
	.byte	6
@ y:
	.byte	9
@ z:
	.byte	126
@ x:
	.byte	-97
@ y:
	.byte	81
@ z:
	.byte	0
@ x:
	.byte	69
@ y:
	.byte	106
@ z:
	.byte	0
@ x:
	.byte	6
@ y:
	.byte	9
@ z:
	.byte	-126
@ x:
	.byte	6
@ y:
	.byte	9
@ z:
	.byte	-126
@ x:
	.byte	6
@ y:
	.byte	8
@ z:
	.byte	126
@ x:
	.byte	-115
@ y:
	.byte	53
@ z:
	.byte	0
@ x:
	.byte	8
@ y:
	.byte	10
@ z:
	.byte	126
@ x:
	.byte	126
@ y:
	.byte	0
@ z:
	.byte	0
@ x:
	.byte	20
@ y:
	.byte	0
@ z:
	.byte	125
@ x:
	.byte	-115
@ y:
	.byte	53
@ z:
	.byte	0
@ x:
	.byte	11
@ y:
	.byte	5
@ z:
	.byte	126
@ x:
	.byte	-115
@ y:
	.byte	-52
@ z:
	.byte	0
@ x:
	.byte	16
@ y:
	.byte	7
@ z:
	.byte	-125
@ x:
	.byte	6
@ y:
	.byte	8
@ z:
	.byte	-126
@ x:
	.byte	-115
@ y:
	.byte	-52
@ z:
	.byte	0
@ x:
	.byte	19
@ y:
	.byte	5
@ z:
	.byte	125
@ x:
	.byte	13
@ y:
	.byte	3
@ z:
	.byte	126
@ x:
	.byte	126
@ y:
	.byte	0
@ z:
	.byte	0
@ x:
	.byte	112
@ y:
	.byte	-59
@ z:
	.byte	0
@ x:
	.byte	29
@ y:
	.byte	0
@ z:
	.byte	-123
@ x:
	.byte	14
@ y:
	.byte	3
@ z:
	.byte	-126
@ x:
	.byte	112
@ y:
	.byte	-59
@ z:
	.byte	0
@ x:
	.byte	12
@ y:
	.byte	5
@ z:
	.byte	126
@ x:
	.byte	-115
@ y:
	.byte	-52
@ z:
	.byte	0
@ x:
	.byte	98
@ y:
	.byte	-79
@ z:
	.byte	0
@ x:
	.byte	14
@ y:
	.byte	3
@ z:
	.byte	-126
@ x:
	.byte	11
@ y:
	.byte	5
@ z:
	.byte	-126
@ x:
	.byte	-115
@ y:
	.byte	-52
@ z:
	.byte	0
@ x:
	.byte	98
@ y:
	.byte	-79
@ z:
	.byte	0
@ x:
	.byte	-125
@ y:
	.byte	18
@ z:
	.byte	0
@ x:
	.byte	9
@ y:
	.byte	126
@ z:
	.byte	0
@ x:
	.byte	-1
@ y:
	.byte	13
@ z:
	.byte	126
@ x:
	.byte	-125
@ y:
	.byte	18
@ z:
	.byte	0
@ x:
	.byte	9
@ y:
	.byte	126
@ z:
	.byte	0
@ x:
	.byte	2
@ y:
	.byte	8
@ z:
	.byte	-126
@ x:
	.byte	3
@ y:
	.byte	9
@ z:
	.byte	-126
@ x:
	.byte	0
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	-124
@ y:
	.byte	-25
@ z:
	.byte	0
@ x:
	.byte	0
@ y:
	.byte	13
@ z:
	.byte	126
@ x:
	.byte	72
@ y:
	.byte	104
@ z:
	.byte	0
@ x:
	.byte	5
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	-124
@ y:
	.byte	-25
@ z:
	.byte	0
@ x:
	.byte	3
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	-32
@ y:
	.byte	-122
@ z:
	.byte	0
@ x:
	.byte	2
@ y:
	.byte	9
@ z:
	.byte	-126
@ x:
	.byte	2
@ y:
	.byte	9
@ z:
	.byte	-126
@ x:
	.byte	-32
@ y:
	.byte	-122
@ z:
	.byte	0
@ x:
	.byte	4
@ y:
	.byte	13
@ z:
	.byte	126
@ x:
	.byte	3
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	72
@ y:
	.byte	104
@ z:
	.byte	0
@ x:
	.byte	126
@ y:
	.byte	1
@ z:
	.byte	0
@ x:
	.byte	11
@ y:
	.byte	13
@ z:
	.byte	-125
@ x:
	.byte	4
@ y:
	.byte	9
@ z:
	.byte	-126
@ x:
	.byte	126
@ y:
	.byte	1
@ z:
	.byte	0
@ x:
	.byte	3
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	-32
@ y:
	.byte	-122
@ z:
	.byte	0
@ x:
	.byte	117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	5
@ y:
	.byte	10
@ z:
	.byte	-126
@ x:
	.byte	2
@ y:
	.byte	9
@ z:
	.byte	-126
@ x:
	.byte	117
@ y:
	.byte	-48
@ z:
	.byte	0
@ x:
	.byte	-32
@ y:
	.byte	-122
@ z:
	.byte	0
@ x:
	.byte	-126
@ y:
	.byte	4
@ z:
	.byte	0
@ x:
	.byte	-57
@ y:
	.byte	113
@ z:
	.byte	0
@ x:
	.byte	-8
@ y:
	.byte	16
@ z:
	.byte	125
@ x:
	.byte	-126
@ y:
	.byte	4
@ z:
	.byte	0
@ x:
	.byte	-57
@ y:
	.byte	113
@ z:
	.byte	0
@ x:
	.byte	-1
@ y:
	.byte	15
@ z:
	.byte	-125
@ x:
	.byte	-5
@ y:
	.byte	10
@ z:
	.byte	-126
@ x:
	.byte	-1
@ y:
	.byte	10
@ z:
	.byte	126
@ x:
	.byte	-114
@ y:
	.byte	-55
@ z:
	.byte	0
@ x:
	.byte	-1
@ y:
	.byte	14
@ z:
	.byte	126
@ x:
	.byte	23
@ y:
	.byte	124
@ z:
	.byte	0
@ x:
	.byte	2
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	-114
@ y:
	.byte	-55
@ z:
	.byte	0
@ x:
	.byte	3
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	-32
@ y:
	.byte	-122
@ z:
	.byte	0
@ x:
	.byte	4
@ y:
	.byte	18
@ z:
	.byte	-125
@ x:
	.byte	-1
@ y:
	.byte	10
@ z:
	.byte	-126
@ x:
	.byte	-32
@ y:
	.byte	-122
@ z:
	.byte	0
@ x:
	.byte	2
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	2
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	23
@ y:
	.byte	124
@ z:
	.byte	0
@ x:
	.byte	126
@ y:
	.byte	8
@ z:
	.byte	0
@ x:
	.byte	2
@ y:
	.byte	11
@ z:
	.byte	-126
@ x:
	.byte	2
@ y:
	.byte	11
@ z:
	.byte	-126
@ x:
	.byte	126
@ y:
	.byte	8
@ z:
	.byte	0
@ x:
	.byte	2
@ y:
	.byte	11
@ z:
	.byte	126
@ x:
	.byte	-32
@ y:
	.byte	-122
@ z:
	.byte	0
@ x:
	.byte	126
@ y:
	.byte	8
@ z:
	.byte	0
@ x:
	.byte	2
@ y:
	.byte	11
@ z:
	.byte	-126
@ x:
	.byte	3
@ y:
	.byte	11
@ z:
	.byte	-126
@ x:
	.byte	126
@ y:
	.byte	8
@ z:
	.byte	0
@ x:
	.byte	-32
@ y:
	.byte	-122
@ z:
	.byte	0
@ x:
	.byte	-122
@ y:
	.byte	-32
@ z:
	.byte	3
@ x:
	.byte	-1
@ y:
	.byte	40
@ z:
	.byte	120
@ x:
	.byte	-122
@ y:
	.byte	-30
@ z:
	.byte	16
@ x:
	.byte	-30
@ y:
	.byte	120
@ z:
	.byte	-27
@ x:
	.byte	-36
@ y:
	.byte	-119
@ z:
	.byte	21
@ x:
	.byte	2
@ y:
	.byte	40
@ z:
	.byte	120
@ x:
	.byte	-30
@ y:
	.byte	120
@ z:
	.byte	-27
@ x:
	.byte	0
@ y:
	.byte	-32
@ z:
	.byte	-122
@ x:
	.byte	-1
@ y:
	.byte	39
@ z:
	.byte	120
@ x:
	.byte	-30
@ y:
	.byte	120
@ z:
	.byte	-27
@ x:
	.byte	0
@ y:
	.byte	-32
@ z:
	.byte	-122
@ x:
	.byte	-36
@ y:
	.byte	-119
@ z:
	.byte	21
@ x:
	.byte	-30
@ y:
	.byte	120
@ z:
	.byte	-27
@ x:
	.byte	0
@ y:
	.byte	-32
@ z:
	.byte	-122
@ x:
	.byte	-6
@ y:
	.byte	39
@ z:
	.byte	120
@ x:
	.byte	122
@ y:
	.byte	27
@ z:
	.byte	-15
@ x:
	.byte	0
@ y:
	.byte	-32
@ z:
	.byte	-122
@ x:
	.byte	92
@ y:
	.byte	-85
@ z:
	.byte	18
@ x:
	.byte	122
@ y:
	.byte	34
@ z:
	.byte	-3
@ x:
	.byte	92
@ y:
	.byte	-85
@ z:
	.byte	18
	.type	model_vertices, %object
	.size	model_vertices, 4176
model_vertices:
@ x:
	.word	67
@ y:
	.word	247
@ z:
	.word	114
@ x:
	.word	63
@ y:
	.word	253
@ z:
	.word	117
@ x:
	.word	67
@ y:
	.word	251
@ z:
	.word	114
@ x:
	.word	70
@ y:
	.word	251
@ z:
	.word	110
@ x:
	.word	71
@ y:
	.word	253
@ z:
	.word	106
@ x:
	.word	70
@ y:
	.word	247
@ z:
	.word	110
@ x:
	.word	71
@ y:
	.word	245
@ z:
	.word	106
@ x:
	.word	63
@ y:
	.word	245
@ z:
	.word	117
@ x:
	.word	40
@ y:
	.word	253
@ z:
	.word	92
@ x:
	.word	38
@ y:
	.word	251
@ z:
	.word	106
@ x:
	.word	34
@ y:
	.word	253
@ z:
	.word	90
@ x:
	.word	32
@ y:
	.word	253
@ z:
	.word	104
@ x:
	.word	40
@ y:
	.word	242
@ z:
	.word	92
@ x:
	.word	34
@ y:
	.word	240
@ z:
	.word	90
@ x:
	.word	38
@ y:
	.word	244
@ z:
	.word	106
@ x:
	.word	32
@ y:
	.word	240
@ z:
	.word	104
@ x:
	.word	10
@ y:
	.word	200
@ z:
	.word	69
@ x:
	.word	11
@ y:
	.word	196
@ z:
	.word	84
@ x:
	.word	-2
@ y:
	.word	191
@ z:
	.word	84
@ x:
	.word	18
@ y:
	.word	240
@ z:
	.word	104
@ x:
	.word	-3
@ y:
	.word	194
@ z:
	.word	69
@ x:
	.word	20
@ y:
	.word	240
@ z:
	.word	89
@ x:
	.word	19
@ y:
	.word	242
@ z:
	.word	83
@ x:
	.word	19
@ y:
	.word	253
@ z:
	.word	83
@ x:
	.word	9
@ y:
	.word	242
@ z:
	.word	85
@ x:
	.word	18
@ y:
	.word	253
@ z:
	.word	104
@ x:
	.word	8
@ y:
	.word	253
@ z:
	.word	94
@ x:
	.word	0
@ y:
	.word	253
@ z:
	.word	71
@ x:
	.word	-10
@ y:
	.word	253
@ z:
	.word	82
@ x:
	.word	0
@ y:
	.word	247
@ z:
	.word	71
@ x:
	.word	8
@ y:
	.word	242
@ z:
	.word	94
@ x:
	.word	-10
@ y:
	.word	247
@ z:
	.word	82
@ x:
	.word	21
@ y:
	.word	241
@ z:
	.word	110
@ x:
	.word	21
@ y:
	.word	253
@ z:
	.word	110
@ x:
	.word	33
@ y:
	.word	244
@ z:
	.word	109
@ x:
	.word	35
@ y:
	.word	243
@ z:
	.word	142
@ x:
	.word	33
@ y:
	.word	251
@ z:
	.word	109
@ x:
	.word	44
@ y:
	.word	243
@ z:
	.word	135
@ x:
	.word	35
@ y:
	.word	253
@ z:
	.word	142
@ x:
	.word	44
@ y:
	.word	253
@ z:
	.word	135
@ x:
	.word	43
@ y:
	.word	245
@ z:
	.word	138
@ x:
	.word	39
@ y:
	.word	245
@ z:
	.word	141
@ x:
	.word	43
@ y:
	.word	251
@ z:
	.word	138
@ x:
	.word	39
@ y:
	.word	251
@ z:
	.word	141
@ x:
	.word	239
@ y:
	.word	-151
@ z:
	.word	-8
@ x:
	.word	217
@ y:
	.word	-158
@ z:
	.word	0
@ x:
	.word	217
@ y:
	.word	-158
@ z:
	.word	-11
@ x:
	.word	217
@ y:
	.word	-183
@ z:
	.word	-11
@ x:
	.word	245
@ y:
	.word	-168
@ z:
	.word	-8
@ x:
	.word	217
@ y:
	.word	-183
@ z:
	.word	0
@ x:
	.word	239
@ y:
	.word	-151
@ z:
	.word	0
@ x:
	.word	252
@ y:
	.word	-143
@ z:
	.word	0
@ x:
	.word	239
@ y:
	.word	-151
@ z:
	.word	8
@ x:
	.word	217
@ y:
	.word	-158
@ z:
	.word	11
@ x:
	.word	245
@ y:
	.word	-168
@ z:
	.word	8
@ x:
	.word	217
@ y:
	.word	-183
@ z:
	.word	11
@ x:
	.word	245
@ y:
	.word	-168
@ z:
	.word	0
@ x:
	.word	18
@ y:
	.word	240
@ z:
	.word	-104
@ x:
	.word	-2
@ y:
	.word	191
@ z:
	.word	-84
@ x:
	.word	11
@ y:
	.word	196
@ z:
	.word	-84
@ x:
	.word	32
@ y:
	.word	240
@ z:
	.word	-104
@ x:
	.word	10
@ y:
	.word	200
@ z:
	.word	-69
@ x:
	.word	34
@ y:
	.word	240
@ z:
	.word	-90
@ x:
	.word	-3
@ y:
	.word	194
@ z:
	.word	-69
@ x:
	.word	20
@ y:
	.word	240
@ z:
	.word	-89
@ x:
	.word	19
@ y:
	.word	242
@ z:
	.word	-83
@ x:
	.word	34
@ y:
	.word	253
@ z:
	.word	-90
@ x:
	.word	9
@ y:
	.word	242
@ z:
	.word	-85
@ x:
	.word	19
@ y:
	.word	253
@ z:
	.word	-83
@ x:
	.word	0
@ y:
	.word	247
@ z:
	.word	-71
@ x:
	.word	8
@ y:
	.word	242
@ z:
	.word	-94
@ x:
	.word	-10
@ y:
	.word	247
@ z:
	.word	-82
@ x:
	.word	18
@ y:
	.word	253
@ z:
	.word	-104
@ x:
	.word	21
@ y:
	.word	241
@ z:
	.word	-110
@ x:
	.word	8
@ y:
	.word	253
@ z:
	.word	-94
@ x:
	.word	-10
@ y:
	.word	253
@ z:
	.word	-82
@ x:
	.word	0
@ y:
	.word	253
@ z:
	.word	-71
@ x:
	.word	-7
@ y:
	.word	249
@ z:
	.word	-79
@ x:
	.word	-3
@ y:
	.word	249
@ z:
	.word	-74
@ x:
	.word	-7
@ y:
	.word	252
@ z:
	.word	-79
@ x:
	.word	-3
@ y:
	.word	252
@ z:
	.word	-74
@ x:
	.word	21
@ y:
	.word	253
@ z:
	.word	-110
@ x:
	.word	32
@ y:
	.word	253
@ z:
	.word	-104
@ x:
	.word	35
@ y:
	.word	243
@ z:
	.word	-142
@ x:
	.word	33
@ y:
	.word	244
@ z:
	.word	-109
@ x:
	.word	38
@ y:
	.word	251
@ z:
	.word	-106
@ x:
	.word	33
@ y:
	.word	251
@ z:
	.word	-109
@ x:
	.word	44
@ y:
	.word	243
@ z:
	.word	-135
@ x:
	.word	35
@ y:
	.word	253
@ z:
	.word	-142
@ x:
	.word	40
@ y:
	.word	253
@ z:
	.word	-92
@ x:
	.word	38
@ y:
	.word	244
@ z:
	.word	-106
@ x:
	.word	44
@ y:
	.word	253
@ z:
	.word	-135
@ x:
	.word	63
@ y:
	.word	253
@ z:
	.word	-117
@ x:
	.word	40
@ y:
	.word	242
@ z:
	.word	-92
@ x:
	.word	63
@ y:
	.word	245
@ z:
	.word	-117
@ x:
	.word	71
@ y:
	.word	253
@ z:
	.word	-106
@ x:
	.word	71
@ y:
	.word	245
@ z:
	.word	-106
@ x:
	.word	39
@ y:
	.word	245
@ z:
	.word	-141
@ x:
	.word	43
@ y:
	.word	245
@ z:
	.word	-138
@ x:
	.word	39
@ y:
	.word	251
@ z:
	.word	-141
@ x:
	.word	43
@ y:
	.word	251
@ z:
	.word	-138
@ x:
	.word	67
@ y:
	.word	251
@ z:
	.word	-114
@ x:
	.word	67
@ y:
	.word	247
@ z:
	.word	-114
@ x:
	.word	70
@ y:
	.word	251
@ z:
	.word	-110
@ x:
	.word	70
@ y:
	.word	247
@ z:
	.word	-110
@ x:
	.word	-7
@ y:
	.word	249
@ z:
	.word	79
@ x:
	.word	-3
@ y:
	.word	249
@ z:
	.word	74
@ x:
	.word	-7
@ y:
	.word	252
@ z:
	.word	79
@ x:
	.word	-3
@ y:
	.word	252
@ z:
	.word	74
@ x:
	.word	21
@ y:
	.word	180
@ z:
	.word	-61
@ x:
	.word	0
@ y:
	.word	173
@ z:
	.word	-61
@ x:
	.word	22
@ y:
	.word	175
@ z:
	.word	-82
@ x:
	.word	2
@ y:
	.word	168
@ z:
	.word	-82
@ x:
	.word	39
@ y:
	.word	160
@ z:
	.word	-88
@ x:
	.word	36
@ y:
	.word	169
@ z:
	.word	-47
@ x:
	.word	104
@ y:
	.word	96
@ z:
	.word	-115
@ x:
	.word	133
@ y:
	.word	104
@ z:
	.word	0
@ x:
	.word	-3
@ y:
	.word	154
@ z:
	.word	-47
@ x:
	.word	0
@ y:
	.word	145
@ z:
	.word	-88
@ x:
	.word	-32
@ y:
	.word	147
@ z:
	.word	0
@ x:
	.word	-32
@ y:
	.word	119
@ z:
	.word	-115
@ x:
	.word	-3
@ y:
	.word	154
@ z:
	.word	47
@ x:
	.word	-119
@ y:
	.word	105
@ z:
	.word	-108
@ x:
	.word	-53
@ y:
	.word	-91
@ z:
	.word	-115
@ x:
	.word	-134
@ y:
	.word	-94
@ z:
	.word	-115
@ x:
	.word	36
@ y:
	.word	169
@ z:
	.word	47
@ x:
	.word	104
@ y:
	.word	96
@ z:
	.word	115
@ x:
	.word	181
@ y:
	.word	-59
@ z:
	.word	0
@ x:
	.word	26
@ y:
	.word	-88
@ z:
	.word	-115
@ x:
	.word	26
@ y:
	.word	-99
@ z:
	.word	0
@ x:
	.word	166
@ y:
	.word	-59
@ z:
	.word	-58
@ x:
	.word	-53
@ y:
	.word	-102
@ z:
	.word	0
@ x:
	.word	76
@ y:
	.word	-111
@ z:
	.word	-58
@ x:
	.word	202
@ y:
	.word	-139
@ z:
	.word	0
@ x:
	.word	166
@ y:
	.word	-59
@ z:
	.word	58
@ x:
	.word	196
@ y:
	.word	-139
@ z:
	.word	40
@ x:
	.word	196
@ y:
	.word	-139
@ z:
	.word	-40
@ x:
	.word	195
@ y:
	.word	-213
@ z:
	.word	-40
@ x:
	.word	84
@ y:
	.word	-163
@ z:
	.word	-40
@ x:
	.word	195
@ y:
	.word	-213
@ z:
	.word	40
@ x:
	.word	195
@ y:
	.word	-231
@ z:
	.word	0
@ x:
	.word	117
@ y:
	.word	-252
@ z:
	.word	0
@ x:
	.word	131
@ y:
	.word	-233
@ z:
	.word	-40
@ x:
	.word	76
@ y:
	.word	-229
@ z:
	.word	0
@ x:
	.word	131
@ y:
	.word	-233
@ z:
	.word	40
@ x:
	.word	90
@ y:
	.word	-211
@ z:
	.word	-40
@ x:
	.word	70
@ y:
	.word	-163
@ z:
	.word	0
@ x:
	.word	90
@ y:
	.word	-211
@ z:
	.word	40
@ x:
	.word	84
@ y:
	.word	-163
@ z:
	.word	40
@ x:
	.word	76
@ y:
	.word	-111
@ z:
	.word	58
@ x:
	.word	63
@ y:
	.word	-111
@ z:
	.word	0
@ x:
	.word	26
@ y:
	.word	-88
@ z:
	.word	115
@ x:
	.word	-53
@ y:
	.word	-91
@ z:
	.word	115
@ x:
	.word	-32
@ y:
	.word	119
@ z:
	.word	115
@ x:
	.word	39
@ y:
	.word	160
@ z:
	.word	88
@ x:
	.word	21
@ y:
	.word	180
@ z:
	.word	61
@ x:
	.word	-134
@ y:
	.word	-94
@ z:
	.word	115
@ x:
	.word	-119
@ y:
	.word	105
@ z:
	.word	108
@ x:
	.word	-134
@ y:
	.word	-105
@ z:
	.word	0
@ x:
	.word	-231
@ y:
	.word	-137
@ z:
	.word	0
@ x:
	.word	-221
@ y:
	.word	-133
@ z:
	.word	-32
@ x:
	.word	-221
@ y:
	.word	-83
@ z:
	.word	-32
@ x:
	.word	-231
@ y:
	.word	-87
@ z:
	.word	0
@ x:
	.word	-119
@ y:
	.word	112
@ z:
	.word	0
@ x:
	.word	-221
@ y:
	.word	-83
@ z:
	.word	32
@ x:
	.word	-221
@ y:
	.word	-133
@ z:
	.word	32
@ x:
	.word	0
@ y:
	.word	145
@ z:
	.word	88
@ x:
	.word	22
@ y:
	.word	175
@ z:
	.word	82
@ x:
	.word	2
@ y:
	.word	168
@ z:
	.word	82
@ x:
	.word	0
@ y:
	.word	173
@ z:
	.word	61
@ x:
	.word	-8
@ y:
	.word	249
@ z:
	.word	-70
@ x:
	.word	-12
@ y:
	.word	249
@ z:
	.word	-76
@ x:
	.word	-8
@ y:
	.word	252
@ z:
	.word	-70
@ x:
	.word	-14
@ y:
	.word	251
@ z:
	.word	-66
@ x:
	.word	-12
@ y:
	.word	252
@ z:
	.word	-76
@ x:
	.word	-14
@ y:
	.word	253
@ z:
	.word	-66
@ x:
	.word	-18
@ y:
	.word	251
@ z:
	.word	-72
@ x:
	.word	-18
@ y:
	.word	253
@ z:
	.word	-72
@ x:
	.word	-8
@ y:
	.word	252
@ z:
	.word	70
@ x:
	.word	-8
@ y:
	.word	249
@ z:
	.word	70
@ x:
	.word	-12
@ y:
	.word	252
@ z:
	.word	76
@ x:
	.word	-14
@ y:
	.word	253
@ z:
	.word	66
@ x:
	.word	-12
@ y:
	.word	249
@ z:
	.word	76
@ x:
	.word	-18
@ y:
	.word	253
@ z:
	.word	72
@ x:
	.word	-14
@ y:
	.word	251
@ z:
	.word	66
@ x:
	.word	-18
@ y:
	.word	251
@ z:
	.word	72
@ x:
	.word	71
@ y:
	.word	249
@ z:
	.word	117
@ x:
	.word	74
@ y:
	.word	249
@ z:
	.word	112
@ x:
	.word	71
@ y:
	.word	251
@ z:
	.word	117
@ x:
	.word	75
@ y:
	.word	251
@ z:
	.word	119
@ x:
	.word	74
@ y:
	.word	251
@ z:
	.word	112
@ x:
	.word	75
@ y:
	.word	252
@ z:
	.word	119
@ x:
	.word	77
@ y:
	.word	251
@ z:
	.word	114
@ x:
	.word	77
@ y:
	.word	252
@ z:
	.word	114
@ x:
	.word	41
@ y:
	.word	247
@ z:
	.word	145
@ x:
	.word	45
@ y:
	.word	247
@ z:
	.word	142
@ x:
	.word	41
@ y:
	.word	251
@ z:
	.word	145
@ x:
	.word	42
@ y:
	.word	250
@ z:
	.word	149
@ x:
	.word	45
@ y:
	.word	251
@ z:
	.word	142
@ x:
	.word	42
@ y:
	.word	252
@ z:
	.word	149
@ x:
	.word	47
@ y:
	.word	250
@ z:
	.word	147
@ x:
	.word	47
@ y:
	.word	252
@ z:
	.word	147
@ x:
	.word	188
@ y:
	.word	-185
@ z:
	.word	-28
@ x:
	.word	185
@ y:
	.word	-179
@ z:
	.word	-28
@ x:
	.word	185
@ y:
	.word	-179
@ z:
	.word	-42
@ x:
	.word	179
@ y:
	.word	-176
@ z:
	.word	-28
@ x:
	.word	188
@ y:
	.word	-185
@ z:
	.word	-42
@ x:
	.word	179
@ y:
	.word	-185
@ z:
	.word	-42
@ x:
	.word	185
@ y:
	.word	-191
@ z:
	.word	-28
@ x:
	.word	179
@ y:
	.word	-176
@ z:
	.word	-42
@ x:
	.word	173
@ y:
	.word	-179
@ z:
	.word	-28
@ x:
	.word	185
@ y:
	.word	-191
@ z:
	.word	-42
@ x:
	.word	179
@ y:
	.word	-194
@ z:
	.word	-28
@ x:
	.word	173
@ y:
	.word	-179
@ z:
	.word	-42
@ x:
	.word	170
@ y:
	.word	-185
@ z:
	.word	-28
@ x:
	.word	179
@ y:
	.word	-194
@ z:
	.word	-42
@ x:
	.word	173
@ y:
	.word	-191
@ z:
	.word	-28
@ x:
	.word	170
@ y:
	.word	-185
@ z:
	.word	-42
@ x:
	.word	173
@ y:
	.word	-191
@ z:
	.word	-42
@ x:
	.word	185
@ y:
	.word	-179
@ z:
	.word	42
@ x:
	.word	185
@ y:
	.word	-179
@ z:
	.word	28
@ x:
	.word	188
@ y:
	.word	-185
@ z:
	.word	28
@ x:
	.word	179
@ y:
	.word	-176
@ z:
	.word	28
@ x:
	.word	188
@ y:
	.word	-185
@ z:
	.word	42
@ x:
	.word	179
@ y:
	.word	-185
@ z:
	.word	42
@ x:
	.word	185
@ y:
	.word	-191
@ z:
	.word	28
@ x:
	.word	179
@ y:
	.word	-176
@ z:
	.word	42
@ x:
	.word	173
@ y:
	.word	-179
@ z:
	.word	28
@ x:
	.word	185
@ y:
	.word	-191
@ z:
	.word	42
@ x:
	.word	179
@ y:
	.word	-194
@ z:
	.word	28
@ x:
	.word	173
@ y:
	.word	-179
@ z:
	.word	42
@ x:
	.word	170
@ y:
	.word	-185
@ z:
	.word	28
@ x:
	.word	179
@ y:
	.word	-194
@ z:
	.word	42
@ x:
	.word	173
@ y:
	.word	-191
@ z:
	.word	28
@ x:
	.word	170
@ y:
	.word	-185
@ z:
	.word	42
@ x:
	.word	173
@ y:
	.word	-191
@ z:
	.word	42
@ x:
	.word	41
@ y:
	.word	247
@ z:
	.word	-145
@ x:
	.word	45
@ y:
	.word	247
@ z:
	.word	-142
@ x:
	.word	41
@ y:
	.word	251
@ z:
	.word	-145
@ x:
	.word	42
@ y:
	.word	250
@ z:
	.word	-149
@ x:
	.word	45
@ y:
	.word	251
@ z:
	.word	-142
@ x:
	.word	42
@ y:
	.word	252
@ z:
	.word	-149
@ x:
	.word	47
@ y:
	.word	250
@ z:
	.word	-147
@ x:
	.word	47
@ y:
	.word	252
@ z:
	.word	-147
@ x:
	.word	71
@ y:
	.word	251
@ z:
	.word	-117
@ x:
	.word	74
@ y:
	.word	251
@ z:
	.word	-112
@ x:
	.word	71
@ y:
	.word	249
@ z:
	.word	-117
@ x:
	.word	75
@ y:
	.word	252
@ z:
	.word	-119
@ x:
	.word	74
@ y:
	.word	249
@ z:
	.word	-112
@ x:
	.word	75
@ y:
	.word	251
@ z:
	.word	-119
@ x:
	.word	77
@ y:
	.word	252
@ z:
	.word	-114
@ x:
	.word	77
@ y:
	.word	251
@ z:
	.word	-114
@ x:
	.word	194
@ y:
	.word	-103
@ z:
	.word	-17
@ x:
	.word	180
@ y:
	.word	-156
@ z:
	.word	-11
@ x:
	.word	194
@ y:
	.word	-105
@ z:
	.word	-28
@ x:
	.word	214
@ y:
	.word	-99
@ z:
	.word	-30
@ x:
	.word	180
@ y:
	.word	-154
@ z:
	.word	-3
@ x:
	.word	214
@ y:
	.word	-97
@ z:
	.word	-19
@ x:
	.word	197
@ y:
	.word	-160
@ z:
	.word	-10
@ x:
	.word	196
@ y:
	.word	-158
@ z:
	.word	-2
@ x:
	.word	228
@ y:
	.word	-110
@ z:
	.word	-15
@ x:
	.word	228
@ y:
	.word	-113
@ z:
	.word	-26
@ x:
	.word	213
@ y:
	.word	-162
@ z:
	.word	-1
@ x:
	.word	214
@ y:
	.word	-164
@ z:
	.word	-9
@ x:
	.word	210
@ y:
	.word	-262
@ z:
	.word	-3
@ x:
	.word	200
@ y:
	.word	-244
@ z:
	.word	4
@ x:
	.word	210
@ y:
	.word	-262
@ z:
	.word	2
@ x:
	.word	225
@ y:
	.word	-261
@ z:
	.word	2
@ x:
	.word	200
@ y:
	.word	-244
@ z:
	.word	-5
@ x:
	.word	225
@ y:
	.word	-261
@ z:
	.word	-2
@ x:
	.word	213
@ y:
	.word	-236
@ z:
	.word	-5
@ x:
	.word	213
@ y:
	.word	-236
@ z:
	.word	5
@ x:
	.word	195
@ y:
	.word	-222
@ z:
	.word	7
@ x:
	.word	229
@ y:
	.word	-242
@ z:
	.word	2
@ x:
	.word	195
@ y:
	.word	-222
@ z:
	.word	-7
@ x:
	.word	201
@ y:
	.word	-210
@ z:
	.word	7
@ x:
	.word	201
@ y:
	.word	-210
@ z:
	.word	-7
@ x:
	.word	221
@ y:
	.word	-220
@ z:
	.word	5
@ x:
	.word	229
@ y:
	.word	-242
@ z:
	.word	-2
@ x:
	.word	221
@ y:
	.word	-220
@ z:
	.word	-4
@ x:
	.word	206
@ y:
	.word	-198
@ z:
	.word	7
@ x:
	.word	206
@ y:
	.word	-198
@ z:
	.word	-7
@ x:
	.word	232
@ y:
	.word	-238
@ z:
	.word	-2
@ x:
	.word	215
@ y:
	.word	-218
@ z:
	.word	5
@ x:
	.word	232
@ y:
	.word	-238
@ z:
	.word	2
@ x:
	.word	242
@ y:
	.word	-232
@ z:
	.word	2
@ x:
	.word	215
@ y:
	.word	-218
@ z:
	.word	-5
@ x:
	.word	242
@ y:
	.word	-232
@ z:
	.word	-2
@ x:
	.word	228
@ y:
	.word	-209
@ z:
	.word	-5
@ x:
	.word	228
@ y:
	.word	-209
@ z:
	.word	5
@ x:
	.word	206
@ y:
	.word	-198
@ z:
	.word	7
@ x:
	.word	242
@ y:
	.word	-211
@ z:
	.word	2
@ x:
	.word	206
@ y:
	.word	-198
@ z:
	.word	-7
@ x:
	.word	212
@ y:
	.word	-186
@ z:
	.word	7
@ x:
	.word	212
@ y:
	.word	-186
@ z:
	.word	-7
@ x:
	.word	232
@ y:
	.word	-193
@ z:
	.word	5
@ x:
	.word	242
@ y:
	.word	-211
@ z:
	.word	-2
@ x:
	.word	232
@ y:
	.word	-193
@ z:
	.word	-5
@ x:
	.word	217
@ y:
	.word	-174
@ z:
	.word	7
@ x:
	.word	217
@ y:
	.word	-174
@ z:
	.word	-7
@ x:
	.word	155
@ y:
	.word	-287
@ z:
	.word	-3
@ x:
	.word	151
@ y:
	.word	-260
@ z:
	.word	4
@ x:
	.word	155
@ y:
	.word	-287
@ z:
	.word	1
@ x:
	.word	179
@ y:
	.word	-285
@ z:
	.word	2
@ x:
	.word	151
@ y:
	.word	-260
@ z:
	.word	-5
@ x:
	.word	179
@ y:
	.word	-285
@ z:
	.word	-3
@ x:
	.word	177
@ y:
	.word	-256
@ z:
	.word	-5
@ x:
	.word	177
@ y:
	.word	-256
@ z:
	.word	4
@ x:
	.word	156
@ y:
	.word	-233
@ z:
	.word	7
@ x:
	.word	204
@ y:
	.word	-268
@ z:
	.word	2
@ x:
	.word	156
@ y:
	.word	-233
@ z:
	.word	-7
@ x:
	.word	176
@ y:
	.word	-228
@ z:
	.word	7
@ x:
	.word	176
@ y:
	.word	-228
@ z:
	.word	-7
@ x:
	.word	204
@ y:
	.word	-245
@ z:
	.word	5
@ x:
	.word	204
@ y:
	.word	-268
@ z:
	.word	-2
@ x:
	.word	204
@ y:
	.word	-245
@ z:
	.word	-5
@ x:
	.word	195
@ y:
	.word	-222
@ z:
	.word	7
@ x:
	.word	195
@ y:
	.word	-222
@ z:
	.word	-7
@ x:
	.word	109
@ y:
	.word	-281
@ z:
	.word	-2
@ x:
	.word	108
@ y:
	.word	-262
@ z:
	.word	5
@ x:
	.word	109
@ y:
	.word	-281
@ z:
	.word	2
@ x:
	.word	130
@ y:
	.word	-292
@ z:
	.word	2
@ x:
	.word	108
@ y:
	.word	-262
@ z:
	.word	-5
@ x:
	.word	130
@ y:
	.word	-292
@ z:
	.word	-2
@ x:
	.word	134
@ y:
	.word	-265
@ z:
	.word	-5
@ x:
	.word	134
@ y:
	.word	-265
@ z:
	.word	5
@ x:
	.word	117
@ y:
	.word	-243
@ z:
	.word	7
@ x:
	.word	152
@ y:
	.word	-288
@ z:
	.word	2
@ x:
	.word	117
@ y:
	.word	-243
@ z:
	.word	-7
@ x:
	.word	137
@ y:
	.word	-238
@ z:
	.word	7
@ x:
	.word	137
@ y:
	.word	-238
@ z:
	.word	-7
@ x:
	.word	154
@ y:
	.word	-260
@ z:
	.word	5
@ x:
	.word	152
@ y:
	.word	-288
@ z:
	.word	-2
@ x:
	.word	154
@ y:
	.word	-260
@ z:
	.word	-5
@ x:
	.word	156
@ y:
	.word	-233
@ z:
	.word	7
@ x:
	.word	156
@ y:
	.word	-233
@ z:
	.word	-7
@ x:
	.word	180
@ y:
	.word	-156
@ z:
	.word	11
@ x:
	.word	194
@ y:
	.word	-103
@ z:
	.word	17
@ x:
	.word	194
@ y:
	.word	-105
@ z:
	.word	28
@ x:
	.word	197
@ y:
	.word	-160
@ z:
	.word	10
@ x:
	.word	180
@ y:
	.word	-154
@ z:
	.word	3
@ x:
	.word	214
@ y:
	.word	-99
@ z:
	.word	30
@ x:
	.word	196
@ y:
	.word	-158
@ z:
	.word	2
@ x:
	.word	214
@ y:
	.word	-164
@ z:
	.word	9
@ x:
	.word	214
@ y:
	.word	-97
@ z:
	.word	19
@ x:
	.word	213
@ y:
	.word	-162
@ z:
	.word	1
@ x:
	.word	228
@ y:
	.word	-113
@ z:
	.word	26
@ x:
	.word	228
@ y:
	.word	-110
@ z:
	.word	15
	.type	model_triangles, %object
	.size	model_triangles, 3888
model_triangles:
	.short	0
	.short	1
	.short	2
	.short	3
	.short	2
	.short	1
	.short	1
	.short	4
	.short	3
	.short	5
	.short	3
	.short	4
	.short	0
	.short	5
	.short	6
	.short	4
	.short	6
	.short	5
	.short	1
	.short	0
	.short	7
	.short	6
	.short	7
	.short	0
	.short	1
	.short	8
	.short	4
	.short	6
	.short	4
	.short	8
	.short	7
	.short	9
	.short	1
	.short	8
	.short	1
	.short	9
	.short	9
	.short	10
	.short	8
	.short	10
	.short	9
	.short	11
	.short	8
	.short	12
	.short	6
	.short	7
	.short	6
	.short	12
	.short	12
	.short	8
	.short	10
	.short	10
	.short	13
	.short	12
	.short	14
	.short	12
	.short	13
	.short	12
	.short	14
	.short	7
	.short	9
	.short	7
	.short	14
	.short	14
	.short	11
	.short	9
	.short	13
	.short	15
	.short	14
	.short	11
	.short	14
	.short	15
	.short	15
	.short	13
	.short	16
	.short	16
	.short	17
	.short	15
	.short	18
	.short	15
	.short	17
	.short	15
	.short	18
	.short	19
	.short	20
	.short	19
	.short	18
	.short	20
	.short	16
	.short	13
	.short	19
	.short	20
	.short	21
	.short	13
	.short	21
	.short	20
	.short	21
	.short	13
	.short	22
	.short	13
	.short	10
	.short	23
	.short	23
	.short	22
	.short	13
	.short	19
	.short	21
	.short	24
	.short	22
	.short	24
	.short	21
	.short	10
	.short	11
	.short	25
	.short	10
	.short	26
	.short	23
	.short	26
	.short	10
	.short	25
	.short	19
	.short	26
	.short	25
	.short	22
	.short	23
	.short	27
	.short	28
	.short	23
	.short	26
	.short	23
	.short	28
	.short	27
	.short	22
	.short	29
	.short	24
	.short	27
	.short	29
	.short	22
	.short	26
	.short	19
	.short	30
	.short	30
	.short	28
	.short	26
	.short	24
	.short	30
	.short	19
	.short	31
	.short	30
	.short	24
	.short	29
	.short	31
	.short	24
	.short	28
	.short	30
	.short	31
	.short	25
	.short	32
	.short	19
	.short	15
	.short	19
	.short	32
	.short	11
	.short	33
	.short	25
	.short	32
	.short	25
	.short	33
	.short	32
	.short	34
	.short	15
	.short	11
	.short	15
	.short	34
	.short	33
	.short	35
	.short	32
	.short	34
	.short	32
	.short	35
	.short	33
	.short	11
	.short	36
	.short	34
	.short	36
	.short	11
	.short	35
	.short	37
	.short	34
	.short	36
	.short	34
	.short	37
	.short	36
	.short	38
	.short	33
	.short	35
	.short	33
	.short	38
	.short	37
	.short	39
	.short	36
	.short	38
	.short	36
	.short	39
	.short	35
	.short	40
	.short	37
	.short	39
	.short	37
	.short	40
	.short	40
	.short	35
	.short	41
	.short	38
	.short	41
	.short	35
	.short	40
	.short	42
	.short	39
	.short	41
	.short	38
	.short	43
	.short	43
	.short	39
	.short	42
	.short	39
	.short	43
	.short	38
	.short	44
	.short	45
	.short	46
	.short	44
	.short	46
	.short	47
	.short	47
	.short	48
	.short	44
	.short	48
	.short	47
	.short	49
	.short	45
	.short	44
	.short	50
	.short	44
	.short	48
	.short	51
	.short	50
	.short	44
	.short	51
	.short	52
	.short	45
	.short	50
	.short	50
	.short	51
	.short	52
	.short	45
	.short	52
	.short	53
	.short	54
	.short	53
	.short	52
	.short	52
	.short	51
	.short	54
	.short	53
	.short	54
	.short	55
	.short	49
	.short	55
	.short	54
	.short	49
	.short	56
	.short	48
	.short	48
	.short	56
	.short	51
	.short	54
	.short	56
	.short	49
	.short	54
	.short	51
	.short	56
	.short	57
	.short	58
	.short	59
	.short	59
	.short	60
	.short	57
	.short	60
	.short	59
	.short	61
	.short	61
	.short	62
	.short	60
	.short	57
	.short	63
	.short	58
	.short	64
	.short	61
	.short	63
	.short	61
	.short	64
	.short	62
	.short	63
	.short	57
	.short	64
	.short	65
	.short	62
	.short	64
	.short	65
	.short	66
	.short	62
	.short	67
	.short	64
	.short	57
	.short	64
	.short	67
	.short	65
	.short	66
	.short	65
	.short	68
	.short	65
	.short	67
	.short	69
	.short	69
	.short	68
	.short	65
	.short	57
	.short	70
	.short	67
	.short	69
	.short	67
	.short	71
	.short	71
	.short	67
	.short	70
	.short	70
	.short	57
	.short	72
	.short	73
	.short	57
	.short	60
	.short	73
	.short	72
	.short	57
	.short	71
	.short	70
	.short	74
	.short	72
	.short	74
	.short	70
	.short	74
	.short	66
	.short	68
	.short	66
	.short	74
	.short	72
	.short	68
	.short	75
	.short	74
	.short	74
	.short	75
	.short	71
	.short	68
	.short	69
	.short	76
	.short	75
	.short	68
	.short	76
	.short	77
	.short	69
	.short	71
	.short	69
	.short	77
	.short	78
	.short	78
	.short	76
	.short	69
	.short	71
	.short	79
	.short	77
	.short	79
	.short	71
	.short	75
	.short	76
	.short	78
	.short	80
	.short	75
	.short	80
	.short	79
	.short	80
	.short	75
	.short	76
	.short	72
	.short	73
	.short	81
	.short	66
	.short	72
	.short	82
	.short	81
	.short	82
	.short	72
	.short	83
	.short	81
	.short	73
	.short	83
	.short	73
	.short	84
	.short	60
	.short	84
	.short	73
	.short	84
	.short	60
	.short	82
	.short	85
	.short	66
	.short	82
	.short	85
	.short	82
	.short	60
	.short	82
	.short	81
	.short	86
	.short	82
	.short	86
	.short	84
	.short	84
	.short	87
	.short	83
	.short	87
	.short	84
	.short	86
	.short	88
	.short	86
	.short	81
	.short	81
	.short	83
	.short	88
	.short	66
	.short	85
	.short	89
	.short	89
	.short	62
	.short	66
	.short	90
	.short	60
	.short	62
	.short	60
	.short	90
	.short	85
	.short	86
	.short	91
	.short	87
	.short	86
	.short	88
	.short	91
	.short	92
	.short	89
	.short	85
	.short	92
	.short	85
	.short	90
	.short	62
	.short	89
	.short	93
	.short	62
	.short	93
	.short	90
	.short	90
	.short	94
	.short	92
	.short	94
	.short	90
	.short	93
	.short	95
	.short	93
	.short	89
	.short	89
	.short	92
	.short	95
	.short	93
	.short	96
	.short	94
	.short	93
	.short	95
	.short	96
	.short	97
	.short	83
	.short	87
	.short	87
	.short	98
	.short	97
	.short	98
	.short	87
	.short	91
	.short	83
	.short	97
	.short	99
	.short	99
	.short	88
	.short	83
	.short	91
	.short	100
	.short	98
	.short	88
	.short	99
	.short	100
	.short	100
	.short	91
	.short	88
	.short	101
	.short	92
	.short	94
	.short	94
	.short	102
	.short	101
	.short	102
	.short	94
	.short	96
	.short	92
	.short	101
	.short	103
	.short	103
	.short	95
	.short	92
	.short	96
	.short	104
	.short	102
	.short	95
	.short	103
	.short	104
	.short	104
	.short	96
	.short	95
	.short	29
	.short	105
	.short	31
	.short	105
	.short	29
	.short	106
	.short	107
	.short	31
	.short	105
	.short	27
	.short	106
	.short	29
	.short	31
	.short	107
	.short	28
	.short	106
	.short	27
	.short	108
	.short	108
	.short	28
	.short	107
	.short	28
	.short	108
	.short	27
	.short	109
	.short	63
	.short	61
	.short	109
	.short	61
	.short	59
	.short	63
	.short	109
	.short	110
	.short	110
	.short	58
	.short	63
	.short	111
	.short	59
	.short	58
	.short	59
	.short	111
	.short	109
	.short	58
	.short	112
	.short	111
	.short	58
	.short	110
	.short	112
	.short	113
	.short	109
	.short	111
	.short	113
	.short	111
	.short	112
	.short	114
	.short	110
	.short	109
	.short	109
	.short	113
	.short	114
	.short	115
	.short	114
	.short	113
	.short	114
	.short	115
	.short	116
	.short	110
	.short	114
	.short	117
	.short	117
	.short	112
	.short	110
	.short	116
	.short	117
	.short	114
	.short	112
	.short	118
	.short	113
	.short	112
	.short	117
	.short	118
	.short	115
	.short	113
	.short	118
	.short	119
	.short	118
	.short	117
	.short	117
	.short	116
	.short	119
	.short	118
	.short	119
	.short	120
	.short	118
	.short	120
	.short	115
	.short	116
	.short	121
	.short	119
	.short	119
	.short	122
	.short	120
	.short	115
	.short	120
	.short	123
	.short	120
	.short	122
	.short	124
	.short	124
	.short	123
	.short	120
	.short	121
	.short	116
	.short	125
	.short	126
	.short	125
	.short	116
	.short	127
	.short	116
	.short	115
	.short	126
	.short	116
	.short	127
	.short	123
	.short	128
	.short	115
	.short	129
	.short	128
	.short	123
	.short	130
	.short	115
	.short	128
	.short	115
	.short	130
	.short	127
	.short	131
	.short	123
	.short	124
	.short	123
	.short	131
	.short	129
	.short	128
	.short	132
	.short	130
	.short	132
	.short	128
	.short	129
	.short	133
	.short	127
	.short	130
	.short	127
	.short	134
	.short	126
	.short	134
	.short	127
	.short	133
	.short	133
	.short	135
	.short	134
	.short	130
	.short	136
	.short	133
	.short	136
	.short	130
	.short	132
	.short	135
	.short	133
	.short	45
	.short	45
	.short	133
	.short	136
	.short	45
	.short	53
	.short	135
	.short	136
	.short	46
	.short	45
	.short	46
	.short	136
	.short	137
	.short	137
	.short	47
	.short	46
	.short	132
	.short	138
	.short	136
	.short	137
	.short	136
	.short	138
	.short	139
	.short	135
	.short	53
	.short	53
	.short	55
	.short	139
	.short	47
	.short	137
	.short	140
	.short	140
	.short	139
	.short	55
	.short	140
	.short	49
	.short	47
	.short	55
	.short	49
	.short	140
	.short	141
	.short	140
	.short	137
	.short	139
	.short	140
	.short	141
	.short	142
	.short	137
	.short	138
	.short	137
	.short	142
	.short	141
	.short	143
	.short	141
	.short	142
	.short	141
	.short	144
	.short	139
	.short	144
	.short	135
	.short	139
	.short	144
	.short	141
	.short	143
	.short	138
	.short	145
	.short	142
	.short	142
	.short	145
	.short	143
	.short	138
	.short	143
	.short	145
	.short	132
	.short	146
	.short	138
	.short	143
	.short	138
	.short	146
	.short	147
	.short	135
	.short	144
	.short	143
	.short	147
	.short	144
	.short	135
	.short	147
	.short	148
	.short	143
	.short	148
	.short	147
	.short	148
	.short	143
	.short	146
	.short	148
	.short	134
	.short	135
	.short	134
	.short	148
	.short	149
	.short	146
	.short	149
	.short	148
	.short	149
	.short	126
	.short	134
	.short	146
	.short	132
	.short	150
	.short	149
	.short	146
	.short	150
	.short	129
	.short	150
	.short	132
	.short	149
	.short	150
	.short	129
	.short	129
	.short	151
	.short	149
	.short	126
	.short	149
	.short	151
	.short	152
	.short	151
	.short	129
	.short	129
	.short	131
	.short	152
	.short	151
	.short	153
	.short	126
	.short	153
	.short	151
	.short	152
	.short	153
	.short	154
	.short	126
	.short	125
	.short	126
	.short	154
	.short	154
	.short	155
	.short	125
	.short	121
	.short	125
	.short	155
	.short	156
	.short	152
	.short	131
	.short	152
	.short	157
	.short	153
	.short	157
	.short	152
	.short	156
	.short	131
	.short	158
	.short	156
	.short	156
	.short	158
	.short	159
	.short	124
	.short	158
	.short	131
	.short	159
	.short	158
	.short	124
	.short	124
	.short	160
	.short	159
	.short	160
	.short	124
	.short	122
	.short	161
	.short	159
	.short	160
	.short	122
	.short	161
	.short	160
	.short	122
	.short	162
	.short	161
	.short	159
	.short	161
	.short	162
	.short	162
	.short	122
	.short	163
	.short	157
	.short	162
	.short	163
	.short	122
	.short	119
	.short	163
	.short	119
	.short	157
	.short	163
	.short	157
	.short	119
	.short	153
	.short	162
	.short	157
	.short	164
	.short	156
	.short	164
	.short	157
	.short	164
	.short	159
	.short	162
	.short	159
	.short	165
	.short	156
	.short	159
	.short	164
	.short	165
	.short	164
	.short	156
	.short	165
	.short	119
	.short	166
	.short	153
	.short	154
	.short	153
	.short	166
	.short	166
	.short	119
	.short	121
	.short	166
	.short	167
	.short	154
	.short	155
	.short	154
	.short	167
	.short	121
	.short	168
	.short	166
	.short	167
	.short	166
	.short	168
	.short	155
	.short	169
	.short	121
	.short	168
	.short	121
	.short	169
	.short	168
	.short	17
	.short	167
	.short	155
	.short	167
	.short	17
	.short	17
	.short	168
	.short	18
	.short	169
	.short	18
	.short	168
	.short	17
	.short	16
	.short	155
	.short	169
	.short	155
	.short	16
	.short	18
	.short	169
	.short	20
	.short	16
	.short	20
	.short	169
	.short	170
	.short	78
	.short	77
	.short	170
	.short	80
	.short	78
	.short	77
	.short	171
	.short	170
	.short	171
	.short	77
	.short	79
	.short	80
	.short	170
	.short	172
	.short	172
	.short	79
	.short	80
	.short	173
	.short	170
	.short	171
	.short	173
	.short	172
	.short	170
	.short	79
	.short	174
	.short	171
	.short	79
	.short	172
	.short	174
	.short	172
	.short	173
	.short	175
	.short	175
	.short	174
	.short	172
	.short	171
	.short	176
	.short	173
	.short	176
	.short	171
	.short	174
	.short	174
	.short	175
	.short	177
	.short	173
	.short	177
	.short	175
	.short	177
	.short	173
	.short	176
	.short	174
	.short	177
	.short	176
	.short	106
	.short	108
	.short	178
	.short	107
	.short	178
	.short	108
	.short	178
	.short	179
	.short	106
	.short	105
	.short	106
	.short	179
	.short	105
	.short	180
	.short	107
	.short	178
	.short	107
	.short	180
	.short	179
	.short	178
	.short	181
	.short	180
	.short	181
	.short	178
	.short	180
	.short	105
	.short	182
	.short	179
	.short	182
	.short	105
	.short	181
	.short	180
	.short	183
	.short	182
	.short	183
	.short	180
	.short	181
	.short	184
	.short	179
	.short	182
	.short	179
	.short	184
	.short	183
	.short	184
	.short	181
	.short	184
	.short	185
	.short	182
	.short	184
	.short	183
	.short	185
	.short	183
	.short	182
	.short	185
	.short	5
	.short	0
	.short	186
	.short	2
	.short	186
	.short	0
	.short	186
	.short	187
	.short	5
	.short	3
	.short	5
	.short	187
	.short	3
	.short	188
	.short	2
	.short	186
	.short	2
	.short	188
	.short	187
	.short	186
	.short	189
	.short	188
	.short	189
	.short	186
	.short	187
	.short	190
	.short	3
	.short	188
	.short	3
	.short	190
	.short	189
	.short	188
	.short	191
	.short	190
	.short	191
	.short	188
	.short	189
	.short	192
	.short	187
	.short	190
	.short	187
	.short	192
	.short	192
	.short	189
	.short	191
	.short	191
	.short	190
	.short	193
	.short	191
	.short	193
	.short	192
	.short	192
	.short	193
	.short	190
	.short	40
	.short	41
	.short	194
	.short	43
	.short	194
	.short	41
	.short	194
	.short	195
	.short	40
	.short	42
	.short	40
	.short	195
	.short	42
	.short	196
	.short	43
	.short	194
	.short	43
	.short	196
	.short	195
	.short	194
	.short	197
	.short	196
	.short	197
	.short	194
	.short	195
	.short	198
	.short	42
	.short	196
	.short	42
	.short	198
	.short	197
	.short	196
	.short	199
	.short	198
	.short	199
	.short	196
	.short	198
	.short	195
	.short	200
	.short	197
	.short	200
	.short	195
	.short	201
	.short	197
	.short	199
	.short	199
	.short	198
	.short	201
	.short	197
	.short	201
	.short	200
	.short	200
	.short	201
	.short	198
	.short	202
	.short	203
	.short	204
	.short	205
	.short	204
	.short	203
	.short	204
	.short	206
	.short	202
	.short	206
	.short	204
	.short	207
	.short	208
	.short	202
	.short	206
	.short	204
	.short	205
	.short	209
	.short	204
	.short	209
	.short	207
	.short	210
	.short	209
	.short	205
	.short	206
	.short	211
	.short	208
	.short	211
	.short	206
	.short	207
	.short	212
	.short	208
	.short	211
	.short	209
	.short	210
	.short	213
	.short	209
	.short	213
	.short	207
	.short	214
	.short	213
	.short	210
	.short	211
	.short	215
	.short	212
	.short	215
	.short	211
	.short	207
	.short	216
	.short	212
	.short	215
	.short	213
	.short	214
	.short	217
	.short	213
	.short	217
	.short	207
	.short	216
	.short	217
	.short	214
	.short	218
	.short	215
	.short	207
	.short	215
	.short	218
	.short	216
	.short	217
	.short	218
	.short	207
	.short	217
	.short	216
	.short	218
	.short	219
	.short	220
	.short	221
	.short	219
	.short	222
	.short	220
	.short	221
	.short	223
	.short	219
	.short	223
	.short	224
	.short	219
	.short	223
	.short	221
	.short	225
	.short	222
	.short	219
	.short	226
	.short	219
	.short	224
	.short	226
	.short	226
	.short	227
	.short	222
	.short	225
	.short	228
	.short	223
	.short	228
	.short	224
	.short	223
	.short	228
	.short	225
	.short	229
	.short	227
	.short	226
	.short	230
	.short	226
	.short	224
	.short	230
	.short	230
	.short	231
	.short	227
	.short	229
	.short	232
	.short	228
	.short	232
	.short	224
	.short	228
	.short	232
	.short	229
	.short	233
	.short	231
	.short	230
	.short	234
	.short	230
	.short	224
	.short	234
	.short	234
	.short	233
	.short	231
	.short	235
	.short	224
	.short	232
	.short	234
	.short	224
	.short	235
	.short	233
	.short	234
	.short	235
	.short	233
	.short	235
	.short	232
	.short	236
	.short	97
	.short	98
	.short	236
	.short	99
	.short	97
	.short	98
	.short	237
	.short	236
	.short	237
	.short	98
	.short	100
	.short	238
	.short	100
	.short	99
	.short	99
	.short	236
	.short	238
	.short	239
	.short	236
	.short	237
	.short	239
	.short	238
	.short	236
	.short	100
	.short	240
	.short	237
	.short	100
	.short	238
	.short	240
	.short	238
	.short	239
	.short	241
	.short	241
	.short	240
	.short	238
	.short	237
	.short	242
	.short	239
	.short	241
	.short	239
	.short	242
	.short	242
	.short	237
	.short	240
	.short	242
	.short	243
	.short	241
	.short	240
	.short	241
	.short	243
	.short	240
	.short	243
	.short	242
	.short	244
	.short	103
	.short	101
	.short	244
	.short	101
	.short	102
	.short	103
	.short	244
	.short	245
	.short	245
	.short	104
	.short	103
	.short	246
	.short	102
	.short	104
	.short	102
	.short	246
	.short	244
	.short	247
	.short	245
	.short	244
	.short	247
	.short	244
	.short	246
	.short	104
	.short	248
	.short	246
	.short	104
	.short	245
	.short	248
	.short	246
	.short	249
	.short	247
	.short	249
	.short	246
	.short	248
	.short	245
	.short	247
	.short	250
	.short	250
	.short	248
	.short	245
	.short	247
	.short	249
	.short	251
	.short	251
	.short	250
	.short	247
	.short	248
	.short	250
	.short	251
	.short	248
	.short	251
	.short	249
	.short	252
	.short	253
	.short	254
	.short	255
	.short	252
	.short	254
	.short	255
	.short	254
	.short	253
	.short	253
	.short	252
	.short	256
	.short	252
	.short	255
	.short	257
	.short	257
	.short	256
	.short	252
	.short	258
	.short	253
	.short	256
	.short	253
	.short	258
	.short	255
	.short	256
	.short	257
	.short	259
	.short	256
	.short	259
	.short	258
	.short	260
	.short	257
	.short	255
	.short	260
	.short	259
	.short	257
	.short	261
	.short	255
	.short	258
	.short	255
	.short	261
	.short	260
	.short	259
	.short	260
	.short	262
	.short	262
	.short	260
	.short	261
	.short	263
	.short	258
	.short	259
	.short	259
	.short	262
	.short	263
	.short	261
	.short	263
	.short	262
	.short	258
	.short	263
	.short	261
	.short	264
	.short	265
	.short	266
	.short	264
	.short	266
	.short	267
	.short	265
	.short	267
	.short	266
	.short	265
	.short	264
	.short	268
	.short	267
	.short	269
	.short	264
	.short	270
	.short	268
	.short	264
	.short	264
	.short	269
	.short	270
	.short	267
	.short	265
	.short	271
	.short	268
	.short	272
	.short	265
	.short	272
	.short	271
	.short	265
	.short	269
	.short	267
	.short	273
	.short	271
	.short	273
	.short	267
	.short	272
	.short	268
	.short	274
	.short	271
	.short	272
	.short	275
	.short	274
	.short	275
	.short	272
	.short	276
	.short	274
	.short	268
	.short	268
	.short	270
	.short	276
	.short	275
	.short	274
	.short	276
	.short	273
	.short	271
	.short	277
	.short	275
	.short	277
	.short	271
	.short	273
	.short	278
	.short	269
	.short	278
	.short	273
	.short	277
	.short	269
	.short	278
	.short	279
	.short	279
	.short	270
	.short	269
	.short	277
	.short	279
	.short	278
	.short	277
	.short	275
	.short	280
	.short	276
	.short	280
	.short	275
	.short	279
	.short	277
	.short	280
	.short	270
	.short	279
	.short	281
	.short	281
	.short	276
	.short	270
	.short	280
	.short	281
	.short	279
	.short	280
	.short	276
	.short	281
	.short	282
	.short	283
	.short	284
	.short	282
	.short	284
	.short	285
	.short	283
	.short	285
	.short	284
	.short	283
	.short	282
	.short	286
	.short	285
	.short	287
	.short	282
	.short	288
	.short	286
	.short	282
	.short	282
	.short	287
	.short	288
	.short	285
	.short	283
	.short	289
	.short	286
	.short	290
	.short	283
	.short	290
	.short	289
	.short	283
	.short	287
	.short	285
	.short	291
	.short	289
	.short	291
	.short	285
	.short	290
	.short	286
	.short	292
	.short	289
	.short	290
	.short	293
	.short	292
	.short	293
	.short	290
	.short	294
	.short	292
	.short	286
	.short	286
	.short	288
	.short	294
	.short	293
	.short	292
	.short	294
	.short	291
	.short	289
	.short	295
	.short	293
	.short	295
	.short	289
	.short	291
	.short	296
	.short	287
	.short	296
	.short	291
	.short	295
	.short	287
	.short	296
	.short	297
	.short	297
	.short	288
	.short	287
	.short	295
	.short	297
	.short	296
	.short	295
	.short	293
	.short	298
	.short	294
	.short	298
	.short	293
	.short	297
	.short	295
	.short	298
	.short	288
	.short	297
	.short	299
	.short	299
	.short	294
	.short	288
	.short	298
	.short	294
	.short	299
	.short	298
	.short	299
	.short	297
	.short	300
	.short	301
	.short	302
	.short	300
	.short	302
	.short	303
	.short	301
	.short	303
	.short	302
	.short	301
	.short	300
	.short	304
	.short	303
	.short	305
	.short	300
	.short	306
	.short	304
	.short	300
	.short	300
	.short	305
	.short	306
	.short	303
	.short	301
	.short	307
	.short	304
	.short	308
	.short	301
	.short	308
	.short	307
	.short	301
	.short	305
	.short	303
	.short	309
	.short	307
	.short	309
	.short	303
	.short	308
	.short	304
	.short	310
	.short	307
	.short	308
	.short	311
	.short	310
	.short	311
	.short	308
	.short	312
	.short	310
	.short	304
	.short	304
	.short	306
	.short	312
	.short	311
	.short	310
	.short	312
	.short	309
	.short	307
	.short	313
	.short	311
	.short	313
	.short	307
	.short	309
	.short	314
	.short	305
	.short	314
	.short	309
	.short	313
	.short	305
	.short	314
	.short	315
	.short	315
	.short	306
	.short	305
	.short	313
	.short	315
	.short	314
	.short	313
	.short	311
	.short	316
	.short	312
	.short	316
	.short	311
	.short	315
	.short	313
	.short	316
	.short	306
	.short	315
	.short	317
	.short	317
	.short	312
	.short	306
	.short	316
	.short	317
	.short	315
	.short	316
	.short	312
	.short	317
	.short	318
	.short	319
	.short	320
	.short	318
	.short	320
	.short	321
	.short	319
	.short	321
	.short	320
	.short	319
	.short	318
	.short	322
	.short	321
	.short	323
	.short	318
	.short	324
	.short	322
	.short	318
	.short	318
	.short	323
	.short	324
	.short	321
	.short	319
	.short	325
	.short	322
	.short	326
	.short	319
	.short	326
	.short	325
	.short	319
	.short	323
	.short	321
	.short	327
	.short	325
	.short	327
	.short	321
	.short	326
	.short	322
	.short	328
	.short	325
	.short	326
	.short	329
	.short	328
	.short	329
	.short	326
	.short	330
	.short	328
	.short	322
	.short	322
	.short	324
	.short	330
	.short	329
	.short	328
	.short	330
	.short	327
	.short	325
	.short	331
	.short	329
	.short	331
	.short	325
	.short	327
	.short	332
	.short	323
	.short	332
	.short	327
	.short	331
	.short	323
	.short	332
	.short	333
	.short	333
	.short	324
	.short	323
	.short	331
	.short	333
	.short	332
	.short	331
	.short	329
	.short	334
	.short	330
	.short	334
	.short	329
	.short	333
	.short	331
	.short	334
	.short	324
	.short	333
	.short	335
	.short	335
	.short	330
	.short	324
	.short	334
	.short	335
	.short	333
	.short	334
	.short	330
	.short	335
	.short	336
	.short	337
	.short	338
	.short	338
	.short	339
	.short	336
	.short	337
	.short	336
	.short	340
	.short	340
	.short	336
	.short	339
	.short	337
	.short	341
	.short	338
	.short	339
	.short	338
	.short	341
	.short	339
	.short	342
	.short	340
	.short	337
	.short	340
	.short	342
	.short	341
	.short	343
	.short	339
	.short	342
	.short	339
	.short	343
	.short	342
	.short	344
	.short	337
	.short	341
	.short	337
	.short	344
	.short	343
	.short	345
	.short	342
	.short	344
	.short	342
	.short	345
	.short	343
	.short	341
	.short	346
	.short	345
	.short	343
	.short	346
	.short	345
	.short	347
	.short	344
	.short	341
	.short	344
	.short	347
	.short	346
	.short	347
	.short	345
	.short	347
	.short	346
	.short	341
	.type	LUT_InvZ, %object
	.size	LUT_InvZ, 10200
LUT_InvZ:
	.word	4505064
	.word	2252532
	.word	1501688
	.word	1126266
	.word	901012
	.word	750844
	.word	643580
	.word	563133
	.word	500562
	.word	450506
	.word	409551
	.word	375422
	.word	346543
	.word	321790
	.word	300337
	.word	281566
	.word	265003
	.word	250281
	.word	237108
	.word	225253
	.word	214526
	.word	204775
	.word	195872
	.word	187711
	.word	180202
	.word	173271
	.word	166854
	.word	160895
	.word	155347
	.word	150168
	.word	145324
	.word	140783
	.word	136517
	.word	132501
	.word	128716
	.word	125140
	.word	121758
	.word	118554
	.word	115514
	.word	112626
	.word	109879
	.word	107263
	.word	104768
	.word	102387
	.word	100112
	.word	97936
	.word	95852
	.word	93855
	.word	91940
	.word	90101
	.word	88334
	.word	86635
	.word	85001
	.word	83427
	.word	81910
	.word	80447
	.word	79036
	.word	77673
	.word	76357
	.word	75084
	.word	73853
	.word	72662
	.word	71508
	.word	70391
	.word	69308
	.word	68258
	.word	67239
	.word	66250
	.word	65290
	.word	64358
	.word	63451
	.word	62570
	.word	61713
	.word	60879
	.word	60067
	.word	59277
	.word	58507
	.word	57757
	.word	57026
	.word	56313
	.word	55618
	.word	54939
	.word	54277
	.word	53631
	.word	53000
	.word	52384
	.word	51782
	.word	51193
	.word	50618
	.word	50056
	.word	49506
	.word	48968
	.word	48441
	.word	47926
	.word	47421
	.word	46927
	.word	46443
	.word	45970
	.word	45505
	.word	45050
	.word	44604
	.word	44167
	.word	43738
	.word	43317
	.word	42905
	.word	42500
	.word	42103
	.word	41713
	.word	41330
	.word	40955
	.word	40586
	.word	40223
	.word	39867
	.word	39518
	.word	39174
	.word	38836
	.word	38504
	.word	38178
	.word	37857
	.word	37542
	.word	37231
	.word	36926
	.word	36626
	.word	36331
	.word	36040
	.word	35754
	.word	35472
	.word	35195
	.word	34922
	.word	34654
	.word	34389
	.word	34129
	.word	33872
	.word	33619
	.word	33370
	.word	33125
	.word	32883
	.word	32645
	.word	32410
	.word	32179
	.word	31950
	.word	31725
	.word	31503
	.word	31285
	.word	31069
	.word	30856
	.word	30646
	.word	30439
	.word	30235
	.word	30033
	.word	29834
	.word	29638
	.word	29444
	.word	29253
	.word	29064
	.word	28878
	.word	28694
	.word	28513
	.word	28333
	.word	28156
	.word	27981
	.word	27809
	.word	27638
	.word	27469
	.word	27303
	.word	27138
	.word	26976
	.word	26815
	.word	26657
	.word	26500
	.word	26345
	.word	26192
	.word	26040
	.word	25891
	.word	25743
	.word	25596
	.word	25452
	.word	25309
	.word	25167
	.word	25028
	.word	24889
	.word	24753
	.word	24617
	.word	24484
	.word	24351
	.word	24220
	.word	24091
	.word	23963
	.word	23836
	.word	23710
	.word	23586
	.word	23463
	.word	23342
	.word	23221
	.word	23102
	.word	22985
	.word	22868
	.word	22752
	.word	22638
	.word	22525
	.word	22413
	.word	22302
	.word	22192
	.word	22083
	.word	21975
	.word	21869
	.word	21763
	.word	21658
	.word	21555
	.word	21452
	.word	21351
	.word	21250
	.word	21150
	.word	21051
	.word	20953
	.word	20856
	.word	20760
	.word	20665
	.word	20571
	.word	20477
	.word	20384
	.word	20293
	.word	20202
	.word	20111
	.word	20022
	.word	19933
	.word	19846
	.word	19759
	.word	19672
	.word	19587
	.word	19502
	.word	19418
	.word	19335
	.word	19252
	.word	19170
	.word	19089
	.word	19008
	.word	18928
	.word	18849
	.word	18771
	.word	18693
	.word	18615
	.word	18539
	.word	18463
	.word	18388
	.word	18313
	.word	18239
	.word	18165
	.word	18092
	.word	18020
	.word	17948
	.word	17877
	.word	17806
	.word	17736
	.word	17666
	.word	17597
	.word	17529
	.word	17461
	.word	17394
	.word	17327
	.word	17260
	.word	17194
	.word	17129
	.word	17064
	.word	17000
	.word	16936
	.word	16872
	.word	16809
	.word	16747
	.word	16685
	.word	16623
	.word	16562
	.word	16502
	.word	16441
	.word	16382
	.word	16322
	.word	16263
	.word	16205
	.word	16147
	.word	16089
	.word	16032
	.word	15975
	.word	15918
	.word	15862
	.word	15807
	.word	15751
	.word	15697
	.word	15642
	.word	15588
	.word	15534
	.word	15481
	.word	15428
	.word	15375
	.word	15323
	.word	15271
	.word	15219
	.word	15168
	.word	15117
	.word	15067
	.word	15016
	.word	14966
	.word	14917
	.word	14868
	.word	14819
	.word	14770
	.word	14722
	.word	14674
	.word	14626
	.word	14579
	.word	14532
	.word	14485
	.word	14439
	.word	14393
	.word	14347
	.word	14301
	.word	14256
	.word	14211
	.word	14166
	.word	14122
	.word	14078
	.word	14034
	.word	13990
	.word	13947
	.word	13904
	.word	13861
	.word	13819
	.word	13776
	.word	13734
	.word	13693
	.word	13651
	.word	13610
	.word	13569
	.word	13528
	.word	13488
	.word	13447
	.word	13407
	.word	13368
	.word	13328
	.word	13289
	.word	13250
	.word	13211
	.word	13172
	.word	13134
	.word	13096
	.word	13058
	.word	13020
	.word	12982
	.word	12945
	.word	12908
	.word	12871
	.word	12834
	.word	12798
	.word	12762
	.word	12726
	.word	12690
	.word	12654
	.word	12619
	.word	12583
	.word	12548
	.word	12514
	.word	12479
	.word	12444
	.word	12410
	.word	12376
	.word	12342
	.word	12308
	.word	12275
	.word	12242
	.word	12208
	.word	12175
	.word	12143
	.word	12110
	.word	12077
	.word	12045
	.word	12013
	.word	11981
	.word	11949
	.word	11918
	.word	11886
	.word	11855
	.word	11824
	.word	11793
	.word	11762
	.word	11731
	.word	11701
	.word	11671
	.word	11640
	.word	11610
	.word	11581
	.word	11551
	.word	11521
	.word	11492
	.word	11463
	.word	11434
	.word	11405
	.word	11376
	.word	11347
	.word	11319
	.word	11290
	.word	11262
	.word	11234
	.word	11206
	.word	11178
	.word	11151
	.word	11123
	.word	11096
	.word	11068
	.word	11041
	.word	11014
	.word	10987
	.word	10961
	.word	10934
	.word	10908
	.word	10881
	.word	10855
	.word	10829
	.word	10803
	.word	10777
	.word	10751
	.word	10726
	.word	10700
	.word	10675
	.word	10650
	.word	10625
	.word	10600
	.word	10575
	.word	10550
	.word	10525
	.word	10501
	.word	10476
	.word	10452
	.word	10428
	.word	10404
	.word	10380
	.word	10356
	.word	10332
	.word	10309
	.word	10285
	.word	10262
	.word	10238
	.word	10215
	.word	10192
	.word	10169
	.word	10146
	.word	10123
	.word	10101
	.word	10078
	.word	10055
	.word	10033
	.word	10011
	.word	9989
	.word	9966
	.word	9944
	.word	9923
	.word	9901
	.word	9879
	.word	9857
	.word	9836
	.word	9814
	.word	9793
	.word	9772
	.word	9751
	.word	9730
	.word	9709
	.word	9688
	.word	9667
	.word	9646
	.word	9626
	.word	9605
	.word	9585
	.word	9564
	.word	9544
	.word	9524
	.word	9504
	.word	9484
	.word	9464
	.word	9444
	.word	9424
	.word	9405
	.word	9385
	.word	9366
	.word	9346
	.word	9327
	.word	9307
	.word	9288
	.word	9269
	.word	9250
	.word	9231
	.word	9212
	.word	9194
	.word	9175
	.word	9156
	.word	9138
	.word	9119
	.word	9101
	.word	9082
	.word	9064
	.word	9046
	.word	9028
	.word	9010
	.word	8992
	.word	8974
	.word	8956
	.word	8938
	.word	8920
	.word	8903
	.word	8885
	.word	8868
	.word	8850
	.word	8833
	.word	8816
	.word	8798
	.word	8781
	.word	8764
	.word	8747
	.word	8730
	.word	8713
	.word	8697
	.word	8680
	.word	8663
	.word	8646
	.word	8630
	.word	8613
	.word	8597
	.word	8581
	.word	8564
	.word	8548
	.word	8532
	.word	8516
	.word	8500
	.word	8484
	.word	8468
	.word	8452
	.word	8436
	.word	8420
	.word	8404
	.word	8389
	.word	8373
	.word	8358
	.word	8342
	.word	8327
	.word	8311
	.word	8296
	.word	8281
	.word	8266
	.word	8251
	.word	8235
	.word	8220
	.word	8205
	.word	8191
	.word	8176
	.word	8161
	.word	8146
	.word	8131
	.word	8117
	.word	8102
	.word	8088
	.word	8073
	.word	8059
	.word	8044
	.word	8030
	.word	8016
	.word	8001
	.word	7987
	.word	7973
	.word	7959
	.word	7945
	.word	7931
	.word	7917
	.word	7903
	.word	7889
	.word	7875
	.word	7862
	.word	7848
	.word	7834
	.word	7821
	.word	7807
	.word	7794
	.word	7780
	.word	7767
	.word	7753
	.word	7740
	.word	7727
	.word	7714
	.word	7700
	.word	7687
	.word	7674
	.word	7661
	.word	7648
	.word	7635
	.word	7622
	.word	7609
	.word	7597
	.word	7584
	.word	7571
	.word	7558
	.word	7546
	.word	7533
	.word	7520
	.word	7508
	.word	7495
	.word	7483
	.word	7471
	.word	7458
	.word	7446
	.word	7434
	.word	7421
	.word	7409
	.word	7397
	.word	7385
	.word	7373
	.word	7361
	.word	7349
	.word	7337
	.word	7325
	.word	7313
	.word	7301
	.word	7289
	.word	7277
	.word	7266
	.word	7254
	.word	7242
	.word	7231
	.word	7219
	.word	7208
	.word	7196
	.word	7185
	.word	7173
	.word	7162
	.word	7150
	.word	7139
	.word	7128
	.word	7117
	.word	7105
	.word	7094
	.word	7083
	.word	7072
	.word	7061
	.word	7050
	.word	7039
	.word	7028
	.word	7017
	.word	7006
	.word	6995
	.word	6984
	.word	6973
	.word	6963
	.word	6952
	.word	6941
	.word	6930
	.word	6920
	.word	6909
	.word	6899
	.word	6888
	.word	6877
	.word	6867
	.word	6857
	.word	6846
	.word	6836
	.word	6825
	.word	6815
	.word	6805
	.word	6794
	.word	6784
	.word	6774
	.word	6764
	.word	6754
	.word	6744
	.word	6734
	.word	6723
	.word	6713
	.word	6703
	.word	6694
	.word	6684
	.word	6674
	.word	6664
	.word	6654
	.word	6644
	.word	6634
	.word	6625
	.word	6615
	.word	6605
	.word	6595
	.word	6586
	.word	6576
	.word	6567
	.word	6557
	.word	6548
	.word	6538
	.word	6529
	.word	6519
	.word	6510
	.word	6500
	.word	6491
	.word	6482
	.word	6472
	.word	6463
	.word	6454
	.word	6445
	.word	6435
	.word	6426
	.word	6417
	.word	6408
	.word	6399
	.word	6390
	.word	6381
	.word	6372
	.word	6363
	.word	6354
	.word	6345
	.word	6336
	.word	6327
	.word	6318
	.word	6309
	.word	6300
	.word	6291
	.word	6283
	.word	6274
	.word	6265
	.word	6257
	.word	6248
	.word	6239
	.word	6231
	.word	6222
	.word	6213
	.word	6205
	.word	6196
	.word	6188
	.word	6179
	.word	6171
	.word	6162
	.word	6154
	.word	6146
	.word	6137
	.word	6129
	.word	6121
	.word	6112
	.word	6104
	.word	6096
	.word	6087
	.word	6079
	.word	6071
	.word	6063
	.word	6055
	.word	6047
	.word	6038
	.word	6030
	.word	6022
	.word	6014
	.word	6006
	.word	5998
	.word	5990
	.word	5982
	.word	5974
	.word	5966
	.word	5959
	.word	5951
	.word	5943
	.word	5935
	.word	5927
	.word	5919
	.word	5912
	.word	5904
	.word	5896
	.word	5888
	.word	5881
	.word	5873
	.word	5865
	.word	5858
	.word	5850
	.word	5843
	.word	5835
	.word	5828
	.word	5820
	.word	5812
	.word	5805
	.word	5798
	.word	5790
	.word	5783
	.word	5775
	.word	5768
	.word	5760
	.word	5753
	.word	5746
	.word	5738
	.word	5731
	.word	5724
	.word	5717
	.word	5709
	.word	5702
	.word	5695
	.word	5688
	.word	5681
	.word	5673
	.word	5666
	.word	5659
	.word	5652
	.word	5645
	.word	5638
	.word	5631
	.word	5624
	.word	5617
	.word	5610
	.word	5603
	.word	5596
	.word	5589
	.word	5582
	.word	5575
	.word	5568
	.word	5561
	.word	5554
	.word	5548
	.word	5541
	.word	5534
	.word	5527
	.word	5520
	.word	5514
	.word	5507
	.word	5500
	.word	5493
	.word	5487
	.word	5480
	.word	5473
	.word	5467
	.word	5460
	.word	5454
	.word	5447
	.word	5440
	.word	5434
	.word	5427
	.word	5421
	.word	5414
	.word	5408
	.word	5401
	.word	5395
	.word	5388
	.word	5382
	.word	5375
	.word	5369
	.word	5363
	.word	5356
	.word	5350
	.word	5344
	.word	5337
	.word	5331
	.word	5325
	.word	5318
	.word	5312
	.word	5306
	.word	5300
	.word	5293
	.word	5287
	.word	5281
	.word	5275
	.word	5269
	.word	5262
	.word	5256
	.word	5250
	.word	5244
	.word	5238
	.word	5232
	.word	5226
	.word	5220
	.word	5214
	.word	5208
	.word	5202
	.word	5196
	.word	5190
	.word	5184
	.word	5178
	.word	5172
	.word	5166
	.word	5160
	.word	5154
	.word	5148
	.word	5142
	.word	5136
	.word	5131
	.word	5125
	.word	5119
	.word	5113
	.word	5107
	.word	5101
	.word	5096
	.word	5090
	.word	5084
	.word	5078
	.word	5073
	.word	5067
	.word	5061
	.word	5056
	.word	5050
	.word	5044
	.word	5039
	.word	5033
	.word	5027
	.word	5022
	.word	5016
	.word	5011
	.word	5005
	.word	5000
	.word	4994
	.word	4988
	.word	4983
	.word	4977
	.word	4972
	.word	4966
	.word	4961
	.word	4956
	.word	4950
	.word	4945
	.word	4939
	.word	4934
	.word	4928
	.word	4923
	.word	4918
	.word	4912
	.word	4907
	.word	4902
	.word	4896
	.word	4891
	.word	4886
	.word	4880
	.word	4875
	.word	4870
	.word	4865
	.word	4859
	.word	4854
	.word	4849
	.word	4844
	.word	4838
	.word	4833
	.word	4828
	.word	4823
	.word	4818
	.word	4813
	.word	4807
	.word	4802
	.word	4797
	.word	4792
	.word	4787
	.word	4782
	.word	4777
	.word	4772
	.word	4767
	.word	4762
	.word	4757
	.word	4752
	.word	4747
	.word	4742
	.word	4737
	.word	4732
	.word	4727
	.word	4722
	.word	4717
	.word	4712
	.word	4707
	.word	4702
	.word	4697
	.word	4692
	.word	4687
	.word	4683
	.word	4678
	.word	4673
	.word	4668
	.word	4663
	.word	4658
	.word	4653
	.word	4649
	.word	4644
	.word	4639
	.word	4634
	.word	4630
	.word	4625
	.word	4620
	.word	4615
	.word	4611
	.word	4606
	.word	4601
	.word	4597
	.word	4592
	.word	4587
	.word	4582
	.word	4578
	.word	4573
	.word	4569
	.word	4564
	.word	4559
	.word	4555
	.word	4550
	.word	4545
	.word	4541
	.word	4536
	.word	4532
	.word	4527
	.word	4523
	.word	4518
	.word	4514
	.word	4509
	.word	4505
	.word	4500
	.word	4496
	.word	4491
	.word	4487
	.word	4482
	.word	4478
	.word	4473
	.word	4469
	.word	4464
	.word	4460
	.word	4456
	.word	4451
	.word	4447
	.word	4442
	.word	4438
	.word	4434
	.word	4429
	.word	4425
	.word	4421
	.word	4416
	.word	4412
	.word	4408
	.word	4403
	.word	4399
	.word	4395
	.word	4390
	.word	4386
	.word	4382
	.word	4378
	.word	4373
	.word	4369
	.word	4365
	.word	4361
	.word	4356
	.word	4352
	.word	4348
	.word	4344
	.word	4340
	.word	4335
	.word	4331
	.word	4327
	.word	4323
	.word	4319
	.word	4315
	.word	4311
	.word	4306
	.word	4302
	.word	4298
	.word	4294
	.word	4290
	.word	4286
	.word	4282
	.word	4278
	.word	4274
	.word	4270
	.word	4266
	.word	4262
	.word	4258
	.word	4254
	.word	4250
	.word	4246
	.word	4242
	.word	4238
	.word	4234
	.word	4230
	.word	4226
	.word	4222
	.word	4218
	.word	4214
	.word	4210
	.word	4206
	.word	4202
	.word	4198
	.word	4194
	.word	4190
	.word	4186
	.word	4182
	.word	4179
	.word	4175
	.word	4171
	.word	4167
	.word	4163
	.word	4159
	.word	4155
	.word	4152
	.word	4148
	.word	4144
	.word	4140
	.word	4136
	.word	4133
	.word	4129
	.word	4125
	.word	4121
	.word	4117
	.word	4114
	.word	4110
	.word	4106
	.word	4102
	.word	4099
	.word	4095
	.word	4091
	.word	4088
	.word	4084
	.word	4080
	.word	4076
	.word	4073
	.word	4069
	.word	4065
	.word	4062
	.word	4058
	.word	4054
	.word	4051
	.word	4047
	.word	4044
	.word	4040
	.word	4036
	.word	4033
	.word	4029
	.word	4025
	.word	4022
	.word	4018
	.word	4015
	.word	4011
	.word	4008
	.word	4004
	.word	4000
	.word	3997
	.word	3993
	.word	3990
	.word	3986
	.word	3983
	.word	3979
	.word	3976
	.word	3972
	.word	3969
	.word	3965
	.word	3962
	.word	3958
	.word	3955
	.word	3951
	.word	3948
	.word	3944
	.word	3941
	.word	3937
	.word	3934
	.word	3931
	.word	3927
	.word	3924
	.word	3920
	.word	3917
	.word	3914
	.word	3910
	.word	3907
	.word	3903
	.word	3900
	.word	3897
	.word	3893
	.word	3890
	.word	3887
	.word	3883
	.word	3880
	.word	3876
	.word	3873
	.word	3870
	.word	3867
	.word	3863
	.word	3860
	.word	3857
	.word	3853
	.word	3850
	.word	3847
	.word	3843
	.word	3840
	.word	3837
	.word	3834
	.word	3830
	.word	3827
	.word	3824
	.word	3821
	.word	3817
	.word	3814
	.word	3811
	.word	3808
	.word	3804
	.word	3801
	.word	3798
	.word	3795
	.word	3792
	.word	3788
	.word	3785
	.word	3782
	.word	3779
	.word	3776
	.word	3773
	.word	3769
	.word	3766
	.word	3763
	.word	3760
	.word	3757
	.word	3754
	.word	3751
	.word	3747
	.word	3744
	.word	3741
	.word	3738
	.word	3735
	.word	3732
	.word	3729
	.word	3726
	.word	3723
	.word	3720
	.word	3717
	.word	3713
	.word	3710
	.word	3707
	.word	3704
	.word	3701
	.word	3698
	.word	3695
	.word	3692
	.word	3689
	.word	3686
	.word	3683
	.word	3680
	.word	3677
	.word	3674
	.word	3671
	.word	3668
	.word	3665
	.word	3662
	.word	3659
	.word	3656
	.word	3653
	.word	3650
	.word	3647
	.word	3644
	.word	3641
	.word	3638
	.word	3636
	.word	3633
	.word	3630
	.word	3627
	.word	3624
	.word	3621
	.word	3618
	.word	3615
	.word	3612
	.word	3609
	.word	3606
	.word	3604
	.word	3601
	.word	3598
	.word	3595
	.word	3592
	.word	3589
	.word	3586
	.word	3583
	.word	3581
	.word	3578
	.word	3575
	.word	3572
	.word	3569
	.word	3566
	.word	3564
	.word	3561
	.word	3558
	.word	3555
	.word	3552
	.word	3550
	.word	3547
	.word	3544
	.word	3541
	.word	3538
	.word	3536
	.word	3533
	.word	3530
	.word	3527
	.word	3525
	.word	3522
	.word	3519
	.word	3516
	.word	3514
	.word	3511
	.word	3508
	.word	3505
	.word	3503
	.word	3500
	.word	3497
	.word	3495
	.word	3492
	.word	3489
	.word	3486
	.word	3484
	.word	3481
	.word	3478
	.word	3476
	.word	3473
	.word	3470
	.word	3468
	.word	3465
	.word	3462
	.word	3460
	.word	3457
	.word	3454
	.word	3452
	.word	3449
	.word	3446
	.word	3444
	.word	3441
	.word	3438
	.word	3436
	.word	3433
	.word	3431
	.word	3428
	.word	3425
	.word	3423
	.word	3420
	.word	3418
	.word	3415
	.word	3412
	.word	3410
	.word	3407
	.word	3405
	.word	3402
	.word	3400
	.word	3397
	.word	3394
	.word	3392
	.word	3389
	.word	3387
	.word	3384
	.word	3382
	.word	3379
	.word	3377
	.word	3374
	.word	3372
	.word	3369
	.word	3367
	.word	3364
	.word	3361
	.word	3359
	.word	3356
	.word	3354
	.word	3351
	.word	3349
	.word	3347
	.word	3344
	.word	3342
	.word	3339
	.word	3337
	.word	3334
	.word	3332
	.word	3329
	.word	3327
	.word	3324
	.word	3322
	.word	3319
	.word	3317
	.word	3314
	.word	3312
	.word	3310
	.word	3307
	.word	3305
	.word	3302
	.word	3300
	.word	3297
	.word	3295
	.word	3293
	.word	3290
	.word	3288
	.word	3285
	.word	3283
	.word	3281
	.word	3278
	.word	3276
	.word	3274
	.word	3271
	.word	3269
	.word	3266
	.word	3264
	.word	3262
	.word	3259
	.word	3257
	.word	3255
	.word	3252
	.word	3250
	.word	3248
	.word	3245
	.word	3243
	.word	3241
	.word	3238
	.word	3236
	.word	3234
	.word	3231
	.word	3229
	.word	3227
	.word	3224
	.word	3222
	.word	3220
	.word	3217
	.word	3215
	.word	3213
	.word	3211
	.word	3208
	.word	3206
	.word	3204
	.word	3201
	.word	3199
	.word	3197
	.word	3195
	.word	3192
	.word	3190
	.word	3188
	.word	3186
	.word	3183
	.word	3181
	.word	3179
	.word	3177
	.word	3174
	.word	3172
	.word	3170
	.word	3168
	.word	3165
	.word	3163
	.word	3161
	.word	3159
	.word	3157
	.word	3154
	.word	3152
	.word	3150
	.word	3148
	.word	3145
	.word	3143
	.word	3141
	.word	3139
	.word	3137
	.word	3135
	.word	3132
	.word	3130
	.word	3128
	.word	3126
	.word	3124
	.word	3122
	.word	3119
	.word	3117
	.word	3115
	.word	3113
	.word	3111
	.word	3109
	.word	3106
	.word	3104
	.word	3102
	.word	3100
	.word	3098
	.word	3096
	.word	3094
	.word	3092
	.word	3089
	.word	3087
	.word	3085
	.word	3083
	.word	3081
	.word	3079
	.word	3077
	.word	3075
	.word	3073
	.word	3070
	.word	3068
	.word	3066
	.word	3064
	.word	3062
	.word	3060
	.word	3058
	.word	3056
	.word	3054
	.word	3052
	.word	3050
	.word	3048
	.word	3046
	.word	3043
	.word	3041
	.word	3039
	.word	3037
	.word	3035
	.word	3033
	.word	3031
	.word	3029
	.word	3027
	.word	3025
	.word	3023
	.word	3021
	.word	3019
	.word	3017
	.word	3015
	.word	3013
	.word	3011
	.word	3009
	.word	3007
	.word	3005
	.word	3003
	.word	3001
	.word	2999
	.word	2997
	.word	2995
	.word	2993
	.word	2991
	.word	2989
	.word	2987
	.word	2985
	.word	2983
	.word	2981
	.word	2979
	.word	2977
	.word	2975
	.word	2973
	.word	2971
	.word	2969
	.word	2967
	.word	2965
	.word	2963
	.word	2961
	.word	2959
	.word	2958
	.word	2956
	.word	2954
	.word	2952
	.word	2950
	.word	2948
	.word	2946
	.word	2944
	.word	2942
	.word	2940
	.word	2938
	.word	2936
	.word	2934
	.word	2932
	.word	2931
	.word	2929
	.word	2927
	.word	2925
	.word	2923
	.word	2921
	.word	2919
	.word	2917
	.word	2915
	.word	2914
	.word	2912
	.word	2910
	.word	2908
	.word	2906
	.word	2904
	.word	2902
	.word	2900
	.word	2899
	.word	2897
	.word	2895
	.word	2893
	.word	2891
	.word	2889
	.word	2887
	.word	2886
	.word	2884
	.word	2882
	.word	2880
	.word	2878
	.word	2876
	.word	2874
	.word	2873
	.word	2871
	.word	2869
	.word	2867
	.word	2865
	.word	2863
	.word	2862
	.word	2860
	.word	2858
	.word	2856
	.word	2854
	.word	2853
	.word	2851
	.word	2849
	.word	2847
	.word	2845
	.word	2844
	.word	2842
	.word	2840
	.word	2838
	.word	2836
	.word	2835
	.word	2833
	.word	2831
	.word	2829
	.word	2828
	.word	2826
	.word	2824
	.word	2822
	.word	2820
	.word	2819
	.word	2817
	.word	2815
	.word	2813
	.word	2812
	.word	2810
	.word	2808
	.word	2806
	.word	2805
	.word	2803
	.word	2801
	.word	2799
	.word	2798
	.word	2796
	.word	2794
	.word	2792
	.word	2791
	.word	2789
	.word	2787
	.word	2786
	.word	2784
	.word	2782
	.word	2780
	.word	2779
	.word	2777
	.word	2775
	.word	2774
	.word	2772
	.word	2770
	.word	2768
	.word	2767
	.word	2765
	.word	2763
	.word	2762
	.word	2760
	.word	2758
	.word	2757
	.word	2755
	.word	2753
	.word	2752
	.word	2750
	.word	2748
	.word	2746
	.word	2745
	.word	2743
	.word	2741
	.word	2740
	.word	2738
	.word	2736
	.word	2735
	.word	2733
	.word	2731
	.word	2730
	.word	2728
	.word	2727
	.word	2725
	.word	2723
	.word	2722
	.word	2720
	.word	2718
	.word	2717
	.word	2715
	.word	2713
	.word	2712
	.word	2710
	.word	2708
	.word	2707
	.word	2705
	.word	2704
	.word	2702
	.word	2700
	.word	2699
	.word	2697
	.word	2696
	.word	2694
	.word	2692
	.word	2691
	.word	2689
	.word	2687
	.word	2686
	.word	2684
	.word	2683
	.word	2681
	.word	2679
	.word	2678
	.word	2676
	.word	2675
	.word	2673
	.word	2672
	.word	2670
	.word	2668
	.word	2667
	.word	2665
	.word	2664
	.word	2662
	.word	2660
	.word	2659
	.word	2657
	.word	2656
	.word	2654
	.word	2653
	.word	2651
	.word	2650
	.word	2648
	.word	2646
	.word	2645
	.word	2643
	.word	2642
	.word	2640
	.word	2639
	.word	2637
	.word	2636
	.word	2634
	.word	2633
	.word	2631
	.word	2629
	.word	2628
	.word	2626
	.word	2625
	.word	2623
	.word	2622
	.word	2620
	.word	2619
	.word	2617
	.word	2616
	.word	2614
	.word	2613
	.word	2611
	.word	2610
	.word	2608
	.word	2607
	.word	2605
	.word	2604
	.word	2602
	.word	2601
	.word	2599
	.word	2598
	.word	2596
	.word	2595
	.word	2593
	.word	2592
	.word	2590
	.word	2589
	.word	2587
	.word	2586
	.word	2584
	.word	2583
	.word	2581
	.word	2580
	.word	2578
	.word	2577
	.word	2575
	.word	2574
	.word	2572
	.word	2571
	.word	2569
	.word	2568
	.word	2566
	.word	2565
	.word	2564
	.word	2562
	.word	2561
	.word	2559
	.word	2558
	.word	2556
	.word	2555
	.word	2553
	.word	2552
	.word	2550
	.word	2549
	.word	2548
	.word	2546
	.word	2545
	.word	2543
	.word	2542
	.word	2540
	.word	2539
	.word	2538
	.word	2536
	.word	2535
	.word	2533
	.word	2532
	.word	2530
	.word	2529
	.word	2528
	.word	2526
	.word	2525
	.word	2523
	.word	2522
	.word	2521
	.word	2519
	.word	2518
	.word	2516
	.word	2515
	.word	2513
	.word	2512
	.word	2511
	.word	2509
	.word	2508
	.word	2506
	.word	2505
	.word	2504
	.word	2502
	.word	2501
	.word	2500
	.word	2498
	.word	2497
	.word	2495
	.word	2494
	.word	2493
	.word	2491
	.word	2490
	.word	2488
	.word	2487
	.word	2486
	.word	2484
	.word	2483
	.word	2482
	.word	2480
	.word	2479
	.word	2478
	.word	2476
	.word	2475
	.word	2473
	.word	2472
	.word	2471
	.word	2469
	.word	2468
	.word	2467
	.word	2465
	.word	2464
	.word	2463
	.word	2461
	.word	2460
	.word	2459
	.word	2457
	.word	2456
	.word	2455
	.word	2453
	.word	2452
	.word	2451
	.word	2449
	.word	2448
	.word	2447
	.word	2445
	.word	2444
	.word	2443
	.word	2441
	.word	2440
	.word	2439
	.word	2437
	.word	2436
	.word	2435
	.word	2433
	.word	2432
	.word	2431
	.word	2429
	.word	2428
	.word	2427
	.word	2425
	.word	2424
	.word	2423
	.word	2422
	.word	2420
	.word	2419
	.word	2418
	.word	2416
	.word	2415
	.word	2414
	.word	2412
	.word	2411
	.word	2410
	.word	2409
	.word	2407
	.word	2406
	.word	2405
	.word	2403
	.word	2402
	.word	2401
	.word	2400
	.word	2398
	.word	2397
	.word	2396
	.word	2395
	.word	2393
	.word	2392
	.word	2391
	.word	2389
	.word	2388
	.word	2387
	.word	2386
	.word	2384
	.word	2383
	.word	2382
	.word	2381
	.word	2379
	.word	2378
	.word	2377
	.word	2376
	.word	2374
	.word	2373
	.word	2372
	.word	2371
	.word	2369
	.word	2368
	.word	2367
	.word	2366
	.word	2364
	.word	2363
	.word	2362
	.word	2361
	.word	2359
	.word	2358
	.word	2357
	.word	2356
	.word	2354
	.word	2353
	.word	2352
	.word	2351
	.word	2350
	.word	2348
	.word	2347
	.word	2346
	.word	2345
	.word	2343
	.word	2342
	.word	2341
	.word	2340
	.word	2339
	.word	2337
	.word	2336
	.word	2335
	.word	2334
	.word	2333
	.word	2331
	.word	2330
	.word	2329
	.word	2328
	.word	2326
	.word	2325
	.word	2324
	.word	2323
	.word	2322
	.word	2321
	.word	2319
	.word	2318
	.word	2317
	.word	2316
	.word	2315
	.word	2313
	.word	2312
	.word	2311
	.word	2310
	.word	2309
	.word	2307
	.word	2306
	.word	2305
	.word	2304
	.word	2303
	.word	2302
	.word	2300
	.word	2299
	.word	2298
	.word	2297
	.word	2296
	.word	2294
	.word	2293
	.word	2292
	.word	2291
	.word	2290
	.word	2289
	.word	2287
	.word	2286
	.word	2285
	.word	2284
	.word	2283
	.word	2282
	.word	2281
	.word	2279
	.word	2278
	.word	2277
	.word	2276
	.word	2275
	.word	2274
	.word	2272
	.word	2271
	.word	2270
	.word	2269
	.word	2268
	.word	2267
	.word	2266
	.word	2264
	.word	2263
	.word	2262
	.word	2261
	.word	2260
	.word	2259
	.word	2258
	.word	2257
	.word	2255
	.word	2254
	.word	2253
	.word	2252
	.word	2251
	.word	2250
	.word	2249
	.word	2248
	.word	2246
	.word	2245
	.word	2244
	.word	2243
	.word	2242
	.word	2241
	.word	2240
	.word	2239
	.word	2237
	.word	2236
	.word	2235
	.word	2234
	.word	2233
	.word	2232
	.word	2231
	.word	2230
	.word	2229
	.word	2228
	.word	2226
	.word	2225
	.word	2224
	.word	2223
	.word	2222
	.word	2221
	.word	2220
	.word	2219
	.word	2218
	.word	2217
	.word	2215
	.word	2214
	.word	2213
	.word	2212
	.word	2211
	.word	2210
	.word	2209
	.word	2208
	.word	2207
	.word	2206
	.word	2205
	.word	2204
	.word	2202
	.word	2201
	.word	2200
	.word	2199
	.word	2198
	.word	2197
	.word	2196
	.word	2195
	.word	2194
	.word	2193
	.word	2192
	.word	2191
	.word	2190
	.word	2189
	.word	2187
	.word	2186
	.word	2185
	.word	2184
	.word	2183
	.word	2182
	.word	2181
	.word	2180
	.word	2179
	.word	2178
	.word	2177
	.word	2176
	.word	2175
	.word	2174
	.word	2173
	.word	2172
	.word	2171
	.word	2170
	.word	2169
	.word	2167
	.word	2166
	.word	2165
	.word	2164
	.word	2163
	.word	2162
	.word	2161
	.word	2160
	.word	2159
	.word	2158
	.word	2157
	.word	2156
	.word	2155
	.word	2154
	.word	2153
	.word	2152
	.word	2151
	.word	2150
	.word	2149
	.word	2148
	.word	2147
	.word	2146
	.word	2145
	.word	2144
	.word	2143
	.word	2142
	.word	2141
	.word	2140
	.word	2139
	.word	2138
	.word	2137
	.word	2136
	.word	2135
	.word	2134
	.word	2133
	.word	2132
	.word	2131
	.word	2130
	.word	2129
	.word	2128
	.word	2127
	.word	2126
	.word	2125
	.word	2124
	.word	2123
	.word	2122
	.word	2121
	.word	2120
	.word	2119
	.word	2118
	.word	2117
	.word	2116
	.word	2115
	.word	2114
	.word	2113
	.word	2112
	.word	2111
	.word	2110
	.word	2109
	.word	2108
	.word	2107
	.word	2106
	.word	2105
	.word	2104
	.word	2103
	.word	2102
	.word	2101
	.word	2100
	.word	2099
	.word	2098
	.word	2097
	.word	2096
	.word	2095
	.word	2094
	.word	2093
	.word	2092
	.word	2091
	.word	2090
	.word	2089
	.word	2088
	.word	2087
	.word	2086
	.word	2085
	.word	2084
	.word	2083
	.word	2082
	.word	2081
	.word	2080
	.word	2079
	.word	2078
	.word	2077
	.word	2077
	.word	2076
	.word	2075
	.word	2074
	.word	2073
	.word	2072
	.word	2071
	.word	2070
	.word	2069
	.word	2068
	.word	2067
	.word	2066
	.word	2065
	.word	2064
	.word	2063
	.word	2062
	.word	2061
	.word	2060
	.word	2059
	.word	2058
	.word	2058
	.word	2057
	.word	2056
	.word	2055
	.word	2054
	.word	2053
	.word	2052
	.word	2051
	.word	2050
	.word	2049
	.word	2048
	.word	2047
	.word	2046
	.word	2045
	.word	2044
	.word	2044
	.word	2043
	.word	2042
	.word	2041
	.word	2040
	.word	2039
	.word	2038
	.word	2037
	.word	2036
	.word	2035
	.word	2034
	.word	2033
	.word	2032
	.word	2032
	.word	2031
	.word	2030
	.word	2029
	.word	2028
	.word	2027
	.word	2026
	.word	2025
	.word	2024
	.word	2023
	.word	2022
	.word	2022
	.word	2021
	.word	2020
	.word	2019
	.word	2018
	.word	2017
	.word	2016
	.word	2015
	.word	2014
	.word	2013
	.word	2012
	.word	2012
	.word	2011
	.word	2010
	.word	2009
	.word	2008
	.word	2007
	.word	2006
	.word	2005
	.word	2004
	.word	2004
	.word	2003
	.word	2002
	.word	2001
	.word	2000
	.word	1999
	.word	1998
	.word	1997
	.word	1996
	.word	1996
	.word	1995
	.word	1994
	.word	1993
	.word	1992
	.word	1991
	.word	1990
	.word	1989
	.word	1988
	.word	1988
	.word	1987
	.word	1986
	.word	1985
	.word	1984
	.word	1983
	.word	1982
	.word	1981
	.word	1981
	.word	1980
	.word	1979
	.word	1978
	.word	1977
	.word	1976
	.word	1975
	.word	1975
	.word	1974
	.word	1973
	.word	1972
	.word	1971
	.word	1970
	.word	1969
	.word	1968
	.word	1968
	.word	1967
	.word	1966
	.word	1965
	.word	1964
	.word	1963
	.word	1962
	.word	1962
	.word	1961
	.word	1960
	.word	1959
	.word	1958
	.word	1957
	.word	1957
	.word	1956
	.word	1955
	.word	1954
	.word	1953
	.word	1952
	.word	1951
	.word	1951
	.word	1950
	.word	1949
	.word	1948
	.word	1947
	.word	1946
	.word	1946
	.word	1945
	.word	1944
	.word	1943
	.word	1942
	.word	1941
	.word	1941
	.word	1940
	.word	1939
	.word	1938
	.word	1937
	.word	1936
	.word	1935
	.word	1935
	.word	1934
	.word	1933
	.word	1932
	.word	1931
	.word	1931
	.word	1930
	.word	1929
	.word	1928
	.word	1927
	.word	1926
	.word	1926
	.word	1925
	.word	1924
	.word	1923
	.word	1922
	.word	1921
	.word	1921
	.word	1920
	.word	1919
	.word	1918
	.word	1917
	.word	1917
	.word	1916
	.word	1915
	.word	1914
	.word	1913
	.word	1912
	.word	1912
	.word	1911
	.word	1910
	.word	1909
	.word	1908
	.word	1908
	.word	1907
	.word	1906
	.word	1905
	.word	1904
	.word	1904
	.word	1903
	.word	1902
	.word	1901
	.word	1900
	.word	1900
	.word	1899
	.word	1898
	.word	1897
	.word	1896
	.word	1896
	.word	1895
	.word	1894
	.word	1893
	.word	1892
	.word	1892
	.word	1891
	.word	1890
	.word	1889
	.word	1888
	.word	1888
	.word	1887
	.word	1886
	.word	1885
	.word	1884
	.word	1884
	.word	1883
	.word	1882
	.word	1881
	.word	1881
	.word	1880
	.word	1879
	.word	1878
	.word	1877
	.word	1877
	.word	1876
	.word	1875
	.word	1874
	.word	1873
	.word	1873
	.word	1872
	.word	1871
	.word	1870
	.word	1870
	.word	1869
	.word	1868
	.word	1867
	.word	1866
	.word	1866
	.word	1865
	.word	1864
	.word	1863
	.word	1863
	.word	1862
	.word	1861
	.word	1860
	.word	1860
	.word	1859
	.word	1858
	.word	1857
	.word	1856
	.word	1856
	.word	1855
	.word	1854
	.word	1853
	.word	1853
	.word	1852
	.word	1851
	.word	1850
	.word	1850
	.word	1849
	.word	1848
	.word	1847
	.word	1847
	.word	1846
	.word	1845
	.word	1844
	.word	1844
	.word	1843
	.word	1842
	.word	1841
	.word	1841
	.word	1840
	.word	1839
	.word	1838
	.word	1838
	.word	1837
	.word	1836
	.word	1835
	.word	1835
	.word	1834
	.word	1833
	.word	1832
	.word	1832
	.word	1831
	.word	1830
	.word	1829
	.word	1829
	.word	1828
	.word	1827
	.word	1826
	.word	1826
	.word	1825
	.word	1824
	.word	1823
	.word	1823
	.word	1822
	.word	1821
	.word	1820
	.word	1820
	.word	1819
	.word	1818
	.word	1818
	.word	1817
	.word	1816
	.word	1815
	.word	1815
	.word	1814
	.word	1813
	.word	1812
	.word	1812
	.word	1811
	.word	1810
	.word	1809
	.word	1809
	.word	1808
	.word	1807
	.word	1807
	.word	1806
	.word	1805
	.word	1804
	.word	1804
	.word	1803
	.word	1802
	.word	1802
	.word	1801
	.word	1800
	.word	1799
	.word	1799
	.word	1798
	.word	1797
	.word	1796
	.word	1796
	.word	1795
	.word	1794
	.word	1794
	.word	1793
	.word	1792
	.word	1791
	.word	1791
	.word	1790
	.word	1789
	.word	1789
	.word	1788
	.word	1787
	.word	1787
	.word	1786
	.word	1785
	.word	1784
	.word	1784
	.word	1783
	.word	1782
	.word	1782
	.word	1781
	.word	1780
	.word	1779
	.word	1779
	.word	1778
	.word	1777
	.word	1777
	.word	1776
	.word	1775
	.word	1775
	.word	1774
	.word	1773
	.word	1772
	.word	1772
	.word	1771
	.word	1770
	.word	1770
	.word	1769
	.word	1768
	.word	1768
	.word	1767
	.word	1766
	.type	LUT_Div, %object
	.size	LUT_Div, 960
LUT_Div:
	.word	65536
	.word	32768
	.word	21845
	.word	16384
	.word	13107
	.word	10922
	.word	9362
	.word	8192
	.word	7281
	.word	6553
	.word	5957
	.word	5461
	.word	5041
	.word	4681
	.word	4369
	.word	4096
	.word	3855
	.word	3640
	.word	3449
	.word	3276
	.word	3120
	.word	2978
	.word	2849
	.word	2730
	.word	2621
	.word	2520
	.word	2427
	.word	2340
	.word	2259
	.word	2184
	.word	2114
	.word	2048
	.word	1985
	.word	1927
	.word	1872
	.word	1820
	.word	1771
	.word	1724
	.word	1680
	.word	1638
	.word	1598
	.word	1560
	.word	1524
	.word	1489
	.word	1456
	.word	1424
	.word	1394
	.word	1365
	.word	1337
	.word	1310
	.word	1285
	.word	1260
	.word	1236
	.word	1213
	.word	1191
	.word	1170
	.word	1149
	.word	1129
	.word	1110
	.word	1092
	.word	1074
	.word	1057
	.word	1040
	.word	1024
	.word	1008
	.word	992
	.word	978
	.word	963
	.word	949
	.word	936
	.word	923
	.word	910
	.word	897
	.word	885
	.word	873
	.word	862
	.word	851
	.word	840
	.word	829
	.word	819
	.word	809
	.word	799
	.word	789
	.word	780
	.word	771
	.word	762
	.word	753
	.word	744
	.word	736
	.word	728
	.word	720
	.word	712
	.word	704
	.word	697
	.word	689
	.word	682
	.word	675
	.word	668
	.word	661
	.word	655
	.word	648
	.word	642
	.word	636
	.word	630
	.word	624
	.word	618
	.word	612
	.word	606
	.word	601
	.word	595
	.word	590
	.word	585
	.word	579
	.word	574
	.word	569
	.word	564
	.word	560
	.word	555
	.word	550
	.word	546
	.word	541
	.word	537
	.word	532
	.word	528
	.word	524
	.word	520
	.word	516
	.word	512
	.word	508
	.word	504
	.word	500
	.word	496
	.word	492
	.word	489
	.word	485
	.word	481
	.word	478
	.word	474
	.word	471
	.word	468
	.word	464
	.word	461
	.word	458
	.word	455
	.word	451
	.word	448
	.word	445
	.word	442
	.word	439
	.word	436
	.word	434
	.word	431
	.word	428
	.word	425
	.word	422
	.word	420
	.word	417
	.word	414
	.word	412
	.word	409
	.word	407
	.word	404
	.word	402
	.word	399
	.word	397
	.word	394
	.word	392
	.word	390
	.word	387
	.word	385
	.word	383
	.word	381
	.word	378
	.word	376
	.word	374
	.word	372
	.word	370
	.word	368
	.word	366
	.word	364
	.word	362
	.word	360
	.word	358
	.word	356
	.word	354
	.word	352
	.word	350
	.word	348
	.word	346
	.word	344
	.word	343
	.word	341
	.word	339
	.word	337
	.word	336
	.word	334
	.word	332
	.word	330
	.word	329
	.word	327
	.word	326
	.word	324
	.word	322
	.word	321
	.word	319
	.word	318
	.word	316
	.word	315
	.word	313
	.word	312
	.word	310
	.word	309
	.word	307
	.word	306
	.word	304
	.word	303
	.word	302
	.word	300
	.word	299
	.word	297
	.word	296
	.word	295
	.word	293
	.word	292
	.word	291
	.word	289
	.word	288
	.word	287
	.word	286
	.word	284
	.word	283
	.word	282
	.word	281
	.word	280
	.word	278
	.word	277
	.word	276
	.word	275
	.word	274
	.word	273
	.type	LUT_Sin, %object
	.size	LUT_Sin, 1440
LUT_Sin:
	.word	0
	.word	4
	.word	9
	.word	13
	.word	18
	.word	22
	.word	27
	.word	31
	.word	36
	.word	40
	.word	44
	.word	49
	.word	53
	.word	58
	.word	62
	.word	66
	.word	71
	.word	75
	.word	79
	.word	83
	.word	88
	.word	92
	.word	96
	.word	100
	.word	104
	.word	108
	.word	112
	.word	116
	.word	120
	.word	124
	.word	128
	.word	132
	.word	136
	.word	139
	.word	143
	.word	147
	.word	150
	.word	154
	.word	158
	.word	161
	.word	165
	.word	168
	.word	171
	.word	175
	.word	178
	.word	181
	.word	184
	.word	187
	.word	190
	.word	193
	.word	196
	.word	199
	.word	202
	.word	204
	.word	207
	.word	210
	.word	212
	.word	215
	.word	217
	.word	219
	.word	222
	.word	224
	.word	226
	.word	228
	.word	230
	.word	232
	.word	234
	.word	236
	.word	237
	.word	239
	.word	241
	.word	242
	.word	243
	.word	245
	.word	246
	.word	247
	.word	248
	.word	249
	.word	250
	.word	251
	.word	252
	.word	253
	.word	254
	.word	254
	.word	255
	.word	255
	.word	255
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	255
	.word	255
	.word	255
	.word	254
	.word	254
	.word	253
	.word	252
	.word	251
	.word	250
	.word	249
	.word	248
	.word	247
	.word	246
	.word	245
	.word	243
	.word	242
	.word	241
	.word	239
	.word	237
	.word	236
	.word	234
	.word	232
	.word	230
	.word	228
	.word	226
	.word	224
	.word	222
	.word	219
	.word	217
	.word	215
	.word	212
	.word	210
	.word	207
	.word	204
	.word	202
	.word	199
	.word	196
	.word	193
	.word	190
	.word	187
	.word	184
	.word	181
	.word	178
	.word	175
	.word	171
	.word	168
	.word	165
	.word	161
	.word	158
	.word	154
	.word	150
	.word	147
	.word	143
	.word	139
	.word	136
	.word	132
	.word	128
	.word	124
	.word	120
	.word	116
	.word	112
	.word	108
	.word	104
	.word	100
	.word	96
	.word	92
	.word	88
	.word	83
	.word	79
	.word	75
	.word	71
	.word	66
	.word	62
	.word	58
	.word	53
	.word	49
	.word	44
	.word	40
	.word	36
	.word	31
	.word	27
	.word	22
	.word	18
	.word	13
	.word	9
	.word	4
	.word	0
	.word	-4
	.word	-9
	.word	-13
	.word	-18
	.word	-22
	.word	-27
	.word	-31
	.word	-36
	.word	-40
	.word	-44
	.word	-49
	.word	-53
	.word	-58
	.word	-62
	.word	-66
	.word	-71
	.word	-75
	.word	-79
	.word	-83
	.word	-88
	.word	-92
	.word	-96
	.word	-100
	.word	-104
	.word	-108
	.word	-112
	.word	-116
	.word	-120
	.word	-124
	.word	-128
	.word	-132
	.word	-136
	.word	-139
	.word	-143
	.word	-147
	.word	-150
	.word	-154
	.word	-158
	.word	-161
	.word	-165
	.word	-168
	.word	-171
	.word	-175
	.word	-178
	.word	-181
	.word	-184
	.word	-187
	.word	-190
	.word	-193
	.word	-196
	.word	-199
	.word	-202
	.word	-204
	.word	-207
	.word	-210
	.word	-212
	.word	-215
	.word	-217
	.word	-219
	.word	-222
	.word	-224
	.word	-226
	.word	-228
	.word	-230
	.word	-232
	.word	-234
	.word	-236
	.word	-237
	.word	-239
	.word	-241
	.word	-242
	.word	-243
	.word	-245
	.word	-246
	.word	-247
	.word	-248
	.word	-249
	.word	-250
	.word	-251
	.word	-252
	.word	-253
	.word	-254
	.word	-254
	.word	-255
	.word	-255
	.word	-255
	.word	-256
	.word	-256
	.word	-256
	.word	-256
	.word	-256
	.word	-256
	.word	-256
	.word	-255
	.word	-255
	.word	-255
	.word	-254
	.word	-254
	.word	-253
	.word	-252
	.word	-251
	.word	-250
	.word	-249
	.word	-248
	.word	-247
	.word	-246
	.word	-245
	.word	-243
	.word	-242
	.word	-241
	.word	-239
	.word	-237
	.word	-236
	.word	-234
	.word	-232
	.word	-230
	.word	-228
	.word	-226
	.word	-224
	.word	-222
	.word	-219
	.word	-217
	.word	-215
	.word	-212
	.word	-210
	.word	-207
	.word	-204
	.word	-202
	.word	-199
	.word	-196
	.word	-193
	.word	-190
	.word	-187
	.word	-184
	.word	-181
	.word	-178
	.word	-175
	.word	-171
	.word	-168
	.word	-165
	.word	-161
	.word	-158
	.word	-154
	.word	-150
	.word	-147
	.word	-143
	.word	-139
	.word	-136
	.word	-132
	.word	-128
	.word	-124
	.word	-120
	.word	-116
	.word	-112
	.word	-108
	.word	-104
	.word	-100
	.word	-96
	.word	-92
	.word	-88
	.word	-83
	.word	-79
	.word	-75
	.word	-71
	.word	-66
	.word	-62
	.word	-58
	.word	-53
	.word	-49
	.word	-44
	.word	-40
	.word	-36
	.word	-31
	.word	-27
	.word	-22
	.word	-18
	.word	-13
	.word	-9
	.word	-4
	.type	LUT_Cos, %object
	.size	LUT_Cos, 1440
LUT_Cos:
	.word	256
	.word	256
	.word	256
	.word	256
	.word	255
	.word	255
	.word	255
	.word	254
	.word	254
	.word	253
	.word	252
	.word	251
	.word	250
	.word	249
	.word	248
	.word	247
	.word	246
	.word	245
	.word	243
	.word	242
	.word	241
	.word	239
	.word	237
	.word	236
	.word	234
	.word	232
	.word	230
	.word	228
	.word	226
	.word	224
	.word	222
	.word	219
	.word	217
	.word	215
	.word	212
	.word	210
	.word	207
	.word	204
	.word	202
	.word	199
	.word	196
	.word	193
	.word	190
	.word	187
	.word	184
	.word	181
	.word	178
	.word	175
	.word	171
	.word	168
	.word	165
	.word	161
	.word	158
	.word	154
	.word	150
	.word	147
	.word	143
	.word	139
	.word	136
	.word	132
	.word	128
	.word	124
	.word	120
	.word	116
	.word	112
	.word	108
	.word	104
	.word	100
	.word	96
	.word	92
	.word	88
	.word	83
	.word	79
	.word	75
	.word	71
	.word	66
	.word	62
	.word	58
	.word	53
	.word	49
	.word	44
	.word	40
	.word	36
	.word	31
	.word	27
	.word	22
	.word	18
	.word	13
	.word	9
	.word	4
	.word	0
	.word	-4
	.word	-9
	.word	-13
	.word	-18
	.word	-22
	.word	-27
	.word	-31
	.word	-36
	.word	-40
	.word	-44
	.word	-49
	.word	-53
	.word	-58
	.word	-62
	.word	-66
	.word	-71
	.word	-75
	.word	-79
	.word	-83
	.word	-88
	.word	-92
	.word	-96
	.word	-100
	.word	-104
	.word	-108
	.word	-112
	.word	-116
	.word	-120
	.word	-124
	.word	-128
	.word	-132
	.word	-136
	.word	-139
	.word	-143
	.word	-147
	.word	-150
	.word	-154
	.word	-158
	.word	-161
	.word	-165
	.word	-168
	.word	-171
	.word	-175
	.word	-178
	.word	-181
	.word	-184
	.word	-187
	.word	-190
	.word	-193
	.word	-196
	.word	-199
	.word	-202
	.word	-204
	.word	-207
	.word	-210
	.word	-212
	.word	-215
	.word	-217
	.word	-219
	.word	-222
	.word	-224
	.word	-226
	.word	-228
	.word	-230
	.word	-232
	.word	-234
	.word	-236
	.word	-237
	.word	-239
	.word	-241
	.word	-242
	.word	-243
	.word	-245
	.word	-246
	.word	-247
	.word	-248
	.word	-249
	.word	-250
	.word	-251
	.word	-252
	.word	-253
	.word	-254
	.word	-254
	.word	-255
	.word	-255
	.word	-255
	.word	-256
	.word	-256
	.word	-256
	.word	-256
	.word	-256
	.word	-256
	.word	-256
	.word	-255
	.word	-255
	.word	-255
	.word	-254
	.word	-254
	.word	-253
	.word	-252
	.word	-251
	.word	-250
	.word	-249
	.word	-248
	.word	-247
	.word	-246
	.word	-245
	.word	-243
	.word	-242
	.word	-241
	.word	-239
	.word	-237
	.word	-236
	.word	-234
	.word	-232
	.word	-230
	.word	-228
	.word	-226
	.word	-224
	.word	-222
	.word	-219
	.word	-217
	.word	-215
	.word	-212
	.word	-210
	.word	-207
	.word	-204
	.word	-202
	.word	-199
	.word	-196
	.word	-193
	.word	-190
	.word	-187
	.word	-184
	.word	-181
	.word	-178
	.word	-175
	.word	-171
	.word	-168
	.word	-165
	.word	-161
	.word	-158
	.word	-154
	.word	-150
	.word	-147
	.word	-143
	.word	-139
	.word	-136
	.word	-132
	.word	-128
	.word	-124
	.word	-120
	.word	-116
	.word	-112
	.word	-108
	.word	-104
	.word	-100
	.word	-96
	.word	-92
	.word	-88
	.word	-83
	.word	-79
	.word	-75
	.word	-71
	.word	-66
	.word	-62
	.word	-58
	.word	-53
	.word	-49
	.word	-44
	.word	-40
	.word	-36
	.word	-31
	.word	-27
	.word	-22
	.word	-18
	.word	-13
	.word	-9
	.word	-4
	.word	0
	.word	4
	.word	9
	.word	13
	.word	18
	.word	22
	.word	27
	.word	31
	.word	36
	.word	40
	.word	44
	.word	49
	.word	53
	.word	58
	.word	62
	.word	66
	.word	71
	.word	75
	.word	79
	.word	83
	.word	88
	.word	92
	.word	96
	.word	100
	.word	104
	.word	108
	.word	112
	.word	116
	.word	120
	.word	124
	.word	128
	.word	132
	.word	136
	.word	139
	.word	143
	.word	147
	.word	150
	.word	154
	.word	158
	.word	161
	.word	165
	.word	168
	.word	171
	.word	175
	.word	178
	.word	181
	.word	184
	.word	187
	.word	190
	.word	193
	.word	196
	.word	199
	.word	202
	.word	204
	.word	207
	.word	210
	.word	212
	.word	215
	.word	217
	.word	219
	.word	222
	.word	224
	.word	226
	.word	228
	.word	230
	.word	232
	.word	234
	.word	236
	.word	237
	.word	239
	.word	241
	.word	242
	.word	243
	.word	245
	.word	246
	.word	247
	.word	248
	.word	249
	.word	250
	.word	251
	.word	252
	.word	253
	.word	254
	.word	254
	.word	255
	.word	255
	.word	255
	.word	256
	.word	256
	.word	256
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	mPosition, %object
	.size	mPosition, 4
mPosition:
	.word	512
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	mRotation, %object
	.size	mRotation, 4
mRotation:
	.space	4
	.type	FRAME, %object
	.size	FRAME, 4
FRAME:
	.space	4
	.type	VRAM, %object
	.size	VRAM, 4
VRAM:
	.space	4
	.type	depthBucketCounter, %object
	.size	depthBucketCounter, 256
depthBucketCounter:
	.space	256
	.section	.ewram,"aw"
	.align	2
	.type	depthBuckets, %object
	.size	depthBuckets, 25600
depthBuckets:
	.space	25600
	.ident	"GCC: (devkitARM) 15.2.0"
