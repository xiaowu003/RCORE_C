
../target/os.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	0001e117          	auipc	sp,0x1e
    80200004:	00010113          	mv	sp,sp
    80200008:	5100006f          	j	80200518 <main>
    8020000c:	0000                	unimp
    8020000e:	0000                	unimp
	...

0000000080200012 <load_init>:
    80200012:	1101                	addi	sp,sp,-32 # 8021dfe0 <boot_stack+0xffe0>
    80200014:	ec06                	sd	ra,24(sp)
    80200016:	e822                	sd	s0,16(sp)
    80200018:	1000                	addi	s0,sp,32
    8020001a:	00437797          	auipc	a5,0x437
    8020001e:	0a678793          	addi	a5,a5,166 # 806370c0 <app_info_ptr>
    80200022:	00006717          	auipc	a4,0x6
    80200026:	fde70713          	addi	a4,a4,-34 # 80206000 <_app_num>
    8020002a:	e398                	sd	a4,0(a5)
    8020002c:	00437797          	auipc	a5,0x437
    80200030:	09478793          	addi	a5,a5,148 # 806370c0 <app_info_ptr>
    80200034:	639c                	ld	a5,0(a5)
    80200036:	6398                	ld	a4,0(a5)
    80200038:	00437797          	auipc	a5,0x437
    8020003c:	09078793          	addi	a5,a5,144 # 806370c8 <app_num>
    80200040:	e398                	sd	a4,0(a5)
    80200042:	00437797          	auipc	a5,0x437
    80200046:	07e78793          	addi	a5,a5,126 # 806370c0 <app_info_ptr>
    8020004a:	639c                	ld	a5,0(a5)
    8020004c:	00878713          	addi	a4,a5,8
    80200050:	00437797          	auipc	a5,0x437
    80200054:	07078793          	addi	a5,a5,112 # 806370c0 <app_info_ptr>
    80200058:	e398                	sd	a4,0(a5)
    8020005a:	00006797          	auipc	a5,0x6
    8020005e:	fce78793          	addi	a5,a5,-50 # 80206028 <_app_names>
    80200062:	fef43423          	sd	a5,-24(s0)
    80200066:	00005517          	auipc	a0,0x5
    8020006a:	f9a50513          	addi	a0,a0,-102 # 80205000 <rodata_start>
    8020006e:	6d5000ef          	jal	80200f42 <printk>
    80200072:	fe042223          	sw	zero,-28(s0)
    80200076:	a895                	j	802000ea <load_init+0xd8>
    80200078:	fe843503          	ld	a0,-24(s0)
    8020007c:	440010ef          	jal	802014bc <strlen>
    80200080:	87aa                	mv	a5,a0
    80200082:	fef42023          	sw	a5,-32(s0)
    80200086:	fe442703          	lw	a4,-28(s0)
    8020008a:	0c800793          	li	a5,200
    8020008e:	02f70733          	mul	a4,a4,a5
    80200092:	0001e797          	auipc	a5,0x1e
    80200096:	f6e78793          	addi	a5,a5,-146 # 8021e000 <names>
    8020009a:	97ba                	add	a5,a5,a4
    8020009c:	fe042703          	lw	a4,-32(s0)
    802000a0:	863a                	mv	a2,a4
    802000a2:	fe843583          	ld	a1,-24(s0)
    802000a6:	853e                	mv	a0,a5
    802000a8:	7da010ef          	jal	80201882 <strncpy>
    802000ac:	fe042783          	lw	a5,-32(s0)
    802000b0:	0785                	addi	a5,a5,1
    802000b2:	fe843703          	ld	a4,-24(s0)
    802000b6:	97ba                	add	a5,a5,a4
    802000b8:	fef43423          	sd	a5,-24(s0)
    802000bc:	fe442703          	lw	a4,-28(s0)
    802000c0:	0c800793          	li	a5,200
    802000c4:	02f70733          	mul	a4,a4,a5
    802000c8:	0001e797          	auipc	a5,0x1e
    802000cc:	f3878793          	addi	a5,a5,-200 # 8021e000 <names>
    802000d0:	97ba                	add	a5,a5,a4
    802000d2:	85be                	mv	a1,a5
    802000d4:	00005517          	auipc	a0,0x5
    802000d8:	f3c50513          	addi	a0,a0,-196 # 80205010 <rodata_start+0x10>
    802000dc:	667000ef          	jal	80200f42 <printk>
    802000e0:	fe442783          	lw	a5,-28(s0)
    802000e4:	2785                	addiw	a5,a5,1
    802000e6:	fef42223          	sw	a5,-28(s0)
    802000ea:	fe442703          	lw	a4,-28(s0)
    802000ee:	00437797          	auipc	a5,0x437
    802000f2:	fda78793          	addi	a5,a5,-38 # 806370c8 <app_num>
    802000f6:	639c                	ld	a5,0(a5)
    802000f8:	f8f760e3          	bltu	a4,a5,80200078 <load_init+0x66>
    802000fc:	00005517          	auipc	a0,0x5
    80200100:	f1c50513          	addi	a0,a0,-228 # 80205018 <rodata_start+0x18>
    80200104:	63f000ef          	jal	80200f42 <printk>
    80200108:	0001                	nop
    8020010a:	60e2                	ld	ra,24(sp)
    8020010c:	6442                	ld	s0,16(sp)
    8020010e:	6105                	addi	sp,sp,32
    80200110:	8082                	ret

0000000080200112 <get_id_by_name>:
    80200112:	7179                	addi	sp,sp,-48
    80200114:	f406                	sd	ra,40(sp)
    80200116:	f022                	sd	s0,32(sp)
    80200118:	1800                	addi	s0,sp,48
    8020011a:	fca43c23          	sd	a0,-40(s0)
    8020011e:	fe042623          	sw	zero,-20(s0)
    80200122:	a82d                	j	8020015c <get_id_by_name+0x4a>
    80200124:	fec42703          	lw	a4,-20(s0)
    80200128:	0c800793          	li	a5,200
    8020012c:	02f70733          	mul	a4,a4,a5
    80200130:	0001e797          	auipc	a5,0x1e
    80200134:	ed078793          	addi	a5,a5,-304 # 8021e000 <names>
    80200138:	97ba                	add	a5,a5,a4
    8020013a:	06400613          	li	a2,100
    8020013e:	85be                	mv	a1,a5
    80200140:	fd843503          	ld	a0,-40(s0)
    80200144:	7c4010ef          	jal	80201908 <strncmp>
    80200148:	87aa                	mv	a5,a0
    8020014a:	e781                	bnez	a5,80200152 <get_id_by_name+0x40>
    8020014c:	fec42783          	lw	a5,-20(s0)
    80200150:	a805                	j	80200180 <get_id_by_name+0x6e>
    80200152:	fec42783          	lw	a5,-20(s0)
    80200156:	2785                	addiw	a5,a5,1
    80200158:	fef42623          	sw	a5,-20(s0)
    8020015c:	fec42703          	lw	a4,-20(s0)
    80200160:	00437797          	auipc	a5,0x437
    80200164:	f6878793          	addi	a5,a5,-152 # 806370c8 <app_num>
    80200168:	639c                	ld	a5,0(a5)
    8020016a:	faf76de3          	bltu	a4,a5,80200124 <get_id_by_name+0x12>
    8020016e:	fd843583          	ld	a1,-40(s0)
    80200172:	00005517          	auipc	a0,0x5
    80200176:	ebe50513          	addi	a0,a0,-322 # 80205030 <rodata_start+0x30>
    8020017a:	5c9000ef          	jal	80200f42 <printk>
    8020017e:	57fd                	li	a5,-1
    80200180:	853e                	mv	a0,a5
    80200182:	70a2                	ld	ra,40(sp)
    80200184:	7402                	ld	s0,32(sp)
    80200186:	6145                	addi	sp,sp,48
    80200188:	8082                	ret

000000008020018a <load_app_pgtbl>:
    8020018a:	7119                	addi	sp,sp,-128
    8020018c:	fc86                	sd	ra,120(sp)
    8020018e:	f8a2                	sd	s0,112(sp)
    80200190:	0100                	addi	s0,sp,128
    80200192:	f8a43c23          	sd	a0,-104(s0)
    80200196:	f8b43823          	sd	a1,-112(s0)
    8020019a:	f8c43423          	sd	a2,-120(s0)
    8020019e:	f8843783          	ld	a5,-120(s0)
    802001a2:	c789                	beqz	a5,802001ac <load_app_pgtbl+0x22>
    802001a4:	f8843783          	ld	a5,-120(s0)
    802001a8:	439c                	lw	a5,0(a5)
    802001aa:	e799                	bnez	a5,802001b8 <load_app_pgtbl+0x2e>
    802001ac:	00005517          	auipc	a0,0x5
    802001b0:	ea450513          	addi	a0,a0,-348 # 80205050 <rodata_start+0x50>
    802001b4:	598000ef          	jal	8020074c <panic>
    802001b8:	f9843703          	ld	a4,-104(s0)
    802001bc:	77fd                	lui	a5,0xfffff
    802001be:	8ff9                	and	a5,a5,a4
    802001c0:	fcf43823          	sd	a5,-48(s0)
    802001c4:	f9043703          	ld	a4,-112(s0)
    802001c8:	6785                	lui	a5,0x1
    802001ca:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802001cc:	973e                	add	a4,a4,a5
    802001ce:	77fd                	lui	a5,0xfffff
    802001d0:	8ff9                	and	a5,a5,a4
    802001d2:	fcf43423          	sd	a5,-56(s0)
    802001d6:	fc843703          	ld	a4,-56(s0)
    802001da:	fd043783          	ld	a5,-48(s0)
    802001de:	40f707b3          	sub	a5,a4,a5
    802001e2:	fcf43023          	sd	a5,-64(s0)
    802001e6:	40100793          	li	a5,1025
    802001ea:	07d6                	slli	a5,a5,0x15
    802001ec:	faf43c23          	sd	a5,-72(s0)
    802001f0:	fc043703          	ld	a4,-64(s0)
    802001f4:	40100793          	li	a5,1025
    802001f8:	07d6                	slli	a5,a5,0x15
    802001fa:	97ba                	add	a5,a5,a4
    802001fc:	faf43823          	sd	a5,-80(s0)
    80200200:	fb843783          	ld	a5,-72(s0)
    80200204:	fef43423          	sd	a5,-24(s0)
    80200208:	fd043783          	ld	a5,-48(s0)
    8020020c:	fef43023          	sd	a5,-32(s0)
    80200210:	a0d5                	j	802002f4 <load_app_pgtbl+0x16a>
    80200212:	6cc020ef          	jal	802028de <kalloc>
    80200216:	faa43423          	sd	a0,-88(s0)
    8020021a:	fa843783          	ld	a5,-88(s0)
    8020021e:	e799                	bnez	a5,8020022c <load_app_pgtbl+0xa2>
    80200220:	00005517          	auipc	a0,0x5
    80200224:	e4050513          	addi	a0,a0,-448 # 80205060 <rodata_start+0x60>
    80200228:	524000ef          	jal	8020074c <panic>
    8020022c:	fe043783          	ld	a5,-32(s0)
    80200230:	6605                	lui	a2,0x1
    80200232:	85be                	mv	a1,a5
    80200234:	fa843503          	ld	a0,-88(s0)
    80200238:	39e010ef          	jal	802015d6 <memmove>
    8020023c:	fe043703          	ld	a4,-32(s0)
    80200240:	f9843783          	ld	a5,-104(s0)
    80200244:	02f77363          	bgeu	a4,a5,8020026a <load_app_pgtbl+0xe0>
    80200248:	f9843783          	ld	a5,-104(s0)
    8020024c:	0007871b          	sext.w	a4,a5
    80200250:	fe843783          	ld	a5,-24(s0)
    80200254:	2781                	sext.w	a5,a5
    80200256:	40f707bb          	subw	a5,a4,a5
    8020025a:	2781                	sext.w	a5,a5
    8020025c:	863e                	mv	a2,a5
    8020025e:	4581                	li	a1,0
    80200260:	fa843503          	ld	a0,-88(s0)
    80200264:	3cc010ef          	jal	80201630 <memset>
    80200268:	a0b1                	j	802002b4 <load_app_pgtbl+0x12a>
    8020026a:	fe043703          	ld	a4,-32(s0)
    8020026e:	6785                	lui	a5,0x1
    80200270:	97ba                	add	a5,a5,a4
    80200272:	f9043703          	ld	a4,-112(s0)
    80200276:	02f77f63          	bgeu	a4,a5,802002b4 <load_app_pgtbl+0x12a>
    8020027a:	f9043703          	ld	a4,-112(s0)
    8020027e:	fe043783          	ld	a5,-32(s0)
    80200282:	40f707b3          	sub	a5,a4,a5
    80200286:	fa843703          	ld	a4,-88(s0)
    8020028a:	00f706b3          	add	a3,a4,a5
    8020028e:	fe043783          	ld	a5,-32(s0)
    80200292:	0007871b          	sext.w	a4,a5
    80200296:	f9043783          	ld	a5,-112(s0)
    8020029a:	2781                	sext.w	a5,a5
    8020029c:	40f707bb          	subw	a5,a4,a5
    802002a0:	0007871b          	sext.w	a4,a5
    802002a4:	6785                	lui	a5,0x1
    802002a6:	9fb9                	addw	a5,a5,a4
    802002a8:	2781                	sext.w	a5,a5
    802002aa:	863e                	mv	a2,a5
    802002ac:	4581                	li	a1,0
    802002ae:	8536                	mv	a0,a3
    802002b0:	380010ef          	jal	80201630 <memset>
    802002b4:	f8843783          	ld	a5,-120(s0)
    802002b8:	679c                	ld	a5,8(a5)
    802002ba:	fa843683          	ld	a3,-88(s0)
    802002be:	4779                	li	a4,30
    802002c0:	6605                	lui	a2,0x1
    802002c2:	fe843583          	ld	a1,-24(s0)
    802002c6:	853e                	mv	a0,a5
    802002c8:	6ae020ef          	jal	80202976 <mappages>
    802002cc:	87aa                	mv	a5,a0
    802002ce:	c799                	beqz	a5,802002dc <load_app_pgtbl+0x152>
    802002d0:	00005517          	auipc	a0,0x5
    802002d4:	db050513          	addi	a0,a0,-592 # 80205080 <rodata_start+0x80>
    802002d8:	474000ef          	jal	8020074c <panic>
    802002dc:	fe843703          	ld	a4,-24(s0)
    802002e0:	6785                	lui	a5,0x1
    802002e2:	97ba                	add	a5,a5,a4
    802002e4:	fef43423          	sd	a5,-24(s0)
    802002e8:	fe043703          	ld	a4,-32(s0)
    802002ec:	6785                	lui	a5,0x1
    802002ee:	97ba                	add	a5,a5,a4
    802002f0:	fef43023          	sd	a5,-32(s0)
    802002f4:	fe043703          	ld	a4,-32(s0)
    802002f8:	fc843783          	ld	a5,-56(s0)
    802002fc:	f0f76be3          	bltu	a4,a5,80200212 <load_app_pgtbl+0x88>
    80200300:	fb043703          	ld	a4,-80(s0)
    80200304:	6785                	lui	a5,0x1
    80200306:	973e                	add	a4,a4,a5
    80200308:	f8843783          	ld	a5,-120(s0)
    8020030c:	ef98                	sd	a4,24(a5)
    8020030e:	f8843783          	ld	a5,-120(s0)
    80200312:	6f9c                	ld	a5,24(a5)
    80200314:	fcf43c23          	sd	a5,-40(s0)
    80200318:	a8b1                	j	80200374 <load_app_pgtbl+0x1ea>
    8020031a:	5c4020ef          	jal	802028de <kalloc>
    8020031e:	faa43423          	sd	a0,-88(s0)
    80200322:	fa843783          	ld	a5,-88(s0)
    80200326:	e799                	bnez	a5,80200334 <load_app_pgtbl+0x1aa>
    80200328:	00005517          	auipc	a0,0x5
    8020032c:	d7050513          	addi	a0,a0,-656 # 80205098 <rodata_start+0x98>
    80200330:	41c000ef          	jal	8020074c <panic>
    80200334:	6605                	lui	a2,0x1
    80200336:	4581                	li	a1,0
    80200338:	fa843503          	ld	a0,-88(s0)
    8020033c:	2f4010ef          	jal	80201630 <memset>
    80200340:	f8843783          	ld	a5,-120(s0)
    80200344:	679c                	ld	a5,8(a5)
    80200346:	fa843683          	ld	a3,-88(s0)
    8020034a:	4759                	li	a4,22
    8020034c:	6605                	lui	a2,0x1
    8020034e:	fd843583          	ld	a1,-40(s0)
    80200352:	853e                	mv	a0,a5
    80200354:	622020ef          	jal	80202976 <mappages>
    80200358:	87aa                	mv	a5,a0
    8020035a:	c799                	beqz	a5,80200368 <load_app_pgtbl+0x1de>
    8020035c:	00005517          	auipc	a0,0x5
    80200360:	d5c50513          	addi	a0,a0,-676 # 802050b8 <rodata_start+0xb8>
    80200364:	3e8000ef          	jal	8020074c <panic>
    80200368:	fd843703          	ld	a4,-40(s0)
    8020036c:	6785                	lui	a5,0x1
    8020036e:	97ba                	add	a5,a5,a4
    80200370:	fcf43c23          	sd	a5,-40(s0)
    80200374:	f8843783          	ld	a5,-120(s0)
    80200378:	6f98                	ld	a4,24(a5)
    8020037a:	6785                	lui	a5,0x1
    8020037c:	97ba                	add	a5,a5,a4
    8020037e:	fd843703          	ld	a4,-40(s0)
    80200382:	f8f76ce3          	bltu	a4,a5,8020031a <load_app_pgtbl+0x190>
    80200386:	f8843783          	ld	a5,-120(s0)
    8020038a:	6f94                	ld	a3,24(a5)
    8020038c:	f8843783          	ld	a5,-120(s0)
    80200390:	739c                	ld	a5,32(a5)
    80200392:	6705                	lui	a4,0x1
    80200394:	9736                	add	a4,a4,a3
    80200396:	eb98                	sd	a4,16(a5)
    80200398:	f8843783          	ld	a5,-120(s0)
    8020039c:	739c                	ld	a5,32(a5)
    8020039e:	fb843703          	ld	a4,-72(s0)
    802003a2:	10e7b423          	sd	a4,264(a5) # 1108 <n+0x10e8>
    802003a6:	f8843783          	ld	a5,-120(s0)
    802003aa:	6f98                	ld	a4,24(a5)
    802003ac:	6789                	lui	a5,0x2
    802003ae:	17f9                	addi	a5,a5,-2 # 1ffe <n+0x1fde>
    802003b0:	97ba                	add	a5,a5,a4
    802003b2:	00c7d713          	srli	a4,a5,0xc
    802003b6:	f8843783          	ld	a5,-120(s0)
    802003ba:	efd8                	sd	a4,152(a5)
    802003bc:	f8843783          	ld	a5,-120(s0)
    802003c0:	470d                	li	a4,3
    802003c2:	c398                	sw	a4,0(a5)
    802003c4:	4781                	li	a5,0
    802003c6:	853e                	mv	a0,a5
    802003c8:	70e6                	ld	ra,120(sp)
    802003ca:	7446                	ld	s0,112(sp)
    802003cc:	6109                	addi	sp,sp,128
    802003ce:	8082                	ret

00000000802003d0 <loader>:
    802003d0:	1101                	addi	sp,sp,-32
    802003d2:	ec06                	sd	ra,24(sp)
    802003d4:	e822                	sd	s0,16(sp)
    802003d6:	1000                	addi	s0,sp,32
    802003d8:	87aa                	mv	a5,a0
    802003da:	feb43023          	sd	a1,-32(s0)
    802003de:	fef42623          	sw	a5,-20(s0)
    802003e2:	00437797          	auipc	a5,0x437
    802003e6:	cde78793          	addi	a5,a5,-802 # 806370c0 <app_info_ptr>
    802003ea:	6398                	ld	a4,0(a5)
    802003ec:	fec42783          	lw	a5,-20(s0)
    802003f0:	078e                	slli	a5,a5,0x3
    802003f2:	97ba                	add	a5,a5,a4
    802003f4:	6394                	ld	a3,0(a5)
    802003f6:	00437797          	auipc	a5,0x437
    802003fa:	cca78793          	addi	a5,a5,-822 # 806370c0 <app_info_ptr>
    802003fe:	6398                	ld	a4,0(a5)
    80200400:	fec42783          	lw	a5,-20(s0)
    80200404:	0785                	addi	a5,a5,1
    80200406:	078e                	slli	a5,a5,0x3
    80200408:	97ba                	add	a5,a5,a4
    8020040a:	639c                	ld	a5,0(a5)
    8020040c:	fe043603          	ld	a2,-32(s0)
    80200410:	85be                	mv	a1,a5
    80200412:	8536                	mv	a0,a3
    80200414:	d77ff0ef          	jal	8020018a <load_app_pgtbl>
    80200418:	87aa                	mv	a5,a0
    8020041a:	853e                	mv	a0,a5
    8020041c:	60e2                	ld	ra,24(sp)
    8020041e:	6442                	ld	s0,16(sp)
    80200420:	6105                	addi	sp,sp,32
    80200422:	8082                	ret

0000000080200424 <load_init_app>:
    80200424:	1101                	addi	sp,sp,-32
    80200426:	ec06                	sd	ra,24(sp)
    80200428:	e822                	sd	s0,16(sp)
    8020042a:	1000                	addi	s0,sp,32
    8020042c:	00005517          	auipc	a0,0x5
    80200430:	cac50513          	addi	a0,a0,-852 # 802050d8 <rodata_start+0xd8>
    80200434:	cdfff0ef          	jal	80200112 <get_id_by_name>
    80200438:	87aa                	mv	a5,a0
    8020043a:	fef42623          	sw	a5,-20(s0)
    8020043e:	fec42783          	lw	a5,-20(s0)
    80200442:	2781                	sext.w	a5,a5
    80200444:	0207d263          	bgez	a5,80200468 <load_init_app+0x44>
    80200448:	00006597          	auipc	a1,0x6
    8020044c:	bf958593          	addi	a1,a1,-1031 # 80206041 <INIT_PROC>
    80200450:	00005517          	auipc	a0,0x5
    80200454:	c9050513          	addi	a0,a0,-880 # 802050e0 <rodata_start+0xe0>
    80200458:	2eb000ef          	jal	80200f42 <printk>
    8020045c:	00005517          	auipc	a0,0x5
    80200460:	ca450513          	addi	a0,a0,-860 # 80205100 <rodata_start+0x100>
    80200464:	2e8000ef          	jal	8020074c <panic>
    80200468:	3ed010ef          	jal	80202054 <allocate_proc>
    8020046c:	fea43023          	sd	a0,-32(s0)
    80200470:	fe043783          	ld	a5,-32(s0)
    80200474:	e799                	bnez	a5,80200482 <load_init_app+0x5e>
    80200476:	00005517          	auipc	a0,0x5
    8020047a:	c9250513          	addi	a0,a0,-878 # 80205108 <rodata_start+0x108>
    8020047e:	2ce000ef          	jal	8020074c <panic>
    80200482:	fec42783          	lw	a5,-20(s0)
    80200486:	fe043583          	ld	a1,-32(s0)
    8020048a:	853e                	mv	a0,a5
    8020048c:	f45ff0ef          	jal	802003d0 <loader>
    80200490:	fe043503          	ld	a0,-32(s0)
    80200494:	509010ef          	jal	8020219c <add_task>
    80200498:	4781                	li	a5,0
    8020049a:	853e                	mv	a0,a5
    8020049c:	60e2                	ld	ra,24(sp)
    8020049e:	6442                	ld	s0,16(sp)
    802004a0:	6105                	addi	sp,sp,32
    802004a2:	8082                	ret

00000000802004a4 <clear_bss>:
    802004a4:	1101                	addi	sp,sp,-32
    802004a6:	ec06                	sd	ra,24(sp)
    802004a8:	e822                	sd	s0,16(sp)
    802004aa:	1000                	addi	s0,sp,32
    802004ac:	00438617          	auipc	a2,0x438
    802004b0:	b5460613          	addi	a2,a2,-1196 # 80638000 <bss_end>
    802004b4:	0001e597          	auipc	a1,0x1e
    802004b8:	b4c58593          	addi	a1,a1,-1204 # 8021e000 <names>
    802004bc:	00005517          	auipc	a0,0x5
    802004c0:	c6c50513          	addi	a0,a0,-916 # 80205128 <rodata_start+0x128>
    802004c4:	27f000ef          	jal	80200f42 <printk>
    802004c8:	00005517          	auipc	a0,0x5
    802004cc:	c9850513          	addi	a0,a0,-872 # 80205160 <rodata_start+0x160>
    802004d0:	273000ef          	jal	80200f42 <printk>
    802004d4:	0001e797          	auipc	a5,0x1e
    802004d8:	b2c78793          	addi	a5,a5,-1236 # 8021e000 <names>
    802004dc:	fef43423          	sd	a5,-24(s0)
    802004e0:	00438797          	auipc	a5,0x438
    802004e4:	b2078793          	addi	a5,a5,-1248 # 80638000 <bss_end>
    802004e8:	fef43023          	sd	a5,-32(s0)
    802004ec:	a811                	j	80200500 <clear_bss+0x5c>
    802004ee:	fe843783          	ld	a5,-24(s0)
    802004f2:	00078023          	sb	zero,0(a5)
    802004f6:	fe843783          	ld	a5,-24(s0)
    802004fa:	0785                	addi	a5,a5,1
    802004fc:	fef43423          	sd	a5,-24(s0)
    80200500:	fe843703          	ld	a4,-24(s0)
    80200504:	fe043783          	ld	a5,-32(s0)
    80200508:	fef763e3          	bltu	a4,a5,802004ee <clear_bss+0x4a>
    8020050c:	0001                	nop
    8020050e:	0001                	nop
    80200510:	60e2                	ld	ra,24(sp)
    80200512:	6442                	ld	s0,16(sp)
    80200514:	6105                	addi	sp,sp,32
    80200516:	8082                	ret

0000000080200518 <main>:
    80200518:	1141                	addi	sp,sp,-16
    8020051a:	e406                	sd	ra,8(sp)
    8020051c:	e022                	sd	s0,0(sp)
    8020051e:	0800                	addi	s0,sp,16
    80200520:	f85ff0ef          	jal	802004a4 <clear_bss>
    80200524:	209010ef          	jal	80201f2c <proc_init>
    80200528:	2fe020ef          	jal	80202826 <kernel_init>
    8020052c:	60e020ef          	jal	80202b3a <kvm_init>
    80200530:	ae3ff0ef          	jal	80200012 <load_init>
    80200534:	547000ef          	jal	8020127a <trap_init>
    80200538:	24a020ef          	jal	80202782 <timer_init>
    8020053c:	ee9ff0ef          	jal	80200424 <load_init_app>
    80200540:	4a5010ef          	jal	802021e4 <scheduler>
    80200544:	00005517          	auipc	a0,0x5
    80200548:	c3c50513          	addi	a0,a0,-964 # 80205180 <rodata_start+0x180>
    8020054c:	200000ef          	jal	8020074c <panic>
    80200550:	4781                	li	a5,0
    80200552:	853e                	mv	a0,a5
    80200554:	60a2                	ld	ra,8(sp)
    80200556:	6402                	ld	s0,0(sp)
    80200558:	0141                	addi	sp,sp,16
    8020055a:	8082                	ret

000000008020055c <sbi_ecall>:
    8020055c:	7159                	addi	sp,sp,-112
    8020055e:	f486                	sd	ra,104(sp)
    80200560:	f0a2                	sd	s0,96(sp)
    80200562:	1880                	addi	s0,sp,112
    80200564:	fca43423          	sd	a0,-56(s0)
    80200568:	fcb43023          	sd	a1,-64(s0)
    8020056c:	fac43c23          	sd	a2,-72(s0)
    80200570:	fad43823          	sd	a3,-80(s0)
    80200574:	fae43423          	sd	a4,-88(s0)
    80200578:	faf43023          	sd	a5,-96(s0)
    8020057c:	f9043c23          	sd	a6,-104(s0)
    80200580:	f9143823          	sd	a7,-112(s0)
    80200584:	fb843503          	ld	a0,-72(s0)
    80200588:	fb043583          	ld	a1,-80(s0)
    8020058c:	fa843603          	ld	a2,-88(s0)
    80200590:	fa043683          	ld	a3,-96(s0)
    80200594:	f9843703          	ld	a4,-104(s0)
    80200598:	f9043783          	ld	a5,-112(s0)
    8020059c:	fc043803          	ld	a6,-64(s0)
    802005a0:	fc843883          	ld	a7,-56(s0)
    802005a4:	00000073          	ecall
    802005a8:	87aa                	mv	a5,a0
    802005aa:	fcf43823          	sd	a5,-48(s0)
    802005ae:	87ae                	mv	a5,a1
    802005b0:	fcf43c23          	sd	a5,-40(s0)
    802005b4:	fd043783          	ld	a5,-48(s0)
    802005b8:	fef43023          	sd	a5,-32(s0)
    802005bc:	fd843783          	ld	a5,-40(s0)
    802005c0:	fef43423          	sd	a5,-24(s0)
    802005c4:	fe043703          	ld	a4,-32(s0)
    802005c8:	fe843783          	ld	a5,-24(s0)
    802005cc:	833a                	mv	t1,a4
    802005ce:	83be                	mv	t2,a5
    802005d0:	871a                	mv	a4,t1
    802005d2:	879e                	mv	a5,t2
    802005d4:	853a                	mv	a0,a4
    802005d6:	85be                	mv	a1,a5
    802005d8:	70a6                	ld	ra,104(sp)
    802005da:	7406                	ld	s0,96(sp)
    802005dc:	6165                	addi	sp,sp,112
    802005de:	8082                	ret

00000000802005e0 <sbi_set_timer>:
    802005e0:	1101                	addi	sp,sp,-32
    802005e2:	ec06                	sd	ra,24(sp)
    802005e4:	e822                	sd	s0,16(sp)
    802005e6:	1000                	addi	s0,sp,32
    802005e8:	fea43423          	sd	a0,-24(s0)
    802005ec:	4881                	li	a7,0
    802005ee:	4801                	li	a6,0
    802005f0:	4781                	li	a5,0
    802005f2:	4701                	li	a4,0
    802005f4:	4681                	li	a3,0
    802005f6:	fe843603          	ld	a2,-24(s0)
    802005fa:	4581                	li	a1,0
    802005fc:	54495537          	lui	a0,0x54495
    80200600:	d4550513          	addi	a0,a0,-699 # 54494d45 <n+0x54494d25>
    80200604:	f59ff0ef          	jal	8020055c <sbi_ecall>
    80200608:	0001                	nop
    8020060a:	60e2                	ld	ra,24(sp)
    8020060c:	6442                	ld	s0,16(sp)
    8020060e:	6105                	addi	sp,sp,32
    80200610:	8082                	ret

0000000080200612 <sbi_console_putchar>:
    80200612:	1101                	addi	sp,sp,-32
    80200614:	ec06                	sd	ra,24(sp)
    80200616:	e822                	sd	s0,16(sp)
    80200618:	1000                	addi	s0,sp,32
    8020061a:	87aa                	mv	a5,a0
    8020061c:	fef407a3          	sb	a5,-17(s0)
    80200620:	fef40603          	lb	a2,-17(s0)
    80200624:	4881                	li	a7,0
    80200626:	4801                	li	a6,0
    80200628:	4781                	li	a5,0
    8020062a:	4701                	li	a4,0
    8020062c:	4681                	li	a3,0
    8020062e:	4581                	li	a1,0
    80200630:	4505                	li	a0,1
    80200632:	f2bff0ef          	jal	8020055c <sbi_ecall>
    80200636:	0001                	nop
    80200638:	60e2                	ld	ra,24(sp)
    8020063a:	6442                	ld	s0,16(sp)
    8020063c:	6105                	addi	sp,sp,32
    8020063e:	8082                	ret

0000000080200640 <sbi_shut_down>:
    80200640:	1101                	addi	sp,sp,-32
    80200642:	ec06                	sd	ra,24(sp)
    80200644:	e822                	sd	s0,16(sp)
    80200646:	1000                	addi	s0,sp,32
    80200648:	fea43423          	sd	a0,-24(s0)
    8020064c:	4881                	li	a7,0
    8020064e:	4801                	li	a6,0
    80200650:	4781                	li	a5,0
    80200652:	4701                	li	a4,0
    80200654:	fe843683          	ld	a3,-24(s0)
    80200658:	4601                	li	a2,0
    8020065a:	4581                	li	a1,0
    8020065c:	53525537          	lui	a0,0x53525
    80200660:	35450513          	addi	a0,a0,852 # 53525354 <n+0x53525334>
    80200664:	ef9ff0ef          	jal	8020055c <sbi_ecall>
    80200668:	0001                	nop
    8020066a:	60e2                	ld	ra,24(sp)
    8020066c:	6442                	ld	s0,16(sp)
    8020066e:	6105                	addi	sp,sp,32
    80200670:	8082                	ret

0000000080200672 <sbi_get_sbi_spec_version>:
    80200672:	1101                	addi	sp,sp,-32
    80200674:	ec06                	sd	ra,24(sp)
    80200676:	e822                	sd	s0,16(sp)
    80200678:	1000                	addi	s0,sp,32
    8020067a:	4881                	li	a7,0
    8020067c:	4801                	li	a6,0
    8020067e:	4781                	li	a5,0
    80200680:	4701                	li	a4,0
    80200682:	4681                	li	a3,0
    80200684:	4601                	li	a2,0
    80200686:	4581                	li	a1,0
    80200688:	4541                	li	a0,16
    8020068a:	ed3ff0ef          	jal	8020055c <sbi_ecall>
    8020068e:	872a                	mv	a4,a0
    80200690:	87ae                	mv	a5,a1
    80200692:	fee43023          	sd	a4,-32(s0)
    80200696:	fef43423          	sd	a5,-24(s0)
    8020069a:	fe843783          	ld	a5,-24(s0)
    8020069e:	85be                	mv	a1,a5
    802006a0:	00005517          	auipc	a0,0x5
    802006a4:	af850513          	addi	a0,a0,-1288 # 80205198 <rodata_start+0x198>
    802006a8:	09b000ef          	jal	80200f42 <printk>
    802006ac:	0001                	nop
    802006ae:	60e2                	ld	ra,24(sp)
    802006b0:	6442                	ld	s0,16(sp)
    802006b2:	6105                	addi	sp,sp,32
    802006b4:	8082                	ret

00000000802006b6 <sbi_getchar>:
    802006b6:	1101                	addi	sp,sp,-32
    802006b8:	ec06                	sd	ra,24(sp)
    802006ba:	e822                	sd	s0,16(sp)
    802006bc:	1000                	addi	s0,sp,32
    802006be:	4881                	li	a7,0
    802006c0:	4801                	li	a6,0
    802006c2:	4781                	li	a5,0
    802006c4:	4701                	li	a4,0
    802006c6:	4681                	li	a3,0
    802006c8:	4601                	li	a2,0
    802006ca:	4581                	li	a1,0
    802006cc:	4509                	li	a0,2
    802006ce:	e8fff0ef          	jal	8020055c <sbi_ecall>
    802006d2:	872a                	mv	a4,a0
    802006d4:	87ae                	mv	a5,a1
    802006d6:	fee43023          	sd	a4,-32(s0)
    802006da:	fef43423          	sd	a5,-24(s0)
    802006de:	fe843783          	ld	a5,-24(s0)
    802006e2:	2781                	sext.w	a5,a5
    802006e4:	853e                	mv	a0,a5
    802006e6:	60e2                	ld	ra,24(sp)
    802006e8:	6442                	ld	s0,16(sp)
    802006ea:	6105                	addi	sp,sp,32
    802006ec:	8082                	ret

00000000802006ee <print>:
    802006ee:	1101                	addi	sp,sp,-32
    802006f0:	ec06                	sd	ra,24(sp)
    802006f2:	e822                	sd	s0,16(sp)
    802006f4:	1000                	addi	s0,sp,32
    802006f6:	fea43423          	sd	a0,-24(s0)
    802006fa:	a821                	j	80200712 <print+0x24>
    802006fc:	fe843783          	ld	a5,-24(s0)
    80200700:	00178713          	addi	a4,a5,1
    80200704:	fee43423          	sd	a4,-24(s0)
    80200708:	00078783          	lb	a5,0(a5)
    8020070c:	853e                	mv	a0,a5
    8020070e:	f05ff0ef          	jal	80200612 <sbi_console_putchar>
    80200712:	fe843783          	ld	a5,-24(s0)
    80200716:	00078783          	lb	a5,0(a5)
    8020071a:	f3ed                	bnez	a5,802006fc <print+0xe>
    8020071c:	0001                	nop
    8020071e:	0001                	nop
    80200720:	60e2                	ld	ra,24(sp)
    80200722:	6442                	ld	s0,16(sp)
    80200724:	6105                	addi	sp,sp,32
    80200726:	8082                	ret

0000000080200728 <println>:
    80200728:	1101                	addi	sp,sp,-32
    8020072a:	ec06                	sd	ra,24(sp)
    8020072c:	e822                	sd	s0,16(sp)
    8020072e:	1000                	addi	s0,sp,32
    80200730:	fea43423          	sd	a0,-24(s0)
    80200734:	fe843503          	ld	a0,-24(s0)
    80200738:	fb7ff0ef          	jal	802006ee <print>
    8020073c:	4529                	li	a0,10
    8020073e:	ed5ff0ef          	jal	80200612 <sbi_console_putchar>
    80200742:	0001                	nop
    80200744:	60e2                	ld	ra,24(sp)
    80200746:	6442                	ld	s0,16(sp)
    80200748:	6105                	addi	sp,sp,32
    8020074a:	8082                	ret

000000008020074c <panic>:
    8020074c:	1101                	addi	sp,sp,-32
    8020074e:	ec06                	sd	ra,24(sp)
    80200750:	e822                	sd	s0,16(sp)
    80200752:	1000                	addi	s0,sp,32
    80200754:	fea43423          	sd	a0,-24(s0)
    80200758:	4529                	li	a0,10
    8020075a:	eb9ff0ef          	jal	80200612 <sbi_console_putchar>
    8020075e:	00005517          	auipc	a0,0x5
    80200762:	a5250513          	addi	a0,a0,-1454 # 802051b0 <rodata_start+0x1b0>
    80200766:	f89ff0ef          	jal	802006ee <print>
    8020076a:	fe843503          	ld	a0,-24(s0)
    8020076e:	fbbff0ef          	jal	80200728 <println>
    80200772:	4505                	li	a0,1
    80200774:	ecdff0ef          	jal	80200640 <sbi_shut_down>
    80200778:	0001                	nop
    8020077a:	60e2                	ld	ra,24(sp)
    8020077c:	6442                	ld	s0,16(sp)
    8020077e:	6105                	addi	sp,sp,32
    80200780:	8082                	ret

0000000080200782 <mini_strlen>:
    80200782:	7179                	addi	sp,sp,-48
    80200784:	f406                	sd	ra,40(sp)
    80200786:	f022                	sd	s0,32(sp)
    80200788:	1800                	addi	s0,sp,48
    8020078a:	fca43c23          	sd	a0,-40(s0)
    8020078e:	fe042623          	sw	zero,-20(s0)
    80200792:	a031                	j	8020079e <mini_strlen+0x1c>
    80200794:	fec42783          	lw	a5,-20(s0)
    80200798:	2785                	addiw	a5,a5,1
    8020079a:	fef42623          	sw	a5,-20(s0)
    8020079e:	fec46783          	lwu	a5,-20(s0)
    802007a2:	fd843703          	ld	a4,-40(s0)
    802007a6:	97ba                	add	a5,a5,a4
    802007a8:	00078783          	lb	a5,0(a5)
    802007ac:	f7e5                	bnez	a5,80200794 <mini_strlen+0x12>
    802007ae:	fec42783          	lw	a5,-20(s0)
    802007b2:	853e                	mv	a0,a5
    802007b4:	70a2                	ld	ra,40(sp)
    802007b6:	7402                	ld	s0,32(sp)
    802007b8:	6145                	addi	sp,sp,48
    802007ba:	8082                	ret

00000000802007bc <mini_itoa>:
    802007bc:	715d                	addi	sp,sp,-80
    802007be:	e486                	sd	ra,72(sp)
    802007c0:	e0a2                	sd	s0,64(sp)
    802007c2:	0880                	addi	s0,sp,80
    802007c4:	fca43423          	sd	a0,-56(s0)
    802007c8:	fae43823          	sd	a4,-80(s0)
    802007cc:	873e                	mv	a4,a5
    802007ce:	87ae                	mv	a5,a1
    802007d0:	fcf42223          	sw	a5,-60(s0)
    802007d4:	87b2                	mv	a5,a2
    802007d6:	fcf42023          	sw	a5,-64(s0)
    802007da:	87b6                	mv	a5,a3
    802007dc:	faf42e23          	sw	a5,-68(s0)
    802007e0:	87ba                	mv	a5,a4
    802007e2:	faf42c23          	sw	a5,-72(s0)
    802007e6:	fb043783          	ld	a5,-80(s0)
    802007ea:	fef43423          	sd	a5,-24(s0)
    802007ee:	fe042223          	sw	zero,-28(s0)
    802007f2:	fc442783          	lw	a5,-60(s0)
    802007f6:	0007871b          	sext.w	a4,a5
    802007fa:	47c1                	li	a5,16
    802007fc:	00e7f463          	bgeu	a5,a4,80200804 <mini_itoa+0x48>
    80200800:	4781                	li	a5,0
    80200802:	aaf9                	j	802009e0 <mini_itoa+0x224>
    80200804:	fc843783          	ld	a5,-56(s0)
    80200808:	0007df63          	bgez	a5,80200826 <mini_itoa+0x6a>
    8020080c:	fbc42783          	lw	a5,-68(s0)
    80200810:	2781                	sext.w	a5,a5
    80200812:	eb91                	bnez	a5,80200826 <mini_itoa+0x6a>
    80200814:	4785                	li	a5,1
    80200816:	fef42223          	sw	a5,-28(s0)
    8020081a:	fc843783          	ld	a5,-56(s0)
    8020081e:	40f007b3          	neg	a5,a5
    80200822:	fcf43423          	sd	a5,-56(s0)
    80200826:	fc042e23          	sw	zero,-36(s0)
    8020082a:	fbc42783          	lw	a5,-68(s0)
    8020082e:	2781                	sext.w	a5,a5
    80200830:	cb91                	beqz	a5,80200844 <mini_itoa+0x88>
    80200832:	fc843703          	ld	a4,-56(s0)
    80200836:	fc446783          	lwu	a5,-60(s0)
    8020083a:	02f777b3          	remu	a5,a4,a5
    8020083e:	fcf42e23          	sw	a5,-36(s0)
    80200842:	a809                	j	80200854 <mini_itoa+0x98>
    80200844:	fc446783          	lwu	a5,-60(s0)
    80200848:	fc843703          	ld	a4,-56(s0)
    8020084c:	02f767b3          	rem	a5,a4,a5
    80200850:	fcf42e23          	sw	a5,-36(s0)
    80200854:	fdc42783          	lw	a5,-36(s0)
    80200858:	0007871b          	sext.w	a4,a5
    8020085c:	47a5                	li	a5,9
    8020085e:	00e7cb63          	blt	a5,a4,80200874 <mini_itoa+0xb8>
    80200862:	fdc42783          	lw	a5,-36(s0)
    80200866:	0ff7f793          	zext.b	a5,a5
    8020086a:	0307879b          	addiw	a5,a5,48
    8020086e:	0ff7f713          	zext.b	a4,a5
    80200872:	a025                	j	8020089a <mini_itoa+0xde>
    80200874:	fc042783          	lw	a5,-64(s0)
    80200878:	2781                	sext.w	a5,a5
    8020087a:	c781                	beqz	a5,80200882 <mini_itoa+0xc6>
    8020087c:	04100793          	li	a5,65
    80200880:	a019                	j	80200886 <mini_itoa+0xca>
    80200882:	06100793          	li	a5,97
    80200886:	fdc42703          	lw	a4,-36(s0)
    8020088a:	0ff77713          	zext.b	a4,a4
    8020088e:	9fb9                	addw	a5,a5,a4
    80200890:	0ff7f793          	zext.b	a5,a5
    80200894:	37d9                	addiw	a5,a5,-10
    80200896:	0ff7f713          	zext.b	a4,a5
    8020089a:	fe843783          	ld	a5,-24(s0)
    8020089e:	00178693          	addi	a3,a5,1
    802008a2:	fed43423          	sd	a3,-24(s0)
    802008a6:	00e78023          	sb	a4,0(a5)
    802008aa:	fbc42783          	lw	a5,-68(s0)
    802008ae:	2781                	sext.w	a5,a5
    802008b0:	cb91                	beqz	a5,802008c4 <mini_itoa+0x108>
    802008b2:	fc843703          	ld	a4,-56(s0)
    802008b6:	fc446783          	lwu	a5,-60(s0)
    802008ba:	02f757b3          	divu	a5,a4,a5
    802008be:	fcf43423          	sd	a5,-56(s0)
    802008c2:	a809                	j	802008d4 <mini_itoa+0x118>
    802008c4:	fc446783          	lwu	a5,-60(s0)
    802008c8:	fc843703          	ld	a4,-56(s0)
    802008cc:	02f747b3          	div	a5,a4,a5
    802008d0:	fcf43423          	sd	a5,-56(s0)
    802008d4:	fc843783          	ld	a5,-56(s0)
    802008d8:	f7b9                	bnez	a5,80200826 <mini_itoa+0x6a>
    802008da:	fe843703          	ld	a4,-24(s0)
    802008de:	fb043783          	ld	a5,-80(s0)
    802008e2:	40f707b3          	sub	a5,a4,a5
    802008e6:	fef42023          	sw	a5,-32(s0)
    802008ea:	a005                	j	8020090a <mini_itoa+0x14e>
    802008ec:	fe843783          	ld	a5,-24(s0)
    802008f0:	00178713          	addi	a4,a5,1
    802008f4:	fee43423          	sd	a4,-24(s0)
    802008f8:	03000713          	li	a4,48
    802008fc:	00e78023          	sb	a4,0(a5)
    80200900:	fe042783          	lw	a5,-32(s0)
    80200904:	2785                	addiw	a5,a5,1
    80200906:	fef42023          	sw	a5,-32(s0)
    8020090a:	fe042783          	lw	a5,-32(s0)
    8020090e:	873e                	mv	a4,a5
    80200910:	fb842783          	lw	a5,-72(s0)
    80200914:	2701                	sext.w	a4,a4
    80200916:	2781                	sext.w	a5,a5
    80200918:	fcf76ae3          	bltu	a4,a5,802008ec <mini_itoa+0x130>
    8020091c:	fe442783          	lw	a5,-28(s0)
    80200920:	2781                	sext.w	a5,a5
    80200922:	cb99                	beqz	a5,80200938 <mini_itoa+0x17c>
    80200924:	fe843783          	ld	a5,-24(s0)
    80200928:	00178713          	addi	a4,a5,1
    8020092c:	fee43423          	sd	a4,-24(s0)
    80200930:	02d00713          	li	a4,45
    80200934:	00e78023          	sb	a4,0(a5)
    80200938:	fe843783          	ld	a5,-24(s0)
    8020093c:	00078023          	sb	zero,0(a5)
    80200940:	fe843703          	ld	a4,-24(s0)
    80200944:	fb043783          	ld	a5,-80(s0)
    80200948:	40f707b3          	sub	a5,a4,a5
    8020094c:	fcf42c23          	sw	a5,-40(s0)
    80200950:	fe042023          	sw	zero,-32(s0)
    80200954:	a895                	j	802009c8 <mini_itoa+0x20c>
    80200956:	fe046783          	lwu	a5,-32(s0)
    8020095a:	fb043703          	ld	a4,-80(s0)
    8020095e:	97ba                	add	a5,a5,a4
    80200960:	0007c783          	lbu	a5,0(a5)
    80200964:	fcf40ba3          	sb	a5,-41(s0)
    80200968:	fd842783          	lw	a5,-40(s0)
    8020096c:	873e                	mv	a4,a5
    8020096e:	fe042783          	lw	a5,-32(s0)
    80200972:	40f707bb          	subw	a5,a4,a5
    80200976:	2781                	sext.w	a5,a5
    80200978:	37fd                	addiw	a5,a5,-1
    8020097a:	2781                	sext.w	a5,a5
    8020097c:	1782                	slli	a5,a5,0x20
    8020097e:	9381                	srli	a5,a5,0x20
    80200980:	fb043703          	ld	a4,-80(s0)
    80200984:	973e                	add	a4,a4,a5
    80200986:	fe046783          	lwu	a5,-32(s0)
    8020098a:	fb043683          	ld	a3,-80(s0)
    8020098e:	97b6                	add	a5,a5,a3
    80200990:	00074703          	lbu	a4,0(a4) # 1000 <n+0xfe0>
    80200994:	00e78023          	sb	a4,0(a5)
    80200998:	fd842783          	lw	a5,-40(s0)
    8020099c:	873e                	mv	a4,a5
    8020099e:	fe042783          	lw	a5,-32(s0)
    802009a2:	40f707bb          	subw	a5,a4,a5
    802009a6:	2781                	sext.w	a5,a5
    802009a8:	37fd                	addiw	a5,a5,-1
    802009aa:	2781                	sext.w	a5,a5
    802009ac:	1782                	slli	a5,a5,0x20
    802009ae:	9381                	srli	a5,a5,0x20
    802009b0:	fb043703          	ld	a4,-80(s0)
    802009b4:	97ba                	add	a5,a5,a4
    802009b6:	fd744703          	lbu	a4,-41(s0)
    802009ba:	00e78023          	sb	a4,0(a5)
    802009be:	fe042783          	lw	a5,-32(s0)
    802009c2:	2785                	addiw	a5,a5,1
    802009c4:	fef42023          	sw	a5,-32(s0)
    802009c8:	fd842783          	lw	a5,-40(s0)
    802009cc:	0017d79b          	srliw	a5,a5,0x1
    802009d0:	2781                	sext.w	a5,a5
    802009d2:	fe042703          	lw	a4,-32(s0)
    802009d6:	2701                	sext.w	a4,a4
    802009d8:	f6f76fe3          	bltu	a4,a5,80200956 <mini_itoa+0x19a>
    802009dc:	fd842783          	lw	a5,-40(s0)
    802009e0:	853e                	mv	a0,a5
    802009e2:	60a6                	ld	ra,72(sp)
    802009e4:	6406                	ld	s0,64(sp)
    802009e6:	6161                	addi	sp,sp,80
    802009e8:	8082                	ret

00000000802009ea <_putc>:
    802009ea:	1101                	addi	sp,sp,-32
    802009ec:	ec06                	sd	ra,24(sp)
    802009ee:	e822                	sd	s0,16(sp)
    802009f0:	1000                	addi	s0,sp,32
    802009f2:	87aa                	mv	a5,a0
    802009f4:	feb43023          	sd	a1,-32(s0)
    802009f8:	fef42623          	sw	a5,-20(s0)
    802009fc:	fe043783          	ld	a5,-32(s0)
    80200a00:	6798                	ld	a4,8(a5)
    80200a02:	fe043783          	ld	a5,-32(s0)
    80200a06:	639c                	ld	a5,0(a5)
    80200a08:	40f707b3          	sub	a5,a4,a5
    80200a0c:	2781                	sext.w	a5,a5
    80200a0e:	2785                	addiw	a5,a5,1
    80200a10:	0007871b          	sext.w	a4,a5
    80200a14:	fe043783          	ld	a5,-32(s0)
    80200a18:	4b9c                	lw	a5,16(a5)
    80200a1a:	00f76463          	bltu	a4,a5,80200a22 <_putc+0x38>
    80200a1e:	4781                	li	a5,0
    80200a20:	a02d                	j	80200a4a <_putc+0x60>
    80200a22:	fe043783          	ld	a5,-32(s0)
    80200a26:	679c                	ld	a5,8(a5)
    80200a28:	00178693          	addi	a3,a5,1
    80200a2c:	fe043703          	ld	a4,-32(s0)
    80200a30:	e714                	sd	a3,8(a4)
    80200a32:	fec42703          	lw	a4,-20(s0)
    80200a36:	0ff77713          	zext.b	a4,a4
    80200a3a:	00e78023          	sb	a4,0(a5)
    80200a3e:	fe043783          	ld	a5,-32(s0)
    80200a42:	679c                	ld	a5,8(a5)
    80200a44:	00078023          	sb	zero,0(a5)
    80200a48:	4785                	li	a5,1
    80200a4a:	853e                	mv	a0,a5
    80200a4c:	60e2                	ld	ra,24(sp)
    80200a4e:	6442                	ld	s0,16(sp)
    80200a50:	6105                	addi	sp,sp,32
    80200a52:	8082                	ret

0000000080200a54 <_puts>:
    80200a54:	7139                	addi	sp,sp,-64
    80200a56:	fc06                	sd	ra,56(sp)
    80200a58:	f822                	sd	s0,48(sp)
    80200a5a:	0080                	addi	s0,sp,64
    80200a5c:	fca43c23          	sd	a0,-40(s0)
    80200a60:	87ae                	mv	a5,a1
    80200a62:	fcc43423          	sd	a2,-56(s0)
    80200a66:	fcf42a23          	sw	a5,-44(s0)
    80200a6a:	fc843783          	ld	a5,-56(s0)
    80200a6e:	4b9c                	lw	a5,16(a5)
    80200a70:	02079713          	slli	a4,a5,0x20
    80200a74:	9301                	srli	a4,a4,0x20
    80200a76:	fc843783          	ld	a5,-56(s0)
    80200a7a:	6794                	ld	a3,8(a5)
    80200a7c:	fc843783          	ld	a5,-56(s0)
    80200a80:	639c                	ld	a5,0(a5)
    80200a82:	40f687b3          	sub	a5,a3,a5
    80200a86:	8f1d                	sub	a4,a4,a5
    80200a88:	fd446783          	lwu	a5,-44(s0)
    80200a8c:	02e7c463          	blt	a5,a4,80200ab4 <_puts+0x60>
    80200a90:	fc843783          	ld	a5,-56(s0)
    80200a94:	4b98                	lw	a4,16(a5)
    80200a96:	fc843783          	ld	a5,-56(s0)
    80200a9a:	6794                	ld	a3,8(a5)
    80200a9c:	fc843783          	ld	a5,-56(s0)
    80200aa0:	639c                	ld	a5,0(a5)
    80200aa2:	40f687b3          	sub	a5,a3,a5
    80200aa6:	2781                	sext.w	a5,a5
    80200aa8:	40f707bb          	subw	a5,a4,a5
    80200aac:	2781                	sext.w	a5,a5
    80200aae:	37fd                	addiw	a5,a5,-1
    80200ab0:	fcf42a23          	sw	a5,-44(s0)
    80200ab4:	fe042623          	sw	zero,-20(s0)
    80200ab8:	a03d                	j	80200ae6 <_puts+0x92>
    80200aba:	fec46783          	lwu	a5,-20(s0)
    80200abe:	fd843703          	ld	a4,-40(s0)
    80200ac2:	973e                	add	a4,a4,a5
    80200ac4:	fc843783          	ld	a5,-56(s0)
    80200ac8:	679c                	ld	a5,8(a5)
    80200aca:	00178613          	addi	a2,a5,1
    80200ace:	fc843683          	ld	a3,-56(s0)
    80200ad2:	e690                	sd	a2,8(a3)
    80200ad4:	00074703          	lbu	a4,0(a4)
    80200ad8:	00e78023          	sb	a4,0(a5)
    80200adc:	fec42783          	lw	a5,-20(s0)
    80200ae0:	2785                	addiw	a5,a5,1
    80200ae2:	fef42623          	sw	a5,-20(s0)
    80200ae6:	fec42783          	lw	a5,-20(s0)
    80200aea:	873e                	mv	a4,a5
    80200aec:	fd442783          	lw	a5,-44(s0)
    80200af0:	2701                	sext.w	a4,a4
    80200af2:	2781                	sext.w	a5,a5
    80200af4:	fcf763e3          	bltu	a4,a5,80200aba <_puts+0x66>
    80200af8:	fc843783          	ld	a5,-56(s0)
    80200afc:	679c                	ld	a5,8(a5)
    80200afe:	00078023          	sb	zero,0(a5)
    80200b02:	fd442783          	lw	a5,-44(s0)
    80200b06:	853e                	mv	a0,a5
    80200b08:	70e2                	ld	ra,56(sp)
    80200b0a:	7442                	ld	s0,48(sp)
    80200b0c:	6121                	addi	sp,sp,64
    80200b0e:	8082                	ret

0000000080200b10 <mini_vsnprintf>:
    80200b10:	7119                	addi	sp,sp,-128
    80200b12:	fc86                	sd	ra,120(sp)
    80200b14:	f8a2                	sd	s0,112(sp)
    80200b16:	0100                	addi	s0,sp,128
    80200b18:	f8a43c23          	sd	a0,-104(s0)
    80200b1c:	87ae                	mv	a5,a1
    80200b1e:	f8c43423          	sd	a2,-120(s0)
    80200b22:	f8d43023          	sd	a3,-128(s0)
    80200b26:	f8f42a23          	sw	a5,-108(s0)
    80200b2a:	f9843783          	ld	a5,-104(s0)
    80200b2e:	fcf43023          	sd	a5,-64(s0)
    80200b32:	f9843783          	ld	a5,-104(s0)
    80200b36:	fcf43423          	sd	a5,-56(s0)
    80200b3a:	f9442783          	lw	a5,-108(s0)
    80200b3e:	fcf42823          	sw	a5,-48(s0)
    80200b42:	a4f1                	j	80200e0e <mini_vsnprintf+0x2fe>
    80200b44:	fc843703          	ld	a4,-56(s0)
    80200b48:	fc043783          	ld	a5,-64(s0)
    80200b4c:	40f707b3          	sub	a5,a4,a5
    80200b50:	2781                	sext.w	a5,a5
    80200b52:	2785                	addiw	a5,a5,1
    80200b54:	0007871b          	sext.w	a4,a5
    80200b58:	fd042783          	lw	a5,-48(s0)
    80200b5c:	2cf77a63          	bgeu	a4,a5,80200e30 <mini_vsnprintf+0x320>
    80200b60:	fef44783          	lbu	a5,-17(s0)
    80200b64:	0ff7f713          	zext.b	a4,a5
    80200b68:	02500793          	li	a5,37
    80200b6c:	00f70c63          	beq	a4,a5,80200b84 <mini_vsnprintf+0x74>
    80200b70:	fef44783          	lbu	a5,-17(s0)
    80200b74:	2781                	sext.w	a5,a5
    80200b76:	fc040713          	addi	a4,s0,-64
    80200b7a:	85ba                	mv	a1,a4
    80200b7c:	853e                	mv	a0,a5
    80200b7e:	e6dff0ef          	jal	802009ea <_putc>
    80200b82:	a471                	j	80200e0e <mini_vsnprintf+0x2fe>
    80200b84:	fe040723          	sb	zero,-18(s0)
    80200b88:	fe042423          	sw	zero,-24(s0)
    80200b8c:	f8843783          	ld	a5,-120(s0)
    80200b90:	00178713          	addi	a4,a5,1
    80200b94:	f8e43423          	sd	a4,-120(s0)
    80200b98:	0007c783          	lbu	a5,0(a5)
    80200b9c:	fef407a3          	sb	a5,-17(s0)
    80200ba0:	fef44783          	lbu	a5,-17(s0)
    80200ba4:	0ff7f713          	zext.b	a4,a5
    80200ba8:	03000793          	li	a5,48
    80200bac:	06f71c63          	bne	a4,a5,80200c24 <mini_vsnprintf+0x114>
    80200bb0:	a899                	j	80200c06 <mini_vsnprintf+0xf6>
    80200bb2:	fef44783          	lbu	a5,-17(s0)
    80200bb6:	0ff7f793          	zext.b	a5,a5
    80200bba:	26078d63          	beqz	a5,80200e34 <mini_vsnprintf+0x324>
    80200bbe:	fef44783          	lbu	a5,-17(s0)
    80200bc2:	0ff7f713          	zext.b	a4,a5
    80200bc6:	02f00793          	li	a5,47
    80200bca:	04e7fd63          	bgeu	a5,a4,80200c24 <mini_vsnprintf+0x114>
    80200bce:	fef44783          	lbu	a5,-17(s0)
    80200bd2:	0ff7f713          	zext.b	a4,a5
    80200bd6:	03900793          	li	a5,57
    80200bda:	04e7e563          	bltu	a5,a4,80200c24 <mini_vsnprintf+0x114>
    80200bde:	fee44783          	lbu	a5,-18(s0)
    80200be2:	873e                	mv	a4,a5
    80200be4:	87ba                	mv	a5,a4
    80200be6:	0027979b          	slliw	a5,a5,0x2
    80200bea:	9fb9                	addw	a5,a5,a4
    80200bec:	0017979b          	slliw	a5,a5,0x1
    80200bf0:	0ff7f793          	zext.b	a5,a5
    80200bf4:	fef44703          	lbu	a4,-17(s0)
    80200bf8:	9fb9                	addw	a5,a5,a4
    80200bfa:	0ff7f793          	zext.b	a5,a5
    80200bfe:	fd07879b          	addiw	a5,a5,-48
    80200c02:	fef40723          	sb	a5,-18(s0)
    80200c06:	f8843783          	ld	a5,-120(s0)
    80200c0a:	00178713          	addi	a4,a5,1
    80200c0e:	f8e43423          	sd	a4,-120(s0)
    80200c12:	0007c783          	lbu	a5,0(a5)
    80200c16:	fef407a3          	sb	a5,-17(s0)
    80200c1a:	fef44783          	lbu	a5,-17(s0)
    80200c1e:	0ff7f793          	zext.b	a5,a5
    80200c22:	fbc1                	bnez	a5,80200bb2 <mini_vsnprintf+0xa2>
    80200c24:	fef44783          	lbu	a5,-17(s0)
    80200c28:	0ff7f713          	zext.b	a4,a5
    80200c2c:	06c00793          	li	a5,108
    80200c30:	00f71f63          	bne	a4,a5,80200c4e <mini_vsnprintf+0x13e>
    80200c34:	4785                	li	a5,1
    80200c36:	fef42423          	sw	a5,-24(s0)
    80200c3a:	f8843783          	ld	a5,-120(s0)
    80200c3e:	00178713          	addi	a4,a5,1
    80200c42:	f8e43423          	sd	a4,-120(s0)
    80200c46:	0007c783          	lbu	a5,0(a5)
    80200c4a:	fef407a3          	sb	a5,-17(s0)
    80200c4e:	fef44783          	lbu	a5,-17(s0)
    80200c52:	2781                	sext.w	a5,a5
    80200c54:	1e078263          	beqz	a5,80200e38 <mini_vsnprintf+0x328>
    80200c58:	1a07c163          	bltz	a5,80200dfa <mini_vsnprintf+0x2ea>
    80200c5c:	07800713          	li	a4,120
    80200c60:	18f74d63          	blt	a4,a5,80200dfa <mini_vsnprintf+0x2ea>
    80200c64:	05800713          	li	a4,88
    80200c68:	18e7c963          	blt	a5,a4,80200dfa <mini_vsnprintf+0x2ea>
    80200c6c:	fa87879b          	addiw	a5,a5,-88
    80200c70:	86be                	mv	a3,a5
    80200c72:	0006871b          	sext.w	a4,a3
    80200c76:	02000793          	li	a5,32
    80200c7a:	18e7e063          	bltu	a5,a4,80200dfa <mini_vsnprintf+0x2ea>
    80200c7e:	02069793          	slli	a5,a3,0x20
    80200c82:	9381                	srli	a5,a5,0x20
    80200c84:	00279713          	slli	a4,a5,0x2
    80200c88:	00004797          	auipc	a5,0x4
    80200c8c:	53478793          	addi	a5,a5,1332 # 802051bc <rodata_start+0x1bc>
    80200c90:	97ba                	add	a5,a5,a4
    80200c92:	439c                	lw	a5,0(a5)
    80200c94:	0007871b          	sext.w	a4,a5
    80200c98:	00004797          	auipc	a5,0x4
    80200c9c:	52478793          	addi	a5,a5,1316 # 802051bc <rodata_start+0x1bc>
    80200ca0:	97ba                	add	a5,a5,a4
    80200ca2:	8782                	jr	a5
    80200ca4:	4785                	li	a5,1
    80200ca6:	fef42423          	sw	a5,-24(s0)
    80200caa:	a295                	j	80200e0e <mini_vsnprintf+0x2fe>
    80200cac:	fe842783          	lw	a5,-24(s0)
    80200cb0:	2781                	sext.w	a5,a5
    80200cb2:	ef81                	bnez	a5,80200cca <mini_vsnprintf+0x1ba>
    80200cb4:	f8043783          	ld	a5,-128(s0)
    80200cb8:	00878713          	addi	a4,a5,8
    80200cbc:	f8e43023          	sd	a4,-128(s0)
    80200cc0:	439c                	lw	a5,0(a5)
    80200cc2:	02079513          	slli	a0,a5,0x20
    80200cc6:	9101                	srli	a0,a0,0x20
    80200cc8:	a809                	j	80200cda <mini_vsnprintf+0x1ca>
    80200cca:	f8043783          	ld	a5,-128(s0)
    80200cce:	00878713          	addi	a4,a5,8
    80200cd2:	f8e43023          	sd	a4,-128(s0)
    80200cd6:	639c                	ld	a5,0(a5)
    80200cd8:	853e                	mv	a0,a5
    80200cda:	fef44783          	lbu	a5,-17(s0)
    80200cde:	0007871b          	sext.w	a4,a5
    80200ce2:	07500793          	li	a5,117
    80200ce6:	40f707b3          	sub	a5,a4,a5
    80200cea:	0017b793          	seqz	a5,a5
    80200cee:	0ff7f793          	zext.b	a5,a5
    80200cf2:	0007869b          	sext.w	a3,a5
    80200cf6:	fee44783          	lbu	a5,-18(s0)
    80200cfa:	2781                	sext.w	a5,a5
    80200cfc:	fa840713          	addi	a4,s0,-88
    80200d00:	4601                	li	a2,0
    80200d02:	45a9                	li	a1,10
    80200d04:	ab9ff0ef          	jal	802007bc <mini_itoa>
    80200d08:	87aa                	mv	a5,a0
    80200d0a:	fcf42e23          	sw	a5,-36(s0)
    80200d0e:	fc040693          	addi	a3,s0,-64
    80200d12:	fdc42703          	lw	a4,-36(s0)
    80200d16:	fa840793          	addi	a5,s0,-88
    80200d1a:	8636                	mv	a2,a3
    80200d1c:	85ba                	mv	a1,a4
    80200d1e:	853e                	mv	a0,a5
    80200d20:	d35ff0ef          	jal	80200a54 <_puts>
    80200d24:	fe042423          	sw	zero,-24(s0)
    80200d28:	a0dd                	j	80200e0e <mini_vsnprintf+0x2fe>
    80200d2a:	fe842783          	lw	a5,-24(s0)
    80200d2e:	2781                	sext.w	a5,a5
    80200d30:	ef81                	bnez	a5,80200d48 <mini_vsnprintf+0x238>
    80200d32:	f8043783          	ld	a5,-128(s0)
    80200d36:	00878713          	addi	a4,a5,8
    80200d3a:	f8e43023          	sd	a4,-128(s0)
    80200d3e:	439c                	lw	a5,0(a5)
    80200d40:	02079513          	slli	a0,a5,0x20
    80200d44:	9101                	srli	a0,a0,0x20
    80200d46:	a809                	j	80200d58 <mini_vsnprintf+0x248>
    80200d48:	f8043783          	ld	a5,-128(s0)
    80200d4c:	00878713          	addi	a4,a5,8
    80200d50:	f8e43023          	sd	a4,-128(s0)
    80200d54:	639c                	ld	a5,0(a5)
    80200d56:	853e                	mv	a0,a5
    80200d58:	fef44783          	lbu	a5,-17(s0)
    80200d5c:	0007871b          	sext.w	a4,a5
    80200d60:	05800793          	li	a5,88
    80200d64:	40f707b3          	sub	a5,a4,a5
    80200d68:	0017b793          	seqz	a5,a5
    80200d6c:	0ff7f793          	zext.b	a5,a5
    80200d70:	0007861b          	sext.w	a2,a5
    80200d74:	fee44783          	lbu	a5,-18(s0)
    80200d78:	2781                	sext.w	a5,a5
    80200d7a:	fa840713          	addi	a4,s0,-88
    80200d7e:	4685                	li	a3,1
    80200d80:	45c1                	li	a1,16
    80200d82:	a3bff0ef          	jal	802007bc <mini_itoa>
    80200d86:	87aa                	mv	a5,a0
    80200d88:	fcf42e23          	sw	a5,-36(s0)
    80200d8c:	fc040693          	addi	a3,s0,-64
    80200d90:	fdc42703          	lw	a4,-36(s0)
    80200d94:	fa840793          	addi	a5,s0,-88
    80200d98:	8636                	mv	a2,a3
    80200d9a:	85ba                	mv	a1,a4
    80200d9c:	853e                	mv	a0,a5
    80200d9e:	cb7ff0ef          	jal	80200a54 <_puts>
    80200da2:	fe042423          	sw	zero,-24(s0)
    80200da6:	a0a5                	j	80200e0e <mini_vsnprintf+0x2fe>
    80200da8:	f8043783          	ld	a5,-128(s0)
    80200dac:	00878713          	addi	a4,a5,8
    80200db0:	f8e43023          	sd	a4,-128(s0)
    80200db4:	439c                	lw	a5,0(a5)
    80200db6:	0ff7f793          	zext.b	a5,a5
    80200dba:	2781                	sext.w	a5,a5
    80200dbc:	fc040713          	addi	a4,s0,-64
    80200dc0:	85ba                	mv	a1,a4
    80200dc2:	853e                	mv	a0,a5
    80200dc4:	c27ff0ef          	jal	802009ea <_putc>
    80200dc8:	a099                	j	80200e0e <mini_vsnprintf+0x2fe>
    80200dca:	f8043783          	ld	a5,-128(s0)
    80200dce:	00878713          	addi	a4,a5,8
    80200dd2:	f8e43023          	sd	a4,-128(s0)
    80200dd6:	639c                	ld	a5,0(a5)
    80200dd8:	fef43023          	sd	a5,-32(s0)
    80200ddc:	fe043503          	ld	a0,-32(s0)
    80200de0:	9a3ff0ef          	jal	80200782 <mini_strlen>
    80200de4:	87aa                	mv	a5,a0
    80200de6:	873e                	mv	a4,a5
    80200de8:	fc040793          	addi	a5,s0,-64
    80200dec:	863e                	mv	a2,a5
    80200dee:	85ba                	mv	a1,a4
    80200df0:	fe043503          	ld	a0,-32(s0)
    80200df4:	c61ff0ef          	jal	80200a54 <_puts>
    80200df8:	a819                	j	80200e0e <mini_vsnprintf+0x2fe>
    80200dfa:	fef44783          	lbu	a5,-17(s0)
    80200dfe:	2781                	sext.w	a5,a5
    80200e00:	fc040713          	addi	a4,s0,-64
    80200e04:	85ba                	mv	a1,a4
    80200e06:	853e                	mv	a0,a5
    80200e08:	be3ff0ef          	jal	802009ea <_putc>
    80200e0c:	0001                	nop
    80200e0e:	f8843783          	ld	a5,-120(s0)
    80200e12:	00178713          	addi	a4,a5,1
    80200e16:	f8e43423          	sd	a4,-120(s0)
    80200e1a:	0007c783          	lbu	a5,0(a5)
    80200e1e:	fef407a3          	sb	a5,-17(s0)
    80200e22:	fef44783          	lbu	a5,-17(s0)
    80200e26:	0ff7f793          	zext.b	a5,a5
    80200e2a:	d0079de3          	bnez	a5,80200b44 <mini_vsnprintf+0x34>
    80200e2e:	a031                	j	80200e3a <mini_vsnprintf+0x32a>
    80200e30:	0001                	nop
    80200e32:	a021                	j	80200e3a <mini_vsnprintf+0x32a>
    80200e34:	0001                	nop
    80200e36:	a011                	j	80200e3a <mini_vsnprintf+0x32a>
    80200e38:	0001                	nop
    80200e3a:	fc843703          	ld	a4,-56(s0)
    80200e3e:	fc043783          	ld	a5,-64(s0)
    80200e42:	40f707b3          	sub	a5,a4,a5
    80200e46:	2781                	sext.w	a5,a5
    80200e48:	853e                	mv	a0,a5
    80200e4a:	70e6                	ld	ra,120(sp)
    80200e4c:	7446                	ld	s0,112(sp)
    80200e4e:	6109                	addi	sp,sp,128
    80200e50:	8082                	ret

0000000080200e52 <_vprintk>:
    80200e52:	7129                	addi	sp,sp,-320
    80200e54:	fe06                	sd	ra,312(sp)
    80200e56:	fa22                	sd	s0,304(sp)
    80200e58:	0280                	addi	s0,sp,320
    80200e5a:	eca43c23          	sd	a0,-296(s0)
    80200e5e:	ecb43823          	sd	a1,-304(s0)
    80200e62:	ecc43423          	sd	a2,-312(s0)
    80200e66:	ed043783          	ld	a5,-304(s0)
    80200e6a:	fef43023          	sd	a5,-32(s0)
    80200e6e:	fe043703          	ld	a4,-32(s0)
    80200e72:	ee040793          	addi	a5,s0,-288
    80200e76:	86ba                	mv	a3,a4
    80200e78:	ed843603          	ld	a2,-296(s0)
    80200e7c:	10000593          	li	a1,256
    80200e80:	853e                	mv	a0,a5
    80200e82:	c8fff0ef          	jal	80200b10 <mini_vsnprintf>
    80200e86:	87aa                	mv	a5,a0
    80200e88:	fef42623          	sw	a5,-20(s0)
    80200e8c:	fec42783          	lw	a5,-20(s0)
    80200e90:	17c1                	addi	a5,a5,-16
    80200e92:	97a2                	add	a5,a5,s0
    80200e94:	ee078823          	sb	zero,-272(a5)
    80200e98:	ee040713          	addi	a4,s0,-288
    80200e9c:	ec843783          	ld	a5,-312(s0)
    80200ea0:	853a                	mv	a0,a4
    80200ea2:	9782                	jalr	a5
    80200ea4:	fec42783          	lw	a5,-20(s0)
    80200ea8:	853e                	mv	a0,a5
    80200eaa:	70f2                	ld	ra,312(sp)
    80200eac:	7452                	ld	s0,304(sp)
    80200eae:	6131                	addi	sp,sp,320
    80200eb0:	8082                	ret

0000000080200eb2 <_vprints>:
    80200eb2:	7129                	addi	sp,sp,-320
    80200eb4:	fe06                	sd	ra,312(sp)
    80200eb6:	fa22                	sd	s0,304(sp)
    80200eb8:	0280                	addi	s0,sp,320
    80200eba:	eca43c23          	sd	a0,-296(s0)
    80200ebe:	ecb43823          	sd	a1,-304(s0)
    80200ec2:	ecc43423          	sd	a2,-312(s0)
    80200ec6:	ed043783          	ld	a5,-304(s0)
    80200eca:	fef43023          	sd	a5,-32(s0)
    80200ece:	fe043703          	ld	a4,-32(s0)
    80200ed2:	ee040793          	addi	a5,s0,-288
    80200ed6:	86ba                	mv	a3,a4
    80200ed8:	ed843603          	ld	a2,-296(s0)
    80200edc:	10000593          	li	a1,256
    80200ee0:	853e                	mv	a0,a5
    80200ee2:	c2fff0ef          	jal	80200b10 <mini_vsnprintf>
    80200ee6:	87aa                	mv	a5,a0
    80200ee8:	fef42623          	sw	a5,-20(s0)
    80200eec:	fec42783          	lw	a5,-20(s0)
    80200ef0:	17c1                	addi	a5,a5,-16
    80200ef2:	97a2                	add	a5,a5,s0
    80200ef4:	ee078823          	sb	zero,-272(a5)
    80200ef8:	ee040713          	addi	a4,s0,-288
    80200efc:	ec843783          	ld	a5,-312(s0)
    80200f00:	853a                	mv	a0,a4
    80200f02:	9782                	jalr	a5
    80200f04:	fec42783          	lw	a5,-20(s0)
    80200f08:	853e                	mv	a0,a5
    80200f0a:	70f2                	ld	ra,312(sp)
    80200f0c:	7452                	ld	s0,304(sp)
    80200f0e:	6131                	addi	sp,sp,320
    80200f10:	8082                	ret

0000000080200f12 <vprintk>:
    80200f12:	1101                	addi	sp,sp,-32
    80200f14:	ec06                	sd	ra,24(sp)
    80200f16:	e822                	sd	s0,16(sp)
    80200f18:	1000                	addi	s0,sp,32
    80200f1a:	fea43423          	sd	a0,-24(s0)
    80200f1e:	feb43023          	sd	a1,-32(s0)
    80200f22:	fffff617          	auipc	a2,0xfffff
    80200f26:	7cc60613          	addi	a2,a2,1996 # 802006ee <print>
    80200f2a:	fe043583          	ld	a1,-32(s0)
    80200f2e:	fe843503          	ld	a0,-24(s0)
    80200f32:	f21ff0ef          	jal	80200e52 <_vprintk>
    80200f36:	87aa                	mv	a5,a0
    80200f38:	853e                	mv	a0,a5
    80200f3a:	60e2                	ld	ra,24(sp)
    80200f3c:	6442                	ld	s0,16(sp)
    80200f3e:	6105                	addi	sp,sp,32
    80200f40:	8082                	ret

0000000080200f42 <printk>:
    80200f42:	7159                	addi	sp,sp,-112
    80200f44:	f406                	sd	ra,40(sp)
    80200f46:	f022                	sd	s0,32(sp)
    80200f48:	1800                	addi	s0,sp,48
    80200f4a:	fca43c23          	sd	a0,-40(s0)
    80200f4e:	e40c                	sd	a1,8(s0)
    80200f50:	e810                	sd	a2,16(s0)
    80200f52:	ec14                	sd	a3,24(s0)
    80200f54:	f018                	sd	a4,32(s0)
    80200f56:	f41c                	sd	a5,40(s0)
    80200f58:	03043823          	sd	a6,48(s0)
    80200f5c:	03143c23          	sd	a7,56(s0)
    80200f60:	fe042623          	sw	zero,-20(s0)
    80200f64:	04040793          	addi	a5,s0,64
    80200f68:	fcf43823          	sd	a5,-48(s0)
    80200f6c:	fd043783          	ld	a5,-48(s0)
    80200f70:	fc878793          	addi	a5,a5,-56
    80200f74:	fef43023          	sd	a5,-32(s0)
    80200f78:	fe043783          	ld	a5,-32(s0)
    80200f7c:	85be                	mv	a1,a5
    80200f7e:	fd843503          	ld	a0,-40(s0)
    80200f82:	f91ff0ef          	jal	80200f12 <vprintk>
    80200f86:	87aa                	mv	a5,a0
    80200f88:	fef42623          	sw	a5,-20(s0)
    80200f8c:	fec42783          	lw	a5,-20(s0)
    80200f90:	853e                	mv	a0,a5
    80200f92:	70a2                	ld	ra,40(sp)
    80200f94:	7402                	ld	s0,32(sp)
    80200f96:	6165                	addi	sp,sp,112
    80200f98:	8082                	ret

0000000080200f9a <_vprintk_port>:
    80200f9a:	7129                	addi	sp,sp,-320
    80200f9c:	fe06                	sd	ra,312(sp)
    80200f9e:	fa22                	sd	s0,304(sp)
    80200fa0:	0280                	addi	s0,sp,320
    80200fa2:	eca43c23          	sd	a0,-296(s0)
    80200fa6:	ecb43823          	sd	a1,-304(s0)
    80200faa:	ecc43423          	sd	a2,-312(s0)
    80200fae:	ed043783          	ld	a5,-304(s0)
    80200fb2:	fef43023          	sd	a5,-32(s0)
    80200fb6:	fe043703          	ld	a4,-32(s0)
    80200fba:	ee040793          	addi	a5,s0,-288
    80200fbe:	86ba                	mv	a3,a4
    80200fc0:	ed843603          	ld	a2,-296(s0)
    80200fc4:	10000593          	li	a1,256
    80200fc8:	853e                	mv	a0,a5
    80200fca:	b47ff0ef          	jal	80200b10 <mini_vsnprintf>
    80200fce:	87aa                	mv	a5,a0
    80200fd0:	fef42623          	sw	a5,-20(s0)
    80200fd4:	fec42783          	lw	a5,-20(s0)
    80200fd8:	17c1                	addi	a5,a5,-16
    80200fda:	97a2                	add	a5,a5,s0
    80200fdc:	ee078823          	sb	zero,-272(a5)
    80200fe0:	fec42783          	lw	a5,-20(s0)
    80200fe4:	853e                	mv	a0,a5
    80200fe6:	70f2                	ld	ra,312(sp)
    80200fe8:	7452                	ld	s0,304(sp)
    80200fea:	6131                	addi	sp,sp,320
    80200fec:	8082                	ret

0000000080200fee <vprintk_port>:
    80200fee:	1101                	addi	sp,sp,-32
    80200ff0:	ec06                	sd	ra,24(sp)
    80200ff2:	e822                	sd	s0,16(sp)
    80200ff4:	1000                	addi	s0,sp,32
    80200ff6:	fea43423          	sd	a0,-24(s0)
    80200ffa:	feb43023          	sd	a1,-32(s0)
    80200ffe:	fffff617          	auipc	a2,0xfffff
    80201002:	6f060613          	addi	a2,a2,1776 # 802006ee <print>
    80201006:	fe043583          	ld	a1,-32(s0)
    8020100a:	fe843503          	ld	a0,-24(s0)
    8020100e:	f8dff0ef          	jal	80200f9a <_vprintk_port>
    80201012:	87aa                	mv	a5,a0
    80201014:	853e                	mv	a0,a5
    80201016:	60e2                	ld	ra,24(sp)
    80201018:	6442                	ld	s0,16(sp)
    8020101a:	6105                	addi	sp,sp,32
    8020101c:	8082                	ret

000000008020101e <printk_port>:
    8020101e:	7159                	addi	sp,sp,-112
    80201020:	f406                	sd	ra,40(sp)
    80201022:	f022                	sd	s0,32(sp)
    80201024:	1800                	addi	s0,sp,48
    80201026:	fca43c23          	sd	a0,-40(s0)
    8020102a:	e40c                	sd	a1,8(s0)
    8020102c:	e810                	sd	a2,16(s0)
    8020102e:	ec14                	sd	a3,24(s0)
    80201030:	f018                	sd	a4,32(s0)
    80201032:	f41c                	sd	a5,40(s0)
    80201034:	03043823          	sd	a6,48(s0)
    80201038:	03143c23          	sd	a7,56(s0)
    8020103c:	fe042623          	sw	zero,-20(s0)
    80201040:	04040793          	addi	a5,s0,64
    80201044:	fcf43823          	sd	a5,-48(s0)
    80201048:	fd043783          	ld	a5,-48(s0)
    8020104c:	fc878793          	addi	a5,a5,-56
    80201050:	fef43023          	sd	a5,-32(s0)
    80201054:	fe043783          	ld	a5,-32(s0)
    80201058:	85be                	mv	a1,a5
    8020105a:	fd843503          	ld	a0,-40(s0)
    8020105e:	f91ff0ef          	jal	80200fee <vprintk_port>
    80201062:	87aa                	mv	a5,a0
    80201064:	fef42623          	sw	a5,-20(s0)
    80201068:	fec42783          	lw	a5,-20(s0)
    8020106c:	853e                	mv	a0,a5
    8020106e:	70a2                	ld	ra,40(sp)
    80201070:	7402                	ld	s0,32(sp)
    80201072:	6165                	addi	sp,sp,112
    80201074:	8082                	ret

0000000080201076 <r_sstatus>:
    80201076:	1101                	addi	sp,sp,-32
    80201078:	ec06                	sd	ra,24(sp)
    8020107a:	e822                	sd	s0,16(sp)
    8020107c:	1000                	addi	s0,sp,32
    8020107e:	100027f3          	csrr	a5,sstatus
    80201082:	fef43423          	sd	a5,-24(s0)
    80201086:	fe843783          	ld	a5,-24(s0)
    8020108a:	853e                	mv	a0,a5
    8020108c:	60e2                	ld	ra,24(sp)
    8020108e:	6442                	ld	s0,16(sp)
    80201090:	6105                	addi	sp,sp,32
    80201092:	8082                	ret

0000000080201094 <w_sstatus>:
    80201094:	1101                	addi	sp,sp,-32
    80201096:	ec06                	sd	ra,24(sp)
    80201098:	e822                	sd	s0,16(sp)
    8020109a:	1000                	addi	s0,sp,32
    8020109c:	fea43423          	sd	a0,-24(s0)
    802010a0:	fe843783          	ld	a5,-24(s0)
    802010a4:	10079073          	csrw	sstatus,a5
    802010a8:	0001                	nop
    802010aa:	60e2                	ld	ra,24(sp)
    802010ac:	6442                	ld	s0,16(sp)
    802010ae:	6105                	addi	sp,sp,32
    802010b0:	8082                	ret

00000000802010b2 <w_sepc>:
    802010b2:	1101                	addi	sp,sp,-32
    802010b4:	ec06                	sd	ra,24(sp)
    802010b6:	e822                	sd	s0,16(sp)
    802010b8:	1000                	addi	s0,sp,32
    802010ba:	fea43423          	sd	a0,-24(s0)
    802010be:	fe843783          	ld	a5,-24(s0)
    802010c2:	14179073          	csrw	sepc,a5
    802010c6:	0001                	nop
    802010c8:	60e2                	ld	ra,24(sp)
    802010ca:	6442                	ld	s0,16(sp)
    802010cc:	6105                	addi	sp,sp,32
    802010ce:	8082                	ret

00000000802010d0 <w_stvec>:
    802010d0:	1101                	addi	sp,sp,-32
    802010d2:	ec06                	sd	ra,24(sp)
    802010d4:	e822                	sd	s0,16(sp)
    802010d6:	1000                	addi	s0,sp,32
    802010d8:	fea43423          	sd	a0,-24(s0)
    802010dc:	fe843783          	ld	a5,-24(s0)
    802010e0:	10579073          	csrw	stvec,a5
    802010e4:	0001                	nop
    802010e6:	60e2                	ld	ra,24(sp)
    802010e8:	6442                	ld	s0,16(sp)
    802010ea:	6105                	addi	sp,sp,32
    802010ec:	8082                	ret

00000000802010ee <r_satp>:
    802010ee:	1101                	addi	sp,sp,-32
    802010f0:	ec06                	sd	ra,24(sp)
    802010f2:	e822                	sd	s0,16(sp)
    802010f4:	1000                	addi	s0,sp,32
    802010f6:	180027f3          	csrr	a5,satp
    802010fa:	fef43423          	sd	a5,-24(s0)
    802010fe:	fe843783          	ld	a5,-24(s0)
    80201102:	853e                	mv	a0,a5
    80201104:	60e2                	ld	ra,24(sp)
    80201106:	6442                	ld	s0,16(sp)
    80201108:	6105                	addi	sp,sp,32
    8020110a:	8082                	ret

000000008020110c <r_scause>:
    8020110c:	1101                	addi	sp,sp,-32
    8020110e:	ec06                	sd	ra,24(sp)
    80201110:	e822                	sd	s0,16(sp)
    80201112:	1000                	addi	s0,sp,32
    80201114:	142027f3          	csrr	a5,scause
    80201118:	fef43423          	sd	a5,-24(s0)
    8020111c:	fe843783          	ld	a5,-24(s0)
    80201120:	853e                	mv	a0,a5
    80201122:	60e2                	ld	ra,24(sp)
    80201124:	6442                	ld	s0,16(sp)
    80201126:	6105                	addi	sp,sp,32
    80201128:	8082                	ret

000000008020112a <r_stval>:
    8020112a:	1101                	addi	sp,sp,-32
    8020112c:	ec06                	sd	ra,24(sp)
    8020112e:	e822                	sd	s0,16(sp)
    80201130:	1000                	addi	s0,sp,32
    80201132:	143027f3          	csrr	a5,stval
    80201136:	fef43423          	sd	a5,-24(s0)
    8020113a:	fe843783          	ld	a5,-24(s0)
    8020113e:	853e                	mv	a0,a5
    80201140:	60e2                	ld	ra,24(sp)
    80201142:	6442                	ld	s0,16(sp)
    80201144:	6105                	addi	sp,sp,32
    80201146:	8082                	ret

0000000080201148 <kerneltrap>:
    80201148:	1101                	addi	sp,sp,-32
    8020114a:	ec06                	sd	ra,24(sp)
    8020114c:	e822                	sd	s0,16(sp)
    8020114e:	1000                	addi	s0,sp,32
    80201150:	f27ff0ef          	jal	80201076 <r_sstatus>
    80201154:	87aa                	mv	a5,a0
    80201156:	1007f793          	andi	a5,a5,256
    8020115a:	e799                	bnez	a5,80201168 <kerneltrap+0x20>
    8020115c:	00004517          	auipc	a0,0x4
    80201160:	0e450513          	addi	a0,a0,228 # 80205240 <rodata_start+0x240>
    80201164:	de8ff0ef          	jal	8020074c <panic>
    80201168:	fa5ff0ef          	jal	8020110c <r_scause>
    8020116c:	fea43423          	sd	a0,-24(s0)
    80201170:	fe843603          	ld	a2,-24(s0)
    80201174:	fe843583          	ld	a1,-24(s0)
    80201178:	00004517          	auipc	a0,0x4
    8020117c:	0f050513          	addi	a0,a0,240 # 80205268 <rodata_start+0x268>
    80201180:	dc3ff0ef          	jal	80200f42 <printk>
    80201184:	fe843783          	ld	a5,-24(s0)
    80201188:	0407d063          	bgez	a5,802011c8 <kerneltrap+0x80>
    8020118c:	fe843703          	ld	a4,-24(s0)
    80201190:	57fd                	li	a5,-1
    80201192:	8385                	srli	a5,a5,0x1
    80201194:	8ff9                	and	a5,a5,a4
    80201196:	fef43423          	sd	a5,-24(s0)
    8020119a:	fe843703          	ld	a4,-24(s0)
    8020119e:	4795                	li	a5,5
    802011a0:	00f71d63          	bne	a4,a5,802011ba <kerneltrap+0x72>
    802011a4:	00004517          	auipc	a0,0x4
    802011a8:	0d450513          	addi	a0,a0,212 # 80205278 <rodata_start+0x278>
    802011ac:	d97ff0ef          	jal	80200f42 <printk>
    802011b0:	55a010ef          	jal	8020270a <set_next_10ms_timer>
    802011b4:	0f8010ef          	jal	802022ac <yield>
    802011b8:	a801                	j	802011c8 <kerneltrap+0x80>
    802011ba:	00004517          	auipc	a0,0x4
    802011be:	0d650513          	addi	a0,a0,214 # 80205290 <rodata_start+0x290>
    802011c2:	078000ef          	jal	8020123a <unknown_trap>
    802011c6:	0001                	nop
    802011c8:	00004517          	auipc	a0,0x4
    802011cc:	0d850513          	addi	a0,a0,216 # 802052a0 <rodata_start+0x2a0>
    802011d0:	d7cff0ef          	jal	8020074c <panic>
    802011d4:	0001                	nop
    802011d6:	60e2                	ld	ra,24(sp)
    802011d8:	6442                	ld	s0,16(sp)
    802011da:	6105                	addi	sp,sp,32
    802011dc:	8082                	ret

00000000802011de <set_kerneltrap>:
    802011de:	1141                	addi	sp,sp,-16
    802011e0:	e406                	sd	ra,8(sp)
    802011e2:	e022                	sd	s0,0(sp)
    802011e4:	0800                	addi	s0,sp,16
    802011e6:	00000797          	auipc	a5,0x0
    802011ea:	f6278793          	addi	a5,a5,-158 # 80201148 <kerneltrap>
    802011ee:	9bf1                	andi	a5,a5,-4
    802011f0:	853e                	mv	a0,a5
    802011f2:	edfff0ef          	jal	802010d0 <w_stvec>
    802011f6:	0001                	nop
    802011f8:	60a2                	ld	ra,8(sp)
    802011fa:	6402                	ld	s0,0(sp)
    802011fc:	0141                	addi	sp,sp,16
    802011fe:	8082                	ret

0000000080201200 <set_usertrap>:
    80201200:	1141                	addi	sp,sp,-16
    80201202:	e406                	sd	ra,8(sp)
    80201204:	e022                	sd	s0,0(sp)
    80201206:	0800                	addi	s0,sp,16
    80201208:	00003717          	auipc	a4,0x3
    8020120c:	df870713          	addi	a4,a4,-520 # 80204000 <__alltraps>
    80201210:	00003797          	auipc	a5,0x3
    80201214:	df078793          	addi	a5,a5,-528 # 80204000 <__alltraps>
    80201218:	40f707b3          	sub	a5,a4,a5
    8020121c:	873e                	mv	a4,a5
    8020121e:	040007b7          	lui	a5,0x4000
    80201222:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80201224:	07b2                	slli	a5,a5,0xc
    80201226:	97ba                	add	a5,a5,a4
    80201228:	9bf1                	andi	a5,a5,-4
    8020122a:	853e                	mv	a0,a5
    8020122c:	ea5ff0ef          	jal	802010d0 <w_stvec>
    80201230:	0001                	nop
    80201232:	60a2                	ld	ra,8(sp)
    80201234:	6402                	ld	s0,0(sp)
    80201236:	0141                	addi	sp,sp,16
    80201238:	8082                	ret

000000008020123a <unknown_trap>:
    8020123a:	7179                	addi	sp,sp,-48
    8020123c:	f406                	sd	ra,40(sp)
    8020123e:	f022                	sd	s0,32(sp)
    80201240:	ec26                	sd	s1,24(sp)
    80201242:	1800                	addi	s0,sp,48
    80201244:	fca43c23          	sd	a0,-40(s0)
    80201248:	ec5ff0ef          	jal	8020110c <r_scause>
    8020124c:	84aa                	mv	s1,a0
    8020124e:	eddff0ef          	jal	8020112a <r_stval>
    80201252:	87aa                	mv	a5,a0
    80201254:	86be                	mv	a3,a5
    80201256:	8626                	mv	a2,s1
    80201258:	fd843583          	ld	a1,-40(s0)
    8020125c:	00004517          	auipc	a0,0x4
    80201260:	05c50513          	addi	a0,a0,92 # 802052b8 <rodata_start+0x2b8>
    80201264:	cdfff0ef          	jal	80200f42 <printk>
    80201268:	4505                	li	a0,1
    8020126a:	bd6ff0ef          	jal	80200640 <sbi_shut_down>
    8020126e:	0001                	nop
    80201270:	70a2                	ld	ra,40(sp)
    80201272:	7402                	ld	s0,32(sp)
    80201274:	64e2                	ld	s1,24(sp)
    80201276:	6145                	addi	sp,sp,48
    80201278:	8082                	ret

000000008020127a <trap_init>:
    8020127a:	1141                	addi	sp,sp,-16
    8020127c:	e406                	sd	ra,8(sp)
    8020127e:	e022                	sd	s0,0(sp)
    80201280:	0800                	addi	s0,sp,16
    80201282:	f5dff0ef          	jal	802011de <set_kerneltrap>
    80201286:	00004517          	auipc	a0,0x4
    8020128a:	06250513          	addi	a0,a0,98 # 802052e8 <rodata_start+0x2e8>
    8020128e:	cb5ff0ef          	jal	80200f42 <printk>
    80201292:	0001                	nop
    80201294:	60a2                	ld	ra,8(sp)
    80201296:	6402                	ld	s0,0(sp)
    80201298:	0141                	addi	sp,sp,16
    8020129a:	8082                	ret

000000008020129c <usertrapret>:
    8020129c:	7179                	addi	sp,sp,-48
    8020129e:	f406                	sd	ra,40(sp)
    802012a0:	f022                	sd	s0,32(sp)
    802012a2:	1800                	addi	s0,sp,48
    802012a4:	f5dff0ef          	jal	80201200 <set_usertrap>
    802012a8:	685000ef          	jal	8020212c <get_cur_proc>
    802012ac:	87aa                	mv	a5,a0
    802012ae:	739c                	ld	a5,32(a5)
    802012b0:	fef43423          	sd	a5,-24(s0)
    802012b4:	e3bff0ef          	jal	802010ee <r_satp>
    802012b8:	872a                	mv	a4,a0
    802012ba:	fe843783          	ld	a5,-24(s0)
    802012be:	10e7b823          	sd	a4,272(a5)
    802012c2:	66b000ef          	jal	8020212c <get_cur_proc>
    802012c6:	87aa                	mv	a5,a0
    802012c8:	6b98                	ld	a4,16(a5)
    802012ca:	6785                	lui	a5,0x1
    802012cc:	973e                	add	a4,a4,a5
    802012ce:	fe843783          	ld	a5,-24(s0)
    802012d2:	10e7bc23          	sd	a4,280(a5) # 1118 <n+0x10f8>
    802012d6:	00000717          	auipc	a4,0x0
    802012da:	09a70713          	addi	a4,a4,154 # 80201370 <usertrap>
    802012de:	fe843783          	ld	a5,-24(s0)
    802012e2:	12e7b023          	sd	a4,288(a5)
    802012e6:	fe843783          	ld	a5,-24(s0)
    802012ea:	1087b783          	ld	a5,264(a5)
    802012ee:	853e                	mv	a0,a5
    802012f0:	dc3ff0ef          	jal	802010b2 <w_sepc>
    802012f4:	d83ff0ef          	jal	80201076 <r_sstatus>
    802012f8:	fea43023          	sd	a0,-32(s0)
    802012fc:	fe043783          	ld	a5,-32(s0)
    80201300:	eff7f793          	andi	a5,a5,-257
    80201304:	fef43023          	sd	a5,-32(s0)
    80201308:	fe043783          	ld	a5,-32(s0)
    8020130c:	1007e793          	ori	a5,a5,256
    80201310:	fef43023          	sd	a5,-32(s0)
    80201314:	fe043503          	ld	a0,-32(s0)
    80201318:	d7dff0ef          	jal	80201094 <w_sstatus>
    8020131c:	611000ef          	jal	8020212c <get_cur_proc>
    80201320:	87aa                	mv	a5,a0
    80201322:	679c                	ld	a5,8(a5)
    80201324:	00c7d713          	srli	a4,a5,0xc
    80201328:	57fd                	li	a5,-1
    8020132a:	17fe                	slli	a5,a5,0x3f
    8020132c:	8fd9                	or	a5,a5,a4
    8020132e:	fcf43c23          	sd	a5,-40(s0)
    80201332:	00003717          	auipc	a4,0x3
    80201336:	d2e70713          	addi	a4,a4,-722 # 80204060 <__restore>
    8020133a:	00003797          	auipc	a5,0x3
    8020133e:	cc678793          	addi	a5,a5,-826 # 80204000 <__alltraps>
    80201342:	8f1d                	sub	a4,a4,a5
    80201344:	040007b7          	lui	a5,0x4000
    80201348:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    8020134a:	07b2                	slli	a5,a5,0xc
    8020134c:	97ba                	add	a5,a5,a4
    8020134e:	fcf43823          	sd	a5,-48(s0)
    80201352:	fd043783          	ld	a5,-48(s0)
    80201356:	fd843583          	ld	a1,-40(s0)
    8020135a:	02000737          	lui	a4,0x2000
    8020135e:	177d                	addi	a4,a4,-1 # 1ffffff <n+0x1ffffdf>
    80201360:	00d71513          	slli	a0,a4,0xd
    80201364:	9782                	jalr	a5
    80201366:	0001                	nop
    80201368:	70a2                	ld	ra,40(sp)
    8020136a:	7402                	ld	s0,32(sp)
    8020136c:	6145                	addi	sp,sp,48
    8020136e:	8082                	ret

0000000080201370 <usertrap>:
    80201370:	1101                	addi	sp,sp,-32
    80201372:	ec06                	sd	ra,24(sp)
    80201374:	e822                	sd	s0,16(sp)
    80201376:	1000                	addi	s0,sp,32
    80201378:	e67ff0ef          	jal	802011de <set_kerneltrap>
    8020137c:	5b1000ef          	jal	8020212c <get_cur_proc>
    80201380:	87aa                	mv	a5,a0
    80201382:	739c                	ld	a5,32(a5)
    80201384:	fef43423          	sd	a5,-24(s0)
    80201388:	cefff0ef          	jal	80201076 <r_sstatus>
    8020138c:	87aa                	mv	a5,a0
    8020138e:	1007f793          	andi	a5,a5,256
    80201392:	c799                	beqz	a5,802013a0 <usertrap+0x30>
    80201394:	00004517          	auipc	a0,0x4
    80201398:	f6c50513          	addi	a0,a0,-148 # 80205300 <rodata_start+0x300>
    8020139c:	bb0ff0ef          	jal	8020074c <panic>
    802013a0:	d6dff0ef          	jal	8020110c <r_scause>
    802013a4:	fea43023          	sd	a0,-32(s0)
    802013a8:	fe043783          	ld	a5,-32(s0)
    802013ac:	0407d063          	bgez	a5,802013ec <usertrap+0x7c>
    802013b0:	fe043703          	ld	a4,-32(s0)
    802013b4:	57fd                	li	a5,-1
    802013b6:	8385                	srli	a5,a5,0x1
    802013b8:	8ff9                	and	a5,a5,a4
    802013ba:	fef43023          	sd	a5,-32(s0)
    802013be:	fe043703          	ld	a4,-32(s0)
    802013c2:	4795                	li	a5,5
    802013c4:	00f71d63          	bne	a4,a5,802013de <usertrap+0x6e>
    802013c8:	00004517          	auipc	a0,0x4
    802013cc:	eb050513          	addi	a0,a0,-336 # 80205278 <rodata_start+0x278>
    802013d0:	b73ff0ef          	jal	80200f42 <printk>
    802013d4:	336010ef          	jal	8020270a <set_next_10ms_timer>
    802013d8:	6d5000ef          	jal	802022ac <yield>
    802013dc:	a8c9                	j	802014ae <usertrap+0x13e>
    802013de:	00004517          	auipc	a0,0x4
    802013e2:	eb250513          	addi	a0,a0,-334 # 80205290 <rodata_start+0x290>
    802013e6:	e55ff0ef          	jal	8020123a <unknown_trap>
    802013ea:	a0d1                	j	802014ae <usertrap+0x13e>
    802013ec:	fe043703          	ld	a4,-32(s0)
    802013f0:	47a1                	li	a5,8
    802013f2:	02f70c63          	beq	a4,a5,8020142a <usertrap+0xba>
    802013f6:	fe043703          	ld	a4,-32(s0)
    802013fa:	47a1                	li	a5,8
    802013fc:	0ae7e263          	bltu	a5,a4,802014a0 <usertrap+0x130>
    80201400:	fe043703          	ld	a4,-32(s0)
    80201404:	479d                	li	a5,7
    80201406:	06f70b63          	beq	a4,a5,8020147c <usertrap+0x10c>
    8020140a:	fe043703          	ld	a4,-32(s0)
    8020140e:	479d                	li	a5,7
    80201410:	08e7e863          	bltu	a5,a4,802014a0 <usertrap+0x130>
    80201414:	fe043703          	ld	a4,-32(s0)
    80201418:	4789                	li	a5,2
    8020141a:	04f70863          	beq	a4,a5,8020146a <usertrap+0xfa>
    8020141e:	fe043703          	ld	a4,-32(s0)
    80201422:	4795                	li	a5,5
    80201424:	06f70563          	beq	a4,a5,8020148e <usertrap+0x11e>
    80201428:	a8a5                	j	802014a0 <usertrap+0x130>
    8020142a:	fe843783          	ld	a5,-24(s0)
    8020142e:	1087b783          	ld	a5,264(a5)
    80201432:	00478713          	addi	a4,a5,4
    80201436:	fe843783          	ld	a5,-24(s0)
    8020143a:	10e7b423          	sd	a4,264(a5)
    8020143e:	fe843783          	ld	a5,-24(s0)
    80201442:	67d8                	ld	a4,136(a5)
    80201444:	fe843783          	ld	a5,-24(s0)
    80201448:	6bac                	ld	a1,80(a5)
    8020144a:	fe843783          	ld	a5,-24(s0)
    8020144e:	6fb0                	ld	a2,88(a5)
    80201450:	fe843783          	ld	a5,-24(s0)
    80201454:	73bc                	ld	a5,96(a5)
    80201456:	86be                	mv	a3,a5
    80201458:	853a                	mv	a0,a4
    8020145a:	0c1000ef          	jal	80201d1a <syscall>
    8020145e:	87aa                	mv	a5,a0
    80201460:	873e                	mv	a4,a5
    80201462:	fe843783          	ld	a5,-24(s0)
    80201466:	ebb8                	sd	a4,80(a5)
    80201468:	a099                	j	802014ae <usertrap+0x13e>
    8020146a:	00004517          	auipc	a0,0x4
    8020146e:	eb650513          	addi	a0,a0,-330 # 80205320 <rodata_start+0x320>
    80201472:	ad1ff0ef          	jal	80200f42 <printk>
    80201476:	5579                	li	a0,-2
    80201478:	144010ef          	jal	802025bc <exit>
    8020147c:	00004517          	auipc	a0,0x4
    80201480:	ecc50513          	addi	a0,a0,-308 # 80205348 <rodata_start+0x348>
    80201484:	abfff0ef          	jal	80200f42 <printk>
    80201488:	5565                	li	a0,-7
    8020148a:	132010ef          	jal	802025bc <exit>
    8020148e:	00004517          	auipc	a0,0x4
    80201492:	eea50513          	addi	a0,a0,-278 # 80205378 <rodata_start+0x378>
    80201496:	ab6ff0ef          	jal	8020074c <panic>
    8020149a:	556d                	li	a0,-5
    8020149c:	120010ef          	jal	802025bc <exit>
    802014a0:	00004517          	auipc	a0,0x4
    802014a4:	f0050513          	addi	a0,a0,-256 # 802053a0 <rodata_start+0x3a0>
    802014a8:	d93ff0ef          	jal	8020123a <unknown_trap>
    802014ac:	0001                	nop
    802014ae:	defff0ef          	jal	8020129c <usertrapret>
    802014b2:	0001                	nop
    802014b4:	60e2                	ld	ra,24(sp)
    802014b6:	6442                	ld	s0,16(sp)
    802014b8:	6105                	addi	sp,sp,32
    802014ba:	8082                	ret

00000000802014bc <strlen>:
    802014bc:	7179                	addi	sp,sp,-48
    802014be:	f406                	sd	ra,40(sp)
    802014c0:	f022                	sd	s0,32(sp)
    802014c2:	1800                	addi	s0,sp,48
    802014c4:	fca43c23          	sd	a0,-40(s0)
    802014c8:	fe042623          	sw	zero,-20(s0)
    802014cc:	a031                	j	802014d8 <strlen+0x1c>
    802014ce:	fec42783          	lw	a5,-20(s0)
    802014d2:	2785                	addiw	a5,a5,1
    802014d4:	fef42623          	sw	a5,-20(s0)
    802014d8:	fec46783          	lwu	a5,-20(s0)
    802014dc:	fd843703          	ld	a4,-40(s0)
    802014e0:	97ba                	add	a5,a5,a4
    802014e2:	00078783          	lb	a5,0(a5)
    802014e6:	f7e5                	bnez	a5,802014ce <strlen+0x12>
    802014e8:	fec42783          	lw	a5,-20(s0)
    802014ec:	853e                	mv	a0,a5
    802014ee:	70a2                	ld	ra,40(sp)
    802014f0:	7402                	ld	s0,32(sp)
    802014f2:	6145                	addi	sp,sp,48
    802014f4:	8082                	ret

00000000802014f6 <memcpy>:
    802014f6:	7139                	addi	sp,sp,-64
    802014f8:	fc06                	sd	ra,56(sp)
    802014fa:	f822                	sd	s0,48(sp)
    802014fc:	0080                	addi	s0,sp,64
    802014fe:	fca43c23          	sd	a0,-40(s0)
    80201502:	fcb43823          	sd	a1,-48(s0)
    80201506:	fcc43423          	sd	a2,-56(s0)
    8020150a:	fd843783          	ld	a5,-40(s0)
    8020150e:	fef43423          	sd	a5,-24(s0)
    80201512:	fd043783          	ld	a5,-48(s0)
    80201516:	fef43023          	sd	a5,-32(s0)
    8020151a:	a00d                	j	8020153c <memcpy+0x46>
    8020151c:	fe043703          	ld	a4,-32(s0)
    80201520:	00170793          	addi	a5,a4,1
    80201524:	fef43023          	sd	a5,-32(s0)
    80201528:	fe843783          	ld	a5,-24(s0)
    8020152c:	00178693          	addi	a3,a5,1
    80201530:	fed43423          	sd	a3,-24(s0)
    80201534:	00074703          	lbu	a4,0(a4)
    80201538:	00e78023          	sb	a4,0(a5)
    8020153c:	fc843783          	ld	a5,-56(s0)
    80201540:	fff78713          	addi	a4,a5,-1
    80201544:	fce43423          	sd	a4,-56(s0)
    80201548:	fbf1                	bnez	a5,8020151c <memcpy+0x26>
    8020154a:	fd843783          	ld	a5,-40(s0)
    8020154e:	853e                	mv	a0,a5
    80201550:	70e2                	ld	ra,56(sp)
    80201552:	7442                	ld	s0,48(sp)
    80201554:	6121                	addi	sp,sp,64
    80201556:	8082                	ret

0000000080201558 <memcmp>:
    80201558:	7139                	addi	sp,sp,-64
    8020155a:	fc06                	sd	ra,56(sp)
    8020155c:	f822                	sd	s0,48(sp)
    8020155e:	0080                	addi	s0,sp,64
    80201560:	fca43c23          	sd	a0,-40(s0)
    80201564:	fcb43823          	sd	a1,-48(s0)
    80201568:	fcc43423          	sd	a2,-56(s0)
    8020156c:	fd843783          	ld	a5,-40(s0)
    80201570:	fef43423          	sd	a5,-24(s0)
    80201574:	fd043783          	ld	a5,-48(s0)
    80201578:	fef43023          	sd	a5,-32(s0)
    8020157c:	a081                	j	802015bc <memcmp+0x64>
    8020157e:	fe843703          	ld	a4,-24(s0)
    80201582:	fe043783          	ld	a5,-32(s0)
    80201586:	02f70163          	beq	a4,a5,802015a8 <memcmp+0x50>
    8020158a:	fe843783          	ld	a5,-24(s0)
    8020158e:	0007c783          	lbu	a5,0(a5)
    80201592:	0007871b          	sext.w	a4,a5
    80201596:	fe043783          	ld	a5,-32(s0)
    8020159a:	0007c783          	lbu	a5,0(a5)
    8020159e:	2781                	sext.w	a5,a5
    802015a0:	40f707bb          	subw	a5,a4,a5
    802015a4:	2781                	sext.w	a5,a5
    802015a6:	a01d                	j	802015cc <memcmp+0x74>
    802015a8:	fe843783          	ld	a5,-24(s0)
    802015ac:	0785                	addi	a5,a5,1
    802015ae:	fef43423          	sd	a5,-24(s0)
    802015b2:	fe043783          	ld	a5,-32(s0)
    802015b6:	0785                	addi	a5,a5,1
    802015b8:	fef43023          	sd	a5,-32(s0)
    802015bc:	fc843783          	ld	a5,-56(s0)
    802015c0:	fff78713          	addi	a4,a5,-1
    802015c4:	fce43423          	sd	a4,-56(s0)
    802015c8:	fbdd                	bnez	a5,8020157e <memcmp+0x26>
    802015ca:	4781                	li	a5,0
    802015cc:	853e                	mv	a0,a5
    802015ce:	70e2                	ld	ra,56(sp)
    802015d0:	7442                	ld	s0,48(sp)
    802015d2:	6121                	addi	sp,sp,64
    802015d4:	8082                	ret

00000000802015d6 <memmove>:
    802015d6:	7139                	addi	sp,sp,-64
    802015d8:	fc06                	sd	ra,56(sp)
    802015da:	f822                	sd	s0,48(sp)
    802015dc:	0080                	addi	s0,sp,64
    802015de:	fca43c23          	sd	a0,-40(s0)
    802015e2:	fcb43823          	sd	a1,-48(s0)
    802015e6:	fcc43423          	sd	a2,-56(s0)
    802015ea:	fd843783          	ld	a5,-40(s0)
    802015ee:	fef43423          	sd	a5,-24(s0)
    802015f2:	a035                	j	8020161e <memmove+0x48>
    802015f4:	fd043703          	ld	a4,-48(s0)
    802015f8:	00170793          	addi	a5,a4,1
    802015fc:	fcf43823          	sd	a5,-48(s0)
    80201600:	fe843783          	ld	a5,-24(s0)
    80201604:	00178693          	addi	a3,a5,1
    80201608:	fed43423          	sd	a3,-24(s0)
    8020160c:	00074703          	lbu	a4,0(a4)
    80201610:	00e78023          	sb	a4,0(a5)
    80201614:	fc843783          	ld	a5,-56(s0)
    80201618:	17fd                	addi	a5,a5,-1
    8020161a:	fcf43423          	sd	a5,-56(s0)
    8020161e:	fc843783          	ld	a5,-56(s0)
    80201622:	fbe9                	bnez	a5,802015f4 <memmove+0x1e>
    80201624:	0001                	nop
    80201626:	0001                	nop
    80201628:	70e2                	ld	ra,56(sp)
    8020162a:	7442                	ld	s0,48(sp)
    8020162c:	6121                	addi	sp,sp,64
    8020162e:	8082                	ret

0000000080201630 <memset>:
    80201630:	7179                	addi	sp,sp,-48
    80201632:	f406                	sd	ra,40(sp)
    80201634:	f022                	sd	s0,32(sp)
    80201636:	1800                	addi	s0,sp,48
    80201638:	fca43c23          	sd	a0,-40(s0)
    8020163c:	87ae                	mv	a5,a1
    8020163e:	8732                	mv	a4,a2
    80201640:	fcf40ba3          	sb	a5,-41(s0)
    80201644:	87ba                	mv	a5,a4
    80201646:	fcf42823          	sw	a5,-48(s0)
    8020164a:	fd843783          	ld	a5,-40(s0)
    8020164e:	fef43423          	sd	a5,-24(s0)
    80201652:	a005                	j	80201672 <memset+0x42>
    80201654:	fe843783          	ld	a5,-24(s0)
    80201658:	00178713          	addi	a4,a5,1
    8020165c:	fee43423          	sd	a4,-24(s0)
    80201660:	fd744703          	lbu	a4,-41(s0)
    80201664:	00e78023          	sb	a4,0(a5)
    80201668:	fd042783          	lw	a5,-48(s0)
    8020166c:	37fd                	addiw	a5,a5,-1
    8020166e:	fcf42823          	sw	a5,-48(s0)
    80201672:	fd042783          	lw	a5,-48(s0)
    80201676:	2781                	sext.w	a5,a5
    80201678:	fff1                	bnez	a5,80201654 <memset+0x24>
    8020167a:	fd843783          	ld	a5,-40(s0)
    8020167e:	853e                	mv	a0,a5
    80201680:	70a2                	ld	ra,40(sp)
    80201682:	7402                	ld	s0,32(sp)
    80201684:	6145                	addi	sp,sp,48
    80201686:	8082                	ret

0000000080201688 <strcmp>:
    80201688:	1101                	addi	sp,sp,-32
    8020168a:	ec06                	sd	ra,24(sp)
    8020168c:	e822                	sd	s0,16(sp)
    8020168e:	1000                	addi	s0,sp,32
    80201690:	fea43423          	sd	a0,-24(s0)
    80201694:	feb43023          	sd	a1,-32(s0)
    80201698:	a091                	j	802016dc <strcmp+0x54>
    8020169a:	fe843783          	ld	a5,-24(s0)
    8020169e:	00078703          	lb	a4,0(a5)
    802016a2:	fe043783          	ld	a5,-32(s0)
    802016a6:	00078783          	lb	a5,0(a5)
    802016aa:	00f70f63          	beq	a4,a5,802016c8 <strcmp+0x40>
    802016ae:	fe843783          	ld	a5,-24(s0)
    802016b2:	00078783          	lb	a5,0(a5)
    802016b6:	873e                	mv	a4,a5
    802016b8:	fe043783          	ld	a5,-32(s0)
    802016bc:	00078783          	lb	a5,0(a5)
    802016c0:	40f707bb          	subw	a5,a4,a5
    802016c4:	2781                	sext.w	a5,a5
    802016c6:	a089                	j	80201708 <strcmp+0x80>
    802016c8:	fe843783          	ld	a5,-24(s0)
    802016cc:	0785                	addi	a5,a5,1
    802016ce:	fef43423          	sd	a5,-24(s0)
    802016d2:	fe043783          	ld	a5,-32(s0)
    802016d6:	0785                	addi	a5,a5,1
    802016d8:	fef43023          	sd	a5,-32(s0)
    802016dc:	fe843783          	ld	a5,-24(s0)
    802016e0:	00078783          	lb	a5,0(a5)
    802016e4:	c791                	beqz	a5,802016f0 <strcmp+0x68>
    802016e6:	fe043783          	ld	a5,-32(s0)
    802016ea:	00078783          	lb	a5,0(a5)
    802016ee:	f7d5                	bnez	a5,8020169a <strcmp+0x12>
    802016f0:	fe843783          	ld	a5,-24(s0)
    802016f4:	00078783          	lb	a5,0(a5)
    802016f8:	873e                	mv	a4,a5
    802016fa:	fe043783          	ld	a5,-32(s0)
    802016fe:	00078783          	lb	a5,0(a5)
    80201702:	40f707bb          	subw	a5,a4,a5
    80201706:	2781                	sext.w	a5,a5
    80201708:	853e                	mv	a0,a5
    8020170a:	60e2                	ld	ra,24(sp)
    8020170c:	6442                	ld	s0,16(sp)
    8020170e:	6105                	addi	sp,sp,32
    80201710:	8082                	ret

0000000080201712 <ifsubstr>:
    80201712:	7139                	addi	sp,sp,-64
    80201714:	fc06                	sd	ra,56(sp)
    80201716:	f822                	sd	s0,48(sp)
    80201718:	0080                	addi	s0,sp,64
    8020171a:	fca43c23          	sd	a0,-40(s0)
    8020171e:	fcb43823          	sd	a1,-48(s0)
    80201722:	87b2                	mv	a5,a2
    80201724:	fcf42623          	sw	a5,-52(s0)
    80201728:	fd043503          	ld	a0,-48(s0)
    8020172c:	d91ff0ef          	jal	802014bc <strlen>
    80201730:	87aa                	mv	a5,a0
    80201732:	fef42023          	sw	a5,-32(s0)
    80201736:	fe042623          	sw	zero,-20(s0)
    8020173a:	fe042423          	sw	zero,-24(s0)
    8020173e:	fe042223          	sw	zero,-28(s0)
    80201742:	a04d                	j	802017e4 <ifsubstr+0xd2>
    80201744:	fec42783          	lw	a5,-20(s0)
    80201748:	0007871b          	sext.w	a4,a5
    8020174c:	4785                	li	a5,1
    8020174e:	06f71063          	bne	a4,a5,802017ae <ifsubstr+0x9c>
    80201752:	fe842783          	lw	a5,-24(s0)
    80201756:	0017871b          	addiw	a4,a5,1
    8020175a:	fee42423          	sw	a4,-24(s0)
    8020175e:	1782                	slli	a5,a5,0x20
    80201760:	9381                	srli	a5,a5,0x20
    80201762:	fd843703          	ld	a4,-40(s0)
    80201766:	97ba                	add	a5,a5,a4
    80201768:	0007c683          	lbu	a3,0(a5)
    8020176c:	fe442783          	lw	a5,-28(s0)
    80201770:	0017871b          	addiw	a4,a5,1
    80201774:	fee42223          	sw	a4,-28(s0)
    80201778:	1782                	slli	a5,a5,0x20
    8020177a:	9381                	srli	a5,a5,0x20
    8020177c:	fd043703          	ld	a4,-48(s0)
    80201780:	97ba                	add	a5,a5,a4
    80201782:	0007c783          	lbu	a5,0(a5)
    80201786:	8736                	mv	a4,a3
    80201788:	00f71d63          	bne	a4,a5,802017a2 <ifsubstr+0x90>
    8020178c:	fe442783          	lw	a5,-28(s0)
    80201790:	873e                	mv	a4,a5
    80201792:	fe042783          	lw	a5,-32(s0)
    80201796:	2701                	sext.w	a4,a4
    80201798:	2781                	sext.w	a5,a5
    8020179a:	04f71563          	bne	a4,a5,802017e4 <ifsubstr+0xd2>
    8020179e:	4785                	li	a5,1
    802017a0:	a8bd                	j	8020181e <ifsubstr+0x10c>
    802017a2:	fe042223          	sw	zero,-28(s0)
    802017a6:	4785                	li	a5,1
    802017a8:	fef42623          	sw	a5,-20(s0)
    802017ac:	a825                	j	802017e4 <ifsubstr+0xd2>
    802017ae:	fe842783          	lw	a5,-24(s0)
    802017b2:	0017871b          	addiw	a4,a5,1
    802017b6:	fee42423          	sw	a4,-24(s0)
    802017ba:	1782                	slli	a5,a5,0x20
    802017bc:	9381                	srli	a5,a5,0x20
    802017be:	fd843703          	ld	a4,-40(s0)
    802017c2:	97ba                	add	a5,a5,a4
    802017c4:	0007c703          	lbu	a4,0(a5)
    802017c8:	fd043783          	ld	a5,-48(s0)
    802017cc:	0007c783          	lbu	a5,0(a5)
    802017d0:	00f71a63          	bne	a4,a5,802017e4 <ifsubstr+0xd2>
    802017d4:	4785                	li	a5,1
    802017d6:	fef42623          	sw	a5,-20(s0)
    802017da:	fe442783          	lw	a5,-28(s0)
    802017de:	2785                	addiw	a5,a5,1
    802017e0:	fef42223          	sw	a5,-28(s0)
    802017e4:	fcc42783          	lw	a5,-52(s0)
    802017e8:	fe842703          	lw	a4,-24(s0)
    802017ec:	2701                	sext.w	a4,a4
    802017ee:	00f77b63          	bgeu	a4,a5,80201804 <ifsubstr+0xf2>
    802017f2:	fe442783          	lw	a5,-28(s0)
    802017f6:	873e                	mv	a4,a5
    802017f8:	fe042783          	lw	a5,-32(s0)
    802017fc:	2701                	sext.w	a4,a4
    802017fe:	2781                	sext.w	a5,a5
    80201800:	f4f762e3          	bltu	a4,a5,80201744 <ifsubstr+0x32>
    80201804:	fe442783          	lw	a5,-28(s0)
    80201808:	873e                	mv	a4,a5
    8020180a:	fe042783          	lw	a5,-32(s0)
    8020180e:	2701                	sext.w	a4,a4
    80201810:	2781                	sext.w	a5,a5
    80201812:	00f77463          	bgeu	a4,a5,8020181a <ifsubstr+0x108>
    80201816:	4785                	li	a5,1
    80201818:	a019                	j	8020181e <ifsubstr+0x10c>
    8020181a:	fec42783          	lw	a5,-20(s0)
    8020181e:	853e                	mv	a0,a5
    80201820:	70e2                	ld	ra,56(sp)
    80201822:	7442                	ld	s0,48(sp)
    80201824:	6121                	addi	sp,sp,64
    80201826:	8082                	ret

0000000080201828 <strcpy>:
    80201828:	7179                	addi	sp,sp,-48
    8020182a:	f406                	sd	ra,40(sp)
    8020182c:	f022                	sd	s0,32(sp)
    8020182e:	1800                	addi	s0,sp,48
    80201830:	fca43c23          	sd	a0,-40(s0)
    80201834:	fcb43823          	sd	a1,-48(s0)
    80201838:	fd843783          	ld	a5,-40(s0)
    8020183c:	fef43423          	sd	a5,-24(s0)
    80201840:	a00d                	j	80201862 <strcpy+0x3a>
    80201842:	fd043703          	ld	a4,-48(s0)
    80201846:	00170793          	addi	a5,a4,1
    8020184a:	fcf43823          	sd	a5,-48(s0)
    8020184e:	fe843783          	ld	a5,-24(s0)
    80201852:	00178693          	addi	a3,a5,1
    80201856:	fed43423          	sd	a3,-24(s0)
    8020185a:	00070703          	lb	a4,0(a4)
    8020185e:	00e78023          	sb	a4,0(a5)
    80201862:	fd043783          	ld	a5,-48(s0)
    80201866:	00078783          	lb	a5,0(a5)
    8020186a:	ffe1                	bnez	a5,80201842 <strcpy+0x1a>
    8020186c:	fe843783          	ld	a5,-24(s0)
    80201870:	00078023          	sb	zero,0(a5)
    80201874:	fd843783          	ld	a5,-40(s0)
    80201878:	853e                	mv	a0,a5
    8020187a:	70a2                	ld	ra,40(sp)
    8020187c:	7402                	ld	s0,32(sp)
    8020187e:	6145                	addi	sp,sp,48
    80201880:	8082                	ret

0000000080201882 <strncpy>:
    80201882:	7139                	addi	sp,sp,-64
    80201884:	fc06                	sd	ra,56(sp)
    80201886:	f822                	sd	s0,48(sp)
    80201888:	0080                	addi	s0,sp,64
    8020188a:	fca43c23          	sd	a0,-40(s0)
    8020188e:	fcb43823          	sd	a1,-48(s0)
    80201892:	87b2                	mv	a5,a2
    80201894:	fcf42623          	sw	a5,-52(s0)
    80201898:	fd843783          	ld	a5,-40(s0)
    8020189c:	fef43423          	sd	a5,-24(s0)
    802018a0:	0001                	nop
    802018a2:	fcc42783          	lw	a5,-52(s0)
    802018a6:	fff7871b          	addiw	a4,a5,-1
    802018aa:	fce42623          	sw	a4,-52(s0)
    802018ae:	02f05e63          	blez	a5,802018ea <strncpy+0x68>
    802018b2:	fd043703          	ld	a4,-48(s0)
    802018b6:	00170793          	addi	a5,a4,1
    802018ba:	fcf43823          	sd	a5,-48(s0)
    802018be:	fd843783          	ld	a5,-40(s0)
    802018c2:	00178693          	addi	a3,a5,1
    802018c6:	fcd43c23          	sd	a3,-40(s0)
    802018ca:	00074703          	lbu	a4,0(a4)
    802018ce:	00e78023          	sb	a4,0(a5)
    802018d2:	0007c783          	lbu	a5,0(a5)
    802018d6:	f7f1                	bnez	a5,802018a2 <strncpy+0x20>
    802018d8:	a809                	j	802018ea <strncpy+0x68>
    802018da:	fd843783          	ld	a5,-40(s0)
    802018de:	00178713          	addi	a4,a5,1
    802018e2:	fce43c23          	sd	a4,-40(s0)
    802018e6:	00078023          	sb	zero,0(a5)
    802018ea:	fcc42783          	lw	a5,-52(s0)
    802018ee:	fff7871b          	addiw	a4,a5,-1
    802018f2:	fce42623          	sw	a4,-52(s0)
    802018f6:	fef042e3          	bgtz	a5,802018da <strncpy+0x58>
    802018fa:	fe843783          	ld	a5,-24(s0)
    802018fe:	853e                	mv	a0,a5
    80201900:	70e2                	ld	ra,56(sp)
    80201902:	7442                	ld	s0,48(sp)
    80201904:	6121                	addi	sp,sp,64
    80201906:	8082                	ret

0000000080201908 <strncmp>:
    80201908:	7179                	addi	sp,sp,-48
    8020190a:	f406                	sd	ra,40(sp)
    8020190c:	f022                	sd	s0,32(sp)
    8020190e:	1800                	addi	s0,sp,48
    80201910:	fea43423          	sd	a0,-24(s0)
    80201914:	feb43023          	sd	a1,-32(s0)
    80201918:	fcc43c23          	sd	a2,-40(s0)
    8020191c:	a005                	j	8020193c <strncmp+0x34>
    8020191e:	fd843783          	ld	a5,-40(s0)
    80201922:	17fd                	addi	a5,a5,-1
    80201924:	fcf43c23          	sd	a5,-40(s0)
    80201928:	fe843783          	ld	a5,-24(s0)
    8020192c:	0785                	addi	a5,a5,1
    8020192e:	fef43423          	sd	a5,-24(s0)
    80201932:	fe043783          	ld	a5,-32(s0)
    80201936:	0785                	addi	a5,a5,1
    80201938:	fef43023          	sd	a5,-32(s0)
    8020193c:	fd843783          	ld	a5,-40(s0)
    80201940:	c385                	beqz	a5,80201960 <strncmp+0x58>
    80201942:	fe843783          	ld	a5,-24(s0)
    80201946:	0007c783          	lbu	a5,0(a5)
    8020194a:	cb99                	beqz	a5,80201960 <strncmp+0x58>
    8020194c:	fe843783          	ld	a5,-24(s0)
    80201950:	0007c703          	lbu	a4,0(a5)
    80201954:	fe043783          	ld	a5,-32(s0)
    80201958:	0007c783          	lbu	a5,0(a5)
    8020195c:	fcf701e3          	beq	a4,a5,8020191e <strncmp+0x16>
    80201960:	fd843783          	ld	a5,-40(s0)
    80201964:	e399                	bnez	a5,8020196a <strncmp+0x62>
    80201966:	4781                	li	a5,0
    80201968:	a839                	j	80201986 <strncmp+0x7e>
    8020196a:	fe843783          	ld	a5,-24(s0)
    8020196e:	0007c783          	lbu	a5,0(a5)
    80201972:	0007871b          	sext.w	a4,a5
    80201976:	fe043783          	ld	a5,-32(s0)
    8020197a:	0007c783          	lbu	a5,0(a5)
    8020197e:	2781                	sext.w	a5,a5
    80201980:	40f707bb          	subw	a5,a4,a5
    80201984:	2781                	sext.w	a5,a5
    80201986:	853e                	mv	a0,a5
    80201988:	70a2                	ld	ra,40(sp)
    8020198a:	7402                	ld	s0,32(sp)
    8020198c:	6145                	addi	sp,sp,48
    8020198e:	8082                	ret

0000000080201990 <strcat>:
    80201990:	7179                	addi	sp,sp,-48
    80201992:	f406                	sd	ra,40(sp)
    80201994:	f022                	sd	s0,32(sp)
    80201996:	1800                	addi	s0,sp,48
    80201998:	fca43c23          	sd	a0,-40(s0)
    8020199c:	fcb43823          	sd	a1,-48(s0)
    802019a0:	fd843783          	ld	a5,-40(s0)
    802019a4:	fef43423          	sd	a5,-24(s0)
    802019a8:	a031                	j	802019b4 <strcat+0x24>
    802019aa:	fe843783          	ld	a5,-24(s0)
    802019ae:	0785                	addi	a5,a5,1
    802019b0:	fef43423          	sd	a5,-24(s0)
    802019b4:	fe843783          	ld	a5,-24(s0)
    802019b8:	00078783          	lb	a5,0(a5)
    802019bc:	f7fd                	bnez	a5,802019aa <strcat+0x1a>
    802019be:	a00d                	j	802019e0 <strcat+0x50>
    802019c0:	fd043703          	ld	a4,-48(s0)
    802019c4:	00170793          	addi	a5,a4,1
    802019c8:	fcf43823          	sd	a5,-48(s0)
    802019cc:	fe843783          	ld	a5,-24(s0)
    802019d0:	00178693          	addi	a3,a5,1
    802019d4:	fed43423          	sd	a3,-24(s0)
    802019d8:	00070703          	lb	a4,0(a4)
    802019dc:	00e78023          	sb	a4,0(a5)
    802019e0:	fd043783          	ld	a5,-48(s0)
    802019e4:	00078783          	lb	a5,0(a5)
    802019e8:	ffe1                	bnez	a5,802019c0 <strcat+0x30>
    802019ea:	fd843783          	ld	a5,-40(s0)
    802019ee:	853e                	mv	a0,a5
    802019f0:	70a2                	ld	ra,40(sp)
    802019f2:	7402                	ld	s0,32(sp)
    802019f4:	6145                	addi	sp,sp,48
    802019f6:	8082                	ret

00000000802019f8 <sys_write>:
    802019f8:	7111                	addi	sp,sp,-256
    802019fa:	fd86                	sd	ra,248(sp)
    802019fc:	f9a2                	sd	s0,240(sp)
    802019fe:	0200                	addi	s0,sp,256
    80201a00:	f0a43423          	sd	a0,-248(s0)
    80201a04:	87ae                	mv	a5,a1
    80201a06:	f0f42223          	sw	a5,-252(s0)
    80201a0a:	722000ef          	jal	8020212c <get_cur_proc>
    80201a0e:	fea43023          	sd	a0,-32(s0)
    80201a12:	fe043783          	ld	a5,-32(s0)
    80201a16:	6788                	ld	a0,8(a5)
    80201a18:	f0442783          	lw	a5,-252(s0)
    80201a1c:	0007869b          	sext.w	a3,a5
    80201a20:	0c800713          	li	a4,200
    80201a24:	00d77463          	bgeu	a4,a3,80201a2c <sys_write+0x34>
    80201a28:	0c800793          	li	a5,200
    80201a2c:	2781                	sext.w	a5,a5
    80201a2e:	02079713          	slli	a4,a5,0x20
    80201a32:	9301                	srli	a4,a4,0x20
    80201a34:	f1040793          	addi	a5,s0,-240
    80201a38:	86ba                	mv	a3,a4
    80201a3a:	f0843603          	ld	a2,-248(s0)
    80201a3e:	85be                	mv	a1,a5
    80201a40:	12b010ef          	jal	8020336a <copyinstr>
    80201a44:	87aa                	mv	a5,a0
    80201a46:	fcf42e23          	sw	a5,-36(s0)
    80201a4a:	fe042623          	sw	zero,-20(s0)
    80201a4e:	a01d                	j	80201a74 <sys_write+0x7c>
    80201a50:	fec42783          	lw	a5,-20(s0)
    80201a54:	17c1                	addi	a5,a5,-16
    80201a56:	97a2                	add	a5,a5,s0
    80201a58:	f207c783          	lbu	a5,-224(a5)
    80201a5c:	0187979b          	slliw	a5,a5,0x18
    80201a60:	4187d79b          	sraiw	a5,a5,0x18
    80201a64:	853e                	mv	a0,a5
    80201a66:	badfe0ef          	jal	80200612 <sbi_console_putchar>
    80201a6a:	fec42783          	lw	a5,-20(s0)
    80201a6e:	2785                	addiw	a5,a5,1
    80201a70:	fef42623          	sw	a5,-20(s0)
    80201a74:	fec42783          	lw	a5,-20(s0)
    80201a78:	873e                	mv	a4,a5
    80201a7a:	fdc42783          	lw	a5,-36(s0)
    80201a7e:	2701                	sext.w	a4,a4
    80201a80:	2781                	sext.w	a5,a5
    80201a82:	fcf747e3          	blt	a4,a5,80201a50 <sys_write+0x58>
    80201a86:	fdc42783          	lw	a5,-36(s0)
    80201a8a:	853e                	mv	a0,a5
    80201a8c:	70ee                	ld	ra,248(sp)
    80201a8e:	744e                	ld	s0,240(sp)
    80201a90:	6111                	addi	sp,sp,256
    80201a92:	8082                	ret

0000000080201a94 <sys_exit>:
    80201a94:	1101                	addi	sp,sp,-32
    80201a96:	ec06                	sd	ra,24(sp)
    80201a98:	e822                	sd	s0,16(sp)
    80201a9a:	1000                	addi	s0,sp,32
    80201a9c:	fea43423          	sd	a0,-24(s0)
    80201aa0:	fe843783          	ld	a5,-24(s0)
    80201aa4:	2781                	sext.w	a5,a5
    80201aa6:	853e                	mv	a0,a5
    80201aa8:	315000ef          	jal	802025bc <exit>

0000000080201aac <sys_stack_trace>:
    80201aac:	7179                	addi	sp,sp,-48
    80201aae:	f406                	sd	ra,40(sp)
    80201ab0:	f022                	sd	s0,32(sp)
    80201ab2:	1800                	addi	s0,sp,48
    80201ab4:	00004517          	auipc	a0,0x4
    80201ab8:	8fc50513          	addi	a0,a0,-1796 # 802053b0 <rodata_start+0x3b0>
    80201abc:	c86ff0ef          	jal	80200f42 <printk>
    80201ac0:	87a2                	mv	a5,s0
    80201ac2:	fef43423          	sd	a5,-24(s0)
    80201ac6:	a81d                	j	80201afc <sys_stack_trace+0x50>
    80201ac8:	fe843783          	ld	a5,-24(s0)
    80201acc:	17fd                	addi	a5,a5,-1
    80201ace:	639c                	ld	a5,0(a5)
    80201ad0:	fef43023          	sd	a5,-32(s0)
    80201ad4:	fe843783          	ld	a5,-24(s0)
    80201ad8:	17f9                	addi	a5,a5,-2
    80201ada:	639c                	ld	a5,0(a5)
    80201adc:	fcf43c23          	sd	a5,-40(s0)
    80201ae0:	fd843603          	ld	a2,-40(s0)
    80201ae4:	fe043583          	ld	a1,-32(s0)
    80201ae8:	00004517          	auipc	a0,0x4
    80201aec:	8f850513          	addi	a0,a0,-1800 # 802053e0 <rodata_start+0x3e0>
    80201af0:	c52ff0ef          	jal	80200f42 <printk>
    80201af4:	fd843783          	ld	a5,-40(s0)
    80201af8:	fef43423          	sd	a5,-24(s0)
    80201afc:	fe843783          	ld	a5,-24(s0)
    80201b00:	f7e1                	bnez	a5,80201ac8 <sys_stack_trace+0x1c>
    80201b02:	00004517          	auipc	a0,0x4
    80201b06:	8f650513          	addi	a0,a0,-1802 # 802053f8 <rodata_start+0x3f8>
    80201b0a:	c38ff0ef          	jal	80200f42 <printk>
    80201b0e:	4781                	li	a5,0
    80201b10:	853e                	mv	a0,a5
    80201b12:	70a2                	ld	ra,40(sp)
    80201b14:	7402                	ld	s0,32(sp)
    80201b16:	6145                	addi	sp,sp,48
    80201b18:	8082                	ret

0000000080201b1a <sys_yield>:
    80201b1a:	1141                	addi	sp,sp,-16
    80201b1c:	e406                	sd	ra,8(sp)
    80201b1e:	e022                	sd	s0,0(sp)
    80201b20:	0800                	addi	s0,sp,16
    80201b22:	78a000ef          	jal	802022ac <yield>
    80201b26:	4781                	li	a5,0
    80201b28:	853e                	mv	a0,a5
    80201b2a:	60a2                	ld	ra,8(sp)
    80201b2c:	6402                	ld	s0,0(sp)
    80201b2e:	0141                	addi	sp,sp,16
    80201b30:	8082                	ret

0000000080201b32 <sys_get_tiem>:
    80201b32:	7179                	addi	sp,sp,-48
    80201b34:	f406                	sd	ra,40(sp)
    80201b36:	f022                	sd	s0,32(sp)
    80201b38:	1800                	addi	s0,sp,48
    80201b3a:	fca43c23          	sd	a0,-40(s0)
    80201b3e:	397000ef          	jal	802026d4 <get_cycle>
    80201b42:	fea43423          	sd	a0,-24(s0)
    80201b46:	fe843703          	ld	a4,-24(s0)
    80201b4a:	00004797          	auipc	a5,0x4
    80201b4e:	97678793          	addi	a5,a5,-1674 # 802054c0 <rodata_start+0x4c0>
    80201b52:	639c                	ld	a5,0(a5)
    80201b54:	02f737b3          	mulhu	a5,a4,a5
    80201b58:	0177d713          	srli	a4,a5,0x17
    80201b5c:	fd843783          	ld	a5,-40(s0)
    80201b60:	e398                	sd	a4,0(a5)
    80201b62:	fe843703          	ld	a4,-24(s0)
    80201b66:	00004797          	auipc	a5,0x4
    80201b6a:	95a78793          	addi	a5,a5,-1702 # 802054c0 <rodata_start+0x4c0>
    80201b6e:	639c                	ld	a5,0(a5)
    80201b70:	02f737b3          	mulhu	a5,a4,a5
    80201b74:	83dd                	srli	a5,a5,0x17
    80201b76:	009896b7          	lui	a3,0x989
    80201b7a:	68068693          	addi	a3,a3,1664 # 989680 <n+0x989660>
    80201b7e:	02d787b3          	mul	a5,a5,a3
    80201b82:	40f707b3          	sub	a5,a4,a5
    80201b86:	000f4737          	lui	a4,0xf4
    80201b8a:	24070713          	addi	a4,a4,576 # f4240 <n+0xf4220>
    80201b8e:	02e78733          	mul	a4,a5,a4
    80201b92:	00004797          	auipc	a5,0x4
    80201b96:	92e78793          	addi	a5,a5,-1746 # 802054c0 <rodata_start+0x4c0>
    80201b9a:	639c                	ld	a5,0(a5)
    80201b9c:	02f737b3          	mulhu	a5,a4,a5
    80201ba0:	0177d713          	srli	a4,a5,0x17
    80201ba4:	fd843783          	ld	a5,-40(s0)
    80201ba8:	e798                	sd	a4,8(a5)
    80201baa:	4781                	li	a5,0
    80201bac:	853e                	mv	a0,a5
    80201bae:	70a2                	ld	ra,40(sp)
    80201bb0:	7402                	ld	s0,32(sp)
    80201bb2:	6145                	addi	sp,sp,48
    80201bb4:	8082                	ret

0000000080201bb6 <sys_read>:
    80201bb6:	716d                	addi	sp,sp,-272
    80201bb8:	e606                	sd	ra,264(sp)
    80201bba:	e222                	sd	s0,256(sp)
    80201bbc:	0a00                	addi	s0,sp,272
    80201bbe:	87aa                	mv	a5,a0
    80201bc0:	f0b43023          	sd	a1,-256(s0)
    80201bc4:	eec43c23          	sd	a2,-264(s0)
    80201bc8:	f0f42623          	sw	a5,-244(s0)
    80201bcc:	f0c42783          	lw	a5,-244(s0)
    80201bd0:	2781                	sext.w	a5,a5
    80201bd2:	c399                	beqz	a5,80201bd8 <sys_read+0x22>
    80201bd4:	57fd                	li	a5,-1
    80201bd6:	a89d                	j	80201c4c <sys_read+0x96>
    80201bd8:	554000ef          	jal	8020212c <get_cur_proc>
    80201bdc:	fea43023          	sd	a0,-32(s0)
    80201be0:	ef843783          	ld	a5,-264(s0)
    80201be4:	0c800713          	li	a4,200
    80201be8:	00f77463          	bgeu	a4,a5,80201bf0 <sys_read+0x3a>
    80201bec:	0c800793          	li	a5,200
    80201bf0:	eef43c23          	sd	a5,-264(s0)
    80201bf4:	fe042623          	sw	zero,-20(s0)
    80201bf8:	a02d                	j	80201c22 <sys_read+0x6c>
    80201bfa:	1f7010ef          	jal	802035f0 <consgetc>
    80201bfe:	87aa                	mv	a5,a0
    80201c00:	fcf42e23          	sw	a5,-36(s0)
    80201c04:	fdc42783          	lw	a5,-36(s0)
    80201c08:	0ff7f713          	zext.b	a4,a5
    80201c0c:	fec42783          	lw	a5,-20(s0)
    80201c10:	17c1                	addi	a5,a5,-16
    80201c12:	97a2                	add	a5,a5,s0
    80201c14:	f2e78023          	sb	a4,-224(a5)
    80201c18:	fec42783          	lw	a5,-20(s0)
    80201c1c:	2785                	addiw	a5,a5,1
    80201c1e:	fef42623          	sw	a5,-20(s0)
    80201c22:	fec42783          	lw	a5,-20(s0)
    80201c26:	ef843703          	ld	a4,-264(s0)
    80201c2a:	fce7e8e3          	bltu	a5,a4,80201bfa <sys_read+0x44>
    80201c2e:	fe043783          	ld	a5,-32(s0)
    80201c32:	679c                	ld	a5,8(a5)
    80201c34:	f1040713          	addi	a4,s0,-240
    80201c38:	ef843683          	ld	a3,-264(s0)
    80201c3c:	863a                	mv	a2,a4
    80201c3e:	f0043583          	ld	a1,-256(s0)
    80201c42:	853e                	mv	a0,a5
    80201c44:	5a2010ef          	jal	802031e6 <copyout>
    80201c48:	ef843783          	ld	a5,-264(s0)
    80201c4c:	853e                	mv	a0,a5
    80201c4e:	60b2                	ld	ra,264(sp)
    80201c50:	6412                	ld	s0,256(sp)
    80201c52:	6151                	addi	sp,sp,272
    80201c54:	8082                	ret

0000000080201c56 <sys_fork>:
    80201c56:	1141                	addi	sp,sp,-16
    80201c58:	e406                	sd	ra,8(sp)
    80201c5a:	e022                	sd	s0,0(sp)
    80201c5c:	0800                	addi	s0,sp,16
    80201c5e:	00003517          	auipc	a0,0x3
    80201c62:	7ca50513          	addi	a0,a0,1994 # 80205428 <rodata_start+0x428>
    80201c66:	adcff0ef          	jal	80200f42 <printk>
    80201c6a:	71c000ef          	jal	80202386 <fork>
    80201c6e:	87aa                	mv	a5,a0
    80201c70:	853e                	mv	a0,a5
    80201c72:	60a2                	ld	ra,8(sp)
    80201c74:	6402                	ld	s0,0(sp)
    80201c76:	0141                	addi	sp,sp,16
    80201c78:	8082                	ret

0000000080201c7a <sys_exec>:
    80201c7a:	7151                	addi	sp,sp,-240
    80201c7c:	f586                	sd	ra,232(sp)
    80201c7e:	f1a2                	sd	s0,224(sp)
    80201c80:	1980                	addi	s0,sp,240
    80201c82:	f0a43c23          	sd	a0,-232(s0)
    80201c86:	4a6000ef          	jal	8020212c <get_cur_proc>
    80201c8a:	fea43423          	sd	a0,-24(s0)
    80201c8e:	fe843783          	ld	a5,-24(s0)
    80201c92:	679c                	ld	a5,8(a5)
    80201c94:	f2040713          	addi	a4,s0,-224
    80201c98:	0c800693          	li	a3,200
    80201c9c:	f1843603          	ld	a2,-232(s0)
    80201ca0:	85ba                	mv	a1,a4
    80201ca2:	853e                	mv	a0,a5
    80201ca4:	6c6010ef          	jal	8020336a <copyinstr>
    80201ca8:	f2040793          	addi	a5,s0,-224
    80201cac:	85be                	mv	a1,a5
    80201cae:	00003517          	auipc	a0,0x3
    80201cb2:	78250513          	addi	a0,a0,1922 # 80205430 <rodata_start+0x430>
    80201cb6:	a8cff0ef          	jal	80200f42 <printk>
    80201cba:	f2040793          	addi	a5,s0,-224
    80201cbe:	853e                	mv	a0,a5
    80201cc0:	78e000ef          	jal	8020244e <exec>
    80201cc4:	87aa                	mv	a5,a0
    80201cc6:	853e                	mv	a0,a5
    80201cc8:	70ae                	ld	ra,232(sp)
    80201cca:	740e                	ld	s0,224(sp)
    80201ccc:	616d                	addi	sp,sp,240
    80201cce:	8082                	ret

0000000080201cd0 <sys_waitpid>:
    80201cd0:	7179                	addi	sp,sp,-48
    80201cd2:	f406                	sd	ra,40(sp)
    80201cd4:	f022                	sd	s0,32(sp)
    80201cd6:	1800                	addi	s0,sp,48
    80201cd8:	87aa                	mv	a5,a0
    80201cda:	fcb43823          	sd	a1,-48(s0)
    80201cde:	fcf42e23          	sw	a5,-36(s0)
    80201ce2:	44a000ef          	jal	8020212c <get_cur_proc>
    80201ce6:	fea43423          	sd	a0,-24(s0)
    80201cea:	fe843783          	ld	a5,-24(s0)
    80201cee:	679c                	ld	a5,8(a5)
    80201cf0:	fd043583          	ld	a1,-48(s0)
    80201cf4:	853e                	mv	a0,a5
    80201cf6:	23c010ef          	jal	80202f32 <useraddr>
    80201cfa:	87aa                	mv	a5,a0
    80201cfc:	fef43023          	sd	a5,-32(s0)
    80201d00:	fdc42783          	lw	a5,-36(s0)
    80201d04:	fe043583          	ld	a1,-32(s0)
    80201d08:	853e                	mv	a0,a5
    80201d0a:	7ae000ef          	jal	802024b8 <wait>
    80201d0e:	87aa                	mv	a5,a0
    80201d10:	853e                	mv	a0,a5
    80201d12:	70a2                	ld	ra,40(sp)
    80201d14:	7402                	ld	s0,32(sp)
    80201d16:	6145                	addi	sp,sp,48
    80201d18:	8082                	ret

0000000080201d1a <syscall>:
    80201d1a:	7139                	addi	sp,sp,-64
    80201d1c:	fc06                	sd	ra,56(sp)
    80201d1e:	f822                	sd	s0,48(sp)
    80201d20:	0080                	addi	s0,sp,64
    80201d22:	fca43c23          	sd	a0,-40(s0)
    80201d26:	fcb43823          	sd	a1,-48(s0)
    80201d2a:	fcc43423          	sd	a2,-56(s0)
    80201d2e:	fcd43023          	sd	a3,-64(s0)
    80201d32:	fd843703          	ld	a4,-40(s0)
    80201d36:	10400793          	li	a5,260
    80201d3a:	10f70c63          	beq	a4,a5,80201e52 <syscall+0x138>
    80201d3e:	fd843703          	ld	a4,-40(s0)
    80201d42:	10400793          	li	a5,260
    80201d46:	12e7eb63          	bltu	a5,a4,80201e7c <syscall+0x162>
    80201d4a:	fd843703          	ld	a4,-40(s0)
    80201d4e:	0dd00793          	li	a5,221
    80201d52:	0ef70463          	beq	a4,a5,80201e3a <syscall+0x120>
    80201d56:	fd843703          	ld	a4,-40(s0)
    80201d5a:	0dd00793          	li	a5,221
    80201d5e:	10e7ef63          	bltu	a5,a4,80201e7c <syscall+0x162>
    80201d62:	fd843703          	ld	a4,-40(s0)
    80201d66:	0dc00793          	li	a5,220
    80201d6a:	0cf70f63          	beq	a4,a5,80201e48 <syscall+0x12e>
    80201d6e:	fd843703          	ld	a4,-40(s0)
    80201d72:	0dc00793          	li	a5,220
    80201d76:	10e7e363          	bltu	a5,a4,80201e7c <syscall+0x162>
    80201d7a:	fd843703          	ld	a4,-40(s0)
    80201d7e:	4795                	li	a5,5
    80201d80:	02e7ed63          	bltu	a5,a4,80201dba <syscall+0xa0>
    80201d84:	fd843783          	ld	a5,-40(s0)
    80201d88:	0e078a63          	beqz	a5,80201e7c <syscall+0x162>
    80201d8c:	fd843703          	ld	a4,-40(s0)
    80201d90:	4795                	li	a5,5
    80201d92:	0ee7e563          	bltu	a5,a4,80201e7c <syscall+0x162>
    80201d96:	fd843783          	ld	a5,-40(s0)
    80201d9a:	00279713          	slli	a4,a5,0x2
    80201d9e:	00003797          	auipc	a5,0x3
    80201da2:	70a78793          	addi	a5,a5,1802 # 802054a8 <rodata_start+0x4a8>
    80201da6:	97ba                	add	a5,a5,a4
    80201da8:	439c                	lw	a5,0(a5)
    80201daa:	0007871b          	sext.w	a4,a5
    80201dae:	00003797          	auipc	a5,0x3
    80201db2:	6fa78793          	addi	a5,a5,1786 # 802054a8 <rodata_start+0x4a8>
    80201db6:	97ba                	add	a5,a5,a4
    80201db8:	8782                	jr	a5
    80201dba:	fd843703          	ld	a4,-40(s0)
    80201dbe:	03f00793          	li	a5,63
    80201dc2:	04f70763          	beq	a4,a5,80201e10 <syscall+0xf6>
    80201dc6:	a85d                	j	80201e7c <syscall+0x162>
    80201dc8:	fc843783          	ld	a5,-56(s0)
    80201dcc:	2781                	sext.w	a5,a5
    80201dce:	85be                	mv	a1,a5
    80201dd0:	fd043503          	ld	a0,-48(s0)
    80201dd4:	c25ff0ef          	jal	802019f8 <sys_write>
    80201dd8:	87aa                	mv	a5,a0
    80201dda:	fef43423          	sd	a5,-24(s0)
    80201dde:	a875                	j	80201e9a <syscall+0x180>
    80201de0:	fd043503          	ld	a0,-48(s0)
    80201de4:	cb1ff0ef          	jal	80201a94 <sys_exit>
    80201de8:	cc5ff0ef          	jal	80201aac <sys_stack_trace>
    80201dec:	87aa                	mv	a5,a0
    80201dee:	fef43423          	sd	a5,-24(s0)
    80201df2:	a065                	j	80201e9a <syscall+0x180>
    80201df4:	d27ff0ef          	jal	80201b1a <sys_yield>
    80201df8:	87aa                	mv	a5,a0
    80201dfa:	fef43423          	sd	a5,-24(s0)
    80201dfe:	a871                	j	80201e9a <syscall+0x180>
    80201e00:	fd043783          	ld	a5,-48(s0)
    80201e04:	853e                	mv	a0,a5
    80201e06:	d2dff0ef          	jal	80201b32 <sys_get_tiem>
    80201e0a:	fea43423          	sd	a0,-24(s0)
    80201e0e:	a071                	j	80201e9a <syscall+0x180>
    80201e10:	fc043583          	ld	a1,-64(s0)
    80201e14:	00003517          	auipc	a0,0x3
    80201e18:	62c50513          	addi	a0,a0,1580 # 80205440 <rodata_start+0x440>
    80201e1c:	926ff0ef          	jal	80200f42 <printk>
    80201e20:	fd043783          	ld	a5,-48(s0)
    80201e24:	2781                	sext.w	a5,a5
    80201e26:	fc043603          	ld	a2,-64(s0)
    80201e2a:	fc843583          	ld	a1,-56(s0)
    80201e2e:	853e                	mv	a0,a5
    80201e30:	d87ff0ef          	jal	80201bb6 <sys_read>
    80201e34:	fea43423          	sd	a0,-24(s0)
    80201e38:	a08d                	j	80201e9a <syscall+0x180>
    80201e3a:	fd043503          	ld	a0,-48(s0)
    80201e3e:	e3dff0ef          	jal	80201c7a <sys_exec>
    80201e42:	fea43423          	sd	a0,-24(s0)
    80201e46:	a891                	j	80201e9a <syscall+0x180>
    80201e48:	e0fff0ef          	jal	80201c56 <sys_fork>
    80201e4c:	fea43423          	sd	a0,-24(s0)
    80201e50:	a0a9                	j	80201e9a <syscall+0x180>
    80201e52:	fc843603          	ld	a2,-56(s0)
    80201e56:	fd043583          	ld	a1,-48(s0)
    80201e5a:	00003517          	auipc	a0,0x3
    80201e5e:	5f650513          	addi	a0,a0,1526 # 80205450 <rodata_start+0x450>
    80201e62:	8e0ff0ef          	jal	80200f42 <printk>
    80201e66:	fd043783          	ld	a5,-48(s0)
    80201e6a:	2781                	sext.w	a5,a5
    80201e6c:	fc843583          	ld	a1,-56(s0)
    80201e70:	853e                	mv	a0,a5
    80201e72:	e5fff0ef          	jal	80201cd0 <sys_waitpid>
    80201e76:	fea43423          	sd	a0,-24(s0)
    80201e7a:	a005                	j	80201e9a <syscall+0x180>
    80201e7c:	fd843583          	ld	a1,-40(s0)
    80201e80:	00003517          	auipc	a0,0x3
    80201e84:	5e850513          	addi	a0,a0,1512 # 80205468 <rodata_start+0x468>
    80201e88:	8baff0ef          	jal	80200f42 <printk>
    80201e8c:	00003517          	auipc	a0,0x3
    80201e90:	5fc50513          	addi	a0,a0,1532 # 80205488 <rodata_start+0x488>
    80201e94:	8b9fe0ef          	jal	8020074c <panic>
    80201e98:	0001                	nop
    80201e9a:	fe843783          	ld	a5,-24(s0)
    80201e9e:	853e                	mv	a0,a5
    80201ea0:	70e2                	ld	ra,56(sp)
    80201ea2:	7442                	ld	s0,48(sp)
    80201ea4:	6121                	addi	sp,sp,64
    80201ea6:	8082                	ret

0000000080201ea8 <__switch>:
    80201ea8:	00153023          	sd	ra,0(a0)
    80201eac:	00253423          	sd	sp,8(a0)
    80201eb0:	e900                	sd	s0,16(a0)
    80201eb2:	ed04                	sd	s1,24(a0)
    80201eb4:	03253023          	sd	s2,32(a0)
    80201eb8:	03353423          	sd	s3,40(a0)
    80201ebc:	03453823          	sd	s4,48(a0)
    80201ec0:	03553c23          	sd	s5,56(a0)
    80201ec4:	05653023          	sd	s6,64(a0)
    80201ec8:	05753423          	sd	s7,72(a0)
    80201ecc:	05853823          	sd	s8,80(a0)
    80201ed0:	05953c23          	sd	s9,88(a0)
    80201ed4:	07a53023          	sd	s10,96(a0)
    80201ed8:	07b53423          	sd	s11,104(a0)
    80201edc:	0005b083          	ld	ra,0(a1)
    80201ee0:	0085b103          	ld	sp,8(a1)
    80201ee4:	6980                	ld	s0,16(a1)
    80201ee6:	6d84                	ld	s1,24(a1)
    80201ee8:	0205b903          	ld	s2,32(a1)
    80201eec:	0285b983          	ld	s3,40(a1)
    80201ef0:	0305ba03          	ld	s4,48(a1)
    80201ef4:	0385ba83          	ld	s5,56(a1)
    80201ef8:	0405bb03          	ld	s6,64(a1)
    80201efc:	0485bb83          	ld	s7,72(a1)
    80201f00:	0505bc03          	ld	s8,80(a1)
    80201f04:	0585bc83          	ld	s9,88(a1)
    80201f08:	0605bd03          	ld	s10,96(a1)
    80201f0c:	0685bd83          	ld	s11,104(a1)
    80201f10:	8082                	ret

0000000080201f12 <getpid>:
    80201f12:	1141                	addi	sp,sp,-16
    80201f14:	e406                	sd	ra,8(sp)
    80201f16:	e022                	sd	s0,0(sp)
    80201f18:	0800                	addi	s0,sp,16
    80201f1a:	212000ef          	jal	8020212c <get_cur_proc>
    80201f1e:	87aa                	mv	a5,a0
    80201f20:	43dc                	lw	a5,4(a5)
    80201f22:	853e                	mv	a0,a5
    80201f24:	60a2                	ld	ra,8(sp)
    80201f26:	6402                	ld	s0,0(sp)
    80201f28:	0141                	addi	sp,sp,16
    80201f2a:	8082                	ret

0000000080201f2c <proc_init>:
    80201f2c:	1101                	addi	sp,sp,-32
    80201f2e:	ec06                	sd	ra,24(sp)
    80201f30:	e822                	sd	s0,16(sp)
    80201f32:	1000                	addi	s0,sp,32
    80201f34:	00003517          	auipc	a0,0x3
    80201f38:	59450513          	addi	a0,a0,1428 # 802054c8 <rodata_start+0x4c8>
    80201f3c:	806ff0ef          	jal	80200f42 <printk>
    80201f40:	0001e797          	auipc	a5,0x1e
    80201f44:	0c078793          	addi	a5,a5,192 # 80220000 <proc>
    80201f48:	fef43423          	sd	a5,-24(s0)
    80201f4c:	a051                	j	80201fd0 <proc_init+0xa4>
    80201f4e:	fe843703          	ld	a4,-24(s0)
    80201f52:	0001e797          	auipc	a5,0x1e
    80201f56:	0ae78793          	addi	a5,a5,174 # 80220000 <proc>
    80201f5a:	40f707b3          	sub	a5,a4,a5
    80201f5e:	4047d713          	srai	a4,a5,0x4
    80201f62:	00003797          	auipc	a5,0x3
    80201f66:	69678793          	addi	a5,a5,1686 # 802055f8 <rodata_start+0x5f8>
    80201f6a:	639c                	ld	a5,0(a5)
    80201f6c:	02f707b3          	mul	a5,a4,a5
    80201f70:	00c79713          	slli	a4,a5,0xc
    80201f74:	00034797          	auipc	a5,0x34
    80201f78:	08c78793          	addi	a5,a5,140 # 80236000 <kstack>
    80201f7c:	97ba                	add	a5,a5,a4
    80201f7e:	873e                	mv	a4,a5
    80201f80:	fe843783          	ld	a5,-24(s0)
    80201f84:	eb98                	sd	a4,16(a5)
    80201f86:	fe843703          	ld	a4,-24(s0)
    80201f8a:	0001e797          	auipc	a5,0x1e
    80201f8e:	07678793          	addi	a5,a5,118 # 80220000 <proc>
    80201f92:	40f707b3          	sub	a5,a4,a5
    80201f96:	4047d713          	srai	a4,a5,0x4
    80201f9a:	00003797          	auipc	a5,0x3
    80201f9e:	65e78793          	addi	a5,a5,1630 # 802055f8 <rodata_start+0x5f8>
    80201fa2:	639c                	ld	a5,0(a5)
    80201fa4:	02f707b3          	mul	a5,a4,a5
    80201fa8:	00c79713          	slli	a4,a5,0xc
    80201fac:	00234797          	auipc	a5,0x234
    80201fb0:	05478793          	addi	a5,a5,84 # 80436000 <trapframe_all>
    80201fb4:	973e                	add	a4,a4,a5
    80201fb6:	fe843783          	ld	a5,-24(s0)
    80201fba:	f398                	sd	a4,32(a5)
    80201fbc:	fe843783          	ld	a5,-24(s0)
    80201fc0:	0007a023          	sw	zero,0(a5)
    80201fc4:	fe843783          	ld	a5,-24(s0)
    80201fc8:	0b078793          	addi	a5,a5,176
    80201fcc:	fef43423          	sd	a5,-24(s0)
    80201fd0:	fe843703          	ld	a4,-24(s0)
    80201fd4:	00034797          	auipc	a5,0x34
    80201fd8:	02c78793          	addi	a5,a5,44 # 80236000 <kstack>
    80201fdc:	f6f769e3          	bltu	a4,a5,80201f4e <proc_init+0x22>
    80201fe0:	00435797          	auipc	a5,0x435
    80201fe4:	0f078793          	addi	a5,a5,240 # 806370d0 <current_proc>
    80201fe8:	00434717          	auipc	a4,0x434
    80201fec:	01870713          	addi	a4,a4,24 # 80636000 <os_proc>
    80201ff0:	e398                	sd	a4,0(a5)
    80201ff2:	0001c717          	auipc	a4,0x1c
    80201ff6:	00e70713          	addi	a4,a4,14 # 8021e000 <names>
    80201ffa:	00434797          	auipc	a5,0x434
    80201ffe:	00678793          	addi	a5,a5,6 # 80636000 <os_proc>
    80202002:	eb98                	sd	a4,16(a5)
    80202004:	00434797          	auipc	a5,0x434
    80202008:	ffc78793          	addi	a5,a5,-4 # 80636000 <os_proc>
    8020200c:	0007a223          	sw	zero,4(a5)
    80202010:	00434517          	auipc	a0,0x434
    80202014:	0a050513          	addi	a0,a0,160 # 806360b0 <task_queue>
    80202018:	460010ef          	jal	80203478 <init_queue>
    8020201c:	0001                	nop
    8020201e:	60e2                	ld	ra,24(sp)
    80202020:	6442                	ld	s0,16(sp)
    80202022:	6105                	addi	sp,sp,32
    80202024:	8082                	ret

0000000080202026 <allocpid>:
    80202026:	1141                	addi	sp,sp,-16
    80202028:	e406                	sd	ra,8(sp)
    8020202a:	e022                	sd	s0,0(sp)
    8020202c:	0800                	addi	s0,sp,16
    8020202e:	0000b797          	auipc	a5,0xb
    80202032:	fd278793          	addi	a5,a5,-46 # 8020d000 <PID.0>
    80202036:	439c                	lw	a5,0(a5)
    80202038:	0017871b          	addiw	a4,a5,1
    8020203c:	0007069b          	sext.w	a3,a4
    80202040:	0000b717          	auipc	a4,0xb
    80202044:	fc070713          	addi	a4,a4,-64 # 8020d000 <PID.0>
    80202048:	c314                	sw	a3,0(a4)
    8020204a:	853e                	mv	a0,a5
    8020204c:	60a2                	ld	ra,8(sp)
    8020204e:	6402                	ld	s0,0(sp)
    80202050:	0141                	addi	sp,sp,16
    80202052:	8082                	ret

0000000080202054 <allocate_proc>:
    80202054:	1101                	addi	sp,sp,-32
    80202056:	ec06                	sd	ra,24(sp)
    80202058:	e822                	sd	s0,16(sp)
    8020205a:	1000                	addi	s0,sp,32
    8020205c:	0001e797          	auipc	a5,0x1e
    80202060:	fa478793          	addi	a5,a5,-92 # 80220000 <proc>
    80202064:	fef43423          	sd	a5,-24(s0)
    80202068:	a065                	j	80202110 <allocate_proc+0xbc>
    8020206a:	fe843783          	ld	a5,-24(s0)
    8020206e:	439c                	lw	a5,0(a5)
    80202070:	ebd1                	bnez	a5,80202104 <allocate_proc+0xb0>
    80202072:	fe843783          	ld	a5,-24(s0)
    80202076:	4705                	li	a4,1
    80202078:	c398                	sw	a4,0(a5)
    8020207a:	fadff0ef          	jal	80202026 <allocpid>
    8020207e:	87aa                	mv	a5,a0
    80202080:	873e                	mv	a4,a5
    80202082:	fe843783          	ld	a5,-24(s0)
    80202086:	c3d8                	sw	a4,4(a5)
    80202088:	fe843783          	ld	a5,-24(s0)
    8020208c:	739c                	ld	a5,32(a5)
    8020208e:	853e                	mv	a0,a5
    80202090:	3d3000ef          	jal	80202c62 <uvmcreate>
    80202094:	872a                	mv	a4,a0
    80202096:	fe843783          	ld	a5,-24(s0)
    8020209a:	e798                	sd	a4,8(a5)
    8020209c:	fe843783          	ld	a5,-24(s0)
    802020a0:	0007bc23          	sd	zero,24(a5)
    802020a4:	fe843783          	ld	a5,-24(s0)
    802020a8:	739c                	ld	a5,32(a5)
    802020aa:	4621                	li	a2,8
    802020ac:	4581                	li	a1,0
    802020ae:	853e                	mv	a0,a5
    802020b0:	d80ff0ef          	jal	80201630 <memset>
    802020b4:	fe843783          	ld	a5,-24(s0)
    802020b8:	02878793          	addi	a5,a5,40
    802020bc:	07000613          	li	a2,112
    802020c0:	4581                	li	a1,0
    802020c2:	853e                	mv	a0,a5
    802020c4:	d6cff0ef          	jal	80201630 <memset>
    802020c8:	fffff717          	auipc	a4,0xfffff
    802020cc:	1d470713          	addi	a4,a4,468 # 8020129c <usertrapret>
    802020d0:	fe843783          	ld	a5,-24(s0)
    802020d4:	f798                	sd	a4,40(a5)
    802020d6:	fe843783          	ld	a5,-24(s0)
    802020da:	6b98                	ld	a4,16(a5)
    802020dc:	6785                	lui	a5,0x1
    802020de:	973e                	add	a4,a4,a5
    802020e0:	fe843783          	ld	a5,-24(s0)
    802020e4:	fb98                	sd	a4,48(a5)
    802020e6:	fe843783          	ld	a5,-24(s0)
    802020ea:	0807bc23          	sd	zero,152(a5) # 1098 <n+0x1078>
    802020ee:	fe843783          	ld	a5,-24(s0)
    802020f2:	0a07b023          	sd	zero,160(a5)
    802020f6:	fe843783          	ld	a5,-24(s0)
    802020fa:	0a07b423          	sd	zero,168(a5)
    802020fe:	fe843783          	ld	a5,-24(s0)
    80202102:	a005                	j	80202122 <allocate_proc+0xce>
    80202104:	fe843783          	ld	a5,-24(s0)
    80202108:	0b078793          	addi	a5,a5,176
    8020210c:	fef43423          	sd	a5,-24(s0)
    80202110:	fe843703          	ld	a4,-24(s0)
    80202114:	00034797          	auipc	a5,0x34
    80202118:	eec78793          	addi	a5,a5,-276 # 80236000 <kstack>
    8020211c:	f4f767e3          	bltu	a4,a5,8020206a <allocate_proc+0x16>
    80202120:	4781                	li	a5,0
    80202122:	853e                	mv	a0,a5
    80202124:	60e2                	ld	ra,24(sp)
    80202126:	6442                	ld	s0,16(sp)
    80202128:	6105                	addi	sp,sp,32
    8020212a:	8082                	ret

000000008020212c <get_cur_proc>:
    8020212c:	1141                	addi	sp,sp,-16
    8020212e:	e406                	sd	ra,8(sp)
    80202130:	e022                	sd	s0,0(sp)
    80202132:	0800                	addi	s0,sp,16
    80202134:	00435797          	auipc	a5,0x435
    80202138:	f9c78793          	addi	a5,a5,-100 # 806370d0 <current_proc>
    8020213c:	639c                	ld	a5,0(a5)
    8020213e:	853e                	mv	a0,a5
    80202140:	60a2                	ld	ra,8(sp)
    80202142:	6402                	ld	s0,0(sp)
    80202144:	0141                	addi	sp,sp,16
    80202146:	8082                	ret

0000000080202148 <fetch_task>:
    80202148:	1101                	addi	sp,sp,-32
    8020214a:	ec06                	sd	ra,24(sp)
    8020214c:	e822                	sd	s0,16(sp)
    8020214e:	1000                	addi	s0,sp,32
    80202150:	00434517          	auipc	a0,0x434
    80202154:	f6050513          	addi	a0,a0,-160 # 806360b0 <task_queue>
    80202158:	402010ef          	jal	8020355a <pop_queue>
    8020215c:	87aa                	mv	a5,a0
    8020215e:	fef42623          	sw	a5,-20(s0)
    80202162:	fec42783          	lw	a5,-20(s0)
    80202166:	2781                	sext.w	a5,a5
    80202168:	0007da63          	bgez	a5,8020217c <fetch_task+0x34>
    8020216c:	00003517          	auipc	a0,0x3
    80202170:	37450513          	addi	a0,a0,884 # 802054e0 <rodata_start+0x4e0>
    80202174:	dcffe0ef          	jal	80200f42 <printk>
    80202178:	4781                	li	a5,0
    8020217a:	a821                	j	80202192 <fetch_task+0x4a>
    8020217c:	fec42703          	lw	a4,-20(s0)
    80202180:	0b000793          	li	a5,176
    80202184:	02f70733          	mul	a4,a4,a5
    80202188:	0001e797          	auipc	a5,0x1e
    8020218c:	e7878793          	addi	a5,a5,-392 # 80220000 <proc>
    80202190:	97ba                	add	a5,a5,a4
    80202192:	853e                	mv	a0,a5
    80202194:	60e2                	ld	ra,24(sp)
    80202196:	6442                	ld	s0,16(sp)
    80202198:	6105                	addi	sp,sp,32
    8020219a:	8082                	ret

000000008020219c <add_task>:
    8020219c:	1101                	addi	sp,sp,-32
    8020219e:	ec06                	sd	ra,24(sp)
    802021a0:	e822                	sd	s0,16(sp)
    802021a2:	1000                	addi	s0,sp,32
    802021a4:	fea43423          	sd	a0,-24(s0)
    802021a8:	fe843703          	ld	a4,-24(s0)
    802021ac:	0001e797          	auipc	a5,0x1e
    802021b0:	e5478793          	addi	a5,a5,-428 # 80220000 <proc>
    802021b4:	40f707b3          	sub	a5,a4,a5
    802021b8:	4047d713          	srai	a4,a5,0x4
    802021bc:	00003797          	auipc	a5,0x3
    802021c0:	43c78793          	addi	a5,a5,1084 # 802055f8 <rodata_start+0x5f8>
    802021c4:	639c                	ld	a5,0(a5)
    802021c6:	02f707b3          	mul	a5,a4,a5
    802021ca:	2781                	sext.w	a5,a5
    802021cc:	85be                	mv	a1,a5
    802021ce:	00434517          	auipc	a0,0x434
    802021d2:	ee250513          	addi	a0,a0,-286 # 806360b0 <task_queue>
    802021d6:	2e4010ef          	jal	802034ba <push_queue>
    802021da:	0001                	nop
    802021dc:	60e2                	ld	ra,24(sp)
    802021de:	6442                	ld	s0,16(sp)
    802021e0:	6105                	addi	sp,sp,32
    802021e2:	8082                	ret

00000000802021e4 <scheduler>:
    802021e4:	1101                	addi	sp,sp,-32
    802021e6:	ec06                	sd	ra,24(sp)
    802021e8:	e822                	sd	s0,16(sp)
    802021ea:	1000                	addi	s0,sp,32
    802021ec:	f5dff0ef          	jal	80202148 <fetch_task>
    802021f0:	fea43423          	sd	a0,-24(s0)
    802021f4:	fe843783          	ld	a5,-24(s0)
    802021f8:	e799                	bnez	a5,80202206 <scheduler+0x22>
    802021fa:	00003517          	auipc	a0,0x3
    802021fe:	30e50513          	addi	a0,a0,782 # 80205508 <rodata_start+0x508>
    80202202:	d4afe0ef          	jal	8020074c <panic>
    80202206:	fe843703          	ld	a4,-24(s0)
    8020220a:	0001e797          	auipc	a5,0x1e
    8020220e:	df678793          	addi	a5,a5,-522 # 80220000 <proc>
    80202212:	40f707b3          	sub	a5,a4,a5
    80202216:	4047d713          	srai	a4,a5,0x4
    8020221a:	00003797          	auipc	a5,0x3
    8020221e:	3de78793          	addi	a5,a5,990 # 802055f8 <rodata_start+0x5f8>
    80202222:	639c                	ld	a5,0(a5)
    80202224:	02f707b3          	mul	a5,a4,a5
    80202228:	85be                	mv	a1,a5
    8020222a:	00003517          	auipc	a0,0x3
    8020222e:	2f650513          	addi	a0,a0,758 # 80205520 <rodata_start+0x520>
    80202232:	d11fe0ef          	jal	80200f42 <printk>
    80202236:	fe843783          	ld	a5,-24(s0)
    8020223a:	4711                	li	a4,4
    8020223c:	c398                	sw	a4,0(a5)
    8020223e:	00435797          	auipc	a5,0x435
    80202242:	e9278793          	addi	a5,a5,-366 # 806370d0 <current_proc>
    80202246:	fe843703          	ld	a4,-24(s0)
    8020224a:	e398                	sd	a4,0(a5)
    8020224c:	fe843783          	ld	a5,-24(s0)
    80202250:	02878793          	addi	a5,a5,40
    80202254:	85be                	mv	a1,a5
    80202256:	00434517          	auipc	a0,0x434
    8020225a:	dd250513          	addi	a0,a0,-558 # 80636028 <os_proc+0x28>
    8020225e:	c4bff0ef          	jal	80201ea8 <__switch>
    80202262:	b769                	j	802021ec <scheduler+0x8>

0000000080202264 <sched>:
    80202264:	1101                	addi	sp,sp,-32
    80202266:	ec06                	sd	ra,24(sp)
    80202268:	e822                	sd	s0,16(sp)
    8020226a:	1000                	addi	s0,sp,32
    8020226c:	ec1ff0ef          	jal	8020212c <get_cur_proc>
    80202270:	fea43423          	sd	a0,-24(s0)
    80202274:	fe843783          	ld	a5,-24(s0)
    80202278:	4398                	lw	a4,0(a5)
    8020227a:	4791                	li	a5,4
    8020227c:	00f71863          	bne	a4,a5,8020228c <sched+0x28>
    80202280:	00003517          	auipc	a0,0x3
    80202284:	2c850513          	addi	a0,a0,712 # 80205548 <rodata_start+0x548>
    80202288:	cc4fe0ef          	jal	8020074c <panic>
    8020228c:	fe843783          	ld	a5,-24(s0)
    80202290:	02878793          	addi	a5,a5,40
    80202294:	00434597          	auipc	a1,0x434
    80202298:	d9458593          	addi	a1,a1,-620 # 80636028 <os_proc+0x28>
    8020229c:	853e                	mv	a0,a5
    8020229e:	c0bff0ef          	jal	80201ea8 <__switch>
    802022a2:	0001                	nop
    802022a4:	60e2                	ld	ra,24(sp)
    802022a6:	6442                	ld	s0,16(sp)
    802022a8:	6105                	addi	sp,sp,32
    802022aa:	8082                	ret

00000000802022ac <yield>:
    802022ac:	1141                	addi	sp,sp,-16
    802022ae:	e406                	sd	ra,8(sp)
    802022b0:	e022                	sd	s0,0(sp)
    802022b2:	0800                	addi	s0,sp,16
    802022b4:	00435797          	auipc	a5,0x435
    802022b8:	e1c78793          	addi	a5,a5,-484 # 806370d0 <current_proc>
    802022bc:	639c                	ld	a5,0(a5)
    802022be:	4398                	lw	a4,0(a5)
    802022c0:	4791                	li	a5,4
    802022c2:	00f71963          	bne	a4,a5,802022d4 <yield+0x28>
    802022c6:	00435797          	auipc	a5,0x435
    802022ca:	e0a78793          	addi	a5,a5,-502 # 806370d0 <current_proc>
    802022ce:	639c                	ld	a5,0(a5)
    802022d0:	470d                	li	a4,3
    802022d2:	c398                	sw	a4,0(a5)
    802022d4:	00435797          	auipc	a5,0x435
    802022d8:	dfc78793          	addi	a5,a5,-516 # 806370d0 <current_proc>
    802022dc:	639c                	ld	a5,0(a5)
    802022de:	853e                	mv	a0,a5
    802022e0:	ebdff0ef          	jal	8020219c <add_task>
    802022e4:	f81ff0ef          	jal	80202264 <sched>
    802022e8:	0001                	nop
    802022ea:	60a2                	ld	ra,8(sp)
    802022ec:	6402                	ld	s0,0(sp)
    802022ee:	0141                	addi	sp,sp,16
    802022f0:	8082                	ret

00000000802022f2 <freepagetable>:
    802022f2:	1101                	addi	sp,sp,-32
    802022f4:	ec06                	sd	ra,24(sp)
    802022f6:	e822                	sd	s0,16(sp)
    802022f8:	1000                	addi	s0,sp,32
    802022fa:	fea43423          	sd	a0,-24(s0)
    802022fe:	feb43023          	sd	a1,-32(s0)
    80202302:	4681                	li	a3,0
    80202304:	4605                	li	a2,1
    80202306:	040007b7          	lui	a5,0x4000
    8020230a:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    8020230c:	00c79593          	slli	a1,a5,0xc
    80202310:	fe843503          	ld	a0,-24(s0)
    80202314:	07b000ef          	jal	80202b8e <uvmunmap>
    80202318:	4681                	li	a3,0
    8020231a:	4605                	li	a2,1
    8020231c:	020007b7          	lui	a5,0x2000
    80202320:	17fd                	addi	a5,a5,-1 # 1ffffff <n+0x1ffffdf>
    80202322:	00d79593          	slli	a1,a5,0xd
    80202326:	fe843503          	ld	a0,-24(s0)
    8020232a:	065000ef          	jal	80202b8e <uvmunmap>
    8020232e:	fe043583          	ld	a1,-32(s0)
    80202332:	fe843503          	ld	a0,-24(s0)
    80202336:	1cf000ef          	jal	80202d04 <uvmfree>
    8020233a:	0001                	nop
    8020233c:	60e2                	ld	ra,24(sp)
    8020233e:	6442                	ld	s0,16(sp)
    80202340:	6105                	addi	sp,sp,32
    80202342:	8082                	ret

0000000080202344 <freeproc>:
    80202344:	1101                	addi	sp,sp,-32
    80202346:	ec06                	sd	ra,24(sp)
    80202348:	e822                	sd	s0,16(sp)
    8020234a:	1000                	addi	s0,sp,32
    8020234c:	fea43423          	sd	a0,-24(s0)
    80202350:	fe843783          	ld	a5,-24(s0)
    80202354:	679c                	ld	a5,8(a5)
    80202356:	cb99                	beqz	a5,8020236c <freeproc+0x28>
    80202358:	fe843783          	ld	a5,-24(s0)
    8020235c:	6798                	ld	a4,8(a5)
    8020235e:	fe843783          	ld	a5,-24(s0)
    80202362:	6fdc                	ld	a5,152(a5)
    80202364:	85be                	mv	a1,a5
    80202366:	853a                	mv	a0,a4
    80202368:	f8bff0ef          	jal	802022f2 <freepagetable>
    8020236c:	fe843783          	ld	a5,-24(s0)
    80202370:	0007b423          	sd	zero,8(a5)
    80202374:	fe843783          	ld	a5,-24(s0)
    80202378:	0007a023          	sw	zero,0(a5)
    8020237c:	0001                	nop
    8020237e:	60e2                	ld	ra,24(sp)
    80202380:	6442                	ld	s0,16(sp)
    80202382:	6105                	addi	sp,sp,32
    80202384:	8082                	ret

0000000080202386 <fork>:
    80202386:	1101                	addi	sp,sp,-32
    80202388:	ec06                	sd	ra,24(sp)
    8020238a:	e822                	sd	s0,16(sp)
    8020238c:	1000                	addi	s0,sp,32
    8020238e:	d9fff0ef          	jal	8020212c <get_cur_proc>
    80202392:	fea43423          	sd	a0,-24(s0)
    80202396:	cbfff0ef          	jal	80202054 <allocate_proc>
    8020239a:	fea43023          	sd	a0,-32(s0)
    8020239e:	fe043783          	ld	a5,-32(s0)
    802023a2:	e799                	bnez	a5,802023b0 <fork+0x2a>
    802023a4:	00003517          	auipc	a0,0x3
    802023a8:	1b450513          	addi	a0,a0,436 # 80205558 <rodata_start+0x558>
    802023ac:	ba0fe0ef          	jal	8020074c <panic>
    802023b0:	fe843783          	ld	a5,-24(s0)
    802023b4:	6798                	ld	a4,8(a5)
    802023b6:	fe043783          	ld	a5,-32(s0)
    802023ba:	6794                	ld	a3,8(a5)
    802023bc:	fe843783          	ld	a5,-24(s0)
    802023c0:	6fdc                	ld	a5,152(a5)
    802023c2:	863e                	mv	a2,a5
    802023c4:	85b6                	mv	a1,a3
    802023c6:	853a                	mv	a0,a4
    802023c8:	3af000ef          	jal	80202f76 <uvmcopy>
    802023cc:	87aa                	mv	a5,a0
    802023ce:	0007d863          	bgez	a5,802023de <fork+0x58>
    802023d2:	00003517          	auipc	a0,0x3
    802023d6:	19650513          	addi	a0,a0,406 # 80205568 <rodata_start+0x568>
    802023da:	b72fe0ef          	jal	8020074c <panic>
    802023de:	fe843783          	ld	a5,-24(s0)
    802023e2:	6fd8                	ld	a4,152(a5)
    802023e4:	fe043783          	ld	a5,-32(s0)
    802023e8:	efd8                	sd	a4,152(a5)
    802023ea:	fe843783          	ld	a5,-24(s0)
    802023ee:	7398                	ld	a4,32(a5)
    802023f0:	fe043783          	ld	a5,-32(s0)
    802023f4:	739c                	ld	a5,32(a5)
    802023f6:	86be                	mv	a3,a5
    802023f8:	12800793          	li	a5,296
    802023fc:	863e                	mv	a2,a5
    802023fe:	85ba                	mv	a1,a4
    80202400:	8536                	mv	a0,a3
    80202402:	8f4ff0ef          	jal	802014f6 <memcpy>
    80202406:	fe043783          	ld	a5,-32(s0)
    8020240a:	739c                	ld	a5,32(a5)
    8020240c:	0407b823          	sd	zero,80(a5)
    80202410:	fe043783          	ld	a5,-32(s0)
    80202414:	fe843703          	ld	a4,-24(s0)
    80202418:	f3d8                	sd	a4,160(a5)
    8020241a:	fe043783          	ld	a5,-32(s0)
    8020241e:	470d                	li	a4,3
    80202420:	c398                	sw	a4,0(a5)
    80202422:	fe043503          	ld	a0,-32(s0)
    80202426:	d77ff0ef          	jal	8020219c <add_task>
    8020242a:	fe043783          	ld	a5,-32(s0)
    8020242e:	43dc                	lw	a5,4(a5)
    80202430:	85be                	mv	a1,a5
    80202432:	00003517          	auipc	a0,0x3
    80202436:	14650513          	addi	a0,a0,326 # 80205578 <rodata_start+0x578>
    8020243a:	b09fe0ef          	jal	80200f42 <printk>
    8020243e:	fe043783          	ld	a5,-32(s0)
    80202442:	43dc                	lw	a5,4(a5)
    80202444:	853e                	mv	a0,a5
    80202446:	60e2                	ld	ra,24(sp)
    80202448:	6442                	ld	s0,16(sp)
    8020244a:	6105                	addi	sp,sp,32
    8020244c:	8082                	ret

000000008020244e <exec>:
    8020244e:	7179                	addi	sp,sp,-48
    80202450:	f406                	sd	ra,40(sp)
    80202452:	f022                	sd	s0,32(sp)
    80202454:	1800                	addi	s0,sp,48
    80202456:	fca43c23          	sd	a0,-40(s0)
    8020245a:	fd843503          	ld	a0,-40(s0)
    8020245e:	cb5fd0ef          	jal	80200112 <get_id_by_name>
    80202462:	87aa                	mv	a5,a0
    80202464:	fef42623          	sw	a5,-20(s0)
    80202468:	fec42783          	lw	a5,-20(s0)
    8020246c:	2781                	sext.w	a5,a5
    8020246e:	0007d463          	bgez	a5,80202476 <exec+0x28>
    80202472:	57fd                	li	a5,-1
    80202474:	a82d                	j	802024ae <exec+0x60>
    80202476:	cb7ff0ef          	jal	8020212c <get_cur_proc>
    8020247a:	fea43023          	sd	a0,-32(s0)
    8020247e:	fe043783          	ld	a5,-32(s0)
    80202482:	6798                	ld	a4,8(a5)
    80202484:	fe043783          	ld	a5,-32(s0)
    80202488:	6fdc                	ld	a5,152(a5)
    8020248a:	4685                	li	a3,1
    8020248c:	863e                	mv	a2,a5
    8020248e:	4581                	li	a1,0
    80202490:	853a                	mv	a0,a4
    80202492:	6fc000ef          	jal	80202b8e <uvmunmap>
    80202496:	fe043783          	ld	a5,-32(s0)
    8020249a:	0807bc23          	sd	zero,152(a5)
    8020249e:	fec42783          	lw	a5,-20(s0)
    802024a2:	fe043583          	ld	a1,-32(s0)
    802024a6:	853e                	mv	a0,a5
    802024a8:	f29fd0ef          	jal	802003d0 <loader>
    802024ac:	4781                	li	a5,0
    802024ae:	853e                	mv	a0,a5
    802024b0:	70a2                	ld	ra,40(sp)
    802024b2:	7402                	ld	s0,32(sp)
    802024b4:	6145                	addi	sp,sp,48
    802024b6:	8082                	ret

00000000802024b8 <wait>:
    802024b8:	7139                	addi	sp,sp,-64
    802024ba:	fc06                	sd	ra,56(sp)
    802024bc:	f822                	sd	s0,48(sp)
    802024be:	0080                	addi	s0,sp,64
    802024c0:	87aa                	mv	a5,a0
    802024c2:	fcb43023          	sd	a1,-64(s0)
    802024c6:	fcf42623          	sw	a5,-52(s0)
    802024ca:	c63ff0ef          	jal	8020212c <get_cur_proc>
    802024ce:	fca43c23          	sd	a0,-40(s0)
    802024d2:	fe042223          	sw	zero,-28(s0)
    802024d6:	0001e797          	auipc	a5,0x1e
    802024da:	b2a78793          	addi	a5,a5,-1238 # 80220000 <proc>
    802024de:	fef43423          	sd	a5,-24(s0)
    802024e2:	a051                	j	80202566 <wait+0xae>
    802024e4:	fe843783          	ld	a5,-24(s0)
    802024e8:	439c                	lw	a5,0(a5)
    802024ea:	cba5                	beqz	a5,8020255a <wait+0xa2>
    802024ec:	fe843783          	ld	a5,-24(s0)
    802024f0:	73dc                	ld	a5,160(a5)
    802024f2:	fd843703          	ld	a4,-40(s0)
    802024f6:	06f71263          	bne	a4,a5,8020255a <wait+0xa2>
    802024fa:	fcc42783          	lw	a5,-52(s0)
    802024fe:	2781                	sext.w	a5,a5
    80202500:	00f05a63          	blez	a5,80202514 <wait+0x5c>
    80202504:	fe843783          	ld	a5,-24(s0)
    80202508:	43dc                	lw	a5,4(a5)
    8020250a:	fcc42703          	lw	a4,-52(s0)
    8020250e:	2701                	sext.w	a4,a4
    80202510:	04f71563          	bne	a4,a5,8020255a <wait+0xa2>
    80202514:	00003517          	auipc	a0,0x3
    80202518:	07c50513          	addi	a0,a0,124 # 80205590 <rodata_start+0x590>
    8020251c:	a27fe0ef          	jal	80200f42 <printk>
    80202520:	4785                	li	a5,1
    80202522:	fef42223          	sw	a5,-28(s0)
    80202526:	fe843783          	ld	a5,-24(s0)
    8020252a:	4398                	lw	a4,0(a5)
    8020252c:	4795                	li	a5,5
    8020252e:	02f71663          	bne	a4,a5,8020255a <wait+0xa2>
    80202532:	fe843783          	ld	a5,-24(s0)
    80202536:	0007a023          	sw	zero,0(a5)
    8020253a:	fe843783          	ld	a5,-24(s0)
    8020253e:	43dc                	lw	a5,4(a5)
    80202540:	fcf42623          	sw	a5,-52(s0)
    80202544:	fe843783          	ld	a5,-24(s0)
    80202548:	77dc                	ld	a5,168(a5)
    8020254a:	0007871b          	sext.w	a4,a5
    8020254e:	fc043783          	ld	a5,-64(s0)
    80202552:	c398                	sw	a4,0(a5)
    80202554:	fcc42783          	lw	a5,-52(s0)
    80202558:	a8a9                	j	802025b2 <wait+0xfa>
    8020255a:	fe843783          	ld	a5,-24(s0)
    8020255e:	0b078793          	addi	a5,a5,176
    80202562:	fef43423          	sd	a5,-24(s0)
    80202566:	fe843703          	ld	a4,-24(s0)
    8020256a:	00034797          	auipc	a5,0x34
    8020256e:	a9678793          	addi	a5,a5,-1386 # 80236000 <kstack>
    80202572:	f6f769e3          	bltu	a4,a5,802024e4 <wait+0x2c>
    80202576:	fe442783          	lw	a5,-28(s0)
    8020257a:	2781                	sext.w	a5,a5
    8020257c:	e399                	bnez	a5,80202582 <wait+0xca>
    8020257e:	57fd                	li	a5,-1
    80202580:	a80d                	j	802025b2 <wait+0xfa>
    80202582:	fd843783          	ld	a5,-40(s0)
    80202586:	470d                	li	a4,3
    80202588:	c398                	sw	a4,0(a5)
    8020258a:	fc043783          	ld	a5,-64(s0)
    8020258e:	4398                	lw	a4,0(a5)
    80202590:	fcc42783          	lw	a5,-52(s0)
    80202594:	863a                	mv	a2,a4
    80202596:	85be                	mv	a1,a5
    80202598:	00003517          	auipc	a0,0x3
    8020259c:	00850513          	addi	a0,a0,8 # 802055a0 <rodata_start+0x5a0>
    802025a0:	9a3fe0ef          	jal	80200f42 <printk>
    802025a4:	fd843503          	ld	a0,-40(s0)
    802025a8:	bf5ff0ef          	jal	8020219c <add_task>
    802025ac:	cb9ff0ef          	jal	80202264 <sched>
    802025b0:	b70d                	j	802024d2 <wait+0x1a>
    802025b2:	853e                	mv	a0,a5
    802025b4:	70e2                	ld	ra,56(sp)
    802025b6:	7442                	ld	s0,48(sp)
    802025b8:	6121                	addi	sp,sp,64
    802025ba:	8082                	ret

00000000802025bc <exit>:
    802025bc:	7179                	addi	sp,sp,-48
    802025be:	f406                	sd	ra,40(sp)
    802025c0:	f022                	sd	s0,32(sp)
    802025c2:	1800                	addi	s0,sp,48
    802025c4:	87aa                	mv	a5,a0
    802025c6:	fcf42e23          	sw	a5,-36(s0)
    802025ca:	b63ff0ef          	jal	8020212c <get_cur_proc>
    802025ce:	fea43023          	sd	a0,-32(s0)
    802025d2:	fdc42703          	lw	a4,-36(s0)
    802025d6:	fe043783          	ld	a5,-32(s0)
    802025da:	f7d8                	sd	a4,168(a5)
    802025dc:	fe043783          	ld	a5,-32(s0)
    802025e0:	43dc                	lw	a5,4(a5)
    802025e2:	fdc42703          	lw	a4,-36(s0)
    802025e6:	863a                	mv	a2,a4
    802025e8:	85be                	mv	a1,a5
    802025ea:	00003517          	auipc	a0,0x3
    802025ee:	fde50513          	addi	a0,a0,-34 # 802055c8 <rodata_start+0x5c8>
    802025f2:	951fe0ef          	jal	80200f42 <printk>
    802025f6:	fe043503          	ld	a0,-32(s0)
    802025fa:	d4bff0ef          	jal	80202344 <freeproc>
    802025fe:	fe043783          	ld	a5,-32(s0)
    80202602:	73dc                	ld	a5,160(a5)
    80202604:	c789                	beqz	a5,8020260e <exit+0x52>
    80202606:	fe043783          	ld	a5,-32(s0)
    8020260a:	4715                	li	a4,5
    8020260c:	c398                	sw	a4,0(a5)
    8020260e:	0001e797          	auipc	a5,0x1e
    80202612:	9f278793          	addi	a5,a5,-1550 # 80220000 <proc>
    80202616:	fef43423          	sd	a5,-24(s0)
    8020261a:	a015                	j	8020263e <exit+0x82>
    8020261c:	fe843783          	ld	a5,-24(s0)
    80202620:	73dc                	ld	a5,160(a5)
    80202622:	fe043703          	ld	a4,-32(s0)
    80202626:	00f71663          	bne	a4,a5,80202632 <exit+0x76>
    8020262a:	fe843783          	ld	a5,-24(s0)
    8020262e:	0a07b023          	sd	zero,160(a5)
    80202632:	fe843783          	ld	a5,-24(s0)
    80202636:	0b078793          	addi	a5,a5,176
    8020263a:	fef43423          	sd	a5,-24(s0)
    8020263e:	fe843703          	ld	a4,-24(s0)
    80202642:	00034797          	auipc	a5,0x34
    80202646:	9be78793          	addi	a5,a5,-1602 # 80236000 <kstack>
    8020264a:	fcf769e3          	bltu	a4,a5,8020261c <exit+0x60>
    8020264e:	c17ff0ef          	jal	80202264 <sched>
    80202652:	0001                	nop
    80202654:	70a2                	ld	ra,40(sp)
    80202656:	7402                	ld	s0,32(sp)
    80202658:	6145                	addi	sp,sp,48
    8020265a:	8082                	ret

000000008020265c <r_mstatus>:
    8020265c:	1101                	addi	sp,sp,-32
    8020265e:	ec06                	sd	ra,24(sp)
    80202660:	e822                	sd	s0,16(sp)
    80202662:	1000                	addi	s0,sp,32
    80202664:	300027f3          	csrr	a5,mstatus
    80202668:	fef43423          	sd	a5,-24(s0)
    8020266c:	fe843783          	ld	a5,-24(s0)
    80202670:	853e                	mv	a0,a5
    80202672:	60e2                	ld	ra,24(sp)
    80202674:	6442                	ld	s0,16(sp)
    80202676:	6105                	addi	sp,sp,32
    80202678:	8082                	ret

000000008020267a <r_sie>:
    8020267a:	1101                	addi	sp,sp,-32
    8020267c:	ec06                	sd	ra,24(sp)
    8020267e:	e822                	sd	s0,16(sp)
    80202680:	1000                	addi	s0,sp,32
    80202682:	104027f3          	csrr	a5,sie
    80202686:	fef43423          	sd	a5,-24(s0)
    8020268a:	fe843783          	ld	a5,-24(s0)
    8020268e:	853e                	mv	a0,a5
    80202690:	60e2                	ld	ra,24(sp)
    80202692:	6442                	ld	s0,16(sp)
    80202694:	6105                	addi	sp,sp,32
    80202696:	8082                	ret

0000000080202698 <w_sie>:
    80202698:	1101                	addi	sp,sp,-32
    8020269a:	ec06                	sd	ra,24(sp)
    8020269c:	e822                	sd	s0,16(sp)
    8020269e:	1000                	addi	s0,sp,32
    802026a0:	fea43423          	sd	a0,-24(s0)
    802026a4:	fe843783          	ld	a5,-24(s0)
    802026a8:	10479073          	csrw	sie,a5
    802026ac:	0001                	nop
    802026ae:	60e2                	ld	ra,24(sp)
    802026b0:	6442                	ld	s0,16(sp)
    802026b2:	6105                	addi	sp,sp,32
    802026b4:	8082                	ret

00000000802026b6 <r_time>:
    802026b6:	1101                	addi	sp,sp,-32
    802026b8:	ec06                	sd	ra,24(sp)
    802026ba:	e822                	sd	s0,16(sp)
    802026bc:	1000                	addi	s0,sp,32
    802026be:	c01027f3          	rdtime	a5
    802026c2:	fef43423          	sd	a5,-24(s0)
    802026c6:	fe843783          	ld	a5,-24(s0)
    802026ca:	853e                	mv	a0,a5
    802026cc:	60e2                	ld	ra,24(sp)
    802026ce:	6442                	ld	s0,16(sp)
    802026d0:	6105                	addi	sp,sp,32
    802026d2:	8082                	ret

00000000802026d4 <get_cycle>:
    802026d4:	1141                	addi	sp,sp,-16
    802026d6:	e406                	sd	ra,8(sp)
    802026d8:	e022                	sd	s0,0(sp)
    802026da:	0800                	addi	s0,sp,16
    802026dc:	fdbff0ef          	jal	802026b6 <r_time>
    802026e0:	87aa                	mv	a5,a0
    802026e2:	853e                	mv	a0,a5
    802026e4:	60a2                	ld	ra,8(sp)
    802026e6:	6402                	ld	s0,0(sp)
    802026e8:	0141                	addi	sp,sp,16
    802026ea:	8082                	ret

00000000802026ec <set_timer>:
    802026ec:	1101                	addi	sp,sp,-32
    802026ee:	ec06                	sd	ra,24(sp)
    802026f0:	e822                	sd	s0,16(sp)
    802026f2:	1000                	addi	s0,sp,32
    802026f4:	fea43423          	sd	a0,-24(s0)
    802026f8:	fe843503          	ld	a0,-24(s0)
    802026fc:	ee5fd0ef          	jal	802005e0 <sbi_set_timer>
    80202700:	0001                	nop
    80202702:	60e2                	ld	ra,24(sp)
    80202704:	6442                	ld	s0,16(sp)
    80202706:	6105                	addi	sp,sp,32
    80202708:	8082                	ret

000000008020270a <set_next_10ms_timer>:
    8020270a:	1101                	addi	sp,sp,-32
    8020270c:	ec06                	sd	ra,24(sp)
    8020270e:	e822                	sd	s0,16(sp)
    80202710:	1000                	addi	s0,sp,32
    80202712:	67e1                	lui	a5,0x18
    80202714:	6a078793          	addi	a5,a5,1696 # 186a0 <n+0x18680>
    80202718:	fef43423          	sd	a5,-24(s0)
    8020271c:	fb9ff0ef          	jal	802026d4 <get_cycle>
    80202720:	872a                	mv	a4,a0
    80202722:	fe843783          	ld	a5,-24(s0)
    80202726:	97ba                	add	a5,a5,a4
    80202728:	853e                	mv	a0,a5
    8020272a:	fc3ff0ef          	jal	802026ec <set_timer>
    8020272e:	0001                	nop
    80202730:	60e2                	ld	ra,24(sp)
    80202732:	6442                	ld	s0,16(sp)
    80202734:	6105                	addi	sp,sp,32
    80202736:	8082                	ret

0000000080202738 <get_time_us>:
    80202738:	1141                	addi	sp,sp,-16
    8020273a:	e406                	sd	ra,8(sp)
    8020273c:	e022                	sd	s0,0(sp)
    8020273e:	0800                	addi	s0,sp,16
    80202740:	f95ff0ef          	jal	802026d4 <get_cycle>
    80202744:	872a                	mv	a4,a0
    80202746:	00003797          	auipc	a5,0x3
    8020274a:	ef278793          	addi	a5,a5,-270 # 80205638 <rodata_start+0x638>
    8020274e:	639c                	ld	a5,0(a5)
    80202750:	02f737b3          	mulhu	a5,a4,a5
    80202754:	838d                	srli	a5,a5,0x3
    80202756:	853e                	mv	a0,a5
    80202758:	60a2                	ld	ra,8(sp)
    8020275a:	6402                	ld	s0,0(sp)
    8020275c:	0141                	addi	sp,sp,16
    8020275e:	8082                	ret

0000000080202760 <enable_timer_interrupt>:
    80202760:	1141                	addi	sp,sp,-16
    80202762:	e406                	sd	ra,8(sp)
    80202764:	e022                	sd	s0,0(sp)
    80202766:	0800                	addi	s0,sp,16
    80202768:	f13ff0ef          	jal	8020267a <r_sie>
    8020276c:	87aa                	mv	a5,a0
    8020276e:	0207e793          	ori	a5,a5,32
    80202772:	853e                	mv	a0,a5
    80202774:	f25ff0ef          	jal	80202698 <w_sie>
    80202778:	0001                	nop
    8020277a:	60a2                	ld	ra,8(sp)
    8020277c:	6402                	ld	s0,0(sp)
    8020277e:	0141                	addi	sp,sp,16
    80202780:	8082                	ret

0000000080202782 <timer_init>:
    80202782:	1141                	addi	sp,sp,-16
    80202784:	e406                	sd	ra,8(sp)
    80202786:	e022                	sd	s0,0(sp)
    80202788:	0800                	addi	s0,sp,16
    8020278a:	fd7ff0ef          	jal	80202760 <enable_timer_interrupt>
    8020278e:	f7dff0ef          	jal	8020270a <set_next_10ms_timer>
    80202792:	00003517          	auipc	a0,0x3
    80202796:	e6e50513          	addi	a0,a0,-402 # 80205600 <rodata_start+0x600>
    8020279a:	fa8fe0ef          	jal	80200f42 <printk>
    8020279e:	0001                	nop
    802027a0:	60a2                	ld	ra,8(sp)
    802027a2:	6402                	ld	s0,0(sp)
    802027a4:	0141                	addi	sp,sp,16
    802027a6:	8082                	ret

00000000802027a8 <interrupt_query>:
    802027a8:	1101                	addi	sp,sp,-32
    802027aa:	ec06                	sd	ra,24(sp)
    802027ac:	e822                	sd	s0,16(sp)
    802027ae:	1000                	addi	s0,sp,32
    802027b0:	eadff0ef          	jal	8020265c <r_mstatus>
    802027b4:	fea43423          	sd	a0,-24(s0)
    802027b8:	fe843583          	ld	a1,-24(s0)
    802027bc:	00003517          	auipc	a0,0x3
    802027c0:	e5c50513          	addi	a0,a0,-420 # 80205618 <rodata_start+0x618>
    802027c4:	f7efe0ef          	jal	80200f42 <printk>
    802027c8:	0001                	nop
    802027ca:	60e2                	ld	ra,24(sp)
    802027cc:	6442                	ld	s0,16(sp)
    802027ce:	6105                	addi	sp,sp,32
    802027d0:	8082                	ret

00000000802027d2 <freerange>:
    802027d2:	7179                	addi	sp,sp,-48
    802027d4:	f406                	sd	ra,40(sp)
    802027d6:	f022                	sd	s0,32(sp)
    802027d8:	1800                	addi	s0,sp,48
    802027da:	fca43c23          	sd	a0,-40(s0)
    802027de:	fcb43823          	sd	a1,-48(s0)
    802027e2:	fd843703          	ld	a4,-40(s0)
    802027e6:	6785                	lui	a5,0x1
    802027e8:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802027ea:	973e                	add	a4,a4,a5
    802027ec:	77fd                	lui	a5,0xfffff
    802027ee:	8ff9                	and	a5,a5,a4
    802027f0:	fef43423          	sd	a5,-24(s0)
    802027f4:	a819                	j	8020280a <freerange+0x38>
    802027f6:	fe843503          	ld	a0,-24(s0)
    802027fa:	068000ef          	jal	80202862 <kfree>
    802027fe:	fe843703          	ld	a4,-24(s0)
    80202802:	6785                	lui	a5,0x1
    80202804:	97ba                	add	a5,a5,a4
    80202806:	fef43423          	sd	a5,-24(s0)
    8020280a:	fe843703          	ld	a4,-24(s0)
    8020280e:	6785                	lui	a5,0x1
    80202810:	97ba                	add	a5,a5,a4
    80202812:	fd043703          	ld	a4,-48(s0)
    80202816:	fef770e3          	bgeu	a4,a5,802027f6 <freerange+0x24>
    8020281a:	0001                	nop
    8020281c:	0001                	nop
    8020281e:	70a2                	ld	ra,40(sp)
    80202820:	7402                	ld	s0,32(sp)
    80202822:	6145                	addi	sp,sp,48
    80202824:	8082                	ret

0000000080202826 <kernel_init>:
    80202826:	1141                	addi	sp,sp,-16
    80202828:	e406                	sd	ra,8(sp)
    8020282a:	e022                	sd	s0,0(sp)
    8020282c:	0800                	addi	s0,sp,16
    8020282e:	47c5                	li	a5,17
    80202830:	01b79593          	slli	a1,a5,0x1b
    80202834:	00435517          	auipc	a0,0x435
    80202838:	7cc50513          	addi	a0,a0,1996 # 80638000 <bss_end>
    8020283c:	f97ff0ef          	jal	802027d2 <freerange>
    80202840:	88000637          	lui	a2,0x88000
    80202844:	00435597          	auipc	a1,0x435
    80202848:	7bc58593          	addi	a1,a1,1980 # 80638000 <bss_end>
    8020284c:	00003517          	auipc	a0,0x3
    80202850:	df450513          	addi	a0,a0,-524 # 80205640 <rodata_start+0x640>
    80202854:	eeefe0ef          	jal	80200f42 <printk>
    80202858:	0001                	nop
    8020285a:	60a2                	ld	ra,8(sp)
    8020285c:	6402                	ld	s0,0(sp)
    8020285e:	0141                	addi	sp,sp,16
    80202860:	8082                	ret

0000000080202862 <kfree>:
    80202862:	7179                	addi	sp,sp,-48
    80202864:	f406                	sd	ra,40(sp)
    80202866:	f022                	sd	s0,32(sp)
    80202868:	1800                	addi	s0,sp,48
    8020286a:	fca43c23          	sd	a0,-40(s0)
    8020286e:	fd843703          	ld	a4,-40(s0)
    80202872:	6785                	lui	a5,0x1
    80202874:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80202876:	8ff9                	and	a5,a5,a4
    80202878:	ef99                	bnez	a5,80202896 <kfree+0x34>
    8020287a:	fd843703          	ld	a4,-40(s0)
    8020287e:	00435797          	auipc	a5,0x435
    80202882:	78278793          	addi	a5,a5,1922 # 80638000 <bss_end>
    80202886:	00f76863          	bltu	a4,a5,80202896 <kfree+0x34>
    8020288a:	fd843703          	ld	a4,-40(s0)
    8020288e:	47c5                	li	a5,17
    80202890:	07ee                	slli	a5,a5,0x1b
    80202892:	00f76863          	bltu	a4,a5,802028a2 <kfree+0x40>
    80202896:	00003517          	auipc	a0,0x3
    8020289a:	dd250513          	addi	a0,a0,-558 # 80205668 <rodata_start+0x668>
    8020289e:	eaffd0ef          	jal	8020074c <panic>
    802028a2:	6605                	lui	a2,0x1
    802028a4:	4585                	li	a1,1
    802028a6:	fd843503          	ld	a0,-40(s0)
    802028aa:	d87fe0ef          	jal	80201630 <memset>
    802028ae:	fd843783          	ld	a5,-40(s0)
    802028b2:	fef43423          	sd	a5,-24(s0)
    802028b6:	00435797          	auipc	a5,0x435
    802028ba:	82278793          	addi	a5,a5,-2014 # 806370d8 <kmem>
    802028be:	6398                	ld	a4,0(a5)
    802028c0:	fe843783          	ld	a5,-24(s0)
    802028c4:	e398                	sd	a4,0(a5)
    802028c6:	00435797          	auipc	a5,0x435
    802028ca:	81278793          	addi	a5,a5,-2030 # 806370d8 <kmem>
    802028ce:	fe843703          	ld	a4,-24(s0)
    802028d2:	e398                	sd	a4,0(a5)
    802028d4:	0001                	nop
    802028d6:	70a2                	ld	ra,40(sp)
    802028d8:	7402                	ld	s0,32(sp)
    802028da:	6145                	addi	sp,sp,48
    802028dc:	8082                	ret

00000000802028de <kalloc>:
    802028de:	1101                	addi	sp,sp,-32
    802028e0:	ec06                	sd	ra,24(sp)
    802028e2:	e822                	sd	s0,16(sp)
    802028e4:	1000                	addi	s0,sp,32
    802028e6:	00434797          	auipc	a5,0x434
    802028ea:	7f278793          	addi	a5,a5,2034 # 806370d8 <kmem>
    802028ee:	639c                	ld	a5,0(a5)
    802028f0:	fef43423          	sd	a5,-24(s0)
    802028f4:	fe843783          	ld	a5,-24(s0)
    802028f8:	cf99                	beqz	a5,80202916 <kalloc+0x38>
    802028fa:	fe843783          	ld	a5,-24(s0)
    802028fe:	6398                	ld	a4,0(a5)
    80202900:	00434797          	auipc	a5,0x434
    80202904:	7d878793          	addi	a5,a5,2008 # 806370d8 <kmem>
    80202908:	e398                	sd	a4,0(a5)
    8020290a:	6605                	lui	a2,0x1
    8020290c:	4595                	li	a1,5
    8020290e:	fe843503          	ld	a0,-24(s0)
    80202912:	d1ffe0ef          	jal	80201630 <memset>
    80202916:	fe843783          	ld	a5,-24(s0)
    8020291a:	853e                	mv	a0,a5
    8020291c:	60e2                	ld	ra,24(sp)
    8020291e:	6442                	ld	s0,16(sp)
    80202920:	6105                	addi	sp,sp,32
    80202922:	8082                	ret

0000000080202924 <w_satp>:
    80202924:	1101                	addi	sp,sp,-32
    80202926:	ec06                	sd	ra,24(sp)
    80202928:	e822                	sd	s0,16(sp)
    8020292a:	1000                	addi	s0,sp,32
    8020292c:	fea43423          	sd	a0,-24(s0)
    80202930:	fe843783          	ld	a5,-24(s0)
    80202934:	18079073          	csrw	satp,a5
    80202938:	0001                	nop
    8020293a:	60e2                	ld	ra,24(sp)
    8020293c:	6442                	ld	s0,16(sp)
    8020293e:	6105                	addi	sp,sp,32
    80202940:	8082                	ret

0000000080202942 <r_satp>:
    80202942:	1101                	addi	sp,sp,-32
    80202944:	ec06                	sd	ra,24(sp)
    80202946:	e822                	sd	s0,16(sp)
    80202948:	1000                	addi	s0,sp,32
    8020294a:	180027f3          	csrr	a5,satp
    8020294e:	fef43423          	sd	a5,-24(s0)
    80202952:	fe843783          	ld	a5,-24(s0)
    80202956:	853e                	mv	a0,a5
    80202958:	60e2                	ld	ra,24(sp)
    8020295a:	6442                	ld	s0,16(sp)
    8020295c:	6105                	addi	sp,sp,32
    8020295e:	8082                	ret

0000000080202960 <sfence_vma>:
    80202960:	1141                	addi	sp,sp,-16
    80202962:	e406                	sd	ra,8(sp)
    80202964:	e022                	sd	s0,0(sp)
    80202966:	0800                	addi	s0,sp,16
    80202968:	12000073          	sfence.vma
    8020296c:	0001                	nop
    8020296e:	60a2                	ld	ra,8(sp)
    80202970:	6402                	ld	s0,0(sp)
    80202972:	0141                	addi	sp,sp,16
    80202974:	8082                	ret

0000000080202976 <mappages>:
    80202976:	711d                	addi	sp,sp,-96
    80202978:	ec86                	sd	ra,88(sp)
    8020297a:	e8a2                	sd	s0,80(sp)
    8020297c:	1080                	addi	s0,sp,96
    8020297e:	fca43423          	sd	a0,-56(s0)
    80202982:	fcb43023          	sd	a1,-64(s0)
    80202986:	fac43c23          	sd	a2,-72(s0)
    8020298a:	fad43823          	sd	a3,-80(s0)
    8020298e:	87ba                	mv	a5,a4
    80202990:	faf42623          	sw	a5,-84(s0)
    80202994:	fc043703          	ld	a4,-64(s0)
    80202998:	77fd                	lui	a5,0xfffff
    8020299a:	8ff9                	and	a5,a5,a4
    8020299c:	fef43423          	sd	a5,-24(s0)
    802029a0:	fc043703          	ld	a4,-64(s0)
    802029a4:	fb843783          	ld	a5,-72(s0)
    802029a8:	97ba                	add	a5,a5,a4
    802029aa:	fff78713          	addi	a4,a5,-1 # ffffffffffffefff <bss_end+0xffffffff7f9c6fff>
    802029ae:	77fd                	lui	a5,0xfffff
    802029b0:	8ff9                	and	a5,a5,a4
    802029b2:	fef43023          	sd	a5,-32(s0)
    802029b6:	4605                	li	a2,1
    802029b8:	fe843583          	ld	a1,-24(s0)
    802029bc:	fc843503          	ld	a0,-56(s0)
    802029c0:	37c000ef          	jal	80202d3c <walk>
    802029c4:	fca43c23          	sd	a0,-40(s0)
    802029c8:	fd843783          	ld	a5,-40(s0)
    802029cc:	eb89                	bnez	a5,802029de <mappages+0x68>
    802029ce:	00003517          	auipc	a0,0x3
    802029d2:	ca250513          	addi	a0,a0,-862 # 80205670 <rodata_start+0x670>
    802029d6:	d6cfe0ef          	jal	80200f42 <printk>
    802029da:	57fd                	li	a5,-1
    802029dc:	a085                	j	80202a3c <mappages+0xc6>
    802029de:	fd843783          	ld	a5,-40(s0)
    802029e2:	639c                	ld	a5,0(a5)
    802029e4:	8b85                	andi	a5,a5,1
    802029e6:	cb89                	beqz	a5,802029f8 <mappages+0x82>
    802029e8:	00003517          	auipc	a0,0x3
    802029ec:	ca050513          	addi	a0,a0,-864 # 80205688 <rodata_start+0x688>
    802029f0:	d52fe0ef          	jal	80200f42 <printk>
    802029f4:	57fd                	li	a5,-1
    802029f6:	a099                	j	80202a3c <mappages+0xc6>
    802029f8:	fb043783          	ld	a5,-80(s0)
    802029fc:	83b1                	srli	a5,a5,0xc
    802029fe:	00a79713          	slli	a4,a5,0xa
    80202a02:	fac42783          	lw	a5,-84(s0)
    80202a06:	8fd9                	or	a5,a5,a4
    80202a08:	0017e713          	ori	a4,a5,1
    80202a0c:	fd843783          	ld	a5,-40(s0)
    80202a10:	e398                	sd	a4,0(a5)
    80202a12:	fe843703          	ld	a4,-24(s0)
    80202a16:	fe043783          	ld	a5,-32(s0)
    80202a1a:	00f70f63          	beq	a4,a5,80202a38 <mappages+0xc2>
    80202a1e:	fe843703          	ld	a4,-24(s0)
    80202a22:	6785                	lui	a5,0x1
    80202a24:	97ba                	add	a5,a5,a4
    80202a26:	fef43423          	sd	a5,-24(s0)
    80202a2a:	fb043703          	ld	a4,-80(s0)
    80202a2e:	6785                	lui	a5,0x1
    80202a30:	97ba                	add	a5,a5,a4
    80202a32:	faf43823          	sd	a5,-80(s0)
    80202a36:	b741                	j	802029b6 <mappages+0x40>
    80202a38:	0001                	nop
    80202a3a:	4781                	li	a5,0
    80202a3c:	853e                	mv	a0,a5
    80202a3e:	60e6                	ld	ra,88(sp)
    80202a40:	6446                	ld	s0,80(sp)
    80202a42:	6125                	addi	sp,sp,96
    80202a44:	8082                	ret

0000000080202a46 <kvmmap>:
    80202a46:	7139                	addi	sp,sp,-64
    80202a48:	fc06                	sd	ra,56(sp)
    80202a4a:	f822                	sd	s0,48(sp)
    80202a4c:	0080                	addi	s0,sp,64
    80202a4e:	fea43423          	sd	a0,-24(s0)
    80202a52:	feb43023          	sd	a1,-32(s0)
    80202a56:	fcc43c23          	sd	a2,-40(s0)
    80202a5a:	fcd43823          	sd	a3,-48(s0)
    80202a5e:	87ba                	mv	a5,a4
    80202a60:	fcf42623          	sw	a5,-52(s0)
    80202a64:	fcc42783          	lw	a5,-52(s0)
    80202a68:	873e                	mv	a4,a5
    80202a6a:	fd843683          	ld	a3,-40(s0)
    80202a6e:	fd043603          	ld	a2,-48(s0)
    80202a72:	fe043583          	ld	a1,-32(s0)
    80202a76:	fe843503          	ld	a0,-24(s0)
    80202a7a:	efdff0ef          	jal	80202976 <mappages>
    80202a7e:	87aa                	mv	a5,a0
    80202a80:	c799                	beqz	a5,80202a8e <kvmmap+0x48>
    80202a82:	00003517          	auipc	a0,0x3
    80202a86:	c1650513          	addi	a0,a0,-1002 # 80205698 <rodata_start+0x698>
    80202a8a:	cc3fd0ef          	jal	8020074c <panic>
    80202a8e:	0001                	nop
    80202a90:	70e2                	ld	ra,56(sp)
    80202a92:	7442                	ld	s0,48(sp)
    80202a94:	6121                	addi	sp,sp,64
    80202a96:	8082                	ret

0000000080202a98 <kvmmake>:
    80202a98:	1101                	addi	sp,sp,-32
    80202a9a:	ec06                	sd	ra,24(sp)
    80202a9c:	e822                	sd	s0,16(sp)
    80202a9e:	1000                	addi	s0,sp,32
    80202aa0:	e3fff0ef          	jal	802028de <kalloc>
    80202aa4:	fea43423          	sd	a0,-24(s0)
    80202aa8:	6605                	lui	a2,0x1
    80202aaa:	4581                	li	a1,0
    80202aac:	fe843503          	ld	a0,-24(s0)
    80202ab0:	b81fe0ef          	jal	80201630 <memset>
    80202ab4:	00002717          	auipc	a4,0x2
    80202ab8:	54c70713          	addi	a4,a4,1356 # 80205000 <rodata_start>
    80202abc:	bff00793          	li	a5,-1025
    80202ac0:	07d6                	slli	a5,a5,0x15
    80202ac2:	97ba                	add	a5,a5,a4
    80202ac4:	4729                	li	a4,10
    80202ac6:	86be                	mv	a3,a5
    80202ac8:	40100793          	li	a5,1025
    80202acc:	01579613          	slli	a2,a5,0x15
    80202ad0:	40100793          	li	a5,1025
    80202ad4:	01579593          	slli	a1,a5,0x15
    80202ad8:	fe843503          	ld	a0,-24(s0)
    80202adc:	f6bff0ef          	jal	80202a46 <kvmmap>
    80202ae0:	00002597          	auipc	a1,0x2
    80202ae4:	52058593          	addi	a1,a1,1312 # 80205000 <rodata_start>
    80202ae8:	00002617          	auipc	a2,0x2
    80202aec:	51860613          	addi	a2,a2,1304 # 80205000 <rodata_start>
    80202af0:	00002797          	auipc	a5,0x2
    80202af4:	51078793          	addi	a5,a5,1296 # 80205000 <rodata_start>
    80202af8:	4745                	li	a4,17
    80202afa:	076e                	slli	a4,a4,0x1b
    80202afc:	40f707b3          	sub	a5,a4,a5
    80202b00:	4719                	li	a4,6
    80202b02:	86be                	mv	a3,a5
    80202b04:	fe843503          	ld	a0,-24(s0)
    80202b08:	f3fff0ef          	jal	80202a46 <kvmmap>
    80202b0c:	00001797          	auipc	a5,0x1
    80202b10:	4f478793          	addi	a5,a5,1268 # 80204000 <__alltraps>
    80202b14:	4729                	li	a4,10
    80202b16:	6685                	lui	a3,0x1
    80202b18:	863e                	mv	a2,a5
    80202b1a:	040007b7          	lui	a5,0x4000
    80202b1e:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80202b20:	00c79593          	slli	a1,a5,0xc
    80202b24:	fe843503          	ld	a0,-24(s0)
    80202b28:	f1fff0ef          	jal	80202a46 <kvmmap>
    80202b2c:	fe843783          	ld	a5,-24(s0)
    80202b30:	853e                	mv	a0,a5
    80202b32:	60e2                	ld	ra,24(sp)
    80202b34:	6442                	ld	s0,16(sp)
    80202b36:	6105                	addi	sp,sp,32
    80202b38:	8082                	ret

0000000080202b3a <kvm_init>:
    80202b3a:	1141                	addi	sp,sp,-16
    80202b3c:	e406                	sd	ra,8(sp)
    80202b3e:	e022                	sd	s0,0(sp)
    80202b40:	0800                	addi	s0,sp,16
    80202b42:	f57ff0ef          	jal	80202a98 <kvmmake>
    80202b46:	872a                	mv	a4,a0
    80202b48:	00434797          	auipc	a5,0x434
    80202b4c:	59878793          	addi	a5,a5,1432 # 806370e0 <kernle_pagetable>
    80202b50:	e398                	sd	a4,0(a5)
    80202b52:	00434797          	auipc	a5,0x434
    80202b56:	58e78793          	addi	a5,a5,1422 # 806370e0 <kernle_pagetable>
    80202b5a:	639c                	ld	a5,0(a5)
    80202b5c:	00c7d713          	srli	a4,a5,0xc
    80202b60:	57fd                	li	a5,-1
    80202b62:	17fe                	slli	a5,a5,0x3f
    80202b64:	8fd9                	or	a5,a5,a4
    80202b66:	853e                	mv	a0,a5
    80202b68:	dbdff0ef          	jal	80202924 <w_satp>
    80202b6c:	df5ff0ef          	jal	80202960 <sfence_vma>
    80202b70:	dd3ff0ef          	jal	80202942 <r_satp>
    80202b74:	87aa                	mv	a5,a0
    80202b76:	85be                	mv	a1,a5
    80202b78:	00003517          	auipc	a0,0x3
    80202b7c:	b2850513          	addi	a0,a0,-1240 # 802056a0 <rodata_start+0x6a0>
    80202b80:	bc2fe0ef          	jal	80200f42 <printk>
    80202b84:	0001                	nop
    80202b86:	60a2                	ld	ra,8(sp)
    80202b88:	6402                	ld	s0,0(sp)
    80202b8a:	0141                	addi	sp,sp,16
    80202b8c:	8082                	ret

0000000080202b8e <uvmunmap>:
    80202b8e:	715d                	addi	sp,sp,-80
    80202b90:	e486                	sd	ra,72(sp)
    80202b92:	e0a2                	sd	s0,64(sp)
    80202b94:	0880                	addi	s0,sp,80
    80202b96:	fca43423          	sd	a0,-56(s0)
    80202b9a:	fcb43023          	sd	a1,-64(s0)
    80202b9e:	fac43c23          	sd	a2,-72(s0)
    80202ba2:	87b6                	mv	a5,a3
    80202ba4:	faf42a23          	sw	a5,-76(s0)
    80202ba8:	fc043703          	ld	a4,-64(s0)
    80202bac:	6785                	lui	a5,0x1
    80202bae:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80202bb0:	8ff9                	and	a5,a5,a4
    80202bb2:	c799                	beqz	a5,80202bc0 <uvmunmap+0x32>
    80202bb4:	00003517          	auipc	a0,0x3
    80202bb8:	b1450513          	addi	a0,a0,-1260 # 802056c8 <rodata_start+0x6c8>
    80202bbc:	b91fd0ef          	jal	8020074c <panic>
    80202bc0:	fc043783          	ld	a5,-64(s0)
    80202bc4:	fef43423          	sd	a5,-24(s0)
    80202bc8:	a8a5                	j	80202c40 <uvmunmap+0xb2>
    80202bca:	4601                	li	a2,0
    80202bcc:	fe843583          	ld	a1,-24(s0)
    80202bd0:	fc843503          	ld	a0,-56(s0)
    80202bd4:	168000ef          	jal	80202d3c <walk>
    80202bd8:	fea43023          	sd	a0,-32(s0)
    80202bdc:	fe043783          	ld	a5,-32(s0)
    80202be0:	cba9                	beqz	a5,80202c32 <uvmunmap+0xa4>
    80202be2:	fe043783          	ld	a5,-32(s0)
    80202be6:	639c                	ld	a5,0(a5)
    80202be8:	8b85                	andi	a5,a5,1
    80202bea:	cf9d                	beqz	a5,80202c28 <uvmunmap+0x9a>
    80202bec:	fe043783          	ld	a5,-32(s0)
    80202bf0:	639c                	ld	a5,0(a5)
    80202bf2:	3ff7f713          	andi	a4,a5,1023
    80202bf6:	4785                	li	a5,1
    80202bf8:	00f71863          	bne	a4,a5,80202c08 <uvmunmap+0x7a>
    80202bfc:	00003517          	auipc	a0,0x3
    80202c00:	aec50513          	addi	a0,a0,-1300 # 802056e8 <rodata_start+0x6e8>
    80202c04:	b49fd0ef          	jal	8020074c <panic>
    80202c08:	fb442783          	lw	a5,-76(s0)
    80202c0c:	2781                	sext.w	a5,a5
    80202c0e:	cf89                	beqz	a5,80202c28 <uvmunmap+0x9a>
    80202c10:	fe043783          	ld	a5,-32(s0)
    80202c14:	639c                	ld	a5,0(a5)
    80202c16:	83a9                	srli	a5,a5,0xa
    80202c18:	07b2                	slli	a5,a5,0xc
    80202c1a:	fcf43c23          	sd	a5,-40(s0)
    80202c1e:	fd843783          	ld	a5,-40(s0)
    80202c22:	853e                	mv	a0,a5
    80202c24:	c3fff0ef          	jal	80202862 <kfree>
    80202c28:	fe043783          	ld	a5,-32(s0)
    80202c2c:	0007b023          	sd	zero,0(a5)
    80202c30:	a011                	j	80202c34 <uvmunmap+0xa6>
    80202c32:	0001                	nop
    80202c34:	fe843703          	ld	a4,-24(s0)
    80202c38:	6785                	lui	a5,0x1
    80202c3a:	97ba                	add	a5,a5,a4
    80202c3c:	fef43423          	sd	a5,-24(s0)
    80202c40:	fb843783          	ld	a5,-72(s0)
    80202c44:	00c79713          	slli	a4,a5,0xc
    80202c48:	fc043783          	ld	a5,-64(s0)
    80202c4c:	97ba                	add	a5,a5,a4
    80202c4e:	fe843703          	ld	a4,-24(s0)
    80202c52:	f6f76ce3          	bltu	a4,a5,80202bca <uvmunmap+0x3c>
    80202c56:	0001                	nop
    80202c58:	0001                	nop
    80202c5a:	60a6                	ld	ra,72(sp)
    80202c5c:	6406                	ld	s0,64(sp)
    80202c5e:	6161                	addi	sp,sp,80
    80202c60:	8082                	ret

0000000080202c62 <uvmcreate>:
    80202c62:	7179                	addi	sp,sp,-48
    80202c64:	f406                	sd	ra,40(sp)
    80202c66:	f022                	sd	s0,32(sp)
    80202c68:	1800                	addi	s0,sp,48
    80202c6a:	fca43c23          	sd	a0,-40(s0)
    80202c6e:	c71ff0ef          	jal	802028de <kalloc>
    80202c72:	fea43423          	sd	a0,-24(s0)
    80202c76:	fe843783          	ld	a5,-24(s0)
    80202c7a:	eb89                	bnez	a5,80202c8c <uvmcreate+0x2a>
    80202c7c:	00003517          	auipc	a0,0x3
    80202c80:	a8450513          	addi	a0,a0,-1404 # 80205700 <rodata_start+0x700>
    80202c84:	abefe0ef          	jal	80200f42 <printk>
    80202c88:	4781                	li	a5,0
    80202c8a:	a885                	j	80202cfa <uvmcreate+0x98>
    80202c8c:	6605                	lui	a2,0x1
    80202c8e:	4581                	li	a1,0
    80202c90:	fe843503          	ld	a0,-24(s0)
    80202c94:	99dfe0ef          	jal	80201630 <memset>
    80202c98:	00001797          	auipc	a5,0x1
    80202c9c:	36878793          	addi	a5,a5,872 # 80204000 <__alltraps>
    80202ca0:	4729                	li	a4,10
    80202ca2:	86be                	mv	a3,a5
    80202ca4:	6605                	lui	a2,0x1
    80202ca6:	040007b7          	lui	a5,0x4000
    80202caa:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80202cac:	00c79593          	slli	a1,a5,0xc
    80202cb0:	fe843503          	ld	a0,-24(s0)
    80202cb4:	cc3ff0ef          	jal	80202976 <mappages>
    80202cb8:	87aa                	mv	a5,a0
    80202cba:	0007d863          	bgez	a5,80202cca <uvmcreate+0x68>
    80202cbe:	00003517          	auipc	a0,0x3
    80202cc2:	a6250513          	addi	a0,a0,-1438 # 80205720 <rodata_start+0x720>
    80202cc6:	a87fd0ef          	jal	8020074c <panic>
    80202cca:	4719                	li	a4,6
    80202ccc:	fd843683          	ld	a3,-40(s0)
    80202cd0:	6605                	lui	a2,0x1
    80202cd2:	020007b7          	lui	a5,0x2000
    80202cd6:	17fd                	addi	a5,a5,-1 # 1ffffff <n+0x1ffffdf>
    80202cd8:	00d79593          	slli	a1,a5,0xd
    80202cdc:	fe843503          	ld	a0,-24(s0)
    80202ce0:	c97ff0ef          	jal	80202976 <mappages>
    80202ce4:	87aa                	mv	a5,a0
    80202ce6:	0007d863          	bgez	a5,80202cf6 <uvmcreate+0x94>
    80202cea:	00003517          	auipc	a0,0x3
    80202cee:	a4e50513          	addi	a0,a0,-1458 # 80205738 <rodata_start+0x738>
    80202cf2:	a5bfd0ef          	jal	8020074c <panic>
    80202cf6:	fe843783          	ld	a5,-24(s0)
    80202cfa:	853e                	mv	a0,a5
    80202cfc:	70a2                	ld	ra,40(sp)
    80202cfe:	7402                	ld	s0,32(sp)
    80202d00:	6145                	addi	sp,sp,48
    80202d02:	8082                	ret

0000000080202d04 <uvmfree>:
    80202d04:	1101                	addi	sp,sp,-32
    80202d06:	ec06                	sd	ra,24(sp)
    80202d08:	e822                	sd	s0,16(sp)
    80202d0a:	1000                	addi	s0,sp,32
    80202d0c:	fea43423          	sd	a0,-24(s0)
    80202d10:	feb43023          	sd	a1,-32(s0)
    80202d14:	fe043783          	ld	a5,-32(s0)
    80202d18:	cb89                	beqz	a5,80202d2a <uvmfree+0x26>
    80202d1a:	4685                	li	a3,1
    80202d1c:	fe043603          	ld	a2,-32(s0)
    80202d20:	4581                	li	a1,0
    80202d22:	fe843503          	ld	a0,-24(s0)
    80202d26:	e69ff0ef          	jal	80202b8e <uvmunmap>
    80202d2a:	fe843503          	ld	a0,-24(s0)
    80202d2e:	0f4000ef          	jal	80202e22 <freewalk>
    80202d32:	0001                	nop
    80202d34:	60e2                	ld	ra,24(sp)
    80202d36:	6442                	ld	s0,16(sp)
    80202d38:	6105                	addi	sp,sp,32
    80202d3a:	8082                	ret

0000000080202d3c <walk>:
    80202d3c:	7139                	addi	sp,sp,-64
    80202d3e:	fc06                	sd	ra,56(sp)
    80202d40:	f822                	sd	s0,48(sp)
    80202d42:	0080                	addi	s0,sp,64
    80202d44:	fca43c23          	sd	a0,-40(s0)
    80202d48:	fcb43823          	sd	a1,-48(s0)
    80202d4c:	87b2                	mv	a5,a2
    80202d4e:	fcf42623          	sw	a5,-52(s0)
    80202d52:	fd043703          	ld	a4,-48(s0)
    80202d56:	57fd                	li	a5,-1
    80202d58:	83e9                	srli	a5,a5,0x1a
    80202d5a:	00e7f863          	bgeu	a5,a4,80202d6a <walk+0x2e>
    80202d5e:	00003517          	auipc	a0,0x3
    80202d62:	9f250513          	addi	a0,a0,-1550 # 80205750 <rodata_start+0x750>
    80202d66:	9e7fd0ef          	jal	8020074c <panic>
    80202d6a:	4789                	li	a5,2
    80202d6c:	fef42623          	sw	a5,-20(s0)
    80202d70:	a071                	j	80202dfc <walk+0xc0>
    80202d72:	fec42783          	lw	a5,-20(s0)
    80202d76:	873e                	mv	a4,a5
    80202d78:	87ba                	mv	a5,a4
    80202d7a:	0037979b          	slliw	a5,a5,0x3
    80202d7e:	9fb9                	addw	a5,a5,a4
    80202d80:	2781                	sext.w	a5,a5
    80202d82:	27b1                	addiw	a5,a5,12
    80202d84:	2781                	sext.w	a5,a5
    80202d86:	873e                	mv	a4,a5
    80202d88:	fd043783          	ld	a5,-48(s0)
    80202d8c:	00e7d7b3          	srl	a5,a5,a4
    80202d90:	1ff7f793          	andi	a5,a5,511
    80202d94:	078e                	slli	a5,a5,0x3
    80202d96:	fd843703          	ld	a4,-40(s0)
    80202d9a:	97ba                	add	a5,a5,a4
    80202d9c:	fef43023          	sd	a5,-32(s0)
    80202da0:	fe043783          	ld	a5,-32(s0)
    80202da4:	639c                	ld	a5,0(a5)
    80202da6:	8b85                	andi	a5,a5,1
    80202da8:	cb89                	beqz	a5,80202dba <walk+0x7e>
    80202daa:	fe043783          	ld	a5,-32(s0)
    80202dae:	639c                	ld	a5,0(a5)
    80202db0:	83a9                	srli	a5,a5,0xa
    80202db2:	07b2                	slli	a5,a5,0xc
    80202db4:	fcf43c23          	sd	a5,-40(s0)
    80202db8:	a82d                	j	80202df2 <walk+0xb6>
    80202dba:	fcc42783          	lw	a5,-52(s0)
    80202dbe:	2781                	sext.w	a5,a5
    80202dc0:	cb81                	beqz	a5,80202dd0 <walk+0x94>
    80202dc2:	b1dff0ef          	jal	802028de <kalloc>
    80202dc6:	fca43c23          	sd	a0,-40(s0)
    80202dca:	fd843783          	ld	a5,-40(s0)
    80202dce:	e399                	bnez	a5,80202dd4 <walk+0x98>
    80202dd0:	4781                	li	a5,0
    80202dd2:	a099                	j	80202e18 <walk+0xdc>
    80202dd4:	6605                	lui	a2,0x1
    80202dd6:	4581                	li	a1,0
    80202dd8:	fd843503          	ld	a0,-40(s0)
    80202ddc:	855fe0ef          	jal	80201630 <memset>
    80202de0:	fd843783          	ld	a5,-40(s0)
    80202de4:	83b1                	srli	a5,a5,0xc
    80202de6:	07aa                	slli	a5,a5,0xa
    80202de8:	0017e713          	ori	a4,a5,1
    80202dec:	fe043783          	ld	a5,-32(s0)
    80202df0:	e398                	sd	a4,0(a5)
    80202df2:	fec42783          	lw	a5,-20(s0)
    80202df6:	37fd                	addiw	a5,a5,-1
    80202df8:	fef42623          	sw	a5,-20(s0)
    80202dfc:	fec42783          	lw	a5,-20(s0)
    80202e00:	2781                	sext.w	a5,a5
    80202e02:	f6f048e3          	bgtz	a5,80202d72 <walk+0x36>
    80202e06:	fd043783          	ld	a5,-48(s0)
    80202e0a:	83b1                	srli	a5,a5,0xc
    80202e0c:	1ff7f793          	andi	a5,a5,511
    80202e10:	078e                	slli	a5,a5,0x3
    80202e12:	fd843703          	ld	a4,-40(s0)
    80202e16:	97ba                	add	a5,a5,a4
    80202e18:	853e                	mv	a0,a5
    80202e1a:	70e2                	ld	ra,56(sp)
    80202e1c:	7442                	ld	s0,48(sp)
    80202e1e:	6121                	addi	sp,sp,64
    80202e20:	8082                	ret

0000000080202e22 <freewalk>:
    80202e22:	7139                	addi	sp,sp,-64
    80202e24:	fc06                	sd	ra,56(sp)
    80202e26:	f822                	sd	s0,48(sp)
    80202e28:	0080                	addi	s0,sp,64
    80202e2a:	fca43423          	sd	a0,-56(s0)
    80202e2e:	fe042623          	sw	zero,-20(s0)
    80202e32:	a0ad                	j	80202e9c <freewalk+0x7a>
    80202e34:	fec42783          	lw	a5,-20(s0)
    80202e38:	078e                	slli	a5,a5,0x3
    80202e3a:	fc843703          	ld	a4,-56(s0)
    80202e3e:	97ba                	add	a5,a5,a4
    80202e40:	639c                	ld	a5,0(a5)
    80202e42:	fef43023          	sd	a5,-32(s0)
    80202e46:	fe043783          	ld	a5,-32(s0)
    80202e4a:	8b85                	andi	a5,a5,1
    80202e4c:	cb8d                	beqz	a5,80202e7e <freewalk+0x5c>
    80202e4e:	fe043783          	ld	a5,-32(s0)
    80202e52:	8bb9                	andi	a5,a5,14
    80202e54:	e78d                	bnez	a5,80202e7e <freewalk+0x5c>
    80202e56:	fe043783          	ld	a5,-32(s0)
    80202e5a:	83a9                	srli	a5,a5,0xa
    80202e5c:	07b2                	slli	a5,a5,0xc
    80202e5e:	fcf43c23          	sd	a5,-40(s0)
    80202e62:	fd843783          	ld	a5,-40(s0)
    80202e66:	853e                	mv	a0,a5
    80202e68:	fbbff0ef          	jal	80202e22 <freewalk>
    80202e6c:	fec42783          	lw	a5,-20(s0)
    80202e70:	078e                	slli	a5,a5,0x3
    80202e72:	fc843703          	ld	a4,-56(s0)
    80202e76:	97ba                	add	a5,a5,a4
    80202e78:	0007b023          	sd	zero,0(a5)
    80202e7c:	a819                	j	80202e92 <freewalk+0x70>
    80202e7e:	fe043783          	ld	a5,-32(s0)
    80202e82:	8b85                	andi	a5,a5,1
    80202e84:	c799                	beqz	a5,80202e92 <freewalk+0x70>
    80202e86:	00003517          	auipc	a0,0x3
    80202e8a:	8d250513          	addi	a0,a0,-1838 # 80205758 <rodata_start+0x758>
    80202e8e:	8bffd0ef          	jal	8020074c <panic>
    80202e92:	fec42783          	lw	a5,-20(s0)
    80202e96:	2785                	addiw	a5,a5,1
    80202e98:	fef42623          	sw	a5,-20(s0)
    80202e9c:	fec42783          	lw	a5,-20(s0)
    80202ea0:	0007871b          	sext.w	a4,a5
    80202ea4:	1ff00793          	li	a5,511
    80202ea8:	f8e7d6e3          	bge	a5,a4,80202e34 <freewalk+0x12>
    80202eac:	fc843503          	ld	a0,-56(s0)
    80202eb0:	9b3ff0ef          	jal	80202862 <kfree>
    80202eb4:	0001                	nop
    80202eb6:	70e2                	ld	ra,56(sp)
    80202eb8:	7442                	ld	s0,48(sp)
    80202eba:	6121                	addi	sp,sp,64
    80202ebc:	8082                	ret

0000000080202ebe <walk_addr>:
    80202ebe:	7179                	addi	sp,sp,-48
    80202ec0:	f406                	sd	ra,40(sp)
    80202ec2:	f022                	sd	s0,32(sp)
    80202ec4:	1800                	addi	s0,sp,48
    80202ec6:	fca43c23          	sd	a0,-40(s0)
    80202eca:	fcb43823          	sd	a1,-48(s0)
    80202ece:	fd043703          	ld	a4,-48(s0)
    80202ed2:	4785                	li	a5,1
    80202ed4:	179a                	slli	a5,a5,0x26
    80202ed6:	00e7f463          	bgeu	a5,a4,80202ede <walk_addr+0x20>
    80202eda:	4781                	li	a5,0
    80202edc:	a0b1                	j	80202f28 <walk_addr+0x6a>
    80202ede:	4601                	li	a2,0
    80202ee0:	fd043583          	ld	a1,-48(s0)
    80202ee4:	fd843503          	ld	a0,-40(s0)
    80202ee8:	e55ff0ef          	jal	80202d3c <walk>
    80202eec:	fea43423          	sd	a0,-24(s0)
    80202ef0:	fe843783          	ld	a5,-24(s0)
    80202ef4:	e399                	bnez	a5,80202efa <walk_addr+0x3c>
    80202ef6:	4781                	li	a5,0
    80202ef8:	a805                	j	80202f28 <walk_addr+0x6a>
    80202efa:	fe843783          	ld	a5,-24(s0)
    80202efe:	639c                	ld	a5,0(a5)
    80202f00:	8b85                	andi	a5,a5,1
    80202f02:	e399                	bnez	a5,80202f08 <walk_addr+0x4a>
    80202f04:	4781                	li	a5,0
    80202f06:	a00d                	j	80202f28 <walk_addr+0x6a>
    80202f08:	fe843783          	ld	a5,-24(s0)
    80202f0c:	639c                	ld	a5,0(a5)
    80202f0e:	8bc1                	andi	a5,a5,16
    80202f10:	e399                	bnez	a5,80202f16 <walk_addr+0x58>
    80202f12:	4781                	li	a5,0
    80202f14:	a811                	j	80202f28 <walk_addr+0x6a>
    80202f16:	fe843783          	ld	a5,-24(s0)
    80202f1a:	639c                	ld	a5,0(a5)
    80202f1c:	83a9                	srli	a5,a5,0xa
    80202f1e:	07b2                	slli	a5,a5,0xc
    80202f20:	fef43023          	sd	a5,-32(s0)
    80202f24:	fe043783          	ld	a5,-32(s0)
    80202f28:	853e                	mv	a0,a5
    80202f2a:	70a2                	ld	ra,40(sp)
    80202f2c:	7402                	ld	s0,32(sp)
    80202f2e:	6145                	addi	sp,sp,48
    80202f30:	8082                	ret

0000000080202f32 <useraddr>:
    80202f32:	7179                	addi	sp,sp,-48
    80202f34:	f406                	sd	ra,40(sp)
    80202f36:	f022                	sd	s0,32(sp)
    80202f38:	1800                	addi	s0,sp,48
    80202f3a:	fca43c23          	sd	a0,-40(s0)
    80202f3e:	fcb43823          	sd	a1,-48(s0)
    80202f42:	fd043583          	ld	a1,-48(s0)
    80202f46:	fd843503          	ld	a0,-40(s0)
    80202f4a:	f75ff0ef          	jal	80202ebe <walk_addr>
    80202f4e:	fea43423          	sd	a0,-24(s0)
    80202f52:	fe843783          	ld	a5,-24(s0)
    80202f56:	e399                	bnez	a5,80202f5c <useraddr+0x2a>
    80202f58:	4781                	li	a5,0
    80202f5a:	a809                	j	80202f6c <useraddr+0x3a>
    80202f5c:	fd043703          	ld	a4,-48(s0)
    80202f60:	6785                	lui	a5,0x1
    80202f62:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80202f64:	8f7d                	and	a4,a4,a5
    80202f66:	fe843783          	ld	a5,-24(s0)
    80202f6a:	8fd9                	or	a5,a5,a4
    80202f6c:	853e                	mv	a0,a5
    80202f6e:	70a2                	ld	ra,40(sp)
    80202f70:	7402                	ld	s0,32(sp)
    80202f72:	6145                	addi	sp,sp,48
    80202f74:	8082                	ret

0000000080202f76 <uvmcopy>:
    80202f76:	711d                	addi	sp,sp,-96
    80202f78:	ec86                	sd	ra,88(sp)
    80202f7a:	e8a2                	sd	s0,80(sp)
    80202f7c:	1080                	addi	s0,sp,96
    80202f7e:	faa43c23          	sd	a0,-72(s0)
    80202f82:	fab43823          	sd	a1,-80(s0)
    80202f86:	fac43423          	sd	a2,-88(s0)
    80202f8a:	fe043423          	sd	zero,-24(s0)
    80202f8e:	a84d                	j	80203040 <uvmcopy+0xca>
    80202f90:	4601                	li	a2,0
    80202f92:	fe843583          	ld	a1,-24(s0)
    80202f96:	fb843503          	ld	a0,-72(s0)
    80202f9a:	da3ff0ef          	jal	80202d3c <walk>
    80202f9e:	fea43023          	sd	a0,-32(s0)
    80202fa2:	fe043783          	ld	a5,-32(s0)
    80202fa6:	c7c1                	beqz	a5,8020302e <uvmcopy+0xb8>
    80202fa8:	fe043783          	ld	a5,-32(s0)
    80202fac:	639c                	ld	a5,0(a5)
    80202fae:	8b85                	andi	a5,a5,1
    80202fb0:	c3c9                	beqz	a5,80203032 <uvmcopy+0xbc>
    80202fb2:	fe043783          	ld	a5,-32(s0)
    80202fb6:	639c                	ld	a5,0(a5)
    80202fb8:	83a9                	srli	a5,a5,0xa
    80202fba:	07b2                	slli	a5,a5,0xc
    80202fbc:	fcf43c23          	sd	a5,-40(s0)
    80202fc0:	fe043783          	ld	a5,-32(s0)
    80202fc4:	639c                	ld	a5,0(a5)
    80202fc6:	2781                	sext.w	a5,a5
    80202fc8:	3ff7f793          	andi	a5,a5,1023
    80202fcc:	fcf42a23          	sw	a5,-44(s0)
    80202fd0:	90fff0ef          	jal	802028de <kalloc>
    80202fd4:	fca43423          	sd	a0,-56(s0)
    80202fd8:	fc843783          	ld	a5,-56(s0)
    80202fdc:	eb81                	bnez	a5,80202fec <uvmcopy+0x76>
    80202fde:	00002517          	auipc	a0,0x2
    80202fe2:	78a50513          	addi	a0,a0,1930 # 80205768 <rodata_start+0x768>
    80202fe6:	f5dfd0ef          	jal	80200f42 <printk>
    80202fea:	a0a5                	j	80203052 <uvmcopy+0xdc>
    80202fec:	fd843783          	ld	a5,-40(s0)
    80202ff0:	6605                	lui	a2,0x1
    80202ff2:	85be                	mv	a1,a5
    80202ff4:	fc843503          	ld	a0,-56(s0)
    80202ff8:	ddefe0ef          	jal	802015d6 <memmove>
    80202ffc:	fc843783          	ld	a5,-56(s0)
    80203000:	fd442703          	lw	a4,-44(s0)
    80203004:	86be                	mv	a3,a5
    80203006:	6605                	lui	a2,0x1
    80203008:	fe843583          	ld	a1,-24(s0)
    8020300c:	fb043503          	ld	a0,-80(s0)
    80203010:	967ff0ef          	jal	80202976 <mappages>
    80203014:	87aa                	mv	a5,a0
    80203016:	cf99                	beqz	a5,80203034 <uvmcopy+0xbe>
    80203018:	fc843503          	ld	a0,-56(s0)
    8020301c:	847ff0ef          	jal	80202862 <kfree>
    80203020:	00002517          	auipc	a0,0x2
    80203024:	76050513          	addi	a0,a0,1888 # 80205780 <rodata_start+0x780>
    80203028:	f1bfd0ef          	jal	80200f42 <printk>
    8020302c:	a01d                	j	80203052 <uvmcopy+0xdc>
    8020302e:	0001                	nop
    80203030:	a011                	j	80203034 <uvmcopy+0xbe>
    80203032:	0001                	nop
    80203034:	fe843703          	ld	a4,-24(s0)
    80203038:	6785                	lui	a5,0x1
    8020303a:	97ba                	add	a5,a5,a4
    8020303c:	fef43423          	sd	a5,-24(s0)
    80203040:	fa843783          	ld	a5,-88(s0)
    80203044:	07b2                	slli	a5,a5,0xc
    80203046:	fe843703          	ld	a4,-24(s0)
    8020304a:	f4f763e3          	bltu	a4,a5,80202f90 <uvmcopy+0x1a>
    8020304e:	4781                	li	a5,0
    80203050:	a821                	j	80203068 <uvmcopy+0xf2>
    80203052:	fe843783          	ld	a5,-24(s0)
    80203056:	83b1                	srli	a5,a5,0xc
    80203058:	4685                	li	a3,1
    8020305a:	863e                	mv	a2,a5
    8020305c:	4581                	li	a1,0
    8020305e:	fb043503          	ld	a0,-80(s0)
    80203062:	b2dff0ef          	jal	80202b8e <uvmunmap>
    80203066:	57fd                	li	a5,-1
    80203068:	853e                	mv	a0,a5
    8020306a:	60e6                	ld	ra,88(sp)
    8020306c:	6446                	ld	s0,80(sp)
    8020306e:	6125                	addi	sp,sp,96
    80203070:	8082                	ret

0000000080203072 <uvmalloc>:
    80203072:	7139                	addi	sp,sp,-64
    80203074:	fc06                	sd	ra,56(sp)
    80203076:	f822                	sd	s0,48(sp)
    80203078:	0080                	addi	s0,sp,64
    8020307a:	fca43c23          	sd	a0,-40(s0)
    8020307e:	fcb43823          	sd	a1,-48(s0)
    80203082:	fcc43423          	sd	a2,-56(s0)
    80203086:	87b6                	mv	a5,a3
    80203088:	fcf42223          	sw	a5,-60(s0)
    8020308c:	fc843703          	ld	a4,-56(s0)
    80203090:	fd043783          	ld	a5,-48(s0)
    80203094:	00f77563          	bgeu	a4,a5,8020309e <uvmalloc+0x2c>
    80203098:	fd043783          	ld	a5,-48(s0)
    8020309c:	a05d                	j	80203142 <uvmalloc+0xd0>
    8020309e:	fd043703          	ld	a4,-48(s0)
    802030a2:	6785                	lui	a5,0x1
    802030a4:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802030a6:	973e                	add	a4,a4,a5
    802030a8:	77fd                	lui	a5,0xfffff
    802030aa:	8ff9                	and	a5,a5,a4
    802030ac:	fcf43823          	sd	a5,-48(s0)
    802030b0:	fd043783          	ld	a5,-48(s0)
    802030b4:	fef43423          	sd	a5,-24(s0)
    802030b8:	a8ad                	j	80203132 <uvmalloc+0xc0>
    802030ba:	825ff0ef          	jal	802028de <kalloc>
    802030be:	fea43023          	sd	a0,-32(s0)
    802030c2:	fe043783          	ld	a5,-32(s0)
    802030c6:	eb99                	bnez	a5,802030dc <uvmalloc+0x6a>
    802030c8:	fd043603          	ld	a2,-48(s0)
    802030cc:	fe843583          	ld	a1,-24(s0)
    802030d0:	fd843503          	ld	a0,-40(s0)
    802030d4:	078000ef          	jal	8020314c <uvmdealloc>
    802030d8:	4781                	li	a5,0
    802030da:	a0a5                	j	80203142 <uvmalloc+0xd0>
    802030dc:	6605                	lui	a2,0x1
    802030de:	4581                	li	a1,0
    802030e0:	fe043503          	ld	a0,-32(s0)
    802030e4:	d4cfe0ef          	jal	80201630 <memset>
    802030e8:	fe043783          	ld	a5,-32(s0)
    802030ec:	fc442703          	lw	a4,-60(s0)
    802030f0:	01276713          	ori	a4,a4,18
    802030f4:	2701                	sext.w	a4,a4
    802030f6:	86be                	mv	a3,a5
    802030f8:	6605                	lui	a2,0x1
    802030fa:	fe843583          	ld	a1,-24(s0)
    802030fe:	fd843503          	ld	a0,-40(s0)
    80203102:	875ff0ef          	jal	80202976 <mappages>
    80203106:	87aa                	mv	a5,a0
    80203108:	cf99                	beqz	a5,80203126 <uvmalloc+0xb4>
    8020310a:	fe043503          	ld	a0,-32(s0)
    8020310e:	f54ff0ef          	jal	80202862 <kfree>
    80203112:	fd043603          	ld	a2,-48(s0)
    80203116:	fe843583          	ld	a1,-24(s0)
    8020311a:	fd843503          	ld	a0,-40(s0)
    8020311e:	02e000ef          	jal	8020314c <uvmdealloc>
    80203122:	4781                	li	a5,0
    80203124:	a839                	j	80203142 <uvmalloc+0xd0>
    80203126:	fe843703          	ld	a4,-24(s0)
    8020312a:	6785                	lui	a5,0x1
    8020312c:	97ba                	add	a5,a5,a4
    8020312e:	fef43423          	sd	a5,-24(s0)
    80203132:	fe843703          	ld	a4,-24(s0)
    80203136:	fc843783          	ld	a5,-56(s0)
    8020313a:	f8f760e3          	bltu	a4,a5,802030ba <uvmalloc+0x48>
    8020313e:	fc843783          	ld	a5,-56(s0)
    80203142:	853e                	mv	a0,a5
    80203144:	70e2                	ld	ra,56(sp)
    80203146:	7442                	ld	s0,48(sp)
    80203148:	6121                	addi	sp,sp,64
    8020314a:	8082                	ret

000000008020314c <uvmdealloc>:
    8020314c:	7139                	addi	sp,sp,-64
    8020314e:	fc06                	sd	ra,56(sp)
    80203150:	f822                	sd	s0,48(sp)
    80203152:	0080                	addi	s0,sp,64
    80203154:	fca43c23          	sd	a0,-40(s0)
    80203158:	fcb43823          	sd	a1,-48(s0)
    8020315c:	fcc43423          	sd	a2,-56(s0)
    80203160:	fc843703          	ld	a4,-56(s0)
    80203164:	fd043783          	ld	a5,-48(s0)
    80203168:	00f76563          	bltu	a4,a5,80203172 <uvmdealloc+0x26>
    8020316c:	fd043783          	ld	a5,-48(s0)
    80203170:	a0b5                	j	802031dc <uvmdealloc+0x90>
    80203172:	fc843703          	ld	a4,-56(s0)
    80203176:	6785                	lui	a5,0x1
    80203178:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    8020317a:	973e                	add	a4,a4,a5
    8020317c:	77fd                	lui	a5,0xfffff
    8020317e:	8f7d                	and	a4,a4,a5
    80203180:	fd043683          	ld	a3,-48(s0)
    80203184:	6785                	lui	a5,0x1
    80203186:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80203188:	96be                	add	a3,a3,a5
    8020318a:	77fd                	lui	a5,0xfffff
    8020318c:	8ff5                	and	a5,a5,a3
    8020318e:	04f77563          	bgeu	a4,a5,802031d8 <uvmdealloc+0x8c>
    80203192:	fd043703          	ld	a4,-48(s0)
    80203196:	6785                	lui	a5,0x1
    80203198:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    8020319a:	973e                	add	a4,a4,a5
    8020319c:	77fd                	lui	a5,0xfffff
    8020319e:	8f7d                	and	a4,a4,a5
    802031a0:	fc843683          	ld	a3,-56(s0)
    802031a4:	6785                	lui	a5,0x1
    802031a6:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802031a8:	96be                	add	a3,a3,a5
    802031aa:	77fd                	lui	a5,0xfffff
    802031ac:	8ff5                	and	a5,a5,a3
    802031ae:	40f707b3          	sub	a5,a4,a5
    802031b2:	83b1                	srli	a5,a5,0xc
    802031b4:	fef42623          	sw	a5,-20(s0)
    802031b8:	fc843703          	ld	a4,-56(s0)
    802031bc:	6785                	lui	a5,0x1
    802031be:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802031c0:	973e                	add	a4,a4,a5
    802031c2:	77fd                	lui	a5,0xfffff
    802031c4:	8ff9                	and	a5,a5,a4
    802031c6:	fec42703          	lw	a4,-20(s0)
    802031ca:	4685                	li	a3,1
    802031cc:	863a                	mv	a2,a4
    802031ce:	85be                	mv	a1,a5
    802031d0:	fd843503          	ld	a0,-40(s0)
    802031d4:	9bbff0ef          	jal	80202b8e <uvmunmap>
    802031d8:	fc843783          	ld	a5,-56(s0)
    802031dc:	853e                	mv	a0,a5
    802031de:	70e2                	ld	ra,56(sp)
    802031e0:	7442                	ld	s0,48(sp)
    802031e2:	6121                	addi	sp,sp,64
    802031e4:	8082                	ret

00000000802031e6 <copyout>:
    802031e6:	715d                	addi	sp,sp,-80
    802031e8:	e486                	sd	ra,72(sp)
    802031ea:	e0a2                	sd	s0,64(sp)
    802031ec:	0880                	addi	s0,sp,80
    802031ee:	fca43423          	sd	a0,-56(s0)
    802031f2:	fcb43023          	sd	a1,-64(s0)
    802031f6:	fac43c23          	sd	a2,-72(s0)
    802031fa:	fad43823          	sd	a3,-80(s0)
    802031fe:	a859                	j	80203294 <copyout+0xae>
    80203200:	fc043703          	ld	a4,-64(s0)
    80203204:	77fd                	lui	a5,0xfffff
    80203206:	8ff9                	and	a5,a5,a4
    80203208:	fef43023          	sd	a5,-32(s0)
    8020320c:	fe043583          	ld	a1,-32(s0)
    80203210:	fc843503          	ld	a0,-56(s0)
    80203214:	cabff0ef          	jal	80202ebe <walk_addr>
    80203218:	fca43c23          	sd	a0,-40(s0)
    8020321c:	fd843783          	ld	a5,-40(s0)
    80203220:	e399                	bnez	a5,80203226 <copyout+0x40>
    80203222:	57fd                	li	a5,-1
    80203224:	a8a5                	j	8020329c <copyout+0xb6>
    80203226:	fe043703          	ld	a4,-32(s0)
    8020322a:	fc043783          	ld	a5,-64(s0)
    8020322e:	8f1d                	sub	a4,a4,a5
    80203230:	6785                	lui	a5,0x1
    80203232:	97ba                	add	a5,a5,a4
    80203234:	fef43423          	sd	a5,-24(s0)
    80203238:	fe843703          	ld	a4,-24(s0)
    8020323c:	fb043783          	ld	a5,-80(s0)
    80203240:	00e7f663          	bgeu	a5,a4,8020324c <copyout+0x66>
    80203244:	fb043783          	ld	a5,-80(s0)
    80203248:	fef43423          	sd	a5,-24(s0)
    8020324c:	fc043703          	ld	a4,-64(s0)
    80203250:	fe043783          	ld	a5,-32(s0)
    80203254:	8f1d                	sub	a4,a4,a5
    80203256:	fd843783          	ld	a5,-40(s0)
    8020325a:	97ba                	add	a5,a5,a4
    8020325c:	fe843603          	ld	a2,-24(s0)
    80203260:	fb843583          	ld	a1,-72(s0)
    80203264:	853e                	mv	a0,a5
    80203266:	b70fe0ef          	jal	802015d6 <memmove>
    8020326a:	fb043703          	ld	a4,-80(s0)
    8020326e:	fe843783          	ld	a5,-24(s0)
    80203272:	40f707b3          	sub	a5,a4,a5
    80203276:	faf43823          	sd	a5,-80(s0)
    8020327a:	fb843703          	ld	a4,-72(s0)
    8020327e:	fe843783          	ld	a5,-24(s0)
    80203282:	97ba                	add	a5,a5,a4
    80203284:	faf43c23          	sd	a5,-72(s0)
    80203288:	fe043703          	ld	a4,-32(s0)
    8020328c:	6785                	lui	a5,0x1
    8020328e:	97ba                	add	a5,a5,a4
    80203290:	fcf43023          	sd	a5,-64(s0)
    80203294:	fb043783          	ld	a5,-80(s0)
    80203298:	f7a5                	bnez	a5,80203200 <copyout+0x1a>
    8020329a:	4781                	li	a5,0
    8020329c:	853e                	mv	a0,a5
    8020329e:	60a6                	ld	ra,72(sp)
    802032a0:	6406                	ld	s0,64(sp)
    802032a2:	6161                	addi	sp,sp,80
    802032a4:	8082                	ret

00000000802032a6 <copyin>:
    802032a6:	715d                	addi	sp,sp,-80
    802032a8:	e486                	sd	ra,72(sp)
    802032aa:	e0a2                	sd	s0,64(sp)
    802032ac:	0880                	addi	s0,sp,80
    802032ae:	fca43423          	sd	a0,-56(s0)
    802032b2:	fcb43023          	sd	a1,-64(s0)
    802032b6:	fac43c23          	sd	a2,-72(s0)
    802032ba:	fad43823          	sd	a3,-80(s0)
    802032be:	a869                	j	80203358 <copyin+0xb2>
    802032c0:	fb843703          	ld	a4,-72(s0)
    802032c4:	77fd                	lui	a5,0xfffff
    802032c6:	8ff9                	and	a5,a5,a4
    802032c8:	fef43023          	sd	a5,-32(s0)
    802032cc:	fe043583          	ld	a1,-32(s0)
    802032d0:	fc843503          	ld	a0,-56(s0)
    802032d4:	bebff0ef          	jal	80202ebe <walk_addr>
    802032d8:	fca43c23          	sd	a0,-40(s0)
    802032dc:	fc043c23          	sd	zero,-40(s0)
    802032e0:	fd843783          	ld	a5,-40(s0)
    802032e4:	c399                	beqz	a5,802032ea <copyin+0x44>
    802032e6:	57fd                	li	a5,-1
    802032e8:	a8a5                	j	80203360 <copyin+0xba>
    802032ea:	fe043703          	ld	a4,-32(s0)
    802032ee:	fb843783          	ld	a5,-72(s0)
    802032f2:	8f1d                	sub	a4,a4,a5
    802032f4:	6785                	lui	a5,0x1
    802032f6:	97ba                	add	a5,a5,a4
    802032f8:	fef43423          	sd	a5,-24(s0)
    802032fc:	fe843703          	ld	a4,-24(s0)
    80203300:	fb043783          	ld	a5,-80(s0)
    80203304:	00e7f663          	bgeu	a5,a4,80203310 <copyin+0x6a>
    80203308:	fb043783          	ld	a5,-80(s0)
    8020330c:	fef43423          	sd	a5,-24(s0)
    80203310:	fb843703          	ld	a4,-72(s0)
    80203314:	fe043783          	ld	a5,-32(s0)
    80203318:	8f1d                	sub	a4,a4,a5
    8020331a:	fd843783          	ld	a5,-40(s0)
    8020331e:	97ba                	add	a5,a5,a4
    80203320:	fe843603          	ld	a2,-24(s0)
    80203324:	85be                	mv	a1,a5
    80203326:	fc043503          	ld	a0,-64(s0)
    8020332a:	aacfe0ef          	jal	802015d6 <memmove>
    8020332e:	fb043703          	ld	a4,-80(s0)
    80203332:	fe843783          	ld	a5,-24(s0)
    80203336:	40f707b3          	sub	a5,a4,a5
    8020333a:	faf43823          	sd	a5,-80(s0)
    8020333e:	fc043703          	ld	a4,-64(s0)
    80203342:	fe843783          	ld	a5,-24(s0)
    80203346:	97ba                	add	a5,a5,a4
    80203348:	fcf43023          	sd	a5,-64(s0)
    8020334c:	fe043703          	ld	a4,-32(s0)
    80203350:	6785                	lui	a5,0x1
    80203352:	97ba                	add	a5,a5,a4
    80203354:	faf43c23          	sd	a5,-72(s0)
    80203358:	fb043783          	ld	a5,-80(s0)
    8020335c:	f3b5                	bnez	a5,802032c0 <copyin+0x1a>
    8020335e:	4781                	li	a5,0
    80203360:	853e                	mv	a0,a5
    80203362:	60a6                	ld	ra,72(sp)
    80203364:	6406                	ld	s0,64(sp)
    80203366:	6161                	addi	sp,sp,80
    80203368:	8082                	ret

000000008020336a <copyinstr>:
    8020336a:	711d                	addi	sp,sp,-96
    8020336c:	ec86                	sd	ra,88(sp)
    8020336e:	e8a2                	sd	s0,80(sp)
    80203370:	1080                	addi	s0,sp,96
    80203372:	faa43c23          	sd	a0,-72(s0)
    80203376:	fab43823          	sd	a1,-80(s0)
    8020337a:	fac43423          	sd	a2,-88(s0)
    8020337e:	fad43023          	sd	a3,-96(s0)
    80203382:	fe042223          	sw	zero,-28(s0)
    80203386:	fe042023          	sw	zero,-32(s0)
    8020338a:	a8c9                	j	8020345c <copyinstr+0xf2>
    8020338c:	fa843703          	ld	a4,-88(s0)
    80203390:	77fd                	lui	a5,0xfffff
    80203392:	8ff9                	and	a5,a5,a4
    80203394:	fcf43823          	sd	a5,-48(s0)
    80203398:	fd043583          	ld	a1,-48(s0)
    8020339c:	fb843503          	ld	a0,-72(s0)
    802033a0:	b1fff0ef          	jal	80202ebe <walk_addr>
    802033a4:	fca43423          	sd	a0,-56(s0)
    802033a8:	fc843783          	ld	a5,-56(s0)
    802033ac:	e399                	bnez	a5,802033b2 <copyinstr+0x48>
    802033ae:	57fd                	li	a5,-1
    802033b0:	a87d                	j	8020346e <copyinstr+0x104>
    802033b2:	fd043703          	ld	a4,-48(s0)
    802033b6:	fa843783          	ld	a5,-88(s0)
    802033ba:	8f1d                	sub	a4,a4,a5
    802033bc:	6785                	lui	a5,0x1
    802033be:	97ba                	add	a5,a5,a4
    802033c0:	fef43423          	sd	a5,-24(s0)
    802033c4:	fe843703          	ld	a4,-24(s0)
    802033c8:	fa043783          	ld	a5,-96(s0)
    802033cc:	00e7f663          	bgeu	a5,a4,802033d8 <copyinstr+0x6e>
    802033d0:	fa043783          	ld	a5,-96(s0)
    802033d4:	fef43423          	sd	a5,-24(s0)
    802033d8:	fa843703          	ld	a4,-88(s0)
    802033dc:	fd043783          	ld	a5,-48(s0)
    802033e0:	8f1d                	sub	a4,a4,a5
    802033e2:	fc843783          	ld	a5,-56(s0)
    802033e6:	97ba                	add	a5,a5,a4
    802033e8:	fcf43c23          	sd	a5,-40(s0)
    802033ec:	a8b9                	j	8020344a <copyinstr+0xe0>
    802033ee:	fd843783          	ld	a5,-40(s0)
    802033f2:	0007c783          	lbu	a5,0(a5) # 1000 <n+0xfe0>
    802033f6:	eb89                	bnez	a5,80203408 <copyinstr+0x9e>
    802033f8:	fb043783          	ld	a5,-80(s0)
    802033fc:	00078023          	sb	zero,0(a5)
    80203400:	4785                	li	a5,1
    80203402:	fef42223          	sw	a5,-28(s0)
    80203406:	a0a9                	j	80203450 <copyinstr+0xe6>
    80203408:	fd843783          	ld	a5,-40(s0)
    8020340c:	0007c703          	lbu	a4,0(a5)
    80203410:	fb043783          	ld	a5,-80(s0)
    80203414:	00e78023          	sb	a4,0(a5)
    80203418:	fe843783          	ld	a5,-24(s0)
    8020341c:	17fd                	addi	a5,a5,-1
    8020341e:	fef43423          	sd	a5,-24(s0)
    80203422:	fa043783          	ld	a5,-96(s0)
    80203426:	17fd                	addi	a5,a5,-1
    80203428:	faf43023          	sd	a5,-96(s0)
    8020342c:	fd843783          	ld	a5,-40(s0)
    80203430:	0785                	addi	a5,a5,1
    80203432:	fcf43c23          	sd	a5,-40(s0)
    80203436:	fb043783          	ld	a5,-80(s0)
    8020343a:	0785                	addi	a5,a5,1
    8020343c:	faf43823          	sd	a5,-80(s0)
    80203440:	fe042783          	lw	a5,-32(s0)
    80203444:	2785                	addiw	a5,a5,1
    80203446:	fef42023          	sw	a5,-32(s0)
    8020344a:	fe843783          	ld	a5,-24(s0)
    8020344e:	f3c5                	bnez	a5,802033ee <copyinstr+0x84>
    80203450:	fd043703          	ld	a4,-48(s0)
    80203454:	6785                	lui	a5,0x1
    80203456:	97ba                	add	a5,a5,a4
    80203458:	faf43423          	sd	a5,-88(s0)
    8020345c:	fe442783          	lw	a5,-28(s0)
    80203460:	2781                	sext.w	a5,a5
    80203462:	e781                	bnez	a5,8020346a <copyinstr+0x100>
    80203464:	fa043783          	ld	a5,-96(s0)
    80203468:	f395                	bnez	a5,8020338c <copyinstr+0x22>
    8020346a:	fe042783          	lw	a5,-32(s0)
    8020346e:	853e                	mv	a0,a5
    80203470:	60e6                	ld	ra,88(sp)
    80203472:	6446                	ld	s0,80(sp)
    80203474:	6125                	addi	sp,sp,96
    80203476:	8082                	ret

0000000080203478 <init_queue>:
    80203478:	1101                	addi	sp,sp,-32
    8020347a:	ec06                	sd	ra,24(sp)
    8020347c:	e822                	sd	s0,16(sp)
    8020347e:	1000                	addi	s0,sp,32
    80203480:	fea43423          	sd	a0,-24(s0)
    80203484:	fe843703          	ld	a4,-24(s0)
    80203488:	6785                	lui	a5,0x1
    8020348a:	97ba                	add	a5,a5,a4
    8020348c:	0007a223          	sw	zero,4(a5) # 1004 <n+0xfe4>
    80203490:	fe843703          	ld	a4,-24(s0)
    80203494:	6785                	lui	a5,0x1
    80203496:	97ba                	add	a5,a5,a4
    80203498:	43d8                	lw	a4,4(a5)
    8020349a:	fe843683          	ld	a3,-24(s0)
    8020349e:	6785                	lui	a5,0x1
    802034a0:	97b6                	add	a5,a5,a3
    802034a2:	c398                	sw	a4,0(a5)
    802034a4:	fe843703          	ld	a4,-24(s0)
    802034a8:	6785                	lui	a5,0x1
    802034aa:	97ba                	add	a5,a5,a4
    802034ac:	4705                	li	a4,1
    802034ae:	c798                	sw	a4,8(a5)
    802034b0:	0001                	nop
    802034b2:	60e2                	ld	ra,24(sp)
    802034b4:	6442                	ld	s0,16(sp)
    802034b6:	6105                	addi	sp,sp,32
    802034b8:	8082                	ret

00000000802034ba <push_queue>:
    802034ba:	1101                	addi	sp,sp,-32
    802034bc:	ec06                	sd	ra,24(sp)
    802034be:	e822                	sd	s0,16(sp)
    802034c0:	1000                	addi	s0,sp,32
    802034c2:	fea43423          	sd	a0,-24(s0)
    802034c6:	87ae                	mv	a5,a1
    802034c8:	fef42223          	sw	a5,-28(s0)
    802034cc:	fe843703          	ld	a4,-24(s0)
    802034d0:	6785                	lui	a5,0x1
    802034d2:	97ba                	add	a5,a5,a4
    802034d4:	479c                	lw	a5,8(a5)
    802034d6:	e39d                	bnez	a5,802034fc <push_queue+0x42>
    802034d8:	fe843703          	ld	a4,-24(s0)
    802034dc:	6785                	lui	a5,0x1
    802034de:	97ba                	add	a5,a5,a4
    802034e0:	4398                	lw	a4,0(a5)
    802034e2:	fe843683          	ld	a3,-24(s0)
    802034e6:	6785                	lui	a5,0x1
    802034e8:	97b6                	add	a5,a5,a3
    802034ea:	43dc                	lw	a5,4(a5)
    802034ec:	00f71863          	bne	a4,a5,802034fc <push_queue+0x42>
    802034f0:	00002517          	auipc	a0,0x2
    802034f4:	2b850513          	addi	a0,a0,696 # 802057a8 <rodata_start+0x7a8>
    802034f8:	a54fd0ef          	jal	8020074c <panic>
    802034fc:	fe843703          	ld	a4,-24(s0)
    80203500:	6785                	lui	a5,0x1
    80203502:	97ba                	add	a5,a5,a4
    80203504:	0007a423          	sw	zero,8(a5) # 1008 <n+0xfe8>
    80203508:	fe843703          	ld	a4,-24(s0)
    8020350c:	6785                	lui	a5,0x1
    8020350e:	97ba                	add	a5,a5,a4
    80203510:	43dc                	lw	a5,4(a5)
    80203512:	fe843703          	ld	a4,-24(s0)
    80203516:	078a                	slli	a5,a5,0x2
    80203518:	97ba                	add	a5,a5,a4
    8020351a:	fe442703          	lw	a4,-28(s0)
    8020351e:	c398                	sw	a4,0(a5)
    80203520:	fe843703          	ld	a4,-24(s0)
    80203524:	6785                	lui	a5,0x1
    80203526:	97ba                	add	a5,a5,a4
    80203528:	43dc                	lw	a5,4(a5)
    8020352a:	2785                	addiw	a5,a5,1 # 1001 <n+0xfe1>
    8020352c:	2781                	sext.w	a5,a5
    8020352e:	873e                	mv	a4,a5
    80203530:	41f7579b          	sraiw	a5,a4,0x1f
    80203534:	0177d79b          	srliw	a5,a5,0x17
    80203538:	9f3d                	addw	a4,a4,a5
    8020353a:	1ff77713          	andi	a4,a4,511
    8020353e:	40f707bb          	subw	a5,a4,a5
    80203542:	0007871b          	sext.w	a4,a5
    80203546:	fe843683          	ld	a3,-24(s0)
    8020354a:	6785                	lui	a5,0x1
    8020354c:	97b6                	add	a5,a5,a3
    8020354e:	c3d8                	sw	a4,4(a5)
    80203550:	0001                	nop
    80203552:	60e2                	ld	ra,24(sp)
    80203554:	6442                	ld	s0,16(sp)
    80203556:	6105                	addi	sp,sp,32
    80203558:	8082                	ret

000000008020355a <pop_queue>:
    8020355a:	7179                	addi	sp,sp,-48
    8020355c:	f406                	sd	ra,40(sp)
    8020355e:	f022                	sd	s0,32(sp)
    80203560:	1800                	addi	s0,sp,48
    80203562:	fca43c23          	sd	a0,-40(s0)
    80203566:	fd843703          	ld	a4,-40(s0)
    8020356a:	6785                	lui	a5,0x1
    8020356c:	97ba                	add	a5,a5,a4
    8020356e:	479c                	lw	a5,8(a5)
    80203570:	c399                	beqz	a5,80203576 <pop_queue+0x1c>
    80203572:	57fd                	li	a5,-1
    80203574:	a88d                	j	802035e6 <pop_queue+0x8c>
    80203576:	fd843703          	ld	a4,-40(s0)
    8020357a:	6785                	lui	a5,0x1
    8020357c:	97ba                	add	a5,a5,a4
    8020357e:	439c                	lw	a5,0(a5)
    80203580:	fd843703          	ld	a4,-40(s0)
    80203584:	078a                	slli	a5,a5,0x2
    80203586:	97ba                	add	a5,a5,a4
    80203588:	439c                	lw	a5,0(a5)
    8020358a:	fef42623          	sw	a5,-20(s0)
    8020358e:	fd843703          	ld	a4,-40(s0)
    80203592:	6785                	lui	a5,0x1
    80203594:	97ba                	add	a5,a5,a4
    80203596:	439c                	lw	a5,0(a5)
    80203598:	2785                	addiw	a5,a5,1 # 1001 <n+0xfe1>
    8020359a:	2781                	sext.w	a5,a5
    8020359c:	873e                	mv	a4,a5
    8020359e:	41f7579b          	sraiw	a5,a4,0x1f
    802035a2:	0177d79b          	srliw	a5,a5,0x17
    802035a6:	9f3d                	addw	a4,a4,a5
    802035a8:	1ff77713          	andi	a4,a4,511
    802035ac:	40f707bb          	subw	a5,a4,a5
    802035b0:	0007871b          	sext.w	a4,a5
    802035b4:	fd843683          	ld	a3,-40(s0)
    802035b8:	6785                	lui	a5,0x1
    802035ba:	97b6                	add	a5,a5,a3
    802035bc:	c398                	sw	a4,0(a5)
    802035be:	fd843703          	ld	a4,-40(s0)
    802035c2:	6785                	lui	a5,0x1
    802035c4:	97ba                	add	a5,a5,a4
    802035c6:	4398                	lw	a4,0(a5)
    802035c8:	fd843683          	ld	a3,-40(s0)
    802035cc:	6785                	lui	a5,0x1
    802035ce:	97b6                	add	a5,a5,a3
    802035d0:	43dc                	lw	a5,4(a5)
    802035d2:	00f71863          	bne	a4,a5,802035e2 <pop_queue+0x88>
    802035d6:	fd843703          	ld	a4,-40(s0)
    802035da:	6785                	lui	a5,0x1
    802035dc:	97ba                	add	a5,a5,a4
    802035de:	4705                	li	a4,1
    802035e0:	c798                	sw	a4,8(a5)
    802035e2:	fec42783          	lw	a5,-20(s0)
    802035e6:	853e                	mv	a0,a5
    802035e8:	70a2                	ld	ra,40(sp)
    802035ea:	7402                	ld	s0,32(sp)
    802035ec:	6145                	addi	sp,sp,48
    802035ee:	8082                	ret

00000000802035f0 <consgetc>:
    802035f0:	1141                	addi	sp,sp,-16
    802035f2:	e406                	sd	ra,8(sp)
    802035f4:	e022                	sd	s0,0(sp)
    802035f6:	0800                	addi	s0,sp,16
    802035f8:	8befd0ef          	jal	802006b6 <sbi_getchar>
    802035fc:	87aa                	mv	a5,a0
    802035fe:	853e                	mv	a0,a5
    80203600:	60a2                	ld	ra,8(sp)
    80203602:	6402                	ld	s0,0(sp)
    80203604:	0141                	addi	sp,sp,16
    80203606:	8082                	ret
	...

0000000080204000 <__alltraps>:
    80204000:	14011173          	csrrw	sp,sscratch,sp
    80204004:	e406                	sd	ra,8(sp)
    80204006:	ec0e                	sd	gp,24(sp)
    80204008:	f416                	sd	t0,40(sp)
    8020400a:	f81a                	sd	t1,48(sp)
    8020400c:	fc1e                	sd	t2,56(sp)
    8020400e:	e0a2                	sd	s0,64(sp)
    80204010:	e4a6                	sd	s1,72(sp)
    80204012:	e8aa                	sd	a0,80(sp)
    80204014:	ecae                	sd	a1,88(sp)
    80204016:	f0b2                	sd	a2,96(sp)
    80204018:	f4b6                	sd	a3,104(sp)
    8020401a:	f8ba                	sd	a4,112(sp)
    8020401c:	fcbe                	sd	a5,120(sp)
    8020401e:	e142                	sd	a6,128(sp)
    80204020:	e546                	sd	a7,136(sp)
    80204022:	e94a                	sd	s2,144(sp)
    80204024:	ed4e                	sd	s3,152(sp)
    80204026:	f152                	sd	s4,160(sp)
    80204028:	f556                	sd	s5,168(sp)
    8020402a:	f95a                	sd	s6,176(sp)
    8020402c:	fd5e                	sd	s7,184(sp)
    8020402e:	e1e2                	sd	s8,192(sp)
    80204030:	e5e6                	sd	s9,200(sp)
    80204032:	e9ea                	sd	s10,208(sp)
    80204034:	edee                	sd	s11,216(sp)
    80204036:	f1f2                	sd	t3,224(sp)
    80204038:	f5f6                	sd	t4,232(sp)
    8020403a:	f9fa                	sd	t5,240(sp)
    8020403c:	fdfe                	sd	t6,248(sp)
    8020403e:	100022f3          	csrr	t0,sstatus
    80204042:	14102373          	csrr	t1,sepc
    80204046:	e216                	sd	t0,256(sp)
    80204048:	e61a                	sd	t1,264(sp)
    8020404a:	140023f3          	csrr	t2,sscratch
    8020404e:	e81e                	sd	t2,16(sp)
    80204050:	62d2                	ld	t0,272(sp)
    80204052:	7312                	ld	t1,288(sp)
    80204054:	6172                	ld	sp,280(sp)
    80204056:	18029073          	csrw	satp,t0
    8020405a:	12000073          	sfence.vma
    8020405e:	8302                	jr	t1

0000000080204060 <__restore>:
    80204060:	18059073          	csrw	satp,a1
    80204064:	12000073          	sfence.vma
    80204068:	14051073          	csrw	sscratch,a0
    8020406c:	812a                	mv	sp,a0
    8020406e:	6292                	ld	t0,256(sp)
    80204070:	6332                	ld	t1,264(sp)
    80204072:	10029073          	csrw	sstatus,t0
    80204076:	14131073          	csrw	sepc,t1
    8020407a:	60a2                	ld	ra,8(sp)
    8020407c:	61e2                	ld	gp,24(sp)
    8020407e:	72a2                	ld	t0,40(sp)
    80204080:	7342                	ld	t1,48(sp)
    80204082:	73e2                	ld	t2,56(sp)
    80204084:	6406                	ld	s0,64(sp)
    80204086:	64a6                	ld	s1,72(sp)
    80204088:	6546                	ld	a0,80(sp)
    8020408a:	65e6                	ld	a1,88(sp)
    8020408c:	7606                	ld	a2,96(sp)
    8020408e:	76a6                	ld	a3,104(sp)
    80204090:	7746                	ld	a4,112(sp)
    80204092:	77e6                	ld	a5,120(sp)
    80204094:	680a                	ld	a6,128(sp)
    80204096:	68aa                	ld	a7,136(sp)
    80204098:	694a                	ld	s2,144(sp)
    8020409a:	69ea                	ld	s3,152(sp)
    8020409c:	7a0a                	ld	s4,160(sp)
    8020409e:	7aaa                	ld	s5,168(sp)
    802040a0:	7b4a                	ld	s6,176(sp)
    802040a2:	7bea                	ld	s7,184(sp)
    802040a4:	6c0e                	ld	s8,192(sp)
    802040a6:	6cae                	ld	s9,200(sp)
    802040a8:	6d4e                	ld	s10,208(sp)
    802040aa:	6dee                	ld	s11,216(sp)
    802040ac:	7e0e                	ld	t3,224(sp)
    802040ae:	7eae                	ld	t4,232(sp)
    802040b0:	7f4e                	ld	t5,240(sp)
    802040b2:	7fee                	ld	t6,248(sp)
    802040b4:	6142                	ld	sp,16(sp)
    802040b6:	10200073          	sret
	...
