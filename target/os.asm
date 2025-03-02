
../target/os.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	00021117          	auipc	sp,0x21
    80200004:	00010113          	mv	sp,sp
    80200008:	7240006f          	j	8020072c <main>
    8020000c:	0000                	unimp
    8020000e:	0000                	unimp
	...

0000000080200012 <load_init>:
    80200012:	1101                	addi	sp,sp,-32 # 80220fe0 <boot_stack+0xffe0>
    80200014:	ec06                	sd	ra,24(sp)
    80200016:	e822                	sd	s0,16(sp)
    80200018:	1000                	addi	s0,sp,32
    8020001a:	00497797          	auipc	a5,0x497
    8020001e:	fe678793          	addi	a5,a5,-26 # 80697000 <app_info_ptr>
    80200022:	00009717          	auipc	a4,0x9
    80200026:	fde70713          	addi	a4,a4,-34 # 80209000 <_app_num>
    8020002a:	e398                	sd	a4,0(a5)
    8020002c:	00497797          	auipc	a5,0x497
    80200030:	fd478793          	addi	a5,a5,-44 # 80697000 <app_info_ptr>
    80200034:	639c                	ld	a5,0(a5)
    80200036:	6398                	ld	a4,0(a5)
    80200038:	00497797          	auipc	a5,0x497
    8020003c:	fd078793          	addi	a5,a5,-48 # 80697008 <app_num>
    80200040:	e398                	sd	a4,0(a5)
    80200042:	00497797          	auipc	a5,0x497
    80200046:	fbe78793          	addi	a5,a5,-66 # 80697000 <app_info_ptr>
    8020004a:	639c                	ld	a5,0(a5)
    8020004c:	00878713          	addi	a4,a5,8
    80200050:	00497797          	auipc	a5,0x497
    80200054:	fb078793          	addi	a5,a5,-80 # 80697000 <app_info_ptr>
    80200058:	e398                	sd	a4,0(a5)
    8020005a:	00009797          	auipc	a5,0x9
    8020005e:	fce78793          	addi	a5,a5,-50 # 80209028 <_app_names>
    80200062:	fef43423          	sd	a5,-24(s0)
    80200066:	00008517          	auipc	a0,0x8
    8020006a:	f9a50513          	addi	a0,a0,-102 # 80208000 <rodata_start>
    8020006e:	134010ef          	jal	802011a2 <printk>
    80200072:	fe042223          	sw	zero,-28(s0)
    80200076:	a895                	j	802000ea <load_init+0xd8>
    80200078:	fe843503          	ld	a0,-24(s0)
    8020007c:	7c2010ef          	jal	8020183e <strlen>
    80200080:	87aa                	mv	a5,a0
    80200082:	fef42023          	sw	a5,-32(s0)
    80200086:	fe442703          	lw	a4,-28(s0)
    8020008a:	0c800793          	li	a5,200
    8020008e:	02f70733          	mul	a4,a4,a5
    80200092:	00021797          	auipc	a5,0x21
    80200096:	f6e78793          	addi	a5,a5,-146 # 80221000 <names>
    8020009a:	97ba                	add	a5,a5,a4
    8020009c:	fe042703          	lw	a4,-32(s0)
    802000a0:	863a                	mv	a2,a4
    802000a2:	fe843583          	ld	a1,-24(s0)
    802000a6:	853e                	mv	a0,a5
    802000a8:	3d3010ef          	jal	80201c7a <strncpy>
    802000ac:	fe042783          	lw	a5,-32(s0)
    802000b0:	0785                	addi	a5,a5,1
    802000b2:	fe843703          	ld	a4,-24(s0)
    802000b6:	97ba                	add	a5,a5,a4
    802000b8:	fef43423          	sd	a5,-24(s0)
    802000bc:	fe442703          	lw	a4,-28(s0)
    802000c0:	0c800793          	li	a5,200
    802000c4:	02f70733          	mul	a4,a4,a5
    802000c8:	00021797          	auipc	a5,0x21
    802000cc:	f3878793          	addi	a5,a5,-200 # 80221000 <names>
    802000d0:	97ba                	add	a5,a5,a4
    802000d2:	85be                	mv	a1,a5
    802000d4:	00008517          	auipc	a0,0x8
    802000d8:	f3c50513          	addi	a0,a0,-196 # 80208010 <rodata_start+0x10>
    802000dc:	0c6010ef          	jal	802011a2 <printk>
    802000e0:	fe442783          	lw	a5,-28(s0)
    802000e4:	2785                	addiw	a5,a5,1
    802000e6:	fef42223          	sw	a5,-28(s0)
    802000ea:	fe442703          	lw	a4,-28(s0)
    802000ee:	00497797          	auipc	a5,0x497
    802000f2:	f1a78793          	addi	a5,a5,-230 # 80697008 <app_num>
    802000f6:	639c                	ld	a5,0(a5)
    802000f8:	f8f760e3          	bltu	a4,a5,80200078 <load_init+0x66>
    802000fc:	00008517          	auipc	a0,0x8
    80200100:	f1c50513          	addi	a0,a0,-228 # 80208018 <rodata_start+0x18>
    80200104:	09e010ef          	jal	802011a2 <printk>
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
    80200130:	00021797          	auipc	a5,0x21
    80200134:	ed078793          	addi	a5,a5,-304 # 80221000 <names>
    80200138:	97ba                	add	a5,a5,a4
    8020013a:	06400613          	li	a2,100
    8020013e:	85be                	mv	a1,a5
    80200140:	fd843503          	ld	a0,-40(s0)
    80200144:	3bd010ef          	jal	80201d00 <strncmp>
    80200148:	87aa                	mv	a5,a0
    8020014a:	e781                	bnez	a5,80200152 <get_id_by_name+0x40>
    8020014c:	fec42783          	lw	a5,-20(s0)
    80200150:	a805                	j	80200180 <get_id_by_name+0x6e>
    80200152:	fec42783          	lw	a5,-20(s0)
    80200156:	2785                	addiw	a5,a5,1
    80200158:	fef42623          	sw	a5,-20(s0)
    8020015c:	fec42703          	lw	a4,-20(s0)
    80200160:	00497797          	auipc	a5,0x497
    80200164:	ea878793          	addi	a5,a5,-344 # 80697008 <app_num>
    80200168:	639c                	ld	a5,0(a5)
    8020016a:	faf76de3          	bltu	a4,a5,80200124 <get_id_by_name+0x12>
    8020016e:	fd843583          	ld	a1,-40(s0)
    80200172:	00008517          	auipc	a0,0x8
    80200176:	ebe50513          	addi	a0,a0,-322 # 80208030 <rodata_start+0x30>
    8020017a:	028010ef          	jal	802011a2 <printk>
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
    802001ac:	00008517          	auipc	a0,0x8
    802001b0:	ea450513          	addi	a0,a0,-348 # 80208050 <rodata_start+0x50>
    802001b4:	7f8000ef          	jal	802009ac <panic>
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
    80200212:	60b020ef          	jal	8020301c <kalloc>
    80200216:	faa43423          	sd	a0,-88(s0)
    8020021a:	fa843783          	ld	a5,-88(s0)
    8020021e:	e799                	bnez	a5,8020022c <load_app_pgtbl+0xa2>
    80200220:	00008517          	auipc	a0,0x8
    80200224:	e4050513          	addi	a0,a0,-448 # 80208060 <rodata_start+0x60>
    80200228:	784000ef          	jal	802009ac <panic>
    8020022c:	fe043783          	ld	a5,-32(s0)
    80200230:	6605                	lui	a2,0x1
    80200232:	85be                	mv	a1,a5
    80200234:	fa843503          	ld	a0,-88(s0)
    80200238:	720010ef          	jal	80201958 <memmove>
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
    80200264:	7c4010ef          	jal	80201a28 <memset>
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
    802002b0:	778010ef          	jal	80201a28 <memset>
    802002b4:	f8843783          	ld	a5,-120(s0)
    802002b8:	679c                	ld	a5,8(a5)
    802002ba:	fa843683          	ld	a3,-88(s0)
    802002be:	4779                	li	a4,30
    802002c0:	6605                	lui	a2,0x1
    802002c2:	fe843583          	ld	a1,-24(s0)
    802002c6:	853e                	mv	a0,a5
    802002c8:	5ed020ef          	jal	802030b4 <mappages>
    802002cc:	87aa                	mv	a5,a0
    802002ce:	c799                	beqz	a5,802002dc <load_app_pgtbl+0x152>
    802002d0:	00008517          	auipc	a0,0x8
    802002d4:	db050513          	addi	a0,a0,-592 # 80208080 <rodata_start+0x80>
    802002d8:	6d4000ef          	jal	802009ac <panic>
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
    8020031a:	503020ef          	jal	8020301c <kalloc>
    8020031e:	faa43423          	sd	a0,-88(s0)
    80200322:	fa843783          	ld	a5,-88(s0)
    80200326:	e799                	bnez	a5,80200334 <load_app_pgtbl+0x1aa>
    80200328:	00008517          	auipc	a0,0x8
    8020032c:	d7050513          	addi	a0,a0,-656 # 80208098 <rodata_start+0x98>
    80200330:	67c000ef          	jal	802009ac <panic>
    80200334:	6605                	lui	a2,0x1
    80200336:	4581                	li	a1,0
    80200338:	fa843503          	ld	a0,-88(s0)
    8020033c:	6ec010ef          	jal	80201a28 <memset>
    80200340:	f8843783          	ld	a5,-120(s0)
    80200344:	679c                	ld	a5,8(a5)
    80200346:	fa843683          	ld	a3,-88(s0)
    8020034a:	4759                	li	a4,22
    8020034c:	6605                	lui	a2,0x1
    8020034e:	fd843583          	ld	a1,-40(s0)
    80200352:	853e                	mv	a0,a5
    80200354:	561020ef          	jal	802030b4 <mappages>
    80200358:	87aa                	mv	a5,a0
    8020035a:	c799                	beqz	a5,80200368 <load_app_pgtbl+0x1de>
    8020035c:	00008517          	auipc	a0,0x8
    80200360:	d5c50513          	addi	a0,a0,-676 # 802080b8 <rodata_start+0xb8>
    80200364:	648000ef          	jal	802009ac <panic>
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
    802003e2:	00497797          	auipc	a5,0x497
    802003e6:	c1e78793          	addi	a5,a5,-994 # 80697000 <app_info_ptr>
    802003ea:	6398                	ld	a4,0(a5)
    802003ec:	fec42783          	lw	a5,-20(s0)
    802003f0:	078e                	slli	a5,a5,0x3
    802003f2:	97ba                	add	a5,a5,a4
    802003f4:	6394                	ld	a3,0(a5)
    802003f6:	00497797          	auipc	a5,0x497
    802003fa:	c0a78793          	addi	a5,a5,-1014 # 80697000 <app_info_ptr>
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

0000000080200424 <bin_loader>:
    80200424:	711d                	addi	sp,sp,-96
    80200426:	ec86                	sd	ra,88(sp)
    80200428:	e8a2                	sd	s0,80(sp)
    8020042a:	1080                	addi	s0,sp,96
    8020042c:	faa43423          	sd	a0,-88(s0)
    80200430:	fab43023          	sd	a1,-96(s0)
    80200434:	fa843503          	ld	a0,-88(s0)
    80200438:	7d4040ef          	jal	80204c0c <ivalid>
    8020043c:	fa843783          	ld	a5,-88(s0)
    80200440:	4bdc                	lw	a5,20(a5)
    80200442:	1782                	slli	a5,a5,0x20
    80200444:	9381                	srli	a5,a5,0x20
    80200446:	fcf43823          	sd	a5,-48(s0)
    8020044a:	40100793          	li	a5,1025
    8020044e:	07d6                	slli	a5,a5,0x15
    80200450:	fcf43423          	sd	a5,-56(s0)
    80200454:	fd043703          	ld	a4,-48(s0)
    80200458:	00008797          	auipc	a5,0x8
    8020045c:	ce078793          	addi	a5,a5,-800 # 80208138 <rodata_start+0x138>
    80200460:	639c                	ld	a5,0(a5)
    80200462:	973e                	add	a4,a4,a5
    80200464:	77fd                	lui	a5,0xfffff
    80200466:	8ff9                	and	a5,a5,a4
    80200468:	fcf43023          	sd	a5,-64(s0)
    8020046c:	fc843783          	ld	a5,-56(s0)
    80200470:	fef43423          	sd	a5,-24(s0)
    80200474:	fe043023          	sd	zero,-32(s0)
    80200478:	a0c1                	j	80200538 <bin_loader+0x114>
    8020047a:	3a3020ef          	jal	8020301c <kalloc>
    8020047e:	faa43c23          	sd	a0,-72(s0)
    80200482:	fb843783          	ld	a5,-72(s0)
    80200486:	e799                	bnez	a5,80200494 <bin_loader+0x70>
    80200488:	00008517          	auipc	a0,0x8
    8020048c:	bd850513          	addi	a0,a0,-1064 # 80208060 <rodata_start+0x60>
    80200490:	51c000ef          	jal	802009ac <panic>
    80200494:	fb843783          	ld	a5,-72(s0)
    80200498:	fe043703          	ld	a4,-32(s0)
    8020049c:	0007069b          	sext.w	a3,a4
    802004a0:	6705                	lui	a4,0x1
    802004a2:	863e                	mv	a2,a5
    802004a4:	4581                	li	a1,0
    802004a6:	fa843503          	ld	a0,-88(s0)
    802004aa:	2e5040ef          	jal	80204f8e <readi>
    802004ae:	fe043703          	ld	a4,-32(s0)
    802004b2:	6785                	lui	a5,0x1
    802004b4:	97ba                	add	a5,a5,a4
    802004b6:	fd043703          	ld	a4,-48(s0)
    802004ba:	02f77f63          	bgeu	a4,a5,802004f8 <bin_loader+0xd4>
    802004be:	fd043703          	ld	a4,-48(s0)
    802004c2:	fe043783          	ld	a5,-32(s0)
    802004c6:	40f707b3          	sub	a5,a4,a5
    802004ca:	fb843703          	ld	a4,-72(s0)
    802004ce:	00f706b3          	add	a3,a4,a5
    802004d2:	fe043783          	ld	a5,-32(s0)
    802004d6:	0007871b          	sext.w	a4,a5
    802004da:	fd043783          	ld	a5,-48(s0)
    802004de:	2781                	sext.w	a5,a5
    802004e0:	40f707bb          	subw	a5,a4,a5
    802004e4:	0007871b          	sext.w	a4,a5
    802004e8:	6785                	lui	a5,0x1
    802004ea:	9fb9                	addw	a5,a5,a4
    802004ec:	2781                	sext.w	a5,a5
    802004ee:	863e                	mv	a2,a5
    802004f0:	4581                	li	a1,0
    802004f2:	8536                	mv	a0,a3
    802004f4:	534010ef          	jal	80201a28 <memset>
    802004f8:	fa043783          	ld	a5,-96(s0)
    802004fc:	679c                	ld	a5,8(a5)
    802004fe:	fb843683          	ld	a3,-72(s0)
    80200502:	4779                	li	a4,30
    80200504:	6605                	lui	a2,0x1
    80200506:	fe843583          	ld	a1,-24(s0)
    8020050a:	853e                	mv	a0,a5
    8020050c:	3a9020ef          	jal	802030b4 <mappages>
    80200510:	87aa                	mv	a5,a0
    80200512:	c799                	beqz	a5,80200520 <bin_loader+0xfc>
    80200514:	00008517          	auipc	a0,0x8
    80200518:	b6c50513          	addi	a0,a0,-1172 # 80208080 <rodata_start+0x80>
    8020051c:	490000ef          	jal	802009ac <panic>
    80200520:	fe843703          	ld	a4,-24(s0)
    80200524:	6785                	lui	a5,0x1
    80200526:	97ba                	add	a5,a5,a4
    80200528:	fef43423          	sd	a5,-24(s0)
    8020052c:	fe043703          	ld	a4,-32(s0)
    80200530:	6785                	lui	a5,0x1
    80200532:	97ba                	add	a5,a5,a4
    80200534:	fef43023          	sd	a5,-32(s0)
    80200538:	fe843703          	ld	a4,-24(s0)
    8020053c:	fc043783          	ld	a5,-64(s0)
    80200540:	f2f76de3          	bltu	a4,a5,8020047a <bin_loader+0x56>
    80200544:	fc043703          	ld	a4,-64(s0)
    80200548:	6785                	lui	a5,0x1
    8020054a:	973e                	add	a4,a4,a5
    8020054c:	fa043783          	ld	a5,-96(s0)
    80200550:	ef98                	sd	a4,24(a5)
    80200552:	fa043783          	ld	a5,-96(s0)
    80200556:	6f9c                	ld	a5,24(a5)
    80200558:	fcf43c23          	sd	a5,-40(s0)
    8020055c:	a8b1                	j	802005b8 <bin_loader+0x194>
    8020055e:	2bf020ef          	jal	8020301c <kalloc>
    80200562:	faa43c23          	sd	a0,-72(s0)
    80200566:	fb843783          	ld	a5,-72(s0)
    8020056a:	e799                	bnez	a5,80200578 <bin_loader+0x154>
    8020056c:	00008517          	auipc	a0,0x8
    80200570:	b6c50513          	addi	a0,a0,-1172 # 802080d8 <rodata_start+0xd8>
    80200574:	438000ef          	jal	802009ac <panic>
    80200578:	6605                	lui	a2,0x1
    8020057a:	4581                	li	a1,0
    8020057c:	fb843503          	ld	a0,-72(s0)
    80200580:	4a8010ef          	jal	80201a28 <memset>
    80200584:	fa043783          	ld	a5,-96(s0)
    80200588:	679c                	ld	a5,8(a5)
    8020058a:	fb843683          	ld	a3,-72(s0)
    8020058e:	4759                	li	a4,22
    80200590:	6605                	lui	a2,0x1
    80200592:	fd843583          	ld	a1,-40(s0)
    80200596:	853e                	mv	a0,a5
    80200598:	31d020ef          	jal	802030b4 <mappages>
    8020059c:	87aa                	mv	a5,a0
    8020059e:	c799                	beqz	a5,802005ac <bin_loader+0x188>
    802005a0:	00008517          	auipc	a0,0x8
    802005a4:	b5050513          	addi	a0,a0,-1200 # 802080f0 <rodata_start+0xf0>
    802005a8:	404000ef          	jal	802009ac <panic>
    802005ac:	fd843703          	ld	a4,-40(s0)
    802005b0:	6785                	lui	a5,0x1
    802005b2:	97ba                	add	a5,a5,a4
    802005b4:	fcf43c23          	sd	a5,-40(s0)
    802005b8:	fa043783          	ld	a5,-96(s0)
    802005bc:	6f98                	ld	a4,24(a5)
    802005be:	6785                	lui	a5,0x1
    802005c0:	97ba                	add	a5,a5,a4
    802005c2:	fd843703          	ld	a4,-40(s0)
    802005c6:	f8f76ce3          	bltu	a4,a5,8020055e <bin_loader+0x13a>
    802005ca:	fa043783          	ld	a5,-96(s0)
    802005ce:	6f94                	ld	a3,24(a5)
    802005d0:	fa043783          	ld	a5,-96(s0)
    802005d4:	739c                	ld	a5,32(a5)
    802005d6:	6705                	lui	a4,0x1
    802005d8:	9736                	add	a4,a4,a3
    802005da:	eb98                	sd	a4,16(a5)
    802005dc:	fa043783          	ld	a5,-96(s0)
    802005e0:	739c                	ld	a5,32(a5)
    802005e2:	fc843703          	ld	a4,-56(s0)
    802005e6:	10e7b423          	sd	a4,264(a5) # 1108 <n+0x10e8>
    802005ea:	fa043783          	ld	a5,-96(s0)
    802005ee:	6f98                	ld	a4,24(a5)
    802005f0:	6789                	lui	a5,0x2
    802005f2:	17f9                	addi	a5,a5,-2 # 1ffe <n+0x1fde>
    802005f4:	97ba                	add	a5,a5,a4
    802005f6:	00c7d713          	srli	a4,a5,0xc
    802005fa:	fa043783          	ld	a5,-96(s0)
    802005fe:	efd8                	sd	a4,152(a5)
    80200600:	fa043783          	ld	a5,-96(s0)
    80200604:	470d                	li	a4,3
    80200606:	c398                	sw	a4,0(a5)
    80200608:	4781                	li	a5,0
    8020060a:	853e                	mv	a0,a5
    8020060c:	60e6                	ld	ra,88(sp)
    8020060e:	6446                	ld	s0,80(sp)
    80200610:	6125                	addi	sp,sp,96
    80200612:	8082                	ret

0000000080200614 <load_init_app>:
    80200614:	7179                	addi	sp,sp,-48
    80200616:	f406                	sd	ra,40(sp)
    80200618:	f022                	sd	s0,32(sp)
    8020061a:	1800                	addi	s0,sp,48
    8020061c:	68d010ef          	jal	802024a8 <allocate_proc>
    80200620:	fea43423          	sd	a0,-24(s0)
    80200624:	fe843503          	ld	a0,-24(s0)
    80200628:	77d010ef          	jal	802025a4 <init_stdio>
    8020062c:	00009517          	auipc	a0,0x9
    80200630:	a1550513          	addi	a0,a0,-1515 # 80209041 <INIT_PROC>
    80200634:	6bf040ef          	jal	802054f2 <namei>
    80200638:	fea43023          	sd	a0,-32(s0)
    8020063c:	fe043783          	ld	a5,-32(s0)
    80200640:	eb89                	bnez	a5,80200652 <load_init_app+0x3e>
    80200642:	00008517          	auipc	a0,0x8
    80200646:	ac650513          	addi	a0,a0,-1338 # 80208108 <rodata_start+0x108>
    8020064a:	359000ef          	jal	802011a2 <printk>
    8020064e:	57fd                	li	a5,-1
    80200650:	a8b9                	j	802006ae <load_init_app+0x9a>
    80200652:	00009597          	auipc	a1,0x9
    80200656:	9ef58593          	addi	a1,a1,-1553 # 80209041 <INIT_PROC>
    8020065a:	00008517          	auipc	a0,0x8
    8020065e:	ac650513          	addi	a0,a0,-1338 # 80208120 <rodata_start+0x120>
    80200662:	341000ef          	jal	802011a2 <printk>
    80200666:	fe843583          	ld	a1,-24(s0)
    8020066a:	fe043503          	ld	a0,-32(s0)
    8020066e:	db7ff0ef          	jal	80200424 <bin_loader>
    80200672:	fe043503          	ld	a0,-32(s0)
    80200676:	68e040ef          	jal	80204d04 <iput>
    8020067a:	00009797          	auipc	a5,0x9
    8020067e:	9c778793          	addi	a5,a5,-1593 # 80209041 <INIT_PROC>
    80200682:	fcf43823          	sd	a5,-48(s0)
    80200686:	fc043c23          	sd	zero,-40(s0)
    8020068a:	fd040793          	addi	a5,s0,-48
    8020068e:	85be                	mv	a1,a5
    80200690:	fe843503          	ld	a0,-24(s0)
    80200694:	29a020ef          	jal	8020292e <push_argv>
    80200698:	87aa                	mv	a5,a0
    8020069a:	873e                	mv	a4,a5
    8020069c:	fe843783          	ld	a5,-24(s0)
    802006a0:	739c                	ld	a5,32(a5)
    802006a2:	ebb8                	sd	a4,80(a5)
    802006a4:	fe843503          	ld	a0,-24(s0)
    802006a8:	7d5010ef          	jal	8020267c <add_task>
    802006ac:	4781                	li	a5,0
    802006ae:	853e                	mv	a0,a5
    802006b0:	70a2                	ld	ra,40(sp)
    802006b2:	7402                	ld	s0,32(sp)
    802006b4:	6145                	addi	sp,sp,48
    802006b6:	8082                	ret

00000000802006b8 <clear_bss>:
    802006b8:	1101                	addi	sp,sp,-32
    802006ba:	ec06                	sd	ra,24(sp)
    802006bc:	e822                	sd	s0,16(sp)
    802006be:	1000                	addi	s0,sp,32
    802006c0:	00498617          	auipc	a2,0x498
    802006c4:	94060613          	addi	a2,a2,-1728 # 80698000 <bss_end>
    802006c8:	00021597          	auipc	a1,0x21
    802006cc:	93858593          	addi	a1,a1,-1736 # 80221000 <names>
    802006d0:	00008517          	auipc	a0,0x8
    802006d4:	a7050513          	addi	a0,a0,-1424 # 80208140 <rodata_start+0x140>
    802006d8:	2cb000ef          	jal	802011a2 <printk>
    802006dc:	00008517          	auipc	a0,0x8
    802006e0:	a9c50513          	addi	a0,a0,-1380 # 80208178 <rodata_start+0x178>
    802006e4:	2bf000ef          	jal	802011a2 <printk>
    802006e8:	00021797          	auipc	a5,0x21
    802006ec:	91878793          	addi	a5,a5,-1768 # 80221000 <names>
    802006f0:	fef43423          	sd	a5,-24(s0)
    802006f4:	00498797          	auipc	a5,0x498
    802006f8:	90c78793          	addi	a5,a5,-1780 # 80698000 <bss_end>
    802006fc:	fef43023          	sd	a5,-32(s0)
    80200700:	a811                	j	80200714 <clear_bss+0x5c>
    80200702:	fe843783          	ld	a5,-24(s0)
    80200706:	00078023          	sb	zero,0(a5)
    8020070a:	fe843783          	ld	a5,-24(s0)
    8020070e:	0785                	addi	a5,a5,1
    80200710:	fef43423          	sd	a5,-24(s0)
    80200714:	fe843703          	ld	a4,-24(s0)
    80200718:	fe043783          	ld	a5,-32(s0)
    8020071c:	fef763e3          	bltu	a4,a5,80200702 <clear_bss+0x4a>
    80200720:	0001                	nop
    80200722:	0001                	nop
    80200724:	60e2                	ld	ra,24(sp)
    80200726:	6442                	ld	s0,16(sp)
    80200728:	6105                	addi	sp,sp,32
    8020072a:	8082                	ret

000000008020072c <main>:
    8020072c:	1141                	addi	sp,sp,-16
    8020072e:	e406                	sd	ra,8(sp)
    80200730:	e022                	sd	s0,0(sp)
    80200732:	0800                	addi	s0,sp,16
    80200734:	f85ff0ef          	jal	802006b8 <clear_bss>
    80200738:	449010ef          	jal	80202380 <proc_init>
    8020073c:	029020ef          	jal	80202f64 <kernel_init>
    80200740:	363020ef          	jal	802032a2 <kvm_init>
    80200744:	6a9000ef          	jal	802015ec <trap_init>
    80200748:	00008517          	auipc	a0,0x8
    8020074c:	a5050513          	addi	a0,a0,-1456 # 80208198 <rodata_start+0x198>
    80200750:	253000ef          	jal	802011a2 <printk>
    80200754:	67b040ef          	jal	802055ce <plicinit>
    80200758:	00008517          	auipc	a0,0x8
    8020075c:	a5050513          	addi	a0,a0,-1456 # 802081a8 <rodata_start+0x1a8>
    80200760:	243000ef          	jal	802011a2 <printk>
    80200764:	7b9040ef          	jal	8020571c <virtio_disk_init>
    80200768:	00008517          	auipc	a0,0x8
    8020076c:	a5050513          	addi	a0,a0,-1456 # 802081b8 <rodata_start+0x1b8>
    80200770:	233000ef          	jal	802011a2 <printk>
    80200774:	6c4030ef          	jal	80203e38 <binit>
    80200778:	00008517          	auipc	a0,0x8
    8020077c:	a5050513          	addi	a0,a0,-1456 # 802081c8 <rodata_start+0x1c8>
    80200780:	223000ef          	jal	802011a2 <printk>
    80200784:	08e040ef          	jal	80204812 <fsinit>
    80200788:	00008517          	auipc	a0,0x8
    8020078c:	a5050513          	addi	a0,a0,-1456 # 802081d8 <rodata_start+0x1d8>
    80200790:	213000ef          	jal	802011a2 <printk>
    80200794:	72c020ef          	jal	80202ec0 <timer_init>
    80200798:	e7dff0ef          	jal	80200614 <load_init_app>
    8020079c:	30d030ef          	jal	802042a8 <show_all_files>
    802007a0:	725010ef          	jal	802026c4 <scheduler>
    802007a4:	00008517          	auipc	a0,0x8
    802007a8:	a4450513          	addi	a0,a0,-1468 # 802081e8 <rodata_start+0x1e8>
    802007ac:	200000ef          	jal	802009ac <panic>
    802007b0:	4781                	li	a5,0
    802007b2:	853e                	mv	a0,a5
    802007b4:	60a2                	ld	ra,8(sp)
    802007b6:	6402                	ld	s0,0(sp)
    802007b8:	0141                	addi	sp,sp,16
    802007ba:	8082                	ret

00000000802007bc <sbi_ecall>:
    802007bc:	7159                	addi	sp,sp,-112
    802007be:	f486                	sd	ra,104(sp)
    802007c0:	f0a2                	sd	s0,96(sp)
    802007c2:	1880                	addi	s0,sp,112
    802007c4:	fca43423          	sd	a0,-56(s0)
    802007c8:	fcb43023          	sd	a1,-64(s0)
    802007cc:	fac43c23          	sd	a2,-72(s0)
    802007d0:	fad43823          	sd	a3,-80(s0)
    802007d4:	fae43423          	sd	a4,-88(s0)
    802007d8:	faf43023          	sd	a5,-96(s0)
    802007dc:	f9043c23          	sd	a6,-104(s0)
    802007e0:	f9143823          	sd	a7,-112(s0)
    802007e4:	fb843503          	ld	a0,-72(s0)
    802007e8:	fb043583          	ld	a1,-80(s0)
    802007ec:	fa843603          	ld	a2,-88(s0)
    802007f0:	fa043683          	ld	a3,-96(s0)
    802007f4:	f9843703          	ld	a4,-104(s0)
    802007f8:	f9043783          	ld	a5,-112(s0)
    802007fc:	fc043803          	ld	a6,-64(s0)
    80200800:	fc843883          	ld	a7,-56(s0)
    80200804:	00000073          	ecall
    80200808:	87aa                	mv	a5,a0
    8020080a:	fcf43823          	sd	a5,-48(s0)
    8020080e:	87ae                	mv	a5,a1
    80200810:	fcf43c23          	sd	a5,-40(s0)
    80200814:	fd043783          	ld	a5,-48(s0)
    80200818:	fef43023          	sd	a5,-32(s0)
    8020081c:	fd843783          	ld	a5,-40(s0)
    80200820:	fef43423          	sd	a5,-24(s0)
    80200824:	fe043703          	ld	a4,-32(s0)
    80200828:	fe843783          	ld	a5,-24(s0)
    8020082c:	833a                	mv	t1,a4
    8020082e:	83be                	mv	t2,a5
    80200830:	871a                	mv	a4,t1
    80200832:	879e                	mv	a5,t2
    80200834:	853a                	mv	a0,a4
    80200836:	85be                	mv	a1,a5
    80200838:	70a6                	ld	ra,104(sp)
    8020083a:	7406                	ld	s0,96(sp)
    8020083c:	6165                	addi	sp,sp,112
    8020083e:	8082                	ret

0000000080200840 <sbi_set_timer>:
    80200840:	1101                	addi	sp,sp,-32
    80200842:	ec06                	sd	ra,24(sp)
    80200844:	e822                	sd	s0,16(sp)
    80200846:	1000                	addi	s0,sp,32
    80200848:	fea43423          	sd	a0,-24(s0)
    8020084c:	4881                	li	a7,0
    8020084e:	4801                	li	a6,0
    80200850:	4781                	li	a5,0
    80200852:	4701                	li	a4,0
    80200854:	4681                	li	a3,0
    80200856:	fe843603          	ld	a2,-24(s0)
    8020085a:	4581                	li	a1,0
    8020085c:	54495537          	lui	a0,0x54495
    80200860:	d4550513          	addi	a0,a0,-699 # 54494d45 <n+0x54494d25>
    80200864:	f59ff0ef          	jal	802007bc <sbi_ecall>
    80200868:	0001                	nop
    8020086a:	60e2                	ld	ra,24(sp)
    8020086c:	6442                	ld	s0,16(sp)
    8020086e:	6105                	addi	sp,sp,32
    80200870:	8082                	ret

0000000080200872 <sbi_console_putchar>:
    80200872:	1101                	addi	sp,sp,-32
    80200874:	ec06                	sd	ra,24(sp)
    80200876:	e822                	sd	s0,16(sp)
    80200878:	1000                	addi	s0,sp,32
    8020087a:	87aa                	mv	a5,a0
    8020087c:	fef407a3          	sb	a5,-17(s0)
    80200880:	fef40603          	lb	a2,-17(s0)
    80200884:	4881                	li	a7,0
    80200886:	4801                	li	a6,0
    80200888:	4781                	li	a5,0
    8020088a:	4701                	li	a4,0
    8020088c:	4681                	li	a3,0
    8020088e:	4581                	li	a1,0
    80200890:	4505                	li	a0,1
    80200892:	f2bff0ef          	jal	802007bc <sbi_ecall>
    80200896:	0001                	nop
    80200898:	60e2                	ld	ra,24(sp)
    8020089a:	6442                	ld	s0,16(sp)
    8020089c:	6105                	addi	sp,sp,32
    8020089e:	8082                	ret

00000000802008a0 <sbi_shut_down>:
    802008a0:	1101                	addi	sp,sp,-32
    802008a2:	ec06                	sd	ra,24(sp)
    802008a4:	e822                	sd	s0,16(sp)
    802008a6:	1000                	addi	s0,sp,32
    802008a8:	fea43423          	sd	a0,-24(s0)
    802008ac:	4881                	li	a7,0
    802008ae:	4801                	li	a6,0
    802008b0:	4781                	li	a5,0
    802008b2:	4701                	li	a4,0
    802008b4:	fe843683          	ld	a3,-24(s0)
    802008b8:	4601                	li	a2,0
    802008ba:	4581                	li	a1,0
    802008bc:	53525537          	lui	a0,0x53525
    802008c0:	35450513          	addi	a0,a0,852 # 53525354 <n+0x53525334>
    802008c4:	ef9ff0ef          	jal	802007bc <sbi_ecall>
    802008c8:	0001                	nop
    802008ca:	60e2                	ld	ra,24(sp)
    802008cc:	6442                	ld	s0,16(sp)
    802008ce:	6105                	addi	sp,sp,32
    802008d0:	8082                	ret

00000000802008d2 <sbi_get_sbi_spec_version>:
    802008d2:	1101                	addi	sp,sp,-32
    802008d4:	ec06                	sd	ra,24(sp)
    802008d6:	e822                	sd	s0,16(sp)
    802008d8:	1000                	addi	s0,sp,32
    802008da:	4881                	li	a7,0
    802008dc:	4801                	li	a6,0
    802008de:	4781                	li	a5,0
    802008e0:	4701                	li	a4,0
    802008e2:	4681                	li	a3,0
    802008e4:	4601                	li	a2,0
    802008e6:	4581                	li	a1,0
    802008e8:	4541                	li	a0,16
    802008ea:	ed3ff0ef          	jal	802007bc <sbi_ecall>
    802008ee:	872a                	mv	a4,a0
    802008f0:	87ae                	mv	a5,a1
    802008f2:	fee43023          	sd	a4,-32(s0)
    802008f6:	fef43423          	sd	a5,-24(s0)
    802008fa:	fe843783          	ld	a5,-24(s0)
    802008fe:	85be                	mv	a1,a5
    80200900:	00008517          	auipc	a0,0x8
    80200904:	90050513          	addi	a0,a0,-1792 # 80208200 <rodata_start+0x200>
    80200908:	09b000ef          	jal	802011a2 <printk>
    8020090c:	0001                	nop
    8020090e:	60e2                	ld	ra,24(sp)
    80200910:	6442                	ld	s0,16(sp)
    80200912:	6105                	addi	sp,sp,32
    80200914:	8082                	ret

0000000080200916 <sbi_getchar>:
    80200916:	1101                	addi	sp,sp,-32
    80200918:	ec06                	sd	ra,24(sp)
    8020091a:	e822                	sd	s0,16(sp)
    8020091c:	1000                	addi	s0,sp,32
    8020091e:	4881                	li	a7,0
    80200920:	4801                	li	a6,0
    80200922:	4781                	li	a5,0
    80200924:	4701                	li	a4,0
    80200926:	4681                	li	a3,0
    80200928:	4601                	li	a2,0
    8020092a:	4581                	li	a1,0
    8020092c:	4509                	li	a0,2
    8020092e:	e8fff0ef          	jal	802007bc <sbi_ecall>
    80200932:	872a                	mv	a4,a0
    80200934:	87ae                	mv	a5,a1
    80200936:	fee43023          	sd	a4,-32(s0)
    8020093a:	fef43423          	sd	a5,-24(s0)
    8020093e:	fe843783          	ld	a5,-24(s0)
    80200942:	2781                	sext.w	a5,a5
    80200944:	853e                	mv	a0,a5
    80200946:	60e2                	ld	ra,24(sp)
    80200948:	6442                	ld	s0,16(sp)
    8020094a:	6105                	addi	sp,sp,32
    8020094c:	8082                	ret

000000008020094e <print>:
    8020094e:	1101                	addi	sp,sp,-32
    80200950:	ec06                	sd	ra,24(sp)
    80200952:	e822                	sd	s0,16(sp)
    80200954:	1000                	addi	s0,sp,32
    80200956:	fea43423          	sd	a0,-24(s0)
    8020095a:	a821                	j	80200972 <print+0x24>
    8020095c:	fe843783          	ld	a5,-24(s0)
    80200960:	00178713          	addi	a4,a5,1
    80200964:	fee43423          	sd	a4,-24(s0)
    80200968:	00078783          	lb	a5,0(a5)
    8020096c:	853e                	mv	a0,a5
    8020096e:	f05ff0ef          	jal	80200872 <sbi_console_putchar>
    80200972:	fe843783          	ld	a5,-24(s0)
    80200976:	00078783          	lb	a5,0(a5)
    8020097a:	f3ed                	bnez	a5,8020095c <print+0xe>
    8020097c:	0001                	nop
    8020097e:	0001                	nop
    80200980:	60e2                	ld	ra,24(sp)
    80200982:	6442                	ld	s0,16(sp)
    80200984:	6105                	addi	sp,sp,32
    80200986:	8082                	ret

0000000080200988 <println>:
    80200988:	1101                	addi	sp,sp,-32
    8020098a:	ec06                	sd	ra,24(sp)
    8020098c:	e822                	sd	s0,16(sp)
    8020098e:	1000                	addi	s0,sp,32
    80200990:	fea43423          	sd	a0,-24(s0)
    80200994:	fe843503          	ld	a0,-24(s0)
    80200998:	fb7ff0ef          	jal	8020094e <print>
    8020099c:	4529                	li	a0,10
    8020099e:	ed5ff0ef          	jal	80200872 <sbi_console_putchar>
    802009a2:	0001                	nop
    802009a4:	60e2                	ld	ra,24(sp)
    802009a6:	6442                	ld	s0,16(sp)
    802009a8:	6105                	addi	sp,sp,32
    802009aa:	8082                	ret

00000000802009ac <panic>:
    802009ac:	1101                	addi	sp,sp,-32
    802009ae:	ec06                	sd	ra,24(sp)
    802009b0:	e822                	sd	s0,16(sp)
    802009b2:	1000                	addi	s0,sp,32
    802009b4:	fea43423          	sd	a0,-24(s0)
    802009b8:	4529                	li	a0,10
    802009ba:	eb9ff0ef          	jal	80200872 <sbi_console_putchar>
    802009be:	00008517          	auipc	a0,0x8
    802009c2:	85a50513          	addi	a0,a0,-1958 # 80208218 <rodata_start+0x218>
    802009c6:	f89ff0ef          	jal	8020094e <print>
    802009ca:	fe843503          	ld	a0,-24(s0)
    802009ce:	fbbff0ef          	jal	80200988 <println>
    802009d2:	4505                	li	a0,1
    802009d4:	ecdff0ef          	jal	802008a0 <sbi_shut_down>
    802009d8:	0001                	nop
    802009da:	60e2                	ld	ra,24(sp)
    802009dc:	6442                	ld	s0,16(sp)
    802009de:	6105                	addi	sp,sp,32
    802009e0:	8082                	ret

00000000802009e2 <mini_strlen>:
    802009e2:	7179                	addi	sp,sp,-48
    802009e4:	f406                	sd	ra,40(sp)
    802009e6:	f022                	sd	s0,32(sp)
    802009e8:	1800                	addi	s0,sp,48
    802009ea:	fca43c23          	sd	a0,-40(s0)
    802009ee:	fe042623          	sw	zero,-20(s0)
    802009f2:	a031                	j	802009fe <mini_strlen+0x1c>
    802009f4:	fec42783          	lw	a5,-20(s0)
    802009f8:	2785                	addiw	a5,a5,1
    802009fa:	fef42623          	sw	a5,-20(s0)
    802009fe:	fec46783          	lwu	a5,-20(s0)
    80200a02:	fd843703          	ld	a4,-40(s0)
    80200a06:	97ba                	add	a5,a5,a4
    80200a08:	00078783          	lb	a5,0(a5)
    80200a0c:	f7e5                	bnez	a5,802009f4 <mini_strlen+0x12>
    80200a0e:	fec42783          	lw	a5,-20(s0)
    80200a12:	853e                	mv	a0,a5
    80200a14:	70a2                	ld	ra,40(sp)
    80200a16:	7402                	ld	s0,32(sp)
    80200a18:	6145                	addi	sp,sp,48
    80200a1a:	8082                	ret

0000000080200a1c <mini_itoa>:
    80200a1c:	715d                	addi	sp,sp,-80
    80200a1e:	e486                	sd	ra,72(sp)
    80200a20:	e0a2                	sd	s0,64(sp)
    80200a22:	0880                	addi	s0,sp,80
    80200a24:	fca43423          	sd	a0,-56(s0)
    80200a28:	fae43823          	sd	a4,-80(s0)
    80200a2c:	873e                	mv	a4,a5
    80200a2e:	87ae                	mv	a5,a1
    80200a30:	fcf42223          	sw	a5,-60(s0)
    80200a34:	87b2                	mv	a5,a2
    80200a36:	fcf42023          	sw	a5,-64(s0)
    80200a3a:	87b6                	mv	a5,a3
    80200a3c:	faf42e23          	sw	a5,-68(s0)
    80200a40:	87ba                	mv	a5,a4
    80200a42:	faf42c23          	sw	a5,-72(s0)
    80200a46:	fb043783          	ld	a5,-80(s0)
    80200a4a:	fef43423          	sd	a5,-24(s0)
    80200a4e:	fe042223          	sw	zero,-28(s0)
    80200a52:	fc442783          	lw	a5,-60(s0)
    80200a56:	0007871b          	sext.w	a4,a5
    80200a5a:	47c1                	li	a5,16
    80200a5c:	00e7f463          	bgeu	a5,a4,80200a64 <mini_itoa+0x48>
    80200a60:	4781                	li	a5,0
    80200a62:	aaf9                	j	80200c40 <mini_itoa+0x224>
    80200a64:	fc843783          	ld	a5,-56(s0)
    80200a68:	0007df63          	bgez	a5,80200a86 <mini_itoa+0x6a>
    80200a6c:	fbc42783          	lw	a5,-68(s0)
    80200a70:	2781                	sext.w	a5,a5
    80200a72:	eb91                	bnez	a5,80200a86 <mini_itoa+0x6a>
    80200a74:	4785                	li	a5,1
    80200a76:	fef42223          	sw	a5,-28(s0)
    80200a7a:	fc843783          	ld	a5,-56(s0)
    80200a7e:	40f007b3          	neg	a5,a5
    80200a82:	fcf43423          	sd	a5,-56(s0)
    80200a86:	fc042e23          	sw	zero,-36(s0)
    80200a8a:	fbc42783          	lw	a5,-68(s0)
    80200a8e:	2781                	sext.w	a5,a5
    80200a90:	cb91                	beqz	a5,80200aa4 <mini_itoa+0x88>
    80200a92:	fc843703          	ld	a4,-56(s0)
    80200a96:	fc446783          	lwu	a5,-60(s0)
    80200a9a:	02f777b3          	remu	a5,a4,a5
    80200a9e:	fcf42e23          	sw	a5,-36(s0)
    80200aa2:	a809                	j	80200ab4 <mini_itoa+0x98>
    80200aa4:	fc446783          	lwu	a5,-60(s0)
    80200aa8:	fc843703          	ld	a4,-56(s0)
    80200aac:	02f767b3          	rem	a5,a4,a5
    80200ab0:	fcf42e23          	sw	a5,-36(s0)
    80200ab4:	fdc42783          	lw	a5,-36(s0)
    80200ab8:	0007871b          	sext.w	a4,a5
    80200abc:	47a5                	li	a5,9
    80200abe:	00e7cb63          	blt	a5,a4,80200ad4 <mini_itoa+0xb8>
    80200ac2:	fdc42783          	lw	a5,-36(s0)
    80200ac6:	0ff7f793          	zext.b	a5,a5
    80200aca:	0307879b          	addiw	a5,a5,48
    80200ace:	0ff7f713          	zext.b	a4,a5
    80200ad2:	a025                	j	80200afa <mini_itoa+0xde>
    80200ad4:	fc042783          	lw	a5,-64(s0)
    80200ad8:	2781                	sext.w	a5,a5
    80200ada:	c781                	beqz	a5,80200ae2 <mini_itoa+0xc6>
    80200adc:	04100793          	li	a5,65
    80200ae0:	a019                	j	80200ae6 <mini_itoa+0xca>
    80200ae2:	06100793          	li	a5,97
    80200ae6:	fdc42703          	lw	a4,-36(s0)
    80200aea:	0ff77713          	zext.b	a4,a4
    80200aee:	9fb9                	addw	a5,a5,a4
    80200af0:	0ff7f793          	zext.b	a5,a5
    80200af4:	37d9                	addiw	a5,a5,-10
    80200af6:	0ff7f713          	zext.b	a4,a5
    80200afa:	fe843783          	ld	a5,-24(s0)
    80200afe:	00178693          	addi	a3,a5,1
    80200b02:	fed43423          	sd	a3,-24(s0)
    80200b06:	00e78023          	sb	a4,0(a5)
    80200b0a:	fbc42783          	lw	a5,-68(s0)
    80200b0e:	2781                	sext.w	a5,a5
    80200b10:	cb91                	beqz	a5,80200b24 <mini_itoa+0x108>
    80200b12:	fc843703          	ld	a4,-56(s0)
    80200b16:	fc446783          	lwu	a5,-60(s0)
    80200b1a:	02f757b3          	divu	a5,a4,a5
    80200b1e:	fcf43423          	sd	a5,-56(s0)
    80200b22:	a809                	j	80200b34 <mini_itoa+0x118>
    80200b24:	fc446783          	lwu	a5,-60(s0)
    80200b28:	fc843703          	ld	a4,-56(s0)
    80200b2c:	02f747b3          	div	a5,a4,a5
    80200b30:	fcf43423          	sd	a5,-56(s0)
    80200b34:	fc843783          	ld	a5,-56(s0)
    80200b38:	f7b9                	bnez	a5,80200a86 <mini_itoa+0x6a>
    80200b3a:	fe843703          	ld	a4,-24(s0)
    80200b3e:	fb043783          	ld	a5,-80(s0)
    80200b42:	40f707b3          	sub	a5,a4,a5
    80200b46:	fef42023          	sw	a5,-32(s0)
    80200b4a:	a005                	j	80200b6a <mini_itoa+0x14e>
    80200b4c:	fe843783          	ld	a5,-24(s0)
    80200b50:	00178713          	addi	a4,a5,1
    80200b54:	fee43423          	sd	a4,-24(s0)
    80200b58:	03000713          	li	a4,48
    80200b5c:	00e78023          	sb	a4,0(a5)
    80200b60:	fe042783          	lw	a5,-32(s0)
    80200b64:	2785                	addiw	a5,a5,1
    80200b66:	fef42023          	sw	a5,-32(s0)
    80200b6a:	fe042783          	lw	a5,-32(s0)
    80200b6e:	873e                	mv	a4,a5
    80200b70:	fb842783          	lw	a5,-72(s0)
    80200b74:	2701                	sext.w	a4,a4
    80200b76:	2781                	sext.w	a5,a5
    80200b78:	fcf76ae3          	bltu	a4,a5,80200b4c <mini_itoa+0x130>
    80200b7c:	fe442783          	lw	a5,-28(s0)
    80200b80:	2781                	sext.w	a5,a5
    80200b82:	cb99                	beqz	a5,80200b98 <mini_itoa+0x17c>
    80200b84:	fe843783          	ld	a5,-24(s0)
    80200b88:	00178713          	addi	a4,a5,1
    80200b8c:	fee43423          	sd	a4,-24(s0)
    80200b90:	02d00713          	li	a4,45
    80200b94:	00e78023          	sb	a4,0(a5)
    80200b98:	fe843783          	ld	a5,-24(s0)
    80200b9c:	00078023          	sb	zero,0(a5)
    80200ba0:	fe843703          	ld	a4,-24(s0)
    80200ba4:	fb043783          	ld	a5,-80(s0)
    80200ba8:	40f707b3          	sub	a5,a4,a5
    80200bac:	fcf42c23          	sw	a5,-40(s0)
    80200bb0:	fe042023          	sw	zero,-32(s0)
    80200bb4:	a895                	j	80200c28 <mini_itoa+0x20c>
    80200bb6:	fe046783          	lwu	a5,-32(s0)
    80200bba:	fb043703          	ld	a4,-80(s0)
    80200bbe:	97ba                	add	a5,a5,a4
    80200bc0:	0007c783          	lbu	a5,0(a5)
    80200bc4:	fcf40ba3          	sb	a5,-41(s0)
    80200bc8:	fd842783          	lw	a5,-40(s0)
    80200bcc:	873e                	mv	a4,a5
    80200bce:	fe042783          	lw	a5,-32(s0)
    80200bd2:	40f707bb          	subw	a5,a4,a5
    80200bd6:	2781                	sext.w	a5,a5
    80200bd8:	37fd                	addiw	a5,a5,-1
    80200bda:	2781                	sext.w	a5,a5
    80200bdc:	1782                	slli	a5,a5,0x20
    80200bde:	9381                	srli	a5,a5,0x20
    80200be0:	fb043703          	ld	a4,-80(s0)
    80200be4:	973e                	add	a4,a4,a5
    80200be6:	fe046783          	lwu	a5,-32(s0)
    80200bea:	fb043683          	ld	a3,-80(s0)
    80200bee:	97b6                	add	a5,a5,a3
    80200bf0:	00074703          	lbu	a4,0(a4) # 1000 <n+0xfe0>
    80200bf4:	00e78023          	sb	a4,0(a5)
    80200bf8:	fd842783          	lw	a5,-40(s0)
    80200bfc:	873e                	mv	a4,a5
    80200bfe:	fe042783          	lw	a5,-32(s0)
    80200c02:	40f707bb          	subw	a5,a4,a5
    80200c06:	2781                	sext.w	a5,a5
    80200c08:	37fd                	addiw	a5,a5,-1
    80200c0a:	2781                	sext.w	a5,a5
    80200c0c:	1782                	slli	a5,a5,0x20
    80200c0e:	9381                	srli	a5,a5,0x20
    80200c10:	fb043703          	ld	a4,-80(s0)
    80200c14:	97ba                	add	a5,a5,a4
    80200c16:	fd744703          	lbu	a4,-41(s0)
    80200c1a:	00e78023          	sb	a4,0(a5)
    80200c1e:	fe042783          	lw	a5,-32(s0)
    80200c22:	2785                	addiw	a5,a5,1
    80200c24:	fef42023          	sw	a5,-32(s0)
    80200c28:	fd842783          	lw	a5,-40(s0)
    80200c2c:	0017d79b          	srliw	a5,a5,0x1
    80200c30:	2781                	sext.w	a5,a5
    80200c32:	fe042703          	lw	a4,-32(s0)
    80200c36:	2701                	sext.w	a4,a4
    80200c38:	f6f76fe3          	bltu	a4,a5,80200bb6 <mini_itoa+0x19a>
    80200c3c:	fd842783          	lw	a5,-40(s0)
    80200c40:	853e                	mv	a0,a5
    80200c42:	60a6                	ld	ra,72(sp)
    80200c44:	6406                	ld	s0,64(sp)
    80200c46:	6161                	addi	sp,sp,80
    80200c48:	8082                	ret

0000000080200c4a <_putc>:
    80200c4a:	1101                	addi	sp,sp,-32
    80200c4c:	ec06                	sd	ra,24(sp)
    80200c4e:	e822                	sd	s0,16(sp)
    80200c50:	1000                	addi	s0,sp,32
    80200c52:	87aa                	mv	a5,a0
    80200c54:	feb43023          	sd	a1,-32(s0)
    80200c58:	fef42623          	sw	a5,-20(s0)
    80200c5c:	fe043783          	ld	a5,-32(s0)
    80200c60:	6798                	ld	a4,8(a5)
    80200c62:	fe043783          	ld	a5,-32(s0)
    80200c66:	639c                	ld	a5,0(a5)
    80200c68:	40f707b3          	sub	a5,a4,a5
    80200c6c:	2781                	sext.w	a5,a5
    80200c6e:	2785                	addiw	a5,a5,1
    80200c70:	0007871b          	sext.w	a4,a5
    80200c74:	fe043783          	ld	a5,-32(s0)
    80200c78:	4b9c                	lw	a5,16(a5)
    80200c7a:	00f76463          	bltu	a4,a5,80200c82 <_putc+0x38>
    80200c7e:	4781                	li	a5,0
    80200c80:	a02d                	j	80200caa <_putc+0x60>
    80200c82:	fe043783          	ld	a5,-32(s0)
    80200c86:	679c                	ld	a5,8(a5)
    80200c88:	00178693          	addi	a3,a5,1
    80200c8c:	fe043703          	ld	a4,-32(s0)
    80200c90:	e714                	sd	a3,8(a4)
    80200c92:	fec42703          	lw	a4,-20(s0)
    80200c96:	0ff77713          	zext.b	a4,a4
    80200c9a:	00e78023          	sb	a4,0(a5)
    80200c9e:	fe043783          	ld	a5,-32(s0)
    80200ca2:	679c                	ld	a5,8(a5)
    80200ca4:	00078023          	sb	zero,0(a5)
    80200ca8:	4785                	li	a5,1
    80200caa:	853e                	mv	a0,a5
    80200cac:	60e2                	ld	ra,24(sp)
    80200cae:	6442                	ld	s0,16(sp)
    80200cb0:	6105                	addi	sp,sp,32
    80200cb2:	8082                	ret

0000000080200cb4 <_puts>:
    80200cb4:	7139                	addi	sp,sp,-64
    80200cb6:	fc06                	sd	ra,56(sp)
    80200cb8:	f822                	sd	s0,48(sp)
    80200cba:	0080                	addi	s0,sp,64
    80200cbc:	fca43c23          	sd	a0,-40(s0)
    80200cc0:	87ae                	mv	a5,a1
    80200cc2:	fcc43423          	sd	a2,-56(s0)
    80200cc6:	fcf42a23          	sw	a5,-44(s0)
    80200cca:	fc843783          	ld	a5,-56(s0)
    80200cce:	4b9c                	lw	a5,16(a5)
    80200cd0:	02079713          	slli	a4,a5,0x20
    80200cd4:	9301                	srli	a4,a4,0x20
    80200cd6:	fc843783          	ld	a5,-56(s0)
    80200cda:	6794                	ld	a3,8(a5)
    80200cdc:	fc843783          	ld	a5,-56(s0)
    80200ce0:	639c                	ld	a5,0(a5)
    80200ce2:	40f687b3          	sub	a5,a3,a5
    80200ce6:	8f1d                	sub	a4,a4,a5
    80200ce8:	fd446783          	lwu	a5,-44(s0)
    80200cec:	02e7c463          	blt	a5,a4,80200d14 <_puts+0x60>
    80200cf0:	fc843783          	ld	a5,-56(s0)
    80200cf4:	4b98                	lw	a4,16(a5)
    80200cf6:	fc843783          	ld	a5,-56(s0)
    80200cfa:	6794                	ld	a3,8(a5)
    80200cfc:	fc843783          	ld	a5,-56(s0)
    80200d00:	639c                	ld	a5,0(a5)
    80200d02:	40f687b3          	sub	a5,a3,a5
    80200d06:	2781                	sext.w	a5,a5
    80200d08:	40f707bb          	subw	a5,a4,a5
    80200d0c:	2781                	sext.w	a5,a5
    80200d0e:	37fd                	addiw	a5,a5,-1
    80200d10:	fcf42a23          	sw	a5,-44(s0)
    80200d14:	fe042623          	sw	zero,-20(s0)
    80200d18:	a03d                	j	80200d46 <_puts+0x92>
    80200d1a:	fec46783          	lwu	a5,-20(s0)
    80200d1e:	fd843703          	ld	a4,-40(s0)
    80200d22:	973e                	add	a4,a4,a5
    80200d24:	fc843783          	ld	a5,-56(s0)
    80200d28:	679c                	ld	a5,8(a5)
    80200d2a:	00178613          	addi	a2,a5,1
    80200d2e:	fc843683          	ld	a3,-56(s0)
    80200d32:	e690                	sd	a2,8(a3)
    80200d34:	00074703          	lbu	a4,0(a4)
    80200d38:	00e78023          	sb	a4,0(a5)
    80200d3c:	fec42783          	lw	a5,-20(s0)
    80200d40:	2785                	addiw	a5,a5,1
    80200d42:	fef42623          	sw	a5,-20(s0)
    80200d46:	fec42783          	lw	a5,-20(s0)
    80200d4a:	873e                	mv	a4,a5
    80200d4c:	fd442783          	lw	a5,-44(s0)
    80200d50:	2701                	sext.w	a4,a4
    80200d52:	2781                	sext.w	a5,a5
    80200d54:	fcf763e3          	bltu	a4,a5,80200d1a <_puts+0x66>
    80200d58:	fc843783          	ld	a5,-56(s0)
    80200d5c:	679c                	ld	a5,8(a5)
    80200d5e:	00078023          	sb	zero,0(a5)
    80200d62:	fd442783          	lw	a5,-44(s0)
    80200d66:	853e                	mv	a0,a5
    80200d68:	70e2                	ld	ra,56(sp)
    80200d6a:	7442                	ld	s0,48(sp)
    80200d6c:	6121                	addi	sp,sp,64
    80200d6e:	8082                	ret

0000000080200d70 <mini_vsnprintf>:
    80200d70:	7119                	addi	sp,sp,-128
    80200d72:	fc86                	sd	ra,120(sp)
    80200d74:	f8a2                	sd	s0,112(sp)
    80200d76:	0100                	addi	s0,sp,128
    80200d78:	f8a43c23          	sd	a0,-104(s0)
    80200d7c:	87ae                	mv	a5,a1
    80200d7e:	f8c43423          	sd	a2,-120(s0)
    80200d82:	f8d43023          	sd	a3,-128(s0)
    80200d86:	f8f42a23          	sw	a5,-108(s0)
    80200d8a:	f9843783          	ld	a5,-104(s0)
    80200d8e:	fcf43023          	sd	a5,-64(s0)
    80200d92:	f9843783          	ld	a5,-104(s0)
    80200d96:	fcf43423          	sd	a5,-56(s0)
    80200d9a:	f9442783          	lw	a5,-108(s0)
    80200d9e:	fcf42823          	sw	a5,-48(s0)
    80200da2:	a4f1                	j	8020106e <mini_vsnprintf+0x2fe>
    80200da4:	fc843703          	ld	a4,-56(s0)
    80200da8:	fc043783          	ld	a5,-64(s0)
    80200dac:	40f707b3          	sub	a5,a4,a5
    80200db0:	2781                	sext.w	a5,a5
    80200db2:	2785                	addiw	a5,a5,1
    80200db4:	0007871b          	sext.w	a4,a5
    80200db8:	fd042783          	lw	a5,-48(s0)
    80200dbc:	2cf77a63          	bgeu	a4,a5,80201090 <mini_vsnprintf+0x320>
    80200dc0:	fef44783          	lbu	a5,-17(s0)
    80200dc4:	0ff7f713          	zext.b	a4,a5
    80200dc8:	02500793          	li	a5,37
    80200dcc:	00f70c63          	beq	a4,a5,80200de4 <mini_vsnprintf+0x74>
    80200dd0:	fef44783          	lbu	a5,-17(s0)
    80200dd4:	2781                	sext.w	a5,a5
    80200dd6:	fc040713          	addi	a4,s0,-64
    80200dda:	85ba                	mv	a1,a4
    80200ddc:	853e                	mv	a0,a5
    80200dde:	e6dff0ef          	jal	80200c4a <_putc>
    80200de2:	a471                	j	8020106e <mini_vsnprintf+0x2fe>
    80200de4:	fe040723          	sb	zero,-18(s0)
    80200de8:	fe042423          	sw	zero,-24(s0)
    80200dec:	f8843783          	ld	a5,-120(s0)
    80200df0:	00178713          	addi	a4,a5,1
    80200df4:	f8e43423          	sd	a4,-120(s0)
    80200df8:	0007c783          	lbu	a5,0(a5)
    80200dfc:	fef407a3          	sb	a5,-17(s0)
    80200e00:	fef44783          	lbu	a5,-17(s0)
    80200e04:	0ff7f713          	zext.b	a4,a5
    80200e08:	03000793          	li	a5,48
    80200e0c:	06f71c63          	bne	a4,a5,80200e84 <mini_vsnprintf+0x114>
    80200e10:	a899                	j	80200e66 <mini_vsnprintf+0xf6>
    80200e12:	fef44783          	lbu	a5,-17(s0)
    80200e16:	0ff7f793          	zext.b	a5,a5
    80200e1a:	26078d63          	beqz	a5,80201094 <mini_vsnprintf+0x324>
    80200e1e:	fef44783          	lbu	a5,-17(s0)
    80200e22:	0ff7f713          	zext.b	a4,a5
    80200e26:	02f00793          	li	a5,47
    80200e2a:	04e7fd63          	bgeu	a5,a4,80200e84 <mini_vsnprintf+0x114>
    80200e2e:	fef44783          	lbu	a5,-17(s0)
    80200e32:	0ff7f713          	zext.b	a4,a5
    80200e36:	03900793          	li	a5,57
    80200e3a:	04e7e563          	bltu	a5,a4,80200e84 <mini_vsnprintf+0x114>
    80200e3e:	fee44783          	lbu	a5,-18(s0)
    80200e42:	873e                	mv	a4,a5
    80200e44:	87ba                	mv	a5,a4
    80200e46:	0027979b          	slliw	a5,a5,0x2
    80200e4a:	9fb9                	addw	a5,a5,a4
    80200e4c:	0017979b          	slliw	a5,a5,0x1
    80200e50:	0ff7f793          	zext.b	a5,a5
    80200e54:	fef44703          	lbu	a4,-17(s0)
    80200e58:	9fb9                	addw	a5,a5,a4
    80200e5a:	0ff7f793          	zext.b	a5,a5
    80200e5e:	fd07879b          	addiw	a5,a5,-48
    80200e62:	fef40723          	sb	a5,-18(s0)
    80200e66:	f8843783          	ld	a5,-120(s0)
    80200e6a:	00178713          	addi	a4,a5,1
    80200e6e:	f8e43423          	sd	a4,-120(s0)
    80200e72:	0007c783          	lbu	a5,0(a5)
    80200e76:	fef407a3          	sb	a5,-17(s0)
    80200e7a:	fef44783          	lbu	a5,-17(s0)
    80200e7e:	0ff7f793          	zext.b	a5,a5
    80200e82:	fbc1                	bnez	a5,80200e12 <mini_vsnprintf+0xa2>
    80200e84:	fef44783          	lbu	a5,-17(s0)
    80200e88:	0ff7f713          	zext.b	a4,a5
    80200e8c:	06c00793          	li	a5,108
    80200e90:	00f71f63          	bne	a4,a5,80200eae <mini_vsnprintf+0x13e>
    80200e94:	4785                	li	a5,1
    80200e96:	fef42423          	sw	a5,-24(s0)
    80200e9a:	f8843783          	ld	a5,-120(s0)
    80200e9e:	00178713          	addi	a4,a5,1
    80200ea2:	f8e43423          	sd	a4,-120(s0)
    80200ea6:	0007c783          	lbu	a5,0(a5)
    80200eaa:	fef407a3          	sb	a5,-17(s0)
    80200eae:	fef44783          	lbu	a5,-17(s0)
    80200eb2:	2781                	sext.w	a5,a5
    80200eb4:	1e078263          	beqz	a5,80201098 <mini_vsnprintf+0x328>
    80200eb8:	1a07c163          	bltz	a5,8020105a <mini_vsnprintf+0x2ea>
    80200ebc:	07800713          	li	a4,120
    80200ec0:	18f74d63          	blt	a4,a5,8020105a <mini_vsnprintf+0x2ea>
    80200ec4:	05800713          	li	a4,88
    80200ec8:	18e7c963          	blt	a5,a4,8020105a <mini_vsnprintf+0x2ea>
    80200ecc:	fa87879b          	addiw	a5,a5,-88
    80200ed0:	86be                	mv	a3,a5
    80200ed2:	0006871b          	sext.w	a4,a3
    80200ed6:	02000793          	li	a5,32
    80200eda:	18e7e063          	bltu	a5,a4,8020105a <mini_vsnprintf+0x2ea>
    80200ede:	02069793          	slli	a5,a3,0x20
    80200ee2:	9381                	srli	a5,a5,0x20
    80200ee4:	00279713          	slli	a4,a5,0x2
    80200ee8:	00007797          	auipc	a5,0x7
    80200eec:	33c78793          	addi	a5,a5,828 # 80208224 <rodata_start+0x224>
    80200ef0:	97ba                	add	a5,a5,a4
    80200ef2:	439c                	lw	a5,0(a5)
    80200ef4:	0007871b          	sext.w	a4,a5
    80200ef8:	00007797          	auipc	a5,0x7
    80200efc:	32c78793          	addi	a5,a5,812 # 80208224 <rodata_start+0x224>
    80200f00:	97ba                	add	a5,a5,a4
    80200f02:	8782                	jr	a5
    80200f04:	4785                	li	a5,1
    80200f06:	fef42423          	sw	a5,-24(s0)
    80200f0a:	a295                	j	8020106e <mini_vsnprintf+0x2fe>
    80200f0c:	fe842783          	lw	a5,-24(s0)
    80200f10:	2781                	sext.w	a5,a5
    80200f12:	ef81                	bnez	a5,80200f2a <mini_vsnprintf+0x1ba>
    80200f14:	f8043783          	ld	a5,-128(s0)
    80200f18:	00878713          	addi	a4,a5,8
    80200f1c:	f8e43023          	sd	a4,-128(s0)
    80200f20:	439c                	lw	a5,0(a5)
    80200f22:	02079513          	slli	a0,a5,0x20
    80200f26:	9101                	srli	a0,a0,0x20
    80200f28:	a809                	j	80200f3a <mini_vsnprintf+0x1ca>
    80200f2a:	f8043783          	ld	a5,-128(s0)
    80200f2e:	00878713          	addi	a4,a5,8
    80200f32:	f8e43023          	sd	a4,-128(s0)
    80200f36:	639c                	ld	a5,0(a5)
    80200f38:	853e                	mv	a0,a5
    80200f3a:	fef44783          	lbu	a5,-17(s0)
    80200f3e:	0007871b          	sext.w	a4,a5
    80200f42:	07500793          	li	a5,117
    80200f46:	40f707b3          	sub	a5,a4,a5
    80200f4a:	0017b793          	seqz	a5,a5
    80200f4e:	0ff7f793          	zext.b	a5,a5
    80200f52:	0007869b          	sext.w	a3,a5
    80200f56:	fee44783          	lbu	a5,-18(s0)
    80200f5a:	2781                	sext.w	a5,a5
    80200f5c:	fa840713          	addi	a4,s0,-88
    80200f60:	4601                	li	a2,0
    80200f62:	45a9                	li	a1,10
    80200f64:	ab9ff0ef          	jal	80200a1c <mini_itoa>
    80200f68:	87aa                	mv	a5,a0
    80200f6a:	fcf42e23          	sw	a5,-36(s0)
    80200f6e:	fc040693          	addi	a3,s0,-64
    80200f72:	fdc42703          	lw	a4,-36(s0)
    80200f76:	fa840793          	addi	a5,s0,-88
    80200f7a:	8636                	mv	a2,a3
    80200f7c:	85ba                	mv	a1,a4
    80200f7e:	853e                	mv	a0,a5
    80200f80:	d35ff0ef          	jal	80200cb4 <_puts>
    80200f84:	fe042423          	sw	zero,-24(s0)
    80200f88:	a0dd                	j	8020106e <mini_vsnprintf+0x2fe>
    80200f8a:	fe842783          	lw	a5,-24(s0)
    80200f8e:	2781                	sext.w	a5,a5
    80200f90:	ef81                	bnez	a5,80200fa8 <mini_vsnprintf+0x238>
    80200f92:	f8043783          	ld	a5,-128(s0)
    80200f96:	00878713          	addi	a4,a5,8
    80200f9a:	f8e43023          	sd	a4,-128(s0)
    80200f9e:	439c                	lw	a5,0(a5)
    80200fa0:	02079513          	slli	a0,a5,0x20
    80200fa4:	9101                	srli	a0,a0,0x20
    80200fa6:	a809                	j	80200fb8 <mini_vsnprintf+0x248>
    80200fa8:	f8043783          	ld	a5,-128(s0)
    80200fac:	00878713          	addi	a4,a5,8
    80200fb0:	f8e43023          	sd	a4,-128(s0)
    80200fb4:	639c                	ld	a5,0(a5)
    80200fb6:	853e                	mv	a0,a5
    80200fb8:	fef44783          	lbu	a5,-17(s0)
    80200fbc:	0007871b          	sext.w	a4,a5
    80200fc0:	05800793          	li	a5,88
    80200fc4:	40f707b3          	sub	a5,a4,a5
    80200fc8:	0017b793          	seqz	a5,a5
    80200fcc:	0ff7f793          	zext.b	a5,a5
    80200fd0:	0007861b          	sext.w	a2,a5
    80200fd4:	fee44783          	lbu	a5,-18(s0)
    80200fd8:	2781                	sext.w	a5,a5
    80200fda:	fa840713          	addi	a4,s0,-88
    80200fde:	4685                	li	a3,1
    80200fe0:	45c1                	li	a1,16
    80200fe2:	a3bff0ef          	jal	80200a1c <mini_itoa>
    80200fe6:	87aa                	mv	a5,a0
    80200fe8:	fcf42e23          	sw	a5,-36(s0)
    80200fec:	fc040693          	addi	a3,s0,-64
    80200ff0:	fdc42703          	lw	a4,-36(s0)
    80200ff4:	fa840793          	addi	a5,s0,-88
    80200ff8:	8636                	mv	a2,a3
    80200ffa:	85ba                	mv	a1,a4
    80200ffc:	853e                	mv	a0,a5
    80200ffe:	cb7ff0ef          	jal	80200cb4 <_puts>
    80201002:	fe042423          	sw	zero,-24(s0)
    80201006:	a0a5                	j	8020106e <mini_vsnprintf+0x2fe>
    80201008:	f8043783          	ld	a5,-128(s0)
    8020100c:	00878713          	addi	a4,a5,8
    80201010:	f8e43023          	sd	a4,-128(s0)
    80201014:	439c                	lw	a5,0(a5)
    80201016:	0ff7f793          	zext.b	a5,a5
    8020101a:	2781                	sext.w	a5,a5
    8020101c:	fc040713          	addi	a4,s0,-64
    80201020:	85ba                	mv	a1,a4
    80201022:	853e                	mv	a0,a5
    80201024:	c27ff0ef          	jal	80200c4a <_putc>
    80201028:	a099                	j	8020106e <mini_vsnprintf+0x2fe>
    8020102a:	f8043783          	ld	a5,-128(s0)
    8020102e:	00878713          	addi	a4,a5,8
    80201032:	f8e43023          	sd	a4,-128(s0)
    80201036:	639c                	ld	a5,0(a5)
    80201038:	fef43023          	sd	a5,-32(s0)
    8020103c:	fe043503          	ld	a0,-32(s0)
    80201040:	9a3ff0ef          	jal	802009e2 <mini_strlen>
    80201044:	87aa                	mv	a5,a0
    80201046:	873e                	mv	a4,a5
    80201048:	fc040793          	addi	a5,s0,-64
    8020104c:	863e                	mv	a2,a5
    8020104e:	85ba                	mv	a1,a4
    80201050:	fe043503          	ld	a0,-32(s0)
    80201054:	c61ff0ef          	jal	80200cb4 <_puts>
    80201058:	a819                	j	8020106e <mini_vsnprintf+0x2fe>
    8020105a:	fef44783          	lbu	a5,-17(s0)
    8020105e:	2781                	sext.w	a5,a5
    80201060:	fc040713          	addi	a4,s0,-64
    80201064:	85ba                	mv	a1,a4
    80201066:	853e                	mv	a0,a5
    80201068:	be3ff0ef          	jal	80200c4a <_putc>
    8020106c:	0001                	nop
    8020106e:	f8843783          	ld	a5,-120(s0)
    80201072:	00178713          	addi	a4,a5,1
    80201076:	f8e43423          	sd	a4,-120(s0)
    8020107a:	0007c783          	lbu	a5,0(a5)
    8020107e:	fef407a3          	sb	a5,-17(s0)
    80201082:	fef44783          	lbu	a5,-17(s0)
    80201086:	0ff7f793          	zext.b	a5,a5
    8020108a:	d0079de3          	bnez	a5,80200da4 <mini_vsnprintf+0x34>
    8020108e:	a031                	j	8020109a <mini_vsnprintf+0x32a>
    80201090:	0001                	nop
    80201092:	a021                	j	8020109a <mini_vsnprintf+0x32a>
    80201094:	0001                	nop
    80201096:	a011                	j	8020109a <mini_vsnprintf+0x32a>
    80201098:	0001                	nop
    8020109a:	fc843703          	ld	a4,-56(s0)
    8020109e:	fc043783          	ld	a5,-64(s0)
    802010a2:	40f707b3          	sub	a5,a4,a5
    802010a6:	2781                	sext.w	a5,a5
    802010a8:	853e                	mv	a0,a5
    802010aa:	70e6                	ld	ra,120(sp)
    802010ac:	7446                	ld	s0,112(sp)
    802010ae:	6109                	addi	sp,sp,128
    802010b0:	8082                	ret

00000000802010b2 <_vprintk>:
    802010b2:	7129                	addi	sp,sp,-320
    802010b4:	fe06                	sd	ra,312(sp)
    802010b6:	fa22                	sd	s0,304(sp)
    802010b8:	0280                	addi	s0,sp,320
    802010ba:	eca43c23          	sd	a0,-296(s0)
    802010be:	ecb43823          	sd	a1,-304(s0)
    802010c2:	ecc43423          	sd	a2,-312(s0)
    802010c6:	ed043783          	ld	a5,-304(s0)
    802010ca:	fef43023          	sd	a5,-32(s0)
    802010ce:	fe043703          	ld	a4,-32(s0)
    802010d2:	ee040793          	addi	a5,s0,-288
    802010d6:	86ba                	mv	a3,a4
    802010d8:	ed843603          	ld	a2,-296(s0)
    802010dc:	10000593          	li	a1,256
    802010e0:	853e                	mv	a0,a5
    802010e2:	c8fff0ef          	jal	80200d70 <mini_vsnprintf>
    802010e6:	87aa                	mv	a5,a0
    802010e8:	fef42623          	sw	a5,-20(s0)
    802010ec:	fec42783          	lw	a5,-20(s0)
    802010f0:	17c1                	addi	a5,a5,-16
    802010f2:	97a2                	add	a5,a5,s0
    802010f4:	ee078823          	sb	zero,-272(a5)
    802010f8:	ee040713          	addi	a4,s0,-288
    802010fc:	ec843783          	ld	a5,-312(s0)
    80201100:	853a                	mv	a0,a4
    80201102:	9782                	jalr	a5
    80201104:	fec42783          	lw	a5,-20(s0)
    80201108:	853e                	mv	a0,a5
    8020110a:	70f2                	ld	ra,312(sp)
    8020110c:	7452                	ld	s0,304(sp)
    8020110e:	6131                	addi	sp,sp,320
    80201110:	8082                	ret

0000000080201112 <_vprints>:
    80201112:	7129                	addi	sp,sp,-320
    80201114:	fe06                	sd	ra,312(sp)
    80201116:	fa22                	sd	s0,304(sp)
    80201118:	0280                	addi	s0,sp,320
    8020111a:	eca43c23          	sd	a0,-296(s0)
    8020111e:	ecb43823          	sd	a1,-304(s0)
    80201122:	ecc43423          	sd	a2,-312(s0)
    80201126:	ed043783          	ld	a5,-304(s0)
    8020112a:	fef43023          	sd	a5,-32(s0)
    8020112e:	fe043703          	ld	a4,-32(s0)
    80201132:	ee040793          	addi	a5,s0,-288
    80201136:	86ba                	mv	a3,a4
    80201138:	ed843603          	ld	a2,-296(s0)
    8020113c:	10000593          	li	a1,256
    80201140:	853e                	mv	a0,a5
    80201142:	c2fff0ef          	jal	80200d70 <mini_vsnprintf>
    80201146:	87aa                	mv	a5,a0
    80201148:	fef42623          	sw	a5,-20(s0)
    8020114c:	fec42783          	lw	a5,-20(s0)
    80201150:	17c1                	addi	a5,a5,-16
    80201152:	97a2                	add	a5,a5,s0
    80201154:	ee078823          	sb	zero,-272(a5)
    80201158:	ee040713          	addi	a4,s0,-288
    8020115c:	ec843783          	ld	a5,-312(s0)
    80201160:	853a                	mv	a0,a4
    80201162:	9782                	jalr	a5
    80201164:	fec42783          	lw	a5,-20(s0)
    80201168:	853e                	mv	a0,a5
    8020116a:	70f2                	ld	ra,312(sp)
    8020116c:	7452                	ld	s0,304(sp)
    8020116e:	6131                	addi	sp,sp,320
    80201170:	8082                	ret

0000000080201172 <vprintk>:
    80201172:	1101                	addi	sp,sp,-32
    80201174:	ec06                	sd	ra,24(sp)
    80201176:	e822                	sd	s0,16(sp)
    80201178:	1000                	addi	s0,sp,32
    8020117a:	fea43423          	sd	a0,-24(s0)
    8020117e:	feb43023          	sd	a1,-32(s0)
    80201182:	fffff617          	auipc	a2,0xfffff
    80201186:	7cc60613          	addi	a2,a2,1996 # 8020094e <print>
    8020118a:	fe043583          	ld	a1,-32(s0)
    8020118e:	fe843503          	ld	a0,-24(s0)
    80201192:	f21ff0ef          	jal	802010b2 <_vprintk>
    80201196:	87aa                	mv	a5,a0
    80201198:	853e                	mv	a0,a5
    8020119a:	60e2                	ld	ra,24(sp)
    8020119c:	6442                	ld	s0,16(sp)
    8020119e:	6105                	addi	sp,sp,32
    802011a0:	8082                	ret

00000000802011a2 <printk>:
    802011a2:	7159                	addi	sp,sp,-112
    802011a4:	f406                	sd	ra,40(sp)
    802011a6:	f022                	sd	s0,32(sp)
    802011a8:	1800                	addi	s0,sp,48
    802011aa:	fca43c23          	sd	a0,-40(s0)
    802011ae:	e40c                	sd	a1,8(s0)
    802011b0:	e810                	sd	a2,16(s0)
    802011b2:	ec14                	sd	a3,24(s0)
    802011b4:	f018                	sd	a4,32(s0)
    802011b6:	f41c                	sd	a5,40(s0)
    802011b8:	03043823          	sd	a6,48(s0)
    802011bc:	03143c23          	sd	a7,56(s0)
    802011c0:	fe042623          	sw	zero,-20(s0)
    802011c4:	04040793          	addi	a5,s0,64
    802011c8:	fcf43823          	sd	a5,-48(s0)
    802011cc:	fd043783          	ld	a5,-48(s0)
    802011d0:	fc878793          	addi	a5,a5,-56
    802011d4:	fef43023          	sd	a5,-32(s0)
    802011d8:	fe043783          	ld	a5,-32(s0)
    802011dc:	85be                	mv	a1,a5
    802011de:	fd843503          	ld	a0,-40(s0)
    802011e2:	f91ff0ef          	jal	80201172 <vprintk>
    802011e6:	87aa                	mv	a5,a0
    802011e8:	fef42623          	sw	a5,-20(s0)
    802011ec:	fec42783          	lw	a5,-20(s0)
    802011f0:	853e                	mv	a0,a5
    802011f2:	70a2                	ld	ra,40(sp)
    802011f4:	7402                	ld	s0,32(sp)
    802011f6:	6165                	addi	sp,sp,112
    802011f8:	8082                	ret

00000000802011fa <_vprintk_port>:
    802011fa:	7129                	addi	sp,sp,-320
    802011fc:	fe06                	sd	ra,312(sp)
    802011fe:	fa22                	sd	s0,304(sp)
    80201200:	0280                	addi	s0,sp,320
    80201202:	eca43c23          	sd	a0,-296(s0)
    80201206:	ecb43823          	sd	a1,-304(s0)
    8020120a:	ecc43423          	sd	a2,-312(s0)
    8020120e:	ed043783          	ld	a5,-304(s0)
    80201212:	fef43023          	sd	a5,-32(s0)
    80201216:	fe043703          	ld	a4,-32(s0)
    8020121a:	ee040793          	addi	a5,s0,-288
    8020121e:	86ba                	mv	a3,a4
    80201220:	ed843603          	ld	a2,-296(s0)
    80201224:	10000593          	li	a1,256
    80201228:	853e                	mv	a0,a5
    8020122a:	b47ff0ef          	jal	80200d70 <mini_vsnprintf>
    8020122e:	87aa                	mv	a5,a0
    80201230:	fef42623          	sw	a5,-20(s0)
    80201234:	fec42783          	lw	a5,-20(s0)
    80201238:	17c1                	addi	a5,a5,-16
    8020123a:	97a2                	add	a5,a5,s0
    8020123c:	ee078823          	sb	zero,-272(a5)
    80201240:	fec42783          	lw	a5,-20(s0)
    80201244:	853e                	mv	a0,a5
    80201246:	70f2                	ld	ra,312(sp)
    80201248:	7452                	ld	s0,304(sp)
    8020124a:	6131                	addi	sp,sp,320
    8020124c:	8082                	ret

000000008020124e <vprintk_port>:
    8020124e:	1101                	addi	sp,sp,-32
    80201250:	ec06                	sd	ra,24(sp)
    80201252:	e822                	sd	s0,16(sp)
    80201254:	1000                	addi	s0,sp,32
    80201256:	fea43423          	sd	a0,-24(s0)
    8020125a:	feb43023          	sd	a1,-32(s0)
    8020125e:	fffff617          	auipc	a2,0xfffff
    80201262:	6f060613          	addi	a2,a2,1776 # 8020094e <print>
    80201266:	fe043583          	ld	a1,-32(s0)
    8020126a:	fe843503          	ld	a0,-24(s0)
    8020126e:	f8dff0ef          	jal	802011fa <_vprintk_port>
    80201272:	87aa                	mv	a5,a0
    80201274:	853e                	mv	a0,a5
    80201276:	60e2                	ld	ra,24(sp)
    80201278:	6442                	ld	s0,16(sp)
    8020127a:	6105                	addi	sp,sp,32
    8020127c:	8082                	ret

000000008020127e <printk_port>:
    8020127e:	7159                	addi	sp,sp,-112
    80201280:	f406                	sd	ra,40(sp)
    80201282:	f022                	sd	s0,32(sp)
    80201284:	1800                	addi	s0,sp,48
    80201286:	fca43c23          	sd	a0,-40(s0)
    8020128a:	e40c                	sd	a1,8(s0)
    8020128c:	e810                	sd	a2,16(s0)
    8020128e:	ec14                	sd	a3,24(s0)
    80201290:	f018                	sd	a4,32(s0)
    80201292:	f41c                	sd	a5,40(s0)
    80201294:	03043823          	sd	a6,48(s0)
    80201298:	03143c23          	sd	a7,56(s0)
    8020129c:	fe042623          	sw	zero,-20(s0)
    802012a0:	04040793          	addi	a5,s0,64
    802012a4:	fcf43823          	sd	a5,-48(s0)
    802012a8:	fd043783          	ld	a5,-48(s0)
    802012ac:	fc878793          	addi	a5,a5,-56
    802012b0:	fef43023          	sd	a5,-32(s0)
    802012b4:	fe043783          	ld	a5,-32(s0)
    802012b8:	85be                	mv	a1,a5
    802012ba:	fd843503          	ld	a0,-40(s0)
    802012be:	f91ff0ef          	jal	8020124e <vprintk_port>
    802012c2:	87aa                	mv	a5,a0
    802012c4:	fef42623          	sw	a5,-20(s0)
    802012c8:	fec42783          	lw	a5,-20(s0)
    802012cc:	853e                	mv	a0,a5
    802012ce:	70a2                	ld	ra,40(sp)
    802012d0:	7402                	ld	s0,32(sp)
    802012d2:	6165                	addi	sp,sp,112
    802012d4:	8082                	ret

00000000802012d6 <r_sstatus>:
    802012d6:	1101                	addi	sp,sp,-32
    802012d8:	ec06                	sd	ra,24(sp)
    802012da:	e822                	sd	s0,16(sp)
    802012dc:	1000                	addi	s0,sp,32
    802012de:	100027f3          	csrr	a5,sstatus
    802012e2:	fef43423          	sd	a5,-24(s0)
    802012e6:	fe843783          	ld	a5,-24(s0)
    802012ea:	853e                	mv	a0,a5
    802012ec:	60e2                	ld	ra,24(sp)
    802012ee:	6442                	ld	s0,16(sp)
    802012f0:	6105                	addi	sp,sp,32
    802012f2:	8082                	ret

00000000802012f4 <w_sstatus>:
    802012f4:	1101                	addi	sp,sp,-32
    802012f6:	ec06                	sd	ra,24(sp)
    802012f8:	e822                	sd	s0,16(sp)
    802012fa:	1000                	addi	s0,sp,32
    802012fc:	fea43423          	sd	a0,-24(s0)
    80201300:	fe843783          	ld	a5,-24(s0)
    80201304:	10079073          	csrw	sstatus,a5
    80201308:	0001                	nop
    8020130a:	60e2                	ld	ra,24(sp)
    8020130c:	6442                	ld	s0,16(sp)
    8020130e:	6105                	addi	sp,sp,32
    80201310:	8082                	ret

0000000080201312 <r_sie>:
    80201312:	1101                	addi	sp,sp,-32
    80201314:	ec06                	sd	ra,24(sp)
    80201316:	e822                	sd	s0,16(sp)
    80201318:	1000                	addi	s0,sp,32
    8020131a:	104027f3          	csrr	a5,sie
    8020131e:	fef43423          	sd	a5,-24(s0)
    80201322:	fe843783          	ld	a5,-24(s0)
    80201326:	853e                	mv	a0,a5
    80201328:	60e2                	ld	ra,24(sp)
    8020132a:	6442                	ld	s0,16(sp)
    8020132c:	6105                	addi	sp,sp,32
    8020132e:	8082                	ret

0000000080201330 <w_sie>:
    80201330:	1101                	addi	sp,sp,-32
    80201332:	ec06                	sd	ra,24(sp)
    80201334:	e822                	sd	s0,16(sp)
    80201336:	1000                	addi	s0,sp,32
    80201338:	fea43423          	sd	a0,-24(s0)
    8020133c:	fe843783          	ld	a5,-24(s0)
    80201340:	10479073          	csrw	sie,a5
    80201344:	0001                	nop
    80201346:	60e2                	ld	ra,24(sp)
    80201348:	6442                	ld	s0,16(sp)
    8020134a:	6105                	addi	sp,sp,32
    8020134c:	8082                	ret

000000008020134e <w_sepc>:
    8020134e:	1101                	addi	sp,sp,-32
    80201350:	ec06                	sd	ra,24(sp)
    80201352:	e822                	sd	s0,16(sp)
    80201354:	1000                	addi	s0,sp,32
    80201356:	fea43423          	sd	a0,-24(s0)
    8020135a:	fe843783          	ld	a5,-24(s0)
    8020135e:	14179073          	csrw	sepc,a5
    80201362:	0001                	nop
    80201364:	60e2                	ld	ra,24(sp)
    80201366:	6442                	ld	s0,16(sp)
    80201368:	6105                	addi	sp,sp,32
    8020136a:	8082                	ret

000000008020136c <r_sepc>:
    8020136c:	1101                	addi	sp,sp,-32
    8020136e:	ec06                	sd	ra,24(sp)
    80201370:	e822                	sd	s0,16(sp)
    80201372:	1000                	addi	s0,sp,32
    80201374:	141027f3          	csrr	a5,sepc
    80201378:	fef43423          	sd	a5,-24(s0)
    8020137c:	fe843783          	ld	a5,-24(s0)
    80201380:	853e                	mv	a0,a5
    80201382:	60e2                	ld	ra,24(sp)
    80201384:	6442                	ld	s0,16(sp)
    80201386:	6105                	addi	sp,sp,32
    80201388:	8082                	ret

000000008020138a <w_stvec>:
    8020138a:	1101                	addi	sp,sp,-32
    8020138c:	ec06                	sd	ra,24(sp)
    8020138e:	e822                	sd	s0,16(sp)
    80201390:	1000                	addi	s0,sp,32
    80201392:	fea43423          	sd	a0,-24(s0)
    80201396:	fe843783          	ld	a5,-24(s0)
    8020139a:	10579073          	csrw	stvec,a5
    8020139e:	0001                	nop
    802013a0:	60e2                	ld	ra,24(sp)
    802013a2:	6442                	ld	s0,16(sp)
    802013a4:	6105                	addi	sp,sp,32
    802013a6:	8082                	ret

00000000802013a8 <r_satp>:
    802013a8:	1101                	addi	sp,sp,-32
    802013aa:	ec06                	sd	ra,24(sp)
    802013ac:	e822                	sd	s0,16(sp)
    802013ae:	1000                	addi	s0,sp,32
    802013b0:	180027f3          	csrr	a5,satp
    802013b4:	fef43423          	sd	a5,-24(s0)
    802013b8:	fe843783          	ld	a5,-24(s0)
    802013bc:	853e                	mv	a0,a5
    802013be:	60e2                	ld	ra,24(sp)
    802013c0:	6442                	ld	s0,16(sp)
    802013c2:	6105                	addi	sp,sp,32
    802013c4:	8082                	ret

00000000802013c6 <r_scause>:
    802013c6:	1101                	addi	sp,sp,-32
    802013c8:	ec06                	sd	ra,24(sp)
    802013ca:	e822                	sd	s0,16(sp)
    802013cc:	1000                	addi	s0,sp,32
    802013ce:	142027f3          	csrr	a5,scause
    802013d2:	fef43423          	sd	a5,-24(s0)
    802013d6:	fe843783          	ld	a5,-24(s0)
    802013da:	853e                	mv	a0,a5
    802013dc:	60e2                	ld	ra,24(sp)
    802013de:	6442                	ld	s0,16(sp)
    802013e0:	6105                	addi	sp,sp,32
    802013e2:	8082                	ret

00000000802013e4 <r_stval>:
    802013e4:	1101                	addi	sp,sp,-32
    802013e6:	ec06                	sd	ra,24(sp)
    802013e8:	e822                	sd	s0,16(sp)
    802013ea:	1000                	addi	s0,sp,32
    802013ec:	143027f3          	csrr	a5,stval
    802013f0:	fef43423          	sd	a5,-24(s0)
    802013f4:	fe843783          	ld	a5,-24(s0)
    802013f8:	853e                	mv	a0,a5
    802013fa:	60e2                	ld	ra,24(sp)
    802013fc:	6442                	ld	s0,16(sp)
    802013fe:	6105                	addi	sp,sp,32
    80201400:	8082                	ret

0000000080201402 <devintr>:
    80201402:	7179                	addi	sp,sp,-48
    80201404:	f406                	sd	ra,40(sp)
    80201406:	f022                	sd	s0,32(sp)
    80201408:	1800                	addi	s0,sp,48
    8020140a:	fca43c23          	sd	a0,-40(s0)
    8020140e:	fd843703          	ld	a4,-40(s0)
    80201412:	4795                	li	a5,5
    80201414:	00f70863          	beq	a4,a5,80201424 <devintr+0x22>
    80201418:	fd843703          	ld	a4,-40(s0)
    8020141c:	47a5                	li	a5,9
    8020141e:	00f70e63          	beq	a4,a5,8020143a <devintr+0x38>
    80201422:	a88d                	j	80201494 <devintr+0x92>
    80201424:	225010ef          	jal	80202e48 <set_next_10ms_timer>
    80201428:	eafff0ef          	jal	802012d6 <r_sstatus>
    8020142c:	87aa                	mv	a5,a0
    8020142e:	1007f793          	andi	a5,a5,256
    80201432:	eba5                	bnez	a5,802014a2 <devintr+0xa0>
    80201434:	358010ef          	jal	8020278c <yield>
    80201438:	a0ad                	j	802014a2 <devintr+0xa0>
    8020143a:	1ec040ef          	jal	80205626 <plic_claim>
    8020143e:	87aa                	mv	a5,a0
    80201440:	fef42623          	sw	a5,-20(s0)
    80201444:	fec42783          	lw	a5,-20(s0)
    80201448:	0007871b          	sext.w	a4,a5
    8020144c:	47a9                	li	a5,10
    8020144e:	02f70963          	beq	a4,a5,80201480 <devintr+0x7e>
    80201452:	fec42783          	lw	a5,-20(s0)
    80201456:	0007871b          	sext.w	a4,a5
    8020145a:	4785                	li	a5,1
    8020145c:	00f71563          	bne	a4,a5,80201466 <devintr+0x64>
    80201460:	2cd040ef          	jal	80205f2c <virtio_disk_intr>
    80201464:	a831                	j	80201480 <devintr+0x7e>
    80201466:	fec42783          	lw	a5,-20(s0)
    8020146a:	2781                	sext.w	a5,a5
    8020146c:	cb91                	beqz	a5,80201480 <devintr+0x7e>
    8020146e:	fec42783          	lw	a5,-20(s0)
    80201472:	85be                	mv	a1,a5
    80201474:	00007517          	auipc	a0,0x7
    80201478:	e3450513          	addi	a0,a0,-460 # 802082a8 <rodata_start+0x2a8>
    8020147c:	d27ff0ef          	jal	802011a2 <printk>
    80201480:	fec42783          	lw	a5,-20(s0)
    80201484:	2781                	sext.w	a5,a5
    80201486:	c385                	beqz	a5,802014a6 <devintr+0xa4>
    80201488:	fec42783          	lw	a5,-20(s0)
    8020148c:	853e                	mv	a0,a5
    8020148e:	1d2040ef          	jal	80205660 <plic_complete>
    80201492:	a811                	j	802014a6 <devintr+0xa4>
    80201494:	00007517          	auipc	a0,0x7
    80201498:	e3450513          	addi	a0,a0,-460 # 802082c8 <rodata_start+0x2c8>
    8020149c:	110000ef          	jal	802015ac <unknown_trap>
    802014a0:	a021                	j	802014a8 <devintr+0xa6>
    802014a2:	0001                	nop
    802014a4:	a011                	j	802014a8 <devintr+0xa6>
    802014a6:	0001                	nop
    802014a8:	0001                	nop
    802014aa:	70a2                	ld	ra,40(sp)
    802014ac:	7402                	ld	s0,32(sp)
    802014ae:	6145                	addi	sp,sp,48
    802014b0:	8082                	ret

00000000802014b2 <kerneltrap>:
    802014b2:	7179                	addi	sp,sp,-48
    802014b4:	f406                	sd	ra,40(sp)
    802014b6:	f022                	sd	s0,32(sp)
    802014b8:	1800                	addi	s0,sp,48
    802014ba:	eb3ff0ef          	jal	8020136c <r_sepc>
    802014be:	fea43423          	sd	a0,-24(s0)
    802014c2:	e15ff0ef          	jal	802012d6 <r_sstatus>
    802014c6:	fea43023          	sd	a0,-32(s0)
    802014ca:	efdff0ef          	jal	802013c6 <r_scause>
    802014ce:	fca43c23          	sd	a0,-40(s0)
    802014d2:	fd843603          	ld	a2,-40(s0)
    802014d6:	fe843583          	ld	a1,-24(s0)
    802014da:	00007517          	auipc	a0,0x7
    802014de:	dfe50513          	addi	a0,a0,-514 # 802082d8 <rodata_start+0x2d8>
    802014e2:	cc1ff0ef          	jal	802011a2 <printk>
    802014e6:	fe043783          	ld	a5,-32(s0)
    802014ea:	1007f793          	andi	a5,a5,256
    802014ee:	e799                	bnez	a5,802014fc <kerneltrap+0x4a>
    802014f0:	00007517          	auipc	a0,0x7
    802014f4:	e0850513          	addi	a0,a0,-504 # 802082f8 <rodata_start+0x2f8>
    802014f8:	cb4ff0ef          	jal	802009ac <panic>
    802014fc:	fd843783          	ld	a5,-40(s0)
    80201500:	0007da63          	bgez	a5,80201514 <kerneltrap+0x62>
    80201504:	fd843783          	ld	a5,-40(s0)
    80201508:	0ff7f793          	zext.b	a5,a5
    8020150c:	853e                	mv	a0,a5
    8020150e:	ef5ff0ef          	jal	80201402 <devintr>
    80201512:	a015                	j	80201536 <kerneltrap+0x84>
    80201514:	ed1ff0ef          	jal	802013e4 <r_stval>
    80201518:	87aa                	mv	a5,a0
    8020151a:	fe843683          	ld	a3,-24(s0)
    8020151e:	863e                	mv	a2,a5
    80201520:	fd843583          	ld	a1,-40(s0)
    80201524:	00007517          	auipc	a0,0x7
    80201528:	dfc50513          	addi	a0,a0,-516 # 80208320 <rodata_start+0x320>
    8020152c:	c77ff0ef          	jal	802011a2 <printk>
    80201530:	557d                	li	a0,-1
    80201532:	722010ef          	jal	80202c54 <exit>
    80201536:	fe843503          	ld	a0,-24(s0)
    8020153a:	e15ff0ef          	jal	8020134e <w_sepc>
    8020153e:	fe043503          	ld	a0,-32(s0)
    80201542:	db3ff0ef          	jal	802012f4 <w_sstatus>
    80201546:	0001                	nop
    80201548:	70a2                	ld	ra,40(sp)
    8020154a:	7402                	ld	s0,32(sp)
    8020154c:	6145                	addi	sp,sp,48
    8020154e:	8082                	ret

0000000080201550 <set_kerneltrap>:
    80201550:	1141                	addi	sp,sp,-16
    80201552:	e406                	sd	ra,8(sp)
    80201554:	e022                	sd	s0,0(sp)
    80201556:	0800                	addi	s0,sp,16
    80201558:	00000797          	auipc	a5,0x0
    8020155c:	f5a78793          	addi	a5,a5,-166 # 802014b2 <kerneltrap>
    80201560:	9bf1                	andi	a5,a5,-4
    80201562:	853e                	mv	a0,a5
    80201564:	e27ff0ef          	jal	8020138a <w_stvec>
    80201568:	0001                	nop
    8020156a:	60a2                	ld	ra,8(sp)
    8020156c:	6402                	ld	s0,0(sp)
    8020156e:	0141                	addi	sp,sp,16
    80201570:	8082                	ret

0000000080201572 <set_usertrap>:
    80201572:	1141                	addi	sp,sp,-16
    80201574:	e406                	sd	ra,8(sp)
    80201576:	e022                	sd	s0,0(sp)
    80201578:	0800                	addi	s0,sp,16
    8020157a:	00006717          	auipc	a4,0x6
    8020157e:	a8670713          	addi	a4,a4,-1402 # 80207000 <__alltraps>
    80201582:	00006797          	auipc	a5,0x6
    80201586:	a7e78793          	addi	a5,a5,-1410 # 80207000 <__alltraps>
    8020158a:	40f707b3          	sub	a5,a4,a5
    8020158e:	873e                	mv	a4,a5
    80201590:	040007b7          	lui	a5,0x4000
    80201594:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80201596:	07b2                	slli	a5,a5,0xc
    80201598:	97ba                	add	a5,a5,a4
    8020159a:	9bf1                	andi	a5,a5,-4
    8020159c:	853e                	mv	a0,a5
    8020159e:	dedff0ef          	jal	8020138a <w_stvec>
    802015a2:	0001                	nop
    802015a4:	60a2                	ld	ra,8(sp)
    802015a6:	6402                	ld	s0,0(sp)
    802015a8:	0141                	addi	sp,sp,16
    802015aa:	8082                	ret

00000000802015ac <unknown_trap>:
    802015ac:	7179                	addi	sp,sp,-48
    802015ae:	f406                	sd	ra,40(sp)
    802015b0:	f022                	sd	s0,32(sp)
    802015b2:	ec26                	sd	s1,24(sp)
    802015b4:	1800                	addi	s0,sp,48
    802015b6:	fca43c23          	sd	a0,-40(s0)
    802015ba:	e0dff0ef          	jal	802013c6 <r_scause>
    802015be:	84aa                	mv	s1,a0
    802015c0:	e25ff0ef          	jal	802013e4 <r_stval>
    802015c4:	87aa                	mv	a5,a0
    802015c6:	86be                	mv	a3,a5
    802015c8:	8626                	mv	a2,s1
    802015ca:	fd843583          	ld	a1,-40(s0)
    802015ce:	00007517          	auipc	a0,0x7
    802015d2:	d9a50513          	addi	a0,a0,-614 # 80208368 <rodata_start+0x368>
    802015d6:	bcdff0ef          	jal	802011a2 <printk>
    802015da:	4505                	li	a0,1
    802015dc:	ac4ff0ef          	jal	802008a0 <sbi_shut_down>
    802015e0:	0001                	nop
    802015e2:	70a2                	ld	ra,40(sp)
    802015e4:	7402                	ld	s0,32(sp)
    802015e6:	64e2                	ld	s1,24(sp)
    802015e8:	6145                	addi	sp,sp,48
    802015ea:	8082                	ret

00000000802015ec <trap_init>:
    802015ec:	1141                	addi	sp,sp,-16
    802015ee:	e406                	sd	ra,8(sp)
    802015f0:	e022                	sd	s0,0(sp)
    802015f2:	0800                	addi	s0,sp,16
    802015f4:	f5dff0ef          	jal	80201550 <set_kerneltrap>
    802015f8:	d1bff0ef          	jal	80201312 <r_sie>
    802015fc:	87aa                	mv	a5,a0
    802015fe:	2227e793          	ori	a5,a5,546
    80201602:	853e                	mv	a0,a5
    80201604:	d2dff0ef          	jal	80201330 <w_sie>
    80201608:	00007517          	auipc	a0,0x7
    8020160c:	d9050513          	addi	a0,a0,-624 # 80208398 <rodata_start+0x398>
    80201610:	b93ff0ef          	jal	802011a2 <printk>
    80201614:	0001                	nop
    80201616:	60a2                	ld	ra,8(sp)
    80201618:	6402                	ld	s0,0(sp)
    8020161a:	0141                	addi	sp,sp,16
    8020161c:	8082                	ret

000000008020161e <usertrapret>:
    8020161e:	7179                	addi	sp,sp,-48
    80201620:	f406                	sd	ra,40(sp)
    80201622:	f022                	sd	s0,32(sp)
    80201624:	1800                	addi	s0,sp,48
    80201626:	f4dff0ef          	jal	80201572 <set_usertrap>
    8020162a:	7e3000ef          	jal	8020260c <get_cur_proc>
    8020162e:	87aa                	mv	a5,a0
    80201630:	739c                	ld	a5,32(a5)
    80201632:	fef43423          	sd	a5,-24(s0)
    80201636:	d73ff0ef          	jal	802013a8 <r_satp>
    8020163a:	872a                	mv	a4,a0
    8020163c:	fe843783          	ld	a5,-24(s0)
    80201640:	10e7b823          	sd	a4,272(a5)
    80201644:	7c9000ef          	jal	8020260c <get_cur_proc>
    80201648:	87aa                	mv	a5,a0
    8020164a:	6b98                	ld	a4,16(a5)
    8020164c:	6785                	lui	a5,0x1
    8020164e:	973e                	add	a4,a4,a5
    80201650:	fe843783          	ld	a5,-24(s0)
    80201654:	10e7bc23          	sd	a4,280(a5) # 1118 <n+0x10f8>
    80201658:	00000717          	auipc	a4,0x0
    8020165c:	09a70713          	addi	a4,a4,154 # 802016f2 <usertrap>
    80201660:	fe843783          	ld	a5,-24(s0)
    80201664:	12e7b023          	sd	a4,288(a5)
    80201668:	fe843783          	ld	a5,-24(s0)
    8020166c:	1087b783          	ld	a5,264(a5)
    80201670:	853e                	mv	a0,a5
    80201672:	cddff0ef          	jal	8020134e <w_sepc>
    80201676:	c61ff0ef          	jal	802012d6 <r_sstatus>
    8020167a:	fea43023          	sd	a0,-32(s0)
    8020167e:	fe043783          	ld	a5,-32(s0)
    80201682:	eff7f793          	andi	a5,a5,-257
    80201686:	fef43023          	sd	a5,-32(s0)
    8020168a:	fe043783          	ld	a5,-32(s0)
    8020168e:	1007e793          	ori	a5,a5,256
    80201692:	fef43023          	sd	a5,-32(s0)
    80201696:	fe043503          	ld	a0,-32(s0)
    8020169a:	c5bff0ef          	jal	802012f4 <w_sstatus>
    8020169e:	76f000ef          	jal	8020260c <get_cur_proc>
    802016a2:	87aa                	mv	a5,a0
    802016a4:	679c                	ld	a5,8(a5)
    802016a6:	00c7d713          	srli	a4,a5,0xc
    802016aa:	57fd                	li	a5,-1
    802016ac:	17fe                	slli	a5,a5,0x3f
    802016ae:	8fd9                	or	a5,a5,a4
    802016b0:	fcf43c23          	sd	a5,-40(s0)
    802016b4:	00006717          	auipc	a4,0x6
    802016b8:	9ac70713          	addi	a4,a4,-1620 # 80207060 <__restore>
    802016bc:	00006797          	auipc	a5,0x6
    802016c0:	94478793          	addi	a5,a5,-1724 # 80207000 <__alltraps>
    802016c4:	8f1d                	sub	a4,a4,a5
    802016c6:	040007b7          	lui	a5,0x4000
    802016ca:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    802016cc:	07b2                	slli	a5,a5,0xc
    802016ce:	97ba                	add	a5,a5,a4
    802016d0:	fcf43823          	sd	a5,-48(s0)
    802016d4:	fd043783          	ld	a5,-48(s0)
    802016d8:	fd843583          	ld	a1,-40(s0)
    802016dc:	02000737          	lui	a4,0x2000
    802016e0:	177d                	addi	a4,a4,-1 # 1ffffff <n+0x1ffffdf>
    802016e2:	00d71513          	slli	a0,a4,0xd
    802016e6:	9782                	jalr	a5
    802016e8:	0001                	nop
    802016ea:	70a2                	ld	ra,40(sp)
    802016ec:	7402                	ld	s0,32(sp)
    802016ee:	6145                	addi	sp,sp,48
    802016f0:	8082                	ret

00000000802016f2 <usertrap>:
    802016f2:	1101                	addi	sp,sp,-32
    802016f4:	ec06                	sd	ra,24(sp)
    802016f6:	e822                	sd	s0,16(sp)
    802016f8:	1000                	addi	s0,sp,32
    802016fa:	e57ff0ef          	jal	80201550 <set_kerneltrap>
    802016fe:	70f000ef          	jal	8020260c <get_cur_proc>
    80201702:	87aa                	mv	a5,a0
    80201704:	739c                	ld	a5,32(a5)
    80201706:	fef43423          	sd	a5,-24(s0)
    8020170a:	bcdff0ef          	jal	802012d6 <r_sstatus>
    8020170e:	87aa                	mv	a5,a0
    80201710:	1007f793          	andi	a5,a5,256
    80201714:	c799                	beqz	a5,80201722 <usertrap+0x30>
    80201716:	00007517          	auipc	a0,0x7
    8020171a:	c9a50513          	addi	a0,a0,-870 # 802083b0 <rodata_start+0x3b0>
    8020171e:	a8eff0ef          	jal	802009ac <panic>
    80201722:	ca5ff0ef          	jal	802013c6 <r_scause>
    80201726:	fea43023          	sd	a0,-32(s0)
    8020172a:	fe043783          	ld	a5,-32(s0)
    8020172e:	0407d063          	bgez	a5,8020176e <usertrap+0x7c>
    80201732:	fe043703          	ld	a4,-32(s0)
    80201736:	57fd                	li	a5,-1
    80201738:	8385                	srli	a5,a5,0x1
    8020173a:	8ff9                	and	a5,a5,a4
    8020173c:	fef43023          	sd	a5,-32(s0)
    80201740:	fe043703          	ld	a4,-32(s0)
    80201744:	4795                	li	a5,5
    80201746:	00f71d63          	bne	a4,a5,80201760 <usertrap+0x6e>
    8020174a:	00007517          	auipc	a0,0x7
    8020174e:	c8650513          	addi	a0,a0,-890 # 802083d0 <rodata_start+0x3d0>
    80201752:	a51ff0ef          	jal	802011a2 <printk>
    80201756:	6f2010ef          	jal	80202e48 <set_next_10ms_timer>
    8020175a:	032010ef          	jal	8020278c <yield>
    8020175e:	a8c9                	j	80201830 <usertrap+0x13e>
    80201760:	00007517          	auipc	a0,0x7
    80201764:	b6850513          	addi	a0,a0,-1176 # 802082c8 <rodata_start+0x2c8>
    80201768:	e45ff0ef          	jal	802015ac <unknown_trap>
    8020176c:	a0d1                	j	80201830 <usertrap+0x13e>
    8020176e:	fe043703          	ld	a4,-32(s0)
    80201772:	47a1                	li	a5,8
    80201774:	02f70c63          	beq	a4,a5,802017ac <usertrap+0xba>
    80201778:	fe043703          	ld	a4,-32(s0)
    8020177c:	47a1                	li	a5,8
    8020177e:	0ae7e263          	bltu	a5,a4,80201822 <usertrap+0x130>
    80201782:	fe043703          	ld	a4,-32(s0)
    80201786:	479d                	li	a5,7
    80201788:	06f70b63          	beq	a4,a5,802017fe <usertrap+0x10c>
    8020178c:	fe043703          	ld	a4,-32(s0)
    80201790:	479d                	li	a5,7
    80201792:	08e7e863          	bltu	a5,a4,80201822 <usertrap+0x130>
    80201796:	fe043703          	ld	a4,-32(s0)
    8020179a:	4789                	li	a5,2
    8020179c:	04f70863          	beq	a4,a5,802017ec <usertrap+0xfa>
    802017a0:	fe043703          	ld	a4,-32(s0)
    802017a4:	4795                	li	a5,5
    802017a6:	06f70563          	beq	a4,a5,80201810 <usertrap+0x11e>
    802017aa:	a8a5                	j	80201822 <usertrap+0x130>
    802017ac:	fe843783          	ld	a5,-24(s0)
    802017b0:	1087b783          	ld	a5,264(a5)
    802017b4:	00478713          	addi	a4,a5,4
    802017b8:	fe843783          	ld	a5,-24(s0)
    802017bc:	10e7b423          	sd	a4,264(a5)
    802017c0:	fe843783          	ld	a5,-24(s0)
    802017c4:	67d8                	ld	a4,136(a5)
    802017c6:	fe843783          	ld	a5,-24(s0)
    802017ca:	6bac                	ld	a1,80(a5)
    802017cc:	fe843783          	ld	a5,-24(s0)
    802017d0:	6fb0                	ld	a2,88(a5)
    802017d2:	fe843783          	ld	a5,-24(s0)
    802017d6:	73bc                	ld	a5,96(a5)
    802017d8:	86be                	mv	a3,a5
    802017da:	853a                	mv	a0,a4
    802017dc:	17f000ef          	jal	8020215a <syscall>
    802017e0:	87aa                	mv	a5,a0
    802017e2:	873e                	mv	a4,a5
    802017e4:	fe843783          	ld	a5,-24(s0)
    802017e8:	ebb8                	sd	a4,80(a5)
    802017ea:	a099                	j	80201830 <usertrap+0x13e>
    802017ec:	00007517          	auipc	a0,0x7
    802017f0:	bfc50513          	addi	a0,a0,-1028 # 802083e8 <rodata_start+0x3e8>
    802017f4:	9afff0ef          	jal	802011a2 <printk>
    802017f8:	5579                	li	a0,-2
    802017fa:	45a010ef          	jal	80202c54 <exit>
    802017fe:	00007517          	auipc	a0,0x7
    80201802:	c1250513          	addi	a0,a0,-1006 # 80208410 <rodata_start+0x410>
    80201806:	99dff0ef          	jal	802011a2 <printk>
    8020180a:	5565                	li	a0,-7
    8020180c:	448010ef          	jal	80202c54 <exit>
    80201810:	00007517          	auipc	a0,0x7
    80201814:	c3050513          	addi	a0,a0,-976 # 80208440 <rodata_start+0x440>
    80201818:	994ff0ef          	jal	802009ac <panic>
    8020181c:	556d                	li	a0,-5
    8020181e:	436010ef          	jal	80202c54 <exit>
    80201822:	00007517          	auipc	a0,0x7
    80201826:	c4650513          	addi	a0,a0,-954 # 80208468 <rodata_start+0x468>
    8020182a:	d83ff0ef          	jal	802015ac <unknown_trap>
    8020182e:	0001                	nop
    80201830:	defff0ef          	jal	8020161e <usertrapret>
    80201834:	0001                	nop
    80201836:	60e2                	ld	ra,24(sp)
    80201838:	6442                	ld	s0,16(sp)
    8020183a:	6105                	addi	sp,sp,32
    8020183c:	8082                	ret

000000008020183e <strlen>:
    8020183e:	7179                	addi	sp,sp,-48
    80201840:	f406                	sd	ra,40(sp)
    80201842:	f022                	sd	s0,32(sp)
    80201844:	1800                	addi	s0,sp,48
    80201846:	fca43c23          	sd	a0,-40(s0)
    8020184a:	fe042623          	sw	zero,-20(s0)
    8020184e:	a031                	j	8020185a <strlen+0x1c>
    80201850:	fec42783          	lw	a5,-20(s0)
    80201854:	2785                	addiw	a5,a5,1
    80201856:	fef42623          	sw	a5,-20(s0)
    8020185a:	fec46783          	lwu	a5,-20(s0)
    8020185e:	fd843703          	ld	a4,-40(s0)
    80201862:	97ba                	add	a5,a5,a4
    80201864:	00078783          	lb	a5,0(a5)
    80201868:	f7e5                	bnez	a5,80201850 <strlen+0x12>
    8020186a:	fec42783          	lw	a5,-20(s0)
    8020186e:	853e                	mv	a0,a5
    80201870:	70a2                	ld	ra,40(sp)
    80201872:	7402                	ld	s0,32(sp)
    80201874:	6145                	addi	sp,sp,48
    80201876:	8082                	ret

0000000080201878 <memcpy>:
    80201878:	7139                	addi	sp,sp,-64
    8020187a:	fc06                	sd	ra,56(sp)
    8020187c:	f822                	sd	s0,48(sp)
    8020187e:	0080                	addi	s0,sp,64
    80201880:	fca43c23          	sd	a0,-40(s0)
    80201884:	fcb43823          	sd	a1,-48(s0)
    80201888:	fcc43423          	sd	a2,-56(s0)
    8020188c:	fd843783          	ld	a5,-40(s0)
    80201890:	fef43423          	sd	a5,-24(s0)
    80201894:	fd043783          	ld	a5,-48(s0)
    80201898:	fef43023          	sd	a5,-32(s0)
    8020189c:	a00d                	j	802018be <memcpy+0x46>
    8020189e:	fe043703          	ld	a4,-32(s0)
    802018a2:	00170793          	addi	a5,a4,1
    802018a6:	fef43023          	sd	a5,-32(s0)
    802018aa:	fe843783          	ld	a5,-24(s0)
    802018ae:	00178693          	addi	a3,a5,1
    802018b2:	fed43423          	sd	a3,-24(s0)
    802018b6:	00074703          	lbu	a4,0(a4)
    802018ba:	00e78023          	sb	a4,0(a5)
    802018be:	fc843783          	ld	a5,-56(s0)
    802018c2:	fff78713          	addi	a4,a5,-1
    802018c6:	fce43423          	sd	a4,-56(s0)
    802018ca:	fbf1                	bnez	a5,8020189e <memcpy+0x26>
    802018cc:	fd843783          	ld	a5,-40(s0)
    802018d0:	853e                	mv	a0,a5
    802018d2:	70e2                	ld	ra,56(sp)
    802018d4:	7442                	ld	s0,48(sp)
    802018d6:	6121                	addi	sp,sp,64
    802018d8:	8082                	ret

00000000802018da <memcmp>:
    802018da:	7139                	addi	sp,sp,-64
    802018dc:	fc06                	sd	ra,56(sp)
    802018de:	f822                	sd	s0,48(sp)
    802018e0:	0080                	addi	s0,sp,64
    802018e2:	fca43c23          	sd	a0,-40(s0)
    802018e6:	fcb43823          	sd	a1,-48(s0)
    802018ea:	fcc43423          	sd	a2,-56(s0)
    802018ee:	fd843783          	ld	a5,-40(s0)
    802018f2:	fef43423          	sd	a5,-24(s0)
    802018f6:	fd043783          	ld	a5,-48(s0)
    802018fa:	fef43023          	sd	a5,-32(s0)
    802018fe:	a081                	j	8020193e <memcmp+0x64>
    80201900:	fe843703          	ld	a4,-24(s0)
    80201904:	fe043783          	ld	a5,-32(s0)
    80201908:	02f70163          	beq	a4,a5,8020192a <memcmp+0x50>
    8020190c:	fe843783          	ld	a5,-24(s0)
    80201910:	0007c783          	lbu	a5,0(a5)
    80201914:	0007871b          	sext.w	a4,a5
    80201918:	fe043783          	ld	a5,-32(s0)
    8020191c:	0007c783          	lbu	a5,0(a5)
    80201920:	2781                	sext.w	a5,a5
    80201922:	40f707bb          	subw	a5,a4,a5
    80201926:	2781                	sext.w	a5,a5
    80201928:	a01d                	j	8020194e <memcmp+0x74>
    8020192a:	fe843783          	ld	a5,-24(s0)
    8020192e:	0785                	addi	a5,a5,1
    80201930:	fef43423          	sd	a5,-24(s0)
    80201934:	fe043783          	ld	a5,-32(s0)
    80201938:	0785                	addi	a5,a5,1
    8020193a:	fef43023          	sd	a5,-32(s0)
    8020193e:	fc843783          	ld	a5,-56(s0)
    80201942:	fff78713          	addi	a4,a5,-1
    80201946:	fce43423          	sd	a4,-56(s0)
    8020194a:	fbdd                	bnez	a5,80201900 <memcmp+0x26>
    8020194c:	4781                	li	a5,0
    8020194e:	853e                	mv	a0,a5
    80201950:	70e2                	ld	ra,56(sp)
    80201952:	7442                	ld	s0,48(sp)
    80201954:	6121                	addi	sp,sp,64
    80201956:	8082                	ret

0000000080201958 <memmove>:
    80201958:	7139                	addi	sp,sp,-64
    8020195a:	fc06                	sd	ra,56(sp)
    8020195c:	f822                	sd	s0,48(sp)
    8020195e:	0080                	addi	s0,sp,64
    80201960:	fca43c23          	sd	a0,-40(s0)
    80201964:	fcb43823          	sd	a1,-48(s0)
    80201968:	fcc43423          	sd	a2,-56(s0)
    8020196c:	fd043783          	ld	a5,-48(s0)
    80201970:	fef43423          	sd	a5,-24(s0)
    80201974:	fd843783          	ld	a5,-40(s0)
    80201978:	fef43023          	sd	a5,-32(s0)
    8020197c:	fe843703          	ld	a4,-24(s0)
    80201980:	fe043783          	ld	a5,-32(s0)
    80201984:	08f77463          	bgeu	a4,a5,80201a0c <memmove+0xb4>
    80201988:	fe843703          	ld	a4,-24(s0)
    8020198c:	fc843783          	ld	a5,-56(s0)
    80201990:	97ba                	add	a5,a5,a4
    80201992:	fe043703          	ld	a4,-32(s0)
    80201996:	06f77b63          	bgeu	a4,a5,80201a0c <memmove+0xb4>
    8020199a:	fe843703          	ld	a4,-24(s0)
    8020199e:	fc843783          	ld	a5,-56(s0)
    802019a2:	97ba                	add	a5,a5,a4
    802019a4:	fef43423          	sd	a5,-24(s0)
    802019a8:	fe043703          	ld	a4,-32(s0)
    802019ac:	fc843783          	ld	a5,-56(s0)
    802019b0:	97ba                	add	a5,a5,a4
    802019b2:	fef43023          	sd	a5,-32(s0)
    802019b6:	a01d                	j	802019dc <memmove+0x84>
    802019b8:	fe843783          	ld	a5,-24(s0)
    802019bc:	17fd                	addi	a5,a5,-1
    802019be:	fef43423          	sd	a5,-24(s0)
    802019c2:	fe043783          	ld	a5,-32(s0)
    802019c6:	17fd                	addi	a5,a5,-1
    802019c8:	fef43023          	sd	a5,-32(s0)
    802019cc:	fe843783          	ld	a5,-24(s0)
    802019d0:	0007c703          	lbu	a4,0(a5)
    802019d4:	fe043783          	ld	a5,-32(s0)
    802019d8:	00e78023          	sb	a4,0(a5)
    802019dc:	fc843783          	ld	a5,-56(s0)
    802019e0:	fff78713          	addi	a4,a5,-1
    802019e4:	fce43423          	sd	a4,-56(s0)
    802019e8:	fbe1                	bnez	a5,802019b8 <memmove+0x60>
    802019ea:	a805                	j	80201a1a <memmove+0xc2>
    802019ec:	fe843703          	ld	a4,-24(s0)
    802019f0:	00170793          	addi	a5,a4,1
    802019f4:	fef43423          	sd	a5,-24(s0)
    802019f8:	fe043783          	ld	a5,-32(s0)
    802019fc:	00178693          	addi	a3,a5,1
    80201a00:	fed43023          	sd	a3,-32(s0)
    80201a04:	00074703          	lbu	a4,0(a4)
    80201a08:	00e78023          	sb	a4,0(a5)
    80201a0c:	fc843783          	ld	a5,-56(s0)
    80201a10:	fff78713          	addi	a4,a5,-1
    80201a14:	fce43423          	sd	a4,-56(s0)
    80201a18:	fbf1                	bnez	a5,802019ec <memmove+0x94>
    80201a1a:	fd843783          	ld	a5,-40(s0)
    80201a1e:	853e                	mv	a0,a5
    80201a20:	70e2                	ld	ra,56(sp)
    80201a22:	7442                	ld	s0,48(sp)
    80201a24:	6121                	addi	sp,sp,64
    80201a26:	8082                	ret

0000000080201a28 <memset>:
    80201a28:	7179                	addi	sp,sp,-48
    80201a2a:	f406                	sd	ra,40(sp)
    80201a2c:	f022                	sd	s0,32(sp)
    80201a2e:	1800                	addi	s0,sp,48
    80201a30:	fca43c23          	sd	a0,-40(s0)
    80201a34:	87ae                	mv	a5,a1
    80201a36:	8732                	mv	a4,a2
    80201a38:	fcf40ba3          	sb	a5,-41(s0)
    80201a3c:	87ba                	mv	a5,a4
    80201a3e:	fcf42823          	sw	a5,-48(s0)
    80201a42:	fd843783          	ld	a5,-40(s0)
    80201a46:	fef43423          	sd	a5,-24(s0)
    80201a4a:	a005                	j	80201a6a <memset+0x42>
    80201a4c:	fe843783          	ld	a5,-24(s0)
    80201a50:	00178713          	addi	a4,a5,1
    80201a54:	fee43423          	sd	a4,-24(s0)
    80201a58:	fd744703          	lbu	a4,-41(s0)
    80201a5c:	00e78023          	sb	a4,0(a5)
    80201a60:	fd042783          	lw	a5,-48(s0)
    80201a64:	37fd                	addiw	a5,a5,-1
    80201a66:	fcf42823          	sw	a5,-48(s0)
    80201a6a:	fd042783          	lw	a5,-48(s0)
    80201a6e:	2781                	sext.w	a5,a5
    80201a70:	fff1                	bnez	a5,80201a4c <memset+0x24>
    80201a72:	fd843783          	ld	a5,-40(s0)
    80201a76:	853e                	mv	a0,a5
    80201a78:	70a2                	ld	ra,40(sp)
    80201a7a:	7402                	ld	s0,32(sp)
    80201a7c:	6145                	addi	sp,sp,48
    80201a7e:	8082                	ret

0000000080201a80 <strcmp>:
    80201a80:	1101                	addi	sp,sp,-32
    80201a82:	ec06                	sd	ra,24(sp)
    80201a84:	e822                	sd	s0,16(sp)
    80201a86:	1000                	addi	s0,sp,32
    80201a88:	fea43423          	sd	a0,-24(s0)
    80201a8c:	feb43023          	sd	a1,-32(s0)
    80201a90:	a091                	j	80201ad4 <strcmp+0x54>
    80201a92:	fe843783          	ld	a5,-24(s0)
    80201a96:	00078703          	lb	a4,0(a5)
    80201a9a:	fe043783          	ld	a5,-32(s0)
    80201a9e:	00078783          	lb	a5,0(a5)
    80201aa2:	00f70f63          	beq	a4,a5,80201ac0 <strcmp+0x40>
    80201aa6:	fe843783          	ld	a5,-24(s0)
    80201aaa:	00078783          	lb	a5,0(a5)
    80201aae:	873e                	mv	a4,a5
    80201ab0:	fe043783          	ld	a5,-32(s0)
    80201ab4:	00078783          	lb	a5,0(a5)
    80201ab8:	40f707bb          	subw	a5,a4,a5
    80201abc:	2781                	sext.w	a5,a5
    80201abe:	a089                	j	80201b00 <strcmp+0x80>
    80201ac0:	fe843783          	ld	a5,-24(s0)
    80201ac4:	0785                	addi	a5,a5,1
    80201ac6:	fef43423          	sd	a5,-24(s0)
    80201aca:	fe043783          	ld	a5,-32(s0)
    80201ace:	0785                	addi	a5,a5,1
    80201ad0:	fef43023          	sd	a5,-32(s0)
    80201ad4:	fe843783          	ld	a5,-24(s0)
    80201ad8:	00078783          	lb	a5,0(a5)
    80201adc:	c791                	beqz	a5,80201ae8 <strcmp+0x68>
    80201ade:	fe043783          	ld	a5,-32(s0)
    80201ae2:	00078783          	lb	a5,0(a5)
    80201ae6:	f7d5                	bnez	a5,80201a92 <strcmp+0x12>
    80201ae8:	fe843783          	ld	a5,-24(s0)
    80201aec:	00078783          	lb	a5,0(a5)
    80201af0:	873e                	mv	a4,a5
    80201af2:	fe043783          	ld	a5,-32(s0)
    80201af6:	00078783          	lb	a5,0(a5)
    80201afa:	40f707bb          	subw	a5,a4,a5
    80201afe:	2781                	sext.w	a5,a5
    80201b00:	853e                	mv	a0,a5
    80201b02:	60e2                	ld	ra,24(sp)
    80201b04:	6442                	ld	s0,16(sp)
    80201b06:	6105                	addi	sp,sp,32
    80201b08:	8082                	ret

0000000080201b0a <ifsubstr>:
    80201b0a:	7139                	addi	sp,sp,-64
    80201b0c:	fc06                	sd	ra,56(sp)
    80201b0e:	f822                	sd	s0,48(sp)
    80201b10:	0080                	addi	s0,sp,64
    80201b12:	fca43c23          	sd	a0,-40(s0)
    80201b16:	fcb43823          	sd	a1,-48(s0)
    80201b1a:	87b2                	mv	a5,a2
    80201b1c:	fcf42623          	sw	a5,-52(s0)
    80201b20:	fd043503          	ld	a0,-48(s0)
    80201b24:	d1bff0ef          	jal	8020183e <strlen>
    80201b28:	87aa                	mv	a5,a0
    80201b2a:	fef42023          	sw	a5,-32(s0)
    80201b2e:	fe042623          	sw	zero,-20(s0)
    80201b32:	fe042423          	sw	zero,-24(s0)
    80201b36:	fe042223          	sw	zero,-28(s0)
    80201b3a:	a04d                	j	80201bdc <ifsubstr+0xd2>
    80201b3c:	fec42783          	lw	a5,-20(s0)
    80201b40:	0007871b          	sext.w	a4,a5
    80201b44:	4785                	li	a5,1
    80201b46:	06f71063          	bne	a4,a5,80201ba6 <ifsubstr+0x9c>
    80201b4a:	fe842783          	lw	a5,-24(s0)
    80201b4e:	0017871b          	addiw	a4,a5,1
    80201b52:	fee42423          	sw	a4,-24(s0)
    80201b56:	1782                	slli	a5,a5,0x20
    80201b58:	9381                	srli	a5,a5,0x20
    80201b5a:	fd843703          	ld	a4,-40(s0)
    80201b5e:	97ba                	add	a5,a5,a4
    80201b60:	0007c683          	lbu	a3,0(a5)
    80201b64:	fe442783          	lw	a5,-28(s0)
    80201b68:	0017871b          	addiw	a4,a5,1
    80201b6c:	fee42223          	sw	a4,-28(s0)
    80201b70:	1782                	slli	a5,a5,0x20
    80201b72:	9381                	srli	a5,a5,0x20
    80201b74:	fd043703          	ld	a4,-48(s0)
    80201b78:	97ba                	add	a5,a5,a4
    80201b7a:	0007c783          	lbu	a5,0(a5)
    80201b7e:	8736                	mv	a4,a3
    80201b80:	00f71d63          	bne	a4,a5,80201b9a <ifsubstr+0x90>
    80201b84:	fe442783          	lw	a5,-28(s0)
    80201b88:	873e                	mv	a4,a5
    80201b8a:	fe042783          	lw	a5,-32(s0)
    80201b8e:	2701                	sext.w	a4,a4
    80201b90:	2781                	sext.w	a5,a5
    80201b92:	04f71563          	bne	a4,a5,80201bdc <ifsubstr+0xd2>
    80201b96:	4785                	li	a5,1
    80201b98:	a8bd                	j	80201c16 <ifsubstr+0x10c>
    80201b9a:	fe042223          	sw	zero,-28(s0)
    80201b9e:	4785                	li	a5,1
    80201ba0:	fef42623          	sw	a5,-20(s0)
    80201ba4:	a825                	j	80201bdc <ifsubstr+0xd2>
    80201ba6:	fe842783          	lw	a5,-24(s0)
    80201baa:	0017871b          	addiw	a4,a5,1
    80201bae:	fee42423          	sw	a4,-24(s0)
    80201bb2:	1782                	slli	a5,a5,0x20
    80201bb4:	9381                	srli	a5,a5,0x20
    80201bb6:	fd843703          	ld	a4,-40(s0)
    80201bba:	97ba                	add	a5,a5,a4
    80201bbc:	0007c703          	lbu	a4,0(a5)
    80201bc0:	fd043783          	ld	a5,-48(s0)
    80201bc4:	0007c783          	lbu	a5,0(a5)
    80201bc8:	00f71a63          	bne	a4,a5,80201bdc <ifsubstr+0xd2>
    80201bcc:	4785                	li	a5,1
    80201bce:	fef42623          	sw	a5,-20(s0)
    80201bd2:	fe442783          	lw	a5,-28(s0)
    80201bd6:	2785                	addiw	a5,a5,1
    80201bd8:	fef42223          	sw	a5,-28(s0)
    80201bdc:	fcc42783          	lw	a5,-52(s0)
    80201be0:	fe842703          	lw	a4,-24(s0)
    80201be4:	2701                	sext.w	a4,a4
    80201be6:	00f77b63          	bgeu	a4,a5,80201bfc <ifsubstr+0xf2>
    80201bea:	fe442783          	lw	a5,-28(s0)
    80201bee:	873e                	mv	a4,a5
    80201bf0:	fe042783          	lw	a5,-32(s0)
    80201bf4:	2701                	sext.w	a4,a4
    80201bf6:	2781                	sext.w	a5,a5
    80201bf8:	f4f762e3          	bltu	a4,a5,80201b3c <ifsubstr+0x32>
    80201bfc:	fe442783          	lw	a5,-28(s0)
    80201c00:	873e                	mv	a4,a5
    80201c02:	fe042783          	lw	a5,-32(s0)
    80201c06:	2701                	sext.w	a4,a4
    80201c08:	2781                	sext.w	a5,a5
    80201c0a:	00f77463          	bgeu	a4,a5,80201c12 <ifsubstr+0x108>
    80201c0e:	4785                	li	a5,1
    80201c10:	a019                	j	80201c16 <ifsubstr+0x10c>
    80201c12:	fec42783          	lw	a5,-20(s0)
    80201c16:	853e                	mv	a0,a5
    80201c18:	70e2                	ld	ra,56(sp)
    80201c1a:	7442                	ld	s0,48(sp)
    80201c1c:	6121                	addi	sp,sp,64
    80201c1e:	8082                	ret

0000000080201c20 <strcpy>:
    80201c20:	7179                	addi	sp,sp,-48
    80201c22:	f406                	sd	ra,40(sp)
    80201c24:	f022                	sd	s0,32(sp)
    80201c26:	1800                	addi	s0,sp,48
    80201c28:	fca43c23          	sd	a0,-40(s0)
    80201c2c:	fcb43823          	sd	a1,-48(s0)
    80201c30:	fd843783          	ld	a5,-40(s0)
    80201c34:	fef43423          	sd	a5,-24(s0)
    80201c38:	a00d                	j	80201c5a <strcpy+0x3a>
    80201c3a:	fd043703          	ld	a4,-48(s0)
    80201c3e:	00170793          	addi	a5,a4,1
    80201c42:	fcf43823          	sd	a5,-48(s0)
    80201c46:	fe843783          	ld	a5,-24(s0)
    80201c4a:	00178693          	addi	a3,a5,1
    80201c4e:	fed43423          	sd	a3,-24(s0)
    80201c52:	00070703          	lb	a4,0(a4)
    80201c56:	00e78023          	sb	a4,0(a5)
    80201c5a:	fd043783          	ld	a5,-48(s0)
    80201c5e:	00078783          	lb	a5,0(a5)
    80201c62:	ffe1                	bnez	a5,80201c3a <strcpy+0x1a>
    80201c64:	fe843783          	ld	a5,-24(s0)
    80201c68:	00078023          	sb	zero,0(a5)
    80201c6c:	fd843783          	ld	a5,-40(s0)
    80201c70:	853e                	mv	a0,a5
    80201c72:	70a2                	ld	ra,40(sp)
    80201c74:	7402                	ld	s0,32(sp)
    80201c76:	6145                	addi	sp,sp,48
    80201c78:	8082                	ret

0000000080201c7a <strncpy>:
    80201c7a:	7139                	addi	sp,sp,-64
    80201c7c:	fc06                	sd	ra,56(sp)
    80201c7e:	f822                	sd	s0,48(sp)
    80201c80:	0080                	addi	s0,sp,64
    80201c82:	fca43c23          	sd	a0,-40(s0)
    80201c86:	fcb43823          	sd	a1,-48(s0)
    80201c8a:	87b2                	mv	a5,a2
    80201c8c:	fcf42623          	sw	a5,-52(s0)
    80201c90:	fd843783          	ld	a5,-40(s0)
    80201c94:	fef43423          	sd	a5,-24(s0)
    80201c98:	0001                	nop
    80201c9a:	fcc42783          	lw	a5,-52(s0)
    80201c9e:	fff7871b          	addiw	a4,a5,-1
    80201ca2:	fce42623          	sw	a4,-52(s0)
    80201ca6:	02f05e63          	blez	a5,80201ce2 <strncpy+0x68>
    80201caa:	fd043703          	ld	a4,-48(s0)
    80201cae:	00170793          	addi	a5,a4,1
    80201cb2:	fcf43823          	sd	a5,-48(s0)
    80201cb6:	fd843783          	ld	a5,-40(s0)
    80201cba:	00178693          	addi	a3,a5,1
    80201cbe:	fcd43c23          	sd	a3,-40(s0)
    80201cc2:	00074703          	lbu	a4,0(a4)
    80201cc6:	00e78023          	sb	a4,0(a5)
    80201cca:	0007c783          	lbu	a5,0(a5)
    80201cce:	f7f1                	bnez	a5,80201c9a <strncpy+0x20>
    80201cd0:	a809                	j	80201ce2 <strncpy+0x68>
    80201cd2:	fd843783          	ld	a5,-40(s0)
    80201cd6:	00178713          	addi	a4,a5,1
    80201cda:	fce43c23          	sd	a4,-40(s0)
    80201cde:	00078023          	sb	zero,0(a5)
    80201ce2:	fcc42783          	lw	a5,-52(s0)
    80201ce6:	fff7871b          	addiw	a4,a5,-1
    80201cea:	fce42623          	sw	a4,-52(s0)
    80201cee:	fef042e3          	bgtz	a5,80201cd2 <strncpy+0x58>
    80201cf2:	fe843783          	ld	a5,-24(s0)
    80201cf6:	853e                	mv	a0,a5
    80201cf8:	70e2                	ld	ra,56(sp)
    80201cfa:	7442                	ld	s0,48(sp)
    80201cfc:	6121                	addi	sp,sp,64
    80201cfe:	8082                	ret

0000000080201d00 <strncmp>:
    80201d00:	7179                	addi	sp,sp,-48
    80201d02:	f406                	sd	ra,40(sp)
    80201d04:	f022                	sd	s0,32(sp)
    80201d06:	1800                	addi	s0,sp,48
    80201d08:	fea43423          	sd	a0,-24(s0)
    80201d0c:	feb43023          	sd	a1,-32(s0)
    80201d10:	fcc43c23          	sd	a2,-40(s0)
    80201d14:	a005                	j	80201d34 <strncmp+0x34>
    80201d16:	fd843783          	ld	a5,-40(s0)
    80201d1a:	17fd                	addi	a5,a5,-1
    80201d1c:	fcf43c23          	sd	a5,-40(s0)
    80201d20:	fe843783          	ld	a5,-24(s0)
    80201d24:	0785                	addi	a5,a5,1
    80201d26:	fef43423          	sd	a5,-24(s0)
    80201d2a:	fe043783          	ld	a5,-32(s0)
    80201d2e:	0785                	addi	a5,a5,1
    80201d30:	fef43023          	sd	a5,-32(s0)
    80201d34:	fd843783          	ld	a5,-40(s0)
    80201d38:	c385                	beqz	a5,80201d58 <strncmp+0x58>
    80201d3a:	fe843783          	ld	a5,-24(s0)
    80201d3e:	0007c783          	lbu	a5,0(a5)
    80201d42:	cb99                	beqz	a5,80201d58 <strncmp+0x58>
    80201d44:	fe843783          	ld	a5,-24(s0)
    80201d48:	0007c703          	lbu	a4,0(a5)
    80201d4c:	fe043783          	ld	a5,-32(s0)
    80201d50:	0007c783          	lbu	a5,0(a5)
    80201d54:	fcf701e3          	beq	a4,a5,80201d16 <strncmp+0x16>
    80201d58:	fd843783          	ld	a5,-40(s0)
    80201d5c:	e399                	bnez	a5,80201d62 <strncmp+0x62>
    80201d5e:	4781                	li	a5,0
    80201d60:	a839                	j	80201d7e <strncmp+0x7e>
    80201d62:	fe843783          	ld	a5,-24(s0)
    80201d66:	0007c783          	lbu	a5,0(a5)
    80201d6a:	0007871b          	sext.w	a4,a5
    80201d6e:	fe043783          	ld	a5,-32(s0)
    80201d72:	0007c783          	lbu	a5,0(a5)
    80201d76:	2781                	sext.w	a5,a5
    80201d78:	40f707bb          	subw	a5,a4,a5
    80201d7c:	2781                	sext.w	a5,a5
    80201d7e:	853e                	mv	a0,a5
    80201d80:	70a2                	ld	ra,40(sp)
    80201d82:	7402                	ld	s0,32(sp)
    80201d84:	6145                	addi	sp,sp,48
    80201d86:	8082                	ret

0000000080201d88 <strcat>:
    80201d88:	7179                	addi	sp,sp,-48
    80201d8a:	f406                	sd	ra,40(sp)
    80201d8c:	f022                	sd	s0,32(sp)
    80201d8e:	1800                	addi	s0,sp,48
    80201d90:	fca43c23          	sd	a0,-40(s0)
    80201d94:	fcb43823          	sd	a1,-48(s0)
    80201d98:	fd843783          	ld	a5,-40(s0)
    80201d9c:	fef43423          	sd	a5,-24(s0)
    80201da0:	a031                	j	80201dac <strcat+0x24>
    80201da2:	fe843783          	ld	a5,-24(s0)
    80201da6:	0785                	addi	a5,a5,1
    80201da8:	fef43423          	sd	a5,-24(s0)
    80201dac:	fe843783          	ld	a5,-24(s0)
    80201db0:	00078783          	lb	a5,0(a5)
    80201db4:	f7fd                	bnez	a5,80201da2 <strcat+0x1a>
    80201db6:	a00d                	j	80201dd8 <strcat+0x50>
    80201db8:	fd043703          	ld	a4,-48(s0)
    80201dbc:	00170793          	addi	a5,a4,1
    80201dc0:	fcf43823          	sd	a5,-48(s0)
    80201dc4:	fe843783          	ld	a5,-24(s0)
    80201dc8:	00178693          	addi	a3,a5,1
    80201dcc:	fed43423          	sd	a3,-24(s0)
    80201dd0:	00070703          	lb	a4,0(a4)
    80201dd4:	00e78023          	sb	a4,0(a5)
    80201dd8:	fd043783          	ld	a5,-48(s0)
    80201ddc:	00078783          	lb	a5,0(a5)
    80201de0:	ffe1                	bnez	a5,80201db8 <strcat+0x30>
    80201de2:	fd843783          	ld	a5,-40(s0)
    80201de6:	853e                	mv	a0,a5
    80201de8:	70a2                	ld	ra,40(sp)
    80201dea:	7402                	ld	s0,32(sp)
    80201dec:	6145                	addi	sp,sp,48
    80201dee:	8082                	ret

0000000080201df0 <sys_write>:
    80201df0:	7111                	addi	sp,sp,-256
    80201df2:	fd86                	sd	ra,248(sp)
    80201df4:	f9a2                	sd	s0,240(sp)
    80201df6:	0200                	addi	s0,sp,256
    80201df8:	f0a43423          	sd	a0,-248(s0)
    80201dfc:	87ae                	mv	a5,a1
    80201dfe:	f0f42223          	sw	a5,-252(s0)
    80201e02:	00b000ef          	jal	8020260c <get_cur_proc>
    80201e06:	fea43023          	sd	a0,-32(s0)
    80201e0a:	fe043783          	ld	a5,-32(s0)
    80201e0e:	6788                	ld	a0,8(a5)
    80201e10:	f0442783          	lw	a5,-252(s0)
    80201e14:	0007869b          	sext.w	a3,a5
    80201e18:	0c800713          	li	a4,200
    80201e1c:	00d77463          	bgeu	a4,a3,80201e24 <sys_write+0x34>
    80201e20:	0c800793          	li	a5,200
    80201e24:	2781                	sext.w	a5,a5
    80201e26:	02079713          	slli	a4,a5,0x20
    80201e2a:	9301                	srli	a4,a4,0x20
    80201e2c:	f1040793          	addi	a5,s0,-240
    80201e30:	86ba                	mv	a3,a4
    80201e32:	f0843603          	ld	a2,-248(s0)
    80201e36:	85be                	mv	a1,a5
    80201e38:	49b010ef          	jal	80203ad2 <copyinstr>
    80201e3c:	87aa                	mv	a5,a0
    80201e3e:	fcf42e23          	sw	a5,-36(s0)
    80201e42:	fe042623          	sw	zero,-20(s0)
    80201e46:	a01d                	j	80201e6c <sys_write+0x7c>
    80201e48:	fec42783          	lw	a5,-20(s0)
    80201e4c:	17c1                	addi	a5,a5,-16
    80201e4e:	97a2                	add	a5,a5,s0
    80201e50:	f207c783          	lbu	a5,-224(a5)
    80201e54:	0187979b          	slliw	a5,a5,0x18
    80201e58:	4187d79b          	sraiw	a5,a5,0x18
    80201e5c:	853e                	mv	a0,a5
    80201e5e:	a15fe0ef          	jal	80200872 <sbi_console_putchar>
    80201e62:	fec42783          	lw	a5,-20(s0)
    80201e66:	2785                	addiw	a5,a5,1
    80201e68:	fef42623          	sw	a5,-20(s0)
    80201e6c:	fec42783          	lw	a5,-20(s0)
    80201e70:	873e                	mv	a4,a5
    80201e72:	fdc42783          	lw	a5,-36(s0)
    80201e76:	2701                	sext.w	a4,a4
    80201e78:	2781                	sext.w	a5,a5
    80201e7a:	fcf747e3          	blt	a4,a5,80201e48 <sys_write+0x58>
    80201e7e:	fdc42783          	lw	a5,-36(s0)
    80201e82:	853e                	mv	a0,a5
    80201e84:	70ee                	ld	ra,248(sp)
    80201e86:	744e                	ld	s0,240(sp)
    80201e88:	6111                	addi	sp,sp,256
    80201e8a:	8082                	ret

0000000080201e8c <sys_exit>:
    80201e8c:	1101                	addi	sp,sp,-32
    80201e8e:	ec06                	sd	ra,24(sp)
    80201e90:	e822                	sd	s0,16(sp)
    80201e92:	1000                	addi	s0,sp,32
    80201e94:	fea43423          	sd	a0,-24(s0)
    80201e98:	fe843783          	ld	a5,-24(s0)
    80201e9c:	2781                	sext.w	a5,a5
    80201e9e:	853e                	mv	a0,a5
    80201ea0:	5b5000ef          	jal	80202c54 <exit>

0000000080201ea4 <sys_stack_trace>:
    80201ea4:	7179                	addi	sp,sp,-48
    80201ea6:	f406                	sd	ra,40(sp)
    80201ea8:	f022                	sd	s0,32(sp)
    80201eaa:	1800                	addi	s0,sp,48
    80201eac:	00006517          	auipc	a0,0x6
    80201eb0:	5cc50513          	addi	a0,a0,1484 # 80208478 <rodata_start+0x478>
    80201eb4:	aeeff0ef          	jal	802011a2 <printk>
    80201eb8:	87a2                	mv	a5,s0
    80201eba:	fef43423          	sd	a5,-24(s0)
    80201ebe:	a81d                	j	80201ef4 <sys_stack_trace+0x50>
    80201ec0:	fe843783          	ld	a5,-24(s0)
    80201ec4:	17fd                	addi	a5,a5,-1
    80201ec6:	639c                	ld	a5,0(a5)
    80201ec8:	fef43023          	sd	a5,-32(s0)
    80201ecc:	fe843783          	ld	a5,-24(s0)
    80201ed0:	17f9                	addi	a5,a5,-2
    80201ed2:	639c                	ld	a5,0(a5)
    80201ed4:	fcf43c23          	sd	a5,-40(s0)
    80201ed8:	fd843603          	ld	a2,-40(s0)
    80201edc:	fe043583          	ld	a1,-32(s0)
    80201ee0:	00006517          	auipc	a0,0x6
    80201ee4:	5c850513          	addi	a0,a0,1480 # 802084a8 <rodata_start+0x4a8>
    80201ee8:	abaff0ef          	jal	802011a2 <printk>
    80201eec:	fd843783          	ld	a5,-40(s0)
    80201ef0:	fef43423          	sd	a5,-24(s0)
    80201ef4:	fe843783          	ld	a5,-24(s0)
    80201ef8:	f7e1                	bnez	a5,80201ec0 <sys_stack_trace+0x1c>
    80201efa:	00006517          	auipc	a0,0x6
    80201efe:	5c650513          	addi	a0,a0,1478 # 802084c0 <rodata_start+0x4c0>
    80201f02:	aa0ff0ef          	jal	802011a2 <printk>
    80201f06:	4781                	li	a5,0
    80201f08:	853e                	mv	a0,a5
    80201f0a:	70a2                	ld	ra,40(sp)
    80201f0c:	7402                	ld	s0,32(sp)
    80201f0e:	6145                	addi	sp,sp,48
    80201f10:	8082                	ret

0000000080201f12 <sys_yield>:
    80201f12:	1141                	addi	sp,sp,-16
    80201f14:	e406                	sd	ra,8(sp)
    80201f16:	e022                	sd	s0,0(sp)
    80201f18:	0800                	addi	s0,sp,16
    80201f1a:	073000ef          	jal	8020278c <yield>
    80201f1e:	4781                	li	a5,0
    80201f20:	853e                	mv	a0,a5
    80201f22:	60a2                	ld	ra,8(sp)
    80201f24:	6402                	ld	s0,0(sp)
    80201f26:	0141                	addi	sp,sp,16
    80201f28:	8082                	ret

0000000080201f2a <sys_get_tiem>:
    80201f2a:	7179                	addi	sp,sp,-48
    80201f2c:	f406                	sd	ra,40(sp)
    80201f2e:	f022                	sd	s0,32(sp)
    80201f30:	1800                	addi	s0,sp,48
    80201f32:	fca43c23          	sd	a0,-40(s0)
    80201f36:	6dd000ef          	jal	80202e12 <get_cycle>
    80201f3a:	fea43423          	sd	a0,-24(s0)
    80201f3e:	fe843703          	ld	a4,-24(s0)
    80201f42:	00006797          	auipc	a5,0x6
    80201f46:	64678793          	addi	a5,a5,1606 # 80208588 <rodata_start+0x588>
    80201f4a:	639c                	ld	a5,0(a5)
    80201f4c:	02f737b3          	mulhu	a5,a4,a5
    80201f50:	0177d713          	srli	a4,a5,0x17
    80201f54:	fd843783          	ld	a5,-40(s0)
    80201f58:	e398                	sd	a4,0(a5)
    80201f5a:	fe843703          	ld	a4,-24(s0)
    80201f5e:	00006797          	auipc	a5,0x6
    80201f62:	62a78793          	addi	a5,a5,1578 # 80208588 <rodata_start+0x588>
    80201f66:	639c                	ld	a5,0(a5)
    80201f68:	02f737b3          	mulhu	a5,a4,a5
    80201f6c:	83dd                	srli	a5,a5,0x17
    80201f6e:	009896b7          	lui	a3,0x989
    80201f72:	68068693          	addi	a3,a3,1664 # 989680 <n+0x989660>
    80201f76:	02d787b3          	mul	a5,a5,a3
    80201f7a:	40f707b3          	sub	a5,a4,a5
    80201f7e:	000f4737          	lui	a4,0xf4
    80201f82:	24070713          	addi	a4,a4,576 # f4240 <n+0xf4220>
    80201f86:	02e78733          	mul	a4,a5,a4
    80201f8a:	00006797          	auipc	a5,0x6
    80201f8e:	5fe78793          	addi	a5,a5,1534 # 80208588 <rodata_start+0x588>
    80201f92:	639c                	ld	a5,0(a5)
    80201f94:	02f737b3          	mulhu	a5,a4,a5
    80201f98:	0177d713          	srli	a4,a5,0x17
    80201f9c:	fd843783          	ld	a5,-40(s0)
    80201fa0:	e798                	sd	a4,8(a5)
    80201fa2:	4781                	li	a5,0
    80201fa4:	853e                	mv	a0,a5
    80201fa6:	70a2                	ld	ra,40(sp)
    80201fa8:	7402                	ld	s0,32(sp)
    80201faa:	6145                	addi	sp,sp,48
    80201fac:	8082                	ret

0000000080201fae <sys_read>:
    80201fae:	716d                	addi	sp,sp,-272
    80201fb0:	e606                	sd	ra,264(sp)
    80201fb2:	e222                	sd	s0,256(sp)
    80201fb4:	0a00                	addi	s0,sp,272
    80201fb6:	87aa                	mv	a5,a0
    80201fb8:	f0b43023          	sd	a1,-256(s0)
    80201fbc:	eec43c23          	sd	a2,-264(s0)
    80201fc0:	f0f42623          	sw	a5,-244(s0)
    80201fc4:	f0c42783          	lw	a5,-244(s0)
    80201fc8:	2781                	sext.w	a5,a5
    80201fca:	c399                	beqz	a5,80201fd0 <sys_read+0x22>
    80201fcc:	57fd                	li	a5,-1
    80201fce:	a89d                	j	80202044 <sys_read+0x96>
    80201fd0:	63c000ef          	jal	8020260c <get_cur_proc>
    80201fd4:	fea43023          	sd	a0,-32(s0)
    80201fd8:	ef843783          	ld	a5,-264(s0)
    80201fdc:	0c800713          	li	a4,200
    80201fe0:	00f77463          	bgeu	a4,a5,80201fe8 <sys_read+0x3a>
    80201fe4:	0c800793          	li	a5,200
    80201fe8:	eef43c23          	sd	a5,-264(s0)
    80201fec:	fe042623          	sw	zero,-20(s0)
    80201ff0:	a02d                	j	8020201a <sys_read+0x6c>
    80201ff2:	62f010ef          	jal	80203e20 <consgetc>
    80201ff6:	87aa                	mv	a5,a0
    80201ff8:	fcf42e23          	sw	a5,-36(s0)
    80201ffc:	fdc42783          	lw	a5,-36(s0)
    80202000:	0ff7f713          	zext.b	a4,a5
    80202004:	fec42783          	lw	a5,-20(s0)
    80202008:	17c1                	addi	a5,a5,-16
    8020200a:	97a2                	add	a5,a5,s0
    8020200c:	f2e78023          	sb	a4,-224(a5)
    80202010:	fec42783          	lw	a5,-20(s0)
    80202014:	2785                	addiw	a5,a5,1
    80202016:	fef42623          	sw	a5,-20(s0)
    8020201a:	fec42783          	lw	a5,-20(s0)
    8020201e:	ef843703          	ld	a4,-264(s0)
    80202022:	fce7e8e3          	bltu	a5,a4,80201ff2 <sys_read+0x44>
    80202026:	fe043783          	ld	a5,-32(s0)
    8020202a:	679c                	ld	a5,8(a5)
    8020202c:	f1040713          	addi	a4,s0,-240
    80202030:	ef843683          	ld	a3,-264(s0)
    80202034:	863a                	mv	a2,a4
    80202036:	f0043583          	ld	a1,-256(s0)
    8020203a:	853e                	mv	a0,a5
    8020203c:	113010ef          	jal	8020394e <copyout>
    80202040:	ef843783          	ld	a5,-264(s0)
    80202044:	853e                	mv	a0,a5
    80202046:	60b2                	ld	ra,264(sp)
    80202048:	6412                	ld	s0,256(sp)
    8020204a:	6151                	addi	sp,sp,272
    8020204c:	8082                	ret

000000008020204e <sys_fork>:
    8020204e:	1141                	addi	sp,sp,-16
    80202050:	e406                	sd	ra,8(sp)
    80202052:	e022                	sd	s0,0(sp)
    80202054:	0800                	addi	s0,sp,16
    80202056:	00006517          	auipc	a0,0x6
    8020205a:	49a50513          	addi	a0,a0,1178 # 802084f0 <rodata_start+0x4f0>
    8020205e:	944ff0ef          	jal	802011a2 <printk>
    80202062:	005000ef          	jal	80202866 <fork>
    80202066:	87aa                	mv	a5,a0
    80202068:	853e                	mv	a0,a5
    8020206a:	60a2                	ld	ra,8(sp)
    8020206c:	6402                	ld	s0,0(sp)
    8020206e:	0141                	addi	sp,sp,16
    80202070:	8082                	ret

0000000080202072 <sys_exec>:
    80202072:	7151                	addi	sp,sp,-240
    80202074:	f586                	sd	ra,232(sp)
    80202076:	f1a2                	sd	s0,224(sp)
    80202078:	1980                	addi	s0,sp,240
    8020207a:	f0a43c23          	sd	a0,-232(s0)
    8020207e:	58e000ef          	jal	8020260c <get_cur_proc>
    80202082:	fea43423          	sd	a0,-24(s0)
    80202086:	fe843783          	ld	a5,-24(s0)
    8020208a:	679c                	ld	a5,8(a5)
    8020208c:	f2040713          	addi	a4,s0,-224
    80202090:	0c800693          	li	a3,200
    80202094:	f1843603          	ld	a2,-232(s0)
    80202098:	85ba                	mv	a1,a4
    8020209a:	853e                	mv	a0,a5
    8020209c:	237010ef          	jal	80203ad2 <copyinstr>
    802020a0:	f2040793          	addi	a5,s0,-224
    802020a4:	85be                	mv	a1,a5
    802020a6:	00006517          	auipc	a0,0x6
    802020aa:	45250513          	addi	a0,a0,1106 # 802084f8 <rodata_start+0x4f8>
    802020ae:	8f4ff0ef          	jal	802011a2 <printk>
    802020b2:	f2040793          	addi	a5,s0,-224
    802020b6:	853e                	mv	a0,a5
    802020b8:	22f000ef          	jal	80202ae6 <exec>
    802020bc:	87aa                	mv	a5,a0
    802020be:	853e                	mv	a0,a5
    802020c0:	70ae                	ld	ra,232(sp)
    802020c2:	740e                	ld	s0,224(sp)
    802020c4:	616d                	addi	sp,sp,240
    802020c6:	8082                	ret

00000000802020c8 <sys_waitpid>:
    802020c8:	7179                	addi	sp,sp,-48
    802020ca:	f406                	sd	ra,40(sp)
    802020cc:	f022                	sd	s0,32(sp)
    802020ce:	1800                	addi	s0,sp,48
    802020d0:	87aa                	mv	a5,a0
    802020d2:	fcb43823          	sd	a1,-48(s0)
    802020d6:	fcf42e23          	sw	a5,-36(s0)
    802020da:	532000ef          	jal	8020260c <get_cur_proc>
    802020de:	fea43423          	sd	a0,-24(s0)
    802020e2:	fe843783          	ld	a5,-24(s0)
    802020e6:	679c                	ld	a5,8(a5)
    802020e8:	fd043583          	ld	a1,-48(s0)
    802020ec:	853e                	mv	a0,a5
    802020ee:	5ac010ef          	jal	8020369a <useraddr>
    802020f2:	87aa                	mv	a5,a0
    802020f4:	fef43023          	sd	a5,-32(s0)
    802020f8:	fdc42783          	lw	a5,-36(s0)
    802020fc:	fe043583          	ld	a1,-32(s0)
    80202100:	853e                	mv	a0,a5
    80202102:	24f000ef          	jal	80202b50 <wait>
    80202106:	87aa                	mv	a5,a0
    80202108:	853e                	mv	a0,a5
    8020210a:	70a2                	ld	ra,40(sp)
    8020210c:	7402                	ld	s0,32(sp)
    8020210e:	6145                	addi	sp,sp,48
    80202110:	8082                	ret

0000000080202112 <sys_getpid>:
    80202112:	1141                	addi	sp,sp,-16
    80202114:	e406                	sd	ra,8(sp)
    80202116:	e022                	sd	s0,0(sp)
    80202118:	0800                	addi	s0,sp,16
    8020211a:	4f2000ef          	jal	8020260c <get_cur_proc>
    8020211e:	87aa                	mv	a5,a0
    80202120:	43dc                	lw	a5,4(a5)
    80202122:	853e                	mv	a0,a5
    80202124:	60a2                	ld	ra,8(sp)
    80202126:	6402                	ld	s0,0(sp)
    80202128:	0141                	addi	sp,sp,16
    8020212a:	8082                	ret

000000008020212c <sys_getppid>:
    8020212c:	1101                	addi	sp,sp,-32
    8020212e:	ec06                	sd	ra,24(sp)
    80202130:	e822                	sd	s0,16(sp)
    80202132:	1000                	addi	s0,sp,32
    80202134:	4d8000ef          	jal	8020260c <get_cur_proc>
    80202138:	fea43423          	sd	a0,-24(s0)
    8020213c:	fe843783          	ld	a5,-24(s0)
    80202140:	73dc                	ld	a5,160(a5)
    80202142:	c791                	beqz	a5,8020214e <sys_getppid+0x22>
    80202144:	fe843783          	ld	a5,-24(s0)
    80202148:	73dc                	ld	a5,160(a5)
    8020214a:	43dc                	lw	a5,4(a5)
    8020214c:	a011                	j	80202150 <sys_getppid+0x24>
    8020214e:	4781                	li	a5,0
    80202150:	853e                	mv	a0,a5
    80202152:	60e2                	ld	ra,24(sp)
    80202154:	6442                	ld	s0,16(sp)
    80202156:	6105                	addi	sp,sp,32
    80202158:	8082                	ret

000000008020215a <syscall>:
    8020215a:	7139                	addi	sp,sp,-64
    8020215c:	fc06                	sd	ra,56(sp)
    8020215e:	f822                	sd	s0,48(sp)
    80202160:	0080                	addi	s0,sp,64
    80202162:	fca43c23          	sd	a0,-40(s0)
    80202166:	fcb43823          	sd	a1,-48(s0)
    8020216a:	fcc43423          	sd	a2,-56(s0)
    8020216e:	fcd43023          	sd	a3,-64(s0)
    80202172:	fd843703          	ld	a4,-40(s0)
    80202176:	10400793          	li	a5,260
    8020217a:	10f70c63          	beq	a4,a5,80202292 <syscall+0x138>
    8020217e:	fd843703          	ld	a4,-40(s0)
    80202182:	10400793          	li	a5,260
    80202186:	12e7eb63          	bltu	a5,a4,802022bc <syscall+0x162>
    8020218a:	fd843703          	ld	a4,-40(s0)
    8020218e:	0dd00793          	li	a5,221
    80202192:	0ef70463          	beq	a4,a5,8020227a <syscall+0x120>
    80202196:	fd843703          	ld	a4,-40(s0)
    8020219a:	0dd00793          	li	a5,221
    8020219e:	10e7ef63          	bltu	a5,a4,802022bc <syscall+0x162>
    802021a2:	fd843703          	ld	a4,-40(s0)
    802021a6:	0dc00793          	li	a5,220
    802021aa:	0cf70f63          	beq	a4,a5,80202288 <syscall+0x12e>
    802021ae:	fd843703          	ld	a4,-40(s0)
    802021b2:	0dc00793          	li	a5,220
    802021b6:	10e7e363          	bltu	a5,a4,802022bc <syscall+0x162>
    802021ba:	fd843703          	ld	a4,-40(s0)
    802021be:	4795                	li	a5,5
    802021c0:	02e7ed63          	bltu	a5,a4,802021fa <syscall+0xa0>
    802021c4:	fd843783          	ld	a5,-40(s0)
    802021c8:	0e078a63          	beqz	a5,802022bc <syscall+0x162>
    802021cc:	fd843703          	ld	a4,-40(s0)
    802021d0:	4795                	li	a5,5
    802021d2:	0ee7e563          	bltu	a5,a4,802022bc <syscall+0x162>
    802021d6:	fd843783          	ld	a5,-40(s0)
    802021da:	00279713          	slli	a4,a5,0x2
    802021de:	00006797          	auipc	a5,0x6
    802021e2:	39278793          	addi	a5,a5,914 # 80208570 <rodata_start+0x570>
    802021e6:	97ba                	add	a5,a5,a4
    802021e8:	439c                	lw	a5,0(a5)
    802021ea:	0007871b          	sext.w	a4,a5
    802021ee:	00006797          	auipc	a5,0x6
    802021f2:	38278793          	addi	a5,a5,898 # 80208570 <rodata_start+0x570>
    802021f6:	97ba                	add	a5,a5,a4
    802021f8:	8782                	jr	a5
    802021fa:	fd843703          	ld	a4,-40(s0)
    802021fe:	03f00793          	li	a5,63
    80202202:	04f70763          	beq	a4,a5,80202250 <syscall+0xf6>
    80202206:	a85d                	j	802022bc <syscall+0x162>
    80202208:	fc843783          	ld	a5,-56(s0)
    8020220c:	2781                	sext.w	a5,a5
    8020220e:	85be                	mv	a1,a5
    80202210:	fd043503          	ld	a0,-48(s0)
    80202214:	bddff0ef          	jal	80201df0 <sys_write>
    80202218:	87aa                	mv	a5,a0
    8020221a:	fef43423          	sd	a5,-24(s0)
    8020221e:	a875                	j	802022da <syscall+0x180>
    80202220:	fd043503          	ld	a0,-48(s0)
    80202224:	c69ff0ef          	jal	80201e8c <sys_exit>
    80202228:	c7dff0ef          	jal	80201ea4 <sys_stack_trace>
    8020222c:	87aa                	mv	a5,a0
    8020222e:	fef43423          	sd	a5,-24(s0)
    80202232:	a065                	j	802022da <syscall+0x180>
    80202234:	cdfff0ef          	jal	80201f12 <sys_yield>
    80202238:	87aa                	mv	a5,a0
    8020223a:	fef43423          	sd	a5,-24(s0)
    8020223e:	a871                	j	802022da <syscall+0x180>
    80202240:	fd043783          	ld	a5,-48(s0)
    80202244:	853e                	mv	a0,a5
    80202246:	ce5ff0ef          	jal	80201f2a <sys_get_tiem>
    8020224a:	fea43423          	sd	a0,-24(s0)
    8020224e:	a071                	j	802022da <syscall+0x180>
    80202250:	fc043583          	ld	a1,-64(s0)
    80202254:	00006517          	auipc	a0,0x6
    80202258:	2b450513          	addi	a0,a0,692 # 80208508 <rodata_start+0x508>
    8020225c:	f47fe0ef          	jal	802011a2 <printk>
    80202260:	fd043783          	ld	a5,-48(s0)
    80202264:	2781                	sext.w	a5,a5
    80202266:	fc043603          	ld	a2,-64(s0)
    8020226a:	fc843583          	ld	a1,-56(s0)
    8020226e:	853e                	mv	a0,a5
    80202270:	d3fff0ef          	jal	80201fae <sys_read>
    80202274:	fea43423          	sd	a0,-24(s0)
    80202278:	a08d                	j	802022da <syscall+0x180>
    8020227a:	fd043503          	ld	a0,-48(s0)
    8020227e:	df5ff0ef          	jal	80202072 <sys_exec>
    80202282:	fea43423          	sd	a0,-24(s0)
    80202286:	a891                	j	802022da <syscall+0x180>
    80202288:	dc7ff0ef          	jal	8020204e <sys_fork>
    8020228c:	fea43423          	sd	a0,-24(s0)
    80202290:	a0a9                	j	802022da <syscall+0x180>
    80202292:	fc843603          	ld	a2,-56(s0)
    80202296:	fd043583          	ld	a1,-48(s0)
    8020229a:	00006517          	auipc	a0,0x6
    8020229e:	27e50513          	addi	a0,a0,638 # 80208518 <rodata_start+0x518>
    802022a2:	f01fe0ef          	jal	802011a2 <printk>
    802022a6:	fd043783          	ld	a5,-48(s0)
    802022aa:	2781                	sext.w	a5,a5
    802022ac:	fc843583          	ld	a1,-56(s0)
    802022b0:	853e                	mv	a0,a5
    802022b2:	e17ff0ef          	jal	802020c8 <sys_waitpid>
    802022b6:	fea43423          	sd	a0,-24(s0)
    802022ba:	a005                	j	802022da <syscall+0x180>
    802022bc:	fd843583          	ld	a1,-40(s0)
    802022c0:	00006517          	auipc	a0,0x6
    802022c4:	27050513          	addi	a0,a0,624 # 80208530 <rodata_start+0x530>
    802022c8:	edbfe0ef          	jal	802011a2 <printk>
    802022cc:	00006517          	auipc	a0,0x6
    802022d0:	28450513          	addi	a0,a0,644 # 80208550 <rodata_start+0x550>
    802022d4:	ed8fe0ef          	jal	802009ac <panic>
    802022d8:	0001                	nop
    802022da:	fe843783          	ld	a5,-24(s0)
    802022de:	853e                	mv	a0,a5
    802022e0:	70e2                	ld	ra,56(sp)
    802022e2:	7442                	ld	s0,48(sp)
    802022e4:	6121                	addi	sp,sp,64
    802022e6:	8082                	ret

00000000802022e8 <__switch>:
    802022e8:	00153023          	sd	ra,0(a0)
    802022ec:	00253423          	sd	sp,8(a0)
    802022f0:	e900                	sd	s0,16(a0)
    802022f2:	ed04                	sd	s1,24(a0)
    802022f4:	03253023          	sd	s2,32(a0)
    802022f8:	03353423          	sd	s3,40(a0)
    802022fc:	03453823          	sd	s4,48(a0)
    80202300:	03553c23          	sd	s5,56(a0)
    80202304:	05653023          	sd	s6,64(a0)
    80202308:	05753423          	sd	s7,72(a0)
    8020230c:	05853823          	sd	s8,80(a0)
    80202310:	05953c23          	sd	s9,88(a0)
    80202314:	07a53023          	sd	s10,96(a0)
    80202318:	07b53423          	sd	s11,104(a0)
    8020231c:	0005b083          	ld	ra,0(a1)
    80202320:	0085b103          	ld	sp,8(a1)
    80202324:	6980                	ld	s0,16(a1)
    80202326:	6d84                	ld	s1,24(a1)
    80202328:	0205b903          	ld	s2,32(a1)
    8020232c:	0285b983          	ld	s3,40(a1)
    80202330:	0305ba03          	ld	s4,48(a1)
    80202334:	0385ba83          	ld	s5,56(a1)
    80202338:	0405bb03          	ld	s6,64(a1)
    8020233c:	0485bb83          	ld	s7,72(a1)
    80202340:	0505bc03          	ld	s8,80(a1)
    80202344:	0585bc83          	ld	s9,88(a1)
    80202348:	0605bd03          	ld	s10,96(a1)
    8020234c:	0685bd83          	ld	s11,104(a1)
    80202350:	8082                	ret

0000000080202352 <cpuid>:
    80202352:	1141                	addi	sp,sp,-16
    80202354:	e406                	sd	ra,8(sp)
    80202356:	e022                	sd	s0,0(sp)
    80202358:	0800                	addi	s0,sp,16
    8020235a:	4781                	li	a5,0
    8020235c:	853e                	mv	a0,a5
    8020235e:	60a2                	ld	ra,8(sp)
    80202360:	6402                	ld	s0,0(sp)
    80202362:	0141                	addi	sp,sp,16
    80202364:	8082                	ret

0000000080202366 <getpid>:
    80202366:	1141                	addi	sp,sp,-16
    80202368:	e406                	sd	ra,8(sp)
    8020236a:	e022                	sd	s0,0(sp)
    8020236c:	0800                	addi	s0,sp,16
    8020236e:	29e000ef          	jal	8020260c <get_cur_proc>
    80202372:	87aa                	mv	a5,a0
    80202374:	43dc                	lw	a5,4(a5)
    80202376:	853e                	mv	a0,a5
    80202378:	60a2                	ld	ra,8(sp)
    8020237a:	6402                	ld	s0,0(sp)
    8020237c:	0141                	addi	sp,sp,16
    8020237e:	8082                	ret

0000000080202380 <proc_init>:
    80202380:	1101                	addi	sp,sp,-32
    80202382:	ec06                	sd	ra,24(sp)
    80202384:	e822                	sd	s0,16(sp)
    80202386:	1000                	addi	s0,sp,32
    80202388:	00006517          	auipc	a0,0x6
    8020238c:	20850513          	addi	a0,a0,520 # 80208590 <rodata_start+0x590>
    80202390:	e13fe0ef          	jal	802011a2 <printk>
    80202394:	00021797          	auipc	a5,0x21
    80202398:	c6c78793          	addi	a5,a5,-916 # 80223000 <proc>
    8020239c:	fef43423          	sd	a5,-24(s0)
    802023a0:	a051                	j	80202424 <proc_init+0xa4>
    802023a2:	fe843703          	ld	a4,-24(s0)
    802023a6:	00021797          	auipc	a5,0x21
    802023aa:	c5a78793          	addi	a5,a5,-934 # 80223000 <proc>
    802023ae:	40f707b3          	sub	a5,a4,a5
    802023b2:	4047d713          	srai	a4,a5,0x4
    802023b6:	00006797          	auipc	a5,0x6
    802023ba:	35278793          	addi	a5,a5,850 # 80208708 <rodata_start+0x708>
    802023be:	639c                	ld	a5,0(a5)
    802023c0:	02f707b3          	mul	a5,a4,a5
    802023c4:	00c79713          	slli	a4,a5,0xc
    802023c8:	00047797          	auipc	a5,0x47
    802023cc:	c3878793          	addi	a5,a5,-968 # 80249000 <kstack>
    802023d0:	97ba                	add	a5,a5,a4
    802023d2:	873e                	mv	a4,a5
    802023d4:	fe843783          	ld	a5,-24(s0)
    802023d8:	eb98                	sd	a4,16(a5)
    802023da:	fe843703          	ld	a4,-24(s0)
    802023de:	00021797          	auipc	a5,0x21
    802023e2:	c2278793          	addi	a5,a5,-990 # 80223000 <proc>
    802023e6:	40f707b3          	sub	a5,a4,a5
    802023ea:	4047d713          	srai	a4,a5,0x4
    802023ee:	00006797          	auipc	a5,0x6
    802023f2:	31a78793          	addi	a5,a5,794 # 80208708 <rodata_start+0x708>
    802023f6:	639c                	ld	a5,0(a5)
    802023f8:	02f707b3          	mul	a5,a4,a5
    802023fc:	00c79713          	slli	a4,a5,0xc
    80202400:	00247797          	auipc	a5,0x247
    80202404:	c0078793          	addi	a5,a5,-1024 # 80449000 <trapframe_all>
    80202408:	973e                	add	a4,a4,a5
    8020240a:	fe843783          	ld	a5,-24(s0)
    8020240e:	f398                	sd	a4,32(a5)
    80202410:	fe843783          	ld	a5,-24(s0)
    80202414:	0007a023          	sw	zero,0(a5)
    80202418:	fe843783          	ld	a5,-24(s0)
    8020241c:	13078793          	addi	a5,a5,304
    80202420:	fef43423          	sd	a5,-24(s0)
    80202424:	fe843703          	ld	a4,-24(s0)
    80202428:	00047797          	auipc	a5,0x47
    8020242c:	bd878793          	addi	a5,a5,-1064 # 80249000 <kstack>
    80202430:	f6f769e3          	bltu	a4,a5,802023a2 <proc_init+0x22>
    80202434:	00495797          	auipc	a5,0x495
    80202438:	bdc78793          	addi	a5,a5,-1060 # 80697010 <current_proc>
    8020243c:	00447717          	auipc	a4,0x447
    80202440:	bc470713          	addi	a4,a4,-1084 # 80649000 <os_proc>
    80202444:	e398                	sd	a4,0(a5)
    80202446:	0001f717          	auipc	a4,0x1f
    8020244a:	bba70713          	addi	a4,a4,-1094 # 80221000 <names>
    8020244e:	00447797          	auipc	a5,0x447
    80202452:	bb278793          	addi	a5,a5,-1102 # 80649000 <os_proc>
    80202456:	eb98                	sd	a4,16(a5)
    80202458:	00447797          	auipc	a5,0x447
    8020245c:	ba878793          	addi	a5,a5,-1112 # 80649000 <os_proc>
    80202460:	0007a223          	sw	zero,4(a5)
    80202464:	00447517          	auipc	a0,0x447
    80202468:	ccc50513          	addi	a0,a0,-820 # 80649130 <task_queue>
    8020246c:	03d010ef          	jal	80203ca8 <init_queue>
    80202470:	0001                	nop
    80202472:	60e2                	ld	ra,24(sp)
    80202474:	6442                	ld	s0,16(sp)
    80202476:	6105                	addi	sp,sp,32
    80202478:	8082                	ret

000000008020247a <allocpid>:
    8020247a:	1141                	addi	sp,sp,-16
    8020247c:	e406                	sd	ra,8(sp)
    8020247e:	e022                	sd	s0,0(sp)
    80202480:	0800                	addi	s0,sp,16
    80202482:	0000e797          	auipc	a5,0xe
    80202486:	b7e78793          	addi	a5,a5,-1154 # 80210000 <PID.0>
    8020248a:	439c                	lw	a5,0(a5)
    8020248c:	0017871b          	addiw	a4,a5,1
    80202490:	0007069b          	sext.w	a3,a4
    80202494:	0000e717          	auipc	a4,0xe
    80202498:	b6c70713          	addi	a4,a4,-1172 # 80210000 <PID.0>
    8020249c:	c314                	sw	a3,0(a4)
    8020249e:	853e                	mv	a0,a5
    802024a0:	60a2                	ld	ra,8(sp)
    802024a2:	6402                	ld	s0,0(sp)
    802024a4:	0141                	addi	sp,sp,16
    802024a6:	8082                	ret

00000000802024a8 <allocate_proc>:
    802024a8:	1101                	addi	sp,sp,-32
    802024aa:	ec06                	sd	ra,24(sp)
    802024ac:	e822                	sd	s0,16(sp)
    802024ae:	1000                	addi	s0,sp,32
    802024b0:	00021797          	auipc	a5,0x21
    802024b4:	b5078793          	addi	a5,a5,-1200 # 80223000 <proc>
    802024b8:	fef43423          	sd	a5,-24(s0)
    802024bc:	a0f1                	j	80202588 <allocate_proc+0xe0>
    802024be:	fe843783          	ld	a5,-24(s0)
    802024c2:	439c                	lw	a5,0(a5)
    802024c4:	efc5                	bnez	a5,8020257c <allocate_proc+0xd4>
    802024c6:	fe843783          	ld	a5,-24(s0)
    802024ca:	4705                	li	a4,1
    802024cc:	c398                	sw	a4,0(a5)
    802024ce:	fadff0ef          	jal	8020247a <allocpid>
    802024d2:	87aa                	mv	a5,a0
    802024d4:	873e                	mv	a4,a5
    802024d6:	fe843783          	ld	a5,-24(s0)
    802024da:	c3d8                	sw	a4,4(a5)
    802024dc:	fe843783          	ld	a5,-24(s0)
    802024e0:	739c                	ld	a5,32(a5)
    802024e2:	853e                	mv	a0,a5
    802024e4:	6e7000ef          	jal	802033ca <uvmcreate>
    802024e8:	872a                	mv	a4,a0
    802024ea:	fe843783          	ld	a5,-24(s0)
    802024ee:	e798                	sd	a4,8(a5)
    802024f0:	fe843783          	ld	a5,-24(s0)
    802024f4:	6b9c                	ld	a5,16(a5)
    802024f6:	6605                	lui	a2,0x1
    802024f8:	4581                	li	a1,0
    802024fa:	853e                	mv	a0,a5
    802024fc:	d2cff0ef          	jal	80201a28 <memset>
    80202500:	fe843783          	ld	a5,-24(s0)
    80202504:	0007bc23          	sd	zero,24(a5)
    80202508:	fe843783          	ld	a5,-24(s0)
    8020250c:	739c                	ld	a5,32(a5)
    8020250e:	4621                	li	a2,8
    80202510:	4581                	li	a1,0
    80202512:	853e                	mv	a0,a5
    80202514:	d14ff0ef          	jal	80201a28 <memset>
    80202518:	fe843783          	ld	a5,-24(s0)
    8020251c:	02878793          	addi	a5,a5,40
    80202520:	07000613          	li	a2,112
    80202524:	4581                	li	a1,0
    80202526:	853e                	mv	a0,a5
    80202528:	d00ff0ef          	jal	80201a28 <memset>
    8020252c:	fffff717          	auipc	a4,0xfffff
    80202530:	0f270713          	addi	a4,a4,242 # 8020161e <usertrapret>
    80202534:	fe843783          	ld	a5,-24(s0)
    80202538:	f798                	sd	a4,40(a5)
    8020253a:	fe843783          	ld	a5,-24(s0)
    8020253e:	6b98                	ld	a4,16(a5)
    80202540:	6785                	lui	a5,0x1
    80202542:	973e                	add	a4,a4,a5
    80202544:	fe843783          	ld	a5,-24(s0)
    80202548:	fb98                	sd	a4,48(a5)
    8020254a:	fe843783          	ld	a5,-24(s0)
    8020254e:	0807bc23          	sd	zero,152(a5) # 1098 <n+0x1078>
    80202552:	fe843783          	ld	a5,-24(s0)
    80202556:	0a07b023          	sd	zero,160(a5)
    8020255a:	fe843783          	ld	a5,-24(s0)
    8020255e:	0a07b423          	sd	zero,168(a5)
    80202562:	fe843783          	ld	a5,-24(s0)
    80202566:	0b078793          	addi	a5,a5,176
    8020256a:	08000613          	li	a2,128
    8020256e:	4581                	li	a1,0
    80202570:	853e                	mv	a0,a5
    80202572:	cb6ff0ef          	jal	80201a28 <memset>
    80202576:	fe843783          	ld	a5,-24(s0)
    8020257a:	a005                	j	8020259a <allocate_proc+0xf2>
    8020257c:	fe843783          	ld	a5,-24(s0)
    80202580:	13078793          	addi	a5,a5,304
    80202584:	fef43423          	sd	a5,-24(s0)
    80202588:	fe843703          	ld	a4,-24(s0)
    8020258c:	00047797          	auipc	a5,0x47
    80202590:	a7478793          	addi	a5,a5,-1420 # 80249000 <kstack>
    80202594:	f2f765e3          	bltu	a4,a5,802024be <allocate_proc+0x16>
    80202598:	4781                	li	a5,0
    8020259a:	853e                	mv	a0,a5
    8020259c:	60e2                	ld	ra,24(sp)
    8020259e:	6442                	ld	s0,16(sp)
    802025a0:	6105                	addi	sp,sp,32
    802025a2:	8082                	ret

00000000802025a4 <init_stdio>:
    802025a4:	7179                	addi	sp,sp,-48
    802025a6:	f406                	sd	ra,40(sp)
    802025a8:	f022                	sd	s0,32(sp)
    802025aa:	1800                	addi	s0,sp,48
    802025ac:	fca43c23          	sd	a0,-40(s0)
    802025b0:	fe042623          	sw	zero,-20(s0)
    802025b4:	a83d                	j	802025f2 <init_stdio+0x4e>
    802025b6:	fd843703          	ld	a4,-40(s0)
    802025ba:	fec42783          	lw	a5,-20(s0)
    802025be:	07d9                	addi	a5,a5,22
    802025c0:	078e                	slli	a5,a5,0x3
    802025c2:	97ba                	add	a5,a5,a4
    802025c4:	639c                	ld	a5,0(a5)
    802025c6:	c399                	beqz	a5,802025cc <init_stdio+0x28>
    802025c8:	57fd                	li	a5,-1
    802025ca:	a825                	j	80202602 <init_stdio+0x5e>
    802025cc:	fec42783          	lw	a5,-20(s0)
    802025d0:	853e                	mv	a0,a5
    802025d2:	32b010ef          	jal	802040fc <stdio_init>
    802025d6:	86aa                	mv	a3,a0
    802025d8:	fd843703          	ld	a4,-40(s0)
    802025dc:	fec42783          	lw	a5,-20(s0)
    802025e0:	07d9                	addi	a5,a5,22
    802025e2:	078e                	slli	a5,a5,0x3
    802025e4:	97ba                	add	a5,a5,a4
    802025e6:	e394                	sd	a3,0(a5)
    802025e8:	fec42783          	lw	a5,-20(s0)
    802025ec:	2785                	addiw	a5,a5,1
    802025ee:	fef42623          	sw	a5,-20(s0)
    802025f2:	fec42783          	lw	a5,-20(s0)
    802025f6:	0007871b          	sext.w	a4,a5
    802025fa:	4789                	li	a5,2
    802025fc:	fae7dde3          	bge	a5,a4,802025b6 <init_stdio+0x12>
    80202600:	4781                	li	a5,0
    80202602:	853e                	mv	a0,a5
    80202604:	70a2                	ld	ra,40(sp)
    80202606:	7402                	ld	s0,32(sp)
    80202608:	6145                	addi	sp,sp,48
    8020260a:	8082                	ret

000000008020260c <get_cur_proc>:
    8020260c:	1141                	addi	sp,sp,-16
    8020260e:	e406                	sd	ra,8(sp)
    80202610:	e022                	sd	s0,0(sp)
    80202612:	0800                	addi	s0,sp,16
    80202614:	00495797          	auipc	a5,0x495
    80202618:	9fc78793          	addi	a5,a5,-1540 # 80697010 <current_proc>
    8020261c:	639c                	ld	a5,0(a5)
    8020261e:	853e                	mv	a0,a5
    80202620:	60a2                	ld	ra,8(sp)
    80202622:	6402                	ld	s0,0(sp)
    80202624:	0141                	addi	sp,sp,16
    80202626:	8082                	ret

0000000080202628 <fetch_task>:
    80202628:	1101                	addi	sp,sp,-32
    8020262a:	ec06                	sd	ra,24(sp)
    8020262c:	e822                	sd	s0,16(sp)
    8020262e:	1000                	addi	s0,sp,32
    80202630:	00447517          	auipc	a0,0x447
    80202634:	b0050513          	addi	a0,a0,-1280 # 80649130 <task_queue>
    80202638:	752010ef          	jal	80203d8a <pop_queue>
    8020263c:	87aa                	mv	a5,a0
    8020263e:	fef42623          	sw	a5,-20(s0)
    80202642:	fec42783          	lw	a5,-20(s0)
    80202646:	2781                	sext.w	a5,a5
    80202648:	0007da63          	bgez	a5,8020265c <fetch_task+0x34>
    8020264c:	00006517          	auipc	a0,0x6
    80202650:	f5c50513          	addi	a0,a0,-164 # 802085a8 <rodata_start+0x5a8>
    80202654:	b4ffe0ef          	jal	802011a2 <printk>
    80202658:	4781                	li	a5,0
    8020265a:	a821                	j	80202672 <fetch_task+0x4a>
    8020265c:	fec42703          	lw	a4,-20(s0)
    80202660:	13000793          	li	a5,304
    80202664:	02f70733          	mul	a4,a4,a5
    80202668:	00021797          	auipc	a5,0x21
    8020266c:	99878793          	addi	a5,a5,-1640 # 80223000 <proc>
    80202670:	97ba                	add	a5,a5,a4
    80202672:	853e                	mv	a0,a5
    80202674:	60e2                	ld	ra,24(sp)
    80202676:	6442                	ld	s0,16(sp)
    80202678:	6105                	addi	sp,sp,32
    8020267a:	8082                	ret

000000008020267c <add_task>:
    8020267c:	1101                	addi	sp,sp,-32
    8020267e:	ec06                	sd	ra,24(sp)
    80202680:	e822                	sd	s0,16(sp)
    80202682:	1000                	addi	s0,sp,32
    80202684:	fea43423          	sd	a0,-24(s0)
    80202688:	fe843703          	ld	a4,-24(s0)
    8020268c:	00021797          	auipc	a5,0x21
    80202690:	97478793          	addi	a5,a5,-1676 # 80223000 <proc>
    80202694:	40f707b3          	sub	a5,a4,a5
    80202698:	4047d713          	srai	a4,a5,0x4
    8020269c:	00006797          	auipc	a5,0x6
    802026a0:	06c78793          	addi	a5,a5,108 # 80208708 <rodata_start+0x708>
    802026a4:	639c                	ld	a5,0(a5)
    802026a6:	02f707b3          	mul	a5,a4,a5
    802026aa:	2781                	sext.w	a5,a5
    802026ac:	85be                	mv	a1,a5
    802026ae:	00447517          	auipc	a0,0x447
    802026b2:	a8250513          	addi	a0,a0,-1406 # 80649130 <task_queue>
    802026b6:	634010ef          	jal	80203cea <push_queue>
    802026ba:	0001                	nop
    802026bc:	60e2                	ld	ra,24(sp)
    802026be:	6442                	ld	s0,16(sp)
    802026c0:	6105                	addi	sp,sp,32
    802026c2:	8082                	ret

00000000802026c4 <scheduler>:
    802026c4:	1101                	addi	sp,sp,-32
    802026c6:	ec06                	sd	ra,24(sp)
    802026c8:	e822                	sd	s0,16(sp)
    802026ca:	1000                	addi	s0,sp,32
    802026cc:	f5dff0ef          	jal	80202628 <fetch_task>
    802026d0:	fea43423          	sd	a0,-24(s0)
    802026d4:	fe843783          	ld	a5,-24(s0)
    802026d8:	e799                	bnez	a5,802026e6 <scheduler+0x22>
    802026da:	00006517          	auipc	a0,0x6
    802026de:	ef650513          	addi	a0,a0,-266 # 802085d0 <rodata_start+0x5d0>
    802026e2:	acafe0ef          	jal	802009ac <panic>
    802026e6:	fe843703          	ld	a4,-24(s0)
    802026ea:	00021797          	auipc	a5,0x21
    802026ee:	91678793          	addi	a5,a5,-1770 # 80223000 <proc>
    802026f2:	40f707b3          	sub	a5,a4,a5
    802026f6:	4047d713          	srai	a4,a5,0x4
    802026fa:	00006797          	auipc	a5,0x6
    802026fe:	00e78793          	addi	a5,a5,14 # 80208708 <rodata_start+0x708>
    80202702:	639c                	ld	a5,0(a5)
    80202704:	02f707b3          	mul	a5,a4,a5
    80202708:	85be                	mv	a1,a5
    8020270a:	00006517          	auipc	a0,0x6
    8020270e:	ede50513          	addi	a0,a0,-290 # 802085e8 <rodata_start+0x5e8>
    80202712:	a91fe0ef          	jal	802011a2 <printk>
    80202716:	fe843783          	ld	a5,-24(s0)
    8020271a:	4711                	li	a4,4
    8020271c:	c398                	sw	a4,0(a5)
    8020271e:	00495797          	auipc	a5,0x495
    80202722:	8f278793          	addi	a5,a5,-1806 # 80697010 <current_proc>
    80202726:	fe843703          	ld	a4,-24(s0)
    8020272a:	e398                	sd	a4,0(a5)
    8020272c:	fe843783          	ld	a5,-24(s0)
    80202730:	02878793          	addi	a5,a5,40
    80202734:	85be                	mv	a1,a5
    80202736:	00447517          	auipc	a0,0x447
    8020273a:	8f250513          	addi	a0,a0,-1806 # 80649028 <os_proc+0x28>
    8020273e:	babff0ef          	jal	802022e8 <__switch>
    80202742:	b769                	j	802026cc <scheduler+0x8>

0000000080202744 <sched>:
    80202744:	1101                	addi	sp,sp,-32
    80202746:	ec06                	sd	ra,24(sp)
    80202748:	e822                	sd	s0,16(sp)
    8020274a:	1000                	addi	s0,sp,32
    8020274c:	ec1ff0ef          	jal	8020260c <get_cur_proc>
    80202750:	fea43423          	sd	a0,-24(s0)
    80202754:	fe843783          	ld	a5,-24(s0)
    80202758:	4398                	lw	a4,0(a5)
    8020275a:	4791                	li	a5,4
    8020275c:	00f71863          	bne	a4,a5,8020276c <sched+0x28>
    80202760:	00006517          	auipc	a0,0x6
    80202764:	eb050513          	addi	a0,a0,-336 # 80208610 <rodata_start+0x610>
    80202768:	a44fe0ef          	jal	802009ac <panic>
    8020276c:	fe843783          	ld	a5,-24(s0)
    80202770:	02878793          	addi	a5,a5,40
    80202774:	00447597          	auipc	a1,0x447
    80202778:	8b458593          	addi	a1,a1,-1868 # 80649028 <os_proc+0x28>
    8020277c:	853e                	mv	a0,a5
    8020277e:	b6bff0ef          	jal	802022e8 <__switch>
    80202782:	0001                	nop
    80202784:	60e2                	ld	ra,24(sp)
    80202786:	6442                	ld	s0,16(sp)
    80202788:	6105                	addi	sp,sp,32
    8020278a:	8082                	ret

000000008020278c <yield>:
    8020278c:	1141                	addi	sp,sp,-16
    8020278e:	e406                	sd	ra,8(sp)
    80202790:	e022                	sd	s0,0(sp)
    80202792:	0800                	addi	s0,sp,16
    80202794:	00495797          	auipc	a5,0x495
    80202798:	87c78793          	addi	a5,a5,-1924 # 80697010 <current_proc>
    8020279c:	639c                	ld	a5,0(a5)
    8020279e:	4398                	lw	a4,0(a5)
    802027a0:	4791                	li	a5,4
    802027a2:	00f71963          	bne	a4,a5,802027b4 <yield+0x28>
    802027a6:	00495797          	auipc	a5,0x495
    802027aa:	86a78793          	addi	a5,a5,-1942 # 80697010 <current_proc>
    802027ae:	639c                	ld	a5,0(a5)
    802027b0:	470d                	li	a4,3
    802027b2:	c398                	sw	a4,0(a5)
    802027b4:	00495797          	auipc	a5,0x495
    802027b8:	85c78793          	addi	a5,a5,-1956 # 80697010 <current_proc>
    802027bc:	639c                	ld	a5,0(a5)
    802027be:	853e                	mv	a0,a5
    802027c0:	ebdff0ef          	jal	8020267c <add_task>
    802027c4:	f81ff0ef          	jal	80202744 <sched>
    802027c8:	0001                	nop
    802027ca:	60a2                	ld	ra,8(sp)
    802027cc:	6402                	ld	s0,0(sp)
    802027ce:	0141                	addi	sp,sp,16
    802027d0:	8082                	ret

00000000802027d2 <freepagetable>:
    802027d2:	1101                	addi	sp,sp,-32
    802027d4:	ec06                	sd	ra,24(sp)
    802027d6:	e822                	sd	s0,16(sp)
    802027d8:	1000                	addi	s0,sp,32
    802027da:	fea43423          	sd	a0,-24(s0)
    802027de:	feb43023          	sd	a1,-32(s0)
    802027e2:	4681                	li	a3,0
    802027e4:	4605                	li	a2,1
    802027e6:	040007b7          	lui	a5,0x4000
    802027ea:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    802027ec:	00c79593          	slli	a1,a5,0xc
    802027f0:	fe843503          	ld	a0,-24(s0)
    802027f4:	303000ef          	jal	802032f6 <uvmunmap>
    802027f8:	4681                	li	a3,0
    802027fa:	4605                	li	a2,1
    802027fc:	020007b7          	lui	a5,0x2000
    80202800:	17fd                	addi	a5,a5,-1 # 1ffffff <n+0x1ffffdf>
    80202802:	00d79593          	slli	a1,a5,0xd
    80202806:	fe843503          	ld	a0,-24(s0)
    8020280a:	2ed000ef          	jal	802032f6 <uvmunmap>
    8020280e:	fe043583          	ld	a1,-32(s0)
    80202812:	fe843503          	ld	a0,-24(s0)
    80202816:	457000ef          	jal	8020346c <uvmfree>
    8020281a:	0001                	nop
    8020281c:	60e2                	ld	ra,24(sp)
    8020281e:	6442                	ld	s0,16(sp)
    80202820:	6105                	addi	sp,sp,32
    80202822:	8082                	ret

0000000080202824 <freeproc>:
    80202824:	1101                	addi	sp,sp,-32
    80202826:	ec06                	sd	ra,24(sp)
    80202828:	e822                	sd	s0,16(sp)
    8020282a:	1000                	addi	s0,sp,32
    8020282c:	fea43423          	sd	a0,-24(s0)
    80202830:	fe843783          	ld	a5,-24(s0)
    80202834:	679c                	ld	a5,8(a5)
    80202836:	cb99                	beqz	a5,8020284c <freeproc+0x28>
    80202838:	fe843783          	ld	a5,-24(s0)
    8020283c:	6798                	ld	a4,8(a5)
    8020283e:	fe843783          	ld	a5,-24(s0)
    80202842:	6fdc                	ld	a5,152(a5)
    80202844:	85be                	mv	a1,a5
    80202846:	853a                	mv	a0,a4
    80202848:	f8bff0ef          	jal	802027d2 <freepagetable>
    8020284c:	fe843783          	ld	a5,-24(s0)
    80202850:	0007b423          	sd	zero,8(a5)
    80202854:	fe843783          	ld	a5,-24(s0)
    80202858:	0007a023          	sw	zero,0(a5)
    8020285c:	0001                	nop
    8020285e:	60e2                	ld	ra,24(sp)
    80202860:	6442                	ld	s0,16(sp)
    80202862:	6105                	addi	sp,sp,32
    80202864:	8082                	ret

0000000080202866 <fork>:
    80202866:	1101                	addi	sp,sp,-32
    80202868:	ec06                	sd	ra,24(sp)
    8020286a:	e822                	sd	s0,16(sp)
    8020286c:	1000                	addi	s0,sp,32
    8020286e:	d9fff0ef          	jal	8020260c <get_cur_proc>
    80202872:	fea43423          	sd	a0,-24(s0)
    80202876:	c33ff0ef          	jal	802024a8 <allocate_proc>
    8020287a:	fea43023          	sd	a0,-32(s0)
    8020287e:	fe043783          	ld	a5,-32(s0)
    80202882:	e799                	bnez	a5,80202890 <fork+0x2a>
    80202884:	00006517          	auipc	a0,0x6
    80202888:	d9c50513          	addi	a0,a0,-612 # 80208620 <rodata_start+0x620>
    8020288c:	920fe0ef          	jal	802009ac <panic>
    80202890:	fe843783          	ld	a5,-24(s0)
    80202894:	6798                	ld	a4,8(a5)
    80202896:	fe043783          	ld	a5,-32(s0)
    8020289a:	6794                	ld	a3,8(a5)
    8020289c:	fe843783          	ld	a5,-24(s0)
    802028a0:	6fdc                	ld	a5,152(a5)
    802028a2:	863e                	mv	a2,a5
    802028a4:	85b6                	mv	a1,a3
    802028a6:	853a                	mv	a0,a4
    802028a8:	637000ef          	jal	802036de <uvmcopy>
    802028ac:	87aa                	mv	a5,a0
    802028ae:	0007d863          	bgez	a5,802028be <fork+0x58>
    802028b2:	00006517          	auipc	a0,0x6
    802028b6:	d7e50513          	addi	a0,a0,-642 # 80208630 <rodata_start+0x630>
    802028ba:	8f2fe0ef          	jal	802009ac <panic>
    802028be:	fe843783          	ld	a5,-24(s0)
    802028c2:	6fd8                	ld	a4,152(a5)
    802028c4:	fe043783          	ld	a5,-32(s0)
    802028c8:	efd8                	sd	a4,152(a5)
    802028ca:	fe843783          	ld	a5,-24(s0)
    802028ce:	7398                	ld	a4,32(a5)
    802028d0:	fe043783          	ld	a5,-32(s0)
    802028d4:	739c                	ld	a5,32(a5)
    802028d6:	86be                	mv	a3,a5
    802028d8:	12800793          	li	a5,296
    802028dc:	863e                	mv	a2,a5
    802028de:	85ba                	mv	a1,a4
    802028e0:	8536                	mv	a0,a3
    802028e2:	f97fe0ef          	jal	80201878 <memcpy>
    802028e6:	fe043783          	ld	a5,-32(s0)
    802028ea:	739c                	ld	a5,32(a5)
    802028ec:	0407b823          	sd	zero,80(a5)
    802028f0:	fe043783          	ld	a5,-32(s0)
    802028f4:	fe843703          	ld	a4,-24(s0)
    802028f8:	f3d8                	sd	a4,160(a5)
    802028fa:	fe043783          	ld	a5,-32(s0)
    802028fe:	470d                	li	a4,3
    80202900:	c398                	sw	a4,0(a5)
    80202902:	fe043503          	ld	a0,-32(s0)
    80202906:	d77ff0ef          	jal	8020267c <add_task>
    8020290a:	fe043783          	ld	a5,-32(s0)
    8020290e:	43dc                	lw	a5,4(a5)
    80202910:	85be                	mv	a1,a5
    80202912:	00006517          	auipc	a0,0x6
    80202916:	d2e50513          	addi	a0,a0,-722 # 80208640 <rodata_start+0x640>
    8020291a:	889fe0ef          	jal	802011a2 <printk>
    8020291e:	fe043783          	ld	a5,-32(s0)
    80202922:	43dc                	lw	a5,4(a5)
    80202924:	853e                	mv	a0,a5
    80202926:	60e2                	ld	ra,24(sp)
    80202928:	6442                	ld	s0,16(sp)
    8020292a:	6105                	addi	sp,sp,32
    8020292c:	8082                	ret

000000008020292e <push_argv>:
    8020292e:	714d                	addi	sp,sp,-336
    80202930:	e686                	sd	ra,328(sp)
    80202932:	e2a2                	sd	s0,320(sp)
    80202934:	fe26                	sd	s1,312(sp)
    80202936:	fa4a                	sd	s2,304(sp)
    80202938:	0a80                	addi	s0,sp,336
    8020293a:	eaa43c23          	sd	a0,-328(s0)
    8020293e:	eab43823          	sd	a1,-336(s0)
    80202942:	eb843783          	ld	a5,-328(s0)
    80202946:	6f98                	ld	a4,24(a5)
    80202948:	6785                	lui	a5,0x1
    8020294a:	97ba                	add	a5,a5,a4
    8020294c:	fcf43823          	sd	a5,-48(s0)
    80202950:	eb843783          	ld	a5,-328(s0)
    80202954:	6f9c                	ld	a5,24(a5)
    80202956:	fcf43423          	sd	a5,-56(s0)
    8020295a:	fc043c23          	sd	zero,-40(s0)
    8020295e:	a8d1                	j	80202a32 <push_argv+0x104>
    80202960:	fd843703          	ld	a4,-40(s0)
    80202964:	47fd                	li	a5,31
    80202966:	00e7f863          	bgeu	a5,a4,80202976 <push_argv+0x48>
    8020296a:	00006517          	auipc	a0,0x6
    8020296e:	cee50513          	addi	a0,a0,-786 # 80208658 <rodata_start+0x658>
    80202972:	83afe0ef          	jal	802009ac <panic>
    80202976:	fd843783          	ld	a5,-40(s0)
    8020297a:	078e                	slli	a5,a5,0x3
    8020297c:	eb043703          	ld	a4,-336(s0)
    80202980:	97ba                	add	a5,a5,a4
    80202982:	639c                	ld	a5,0(a5)
    80202984:	853e                	mv	a0,a5
    80202986:	eb9fe0ef          	jal	8020183e <strlen>
    8020298a:	87aa                	mv	a5,a0
    8020298c:	2785                	addiw	a5,a5,1 # 1001 <n+0xfe1>
    8020298e:	2781                	sext.w	a5,a5
    80202990:	1782                	slli	a5,a5,0x20
    80202992:	9381                	srli	a5,a5,0x20
    80202994:	fd043703          	ld	a4,-48(s0)
    80202998:	40f707b3          	sub	a5,a4,a5
    8020299c:	fcf43823          	sd	a5,-48(s0)
    802029a0:	fd043783          	ld	a5,-48(s0)
    802029a4:	9bc1                	andi	a5,a5,-16
    802029a6:	fcf43823          	sd	a5,-48(s0)
    802029aa:	fd043703          	ld	a4,-48(s0)
    802029ae:	fc843783          	ld	a5,-56(s0)
    802029b2:	00f77863          	bgeu	a4,a5,802029c2 <push_argv+0x94>
    802029b6:	00006517          	auipc	a0,0x6
    802029ba:	ca250513          	addi	a0,a0,-862 # 80208658 <rodata_start+0x658>
    802029be:	feffd0ef          	jal	802009ac <panic>
    802029c2:	eb843783          	ld	a5,-328(s0)
    802029c6:	6784                	ld	s1,8(a5)
    802029c8:	fd843783          	ld	a5,-40(s0)
    802029cc:	078e                	slli	a5,a5,0x3
    802029ce:	eb043703          	ld	a4,-336(s0)
    802029d2:	97ba                	add	a5,a5,a4
    802029d4:	0007b903          	ld	s2,0(a5)
    802029d8:	fd843783          	ld	a5,-40(s0)
    802029dc:	078e                	slli	a5,a5,0x3
    802029de:	eb043703          	ld	a4,-336(s0)
    802029e2:	97ba                	add	a5,a5,a4
    802029e4:	639c                	ld	a5,0(a5)
    802029e6:	853e                	mv	a0,a5
    802029e8:	e57fe0ef          	jal	8020183e <strlen>
    802029ec:	87aa                	mv	a5,a0
    802029ee:	2785                	addiw	a5,a5,1
    802029f0:	2781                	sext.w	a5,a5
    802029f2:	1782                	slli	a5,a5,0x20
    802029f4:	9381                	srli	a5,a5,0x20
    802029f6:	86be                	mv	a3,a5
    802029f8:	864a                	mv	a2,s2
    802029fa:	fd043583          	ld	a1,-48(s0)
    802029fe:	8526                	mv	a0,s1
    80202a00:	74f000ef          	jal	8020394e <copyout>
    80202a04:	87aa                	mv	a5,a0
    80202a06:	0007d863          	bgez	a5,80202a16 <push_argv+0xe8>
    80202a0a:	00006517          	auipc	a0,0x6
    80202a0e:	c4e50513          	addi	a0,a0,-946 # 80208658 <rodata_start+0x658>
    80202a12:	f9bfd0ef          	jal	802009ac <panic>
    80202a16:	fd843703          	ld	a4,-40(s0)
    80202a1a:	ec040793          	addi	a5,s0,-320
    80202a1e:	070e                	slli	a4,a4,0x3
    80202a20:	97ba                	add	a5,a5,a4
    80202a22:	fd043703          	ld	a4,-48(s0)
    80202a26:	e398                	sd	a4,0(a5)
    80202a28:	fd843783          	ld	a5,-40(s0)
    80202a2c:	0785                	addi	a5,a5,1
    80202a2e:	fcf43c23          	sd	a5,-40(s0)
    80202a32:	fd843783          	ld	a5,-40(s0)
    80202a36:	078e                	slli	a5,a5,0x3
    80202a38:	eb043703          	ld	a4,-336(s0)
    80202a3c:	97ba                	add	a5,a5,a4
    80202a3e:	639c                	ld	a5,0(a5)
    80202a40:	f385                	bnez	a5,80202960 <push_argv+0x32>
    80202a42:	fd843703          	ld	a4,-40(s0)
    80202a46:	ec040793          	addi	a5,s0,-320
    80202a4a:	070e                	slli	a4,a4,0x3
    80202a4c:	97ba                	add	a5,a5,a4
    80202a4e:	0007b023          	sd	zero,0(a5)
    80202a52:	fd843783          	ld	a5,-40(s0)
    80202a56:	0785                	addi	a5,a5,1
    80202a58:	078e                	slli	a5,a5,0x3
    80202a5a:	fd043703          	ld	a4,-48(s0)
    80202a5e:	40f707b3          	sub	a5,a4,a5
    80202a62:	fcf43823          	sd	a5,-48(s0)
    80202a66:	fd043783          	ld	a5,-48(s0)
    80202a6a:	9bc1                	andi	a5,a5,-16
    80202a6c:	fcf43823          	sd	a5,-48(s0)
    80202a70:	fd043703          	ld	a4,-48(s0)
    80202a74:	fc843783          	ld	a5,-56(s0)
    80202a78:	00f77863          	bgeu	a4,a5,80202a88 <push_argv+0x15a>
    80202a7c:	00006517          	auipc	a0,0x6
    80202a80:	bdc50513          	addi	a0,a0,-1060 # 80208658 <rodata_start+0x658>
    80202a84:	f29fd0ef          	jal	802009ac <panic>
    80202a88:	eb843783          	ld	a5,-328(s0)
    80202a8c:	6798                	ld	a4,8(a5)
    80202a8e:	fd843783          	ld	a5,-40(s0)
    80202a92:	0785                	addi	a5,a5,1
    80202a94:	00379693          	slli	a3,a5,0x3
    80202a98:	ec040793          	addi	a5,s0,-320
    80202a9c:	863e                	mv	a2,a5
    80202a9e:	fd043583          	ld	a1,-48(s0)
    80202aa2:	853a                	mv	a0,a4
    80202aa4:	6ab000ef          	jal	8020394e <copyout>
    80202aa8:	87aa                	mv	a5,a0
    80202aaa:	0007d863          	bgez	a5,80202aba <push_argv+0x18c>
    80202aae:	00006517          	auipc	a0,0x6
    80202ab2:	baa50513          	addi	a0,a0,-1110 # 80208658 <rodata_start+0x658>
    80202ab6:	ef7fd0ef          	jal	802009ac <panic>
    80202aba:	eb843783          	ld	a5,-328(s0)
    80202abe:	739c                	ld	a5,32(a5)
    80202ac0:	fd043703          	ld	a4,-48(s0)
    80202ac4:	efb8                	sd	a4,88(a5)
    80202ac6:	eb843783          	ld	a5,-328(s0)
    80202aca:	739c                	ld	a5,32(a5)
    80202acc:	fd043703          	ld	a4,-48(s0)
    80202ad0:	eb98                	sd	a4,16(a5)
    80202ad2:	fd843783          	ld	a5,-40(s0)
    80202ad6:	2781                	sext.w	a5,a5
    80202ad8:	853e                	mv	a0,a5
    80202ada:	60b6                	ld	ra,328(sp)
    80202adc:	6416                	ld	s0,320(sp)
    80202ade:	74f2                	ld	s1,312(sp)
    80202ae0:	7952                	ld	s2,304(sp)
    80202ae2:	6171                	addi	sp,sp,336
    80202ae4:	8082                	ret

0000000080202ae6 <exec>:
    80202ae6:	7179                	addi	sp,sp,-48
    80202ae8:	f406                	sd	ra,40(sp)
    80202aea:	f022                	sd	s0,32(sp)
    80202aec:	1800                	addi	s0,sp,48
    80202aee:	fca43c23          	sd	a0,-40(s0)
    80202af2:	fd843503          	ld	a0,-40(s0)
    80202af6:	e1cfd0ef          	jal	80200112 <get_id_by_name>
    80202afa:	87aa                	mv	a5,a0
    80202afc:	fef42623          	sw	a5,-20(s0)
    80202b00:	fec42783          	lw	a5,-20(s0)
    80202b04:	2781                	sext.w	a5,a5
    80202b06:	0007d463          	bgez	a5,80202b0e <exec+0x28>
    80202b0a:	57fd                	li	a5,-1
    80202b0c:	a82d                	j	80202b46 <exec+0x60>
    80202b0e:	affff0ef          	jal	8020260c <get_cur_proc>
    80202b12:	fea43023          	sd	a0,-32(s0)
    80202b16:	fe043783          	ld	a5,-32(s0)
    80202b1a:	6798                	ld	a4,8(a5)
    80202b1c:	fe043783          	ld	a5,-32(s0)
    80202b20:	6fdc                	ld	a5,152(a5)
    80202b22:	4685                	li	a3,1
    80202b24:	863e                	mv	a2,a5
    80202b26:	4581                	li	a1,0
    80202b28:	853a                	mv	a0,a4
    80202b2a:	7cc000ef          	jal	802032f6 <uvmunmap>
    80202b2e:	fe043783          	ld	a5,-32(s0)
    80202b32:	0807bc23          	sd	zero,152(a5)
    80202b36:	fec42783          	lw	a5,-20(s0)
    80202b3a:	fe043583          	ld	a1,-32(s0)
    80202b3e:	853e                	mv	a0,a5
    80202b40:	891fd0ef          	jal	802003d0 <loader>
    80202b44:	4781                	li	a5,0
    80202b46:	853e                	mv	a0,a5
    80202b48:	70a2                	ld	ra,40(sp)
    80202b4a:	7402                	ld	s0,32(sp)
    80202b4c:	6145                	addi	sp,sp,48
    80202b4e:	8082                	ret

0000000080202b50 <wait>:
    80202b50:	7139                	addi	sp,sp,-64
    80202b52:	fc06                	sd	ra,56(sp)
    80202b54:	f822                	sd	s0,48(sp)
    80202b56:	0080                	addi	s0,sp,64
    80202b58:	87aa                	mv	a5,a0
    80202b5a:	fcb43023          	sd	a1,-64(s0)
    80202b5e:	fcf42623          	sw	a5,-52(s0)
    80202b62:	aabff0ef          	jal	8020260c <get_cur_proc>
    80202b66:	fca43c23          	sd	a0,-40(s0)
    80202b6a:	fe042223          	sw	zero,-28(s0)
    80202b6e:	00020797          	auipc	a5,0x20
    80202b72:	49278793          	addi	a5,a5,1170 # 80223000 <proc>
    80202b76:	fef43423          	sd	a5,-24(s0)
    80202b7a:	a051                	j	80202bfe <wait+0xae>
    80202b7c:	fe843783          	ld	a5,-24(s0)
    80202b80:	439c                	lw	a5,0(a5)
    80202b82:	cba5                	beqz	a5,80202bf2 <wait+0xa2>
    80202b84:	fe843783          	ld	a5,-24(s0)
    80202b88:	73dc                	ld	a5,160(a5)
    80202b8a:	fd843703          	ld	a4,-40(s0)
    80202b8e:	06f71263          	bne	a4,a5,80202bf2 <wait+0xa2>
    80202b92:	fcc42783          	lw	a5,-52(s0)
    80202b96:	2781                	sext.w	a5,a5
    80202b98:	00f05a63          	blez	a5,80202bac <wait+0x5c>
    80202b9c:	fe843783          	ld	a5,-24(s0)
    80202ba0:	43dc                	lw	a5,4(a5)
    80202ba2:	fcc42703          	lw	a4,-52(s0)
    80202ba6:	2701                	sext.w	a4,a4
    80202ba8:	04f71563          	bne	a4,a5,80202bf2 <wait+0xa2>
    80202bac:	00006517          	auipc	a0,0x6
    80202bb0:	ab450513          	addi	a0,a0,-1356 # 80208660 <rodata_start+0x660>
    80202bb4:	deefe0ef          	jal	802011a2 <printk>
    80202bb8:	4785                	li	a5,1
    80202bba:	fef42223          	sw	a5,-28(s0)
    80202bbe:	fe843783          	ld	a5,-24(s0)
    80202bc2:	4398                	lw	a4,0(a5)
    80202bc4:	4795                	li	a5,5
    80202bc6:	02f71663          	bne	a4,a5,80202bf2 <wait+0xa2>
    80202bca:	fe843783          	ld	a5,-24(s0)
    80202bce:	0007a023          	sw	zero,0(a5)
    80202bd2:	fe843783          	ld	a5,-24(s0)
    80202bd6:	43dc                	lw	a5,4(a5)
    80202bd8:	fcf42623          	sw	a5,-52(s0)
    80202bdc:	fe843783          	ld	a5,-24(s0)
    80202be0:	77dc                	ld	a5,168(a5)
    80202be2:	0007871b          	sext.w	a4,a5
    80202be6:	fc043783          	ld	a5,-64(s0)
    80202bea:	c398                	sw	a4,0(a5)
    80202bec:	fcc42783          	lw	a5,-52(s0)
    80202bf0:	a8a9                	j	80202c4a <wait+0xfa>
    80202bf2:	fe843783          	ld	a5,-24(s0)
    80202bf6:	13078793          	addi	a5,a5,304
    80202bfa:	fef43423          	sd	a5,-24(s0)
    80202bfe:	fe843703          	ld	a4,-24(s0)
    80202c02:	00046797          	auipc	a5,0x46
    80202c06:	3fe78793          	addi	a5,a5,1022 # 80249000 <kstack>
    80202c0a:	f6f769e3          	bltu	a4,a5,80202b7c <wait+0x2c>
    80202c0e:	fe442783          	lw	a5,-28(s0)
    80202c12:	2781                	sext.w	a5,a5
    80202c14:	e399                	bnez	a5,80202c1a <wait+0xca>
    80202c16:	57fd                	li	a5,-1
    80202c18:	a80d                	j	80202c4a <wait+0xfa>
    80202c1a:	fd843783          	ld	a5,-40(s0)
    80202c1e:	470d                	li	a4,3
    80202c20:	c398                	sw	a4,0(a5)
    80202c22:	fc043783          	ld	a5,-64(s0)
    80202c26:	4398                	lw	a4,0(a5)
    80202c28:	fcc42783          	lw	a5,-52(s0)
    80202c2c:	863a                	mv	a2,a4
    80202c2e:	85be                	mv	a1,a5
    80202c30:	00006517          	auipc	a0,0x6
    80202c34:	a4050513          	addi	a0,a0,-1472 # 80208670 <rodata_start+0x670>
    80202c38:	d6afe0ef          	jal	802011a2 <printk>
    80202c3c:	fd843503          	ld	a0,-40(s0)
    80202c40:	a3dff0ef          	jal	8020267c <add_task>
    80202c44:	b01ff0ef          	jal	80202744 <sched>
    80202c48:	b70d                	j	80202b6a <wait+0x1a>
    80202c4a:	853e                	mv	a0,a5
    80202c4c:	70e2                	ld	ra,56(sp)
    80202c4e:	7442                	ld	s0,48(sp)
    80202c50:	6121                	addi	sp,sp,64
    80202c52:	8082                	ret

0000000080202c54 <exit>:
    80202c54:	7179                	addi	sp,sp,-48
    80202c56:	f406                	sd	ra,40(sp)
    80202c58:	f022                	sd	s0,32(sp)
    80202c5a:	1800                	addi	s0,sp,48
    80202c5c:	87aa                	mv	a5,a0
    80202c5e:	fcf42e23          	sw	a5,-36(s0)
    80202c62:	9abff0ef          	jal	8020260c <get_cur_proc>
    80202c66:	fea43023          	sd	a0,-32(s0)
    80202c6a:	fdc42703          	lw	a4,-36(s0)
    80202c6e:	fe043783          	ld	a5,-32(s0)
    80202c72:	f7d8                	sd	a4,168(a5)
    80202c74:	fe043783          	ld	a5,-32(s0)
    80202c78:	43dc                	lw	a5,4(a5)
    80202c7a:	fdc42703          	lw	a4,-36(s0)
    80202c7e:	863a                	mv	a2,a4
    80202c80:	85be                	mv	a1,a5
    80202c82:	00006517          	auipc	a0,0x6
    80202c86:	a1650513          	addi	a0,a0,-1514 # 80208698 <rodata_start+0x698>
    80202c8a:	d18fe0ef          	jal	802011a2 <printk>
    80202c8e:	fe043503          	ld	a0,-32(s0)
    80202c92:	b93ff0ef          	jal	80202824 <freeproc>
    80202c96:	fe043783          	ld	a5,-32(s0)
    80202c9a:	73dc                	ld	a5,160(a5)
    80202c9c:	c789                	beqz	a5,80202ca6 <exit+0x52>
    80202c9e:	fe043783          	ld	a5,-32(s0)
    80202ca2:	4715                	li	a4,5
    80202ca4:	c398                	sw	a4,0(a5)
    80202ca6:	00020797          	auipc	a5,0x20
    80202caa:	35a78793          	addi	a5,a5,858 # 80223000 <proc>
    80202cae:	fef43423          	sd	a5,-24(s0)
    80202cb2:	a015                	j	80202cd6 <exit+0x82>
    80202cb4:	fe843783          	ld	a5,-24(s0)
    80202cb8:	73dc                	ld	a5,160(a5)
    80202cba:	fe043703          	ld	a4,-32(s0)
    80202cbe:	00f71663          	bne	a4,a5,80202cca <exit+0x76>
    80202cc2:	fe843783          	ld	a5,-24(s0)
    80202cc6:	0a07b023          	sd	zero,160(a5)
    80202cca:	fe843783          	ld	a5,-24(s0)
    80202cce:	13078793          	addi	a5,a5,304
    80202cd2:	fef43423          	sd	a5,-24(s0)
    80202cd6:	fe843703          	ld	a4,-24(s0)
    80202cda:	00046797          	auipc	a5,0x46
    80202cde:	32678793          	addi	a5,a5,806 # 80249000 <kstack>
    80202ce2:	fcf769e3          	bltu	a4,a5,80202cb4 <exit+0x60>
    80202ce6:	a5fff0ef          	jal	80202744 <sched>
    80202cea:	0001                	nop
    80202cec:	70a2                	ld	ra,40(sp)
    80202cee:	7402                	ld	s0,32(sp)
    80202cf0:	6145                	addi	sp,sp,48
    80202cf2:	8082                	ret

0000000080202cf4 <fdalloc>:
    80202cf4:	7179                	addi	sp,sp,-48
    80202cf6:	f406                	sd	ra,40(sp)
    80202cf8:	f022                	sd	s0,32(sp)
    80202cfa:	1800                	addi	s0,sp,48
    80202cfc:	fca43c23          	sd	a0,-40(s0)
    80202d00:	fd843783          	ld	a5,-40(s0)
    80202d04:	439c                	lw	a5,0(a5)
    80202d06:	863e                	mv	a2,a5
    80202d08:	fd843583          	ld	a1,-40(s0)
    80202d0c:	00006517          	auipc	a0,0x6
    80202d10:	9bc50513          	addi	a0,a0,-1604 # 802086c8 <rodata_start+0x6c8>
    80202d14:	c8efe0ef          	jal	802011a2 <printk>
    80202d18:	8f5ff0ef          	jal	8020260c <get_cur_proc>
    80202d1c:	fea43023          	sd	a0,-32(s0)
    80202d20:	fe042623          	sw	zero,-20(s0)
    80202d24:	a8b1                	j	80202d80 <fdalloc+0x8c>
    80202d26:	fe043703          	ld	a4,-32(s0)
    80202d2a:	fec42783          	lw	a5,-20(s0)
    80202d2e:	07d9                	addi	a5,a5,22
    80202d30:	078e                	slli	a5,a5,0x3
    80202d32:	97ba                	add	a5,a5,a4
    80202d34:	639c                	ld	a5,0(a5)
    80202d36:	e3a1                	bnez	a5,80202d76 <fdalloc+0x82>
    80202d38:	fe043703          	ld	a4,-32(s0)
    80202d3c:	fec42783          	lw	a5,-20(s0)
    80202d40:	07d9                	addi	a5,a5,22
    80202d42:	078e                	slli	a5,a5,0x3
    80202d44:	97ba                	add	a5,a5,a4
    80202d46:	fd843703          	ld	a4,-40(s0)
    80202d4a:	e398                	sd	a4,0(a5)
    80202d4c:	fe043703          	ld	a4,-32(s0)
    80202d50:	fec42783          	lw	a5,-20(s0)
    80202d54:	07d9                	addi	a5,a5,22
    80202d56:	078e                	slli	a5,a5,0x3
    80202d58:	97ba                	add	a5,a5,a4
    80202d5a:	6398                	ld	a4,0(a5)
    80202d5c:	fec42783          	lw	a5,-20(s0)
    80202d60:	863a                	mv	a2,a4
    80202d62:	85be                	mv	a1,a5
    80202d64:	00006517          	auipc	a0,0x6
    80202d68:	98450513          	addi	a0,a0,-1660 # 802086e8 <rodata_start+0x6e8>
    80202d6c:	c36fe0ef          	jal	802011a2 <printk>
    80202d70:	fec42783          	lw	a5,-20(s0)
    80202d74:	a831                	j	80202d90 <fdalloc+0x9c>
    80202d76:	fec42783          	lw	a5,-20(s0)
    80202d7a:	2785                	addiw	a5,a5,1
    80202d7c:	fef42623          	sw	a5,-20(s0)
    80202d80:	fec42783          	lw	a5,-20(s0)
    80202d84:	0007871b          	sext.w	a4,a5
    80202d88:	47bd                	li	a5,15
    80202d8a:	f8e7dee3          	bge	a5,a4,80202d26 <fdalloc+0x32>
    80202d8e:	57fd                	li	a5,-1
    80202d90:	853e                	mv	a0,a5
    80202d92:	70a2                	ld	ra,40(sp)
    80202d94:	7402                	ld	s0,32(sp)
    80202d96:	6145                	addi	sp,sp,48
    80202d98:	8082                	ret

0000000080202d9a <r_mstatus>:
    80202d9a:	1101                	addi	sp,sp,-32
    80202d9c:	ec06                	sd	ra,24(sp)
    80202d9e:	e822                	sd	s0,16(sp)
    80202da0:	1000                	addi	s0,sp,32
    80202da2:	300027f3          	csrr	a5,mstatus
    80202da6:	fef43423          	sd	a5,-24(s0)
    80202daa:	fe843783          	ld	a5,-24(s0)
    80202dae:	853e                	mv	a0,a5
    80202db0:	60e2                	ld	ra,24(sp)
    80202db2:	6442                	ld	s0,16(sp)
    80202db4:	6105                	addi	sp,sp,32
    80202db6:	8082                	ret

0000000080202db8 <r_sie>:
    80202db8:	1101                	addi	sp,sp,-32
    80202dba:	ec06                	sd	ra,24(sp)
    80202dbc:	e822                	sd	s0,16(sp)
    80202dbe:	1000                	addi	s0,sp,32
    80202dc0:	104027f3          	csrr	a5,sie
    80202dc4:	fef43423          	sd	a5,-24(s0)
    80202dc8:	fe843783          	ld	a5,-24(s0)
    80202dcc:	853e                	mv	a0,a5
    80202dce:	60e2                	ld	ra,24(sp)
    80202dd0:	6442                	ld	s0,16(sp)
    80202dd2:	6105                	addi	sp,sp,32
    80202dd4:	8082                	ret

0000000080202dd6 <w_sie>:
    80202dd6:	1101                	addi	sp,sp,-32
    80202dd8:	ec06                	sd	ra,24(sp)
    80202dda:	e822                	sd	s0,16(sp)
    80202ddc:	1000                	addi	s0,sp,32
    80202dde:	fea43423          	sd	a0,-24(s0)
    80202de2:	fe843783          	ld	a5,-24(s0)
    80202de6:	10479073          	csrw	sie,a5
    80202dea:	0001                	nop
    80202dec:	60e2                	ld	ra,24(sp)
    80202dee:	6442                	ld	s0,16(sp)
    80202df0:	6105                	addi	sp,sp,32
    80202df2:	8082                	ret

0000000080202df4 <r_time>:
    80202df4:	1101                	addi	sp,sp,-32
    80202df6:	ec06                	sd	ra,24(sp)
    80202df8:	e822                	sd	s0,16(sp)
    80202dfa:	1000                	addi	s0,sp,32
    80202dfc:	c01027f3          	rdtime	a5
    80202e00:	fef43423          	sd	a5,-24(s0)
    80202e04:	fe843783          	ld	a5,-24(s0)
    80202e08:	853e                	mv	a0,a5
    80202e0a:	60e2                	ld	ra,24(sp)
    80202e0c:	6442                	ld	s0,16(sp)
    80202e0e:	6105                	addi	sp,sp,32
    80202e10:	8082                	ret

0000000080202e12 <get_cycle>:
    80202e12:	1141                	addi	sp,sp,-16
    80202e14:	e406                	sd	ra,8(sp)
    80202e16:	e022                	sd	s0,0(sp)
    80202e18:	0800                	addi	s0,sp,16
    80202e1a:	fdbff0ef          	jal	80202df4 <r_time>
    80202e1e:	87aa                	mv	a5,a0
    80202e20:	853e                	mv	a0,a5
    80202e22:	60a2                	ld	ra,8(sp)
    80202e24:	6402                	ld	s0,0(sp)
    80202e26:	0141                	addi	sp,sp,16
    80202e28:	8082                	ret

0000000080202e2a <set_timer>:
    80202e2a:	1101                	addi	sp,sp,-32
    80202e2c:	ec06                	sd	ra,24(sp)
    80202e2e:	e822                	sd	s0,16(sp)
    80202e30:	1000                	addi	s0,sp,32
    80202e32:	fea43423          	sd	a0,-24(s0)
    80202e36:	fe843503          	ld	a0,-24(s0)
    80202e3a:	a07fd0ef          	jal	80200840 <sbi_set_timer>
    80202e3e:	0001                	nop
    80202e40:	60e2                	ld	ra,24(sp)
    80202e42:	6442                	ld	s0,16(sp)
    80202e44:	6105                	addi	sp,sp,32
    80202e46:	8082                	ret

0000000080202e48 <set_next_10ms_timer>:
    80202e48:	1101                	addi	sp,sp,-32
    80202e4a:	ec06                	sd	ra,24(sp)
    80202e4c:	e822                	sd	s0,16(sp)
    80202e4e:	1000                	addi	s0,sp,32
    80202e50:	67e1                	lui	a5,0x18
    80202e52:	6a078793          	addi	a5,a5,1696 # 186a0 <n+0x18680>
    80202e56:	fef43423          	sd	a5,-24(s0)
    80202e5a:	fb9ff0ef          	jal	80202e12 <get_cycle>
    80202e5e:	872a                	mv	a4,a0
    80202e60:	fe843783          	ld	a5,-24(s0)
    80202e64:	97ba                	add	a5,a5,a4
    80202e66:	853e                	mv	a0,a5
    80202e68:	fc3ff0ef          	jal	80202e2a <set_timer>
    80202e6c:	0001                	nop
    80202e6e:	60e2                	ld	ra,24(sp)
    80202e70:	6442                	ld	s0,16(sp)
    80202e72:	6105                	addi	sp,sp,32
    80202e74:	8082                	ret

0000000080202e76 <get_time_us>:
    80202e76:	1141                	addi	sp,sp,-16
    80202e78:	e406                	sd	ra,8(sp)
    80202e7a:	e022                	sd	s0,0(sp)
    80202e7c:	0800                	addi	s0,sp,16
    80202e7e:	f95ff0ef          	jal	80202e12 <get_cycle>
    80202e82:	872a                	mv	a4,a0
    80202e84:	00006797          	auipc	a5,0x6
    80202e88:	8c478793          	addi	a5,a5,-1852 # 80208748 <rodata_start+0x748>
    80202e8c:	639c                	ld	a5,0(a5)
    80202e8e:	02f737b3          	mulhu	a5,a4,a5
    80202e92:	838d                	srli	a5,a5,0x3
    80202e94:	853e                	mv	a0,a5
    80202e96:	60a2                	ld	ra,8(sp)
    80202e98:	6402                	ld	s0,0(sp)
    80202e9a:	0141                	addi	sp,sp,16
    80202e9c:	8082                	ret

0000000080202e9e <enable_timer_interrupt>:
    80202e9e:	1141                	addi	sp,sp,-16
    80202ea0:	e406                	sd	ra,8(sp)
    80202ea2:	e022                	sd	s0,0(sp)
    80202ea4:	0800                	addi	s0,sp,16
    80202ea6:	f13ff0ef          	jal	80202db8 <r_sie>
    80202eaa:	87aa                	mv	a5,a0
    80202eac:	0207e793          	ori	a5,a5,32
    80202eb0:	853e                	mv	a0,a5
    80202eb2:	f25ff0ef          	jal	80202dd6 <w_sie>
    80202eb6:	0001                	nop
    80202eb8:	60a2                	ld	ra,8(sp)
    80202eba:	6402                	ld	s0,0(sp)
    80202ebc:	0141                	addi	sp,sp,16
    80202ebe:	8082                	ret

0000000080202ec0 <timer_init>:
    80202ec0:	1141                	addi	sp,sp,-16
    80202ec2:	e406                	sd	ra,8(sp)
    80202ec4:	e022                	sd	s0,0(sp)
    80202ec6:	0800                	addi	s0,sp,16
    80202ec8:	fd7ff0ef          	jal	80202e9e <enable_timer_interrupt>
    80202ecc:	f7dff0ef          	jal	80202e48 <set_next_10ms_timer>
    80202ed0:	00006517          	auipc	a0,0x6
    80202ed4:	84050513          	addi	a0,a0,-1984 # 80208710 <rodata_start+0x710>
    80202ed8:	acafe0ef          	jal	802011a2 <printk>
    80202edc:	0001                	nop
    80202ede:	60a2                	ld	ra,8(sp)
    80202ee0:	6402                	ld	s0,0(sp)
    80202ee2:	0141                	addi	sp,sp,16
    80202ee4:	8082                	ret

0000000080202ee6 <interrupt_query>:
    80202ee6:	1101                	addi	sp,sp,-32
    80202ee8:	ec06                	sd	ra,24(sp)
    80202eea:	e822                	sd	s0,16(sp)
    80202eec:	1000                	addi	s0,sp,32
    80202eee:	eadff0ef          	jal	80202d9a <r_mstatus>
    80202ef2:	fea43423          	sd	a0,-24(s0)
    80202ef6:	fe843583          	ld	a1,-24(s0)
    80202efa:	00006517          	auipc	a0,0x6
    80202efe:	82e50513          	addi	a0,a0,-2002 # 80208728 <rodata_start+0x728>
    80202f02:	aa0fe0ef          	jal	802011a2 <printk>
    80202f06:	0001                	nop
    80202f08:	60e2                	ld	ra,24(sp)
    80202f0a:	6442                	ld	s0,16(sp)
    80202f0c:	6105                	addi	sp,sp,32
    80202f0e:	8082                	ret

0000000080202f10 <freerange>:
    80202f10:	7179                	addi	sp,sp,-48
    80202f12:	f406                	sd	ra,40(sp)
    80202f14:	f022                	sd	s0,32(sp)
    80202f16:	1800                	addi	s0,sp,48
    80202f18:	fca43c23          	sd	a0,-40(s0)
    80202f1c:	fcb43823          	sd	a1,-48(s0)
    80202f20:	fd843703          	ld	a4,-40(s0)
    80202f24:	6785                	lui	a5,0x1
    80202f26:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80202f28:	973e                	add	a4,a4,a5
    80202f2a:	77fd                	lui	a5,0xfffff
    80202f2c:	8ff9                	and	a5,a5,a4
    80202f2e:	fef43423          	sd	a5,-24(s0)
    80202f32:	a819                	j	80202f48 <freerange+0x38>
    80202f34:	fe843503          	ld	a0,-24(s0)
    80202f38:	068000ef          	jal	80202fa0 <kfree>
    80202f3c:	fe843703          	ld	a4,-24(s0)
    80202f40:	6785                	lui	a5,0x1
    80202f42:	97ba                	add	a5,a5,a4
    80202f44:	fef43423          	sd	a5,-24(s0)
    80202f48:	fe843703          	ld	a4,-24(s0)
    80202f4c:	6785                	lui	a5,0x1
    80202f4e:	97ba                	add	a5,a5,a4
    80202f50:	fd043703          	ld	a4,-48(s0)
    80202f54:	fef770e3          	bgeu	a4,a5,80202f34 <freerange+0x24>
    80202f58:	0001                	nop
    80202f5a:	0001                	nop
    80202f5c:	70a2                	ld	ra,40(sp)
    80202f5e:	7402                	ld	s0,32(sp)
    80202f60:	6145                	addi	sp,sp,48
    80202f62:	8082                	ret

0000000080202f64 <kernel_init>:
    80202f64:	1141                	addi	sp,sp,-16
    80202f66:	e406                	sd	ra,8(sp)
    80202f68:	e022                	sd	s0,0(sp)
    80202f6a:	0800                	addi	s0,sp,16
    80202f6c:	47c5                	li	a5,17
    80202f6e:	01b79593          	slli	a1,a5,0x1b
    80202f72:	00495517          	auipc	a0,0x495
    80202f76:	08e50513          	addi	a0,a0,142 # 80698000 <bss_end>
    80202f7a:	f97ff0ef          	jal	80202f10 <freerange>
    80202f7e:	88000637          	lui	a2,0x88000
    80202f82:	00495597          	auipc	a1,0x495
    80202f86:	07e58593          	addi	a1,a1,126 # 80698000 <bss_end>
    80202f8a:	00005517          	auipc	a0,0x5
    80202f8e:	7c650513          	addi	a0,a0,1990 # 80208750 <rodata_start+0x750>
    80202f92:	a10fe0ef          	jal	802011a2 <printk>
    80202f96:	0001                	nop
    80202f98:	60a2                	ld	ra,8(sp)
    80202f9a:	6402                	ld	s0,0(sp)
    80202f9c:	0141                	addi	sp,sp,16
    80202f9e:	8082                	ret

0000000080202fa0 <kfree>:
    80202fa0:	7179                	addi	sp,sp,-48
    80202fa2:	f406                	sd	ra,40(sp)
    80202fa4:	f022                	sd	s0,32(sp)
    80202fa6:	1800                	addi	s0,sp,48
    80202fa8:	fca43c23          	sd	a0,-40(s0)
    80202fac:	fd843703          	ld	a4,-40(s0)
    80202fb0:	6785                	lui	a5,0x1
    80202fb2:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80202fb4:	8ff9                	and	a5,a5,a4
    80202fb6:	ef99                	bnez	a5,80202fd4 <kfree+0x34>
    80202fb8:	fd843703          	ld	a4,-40(s0)
    80202fbc:	00495797          	auipc	a5,0x495
    80202fc0:	04478793          	addi	a5,a5,68 # 80698000 <bss_end>
    80202fc4:	00f76863          	bltu	a4,a5,80202fd4 <kfree+0x34>
    80202fc8:	fd843703          	ld	a4,-40(s0)
    80202fcc:	47c5                	li	a5,17
    80202fce:	07ee                	slli	a5,a5,0x1b
    80202fd0:	00f76863          	bltu	a4,a5,80202fe0 <kfree+0x40>
    80202fd4:	00005517          	auipc	a0,0x5
    80202fd8:	7a450513          	addi	a0,a0,1956 # 80208778 <rodata_start+0x778>
    80202fdc:	9d1fd0ef          	jal	802009ac <panic>
    80202fe0:	6605                	lui	a2,0x1
    80202fe2:	4585                	li	a1,1
    80202fe4:	fd843503          	ld	a0,-40(s0)
    80202fe8:	a41fe0ef          	jal	80201a28 <memset>
    80202fec:	fd843783          	ld	a5,-40(s0)
    80202ff0:	fef43423          	sd	a5,-24(s0)
    80202ff4:	00494797          	auipc	a5,0x494
    80202ff8:	02478793          	addi	a5,a5,36 # 80697018 <kmem>
    80202ffc:	6398                	ld	a4,0(a5)
    80202ffe:	fe843783          	ld	a5,-24(s0)
    80203002:	e398                	sd	a4,0(a5)
    80203004:	00494797          	auipc	a5,0x494
    80203008:	01478793          	addi	a5,a5,20 # 80697018 <kmem>
    8020300c:	fe843703          	ld	a4,-24(s0)
    80203010:	e398                	sd	a4,0(a5)
    80203012:	0001                	nop
    80203014:	70a2                	ld	ra,40(sp)
    80203016:	7402                	ld	s0,32(sp)
    80203018:	6145                	addi	sp,sp,48
    8020301a:	8082                	ret

000000008020301c <kalloc>:
    8020301c:	1101                	addi	sp,sp,-32
    8020301e:	ec06                	sd	ra,24(sp)
    80203020:	e822                	sd	s0,16(sp)
    80203022:	1000                	addi	s0,sp,32
    80203024:	00494797          	auipc	a5,0x494
    80203028:	ff478793          	addi	a5,a5,-12 # 80697018 <kmem>
    8020302c:	639c                	ld	a5,0(a5)
    8020302e:	fef43423          	sd	a5,-24(s0)
    80203032:	fe843783          	ld	a5,-24(s0)
    80203036:	cf99                	beqz	a5,80203054 <kalloc+0x38>
    80203038:	fe843783          	ld	a5,-24(s0)
    8020303c:	6398                	ld	a4,0(a5)
    8020303e:	00494797          	auipc	a5,0x494
    80203042:	fda78793          	addi	a5,a5,-38 # 80697018 <kmem>
    80203046:	e398                	sd	a4,0(a5)
    80203048:	6605                	lui	a2,0x1
    8020304a:	4595                	li	a1,5
    8020304c:	fe843503          	ld	a0,-24(s0)
    80203050:	9d9fe0ef          	jal	80201a28 <memset>
    80203054:	fe843783          	ld	a5,-24(s0)
    80203058:	853e                	mv	a0,a5
    8020305a:	60e2                	ld	ra,24(sp)
    8020305c:	6442                	ld	s0,16(sp)
    8020305e:	6105                	addi	sp,sp,32
    80203060:	8082                	ret

0000000080203062 <w_satp>:
    80203062:	1101                	addi	sp,sp,-32
    80203064:	ec06                	sd	ra,24(sp)
    80203066:	e822                	sd	s0,16(sp)
    80203068:	1000                	addi	s0,sp,32
    8020306a:	fea43423          	sd	a0,-24(s0)
    8020306e:	fe843783          	ld	a5,-24(s0)
    80203072:	18079073          	csrw	satp,a5
    80203076:	0001                	nop
    80203078:	60e2                	ld	ra,24(sp)
    8020307a:	6442                	ld	s0,16(sp)
    8020307c:	6105                	addi	sp,sp,32
    8020307e:	8082                	ret

0000000080203080 <r_satp>:
    80203080:	1101                	addi	sp,sp,-32
    80203082:	ec06                	sd	ra,24(sp)
    80203084:	e822                	sd	s0,16(sp)
    80203086:	1000                	addi	s0,sp,32
    80203088:	180027f3          	csrr	a5,satp
    8020308c:	fef43423          	sd	a5,-24(s0)
    80203090:	fe843783          	ld	a5,-24(s0)
    80203094:	853e                	mv	a0,a5
    80203096:	60e2                	ld	ra,24(sp)
    80203098:	6442                	ld	s0,16(sp)
    8020309a:	6105                	addi	sp,sp,32
    8020309c:	8082                	ret

000000008020309e <sfence_vma>:
    8020309e:	1141                	addi	sp,sp,-16
    802030a0:	e406                	sd	ra,8(sp)
    802030a2:	e022                	sd	s0,0(sp)
    802030a4:	0800                	addi	s0,sp,16
    802030a6:	12000073          	sfence.vma
    802030aa:	0001                	nop
    802030ac:	60a2                	ld	ra,8(sp)
    802030ae:	6402                	ld	s0,0(sp)
    802030b0:	0141                	addi	sp,sp,16
    802030b2:	8082                	ret

00000000802030b4 <mappages>:
    802030b4:	711d                	addi	sp,sp,-96
    802030b6:	ec86                	sd	ra,88(sp)
    802030b8:	e8a2                	sd	s0,80(sp)
    802030ba:	1080                	addi	s0,sp,96
    802030bc:	fca43423          	sd	a0,-56(s0)
    802030c0:	fcb43023          	sd	a1,-64(s0)
    802030c4:	fac43c23          	sd	a2,-72(s0)
    802030c8:	fad43823          	sd	a3,-80(s0)
    802030cc:	87ba                	mv	a5,a4
    802030ce:	faf42623          	sw	a5,-84(s0)
    802030d2:	fc043703          	ld	a4,-64(s0)
    802030d6:	77fd                	lui	a5,0xfffff
    802030d8:	8ff9                	and	a5,a5,a4
    802030da:	fef43423          	sd	a5,-24(s0)
    802030de:	fc043703          	ld	a4,-64(s0)
    802030e2:	fb843783          	ld	a5,-72(s0)
    802030e6:	97ba                	add	a5,a5,a4
    802030e8:	fff78713          	addi	a4,a5,-1 # ffffffffffffefff <bss_end+0xffffffff7f966fff>
    802030ec:	77fd                	lui	a5,0xfffff
    802030ee:	8ff9                	and	a5,a5,a4
    802030f0:	fef43023          	sd	a5,-32(s0)
    802030f4:	4605                	li	a2,1
    802030f6:	fe843583          	ld	a1,-24(s0)
    802030fa:	fc843503          	ld	a0,-56(s0)
    802030fe:	3a6000ef          	jal	802034a4 <walk>
    80203102:	fca43c23          	sd	a0,-40(s0)
    80203106:	fd843783          	ld	a5,-40(s0)
    8020310a:	eb89                	bnez	a5,8020311c <mappages+0x68>
    8020310c:	00005517          	auipc	a0,0x5
    80203110:	67450513          	addi	a0,a0,1652 # 80208780 <rodata_start+0x780>
    80203114:	88efe0ef          	jal	802011a2 <printk>
    80203118:	57fd                	li	a5,-1
    8020311a:	a085                	j	8020317a <mappages+0xc6>
    8020311c:	fd843783          	ld	a5,-40(s0)
    80203120:	639c                	ld	a5,0(a5)
    80203122:	8b85                	andi	a5,a5,1
    80203124:	cb89                	beqz	a5,80203136 <mappages+0x82>
    80203126:	00005517          	auipc	a0,0x5
    8020312a:	67250513          	addi	a0,a0,1650 # 80208798 <rodata_start+0x798>
    8020312e:	874fe0ef          	jal	802011a2 <printk>
    80203132:	57fd                	li	a5,-1
    80203134:	a099                	j	8020317a <mappages+0xc6>
    80203136:	fb043783          	ld	a5,-80(s0)
    8020313a:	83b1                	srli	a5,a5,0xc
    8020313c:	00a79713          	slli	a4,a5,0xa
    80203140:	fac42783          	lw	a5,-84(s0)
    80203144:	8fd9                	or	a5,a5,a4
    80203146:	0017e713          	ori	a4,a5,1
    8020314a:	fd843783          	ld	a5,-40(s0)
    8020314e:	e398                	sd	a4,0(a5)
    80203150:	fe843703          	ld	a4,-24(s0)
    80203154:	fe043783          	ld	a5,-32(s0)
    80203158:	00f70f63          	beq	a4,a5,80203176 <mappages+0xc2>
    8020315c:	fe843703          	ld	a4,-24(s0)
    80203160:	6785                	lui	a5,0x1
    80203162:	97ba                	add	a5,a5,a4
    80203164:	fef43423          	sd	a5,-24(s0)
    80203168:	fb043703          	ld	a4,-80(s0)
    8020316c:	6785                	lui	a5,0x1
    8020316e:	97ba                	add	a5,a5,a4
    80203170:	faf43823          	sd	a5,-80(s0)
    80203174:	b741                	j	802030f4 <mappages+0x40>
    80203176:	0001                	nop
    80203178:	4781                	li	a5,0
    8020317a:	853e                	mv	a0,a5
    8020317c:	60e6                	ld	ra,88(sp)
    8020317e:	6446                	ld	s0,80(sp)
    80203180:	6125                	addi	sp,sp,96
    80203182:	8082                	ret

0000000080203184 <kvmmap>:
    80203184:	7139                	addi	sp,sp,-64
    80203186:	fc06                	sd	ra,56(sp)
    80203188:	f822                	sd	s0,48(sp)
    8020318a:	0080                	addi	s0,sp,64
    8020318c:	fea43423          	sd	a0,-24(s0)
    80203190:	feb43023          	sd	a1,-32(s0)
    80203194:	fcc43c23          	sd	a2,-40(s0)
    80203198:	fcd43823          	sd	a3,-48(s0)
    8020319c:	87ba                	mv	a5,a4
    8020319e:	fcf42623          	sw	a5,-52(s0)
    802031a2:	fcc42783          	lw	a5,-52(s0)
    802031a6:	873e                	mv	a4,a5
    802031a8:	fd843683          	ld	a3,-40(s0)
    802031ac:	fd043603          	ld	a2,-48(s0)
    802031b0:	fe043583          	ld	a1,-32(s0)
    802031b4:	fe843503          	ld	a0,-24(s0)
    802031b8:	efdff0ef          	jal	802030b4 <mappages>
    802031bc:	87aa                	mv	a5,a0
    802031be:	c799                	beqz	a5,802031cc <kvmmap+0x48>
    802031c0:	00005517          	auipc	a0,0x5
    802031c4:	5e850513          	addi	a0,a0,1512 # 802087a8 <rodata_start+0x7a8>
    802031c8:	fe4fd0ef          	jal	802009ac <panic>
    802031cc:	0001                	nop
    802031ce:	70e2                	ld	ra,56(sp)
    802031d0:	7442                	ld	s0,48(sp)
    802031d2:	6121                	addi	sp,sp,64
    802031d4:	8082                	ret

00000000802031d6 <kvmmake>:
    802031d6:	1101                	addi	sp,sp,-32
    802031d8:	ec06                	sd	ra,24(sp)
    802031da:	e822                	sd	s0,16(sp)
    802031dc:	1000                	addi	s0,sp,32
    802031de:	e3fff0ef          	jal	8020301c <kalloc>
    802031e2:	fea43423          	sd	a0,-24(s0)
    802031e6:	6605                	lui	a2,0x1
    802031e8:	4581                	li	a1,0
    802031ea:	fe843503          	ld	a0,-24(s0)
    802031ee:	83bfe0ef          	jal	80201a28 <memset>
    802031f2:	4719                	li	a4,6
    802031f4:	6685                	lui	a3,0x1
    802031f6:	10001637          	lui	a2,0x10001
    802031fa:	100015b7          	lui	a1,0x10001
    802031fe:	fe843503          	ld	a0,-24(s0)
    80203202:	f83ff0ef          	jal	80203184 <kvmmap>
    80203206:	4719                	li	a4,6
    80203208:	004006b7          	lui	a3,0x400
    8020320c:	0c000637          	lui	a2,0xc000
    80203210:	0c0005b7          	lui	a1,0xc000
    80203214:	fe843503          	ld	a0,-24(s0)
    80203218:	f6dff0ef          	jal	80203184 <kvmmap>
    8020321c:	00005717          	auipc	a4,0x5
    80203220:	de470713          	addi	a4,a4,-540 # 80208000 <rodata_start>
    80203224:	bff00793          	li	a5,-1025
    80203228:	07d6                	slli	a5,a5,0x15
    8020322a:	97ba                	add	a5,a5,a4
    8020322c:	4729                	li	a4,10
    8020322e:	86be                	mv	a3,a5
    80203230:	40100793          	li	a5,1025
    80203234:	01579613          	slli	a2,a5,0x15
    80203238:	40100793          	li	a5,1025
    8020323c:	01579593          	slli	a1,a5,0x15
    80203240:	fe843503          	ld	a0,-24(s0)
    80203244:	f41ff0ef          	jal	80203184 <kvmmap>
    80203248:	00005597          	auipc	a1,0x5
    8020324c:	db858593          	addi	a1,a1,-584 # 80208000 <rodata_start>
    80203250:	00005617          	auipc	a2,0x5
    80203254:	db060613          	addi	a2,a2,-592 # 80208000 <rodata_start>
    80203258:	00005797          	auipc	a5,0x5
    8020325c:	da878793          	addi	a5,a5,-600 # 80208000 <rodata_start>
    80203260:	4745                	li	a4,17
    80203262:	076e                	slli	a4,a4,0x1b
    80203264:	40f707b3          	sub	a5,a4,a5
    80203268:	4719                	li	a4,6
    8020326a:	86be                	mv	a3,a5
    8020326c:	fe843503          	ld	a0,-24(s0)
    80203270:	f15ff0ef          	jal	80203184 <kvmmap>
    80203274:	00004797          	auipc	a5,0x4
    80203278:	d8c78793          	addi	a5,a5,-628 # 80207000 <__alltraps>
    8020327c:	4729                	li	a4,10
    8020327e:	6685                	lui	a3,0x1
    80203280:	863e                	mv	a2,a5
    80203282:	040007b7          	lui	a5,0x4000
    80203286:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80203288:	00c79593          	slli	a1,a5,0xc
    8020328c:	fe843503          	ld	a0,-24(s0)
    80203290:	ef5ff0ef          	jal	80203184 <kvmmap>
    80203294:	fe843783          	ld	a5,-24(s0)
    80203298:	853e                	mv	a0,a5
    8020329a:	60e2                	ld	ra,24(sp)
    8020329c:	6442                	ld	s0,16(sp)
    8020329e:	6105                	addi	sp,sp,32
    802032a0:	8082                	ret

00000000802032a2 <kvm_init>:
    802032a2:	1141                	addi	sp,sp,-16
    802032a4:	e406                	sd	ra,8(sp)
    802032a6:	e022                	sd	s0,0(sp)
    802032a8:	0800                	addi	s0,sp,16
    802032aa:	f2dff0ef          	jal	802031d6 <kvmmake>
    802032ae:	872a                	mv	a4,a0
    802032b0:	00494797          	auipc	a5,0x494
    802032b4:	d7078793          	addi	a5,a5,-656 # 80697020 <kernle_pagetable>
    802032b8:	e398                	sd	a4,0(a5)
    802032ba:	00494797          	auipc	a5,0x494
    802032be:	d6678793          	addi	a5,a5,-666 # 80697020 <kernle_pagetable>
    802032c2:	639c                	ld	a5,0(a5)
    802032c4:	00c7d713          	srli	a4,a5,0xc
    802032c8:	57fd                	li	a5,-1
    802032ca:	17fe                	slli	a5,a5,0x3f
    802032cc:	8fd9                	or	a5,a5,a4
    802032ce:	853e                	mv	a0,a5
    802032d0:	d93ff0ef          	jal	80203062 <w_satp>
    802032d4:	dcbff0ef          	jal	8020309e <sfence_vma>
    802032d8:	da9ff0ef          	jal	80203080 <r_satp>
    802032dc:	87aa                	mv	a5,a0
    802032de:	85be                	mv	a1,a5
    802032e0:	00005517          	auipc	a0,0x5
    802032e4:	4d050513          	addi	a0,a0,1232 # 802087b0 <rodata_start+0x7b0>
    802032e8:	ebbfd0ef          	jal	802011a2 <printk>
    802032ec:	0001                	nop
    802032ee:	60a2                	ld	ra,8(sp)
    802032f0:	6402                	ld	s0,0(sp)
    802032f2:	0141                	addi	sp,sp,16
    802032f4:	8082                	ret

00000000802032f6 <uvmunmap>:
    802032f6:	715d                	addi	sp,sp,-80
    802032f8:	e486                	sd	ra,72(sp)
    802032fa:	e0a2                	sd	s0,64(sp)
    802032fc:	0880                	addi	s0,sp,80
    802032fe:	fca43423          	sd	a0,-56(s0)
    80203302:	fcb43023          	sd	a1,-64(s0)
    80203306:	fac43c23          	sd	a2,-72(s0)
    8020330a:	87b6                	mv	a5,a3
    8020330c:	faf42a23          	sw	a5,-76(s0)
    80203310:	fc043703          	ld	a4,-64(s0)
    80203314:	6785                	lui	a5,0x1
    80203316:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80203318:	8ff9                	and	a5,a5,a4
    8020331a:	c799                	beqz	a5,80203328 <uvmunmap+0x32>
    8020331c:	00005517          	auipc	a0,0x5
    80203320:	4bc50513          	addi	a0,a0,1212 # 802087d8 <rodata_start+0x7d8>
    80203324:	e88fd0ef          	jal	802009ac <panic>
    80203328:	fc043783          	ld	a5,-64(s0)
    8020332c:	fef43423          	sd	a5,-24(s0)
    80203330:	a8a5                	j	802033a8 <uvmunmap+0xb2>
    80203332:	4601                	li	a2,0
    80203334:	fe843583          	ld	a1,-24(s0)
    80203338:	fc843503          	ld	a0,-56(s0)
    8020333c:	168000ef          	jal	802034a4 <walk>
    80203340:	fea43023          	sd	a0,-32(s0)
    80203344:	fe043783          	ld	a5,-32(s0)
    80203348:	cba9                	beqz	a5,8020339a <uvmunmap+0xa4>
    8020334a:	fe043783          	ld	a5,-32(s0)
    8020334e:	639c                	ld	a5,0(a5)
    80203350:	8b85                	andi	a5,a5,1
    80203352:	cf9d                	beqz	a5,80203390 <uvmunmap+0x9a>
    80203354:	fe043783          	ld	a5,-32(s0)
    80203358:	639c                	ld	a5,0(a5)
    8020335a:	3ff7f713          	andi	a4,a5,1023
    8020335e:	4785                	li	a5,1
    80203360:	00f71863          	bne	a4,a5,80203370 <uvmunmap+0x7a>
    80203364:	00005517          	auipc	a0,0x5
    80203368:	49450513          	addi	a0,a0,1172 # 802087f8 <rodata_start+0x7f8>
    8020336c:	e40fd0ef          	jal	802009ac <panic>
    80203370:	fb442783          	lw	a5,-76(s0)
    80203374:	2781                	sext.w	a5,a5
    80203376:	cf89                	beqz	a5,80203390 <uvmunmap+0x9a>
    80203378:	fe043783          	ld	a5,-32(s0)
    8020337c:	639c                	ld	a5,0(a5)
    8020337e:	83a9                	srli	a5,a5,0xa
    80203380:	07b2                	slli	a5,a5,0xc
    80203382:	fcf43c23          	sd	a5,-40(s0)
    80203386:	fd843783          	ld	a5,-40(s0)
    8020338a:	853e                	mv	a0,a5
    8020338c:	c15ff0ef          	jal	80202fa0 <kfree>
    80203390:	fe043783          	ld	a5,-32(s0)
    80203394:	0007b023          	sd	zero,0(a5)
    80203398:	a011                	j	8020339c <uvmunmap+0xa6>
    8020339a:	0001                	nop
    8020339c:	fe843703          	ld	a4,-24(s0)
    802033a0:	6785                	lui	a5,0x1
    802033a2:	97ba                	add	a5,a5,a4
    802033a4:	fef43423          	sd	a5,-24(s0)
    802033a8:	fb843783          	ld	a5,-72(s0)
    802033ac:	00c79713          	slli	a4,a5,0xc
    802033b0:	fc043783          	ld	a5,-64(s0)
    802033b4:	97ba                	add	a5,a5,a4
    802033b6:	fe843703          	ld	a4,-24(s0)
    802033ba:	f6f76ce3          	bltu	a4,a5,80203332 <uvmunmap+0x3c>
    802033be:	0001                	nop
    802033c0:	0001                	nop
    802033c2:	60a6                	ld	ra,72(sp)
    802033c4:	6406                	ld	s0,64(sp)
    802033c6:	6161                	addi	sp,sp,80
    802033c8:	8082                	ret

00000000802033ca <uvmcreate>:
    802033ca:	7179                	addi	sp,sp,-48
    802033cc:	f406                	sd	ra,40(sp)
    802033ce:	f022                	sd	s0,32(sp)
    802033d0:	1800                	addi	s0,sp,48
    802033d2:	fca43c23          	sd	a0,-40(s0)
    802033d6:	c47ff0ef          	jal	8020301c <kalloc>
    802033da:	fea43423          	sd	a0,-24(s0)
    802033de:	fe843783          	ld	a5,-24(s0)
    802033e2:	eb89                	bnez	a5,802033f4 <uvmcreate+0x2a>
    802033e4:	00005517          	auipc	a0,0x5
    802033e8:	42c50513          	addi	a0,a0,1068 # 80208810 <rodata_start+0x810>
    802033ec:	db7fd0ef          	jal	802011a2 <printk>
    802033f0:	4781                	li	a5,0
    802033f2:	a885                	j	80203462 <uvmcreate+0x98>
    802033f4:	6605                	lui	a2,0x1
    802033f6:	4581                	li	a1,0
    802033f8:	fe843503          	ld	a0,-24(s0)
    802033fc:	e2cfe0ef          	jal	80201a28 <memset>
    80203400:	00004797          	auipc	a5,0x4
    80203404:	c0078793          	addi	a5,a5,-1024 # 80207000 <__alltraps>
    80203408:	4729                	li	a4,10
    8020340a:	86be                	mv	a3,a5
    8020340c:	6605                	lui	a2,0x1
    8020340e:	040007b7          	lui	a5,0x4000
    80203412:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80203414:	00c79593          	slli	a1,a5,0xc
    80203418:	fe843503          	ld	a0,-24(s0)
    8020341c:	c99ff0ef          	jal	802030b4 <mappages>
    80203420:	87aa                	mv	a5,a0
    80203422:	0007d863          	bgez	a5,80203432 <uvmcreate+0x68>
    80203426:	00005517          	auipc	a0,0x5
    8020342a:	40a50513          	addi	a0,a0,1034 # 80208830 <rodata_start+0x830>
    8020342e:	d7efd0ef          	jal	802009ac <panic>
    80203432:	4719                	li	a4,6
    80203434:	fd843683          	ld	a3,-40(s0)
    80203438:	6605                	lui	a2,0x1
    8020343a:	020007b7          	lui	a5,0x2000
    8020343e:	17fd                	addi	a5,a5,-1 # 1ffffff <n+0x1ffffdf>
    80203440:	00d79593          	slli	a1,a5,0xd
    80203444:	fe843503          	ld	a0,-24(s0)
    80203448:	c6dff0ef          	jal	802030b4 <mappages>
    8020344c:	87aa                	mv	a5,a0
    8020344e:	0007d863          	bgez	a5,8020345e <uvmcreate+0x94>
    80203452:	00005517          	auipc	a0,0x5
    80203456:	3f650513          	addi	a0,a0,1014 # 80208848 <rodata_start+0x848>
    8020345a:	d52fd0ef          	jal	802009ac <panic>
    8020345e:	fe843783          	ld	a5,-24(s0)
    80203462:	853e                	mv	a0,a5
    80203464:	70a2                	ld	ra,40(sp)
    80203466:	7402                	ld	s0,32(sp)
    80203468:	6145                	addi	sp,sp,48
    8020346a:	8082                	ret

000000008020346c <uvmfree>:
    8020346c:	1101                	addi	sp,sp,-32
    8020346e:	ec06                	sd	ra,24(sp)
    80203470:	e822                	sd	s0,16(sp)
    80203472:	1000                	addi	s0,sp,32
    80203474:	fea43423          	sd	a0,-24(s0)
    80203478:	feb43023          	sd	a1,-32(s0)
    8020347c:	fe043783          	ld	a5,-32(s0)
    80203480:	cb89                	beqz	a5,80203492 <uvmfree+0x26>
    80203482:	4685                	li	a3,1
    80203484:	fe043603          	ld	a2,-32(s0)
    80203488:	4581                	li	a1,0
    8020348a:	fe843503          	ld	a0,-24(s0)
    8020348e:	e69ff0ef          	jal	802032f6 <uvmunmap>
    80203492:	fe843503          	ld	a0,-24(s0)
    80203496:	0f4000ef          	jal	8020358a <freewalk>
    8020349a:	0001                	nop
    8020349c:	60e2                	ld	ra,24(sp)
    8020349e:	6442                	ld	s0,16(sp)
    802034a0:	6105                	addi	sp,sp,32
    802034a2:	8082                	ret

00000000802034a4 <walk>:
    802034a4:	7139                	addi	sp,sp,-64
    802034a6:	fc06                	sd	ra,56(sp)
    802034a8:	f822                	sd	s0,48(sp)
    802034aa:	0080                	addi	s0,sp,64
    802034ac:	fca43c23          	sd	a0,-40(s0)
    802034b0:	fcb43823          	sd	a1,-48(s0)
    802034b4:	87b2                	mv	a5,a2
    802034b6:	fcf42623          	sw	a5,-52(s0)
    802034ba:	fd043703          	ld	a4,-48(s0)
    802034be:	57fd                	li	a5,-1
    802034c0:	83e9                	srli	a5,a5,0x1a
    802034c2:	00e7f863          	bgeu	a5,a4,802034d2 <walk+0x2e>
    802034c6:	00005517          	auipc	a0,0x5
    802034ca:	39a50513          	addi	a0,a0,922 # 80208860 <rodata_start+0x860>
    802034ce:	cdefd0ef          	jal	802009ac <panic>
    802034d2:	4789                	li	a5,2
    802034d4:	fef42623          	sw	a5,-20(s0)
    802034d8:	a071                	j	80203564 <walk+0xc0>
    802034da:	fec42783          	lw	a5,-20(s0)
    802034de:	873e                	mv	a4,a5
    802034e0:	87ba                	mv	a5,a4
    802034e2:	0037979b          	slliw	a5,a5,0x3
    802034e6:	9fb9                	addw	a5,a5,a4
    802034e8:	2781                	sext.w	a5,a5
    802034ea:	27b1                	addiw	a5,a5,12
    802034ec:	2781                	sext.w	a5,a5
    802034ee:	873e                	mv	a4,a5
    802034f0:	fd043783          	ld	a5,-48(s0)
    802034f4:	00e7d7b3          	srl	a5,a5,a4
    802034f8:	1ff7f793          	andi	a5,a5,511
    802034fc:	078e                	slli	a5,a5,0x3
    802034fe:	fd843703          	ld	a4,-40(s0)
    80203502:	97ba                	add	a5,a5,a4
    80203504:	fef43023          	sd	a5,-32(s0)
    80203508:	fe043783          	ld	a5,-32(s0)
    8020350c:	639c                	ld	a5,0(a5)
    8020350e:	8b85                	andi	a5,a5,1
    80203510:	cb89                	beqz	a5,80203522 <walk+0x7e>
    80203512:	fe043783          	ld	a5,-32(s0)
    80203516:	639c                	ld	a5,0(a5)
    80203518:	83a9                	srli	a5,a5,0xa
    8020351a:	07b2                	slli	a5,a5,0xc
    8020351c:	fcf43c23          	sd	a5,-40(s0)
    80203520:	a82d                	j	8020355a <walk+0xb6>
    80203522:	fcc42783          	lw	a5,-52(s0)
    80203526:	2781                	sext.w	a5,a5
    80203528:	cb81                	beqz	a5,80203538 <walk+0x94>
    8020352a:	af3ff0ef          	jal	8020301c <kalloc>
    8020352e:	fca43c23          	sd	a0,-40(s0)
    80203532:	fd843783          	ld	a5,-40(s0)
    80203536:	e399                	bnez	a5,8020353c <walk+0x98>
    80203538:	4781                	li	a5,0
    8020353a:	a099                	j	80203580 <walk+0xdc>
    8020353c:	6605                	lui	a2,0x1
    8020353e:	4581                	li	a1,0
    80203540:	fd843503          	ld	a0,-40(s0)
    80203544:	ce4fe0ef          	jal	80201a28 <memset>
    80203548:	fd843783          	ld	a5,-40(s0)
    8020354c:	83b1                	srli	a5,a5,0xc
    8020354e:	07aa                	slli	a5,a5,0xa
    80203550:	0017e713          	ori	a4,a5,1
    80203554:	fe043783          	ld	a5,-32(s0)
    80203558:	e398                	sd	a4,0(a5)
    8020355a:	fec42783          	lw	a5,-20(s0)
    8020355e:	37fd                	addiw	a5,a5,-1
    80203560:	fef42623          	sw	a5,-20(s0)
    80203564:	fec42783          	lw	a5,-20(s0)
    80203568:	2781                	sext.w	a5,a5
    8020356a:	f6f048e3          	bgtz	a5,802034da <walk+0x36>
    8020356e:	fd043783          	ld	a5,-48(s0)
    80203572:	83b1                	srli	a5,a5,0xc
    80203574:	1ff7f793          	andi	a5,a5,511
    80203578:	078e                	slli	a5,a5,0x3
    8020357a:	fd843703          	ld	a4,-40(s0)
    8020357e:	97ba                	add	a5,a5,a4
    80203580:	853e                	mv	a0,a5
    80203582:	70e2                	ld	ra,56(sp)
    80203584:	7442                	ld	s0,48(sp)
    80203586:	6121                	addi	sp,sp,64
    80203588:	8082                	ret

000000008020358a <freewalk>:
    8020358a:	7139                	addi	sp,sp,-64
    8020358c:	fc06                	sd	ra,56(sp)
    8020358e:	f822                	sd	s0,48(sp)
    80203590:	0080                	addi	s0,sp,64
    80203592:	fca43423          	sd	a0,-56(s0)
    80203596:	fe042623          	sw	zero,-20(s0)
    8020359a:	a0ad                	j	80203604 <freewalk+0x7a>
    8020359c:	fec42783          	lw	a5,-20(s0)
    802035a0:	078e                	slli	a5,a5,0x3
    802035a2:	fc843703          	ld	a4,-56(s0)
    802035a6:	97ba                	add	a5,a5,a4
    802035a8:	639c                	ld	a5,0(a5)
    802035aa:	fef43023          	sd	a5,-32(s0)
    802035ae:	fe043783          	ld	a5,-32(s0)
    802035b2:	8b85                	andi	a5,a5,1
    802035b4:	cb8d                	beqz	a5,802035e6 <freewalk+0x5c>
    802035b6:	fe043783          	ld	a5,-32(s0)
    802035ba:	8bb9                	andi	a5,a5,14
    802035bc:	e78d                	bnez	a5,802035e6 <freewalk+0x5c>
    802035be:	fe043783          	ld	a5,-32(s0)
    802035c2:	83a9                	srli	a5,a5,0xa
    802035c4:	07b2                	slli	a5,a5,0xc
    802035c6:	fcf43c23          	sd	a5,-40(s0)
    802035ca:	fd843783          	ld	a5,-40(s0)
    802035ce:	853e                	mv	a0,a5
    802035d0:	fbbff0ef          	jal	8020358a <freewalk>
    802035d4:	fec42783          	lw	a5,-20(s0)
    802035d8:	078e                	slli	a5,a5,0x3
    802035da:	fc843703          	ld	a4,-56(s0)
    802035de:	97ba                	add	a5,a5,a4
    802035e0:	0007b023          	sd	zero,0(a5)
    802035e4:	a819                	j	802035fa <freewalk+0x70>
    802035e6:	fe043783          	ld	a5,-32(s0)
    802035ea:	8b85                	andi	a5,a5,1
    802035ec:	c799                	beqz	a5,802035fa <freewalk+0x70>
    802035ee:	00005517          	auipc	a0,0x5
    802035f2:	27a50513          	addi	a0,a0,634 # 80208868 <rodata_start+0x868>
    802035f6:	bb6fd0ef          	jal	802009ac <panic>
    802035fa:	fec42783          	lw	a5,-20(s0)
    802035fe:	2785                	addiw	a5,a5,1
    80203600:	fef42623          	sw	a5,-20(s0)
    80203604:	fec42783          	lw	a5,-20(s0)
    80203608:	0007871b          	sext.w	a4,a5
    8020360c:	1ff00793          	li	a5,511
    80203610:	f8e7d6e3          	bge	a5,a4,8020359c <freewalk+0x12>
    80203614:	fc843503          	ld	a0,-56(s0)
    80203618:	989ff0ef          	jal	80202fa0 <kfree>
    8020361c:	0001                	nop
    8020361e:	70e2                	ld	ra,56(sp)
    80203620:	7442                	ld	s0,48(sp)
    80203622:	6121                	addi	sp,sp,64
    80203624:	8082                	ret

0000000080203626 <walk_addr>:
    80203626:	7179                	addi	sp,sp,-48
    80203628:	f406                	sd	ra,40(sp)
    8020362a:	f022                	sd	s0,32(sp)
    8020362c:	1800                	addi	s0,sp,48
    8020362e:	fca43c23          	sd	a0,-40(s0)
    80203632:	fcb43823          	sd	a1,-48(s0)
    80203636:	fd043703          	ld	a4,-48(s0)
    8020363a:	4785                	li	a5,1
    8020363c:	179a                	slli	a5,a5,0x26
    8020363e:	00e7f463          	bgeu	a5,a4,80203646 <walk_addr+0x20>
    80203642:	4781                	li	a5,0
    80203644:	a0b1                	j	80203690 <walk_addr+0x6a>
    80203646:	4601                	li	a2,0
    80203648:	fd043583          	ld	a1,-48(s0)
    8020364c:	fd843503          	ld	a0,-40(s0)
    80203650:	e55ff0ef          	jal	802034a4 <walk>
    80203654:	fea43423          	sd	a0,-24(s0)
    80203658:	fe843783          	ld	a5,-24(s0)
    8020365c:	e399                	bnez	a5,80203662 <walk_addr+0x3c>
    8020365e:	4781                	li	a5,0
    80203660:	a805                	j	80203690 <walk_addr+0x6a>
    80203662:	fe843783          	ld	a5,-24(s0)
    80203666:	639c                	ld	a5,0(a5)
    80203668:	8b85                	andi	a5,a5,1
    8020366a:	e399                	bnez	a5,80203670 <walk_addr+0x4a>
    8020366c:	4781                	li	a5,0
    8020366e:	a00d                	j	80203690 <walk_addr+0x6a>
    80203670:	fe843783          	ld	a5,-24(s0)
    80203674:	639c                	ld	a5,0(a5)
    80203676:	8bc1                	andi	a5,a5,16
    80203678:	e399                	bnez	a5,8020367e <walk_addr+0x58>
    8020367a:	4781                	li	a5,0
    8020367c:	a811                	j	80203690 <walk_addr+0x6a>
    8020367e:	fe843783          	ld	a5,-24(s0)
    80203682:	639c                	ld	a5,0(a5)
    80203684:	83a9                	srli	a5,a5,0xa
    80203686:	07b2                	slli	a5,a5,0xc
    80203688:	fef43023          	sd	a5,-32(s0)
    8020368c:	fe043783          	ld	a5,-32(s0)
    80203690:	853e                	mv	a0,a5
    80203692:	70a2                	ld	ra,40(sp)
    80203694:	7402                	ld	s0,32(sp)
    80203696:	6145                	addi	sp,sp,48
    80203698:	8082                	ret

000000008020369a <useraddr>:
    8020369a:	7179                	addi	sp,sp,-48
    8020369c:	f406                	sd	ra,40(sp)
    8020369e:	f022                	sd	s0,32(sp)
    802036a0:	1800                	addi	s0,sp,48
    802036a2:	fca43c23          	sd	a0,-40(s0)
    802036a6:	fcb43823          	sd	a1,-48(s0)
    802036aa:	fd043583          	ld	a1,-48(s0)
    802036ae:	fd843503          	ld	a0,-40(s0)
    802036b2:	f75ff0ef          	jal	80203626 <walk_addr>
    802036b6:	fea43423          	sd	a0,-24(s0)
    802036ba:	fe843783          	ld	a5,-24(s0)
    802036be:	e399                	bnez	a5,802036c4 <useraddr+0x2a>
    802036c0:	4781                	li	a5,0
    802036c2:	a809                	j	802036d4 <useraddr+0x3a>
    802036c4:	fd043703          	ld	a4,-48(s0)
    802036c8:	6785                	lui	a5,0x1
    802036ca:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802036cc:	8f7d                	and	a4,a4,a5
    802036ce:	fe843783          	ld	a5,-24(s0)
    802036d2:	8fd9                	or	a5,a5,a4
    802036d4:	853e                	mv	a0,a5
    802036d6:	70a2                	ld	ra,40(sp)
    802036d8:	7402                	ld	s0,32(sp)
    802036da:	6145                	addi	sp,sp,48
    802036dc:	8082                	ret

00000000802036de <uvmcopy>:
    802036de:	711d                	addi	sp,sp,-96
    802036e0:	ec86                	sd	ra,88(sp)
    802036e2:	e8a2                	sd	s0,80(sp)
    802036e4:	1080                	addi	s0,sp,96
    802036e6:	faa43c23          	sd	a0,-72(s0)
    802036ea:	fab43823          	sd	a1,-80(s0)
    802036ee:	fac43423          	sd	a2,-88(s0)
    802036f2:	fe043423          	sd	zero,-24(s0)
    802036f6:	a84d                	j	802037a8 <uvmcopy+0xca>
    802036f8:	4601                	li	a2,0
    802036fa:	fe843583          	ld	a1,-24(s0)
    802036fe:	fb843503          	ld	a0,-72(s0)
    80203702:	da3ff0ef          	jal	802034a4 <walk>
    80203706:	fea43023          	sd	a0,-32(s0)
    8020370a:	fe043783          	ld	a5,-32(s0)
    8020370e:	c7c1                	beqz	a5,80203796 <uvmcopy+0xb8>
    80203710:	fe043783          	ld	a5,-32(s0)
    80203714:	639c                	ld	a5,0(a5)
    80203716:	8b85                	andi	a5,a5,1
    80203718:	c3c9                	beqz	a5,8020379a <uvmcopy+0xbc>
    8020371a:	fe043783          	ld	a5,-32(s0)
    8020371e:	639c                	ld	a5,0(a5)
    80203720:	83a9                	srli	a5,a5,0xa
    80203722:	07b2                	slli	a5,a5,0xc
    80203724:	fcf43c23          	sd	a5,-40(s0)
    80203728:	fe043783          	ld	a5,-32(s0)
    8020372c:	639c                	ld	a5,0(a5)
    8020372e:	2781                	sext.w	a5,a5
    80203730:	3ff7f793          	andi	a5,a5,1023
    80203734:	fcf42a23          	sw	a5,-44(s0)
    80203738:	8e5ff0ef          	jal	8020301c <kalloc>
    8020373c:	fca43423          	sd	a0,-56(s0)
    80203740:	fc843783          	ld	a5,-56(s0)
    80203744:	eb81                	bnez	a5,80203754 <uvmcopy+0x76>
    80203746:	00005517          	auipc	a0,0x5
    8020374a:	13250513          	addi	a0,a0,306 # 80208878 <rodata_start+0x878>
    8020374e:	a55fd0ef          	jal	802011a2 <printk>
    80203752:	a0a5                	j	802037ba <uvmcopy+0xdc>
    80203754:	fd843783          	ld	a5,-40(s0)
    80203758:	6605                	lui	a2,0x1
    8020375a:	85be                	mv	a1,a5
    8020375c:	fc843503          	ld	a0,-56(s0)
    80203760:	9f8fe0ef          	jal	80201958 <memmove>
    80203764:	fc843783          	ld	a5,-56(s0)
    80203768:	fd442703          	lw	a4,-44(s0)
    8020376c:	86be                	mv	a3,a5
    8020376e:	6605                	lui	a2,0x1
    80203770:	fe843583          	ld	a1,-24(s0)
    80203774:	fb043503          	ld	a0,-80(s0)
    80203778:	93dff0ef          	jal	802030b4 <mappages>
    8020377c:	87aa                	mv	a5,a0
    8020377e:	cf99                	beqz	a5,8020379c <uvmcopy+0xbe>
    80203780:	fc843503          	ld	a0,-56(s0)
    80203784:	81dff0ef          	jal	80202fa0 <kfree>
    80203788:	00005517          	auipc	a0,0x5
    8020378c:	10850513          	addi	a0,a0,264 # 80208890 <rodata_start+0x890>
    80203790:	a13fd0ef          	jal	802011a2 <printk>
    80203794:	a01d                	j	802037ba <uvmcopy+0xdc>
    80203796:	0001                	nop
    80203798:	a011                	j	8020379c <uvmcopy+0xbe>
    8020379a:	0001                	nop
    8020379c:	fe843703          	ld	a4,-24(s0)
    802037a0:	6785                	lui	a5,0x1
    802037a2:	97ba                	add	a5,a5,a4
    802037a4:	fef43423          	sd	a5,-24(s0)
    802037a8:	fa843783          	ld	a5,-88(s0)
    802037ac:	07b2                	slli	a5,a5,0xc
    802037ae:	fe843703          	ld	a4,-24(s0)
    802037b2:	f4f763e3          	bltu	a4,a5,802036f8 <uvmcopy+0x1a>
    802037b6:	4781                	li	a5,0
    802037b8:	a821                	j	802037d0 <uvmcopy+0xf2>
    802037ba:	fe843783          	ld	a5,-24(s0)
    802037be:	83b1                	srli	a5,a5,0xc
    802037c0:	4685                	li	a3,1
    802037c2:	863e                	mv	a2,a5
    802037c4:	4581                	li	a1,0
    802037c6:	fb043503          	ld	a0,-80(s0)
    802037ca:	b2dff0ef          	jal	802032f6 <uvmunmap>
    802037ce:	57fd                	li	a5,-1
    802037d0:	853e                	mv	a0,a5
    802037d2:	60e6                	ld	ra,88(sp)
    802037d4:	6446                	ld	s0,80(sp)
    802037d6:	6125                	addi	sp,sp,96
    802037d8:	8082                	ret

00000000802037da <uvmalloc>:
    802037da:	7139                	addi	sp,sp,-64
    802037dc:	fc06                	sd	ra,56(sp)
    802037de:	f822                	sd	s0,48(sp)
    802037e0:	0080                	addi	s0,sp,64
    802037e2:	fca43c23          	sd	a0,-40(s0)
    802037e6:	fcb43823          	sd	a1,-48(s0)
    802037ea:	fcc43423          	sd	a2,-56(s0)
    802037ee:	87b6                	mv	a5,a3
    802037f0:	fcf42223          	sw	a5,-60(s0)
    802037f4:	fc843703          	ld	a4,-56(s0)
    802037f8:	fd043783          	ld	a5,-48(s0)
    802037fc:	00f77563          	bgeu	a4,a5,80203806 <uvmalloc+0x2c>
    80203800:	fd043783          	ld	a5,-48(s0)
    80203804:	a05d                	j	802038aa <uvmalloc+0xd0>
    80203806:	fd043703          	ld	a4,-48(s0)
    8020380a:	6785                	lui	a5,0x1
    8020380c:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    8020380e:	973e                	add	a4,a4,a5
    80203810:	77fd                	lui	a5,0xfffff
    80203812:	8ff9                	and	a5,a5,a4
    80203814:	fcf43823          	sd	a5,-48(s0)
    80203818:	fd043783          	ld	a5,-48(s0)
    8020381c:	fef43423          	sd	a5,-24(s0)
    80203820:	a8ad                	j	8020389a <uvmalloc+0xc0>
    80203822:	ffaff0ef          	jal	8020301c <kalloc>
    80203826:	fea43023          	sd	a0,-32(s0)
    8020382a:	fe043783          	ld	a5,-32(s0)
    8020382e:	eb99                	bnez	a5,80203844 <uvmalloc+0x6a>
    80203830:	fd043603          	ld	a2,-48(s0)
    80203834:	fe843583          	ld	a1,-24(s0)
    80203838:	fd843503          	ld	a0,-40(s0)
    8020383c:	078000ef          	jal	802038b4 <uvmdealloc>
    80203840:	4781                	li	a5,0
    80203842:	a0a5                	j	802038aa <uvmalloc+0xd0>
    80203844:	6605                	lui	a2,0x1
    80203846:	4581                	li	a1,0
    80203848:	fe043503          	ld	a0,-32(s0)
    8020384c:	9dcfe0ef          	jal	80201a28 <memset>
    80203850:	fe043783          	ld	a5,-32(s0)
    80203854:	fc442703          	lw	a4,-60(s0)
    80203858:	01276713          	ori	a4,a4,18
    8020385c:	2701                	sext.w	a4,a4
    8020385e:	86be                	mv	a3,a5
    80203860:	6605                	lui	a2,0x1
    80203862:	fe843583          	ld	a1,-24(s0)
    80203866:	fd843503          	ld	a0,-40(s0)
    8020386a:	84bff0ef          	jal	802030b4 <mappages>
    8020386e:	87aa                	mv	a5,a0
    80203870:	cf99                	beqz	a5,8020388e <uvmalloc+0xb4>
    80203872:	fe043503          	ld	a0,-32(s0)
    80203876:	f2aff0ef          	jal	80202fa0 <kfree>
    8020387a:	fd043603          	ld	a2,-48(s0)
    8020387e:	fe843583          	ld	a1,-24(s0)
    80203882:	fd843503          	ld	a0,-40(s0)
    80203886:	02e000ef          	jal	802038b4 <uvmdealloc>
    8020388a:	4781                	li	a5,0
    8020388c:	a839                	j	802038aa <uvmalloc+0xd0>
    8020388e:	fe843703          	ld	a4,-24(s0)
    80203892:	6785                	lui	a5,0x1
    80203894:	97ba                	add	a5,a5,a4
    80203896:	fef43423          	sd	a5,-24(s0)
    8020389a:	fe843703          	ld	a4,-24(s0)
    8020389e:	fc843783          	ld	a5,-56(s0)
    802038a2:	f8f760e3          	bltu	a4,a5,80203822 <uvmalloc+0x48>
    802038a6:	fc843783          	ld	a5,-56(s0)
    802038aa:	853e                	mv	a0,a5
    802038ac:	70e2                	ld	ra,56(sp)
    802038ae:	7442                	ld	s0,48(sp)
    802038b0:	6121                	addi	sp,sp,64
    802038b2:	8082                	ret

00000000802038b4 <uvmdealloc>:
    802038b4:	7139                	addi	sp,sp,-64
    802038b6:	fc06                	sd	ra,56(sp)
    802038b8:	f822                	sd	s0,48(sp)
    802038ba:	0080                	addi	s0,sp,64
    802038bc:	fca43c23          	sd	a0,-40(s0)
    802038c0:	fcb43823          	sd	a1,-48(s0)
    802038c4:	fcc43423          	sd	a2,-56(s0)
    802038c8:	fc843703          	ld	a4,-56(s0)
    802038cc:	fd043783          	ld	a5,-48(s0)
    802038d0:	00f76563          	bltu	a4,a5,802038da <uvmdealloc+0x26>
    802038d4:	fd043783          	ld	a5,-48(s0)
    802038d8:	a0b5                	j	80203944 <uvmdealloc+0x90>
    802038da:	fc843703          	ld	a4,-56(s0)
    802038de:	6785                	lui	a5,0x1
    802038e0:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802038e2:	973e                	add	a4,a4,a5
    802038e4:	77fd                	lui	a5,0xfffff
    802038e6:	8f7d                	and	a4,a4,a5
    802038e8:	fd043683          	ld	a3,-48(s0)
    802038ec:	6785                	lui	a5,0x1
    802038ee:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802038f0:	96be                	add	a3,a3,a5
    802038f2:	77fd                	lui	a5,0xfffff
    802038f4:	8ff5                	and	a5,a5,a3
    802038f6:	04f77563          	bgeu	a4,a5,80203940 <uvmdealloc+0x8c>
    802038fa:	fd043703          	ld	a4,-48(s0)
    802038fe:	6785                	lui	a5,0x1
    80203900:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80203902:	973e                	add	a4,a4,a5
    80203904:	77fd                	lui	a5,0xfffff
    80203906:	8f7d                	and	a4,a4,a5
    80203908:	fc843683          	ld	a3,-56(s0)
    8020390c:	6785                	lui	a5,0x1
    8020390e:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80203910:	96be                	add	a3,a3,a5
    80203912:	77fd                	lui	a5,0xfffff
    80203914:	8ff5                	and	a5,a5,a3
    80203916:	40f707b3          	sub	a5,a4,a5
    8020391a:	83b1                	srli	a5,a5,0xc
    8020391c:	fef42623          	sw	a5,-20(s0)
    80203920:	fc843703          	ld	a4,-56(s0)
    80203924:	6785                	lui	a5,0x1
    80203926:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80203928:	973e                	add	a4,a4,a5
    8020392a:	77fd                	lui	a5,0xfffff
    8020392c:	8ff9                	and	a5,a5,a4
    8020392e:	fec42703          	lw	a4,-20(s0)
    80203932:	4685                	li	a3,1
    80203934:	863a                	mv	a2,a4
    80203936:	85be                	mv	a1,a5
    80203938:	fd843503          	ld	a0,-40(s0)
    8020393c:	9bbff0ef          	jal	802032f6 <uvmunmap>
    80203940:	fc843783          	ld	a5,-56(s0)
    80203944:	853e                	mv	a0,a5
    80203946:	70e2                	ld	ra,56(sp)
    80203948:	7442                	ld	s0,48(sp)
    8020394a:	6121                	addi	sp,sp,64
    8020394c:	8082                	ret

000000008020394e <copyout>:
    8020394e:	715d                	addi	sp,sp,-80
    80203950:	e486                	sd	ra,72(sp)
    80203952:	e0a2                	sd	s0,64(sp)
    80203954:	0880                	addi	s0,sp,80
    80203956:	fca43423          	sd	a0,-56(s0)
    8020395a:	fcb43023          	sd	a1,-64(s0)
    8020395e:	fac43c23          	sd	a2,-72(s0)
    80203962:	fad43823          	sd	a3,-80(s0)
    80203966:	a859                	j	802039fc <copyout+0xae>
    80203968:	fc043703          	ld	a4,-64(s0)
    8020396c:	77fd                	lui	a5,0xfffff
    8020396e:	8ff9                	and	a5,a5,a4
    80203970:	fef43023          	sd	a5,-32(s0)
    80203974:	fe043583          	ld	a1,-32(s0)
    80203978:	fc843503          	ld	a0,-56(s0)
    8020397c:	cabff0ef          	jal	80203626 <walk_addr>
    80203980:	fca43c23          	sd	a0,-40(s0)
    80203984:	fd843783          	ld	a5,-40(s0)
    80203988:	e399                	bnez	a5,8020398e <copyout+0x40>
    8020398a:	57fd                	li	a5,-1
    8020398c:	a8a5                	j	80203a04 <copyout+0xb6>
    8020398e:	fe043703          	ld	a4,-32(s0)
    80203992:	fc043783          	ld	a5,-64(s0)
    80203996:	8f1d                	sub	a4,a4,a5
    80203998:	6785                	lui	a5,0x1
    8020399a:	97ba                	add	a5,a5,a4
    8020399c:	fef43423          	sd	a5,-24(s0)
    802039a0:	fe843703          	ld	a4,-24(s0)
    802039a4:	fb043783          	ld	a5,-80(s0)
    802039a8:	00e7f663          	bgeu	a5,a4,802039b4 <copyout+0x66>
    802039ac:	fb043783          	ld	a5,-80(s0)
    802039b0:	fef43423          	sd	a5,-24(s0)
    802039b4:	fc043703          	ld	a4,-64(s0)
    802039b8:	fe043783          	ld	a5,-32(s0)
    802039bc:	8f1d                	sub	a4,a4,a5
    802039be:	fd843783          	ld	a5,-40(s0)
    802039c2:	97ba                	add	a5,a5,a4
    802039c4:	fe843603          	ld	a2,-24(s0)
    802039c8:	fb843583          	ld	a1,-72(s0)
    802039cc:	853e                	mv	a0,a5
    802039ce:	f8bfd0ef          	jal	80201958 <memmove>
    802039d2:	fb043703          	ld	a4,-80(s0)
    802039d6:	fe843783          	ld	a5,-24(s0)
    802039da:	40f707b3          	sub	a5,a4,a5
    802039de:	faf43823          	sd	a5,-80(s0)
    802039e2:	fb843703          	ld	a4,-72(s0)
    802039e6:	fe843783          	ld	a5,-24(s0)
    802039ea:	97ba                	add	a5,a5,a4
    802039ec:	faf43c23          	sd	a5,-72(s0)
    802039f0:	fe043703          	ld	a4,-32(s0)
    802039f4:	6785                	lui	a5,0x1
    802039f6:	97ba                	add	a5,a5,a4
    802039f8:	fcf43023          	sd	a5,-64(s0)
    802039fc:	fb043783          	ld	a5,-80(s0)
    80203a00:	f7a5                	bnez	a5,80203968 <copyout+0x1a>
    80203a02:	4781                	li	a5,0
    80203a04:	853e                	mv	a0,a5
    80203a06:	60a6                	ld	ra,72(sp)
    80203a08:	6406                	ld	s0,64(sp)
    80203a0a:	6161                	addi	sp,sp,80
    80203a0c:	8082                	ret

0000000080203a0e <copyin>:
    80203a0e:	715d                	addi	sp,sp,-80
    80203a10:	e486                	sd	ra,72(sp)
    80203a12:	e0a2                	sd	s0,64(sp)
    80203a14:	0880                	addi	s0,sp,80
    80203a16:	fca43423          	sd	a0,-56(s0)
    80203a1a:	fcb43023          	sd	a1,-64(s0)
    80203a1e:	fac43c23          	sd	a2,-72(s0)
    80203a22:	fad43823          	sd	a3,-80(s0)
    80203a26:	a869                	j	80203ac0 <copyin+0xb2>
    80203a28:	fb843703          	ld	a4,-72(s0)
    80203a2c:	77fd                	lui	a5,0xfffff
    80203a2e:	8ff9                	and	a5,a5,a4
    80203a30:	fef43023          	sd	a5,-32(s0)
    80203a34:	fe043583          	ld	a1,-32(s0)
    80203a38:	fc843503          	ld	a0,-56(s0)
    80203a3c:	bebff0ef          	jal	80203626 <walk_addr>
    80203a40:	fca43c23          	sd	a0,-40(s0)
    80203a44:	fc043c23          	sd	zero,-40(s0)
    80203a48:	fd843783          	ld	a5,-40(s0)
    80203a4c:	c399                	beqz	a5,80203a52 <copyin+0x44>
    80203a4e:	57fd                	li	a5,-1
    80203a50:	a8a5                	j	80203ac8 <copyin+0xba>
    80203a52:	fe043703          	ld	a4,-32(s0)
    80203a56:	fb843783          	ld	a5,-72(s0)
    80203a5a:	8f1d                	sub	a4,a4,a5
    80203a5c:	6785                	lui	a5,0x1
    80203a5e:	97ba                	add	a5,a5,a4
    80203a60:	fef43423          	sd	a5,-24(s0)
    80203a64:	fe843703          	ld	a4,-24(s0)
    80203a68:	fb043783          	ld	a5,-80(s0)
    80203a6c:	00e7f663          	bgeu	a5,a4,80203a78 <copyin+0x6a>
    80203a70:	fb043783          	ld	a5,-80(s0)
    80203a74:	fef43423          	sd	a5,-24(s0)
    80203a78:	fb843703          	ld	a4,-72(s0)
    80203a7c:	fe043783          	ld	a5,-32(s0)
    80203a80:	8f1d                	sub	a4,a4,a5
    80203a82:	fd843783          	ld	a5,-40(s0)
    80203a86:	97ba                	add	a5,a5,a4
    80203a88:	fe843603          	ld	a2,-24(s0)
    80203a8c:	85be                	mv	a1,a5
    80203a8e:	fc043503          	ld	a0,-64(s0)
    80203a92:	ec7fd0ef          	jal	80201958 <memmove>
    80203a96:	fb043703          	ld	a4,-80(s0)
    80203a9a:	fe843783          	ld	a5,-24(s0)
    80203a9e:	40f707b3          	sub	a5,a4,a5
    80203aa2:	faf43823          	sd	a5,-80(s0)
    80203aa6:	fc043703          	ld	a4,-64(s0)
    80203aaa:	fe843783          	ld	a5,-24(s0)
    80203aae:	97ba                	add	a5,a5,a4
    80203ab0:	fcf43023          	sd	a5,-64(s0)
    80203ab4:	fe043703          	ld	a4,-32(s0)
    80203ab8:	6785                	lui	a5,0x1
    80203aba:	97ba                	add	a5,a5,a4
    80203abc:	faf43c23          	sd	a5,-72(s0)
    80203ac0:	fb043783          	ld	a5,-80(s0)
    80203ac4:	f3b5                	bnez	a5,80203a28 <copyin+0x1a>
    80203ac6:	4781                	li	a5,0
    80203ac8:	853e                	mv	a0,a5
    80203aca:	60a6                	ld	ra,72(sp)
    80203acc:	6406                	ld	s0,64(sp)
    80203ace:	6161                	addi	sp,sp,80
    80203ad0:	8082                	ret

0000000080203ad2 <copyinstr>:
    80203ad2:	711d                	addi	sp,sp,-96
    80203ad4:	ec86                	sd	ra,88(sp)
    80203ad6:	e8a2                	sd	s0,80(sp)
    80203ad8:	1080                	addi	s0,sp,96
    80203ada:	faa43c23          	sd	a0,-72(s0)
    80203ade:	fab43823          	sd	a1,-80(s0)
    80203ae2:	fac43423          	sd	a2,-88(s0)
    80203ae6:	fad43023          	sd	a3,-96(s0)
    80203aea:	fe042223          	sw	zero,-28(s0)
    80203aee:	fe042023          	sw	zero,-32(s0)
    80203af2:	a8c9                	j	80203bc4 <copyinstr+0xf2>
    80203af4:	fa843703          	ld	a4,-88(s0)
    80203af8:	77fd                	lui	a5,0xfffff
    80203afa:	8ff9                	and	a5,a5,a4
    80203afc:	fcf43823          	sd	a5,-48(s0)
    80203b00:	fd043583          	ld	a1,-48(s0)
    80203b04:	fb843503          	ld	a0,-72(s0)
    80203b08:	b1fff0ef          	jal	80203626 <walk_addr>
    80203b0c:	fca43423          	sd	a0,-56(s0)
    80203b10:	fc843783          	ld	a5,-56(s0)
    80203b14:	e399                	bnez	a5,80203b1a <copyinstr+0x48>
    80203b16:	57fd                	li	a5,-1
    80203b18:	a87d                	j	80203bd6 <copyinstr+0x104>
    80203b1a:	fd043703          	ld	a4,-48(s0)
    80203b1e:	fa843783          	ld	a5,-88(s0)
    80203b22:	8f1d                	sub	a4,a4,a5
    80203b24:	6785                	lui	a5,0x1
    80203b26:	97ba                	add	a5,a5,a4
    80203b28:	fef43423          	sd	a5,-24(s0)
    80203b2c:	fe843703          	ld	a4,-24(s0)
    80203b30:	fa043783          	ld	a5,-96(s0)
    80203b34:	00e7f663          	bgeu	a5,a4,80203b40 <copyinstr+0x6e>
    80203b38:	fa043783          	ld	a5,-96(s0)
    80203b3c:	fef43423          	sd	a5,-24(s0)
    80203b40:	fa843703          	ld	a4,-88(s0)
    80203b44:	fd043783          	ld	a5,-48(s0)
    80203b48:	8f1d                	sub	a4,a4,a5
    80203b4a:	fc843783          	ld	a5,-56(s0)
    80203b4e:	97ba                	add	a5,a5,a4
    80203b50:	fcf43c23          	sd	a5,-40(s0)
    80203b54:	a8b9                	j	80203bb2 <copyinstr+0xe0>
    80203b56:	fd843783          	ld	a5,-40(s0)
    80203b5a:	0007c783          	lbu	a5,0(a5) # 1000 <n+0xfe0>
    80203b5e:	eb89                	bnez	a5,80203b70 <copyinstr+0x9e>
    80203b60:	fb043783          	ld	a5,-80(s0)
    80203b64:	00078023          	sb	zero,0(a5)
    80203b68:	4785                	li	a5,1
    80203b6a:	fef42223          	sw	a5,-28(s0)
    80203b6e:	a0a9                	j	80203bb8 <copyinstr+0xe6>
    80203b70:	fd843783          	ld	a5,-40(s0)
    80203b74:	0007c703          	lbu	a4,0(a5)
    80203b78:	fb043783          	ld	a5,-80(s0)
    80203b7c:	00e78023          	sb	a4,0(a5)
    80203b80:	fe843783          	ld	a5,-24(s0)
    80203b84:	17fd                	addi	a5,a5,-1
    80203b86:	fef43423          	sd	a5,-24(s0)
    80203b8a:	fa043783          	ld	a5,-96(s0)
    80203b8e:	17fd                	addi	a5,a5,-1
    80203b90:	faf43023          	sd	a5,-96(s0)
    80203b94:	fd843783          	ld	a5,-40(s0)
    80203b98:	0785                	addi	a5,a5,1
    80203b9a:	fcf43c23          	sd	a5,-40(s0)
    80203b9e:	fb043783          	ld	a5,-80(s0)
    80203ba2:	0785                	addi	a5,a5,1
    80203ba4:	faf43823          	sd	a5,-80(s0)
    80203ba8:	fe042783          	lw	a5,-32(s0)
    80203bac:	2785                	addiw	a5,a5,1
    80203bae:	fef42023          	sw	a5,-32(s0)
    80203bb2:	fe843783          	ld	a5,-24(s0)
    80203bb6:	f3c5                	bnez	a5,80203b56 <copyinstr+0x84>
    80203bb8:	fd043703          	ld	a4,-48(s0)
    80203bbc:	6785                	lui	a5,0x1
    80203bbe:	97ba                	add	a5,a5,a4
    80203bc0:	faf43423          	sd	a5,-88(s0)
    80203bc4:	fe442783          	lw	a5,-28(s0)
    80203bc8:	2781                	sext.w	a5,a5
    80203bca:	e781                	bnez	a5,80203bd2 <copyinstr+0x100>
    80203bcc:	fa043783          	ld	a5,-96(s0)
    80203bd0:	f395                	bnez	a5,80203af4 <copyinstr+0x22>
    80203bd2:	fe042783          	lw	a5,-32(s0)
    80203bd6:	853e                	mv	a0,a5
    80203bd8:	60e6                	ld	ra,88(sp)
    80203bda:	6446                	ld	s0,80(sp)
    80203bdc:	6125                	addi	sp,sp,96
    80203bde:	8082                	ret

0000000080203be0 <either_copyout>:
    80203be0:	7139                	addi	sp,sp,-64
    80203be2:	fc06                	sd	ra,56(sp)
    80203be4:	f822                	sd	s0,48(sp)
    80203be6:	0080                	addi	s0,sp,64
    80203be8:	87aa                	mv	a5,a0
    80203bea:	fcb43823          	sd	a1,-48(s0)
    80203bee:	fcc43423          	sd	a2,-56(s0)
    80203bf2:	fcd43023          	sd	a3,-64(s0)
    80203bf6:	fcf42e23          	sw	a5,-36(s0)
    80203bfa:	a13fe0ef          	jal	8020260c <get_cur_proc>
    80203bfe:	fea43423          	sd	a0,-24(s0)
    80203c02:	fdc42783          	lw	a5,-36(s0)
    80203c06:	2781                	sext.w	a5,a5
    80203c08:	cf99                	beqz	a5,80203c26 <either_copyout+0x46>
    80203c0a:	fe843783          	ld	a5,-24(s0)
    80203c0e:	679c                	ld	a5,8(a5)
    80203c10:	fc043683          	ld	a3,-64(s0)
    80203c14:	fc843603          	ld	a2,-56(s0)
    80203c18:	fd043583          	ld	a1,-48(s0)
    80203c1c:	853e                	mv	a0,a5
    80203c1e:	d31ff0ef          	jal	8020394e <copyout>
    80203c22:	87aa                	mv	a5,a0
    80203c24:	a819                	j	80203c3a <either_copyout+0x5a>
    80203c26:	fd043783          	ld	a5,-48(s0)
    80203c2a:	fc043603          	ld	a2,-64(s0)
    80203c2e:	fc843583          	ld	a1,-56(s0)
    80203c32:	853e                	mv	a0,a5
    80203c34:	d25fd0ef          	jal	80201958 <memmove>
    80203c38:	4781                	li	a5,0
    80203c3a:	853e                	mv	a0,a5
    80203c3c:	70e2                	ld	ra,56(sp)
    80203c3e:	7442                	ld	s0,48(sp)
    80203c40:	6121                	addi	sp,sp,64
    80203c42:	8082                	ret

0000000080203c44 <either_copyin>:
    80203c44:	7139                	addi	sp,sp,-64
    80203c46:	fc06                	sd	ra,56(sp)
    80203c48:	f822                	sd	s0,48(sp)
    80203c4a:	0080                	addi	s0,sp,64
    80203c4c:	87aa                	mv	a5,a0
    80203c4e:	fcb43823          	sd	a1,-48(s0)
    80203c52:	fcc43423          	sd	a2,-56(s0)
    80203c56:	fcd43023          	sd	a3,-64(s0)
    80203c5a:	fcf42e23          	sw	a5,-36(s0)
    80203c5e:	9affe0ef          	jal	8020260c <get_cur_proc>
    80203c62:	fea43423          	sd	a0,-24(s0)
    80203c66:	fdc42783          	lw	a5,-36(s0)
    80203c6a:	2781                	sext.w	a5,a5
    80203c6c:	cf99                	beqz	a5,80203c8a <either_copyin+0x46>
    80203c6e:	fe843783          	ld	a5,-24(s0)
    80203c72:	679c                	ld	a5,8(a5)
    80203c74:	fc043683          	ld	a3,-64(s0)
    80203c78:	fd043603          	ld	a2,-48(s0)
    80203c7c:	fc843583          	ld	a1,-56(s0)
    80203c80:	853e                	mv	a0,a5
    80203c82:	d8dff0ef          	jal	80203a0e <copyin>
    80203c86:	87aa                	mv	a5,a0
    80203c88:	a819                	j	80203c9e <either_copyin+0x5a>
    80203c8a:	fd043783          	ld	a5,-48(s0)
    80203c8e:	fc043603          	ld	a2,-64(s0)
    80203c92:	85be                	mv	a1,a5
    80203c94:	fc843503          	ld	a0,-56(s0)
    80203c98:	cc1fd0ef          	jal	80201958 <memmove>
    80203c9c:	4781                	li	a5,0
    80203c9e:	853e                	mv	a0,a5
    80203ca0:	70e2                	ld	ra,56(sp)
    80203ca2:	7442                	ld	s0,48(sp)
    80203ca4:	6121                	addi	sp,sp,64
    80203ca6:	8082                	ret

0000000080203ca8 <init_queue>:
    80203ca8:	1101                	addi	sp,sp,-32
    80203caa:	ec06                	sd	ra,24(sp)
    80203cac:	e822                	sd	s0,16(sp)
    80203cae:	1000                	addi	s0,sp,32
    80203cb0:	fea43423          	sd	a0,-24(s0)
    80203cb4:	fe843703          	ld	a4,-24(s0)
    80203cb8:	6785                	lui	a5,0x1
    80203cba:	97ba                	add	a5,a5,a4
    80203cbc:	0007a223          	sw	zero,4(a5) # 1004 <n+0xfe4>
    80203cc0:	fe843703          	ld	a4,-24(s0)
    80203cc4:	6785                	lui	a5,0x1
    80203cc6:	97ba                	add	a5,a5,a4
    80203cc8:	43d8                	lw	a4,4(a5)
    80203cca:	fe843683          	ld	a3,-24(s0)
    80203cce:	6785                	lui	a5,0x1
    80203cd0:	97b6                	add	a5,a5,a3
    80203cd2:	c398                	sw	a4,0(a5)
    80203cd4:	fe843703          	ld	a4,-24(s0)
    80203cd8:	6785                	lui	a5,0x1
    80203cda:	97ba                	add	a5,a5,a4
    80203cdc:	4705                	li	a4,1
    80203cde:	c798                	sw	a4,8(a5)
    80203ce0:	0001                	nop
    80203ce2:	60e2                	ld	ra,24(sp)
    80203ce4:	6442                	ld	s0,16(sp)
    80203ce6:	6105                	addi	sp,sp,32
    80203ce8:	8082                	ret

0000000080203cea <push_queue>:
    80203cea:	1101                	addi	sp,sp,-32
    80203cec:	ec06                	sd	ra,24(sp)
    80203cee:	e822                	sd	s0,16(sp)
    80203cf0:	1000                	addi	s0,sp,32
    80203cf2:	fea43423          	sd	a0,-24(s0)
    80203cf6:	87ae                	mv	a5,a1
    80203cf8:	fef42223          	sw	a5,-28(s0)
    80203cfc:	fe843703          	ld	a4,-24(s0)
    80203d00:	6785                	lui	a5,0x1
    80203d02:	97ba                	add	a5,a5,a4
    80203d04:	479c                	lw	a5,8(a5)
    80203d06:	e39d                	bnez	a5,80203d2c <push_queue+0x42>
    80203d08:	fe843703          	ld	a4,-24(s0)
    80203d0c:	6785                	lui	a5,0x1
    80203d0e:	97ba                	add	a5,a5,a4
    80203d10:	4398                	lw	a4,0(a5)
    80203d12:	fe843683          	ld	a3,-24(s0)
    80203d16:	6785                	lui	a5,0x1
    80203d18:	97b6                	add	a5,a5,a3
    80203d1a:	43dc                	lw	a5,4(a5)
    80203d1c:	00f71863          	bne	a4,a5,80203d2c <push_queue+0x42>
    80203d20:	00005517          	auipc	a0,0x5
    80203d24:	b9850513          	addi	a0,a0,-1128 # 802088b8 <rodata_start+0x8b8>
    80203d28:	c85fc0ef          	jal	802009ac <panic>
    80203d2c:	fe843703          	ld	a4,-24(s0)
    80203d30:	6785                	lui	a5,0x1
    80203d32:	97ba                	add	a5,a5,a4
    80203d34:	0007a423          	sw	zero,8(a5) # 1008 <n+0xfe8>
    80203d38:	fe843703          	ld	a4,-24(s0)
    80203d3c:	6785                	lui	a5,0x1
    80203d3e:	97ba                	add	a5,a5,a4
    80203d40:	43dc                	lw	a5,4(a5)
    80203d42:	fe843703          	ld	a4,-24(s0)
    80203d46:	078a                	slli	a5,a5,0x2
    80203d48:	97ba                	add	a5,a5,a4
    80203d4a:	fe442703          	lw	a4,-28(s0)
    80203d4e:	c398                	sw	a4,0(a5)
    80203d50:	fe843703          	ld	a4,-24(s0)
    80203d54:	6785                	lui	a5,0x1
    80203d56:	97ba                	add	a5,a5,a4
    80203d58:	43dc                	lw	a5,4(a5)
    80203d5a:	2785                	addiw	a5,a5,1 # 1001 <n+0xfe1>
    80203d5c:	2781                	sext.w	a5,a5
    80203d5e:	873e                	mv	a4,a5
    80203d60:	41f7579b          	sraiw	a5,a4,0x1f
    80203d64:	0177d79b          	srliw	a5,a5,0x17
    80203d68:	9f3d                	addw	a4,a4,a5
    80203d6a:	1ff77713          	andi	a4,a4,511
    80203d6e:	40f707bb          	subw	a5,a4,a5
    80203d72:	0007871b          	sext.w	a4,a5
    80203d76:	fe843683          	ld	a3,-24(s0)
    80203d7a:	6785                	lui	a5,0x1
    80203d7c:	97b6                	add	a5,a5,a3
    80203d7e:	c3d8                	sw	a4,4(a5)
    80203d80:	0001                	nop
    80203d82:	60e2                	ld	ra,24(sp)
    80203d84:	6442                	ld	s0,16(sp)
    80203d86:	6105                	addi	sp,sp,32
    80203d88:	8082                	ret

0000000080203d8a <pop_queue>:
    80203d8a:	7179                	addi	sp,sp,-48
    80203d8c:	f406                	sd	ra,40(sp)
    80203d8e:	f022                	sd	s0,32(sp)
    80203d90:	1800                	addi	s0,sp,48
    80203d92:	fca43c23          	sd	a0,-40(s0)
    80203d96:	fd843703          	ld	a4,-40(s0)
    80203d9a:	6785                	lui	a5,0x1
    80203d9c:	97ba                	add	a5,a5,a4
    80203d9e:	479c                	lw	a5,8(a5)
    80203da0:	c399                	beqz	a5,80203da6 <pop_queue+0x1c>
    80203da2:	57fd                	li	a5,-1
    80203da4:	a88d                	j	80203e16 <pop_queue+0x8c>
    80203da6:	fd843703          	ld	a4,-40(s0)
    80203daa:	6785                	lui	a5,0x1
    80203dac:	97ba                	add	a5,a5,a4
    80203dae:	439c                	lw	a5,0(a5)
    80203db0:	fd843703          	ld	a4,-40(s0)
    80203db4:	078a                	slli	a5,a5,0x2
    80203db6:	97ba                	add	a5,a5,a4
    80203db8:	439c                	lw	a5,0(a5)
    80203dba:	fef42623          	sw	a5,-20(s0)
    80203dbe:	fd843703          	ld	a4,-40(s0)
    80203dc2:	6785                	lui	a5,0x1
    80203dc4:	97ba                	add	a5,a5,a4
    80203dc6:	439c                	lw	a5,0(a5)
    80203dc8:	2785                	addiw	a5,a5,1 # 1001 <n+0xfe1>
    80203dca:	2781                	sext.w	a5,a5
    80203dcc:	873e                	mv	a4,a5
    80203dce:	41f7579b          	sraiw	a5,a4,0x1f
    80203dd2:	0177d79b          	srliw	a5,a5,0x17
    80203dd6:	9f3d                	addw	a4,a4,a5
    80203dd8:	1ff77713          	andi	a4,a4,511
    80203ddc:	40f707bb          	subw	a5,a4,a5
    80203de0:	0007871b          	sext.w	a4,a5
    80203de4:	fd843683          	ld	a3,-40(s0)
    80203de8:	6785                	lui	a5,0x1
    80203dea:	97b6                	add	a5,a5,a3
    80203dec:	c398                	sw	a4,0(a5)
    80203dee:	fd843703          	ld	a4,-40(s0)
    80203df2:	6785                	lui	a5,0x1
    80203df4:	97ba                	add	a5,a5,a4
    80203df6:	4398                	lw	a4,0(a5)
    80203df8:	fd843683          	ld	a3,-40(s0)
    80203dfc:	6785                	lui	a5,0x1
    80203dfe:	97b6                	add	a5,a5,a3
    80203e00:	43dc                	lw	a5,4(a5)
    80203e02:	00f71863          	bne	a4,a5,80203e12 <pop_queue+0x88>
    80203e06:	fd843703          	ld	a4,-40(s0)
    80203e0a:	6785                	lui	a5,0x1
    80203e0c:	97ba                	add	a5,a5,a4
    80203e0e:	4705                	li	a4,1
    80203e10:	c798                	sw	a4,8(a5)
    80203e12:	fec42783          	lw	a5,-20(s0)
    80203e16:	853e                	mv	a0,a5
    80203e18:	70a2                	ld	ra,40(sp)
    80203e1a:	7402                	ld	s0,32(sp)
    80203e1c:	6145                	addi	sp,sp,48
    80203e1e:	8082                	ret

0000000080203e20 <consgetc>:
    80203e20:	1141                	addi	sp,sp,-16
    80203e22:	e406                	sd	ra,8(sp)
    80203e24:	e022                	sd	s0,0(sp)
    80203e26:	0800                	addi	s0,sp,16
    80203e28:	aeffc0ef          	jal	80200916 <sbi_getchar>
    80203e2c:	87aa                	mv	a5,a0
    80203e2e:	853e                	mv	a0,a5
    80203e30:	60a2                	ld	ra,8(sp)
    80203e32:	6402                	ld	s0,0(sp)
    80203e34:	0141                	addi	sp,sp,16
    80203e36:	8082                	ret

0000000080203e38 <binit>:
    80203e38:	1101                	addi	sp,sp,-32
    80203e3a:	ec06                	sd	ra,24(sp)
    80203e3c:	e822                	sd	s0,16(sp)
    80203e3e:	1000                	addi	s0,sp,32
    80203e40:	00446717          	auipc	a4,0x446
    80203e44:	30070713          	addi	a4,a4,768 # 8064a140 <bcache>
    80203e48:	67a1                	lui	a5,0x8
    80203e4a:	97ba                	add	a5,a5,a4
    80203e4c:	0044e717          	auipc	a4,0x44e
    80203e50:	fa470713          	addi	a4,a4,-92 # 80651df0 <bcache+0x7cb0>
    80203e54:	cce7b423          	sd	a4,-824(a5) # 7cc8 <n+0x7ca8>
    80203e58:	00446717          	auipc	a4,0x446
    80203e5c:	2e870713          	addi	a4,a4,744 # 8064a140 <bcache>
    80203e60:	67a1                	lui	a5,0x8
    80203e62:	97ba                	add	a5,a5,a4
    80203e64:	0044e717          	auipc	a4,0x44e
    80203e68:	f8c70713          	addi	a4,a4,-116 # 80651df0 <bcache+0x7cb0>
    80203e6c:	cce7b823          	sd	a4,-816(a5) # 7cd0 <n+0x7cb0>
    80203e70:	00446797          	auipc	a5,0x446
    80203e74:	2d078793          	addi	a5,a5,720 # 8064a140 <bcache>
    80203e78:	fef43423          	sd	a5,-24(s0)
    80203e7c:	a8b1                	j	80203ed8 <binit+0xa0>
    80203e7e:	00446717          	auipc	a4,0x446
    80203e82:	2c270713          	addi	a4,a4,706 # 8064a140 <bcache>
    80203e86:	67a1                	lui	a5,0x8
    80203e88:	97ba                	add	a5,a5,a4
    80203e8a:	cd07b703          	ld	a4,-816(a5) # 7cd0 <n+0x7cb0>
    80203e8e:	fe843783          	ld	a5,-24(s0)
    80203e92:	f398                	sd	a4,32(a5)
    80203e94:	fe843783          	ld	a5,-24(s0)
    80203e98:	0044e717          	auipc	a4,0x44e
    80203e9c:	f5870713          	addi	a4,a4,-168 # 80651df0 <bcache+0x7cb0>
    80203ea0:	ef98                	sd	a4,24(a5)
    80203ea2:	00446717          	auipc	a4,0x446
    80203ea6:	29e70713          	addi	a4,a4,670 # 8064a140 <bcache>
    80203eaa:	67a1                	lui	a5,0x8
    80203eac:	97ba                	add	a5,a5,a4
    80203eae:	cd07b783          	ld	a5,-816(a5) # 7cd0 <n+0x7cb0>
    80203eb2:	fe843703          	ld	a4,-24(s0)
    80203eb6:	ef98                	sd	a4,24(a5)
    80203eb8:	00446717          	auipc	a4,0x446
    80203ebc:	28870713          	addi	a4,a4,648 # 8064a140 <bcache>
    80203ec0:	67a1                	lui	a5,0x8
    80203ec2:	97ba                	add	a5,a5,a4
    80203ec4:	fe843703          	ld	a4,-24(s0)
    80203ec8:	cce7b823          	sd	a4,-816(a5) # 7cd0 <n+0x7cb0>
    80203ecc:	fe843783          	ld	a5,-24(s0)
    80203ed0:	42878793          	addi	a5,a5,1064
    80203ed4:	fef43423          	sd	a5,-24(s0)
    80203ed8:	0044e797          	auipc	a5,0x44e
    80203edc:	f1878793          	addi	a5,a5,-232 # 80651df0 <bcache+0x7cb0>
    80203ee0:	fe843703          	ld	a4,-24(s0)
    80203ee4:	f8f76de3          	bltu	a4,a5,80203e7e <binit+0x46>
    80203ee8:	0001                	nop
    80203eea:	0001                	nop
    80203eec:	60e2                	ld	ra,24(sp)
    80203eee:	6442                	ld	s0,16(sp)
    80203ef0:	6105                	addi	sp,sp,32
    80203ef2:	8082                	ret

0000000080203ef4 <bget>:
    80203ef4:	7179                	addi	sp,sp,-48
    80203ef6:	f406                	sd	ra,40(sp)
    80203ef8:	f022                	sd	s0,32(sp)
    80203efa:	1800                	addi	s0,sp,48
    80203efc:	87aa                	mv	a5,a0
    80203efe:	872e                	mv	a4,a1
    80203f00:	fcf42e23          	sw	a5,-36(s0)
    80203f04:	87ba                	mv	a5,a4
    80203f06:	fcf42c23          	sw	a5,-40(s0)
    80203f0a:	00446717          	auipc	a4,0x446
    80203f0e:	23670713          	addi	a4,a4,566 # 8064a140 <bcache>
    80203f12:	67a1                	lui	a5,0x8
    80203f14:	97ba                	add	a5,a5,a4
    80203f16:	cd07b783          	ld	a5,-816(a5) # 7cd0 <n+0x7cb0>
    80203f1a:	fef43423          	sd	a5,-24(s0)
    80203f1e:	a091                	j	80203f62 <bget+0x6e>
    80203f20:	fe843783          	ld	a5,-24(s0)
    80203f24:	479c                	lw	a5,8(a5)
    80203f26:	fdc42703          	lw	a4,-36(s0)
    80203f2a:	2701                	sext.w	a4,a4
    80203f2c:	02f71663          	bne	a4,a5,80203f58 <bget+0x64>
    80203f30:	fe843783          	ld	a5,-24(s0)
    80203f34:	47dc                	lw	a5,12(a5)
    80203f36:	fd842703          	lw	a4,-40(s0)
    80203f3a:	2701                	sext.w	a4,a4
    80203f3c:	00f71e63          	bne	a4,a5,80203f58 <bget+0x64>
    80203f40:	fe843783          	ld	a5,-24(s0)
    80203f44:	4b9c                	lw	a5,16(a5)
    80203f46:	2785                	addiw	a5,a5,1
    80203f48:	0007871b          	sext.w	a4,a5
    80203f4c:	fe843783          	ld	a5,-24(s0)
    80203f50:	cb98                	sw	a4,16(a5)
    80203f52:	fe843783          	ld	a5,-24(s0)
    80203f56:	a071                	j	80203fe2 <bget+0xee>
    80203f58:	fe843783          	ld	a5,-24(s0)
    80203f5c:	739c                	ld	a5,32(a5)
    80203f5e:	fef43423          	sd	a5,-24(s0)
    80203f62:	fe843703          	ld	a4,-24(s0)
    80203f66:	0044e797          	auipc	a5,0x44e
    80203f6a:	e8a78793          	addi	a5,a5,-374 # 80651df0 <bcache+0x7cb0>
    80203f6e:	faf719e3          	bne	a4,a5,80203f20 <bget+0x2c>
    80203f72:	00446717          	auipc	a4,0x446
    80203f76:	1ce70713          	addi	a4,a4,462 # 8064a140 <bcache>
    80203f7a:	67a1                	lui	a5,0x8
    80203f7c:	97ba                	add	a5,a5,a4
    80203f7e:	cc87b783          	ld	a5,-824(a5) # 7cc8 <n+0x7ca8>
    80203f82:	fef43423          	sd	a5,-24(s0)
    80203f86:	a83d                	j	80203fc4 <bget+0xd0>
    80203f88:	fe843783          	ld	a5,-24(s0)
    80203f8c:	4b9c                	lw	a5,16(a5)
    80203f8e:	e795                	bnez	a5,80203fba <bget+0xc6>
    80203f90:	fe843783          	ld	a5,-24(s0)
    80203f94:	fdc42703          	lw	a4,-36(s0)
    80203f98:	c798                	sw	a4,8(a5)
    80203f9a:	fe843783          	ld	a5,-24(s0)
    80203f9e:	fd842703          	lw	a4,-40(s0)
    80203fa2:	c7d8                	sw	a4,12(a5)
    80203fa4:	fe843783          	ld	a5,-24(s0)
    80203fa8:	0007a023          	sw	zero,0(a5)
    80203fac:	fe843783          	ld	a5,-24(s0)
    80203fb0:	4705                	li	a4,1
    80203fb2:	cb98                	sw	a4,16(a5)
    80203fb4:	fe843783          	ld	a5,-24(s0)
    80203fb8:	a02d                	j	80203fe2 <bget+0xee>
    80203fba:	fe843783          	ld	a5,-24(s0)
    80203fbe:	6f9c                	ld	a5,24(a5)
    80203fc0:	fef43423          	sd	a5,-24(s0)
    80203fc4:	fe843703          	ld	a4,-24(s0)
    80203fc8:	0044e797          	auipc	a5,0x44e
    80203fcc:	e2878793          	addi	a5,a5,-472 # 80651df0 <bcache+0x7cb0>
    80203fd0:	faf71ce3          	bne	a4,a5,80203f88 <bget+0x94>
    80203fd4:	00005517          	auipc	a0,0x5
    80203fd8:	90450513          	addi	a0,a0,-1788 # 802088d8 <rodata_start+0x8d8>
    80203fdc:	9d1fc0ef          	jal	802009ac <panic>
    80203fe0:	4781                	li	a5,0
    80203fe2:	853e                	mv	a0,a5
    80203fe4:	70a2                	ld	ra,40(sp)
    80203fe6:	7402                	ld	s0,32(sp)
    80203fe8:	6145                	addi	sp,sp,48
    80203fea:	8082                	ret

0000000080203fec <bread>:
    80203fec:	7179                	addi	sp,sp,-48
    80203fee:	f406                	sd	ra,40(sp)
    80203ff0:	f022                	sd	s0,32(sp)
    80203ff2:	1800                	addi	s0,sp,48
    80203ff4:	87aa                	mv	a5,a0
    80203ff6:	872e                	mv	a4,a1
    80203ff8:	fcf42e23          	sw	a5,-36(s0)
    80203ffc:	87ba                	mv	a5,a4
    80203ffe:	fcf42c23          	sw	a5,-40(s0)
    80204002:	fd842703          	lw	a4,-40(s0)
    80204006:	fdc42783          	lw	a5,-36(s0)
    8020400a:	85ba                	mv	a1,a4
    8020400c:	853e                	mv	a0,a5
    8020400e:	ee7ff0ef          	jal	80203ef4 <bget>
    80204012:	fea43423          	sd	a0,-24(s0)
    80204016:	fe843783          	ld	a5,-24(s0)
    8020401a:	439c                	lw	a5,0(a5)
    8020401c:	eb99                	bnez	a5,80204032 <bread+0x46>
    8020401e:	4781                	li	a5,0
    80204020:	85be                	mv	a1,a5
    80204022:	fe843503          	ld	a0,-24(s0)
    80204026:	3a9010ef          	jal	80205bce <virtio_disk_rw>
    8020402a:	fe843783          	ld	a5,-24(s0)
    8020402e:	4705                	li	a4,1
    80204030:	c398                	sw	a4,0(a5)
    80204032:	fe843783          	ld	a5,-24(s0)
    80204036:	853e                	mv	a0,a5
    80204038:	70a2                	ld	ra,40(sp)
    8020403a:	7402                	ld	s0,32(sp)
    8020403c:	6145                	addi	sp,sp,48
    8020403e:	8082                	ret

0000000080204040 <brelse>:
    80204040:	1101                	addi	sp,sp,-32
    80204042:	ec06                	sd	ra,24(sp)
    80204044:	e822                	sd	s0,16(sp)
    80204046:	1000                	addi	s0,sp,32
    80204048:	fea43423          	sd	a0,-24(s0)
    8020404c:	fe843783          	ld	a5,-24(s0)
    80204050:	4b9c                	lw	a5,16(a5)
    80204052:	37fd                	addiw	a5,a5,-1
    80204054:	0007871b          	sext.w	a4,a5
    80204058:	fe843783          	ld	a5,-24(s0)
    8020405c:	cb98                	sw	a4,16(a5)
    8020405e:	fe843783          	ld	a5,-24(s0)
    80204062:	4b9c                	lw	a5,16(a5)
    80204064:	e7b5                	bnez	a5,802040d0 <brelse+0x90>
    80204066:	fe843783          	ld	a5,-24(s0)
    8020406a:	739c                	ld	a5,32(a5)
    8020406c:	fe843703          	ld	a4,-24(s0)
    80204070:	6f18                	ld	a4,24(a4)
    80204072:	ef98                	sd	a4,24(a5)
    80204074:	fe843783          	ld	a5,-24(s0)
    80204078:	6f9c                	ld	a5,24(a5)
    8020407a:	fe843703          	ld	a4,-24(s0)
    8020407e:	7318                	ld	a4,32(a4)
    80204080:	f398                	sd	a4,32(a5)
    80204082:	00446717          	auipc	a4,0x446
    80204086:	0be70713          	addi	a4,a4,190 # 8064a140 <bcache>
    8020408a:	67a1                	lui	a5,0x8
    8020408c:	97ba                	add	a5,a5,a4
    8020408e:	cd07b703          	ld	a4,-816(a5) # 7cd0 <n+0x7cb0>
    80204092:	fe843783          	ld	a5,-24(s0)
    80204096:	f398                	sd	a4,32(a5)
    80204098:	fe843783          	ld	a5,-24(s0)
    8020409c:	0044e717          	auipc	a4,0x44e
    802040a0:	d5470713          	addi	a4,a4,-684 # 80651df0 <bcache+0x7cb0>
    802040a4:	ef98                	sd	a4,24(a5)
    802040a6:	00446717          	auipc	a4,0x446
    802040aa:	09a70713          	addi	a4,a4,154 # 8064a140 <bcache>
    802040ae:	67a1                	lui	a5,0x8
    802040b0:	97ba                	add	a5,a5,a4
    802040b2:	cd07b783          	ld	a5,-816(a5) # 7cd0 <n+0x7cb0>
    802040b6:	fe843703          	ld	a4,-24(s0)
    802040ba:	ef98                	sd	a4,24(a5)
    802040bc:	00446717          	auipc	a4,0x446
    802040c0:	08470713          	addi	a4,a4,132 # 8064a140 <bcache>
    802040c4:	67a1                	lui	a5,0x8
    802040c6:	97ba                	add	a5,a5,a4
    802040c8:	fe843703          	ld	a4,-24(s0)
    802040cc:	cce7b823          	sd	a4,-816(a5) # 7cd0 <n+0x7cb0>
    802040d0:	0001                	nop
    802040d2:	60e2                	ld	ra,24(sp)
    802040d4:	6442                	ld	s0,16(sp)
    802040d6:	6105                	addi	sp,sp,32
    802040d8:	8082                	ret

00000000802040da <bwrite>:
    802040da:	1101                	addi	sp,sp,-32
    802040dc:	ec06                	sd	ra,24(sp)
    802040de:	e822                	sd	s0,16(sp)
    802040e0:	1000                	addi	s0,sp,32
    802040e2:	fea43423          	sd	a0,-24(s0)
    802040e6:	4785                	li	a5,1
    802040e8:	85be                	mv	a1,a5
    802040ea:	fe843503          	ld	a0,-24(s0)
    802040ee:	2e1010ef          	jal	80205bce <virtio_disk_rw>
    802040f2:	0001                	nop
    802040f4:	60e2                	ld	ra,24(sp)
    802040f6:	6442                	ld	s0,16(sp)
    802040f8:	6105                	addi	sp,sp,32
    802040fa:	8082                	ret

00000000802040fc <stdio_init>:
    802040fc:	7179                	addi	sp,sp,-48
    802040fe:	f406                	sd	ra,40(sp)
    80204100:	f022                	sd	s0,32(sp)
    80204102:	1800                	addi	s0,sp,48
    80204104:	87aa                	mv	a5,a0
    80204106:	fcf42e23          	sw	a5,-36(s0)
    8020410a:	130000ef          	jal	8020423a <filealloc>
    8020410e:	fea43423          	sd	a0,-24(s0)
    80204112:	fe843783          	ld	a5,-24(s0)
    80204116:	4709                	li	a4,2
    80204118:	c398                	sw	a4,0(a5)
    8020411a:	fe843783          	ld	a5,-24(s0)
    8020411e:	4705                	li	a4,1
    80204120:	c3d8                	sw	a4,4(a5)
    80204122:	fdc42783          	lw	a5,-36(s0)
    80204126:	2781                	sext.w	a5,a5
    80204128:	cb81                	beqz	a5,80204138 <stdio_init+0x3c>
    8020412a:	fdc42783          	lw	a5,-36(s0)
    8020412e:	0007871b          	sext.w	a4,a5
    80204132:	4789                	li	a5,2
    80204134:	00f71463          	bne	a4,a5,8020413c <stdio_init+0x40>
    80204138:	4785                	li	a5,1
    8020413a:	a011                	j	8020413e <stdio_init+0x42>
    8020413c:	4781                	li	a5,0
    8020413e:	0ff7f713          	zext.b	a4,a5
    80204142:	fe843783          	ld	a5,-24(s0)
    80204146:	00e78423          	sb	a4,8(a5)
    8020414a:	fdc42783          	lw	a5,-36(s0)
    8020414e:	0007871b          	sext.w	a4,a5
    80204152:	4785                	li	a5,1
    80204154:	00f70963          	beq	a4,a5,80204166 <stdio_init+0x6a>
    80204158:	fdc42783          	lw	a5,-36(s0)
    8020415c:	0007871b          	sext.w	a4,a5
    80204160:	4789                	li	a5,2
    80204162:	00f71463          	bne	a4,a5,8020416a <stdio_init+0x6e>
    80204166:	4785                	li	a5,1
    80204168:	a011                	j	8020416c <stdio_init+0x70>
    8020416a:	4781                	li	a5,0
    8020416c:	0ff7f713          	zext.b	a4,a5
    80204170:	fe843783          	ld	a5,-24(s0)
    80204174:	00e784a3          	sb	a4,9(a5)
    80204178:	fe843783          	ld	a5,-24(s0)
    8020417c:	853e                	mv	a0,a5
    8020417e:	70a2                	ld	ra,40(sp)
    80204180:	7402                	ld	s0,32(sp)
    80204182:	6145                	addi	sp,sp,48
    80204184:	8082                	ret

0000000080204186 <fileclose>:
    80204186:	1101                	addi	sp,sp,-32
    80204188:	ec06                	sd	ra,24(sp)
    8020418a:	e822                	sd	s0,16(sp)
    8020418c:	1000                	addi	s0,sp,32
    8020418e:	fea43423          	sd	a0,-24(s0)
    80204192:	fe843783          	ld	a5,-24(s0)
    80204196:	43dc                	lw	a5,4(a5)
    80204198:	00f04863          	bgtz	a5,802041a8 <fileclose+0x22>
    8020419c:	00004517          	auipc	a0,0x4
    802041a0:	75450513          	addi	a0,a0,1876 # 802088f0 <rodata_start+0x8f0>
    802041a4:	809fc0ef          	jal	802009ac <panic>
    802041a8:	fe843783          	ld	a5,-24(s0)
    802041ac:	43dc                	lw	a5,4(a5)
    802041ae:	37fd                	addiw	a5,a5,-1
    802041b0:	0007871b          	sext.w	a4,a5
    802041b4:	fe843783          	ld	a5,-24(s0)
    802041b8:	c3d8                	sw	a4,4(a5)
    802041ba:	fe843783          	ld	a5,-24(s0)
    802041be:	43dc                	lw	a5,4(a5)
    802041c0:	06f04863          	bgtz	a5,80204230 <fileclose+0xaa>
    802041c4:	fe843783          	ld	a5,-24(s0)
    802041c8:	439c                	lw	a5,0(a5)
    802041ca:	4705                	li	a4,1
    802041cc:	00e78663          	beq	a5,a4,802041d8 <fileclose+0x52>
    802041d0:	4709                	li	a4,2
    802041d2:	00e79a63          	bne	a5,a4,802041e6 <fileclose+0x60>
    802041d6:	a805                	j	80204206 <fileclose+0x80>
    802041d8:	fe843783          	ld	a5,-24(s0)
    802041dc:	6b9c                	ld	a5,16(a5)
    802041de:	853e                	mv	a0,a5
    802041e0:	325000ef          	jal	80204d04 <iput>
    802041e4:	a00d                	j	80204206 <fileclose+0x80>
    802041e6:	fe843783          	ld	a5,-24(s0)
    802041ea:	439c                	lw	a5,0(a5)
    802041ec:	85be                	mv	a1,a5
    802041ee:	00004517          	auipc	a0,0x4
    802041f2:	71250513          	addi	a0,a0,1810 # 80208900 <rodata_start+0x900>
    802041f6:	fadfc0ef          	jal	802011a2 <printk>
    802041fa:	00004517          	auipc	a0,0x4
    802041fe:	71e50513          	addi	a0,a0,1822 # 80208918 <rodata_start+0x918>
    80204202:	faafc0ef          	jal	802009ac <panic>
    80204206:	fe843783          	ld	a5,-24(s0)
    8020420a:	0007ac23          	sw	zero,24(a5)
    8020420e:	fe843783          	ld	a5,-24(s0)
    80204212:	00078423          	sb	zero,8(a5)
    80204216:	fe843783          	ld	a5,-24(s0)
    8020421a:	000784a3          	sb	zero,9(a5)
    8020421e:	fe843783          	ld	a5,-24(s0)
    80204222:	0007a223          	sw	zero,4(a5)
    80204226:	fe843783          	ld	a5,-24(s0)
    8020422a:	0007a023          	sw	zero,0(a5)
    8020422e:	a011                	j	80204232 <fileclose+0xac>
    80204230:	0001                	nop
    80204232:	60e2                	ld	ra,24(sp)
    80204234:	6442                	ld	s0,16(sp)
    80204236:	6105                	addi	sp,sp,32
    80204238:	8082                	ret

000000008020423a <filealloc>:
    8020423a:	1101                	addi	sp,sp,-32
    8020423c:	ec06                	sd	ra,24(sp)
    8020423e:	e822                	sd	s0,16(sp)
    80204240:	1000                	addi	s0,sp,32
    80204242:	fe042623          	sw	zero,-20(s0)
    80204246:	a0a1                	j	8020428e <filealloc+0x54>
    80204248:	0044e717          	auipc	a4,0x44e
    8020424c:	fd070713          	addi	a4,a4,-48 # 80652218 <filepool>
    80204250:	fec42783          	lw	a5,-20(s0)
    80204254:	0796                	slli	a5,a5,0x5
    80204256:	97ba                	add	a5,a5,a4
    80204258:	43dc                	lw	a5,4(a5)
    8020425a:	e78d                	bnez	a5,80204284 <filealloc+0x4a>
    8020425c:	0044e717          	auipc	a4,0x44e
    80204260:	fbc70713          	addi	a4,a4,-68 # 80652218 <filepool>
    80204264:	fec42783          	lw	a5,-20(s0)
    80204268:	0796                	slli	a5,a5,0x5
    8020426a:	97ba                	add	a5,a5,a4
    8020426c:	4705                	li	a4,1
    8020426e:	c3d8                	sw	a4,4(a5)
    80204270:	fec42783          	lw	a5,-20(s0)
    80204274:	00579713          	slli	a4,a5,0x5
    80204278:	0044e797          	auipc	a5,0x44e
    8020427c:	fa078793          	addi	a5,a5,-96 # 80652218 <filepool>
    80204280:	97ba                	add	a5,a5,a4
    80204282:	a831                	j	8020429e <filealloc+0x64>
    80204284:	fec42783          	lw	a5,-20(s0)
    80204288:	2785                	addiw	a5,a5,1
    8020428a:	fef42623          	sw	a5,-20(s0)
    8020428e:	fec42783          	lw	a5,-20(s0)
    80204292:	0007871b          	sext.w	a4,a5
    80204296:	6789                	lui	a5,0x2
    80204298:	faf748e3          	blt	a4,a5,80204248 <filealloc+0xe>
    8020429c:	4781                	li	a5,0
    8020429e:	853e                	mv	a0,a5
    802042a0:	60e2                	ld	ra,24(sp)
    802042a2:	6442                	ld	s0,16(sp)
    802042a4:	6105                	addi	sp,sp,32
    802042a6:	8082                	ret

00000000802042a8 <show_all_files>:
    802042a8:	1141                	addi	sp,sp,-16
    802042aa:	e406                	sd	ra,8(sp)
    802042ac:	e022                	sd	s0,0(sp)
    802042ae:	0800                	addi	s0,sp,16
    802042b0:	22b000ef          	jal	80204cda <root_dir>
    802042b4:	87aa                	mv	a5,a0
    802042b6:	853e                	mv	a0,a5
    802042b8:	0a0010ef          	jal	80205358 <dirls>
    802042bc:	87aa                	mv	a5,a0
    802042be:	853e                	mv	a0,a5
    802042c0:	60a2                	ld	ra,8(sp)
    802042c2:	6402                	ld	s0,0(sp)
    802042c4:	0141                	addi	sp,sp,16
    802042c6:	8082                	ret

00000000802042c8 <create>:
    802042c8:	7179                	addi	sp,sp,-48
    802042ca:	f406                	sd	ra,40(sp)
    802042cc:	f022                	sd	s0,32(sp)
    802042ce:	1800                	addi	s0,sp,48
    802042d0:	fca43c23          	sd	a0,-40(s0)
    802042d4:	87ae                	mv	a5,a1
    802042d6:	fcf41b23          	sh	a5,-42(s0)
    802042da:	201000ef          	jal	80204cda <root_dir>
    802042de:	fea43423          	sd	a0,-24(s0)
    802042e2:	fe843503          	ld	a0,-24(s0)
    802042e6:	127000ef          	jal	80204c0c <ivalid>
    802042ea:	4601                	li	a2,0
    802042ec:	fd843583          	ld	a1,-40(s0)
    802042f0:	fe843503          	ld	a0,-24(s0)
    802042f4:	793000ef          	jal	80205286 <dirlookup>
    802042f8:	fea43023          	sd	a0,-32(s0)
    802042fc:	fe043783          	ld	a5,-32(s0)
    80204300:	c7b1                	beqz	a5,8020434c <create+0x84>
    80204302:	00004517          	auipc	a0,0x4
    80204306:	61e50513          	addi	a0,a0,1566 # 80208920 <rodata_start+0x920>
    8020430a:	e99fc0ef          	jal	802011a2 <printk>
    8020430e:	fe843503          	ld	a0,-24(s0)
    80204312:	1f3000ef          	jal	80204d04 <iput>
    80204316:	fe043503          	ld	a0,-32(s0)
    8020431a:	0f3000ef          	jal	80204c0c <ivalid>
    8020431e:	fd641783          	lh	a5,-42(s0)
    80204322:	0007871b          	sext.w	a4,a5
    80204326:	4789                	li	a5,2
    80204328:	00f71c63          	bne	a4,a5,80204340 <create+0x78>
    8020432c:	fe043783          	ld	a5,-32(s0)
    80204330:	01079703          	lh	a4,16(a5) # 2010 <n+0x1ff0>
    80204334:	4789                	li	a5,2
    80204336:	00f71563          	bne	a4,a5,80204340 <create+0x78>
    8020433a:	fe043783          	ld	a5,-32(s0)
    8020433e:	a071                	j	802043ca <create+0x102>
    80204340:	fe043503          	ld	a0,-32(s0)
    80204344:	1c1000ef          	jal	80204d04 <iput>
    80204348:	4781                	li	a5,0
    8020434a:	a041                	j	802043ca <create+0x102>
    8020434c:	fe843783          	ld	a5,-24(s0)
    80204350:	439c                	lw	a5,0(a5)
    80204352:	fd641703          	lh	a4,-42(s0)
    80204356:	85ba                	mv	a1,a4
    80204358:	853e                	mv	a0,a5
    8020435a:	60c000ef          	jal	80204966 <ialloc>
    8020435e:	fea43023          	sd	a0,-32(s0)
    80204362:	fe043783          	ld	a5,-32(s0)
    80204366:	e799                	bnez	a5,80204374 <create+0xac>
    80204368:	00004517          	auipc	a0,0x4
    8020436c:	5d050513          	addi	a0,a0,1488 # 80208938 <rodata_start+0x938>
    80204370:	e3cfc0ef          	jal	802009ac <panic>
    80204374:	fd641783          	lh	a5,-42(s0)
    80204378:	2781                	sext.w	a5,a5
    8020437a:	85be                	mv	a1,a5
    8020437c:	00004517          	auipc	a0,0x4
    80204380:	5cc50513          	addi	a0,a0,1484 # 80208948 <rodata_start+0x948>
    80204384:	e1ffc0ef          	jal	802011a2 <printk>
    80204388:	fe043503          	ld	a0,-32(s0)
    8020438c:	081000ef          	jal	80204c0c <ivalid>
    80204390:	fe043503          	ld	a0,-32(s0)
    80204394:	6b6000ef          	jal	80204a4a <iupdate>
    80204398:	fe043783          	ld	a5,-32(s0)
    8020439c:	43dc                	lw	a5,4(a5)
    8020439e:	863e                	mv	a2,a5
    802043a0:	fd843583          	ld	a1,-40(s0)
    802043a4:	fe843503          	ld	a0,-24(s0)
    802043a8:	064010ef          	jal	8020540c <dirlink>
    802043ac:	87aa                	mv	a5,a0
    802043ae:	0007d863          	bgez	a5,802043be <create+0xf6>
    802043b2:	00004517          	auipc	a0,0x4
    802043b6:	5be50513          	addi	a0,a0,1470 # 80208970 <rodata_start+0x970>
    802043ba:	df2fc0ef          	jal	802009ac <panic>
    802043be:	fe843503          	ld	a0,-24(s0)
    802043c2:	143000ef          	jal	80204d04 <iput>
    802043c6:	fe043783          	ld	a5,-32(s0)
    802043ca:	853e                	mv	a0,a5
    802043cc:	70a2                	ld	ra,40(sp)
    802043ce:	7402                	ld	s0,32(sp)
    802043d0:	6145                	addi	sp,sp,48
    802043d2:	8082                	ret

00000000802043d4 <fileopen>:
    802043d4:	7139                	addi	sp,sp,-64
    802043d6:	fc06                	sd	ra,56(sp)
    802043d8:	f822                	sd	s0,48(sp)
    802043da:	0080                	addi	s0,sp,64
    802043dc:	fca43423          	sd	a0,-56(s0)
    802043e0:	fcb43023          	sd	a1,-64(s0)
    802043e4:	fc043783          	ld	a5,-64(s0)
    802043e8:	2007f793          	andi	a5,a5,512
    802043ec:	cf89                	beqz	a5,80204406 <fileopen+0x32>
    802043ee:	4589                	li	a1,2
    802043f0:	fc843503          	ld	a0,-56(s0)
    802043f4:	ed5ff0ef          	jal	802042c8 <create>
    802043f8:	fea43423          	sd	a0,-24(s0)
    802043fc:	fe843783          	ld	a5,-24(s0)
    80204400:	e395                	bnez	a5,80204424 <fileopen+0x50>
    80204402:	57fd                	li	a5,-1
    80204404:	a8cd                	j	802044f6 <fileopen+0x122>
    80204406:	fc843503          	ld	a0,-56(s0)
    8020440a:	0e8010ef          	jal	802054f2 <namei>
    8020440e:	fea43423          	sd	a0,-24(s0)
    80204412:	fe843783          	ld	a5,-24(s0)
    80204416:	e399                	bnez	a5,8020441c <fileopen+0x48>
    80204418:	57fd                	li	a5,-1
    8020441a:	a8f1                	j	802044f6 <fileopen+0x122>
    8020441c:	fe843503          	ld	a0,-24(s0)
    80204420:	7ec000ef          	jal	80204c0c <ivalid>
    80204424:	fe843783          	ld	a5,-24(s0)
    80204428:	01079703          	lh	a4,16(a5)
    8020442c:	4789                	li	a5,2
    8020442e:	00f70863          	beq	a4,a5,8020443e <fileopen+0x6a>
    80204432:	00004517          	auipc	a0,0x4
    80204436:	54e50513          	addi	a0,a0,1358 # 80208980 <rodata_start+0x980>
    8020443a:	d72fc0ef          	jal	802009ac <panic>
    8020443e:	dfdff0ef          	jal	8020423a <filealloc>
    80204442:	fea43023          	sd	a0,-32(s0)
    80204446:	fe043783          	ld	a5,-32(s0)
    8020444a:	cf89                	beqz	a5,80204464 <fileopen+0x90>
    8020444c:	fe043503          	ld	a0,-32(s0)
    80204450:	8a5fe0ef          	jal	80202cf4 <fdalloc>
    80204454:	87aa                	mv	a5,a0
    80204456:	fcf42e23          	sw	a5,-36(s0)
    8020445a:	fdc42783          	lw	a5,-36(s0)
    8020445e:	2781                	sext.w	a5,a5
    80204460:	0007df63          	bgez	a5,8020447e <fileopen+0xaa>
    80204464:	fe043783          	ld	a5,-32(s0)
    80204468:	c789                	beqz	a5,80204472 <fileopen+0x9e>
    8020446a:	fe043503          	ld	a0,-32(s0)
    8020446e:	d19ff0ef          	jal	80204186 <fileclose>
    80204472:	fe843503          	ld	a0,-24(s0)
    80204476:	08f000ef          	jal	80204d04 <iput>
    8020447a:	57fd                	li	a5,-1
    8020447c:	a8ad                	j	802044f6 <fileopen+0x122>
    8020447e:	fe043783          	ld	a5,-32(s0)
    80204482:	4705                	li	a4,1
    80204484:	c398                	sw	a4,0(a5)
    80204486:	fe043783          	ld	a5,-32(s0)
    8020448a:	0007ac23          	sw	zero,24(a5)
    8020448e:	fe043783          	ld	a5,-32(s0)
    80204492:	fe843703          	ld	a4,-24(s0)
    80204496:	eb98                	sd	a4,16(a5)
    80204498:	fc043783          	ld	a5,-64(s0)
    8020449c:	8b85                	andi	a5,a5,1
    8020449e:	0017b793          	seqz	a5,a5
    802044a2:	0ff7f793          	zext.b	a5,a5
    802044a6:	873e                	mv	a4,a5
    802044a8:	fe043783          	ld	a5,-32(s0)
    802044ac:	00e78423          	sb	a4,8(a5)
    802044b0:	fc043783          	ld	a5,-64(s0)
    802044b4:	8b85                	andi	a5,a5,1
    802044b6:	e789                	bnez	a5,802044c0 <fileopen+0xec>
    802044b8:	fc043783          	ld	a5,-64(s0)
    802044bc:	8b89                	andi	a5,a5,2
    802044be:	c399                	beqz	a5,802044c4 <fileopen+0xf0>
    802044c0:	4785                	li	a5,1
    802044c2:	a011                	j	802044c6 <fileopen+0xf2>
    802044c4:	4781                	li	a5,0
    802044c6:	0ff7f713          	zext.b	a4,a5
    802044ca:	fe043783          	ld	a5,-32(s0)
    802044ce:	00e784a3          	sb	a4,9(a5)
    802044d2:	fc043783          	ld	a5,-64(s0)
    802044d6:	4007f793          	andi	a5,a5,1024
    802044da:	cf81                	beqz	a5,802044f2 <fileopen+0x11e>
    802044dc:	fe843783          	ld	a5,-24(s0)
    802044e0:	01079703          	lh	a4,16(a5)
    802044e4:	4789                	li	a5,2
    802044e6:	00f71663          	bne	a4,a5,802044f2 <fileopen+0x11e>
    802044ea:	fe843503          	ld	a0,-24(s0)
    802044ee:	17d000ef          	jal	80204e6a <itrunc>
    802044f2:	fdc42783          	lw	a5,-36(s0)
    802044f6:	853e                	mv	a0,a5
    802044f8:	70e2                	ld	ra,56(sp)
    802044fa:	7442                	ld	s0,48(sp)
    802044fc:	6121                	addi	sp,sp,64
    802044fe:	8082                	ret

0000000080204500 <inodewrite>:
    80204500:	7139                	addi	sp,sp,-64
    80204502:	fc06                	sd	ra,56(sp)
    80204504:	f822                	sd	s0,48(sp)
    80204506:	0080                	addi	s0,sp,64
    80204508:	fca43c23          	sd	a0,-40(s0)
    8020450c:	fcb43823          	sd	a1,-48(s0)
    80204510:	fcc43423          	sd	a2,-56(s0)
    80204514:	fd843783          	ld	a5,-40(s0)
    80204518:	6b9c                	ld	a5,16(a5)
    8020451a:	853e                	mv	a0,a5
    8020451c:	6f0000ef          	jal	80204c0c <ivalid>
    80204520:	fd843783          	ld	a5,-40(s0)
    80204524:	6b88                	ld	a0,16(a5)
    80204526:	fd843783          	ld	a5,-40(s0)
    8020452a:	4f9c                	lw	a5,24(a5)
    8020452c:	fc843703          	ld	a4,-56(s0)
    80204530:	2701                	sext.w	a4,a4
    80204532:	86be                	mv	a3,a5
    80204534:	fd043603          	ld	a2,-48(s0)
    80204538:	4585                	li	a1,1
    8020453a:	3bf000ef          	jal	802050f8 <writei>
    8020453e:	87aa                	mv	a5,a0
    80204540:	fef42623          	sw	a5,-20(s0)
    80204544:	fec42783          	lw	a5,-20(s0)
    80204548:	2781                	sext.w	a5,a5
    8020454a:	00f05d63          	blez	a5,80204564 <inodewrite+0x64>
    8020454e:	fd843783          	ld	a5,-40(s0)
    80204552:	4f98                	lw	a4,24(a5)
    80204554:	fec42783          	lw	a5,-20(s0)
    80204558:	9fb9                	addw	a5,a5,a4
    8020455a:	0007871b          	sext.w	a4,a5
    8020455e:	fd843783          	ld	a5,-40(s0)
    80204562:	cf98                	sw	a4,24(a5)
    80204564:	fec42783          	lw	a5,-20(s0)
    80204568:	853e                	mv	a0,a5
    8020456a:	70e2                	ld	ra,56(sp)
    8020456c:	7442                	ld	s0,48(sp)
    8020456e:	6121                	addi	sp,sp,64
    80204570:	8082                	ret

0000000080204572 <inoderead>:
    80204572:	7139                	addi	sp,sp,-64
    80204574:	fc06                	sd	ra,56(sp)
    80204576:	f822                	sd	s0,48(sp)
    80204578:	0080                	addi	s0,sp,64
    8020457a:	fca43c23          	sd	a0,-40(s0)
    8020457e:	fcb43823          	sd	a1,-48(s0)
    80204582:	fcc43423          	sd	a2,-56(s0)
    80204586:	fd843783          	ld	a5,-40(s0)
    8020458a:	6b9c                	ld	a5,16(a5)
    8020458c:	853e                	mv	a0,a5
    8020458e:	67e000ef          	jal	80204c0c <ivalid>
    80204592:	fd843783          	ld	a5,-40(s0)
    80204596:	6b88                	ld	a0,16(a5)
    80204598:	fd843783          	ld	a5,-40(s0)
    8020459c:	4f9c                	lw	a5,24(a5)
    8020459e:	fc843703          	ld	a4,-56(s0)
    802045a2:	2701                	sext.w	a4,a4
    802045a4:	86be                	mv	a3,a5
    802045a6:	fd043603          	ld	a2,-48(s0)
    802045aa:	4585                	li	a1,1
    802045ac:	1e3000ef          	jal	80204f8e <readi>
    802045b0:	87aa                	mv	a5,a0
    802045b2:	fef42623          	sw	a5,-20(s0)
    802045b6:	fec42783          	lw	a5,-20(s0)
    802045ba:	2781                	sext.w	a5,a5
    802045bc:	00f05d63          	blez	a5,802045d6 <inoderead+0x64>
    802045c0:	fd843783          	ld	a5,-40(s0)
    802045c4:	4f98                	lw	a4,24(a5)
    802045c6:	fec42783          	lw	a5,-20(s0)
    802045ca:	9fb9                	addw	a5,a5,a4
    802045cc:	0007871b          	sext.w	a4,a5
    802045d0:	fd843783          	ld	a5,-40(s0)
    802045d4:	cf98                	sw	a4,24(a5)
    802045d6:	fec42783          	lw	a5,-20(s0)
    802045da:	853e                	mv	a0,a5
    802045dc:	70e2                	ld	ra,56(sp)
    802045de:	7442                	ld	s0,48(sp)
    802045e0:	6121                	addi	sp,sp,64
    802045e2:	8082                	ret

00000000802045e4 <bzero>:
    802045e4:	7179                	addi	sp,sp,-48
    802045e6:	f406                	sd	ra,40(sp)
    802045e8:	f022                	sd	s0,32(sp)
    802045ea:	1800                	addi	s0,sp,48
    802045ec:	87aa                	mv	a5,a0
    802045ee:	872e                	mv	a4,a1
    802045f0:	fcf42e23          	sw	a5,-36(s0)
    802045f4:	87ba                	mv	a5,a4
    802045f6:	fcf42c23          	sw	a5,-40(s0)
    802045fa:	fdc42783          	lw	a5,-36(s0)
    802045fe:	fd842703          	lw	a4,-40(s0)
    80204602:	85ba                	mv	a1,a4
    80204604:	853e                	mv	a0,a5
    80204606:	9e7ff0ef          	jal	80203fec <bread>
    8020460a:	fea43423          	sd	a0,-24(s0)
    8020460e:	fe843783          	ld	a5,-24(s0)
    80204612:	02878793          	addi	a5,a5,40
    80204616:	40000613          	li	a2,1024
    8020461a:	4581                	li	a1,0
    8020461c:	853e                	mv	a0,a5
    8020461e:	c0afd0ef          	jal	80201a28 <memset>
    80204622:	fe843503          	ld	a0,-24(s0)
    80204626:	ab5ff0ef          	jal	802040da <bwrite>
    8020462a:	fe843503          	ld	a0,-24(s0)
    8020462e:	a13ff0ef          	jal	80204040 <brelse>
    80204632:	0001                	nop
    80204634:	70a2                	ld	ra,40(sp)
    80204636:	7402                	ld	s0,32(sp)
    80204638:	6145                	addi	sp,sp,48
    8020463a:	8082                	ret

000000008020463c <balloc>:
    8020463c:	7139                	addi	sp,sp,-64
    8020463e:	fc06                	sd	ra,56(sp)
    80204640:	f822                	sd	s0,48(sp)
    80204642:	0080                	addi	s0,sp,64
    80204644:	87aa                	mv	a5,a0
    80204646:	fcf42623          	sw	a5,-52(s0)
    8020464a:	fe043023          	sd	zero,-32(s0)
    8020464e:	fe042623          	sw	zero,-20(s0)
    80204652:	a2b1                	j	8020479e <balloc+0x162>
    80204654:	fec42783          	lw	a5,-20(s0)
    80204658:	41f7d71b          	sraiw	a4,a5,0x1f
    8020465c:	0137571b          	srliw	a4,a4,0x13
    80204660:	9fb9                	addw	a5,a5,a4
    80204662:	40d7d79b          	sraiw	a5,a5,0xd
    80204666:	2781                	sext.w	a5,a5
    80204668:	873e                	mv	a4,a5
    8020466a:	0048e797          	auipc	a5,0x48e
    8020466e:	bae78793          	addi	a5,a5,-1106 # 80692218 <spb>
    80204672:	779c                	ld	a5,40(a5)
    80204674:	2781                	sext.w	a5,a5
    80204676:	9fb9                	addw	a5,a5,a4
    80204678:	0007871b          	sext.w	a4,a5
    8020467c:	fcc42783          	lw	a5,-52(s0)
    80204680:	85ba                	mv	a1,a4
    80204682:	853e                	mv	a0,a5
    80204684:	969ff0ef          	jal	80203fec <bread>
    80204688:	fea43023          	sd	a0,-32(s0)
    8020468c:	fe042423          	sw	zero,-24(s0)
    80204690:	a0f1                	j	8020475c <balloc+0x120>
    80204692:	fe842783          	lw	a5,-24(s0)
    80204696:	8b9d                	andi	a5,a5,7
    80204698:	2781                	sext.w	a5,a5
    8020469a:	4705                	li	a4,1
    8020469c:	00f717bb          	sllw	a5,a4,a5
    802046a0:	fcf42e23          	sw	a5,-36(s0)
    802046a4:	fe842783          	lw	a5,-24(s0)
    802046a8:	41f7d71b          	sraiw	a4,a5,0x1f
    802046ac:	01d7571b          	srliw	a4,a4,0x1d
    802046b0:	9fb9                	addw	a5,a5,a4
    802046b2:	4037d79b          	sraiw	a5,a5,0x3
    802046b6:	2781                	sext.w	a5,a5
    802046b8:	fe043703          	ld	a4,-32(s0)
    802046bc:	97ba                	add	a5,a5,a4
    802046be:	0287c783          	lbu	a5,40(a5)
    802046c2:	2781                	sext.w	a5,a5
    802046c4:	fdc42703          	lw	a4,-36(s0)
    802046c8:	8ff9                	and	a5,a5,a4
    802046ca:	2781                	sext.w	a5,a5
    802046cc:	e3d9                	bnez	a5,80204752 <balloc+0x116>
    802046ce:	fe842783          	lw	a5,-24(s0)
    802046d2:	41f7d71b          	sraiw	a4,a5,0x1f
    802046d6:	01d7571b          	srliw	a4,a4,0x1d
    802046da:	9fb9                	addw	a5,a5,a4
    802046dc:	4037d79b          	sraiw	a5,a5,0x3
    802046e0:	2781                	sext.w	a5,a5
    802046e2:	fe043703          	ld	a4,-32(s0)
    802046e6:	973e                	add	a4,a4,a5
    802046e8:	02874703          	lbu	a4,40(a4)
    802046ec:	0187169b          	slliw	a3,a4,0x18
    802046f0:	4186d69b          	sraiw	a3,a3,0x18
    802046f4:	fdc42703          	lw	a4,-36(s0)
    802046f8:	0187171b          	slliw	a4,a4,0x18
    802046fc:	4187571b          	sraiw	a4,a4,0x18
    80204700:	8f55                	or	a4,a4,a3
    80204702:	0187171b          	slliw	a4,a4,0x18
    80204706:	4187571b          	sraiw	a4,a4,0x18
    8020470a:	0ff77713          	zext.b	a4,a4
    8020470e:	fe043683          	ld	a3,-32(s0)
    80204712:	97b6                	add	a5,a5,a3
    80204714:	02e78423          	sb	a4,40(a5)
    80204718:	fe043503          	ld	a0,-32(s0)
    8020471c:	9bfff0ef          	jal	802040da <bwrite>
    80204720:	fe043503          	ld	a0,-32(s0)
    80204724:	91dff0ef          	jal	80204040 <brelse>
    80204728:	fcc42783          	lw	a5,-52(s0)
    8020472c:	fec42703          	lw	a4,-20(s0)
    80204730:	86ba                	mv	a3,a4
    80204732:	fe842703          	lw	a4,-24(s0)
    80204736:	9f35                	addw	a4,a4,a3
    80204738:	2701                	sext.w	a4,a4
    8020473a:	85ba                	mv	a1,a4
    8020473c:	853e                	mv	a0,a5
    8020473e:	ea7ff0ef          	jal	802045e4 <bzero>
    80204742:	fec42783          	lw	a5,-20(s0)
    80204746:	873e                	mv	a4,a5
    80204748:	fe842783          	lw	a5,-24(s0)
    8020474c:	9fb9                	addw	a5,a5,a4
    8020474e:	2781                	sext.w	a5,a5
    80204750:	a0bd                	j	802047be <balloc+0x182>
    80204752:	fe842783          	lw	a5,-24(s0)
    80204756:	2785                	addiw	a5,a5,1
    80204758:	fef42423          	sw	a5,-24(s0)
    8020475c:	fe842783          	lw	a5,-24(s0)
    80204760:	0007871b          	sext.w	a4,a5
    80204764:	6789                	lui	a5,0x2
    80204766:	02f75163          	bge	a4,a5,80204788 <balloc+0x14c>
    8020476a:	fec42783          	lw	a5,-20(s0)
    8020476e:	873e                	mv	a4,a5
    80204770:	fe842783          	lw	a5,-24(s0)
    80204774:	9fb9                	addw	a5,a5,a4
    80204776:	2781                	sext.w	a5,a5
    80204778:	873e                	mv	a4,a5
    8020477a:	0048e797          	auipc	a5,0x48e
    8020477e:	a9e78793          	addi	a5,a5,-1378 # 80692218 <spb>
    80204782:	679c                	ld	a5,8(a5)
    80204784:	f0f767e3          	bltu	a4,a5,80204692 <balloc+0x56>
    80204788:	fe043503          	ld	a0,-32(s0)
    8020478c:	8b5ff0ef          	jal	80204040 <brelse>
    80204790:	fec42783          	lw	a5,-20(s0)
    80204794:	873e                	mv	a4,a5
    80204796:	6789                	lui	a5,0x2
    80204798:	9fb9                	addw	a5,a5,a4
    8020479a:	fef42623          	sw	a5,-20(s0)
    8020479e:	fec42703          	lw	a4,-20(s0)
    802047a2:	0048e797          	auipc	a5,0x48e
    802047a6:	a7678793          	addi	a5,a5,-1418 # 80692218 <spb>
    802047aa:	679c                	ld	a5,8(a5)
    802047ac:	eaf764e3          	bltu	a4,a5,80204654 <balloc+0x18>
    802047b0:	00004517          	auipc	a0,0x4
    802047b4:	1f050513          	addi	a0,a0,496 # 802089a0 <rodata_start+0x9a0>
    802047b8:	9f4fc0ef          	jal	802009ac <panic>
    802047bc:	4781                	li	a5,0
    802047be:	853e                	mv	a0,a5
    802047c0:	70e2                	ld	ra,56(sp)
    802047c2:	7442                	ld	s0,48(sp)
    802047c4:	6121                	addi	sp,sp,64
    802047c6:	8082                	ret

00000000802047c8 <readspb>:
    802047c8:	7179                	addi	sp,sp,-48
    802047ca:	f406                	sd	ra,40(sp)
    802047cc:	f022                	sd	s0,32(sp)
    802047ce:	1800                	addi	s0,sp,48
    802047d0:	87aa                	mv	a5,a0
    802047d2:	fcb43823          	sd	a1,-48(s0)
    802047d6:	fcf42e23          	sw	a5,-36(s0)
    802047da:	fdc42783          	lw	a5,-36(s0)
    802047de:	4585                	li	a1,1
    802047e0:	853e                	mv	a0,a5
    802047e2:	80bff0ef          	jal	80203fec <bread>
    802047e6:	fea43423          	sd	a0,-24(s0)
    802047ea:	fe843783          	ld	a5,-24(s0)
    802047ee:	02878793          	addi	a5,a5,40
    802047f2:	03000613          	li	a2,48
    802047f6:	85be                	mv	a1,a5
    802047f8:	fd043503          	ld	a0,-48(s0)
    802047fc:	95cfd0ef          	jal	80201958 <memmove>
    80204800:	fe843503          	ld	a0,-24(s0)
    80204804:	83dff0ef          	jal	80204040 <brelse>
    80204808:	0001                	nop
    8020480a:	70a2                	ld	ra,40(sp)
    8020480c:	7402                	ld	s0,32(sp)
    8020480e:	6145                	addi	sp,sp,48
    80204810:	8082                	ret

0000000080204812 <fsinit>:
    80204812:	1101                	addi	sp,sp,-32
    80204814:	ec06                	sd	ra,24(sp)
    80204816:	e822                	sd	s0,16(sp)
    80204818:	1000                	addi	s0,sp,32
    8020481a:	4785                	li	a5,1
    8020481c:	fef42623          	sw	a5,-20(s0)
    80204820:	fec42783          	lw	a5,-20(s0)
    80204824:	0048e597          	auipc	a1,0x48e
    80204828:	9f458593          	addi	a1,a1,-1548 # 80692218 <spb>
    8020482c:	853e                	mv	a0,a5
    8020482e:	f9bff0ef          	jal	802047c8 <readspb>
    80204832:	0048e797          	auipc	a5,0x48e
    80204836:	9e678793          	addi	a5,a5,-1562 # 80692218 <spb>
    8020483a:	6398                	ld	a4,0(a5)
    8020483c:	102037b7          	lui	a5,0x10203
    80204840:	04078793          	addi	a5,a5,64 # 10203040 <n+0x10203020>
    80204844:	00f70863          	beq	a4,a5,80204854 <fsinit+0x42>
    80204848:	00004517          	auipc	a0,0x4
    8020484c:	17050513          	addi	a0,a0,368 # 802089b8 <rodata_start+0x9b8>
    80204850:	95cfc0ef          	jal	802009ac <panic>
    80204854:	0001                	nop
    80204856:	60e2                	ld	ra,24(sp)
    80204858:	6442                	ld	s0,16(sp)
    8020485a:	6105                	addi	sp,sp,32
    8020485c:	8082                	ret

000000008020485e <bfree>:
    8020485e:	7179                	addi	sp,sp,-48
    80204860:	f406                	sd	ra,40(sp)
    80204862:	f022                	sd	s0,32(sp)
    80204864:	1800                	addi	s0,sp,48
    80204866:	87aa                	mv	a5,a0
    80204868:	872e                	mv	a4,a1
    8020486a:	fcf42e23          	sw	a5,-36(s0)
    8020486e:	87ba                	mv	a5,a4
    80204870:	fcf42c23          	sw	a5,-40(s0)
    80204874:	fdc42683          	lw	a3,-36(s0)
    80204878:	fd842783          	lw	a5,-40(s0)
    8020487c:	00d7d79b          	srliw	a5,a5,0xd
    80204880:	0007871b          	sext.w	a4,a5
    80204884:	0048e797          	auipc	a5,0x48e
    80204888:	99478793          	addi	a5,a5,-1644 # 80692218 <spb>
    8020488c:	779c                	ld	a5,40(a5)
    8020488e:	2781                	sext.w	a5,a5
    80204890:	9fb9                	addw	a5,a5,a4
    80204892:	2781                	sext.w	a5,a5
    80204894:	85be                	mv	a1,a5
    80204896:	8536                	mv	a0,a3
    80204898:	f54ff0ef          	jal	80203fec <bread>
    8020489c:	fea43423          	sd	a0,-24(s0)
    802048a0:	fd842703          	lw	a4,-40(s0)
    802048a4:	6789                	lui	a5,0x2
    802048a6:	17fd                	addi	a5,a5,-1 # 1fff <n+0x1fdf>
    802048a8:	8ff9                	and	a5,a5,a4
    802048aa:	fef42223          	sw	a5,-28(s0)
    802048ae:	fe442783          	lw	a5,-28(s0)
    802048b2:	8b9d                	andi	a5,a5,7
    802048b4:	2781                	sext.w	a5,a5
    802048b6:	4705                	li	a4,1
    802048b8:	00f717bb          	sllw	a5,a4,a5
    802048bc:	fef42023          	sw	a5,-32(s0)
    802048c0:	fe442783          	lw	a5,-28(s0)
    802048c4:	41f7d71b          	sraiw	a4,a5,0x1f
    802048c8:	01d7571b          	srliw	a4,a4,0x1d
    802048cc:	9fb9                	addw	a5,a5,a4
    802048ce:	4037d79b          	sraiw	a5,a5,0x3
    802048d2:	2781                	sext.w	a5,a5
    802048d4:	fe843703          	ld	a4,-24(s0)
    802048d8:	97ba                	add	a5,a5,a4
    802048da:	0287c783          	lbu	a5,40(a5)
    802048de:	2781                	sext.w	a5,a5
    802048e0:	fe042703          	lw	a4,-32(s0)
    802048e4:	8ff9                	and	a5,a5,a4
    802048e6:	2781                	sext.w	a5,a5
    802048e8:	e799                	bnez	a5,802048f6 <bfree+0x98>
    802048ea:	00004517          	auipc	a0,0x4
    802048ee:	0e650513          	addi	a0,a0,230 # 802089d0 <rodata_start+0x9d0>
    802048f2:	8bafc0ef          	jal	802009ac <panic>
    802048f6:	fe442783          	lw	a5,-28(s0)
    802048fa:	41f7d71b          	sraiw	a4,a5,0x1f
    802048fe:	01d7571b          	srliw	a4,a4,0x1d
    80204902:	9fb9                	addw	a5,a5,a4
    80204904:	4037d79b          	sraiw	a5,a5,0x3
    80204908:	2781                	sext.w	a5,a5
    8020490a:	fe843703          	ld	a4,-24(s0)
    8020490e:	973e                	add	a4,a4,a5
    80204910:	02874703          	lbu	a4,40(a4)
    80204914:	0187169b          	slliw	a3,a4,0x18
    80204918:	4186d69b          	sraiw	a3,a3,0x18
    8020491c:	fe042703          	lw	a4,-32(s0)
    80204920:	0187171b          	slliw	a4,a4,0x18
    80204924:	4187571b          	sraiw	a4,a4,0x18
    80204928:	fff74713          	not	a4,a4
    8020492c:	0187171b          	slliw	a4,a4,0x18
    80204930:	4187571b          	sraiw	a4,a4,0x18
    80204934:	8f75                	and	a4,a4,a3
    80204936:	0187171b          	slliw	a4,a4,0x18
    8020493a:	4187571b          	sraiw	a4,a4,0x18
    8020493e:	0ff77713          	zext.b	a4,a4
    80204942:	fe843683          	ld	a3,-24(s0)
    80204946:	97b6                	add	a5,a5,a3
    80204948:	02e78423          	sb	a4,40(a5)
    8020494c:	fe843503          	ld	a0,-24(s0)
    80204950:	f8aff0ef          	jal	802040da <bwrite>
    80204954:	fe843503          	ld	a0,-24(s0)
    80204958:	ee8ff0ef          	jal	80204040 <brelse>
    8020495c:	0001                	nop
    8020495e:	70a2                	ld	ra,40(sp)
    80204960:	7402                	ld	s0,32(sp)
    80204962:	6145                	addi	sp,sp,48
    80204964:	8082                	ret

0000000080204966 <ialloc>:
    80204966:	7139                	addi	sp,sp,-64
    80204968:	fc06                	sd	ra,56(sp)
    8020496a:	f822                	sd	s0,48(sp)
    8020496c:	0080                	addi	s0,sp,64
    8020496e:	87aa                	mv	a5,a0
    80204970:	872e                	mv	a4,a1
    80204972:	fcf42623          	sw	a5,-52(s0)
    80204976:	87ba                	mv	a5,a4
    80204978:	fcf41523          	sh	a5,-54(s0)
    8020497c:	4785                	li	a5,1
    8020497e:	fef42623          	sw	a5,-20(s0)
    80204982:	a879                	j	80204a20 <ialloc+0xba>
    80204984:	fec42783          	lw	a5,-20(s0)
    80204988:	8391                	srli	a5,a5,0x4
    8020498a:	0007871b          	sext.w	a4,a5
    8020498e:	0048e797          	auipc	a5,0x48e
    80204992:	88a78793          	addi	a5,a5,-1910 # 80692218 <spb>
    80204996:	739c                	ld	a5,32(a5)
    80204998:	2781                	sext.w	a5,a5
    8020499a:	9fb9                	addw	a5,a5,a4
    8020499c:	0007871b          	sext.w	a4,a5
    802049a0:	fcc42783          	lw	a5,-52(s0)
    802049a4:	85ba                	mv	a1,a4
    802049a6:	853e                	mv	a0,a5
    802049a8:	e44ff0ef          	jal	80203fec <bread>
    802049ac:	fea43023          	sd	a0,-32(s0)
    802049b0:	fe043783          	ld	a5,-32(s0)
    802049b4:	02878713          	addi	a4,a5,40
    802049b8:	fec42783          	lw	a5,-20(s0)
    802049bc:	8bbd                	andi	a5,a5,15
    802049be:	079a                	slli	a5,a5,0x6
    802049c0:	97ba                	add	a5,a5,a4
    802049c2:	fcf43c23          	sd	a5,-40(s0)
    802049c6:	fd843783          	ld	a5,-40(s0)
    802049ca:	0007d783          	lhu	a5,0(a5)
    802049ce:	e3a1                	bnez	a5,80204a0e <ialloc+0xa8>
    802049d0:	04000613          	li	a2,64
    802049d4:	4581                	li	a1,0
    802049d6:	fd843503          	ld	a0,-40(s0)
    802049da:	84efd0ef          	jal	80201a28 <memset>
    802049de:	fca45703          	lhu	a4,-54(s0)
    802049e2:	fd843783          	ld	a5,-40(s0)
    802049e6:	00e79023          	sh	a4,0(a5)
    802049ea:	fe043503          	ld	a0,-32(s0)
    802049ee:	eecff0ef          	jal	802040da <bwrite>
    802049f2:	fe043503          	ld	a0,-32(s0)
    802049f6:	e4aff0ef          	jal	80204040 <brelse>
    802049fa:	fec42703          	lw	a4,-20(s0)
    802049fe:	fcc42783          	lw	a5,-52(s0)
    80204a02:	85ba                	mv	a1,a4
    80204a04:	853e                	mv	a0,a5
    80204a06:	0f2000ef          	jal	80204af8 <iget>
    80204a0a:	87aa                	mv	a5,a0
    80204a0c:	a815                	j	80204a40 <ialloc+0xda>
    80204a0e:	fe043503          	ld	a0,-32(s0)
    80204a12:	e2eff0ef          	jal	80204040 <brelse>
    80204a16:	fec42783          	lw	a5,-20(s0)
    80204a1a:	2785                	addiw	a5,a5,1
    80204a1c:	fef42623          	sw	a5,-20(s0)
    80204a20:	fec42703          	lw	a4,-20(s0)
    80204a24:	0048d797          	auipc	a5,0x48d
    80204a28:	7f478793          	addi	a5,a5,2036 # 80692218 <spb>
    80204a2c:	6f9c                	ld	a5,24(a5)
    80204a2e:	f4f76be3          	bltu	a4,a5,80204984 <ialloc+0x1e>
    80204a32:	00004517          	auipc	a0,0x4
    80204a36:	fb650513          	addi	a0,a0,-74 # 802089e8 <rodata_start+0x9e8>
    80204a3a:	f73fb0ef          	jal	802009ac <panic>
    80204a3e:	4781                	li	a5,0
    80204a40:	853e                	mv	a0,a5
    80204a42:	70e2                	ld	ra,56(sp)
    80204a44:	7442                	ld	s0,48(sp)
    80204a46:	6121                	addi	sp,sp,64
    80204a48:	8082                	ret

0000000080204a4a <iupdate>:
    80204a4a:	7179                	addi	sp,sp,-48
    80204a4c:	f406                	sd	ra,40(sp)
    80204a4e:	f022                	sd	s0,32(sp)
    80204a50:	1800                	addi	s0,sp,48
    80204a52:	fca43c23          	sd	a0,-40(s0)
    80204a56:	fd843783          	ld	a5,-40(s0)
    80204a5a:	4394                	lw	a3,0(a5)
    80204a5c:	fd843783          	ld	a5,-40(s0)
    80204a60:	43dc                	lw	a5,4(a5)
    80204a62:	0047d79b          	srliw	a5,a5,0x4
    80204a66:	0007871b          	sext.w	a4,a5
    80204a6a:	0048d797          	auipc	a5,0x48d
    80204a6e:	7ae78793          	addi	a5,a5,1966 # 80692218 <spb>
    80204a72:	739c                	ld	a5,32(a5)
    80204a74:	2781                	sext.w	a5,a5
    80204a76:	9fb9                	addw	a5,a5,a4
    80204a78:	2781                	sext.w	a5,a5
    80204a7a:	85be                	mv	a1,a5
    80204a7c:	8536                	mv	a0,a3
    80204a7e:	d6eff0ef          	jal	80203fec <bread>
    80204a82:	fea43423          	sd	a0,-24(s0)
    80204a86:	fe843783          	ld	a5,-24(s0)
    80204a8a:	02878713          	addi	a4,a5,40
    80204a8e:	fd843783          	ld	a5,-40(s0)
    80204a92:	43dc                	lw	a5,4(a5)
    80204a94:	1782                	slli	a5,a5,0x20
    80204a96:	9381                	srli	a5,a5,0x20
    80204a98:	8bbd                	andi	a5,a5,15
    80204a9a:	079a                	slli	a5,a5,0x6
    80204a9c:	97ba                	add	a5,a5,a4
    80204a9e:	fef43023          	sd	a5,-32(s0)
    80204aa2:	fd843783          	ld	a5,-40(s0)
    80204aa6:	01079783          	lh	a5,16(a5)
    80204aaa:	03079713          	slli	a4,a5,0x30
    80204aae:	9341                	srli	a4,a4,0x30
    80204ab0:	fe043783          	ld	a5,-32(s0)
    80204ab4:	00e79023          	sh	a4,0(a5)
    80204ab8:	fd843783          	ld	a5,-40(s0)
    80204abc:	4bd8                	lw	a4,20(a5)
    80204abe:	fe043783          	ld	a5,-32(s0)
    80204ac2:	c798                	sw	a4,8(a5)
    80204ac4:	fe043783          	ld	a5,-32(s0)
    80204ac8:	00c78713          	addi	a4,a5,12
    80204acc:	fd843783          	ld	a5,-40(s0)
    80204ad0:	07e1                	addi	a5,a5,24
    80204ad2:	03400613          	li	a2,52
    80204ad6:	85be                	mv	a1,a5
    80204ad8:	853a                	mv	a0,a4
    80204ada:	e7ffc0ef          	jal	80201958 <memmove>
    80204ade:	fe843503          	ld	a0,-24(s0)
    80204ae2:	df8ff0ef          	jal	802040da <bwrite>
    80204ae6:	fe843503          	ld	a0,-24(s0)
    80204aea:	d56ff0ef          	jal	80204040 <brelse>
    80204aee:	0001                	nop
    80204af0:	70a2                	ld	ra,40(sp)
    80204af2:	7402                	ld	s0,32(sp)
    80204af4:	6145                	addi	sp,sp,48
    80204af6:	8082                	ret

0000000080204af8 <iget>:
    80204af8:	7179                	addi	sp,sp,-48
    80204afa:	f406                	sd	ra,40(sp)
    80204afc:	f022                	sd	s0,32(sp)
    80204afe:	1800                	addi	s0,sp,48
    80204b00:	87aa                	mv	a5,a0
    80204b02:	872e                	mv	a4,a1
    80204b04:	fcf42e23          	sw	a5,-36(s0)
    80204b08:	87ba                	mv	a5,a4
    80204b0a:	fcf42c23          	sw	a5,-40(s0)
    80204b0e:	fe043023          	sd	zero,-32(s0)
    80204b12:	0048d797          	auipc	a5,0x48d
    80204b16:	73678793          	addi	a5,a5,1846 # 80692248 <itable>
    80204b1a:	fef43423          	sd	a5,-24(s0)
    80204b1e:	a09d                	j	80204b84 <iget+0x8c>
    80204b20:	fe843783          	ld	a5,-24(s0)
    80204b24:	479c                	lw	a5,8(a5)
    80204b26:	02f05e63          	blez	a5,80204b62 <iget+0x6a>
    80204b2a:	fe843783          	ld	a5,-24(s0)
    80204b2e:	439c                	lw	a5,0(a5)
    80204b30:	fdc42703          	lw	a4,-36(s0)
    80204b34:	2701                	sext.w	a4,a4
    80204b36:	02f71663          	bne	a4,a5,80204b62 <iget+0x6a>
    80204b3a:	fe843783          	ld	a5,-24(s0)
    80204b3e:	43dc                	lw	a5,4(a5)
    80204b40:	fd842703          	lw	a4,-40(s0)
    80204b44:	2701                	sext.w	a4,a4
    80204b46:	00f71e63          	bne	a4,a5,80204b62 <iget+0x6a>
    80204b4a:	fe843783          	ld	a5,-24(s0)
    80204b4e:	479c                	lw	a5,8(a5)
    80204b50:	2785                	addiw	a5,a5,1
    80204b52:	0007871b          	sext.w	a4,a5
    80204b56:	fe843783          	ld	a5,-24(s0)
    80204b5a:	c798                	sw	a4,8(a5)
    80204b5c:	fe843783          	ld	a5,-24(s0)
    80204b60:	a89d                	j	80204bd6 <iget+0xde>
    80204b62:	fe043783          	ld	a5,-32(s0)
    80204b66:	eb89                	bnez	a5,80204b78 <iget+0x80>
    80204b68:	fe843783          	ld	a5,-24(s0)
    80204b6c:	479c                	lw	a5,8(a5)
    80204b6e:	e789                	bnez	a5,80204b78 <iget+0x80>
    80204b70:	fe843783          	ld	a5,-24(s0)
    80204b74:	fef43023          	sd	a5,-32(s0)
    80204b78:	fe843783          	ld	a5,-24(s0)
    80204b7c:	04c78793          	addi	a5,a5,76
    80204b80:	fef43423          	sd	a5,-24(s0)
    80204b84:	fe843703          	ld	a4,-24(s0)
    80204b88:	0048e797          	auipc	a5,0x48e
    80204b8c:	59878793          	addi	a5,a5,1432 # 80693120 <itable+0xed8>
    80204b90:	f8f768e3          	bltu	a4,a5,80204b20 <iget+0x28>
    80204b94:	fe043783          	ld	a5,-32(s0)
    80204b98:	e799                	bnez	a5,80204ba6 <iget+0xae>
    80204b9a:	00004517          	auipc	a0,0x4
    80204b9e:	e6650513          	addi	a0,a0,-410 # 80208a00 <rodata_start+0xa00>
    80204ba2:	e0bfb0ef          	jal	802009ac <panic>
    80204ba6:	fe043783          	ld	a5,-32(s0)
    80204baa:	fef43423          	sd	a5,-24(s0)
    80204bae:	fe843783          	ld	a5,-24(s0)
    80204bb2:	fdc42703          	lw	a4,-36(s0)
    80204bb6:	c398                	sw	a4,0(a5)
    80204bb8:	fe843783          	ld	a5,-24(s0)
    80204bbc:	fd842703          	lw	a4,-40(s0)
    80204bc0:	c3d8                	sw	a4,4(a5)
    80204bc2:	fe843783          	ld	a5,-24(s0)
    80204bc6:	4705                	li	a4,1
    80204bc8:	c798                	sw	a4,8(a5)
    80204bca:	fe843783          	ld	a5,-24(s0)
    80204bce:	0007a623          	sw	zero,12(a5)
    80204bd2:	fe843783          	ld	a5,-24(s0)
    80204bd6:	853e                	mv	a0,a5
    80204bd8:	70a2                	ld	ra,40(sp)
    80204bda:	7402                	ld	s0,32(sp)
    80204bdc:	6145                	addi	sp,sp,48
    80204bde:	8082                	ret

0000000080204be0 <idup>:
    80204be0:	1101                	addi	sp,sp,-32
    80204be2:	ec06                	sd	ra,24(sp)
    80204be4:	e822                	sd	s0,16(sp)
    80204be6:	1000                	addi	s0,sp,32
    80204be8:	fea43423          	sd	a0,-24(s0)
    80204bec:	fe843783          	ld	a5,-24(s0)
    80204bf0:	479c                	lw	a5,8(a5)
    80204bf2:	2785                	addiw	a5,a5,1
    80204bf4:	0007871b          	sext.w	a4,a5
    80204bf8:	fe843783          	ld	a5,-24(s0)
    80204bfc:	c798                	sw	a4,8(a5)
    80204bfe:	fe843783          	ld	a5,-24(s0)
    80204c02:	853e                	mv	a0,a5
    80204c04:	60e2                	ld	ra,24(sp)
    80204c06:	6442                	ld	s0,16(sp)
    80204c08:	6105                	addi	sp,sp,32
    80204c0a:	8082                	ret

0000000080204c0c <ivalid>:
    80204c0c:	7179                	addi	sp,sp,-48
    80204c0e:	f406                	sd	ra,40(sp)
    80204c10:	f022                	sd	s0,32(sp)
    80204c12:	1800                	addi	s0,sp,48
    80204c14:	fca43c23          	sd	a0,-40(s0)
    80204c18:	fd843783          	ld	a5,-40(s0)
    80204c1c:	47dc                	lw	a5,12(a5)
    80204c1e:	ebcd                	bnez	a5,80204cd0 <ivalid+0xc4>
    80204c20:	fd843783          	ld	a5,-40(s0)
    80204c24:	4394                	lw	a3,0(a5)
    80204c26:	fd843783          	ld	a5,-40(s0)
    80204c2a:	43dc                	lw	a5,4(a5)
    80204c2c:	0047d79b          	srliw	a5,a5,0x4
    80204c30:	0007871b          	sext.w	a4,a5
    80204c34:	0048d797          	auipc	a5,0x48d
    80204c38:	5e478793          	addi	a5,a5,1508 # 80692218 <spb>
    80204c3c:	739c                	ld	a5,32(a5)
    80204c3e:	2781                	sext.w	a5,a5
    80204c40:	9fb9                	addw	a5,a5,a4
    80204c42:	2781                	sext.w	a5,a5
    80204c44:	85be                	mv	a1,a5
    80204c46:	8536                	mv	a0,a3
    80204c48:	ba4ff0ef          	jal	80203fec <bread>
    80204c4c:	fea43423          	sd	a0,-24(s0)
    80204c50:	fe843783          	ld	a5,-24(s0)
    80204c54:	02878713          	addi	a4,a5,40
    80204c58:	fd843783          	ld	a5,-40(s0)
    80204c5c:	43dc                	lw	a5,4(a5)
    80204c5e:	1782                	slli	a5,a5,0x20
    80204c60:	9381                	srli	a5,a5,0x20
    80204c62:	8bbd                	andi	a5,a5,15
    80204c64:	079a                	slli	a5,a5,0x6
    80204c66:	97ba                	add	a5,a5,a4
    80204c68:	fef43023          	sd	a5,-32(s0)
    80204c6c:	fe043783          	ld	a5,-32(s0)
    80204c70:	0007d783          	lhu	a5,0(a5)
    80204c74:	0107971b          	slliw	a4,a5,0x10
    80204c78:	4107571b          	sraiw	a4,a4,0x10
    80204c7c:	fd843783          	ld	a5,-40(s0)
    80204c80:	00e79823          	sh	a4,16(a5)
    80204c84:	fe043783          	ld	a5,-32(s0)
    80204c88:	4798                	lw	a4,8(a5)
    80204c8a:	fd843783          	ld	a5,-40(s0)
    80204c8e:	cbd8                	sw	a4,20(a5)
    80204c90:	fd843783          	ld	a5,-40(s0)
    80204c94:	01878713          	addi	a4,a5,24
    80204c98:	fe043783          	ld	a5,-32(s0)
    80204c9c:	07b1                	addi	a5,a5,12
    80204c9e:	03400613          	li	a2,52
    80204ca2:	85be                	mv	a1,a5
    80204ca4:	853a                	mv	a0,a4
    80204ca6:	cb3fc0ef          	jal	80201958 <memmove>
    80204caa:	fe843503          	ld	a0,-24(s0)
    80204cae:	b92ff0ef          	jal	80204040 <brelse>
    80204cb2:	fd843783          	ld	a5,-40(s0)
    80204cb6:	4705                	li	a4,1
    80204cb8:	c7d8                	sw	a4,12(a5)
    80204cba:	fd843783          	ld	a5,-40(s0)
    80204cbe:	01079783          	lh	a5,16(a5)
    80204cc2:	e799                	bnez	a5,80204cd0 <ivalid+0xc4>
    80204cc4:	00004517          	auipc	a0,0x4
    80204cc8:	d4c50513          	addi	a0,a0,-692 # 80208a10 <rodata_start+0xa10>
    80204ccc:	ce1fb0ef          	jal	802009ac <panic>
    80204cd0:	0001                	nop
    80204cd2:	70a2                	ld	ra,40(sp)
    80204cd4:	7402                	ld	s0,32(sp)
    80204cd6:	6145                	addi	sp,sp,48
    80204cd8:	8082                	ret

0000000080204cda <root_dir>:
    80204cda:	1101                	addi	sp,sp,-32
    80204cdc:	ec06                	sd	ra,24(sp)
    80204cde:	e822                	sd	s0,16(sp)
    80204ce0:	1000                	addi	s0,sp,32
    80204ce2:	4585                	li	a1,1
    80204ce4:	4505                	li	a0,1
    80204ce6:	e13ff0ef          	jal	80204af8 <iget>
    80204cea:	fea43423          	sd	a0,-24(s0)
    80204cee:	fe843503          	ld	a0,-24(s0)
    80204cf2:	f1bff0ef          	jal	80204c0c <ivalid>
    80204cf6:	fe843783          	ld	a5,-24(s0)
    80204cfa:	853e                	mv	a0,a5
    80204cfc:	60e2                	ld	ra,24(sp)
    80204cfe:	6442                	ld	s0,16(sp)
    80204d00:	6105                	addi	sp,sp,32
    80204d02:	8082                	ret

0000000080204d04 <iput>:
    80204d04:	1101                	addi	sp,sp,-32
    80204d06:	ec06                	sd	ra,24(sp)
    80204d08:	e822                	sd	s0,16(sp)
    80204d0a:	1000                	addi	s0,sp,32
    80204d0c:	fea43423          	sd	a0,-24(s0)
    80204d10:	fe843783          	ld	a5,-24(s0)
    80204d14:	479c                	lw	a5,8(a5)
    80204d16:	37fd                	addiw	a5,a5,-1
    80204d18:	0007871b          	sext.w	a4,a5
    80204d1c:	fe843783          	ld	a5,-24(s0)
    80204d20:	c798                	sw	a4,8(a5)
    80204d22:	0001                	nop
    80204d24:	60e2                	ld	ra,24(sp)
    80204d26:	6442                	ld	s0,16(sp)
    80204d28:	6105                	addi	sp,sp,32
    80204d2a:	8082                	ret

0000000080204d2c <bmap>:
    80204d2c:	7139                	addi	sp,sp,-64
    80204d2e:	fc06                	sd	ra,56(sp)
    80204d30:	f822                	sd	s0,48(sp)
    80204d32:	0080                	addi	s0,sp,64
    80204d34:	fca43423          	sd	a0,-56(s0)
    80204d38:	87ae                	mv	a5,a1
    80204d3a:	fcf42223          	sw	a5,-60(s0)
    80204d3e:	fc442783          	lw	a5,-60(s0)
    80204d42:	0007871b          	sext.w	a4,a5
    80204d46:	47ad                	li	a5,11
    80204d48:	04e7e663          	bltu	a5,a4,80204d94 <bmap+0x68>
    80204d4c:	fc843703          	ld	a4,-56(s0)
    80204d50:	fc446783          	lwu	a5,-60(s0)
    80204d54:	0791                	addi	a5,a5,4
    80204d56:	078a                	slli	a5,a5,0x2
    80204d58:	97ba                	add	a5,a5,a4
    80204d5a:	479c                	lw	a5,8(a5)
    80204d5c:	fef42623          	sw	a5,-20(s0)
    80204d60:	fec42783          	lw	a5,-20(s0)
    80204d64:	2781                	sext.w	a5,a5
    80204d66:	e785                	bnez	a5,80204d8e <bmap+0x62>
    80204d68:	fc843783          	ld	a5,-56(s0)
    80204d6c:	439c                	lw	a5,0(a5)
    80204d6e:	853e                	mv	a0,a5
    80204d70:	8cdff0ef          	jal	8020463c <balloc>
    80204d74:	87aa                	mv	a5,a0
    80204d76:	fef42623          	sw	a5,-20(s0)
    80204d7a:	fc843703          	ld	a4,-56(s0)
    80204d7e:	fc446783          	lwu	a5,-60(s0)
    80204d82:	0791                	addi	a5,a5,4
    80204d84:	078a                	slli	a5,a5,0x2
    80204d86:	97ba                	add	a5,a5,a4
    80204d88:	fec42703          	lw	a4,-20(s0)
    80204d8c:	c798                	sw	a4,8(a5)
    80204d8e:	fec42783          	lw	a5,-20(s0)
    80204d92:	a0f9                	j	80204e60 <bmap+0x134>
    80204d94:	fc442783          	lw	a5,-60(s0)
    80204d98:	37d1                	addiw	a5,a5,-12
    80204d9a:	fcf42223          	sw	a5,-60(s0)
    80204d9e:	fc442783          	lw	a5,-60(s0)
    80204da2:	0007871b          	sext.w	a4,a5
    80204da6:	0ff00793          	li	a5,255
    80204daa:	0ae7e463          	bltu	a5,a4,80204e52 <bmap+0x126>
    80204dae:	fc843783          	ld	a5,-56(s0)
    80204db2:	47bc                	lw	a5,72(a5)
    80204db4:	fef42623          	sw	a5,-20(s0)
    80204db8:	fec42783          	lw	a5,-20(s0)
    80204dbc:	2781                	sext.w	a5,a5
    80204dbe:	ef99                	bnez	a5,80204ddc <bmap+0xb0>
    80204dc0:	fc843783          	ld	a5,-56(s0)
    80204dc4:	439c                	lw	a5,0(a5)
    80204dc6:	853e                	mv	a0,a5
    80204dc8:	875ff0ef          	jal	8020463c <balloc>
    80204dcc:	87aa                	mv	a5,a0
    80204dce:	fef42623          	sw	a5,-20(s0)
    80204dd2:	fc843783          	ld	a5,-56(s0)
    80204dd6:	fec42703          	lw	a4,-20(s0)
    80204dda:	c7b8                	sw	a4,72(a5)
    80204ddc:	fc843783          	ld	a5,-56(s0)
    80204de0:	439c                	lw	a5,0(a5)
    80204de2:	fec42703          	lw	a4,-20(s0)
    80204de6:	85ba                	mv	a1,a4
    80204de8:	853e                	mv	a0,a5
    80204dea:	a02ff0ef          	jal	80203fec <bread>
    80204dee:	fea43023          	sd	a0,-32(s0)
    80204df2:	fe043783          	ld	a5,-32(s0)
    80204df6:	02878793          	addi	a5,a5,40
    80204dfa:	fcf43c23          	sd	a5,-40(s0)
    80204dfe:	fc446783          	lwu	a5,-60(s0)
    80204e02:	078a                	slli	a5,a5,0x2
    80204e04:	fd843703          	ld	a4,-40(s0)
    80204e08:	97ba                	add	a5,a5,a4
    80204e0a:	439c                	lw	a5,0(a5)
    80204e0c:	fef42623          	sw	a5,-20(s0)
    80204e10:	fec42783          	lw	a5,-20(s0)
    80204e14:	2781                	sext.w	a5,a5
    80204e16:	e79d                	bnez	a5,80204e44 <bmap+0x118>
    80204e18:	fc843783          	ld	a5,-56(s0)
    80204e1c:	439c                	lw	a5,0(a5)
    80204e1e:	853e                	mv	a0,a5
    80204e20:	81dff0ef          	jal	8020463c <balloc>
    80204e24:	87aa                	mv	a5,a0
    80204e26:	fef42623          	sw	a5,-20(s0)
    80204e2a:	fc446783          	lwu	a5,-60(s0)
    80204e2e:	078a                	slli	a5,a5,0x2
    80204e30:	fd843703          	ld	a4,-40(s0)
    80204e34:	97ba                	add	a5,a5,a4
    80204e36:	fec42703          	lw	a4,-20(s0)
    80204e3a:	c398                	sw	a4,0(a5)
    80204e3c:	fe043503          	ld	a0,-32(s0)
    80204e40:	a9aff0ef          	jal	802040da <bwrite>
    80204e44:	fe043503          	ld	a0,-32(s0)
    80204e48:	9f8ff0ef          	jal	80204040 <brelse>
    80204e4c:	fec42783          	lw	a5,-20(s0)
    80204e50:	a801                	j	80204e60 <bmap+0x134>
    80204e52:	00004517          	auipc	a0,0x4
    80204e56:	bce50513          	addi	a0,a0,-1074 # 80208a20 <rodata_start+0xa20>
    80204e5a:	b53fb0ef          	jal	802009ac <panic>
    80204e5e:	4781                	li	a5,0
    80204e60:	853e                	mv	a0,a5
    80204e62:	70e2                	ld	ra,56(sp)
    80204e64:	7442                	ld	s0,48(sp)
    80204e66:	6121                	addi	sp,sp,64
    80204e68:	8082                	ret

0000000080204e6a <itrunc>:
    80204e6a:	7139                	addi	sp,sp,-64
    80204e6c:	fc06                	sd	ra,56(sp)
    80204e6e:	f822                	sd	s0,48(sp)
    80204e70:	0080                	addi	s0,sp,64
    80204e72:	fca43423          	sd	a0,-56(s0)
    80204e76:	fe042623          	sw	zero,-20(s0)
    80204e7a:	a881                	j	80204eca <itrunc+0x60>
    80204e7c:	fc843703          	ld	a4,-56(s0)
    80204e80:	fec42783          	lw	a5,-20(s0)
    80204e84:	0791                	addi	a5,a5,4
    80204e86:	078a                	slli	a5,a5,0x2
    80204e88:	97ba                	add	a5,a5,a4
    80204e8a:	479c                	lw	a5,8(a5)
    80204e8c:	cb95                	beqz	a5,80204ec0 <itrunc+0x56>
    80204e8e:	fc843783          	ld	a5,-56(s0)
    80204e92:	439c                	lw	a5,0(a5)
    80204e94:	86be                	mv	a3,a5
    80204e96:	fc843703          	ld	a4,-56(s0)
    80204e9a:	fec42783          	lw	a5,-20(s0)
    80204e9e:	0791                	addi	a5,a5,4
    80204ea0:	078a                	slli	a5,a5,0x2
    80204ea2:	97ba                	add	a5,a5,a4
    80204ea4:	479c                	lw	a5,8(a5)
    80204ea6:	85be                	mv	a1,a5
    80204ea8:	8536                	mv	a0,a3
    80204eaa:	9b5ff0ef          	jal	8020485e <bfree>
    80204eae:	fc843703          	ld	a4,-56(s0)
    80204eb2:	fec42783          	lw	a5,-20(s0)
    80204eb6:	0791                	addi	a5,a5,4
    80204eb8:	078a                	slli	a5,a5,0x2
    80204eba:	97ba                	add	a5,a5,a4
    80204ebc:	0007a423          	sw	zero,8(a5)
    80204ec0:	fec42783          	lw	a5,-20(s0)
    80204ec4:	2785                	addiw	a5,a5,1
    80204ec6:	fef42623          	sw	a5,-20(s0)
    80204eca:	fec42783          	lw	a5,-20(s0)
    80204ece:	0007871b          	sext.w	a4,a5
    80204ed2:	47ad                	li	a5,11
    80204ed4:	fae7d4e3          	bge	a5,a4,80204e7c <itrunc+0x12>
    80204ed8:	fc843783          	ld	a5,-56(s0)
    80204edc:	47bc                	lw	a5,72(a5)
    80204ede:	cbd9                	beqz	a5,80204f74 <itrunc+0x10a>
    80204ee0:	fc843783          	ld	a5,-56(s0)
    80204ee4:	4398                	lw	a4,0(a5)
    80204ee6:	fc843783          	ld	a5,-56(s0)
    80204eea:	47bc                	lw	a5,72(a5)
    80204eec:	85be                	mv	a1,a5
    80204eee:	853a                	mv	a0,a4
    80204ef0:	8fcff0ef          	jal	80203fec <bread>
    80204ef4:	fea43023          	sd	a0,-32(s0)
    80204ef8:	fe043783          	ld	a5,-32(s0)
    80204efc:	02878793          	addi	a5,a5,40
    80204f00:	fcf43c23          	sd	a5,-40(s0)
    80204f04:	fe042423          	sw	zero,-24(s0)
    80204f08:	a82d                	j	80204f42 <itrunc+0xd8>
    80204f0a:	fe842783          	lw	a5,-24(s0)
    80204f0e:	078a                	slli	a5,a5,0x2
    80204f10:	fd843703          	ld	a4,-40(s0)
    80204f14:	97ba                	add	a5,a5,a4
    80204f16:	439c                	lw	a5,0(a5)
    80204f18:	c385                	beqz	a5,80204f38 <itrunc+0xce>
    80204f1a:	fc843783          	ld	a5,-56(s0)
    80204f1e:	439c                	lw	a5,0(a5)
    80204f20:	86be                	mv	a3,a5
    80204f22:	fe842783          	lw	a5,-24(s0)
    80204f26:	078a                	slli	a5,a5,0x2
    80204f28:	fd843703          	ld	a4,-40(s0)
    80204f2c:	97ba                	add	a5,a5,a4
    80204f2e:	439c                	lw	a5,0(a5)
    80204f30:	85be                	mv	a1,a5
    80204f32:	8536                	mv	a0,a3
    80204f34:	92bff0ef          	jal	8020485e <bfree>
    80204f38:	fe842783          	lw	a5,-24(s0)
    80204f3c:	2785                	addiw	a5,a5,1
    80204f3e:	fef42423          	sw	a5,-24(s0)
    80204f42:	fe842703          	lw	a4,-24(s0)
    80204f46:	0ff00793          	li	a5,255
    80204f4a:	fce7f0e3          	bgeu	a5,a4,80204f0a <itrunc+0xa0>
    80204f4e:	fe043503          	ld	a0,-32(s0)
    80204f52:	8eeff0ef          	jal	80204040 <brelse>
    80204f56:	fc843783          	ld	a5,-56(s0)
    80204f5a:	439c                	lw	a5,0(a5)
    80204f5c:	873e                	mv	a4,a5
    80204f5e:	fc843783          	ld	a5,-56(s0)
    80204f62:	47bc                	lw	a5,72(a5)
    80204f64:	85be                	mv	a1,a5
    80204f66:	853a                	mv	a0,a4
    80204f68:	8f7ff0ef          	jal	8020485e <bfree>
    80204f6c:	fc843783          	ld	a5,-56(s0)
    80204f70:	0407a423          	sw	zero,72(a5)
    80204f74:	fc843783          	ld	a5,-56(s0)
    80204f78:	0007aa23          	sw	zero,20(a5)
    80204f7c:	fc843503          	ld	a0,-56(s0)
    80204f80:	acbff0ef          	jal	80204a4a <iupdate>
    80204f84:	0001                	nop
    80204f86:	70e2                	ld	ra,56(sp)
    80204f88:	7442                	ld	s0,48(sp)
    80204f8a:	6121                	addi	sp,sp,64
    80204f8c:	8082                	ret

0000000080204f8e <readi>:
    80204f8e:	711d                	addi	sp,sp,-96
    80204f90:	ec86                	sd	ra,88(sp)
    80204f92:	e8a2                	sd	s0,80(sp)
    80204f94:	e4a6                	sd	s1,72(sp)
    80204f96:	1080                	addi	s0,sp,96
    80204f98:	faa43c23          	sd	a0,-72(s0)
    80204f9c:	87ae                	mv	a5,a1
    80204f9e:	fac43423          	sd	a2,-88(s0)
    80204fa2:	faf42a23          	sw	a5,-76(s0)
    80204fa6:	87b6                	mv	a5,a3
    80204fa8:	faf42823          	sw	a5,-80(s0)
    80204fac:	87ba                	mv	a5,a4
    80204fae:	faf42223          	sw	a5,-92(s0)
    80204fb2:	fb843783          	ld	a5,-72(s0)
    80204fb6:	4bdc                	lw	a5,20(a5)
    80204fb8:	fb042703          	lw	a4,-80(s0)
    80204fbc:	2701                	sext.w	a4,a4
    80204fbe:	00e7ee63          	bltu	a5,a4,80204fda <readi+0x4c>
    80204fc2:	fb042783          	lw	a5,-80(s0)
    80204fc6:	873e                	mv	a4,a5
    80204fc8:	fa442783          	lw	a5,-92(s0)
    80204fcc:	9fb9                	addw	a5,a5,a4
    80204fce:	2781                	sext.w	a5,a5
    80204fd0:	fb042703          	lw	a4,-80(s0)
    80204fd4:	2701                	sext.w	a4,a4
    80204fd6:	00e7f463          	bgeu	a5,a4,80204fde <readi+0x50>
    80204fda:	4781                	li	a5,0
    80204fdc:	aa01                	j	802050ec <readi+0x15e>
    80204fde:	fb042783          	lw	a5,-80(s0)
    80204fe2:	873e                	mv	a4,a5
    80204fe4:	fa442783          	lw	a5,-92(s0)
    80204fe8:	9fb9                	addw	a5,a5,a4
    80204fea:	0007871b          	sext.w	a4,a5
    80204fee:	fb843783          	ld	a5,-72(s0)
    80204ff2:	4bdc                	lw	a5,20(a5)
    80204ff4:	00e7fa63          	bgeu	a5,a4,80205008 <readi+0x7a>
    80204ff8:	fb843783          	ld	a5,-72(s0)
    80204ffc:	4bdc                	lw	a5,20(a5)
    80204ffe:	fb042703          	lw	a4,-80(s0)
    80205002:	9f99                	subw	a5,a5,a4
    80205004:	faf42223          	sw	a5,-92(s0)
    80205008:	fc043c23          	sd	zero,-40(s0)
    8020500c:	a0f9                	j	802050da <readi+0x14c>
    8020500e:	fb843783          	ld	a5,-72(s0)
    80205012:	4384                	lw	s1,0(a5)
    80205014:	fb042783          	lw	a5,-80(s0)
    80205018:	00a7d79b          	srliw	a5,a5,0xa
    8020501c:	2781                	sext.w	a5,a5
    8020501e:	85be                	mv	a1,a5
    80205020:	fb843503          	ld	a0,-72(s0)
    80205024:	d09ff0ef          	jal	80204d2c <bmap>
    80205028:	87aa                	mv	a5,a0
    8020502a:	85be                	mv	a1,a5
    8020502c:	8526                	mv	a0,s1
    8020502e:	fbffe0ef          	jal	80203fec <bread>
    80205032:	fca43823          	sd	a0,-48(s0)
    80205036:	fb042783          	lw	a5,-80(s0)
    8020503a:	3ff7f793          	andi	a5,a5,1023
    8020503e:	2781                	sext.w	a5,a5
    80205040:	40000713          	li	a4,1024
    80205044:	40f707bb          	subw	a5,a4,a5
    80205048:	2781                	sext.w	a5,a5
    8020504a:	02079693          	slli	a3,a5,0x20
    8020504e:	9281                	srli	a3,a3,0x20
    80205050:	fa446703          	lwu	a4,-92(s0)
    80205054:	fd843783          	ld	a5,-40(s0)
    80205058:	8f1d                	sub	a4,a4,a5
    8020505a:	87b6                	mv	a5,a3
    8020505c:	00f77363          	bgeu	a4,a5,80205062 <readi+0xd4>
    80205060:	87ba                	mv	a5,a4
    80205062:	fcf43423          	sd	a5,-56(s0)
    80205066:	fd043783          	ld	a5,-48(s0)
    8020506a:	02878713          	addi	a4,a5,40
    8020506e:	fb046783          	lwu	a5,-80(s0)
    80205072:	3ff7f793          	andi	a5,a5,1023
    80205076:	973e                	add	a4,a4,a5
    80205078:	fb442783          	lw	a5,-76(s0)
    8020507c:	fc843683          	ld	a3,-56(s0)
    80205080:	863a                	mv	a2,a4
    80205082:	fa843583          	ld	a1,-88(s0)
    80205086:	853e                	mv	a0,a5
    80205088:	b59fe0ef          	jal	80203be0 <either_copyout>
    8020508c:	87aa                	mv	a5,a0
    8020508e:	873e                	mv	a4,a5
    80205090:	57fd                	li	a5,-1
    80205092:	00f71a63          	bne	a4,a5,802050a6 <readi+0x118>
    80205096:	fd043503          	ld	a0,-48(s0)
    8020509a:	fa7fe0ef          	jal	80204040 <brelse>
    8020509e:	57fd                	li	a5,-1
    802050a0:	fcf43c23          	sd	a5,-40(s0)
    802050a4:	a089                	j	802050e6 <readi+0x158>
    802050a6:	fd043503          	ld	a0,-48(s0)
    802050aa:	f97fe0ef          	jal	80204040 <brelse>
    802050ae:	fd843703          	ld	a4,-40(s0)
    802050b2:	fc843783          	ld	a5,-56(s0)
    802050b6:	97ba                	add	a5,a5,a4
    802050b8:	fcf43c23          	sd	a5,-40(s0)
    802050bc:	fc843783          	ld	a5,-56(s0)
    802050c0:	2781                	sext.w	a5,a5
    802050c2:	fb042703          	lw	a4,-80(s0)
    802050c6:	9fb9                	addw	a5,a5,a4
    802050c8:	faf42823          	sw	a5,-80(s0)
    802050cc:	fa843703          	ld	a4,-88(s0)
    802050d0:	fc843783          	ld	a5,-56(s0)
    802050d4:	97ba                	add	a5,a5,a4
    802050d6:	faf43423          	sd	a5,-88(s0)
    802050da:	fa446783          	lwu	a5,-92(s0)
    802050de:	fd843703          	ld	a4,-40(s0)
    802050e2:	f2f766e3          	bltu	a4,a5,8020500e <readi+0x80>
    802050e6:	fd843783          	ld	a5,-40(s0)
    802050ea:	2781                	sext.w	a5,a5
    802050ec:	853e                	mv	a0,a5
    802050ee:	60e6                	ld	ra,88(sp)
    802050f0:	6446                	ld	s0,80(sp)
    802050f2:	64a6                	ld	s1,72(sp)
    802050f4:	6125                	addi	sp,sp,96
    802050f6:	8082                	ret

00000000802050f8 <writei>:
    802050f8:	711d                	addi	sp,sp,-96
    802050fa:	ec86                	sd	ra,88(sp)
    802050fc:	e8a2                	sd	s0,80(sp)
    802050fe:	e4a6                	sd	s1,72(sp)
    80205100:	1080                	addi	s0,sp,96
    80205102:	faa43c23          	sd	a0,-72(s0)
    80205106:	87ae                	mv	a5,a1
    80205108:	fac43423          	sd	a2,-88(s0)
    8020510c:	faf42a23          	sw	a5,-76(s0)
    80205110:	87b6                	mv	a5,a3
    80205112:	faf42823          	sw	a5,-80(s0)
    80205116:	87ba                	mv	a5,a4
    80205118:	faf42223          	sw	a5,-92(s0)
    8020511c:	fb843783          	ld	a5,-72(s0)
    80205120:	4bdc                	lw	a5,20(a5)
    80205122:	fb042703          	lw	a4,-80(s0)
    80205126:	2701                	sext.w	a4,a4
    80205128:	00e7ee63          	bltu	a5,a4,80205144 <writei+0x4c>
    8020512c:	fb042783          	lw	a5,-80(s0)
    80205130:	873e                	mv	a4,a5
    80205132:	fa442783          	lw	a5,-92(s0)
    80205136:	9fb9                	addw	a5,a5,a4
    80205138:	2781                	sext.w	a5,a5
    8020513a:	fb042703          	lw	a4,-80(s0)
    8020513e:	2701                	sext.w	a4,a4
    80205140:	00e7f463          	bgeu	a5,a4,80205148 <writei+0x50>
    80205144:	57fd                	li	a5,-1
    80205146:	aa15                	j	8020527a <writei+0x182>
    80205148:	fb042783          	lw	a5,-80(s0)
    8020514c:	873e                	mv	a4,a5
    8020514e:	fa442783          	lw	a5,-92(s0)
    80205152:	9fb9                	addw	a5,a5,a4
    80205154:	0007871b          	sext.w	a4,a5
    80205158:	000437b7          	lui	a5,0x43
    8020515c:	00e7f463          	bgeu	a5,a4,80205164 <writei+0x6c>
    80205160:	57fd                	li	a5,-1
    80205162:	aa21                	j	8020527a <writei+0x182>
    80205164:	fc042e23          	sw	zero,-36(s0)
    80205168:	a8e9                	j	80205242 <writei+0x14a>
    8020516a:	fb843783          	ld	a5,-72(s0)
    8020516e:	4384                	lw	s1,0(a5)
    80205170:	fb042783          	lw	a5,-80(s0)
    80205174:	00a7d79b          	srliw	a5,a5,0xa
    80205178:	2781                	sext.w	a5,a5
    8020517a:	85be                	mv	a1,a5
    8020517c:	fb843503          	ld	a0,-72(s0)
    80205180:	badff0ef          	jal	80204d2c <bmap>
    80205184:	87aa                	mv	a5,a0
    80205186:	85be                	mv	a1,a5
    80205188:	8526                	mv	a0,s1
    8020518a:	e63fe0ef          	jal	80203fec <bread>
    8020518e:	fca43823          	sd	a0,-48(s0)
    80205192:	fb042783          	lw	a5,-80(s0)
    80205196:	3ff7f793          	andi	a5,a5,1023
    8020519a:	2781                	sext.w	a5,a5
    8020519c:	40000713          	li	a4,1024
    802051a0:	40f707bb          	subw	a5,a4,a5
    802051a4:	2781                	sext.w	a5,a5
    802051a6:	fa442703          	lw	a4,-92(s0)
    802051aa:	86ba                	mv	a3,a4
    802051ac:	fdc42703          	lw	a4,-36(s0)
    802051b0:	40e6873b          	subw	a4,a3,a4
    802051b4:	2701                	sext.w	a4,a4
    802051b6:	863a                	mv	a2,a4
    802051b8:	0007869b          	sext.w	a3,a5
    802051bc:	0006071b          	sext.w	a4,a2
    802051c0:	00d77363          	bgeu	a4,a3,802051c6 <writei+0xce>
    802051c4:	87b2                	mv	a5,a2
    802051c6:	fcf42623          	sw	a5,-52(s0)
    802051ca:	fd043783          	ld	a5,-48(s0)
    802051ce:	02878713          	addi	a4,a5,40 # 43028 <n+0x43008>
    802051d2:	fb046783          	lwu	a5,-80(s0)
    802051d6:	3ff7f793          	andi	a5,a5,1023
    802051da:	973e                	add	a4,a4,a5
    802051dc:	fcc46683          	lwu	a3,-52(s0)
    802051e0:	fb442783          	lw	a5,-76(s0)
    802051e4:	863a                	mv	a2,a4
    802051e6:	fa843583          	ld	a1,-88(s0)
    802051ea:	853e                	mv	a0,a5
    802051ec:	a59fe0ef          	jal	80203c44 <either_copyin>
    802051f0:	87aa                	mv	a5,a0
    802051f2:	873e                	mv	a4,a5
    802051f4:	57fd                	li	a5,-1
    802051f6:	00f71763          	bne	a4,a5,80205204 <writei+0x10c>
    802051fa:	fd043503          	ld	a0,-48(s0)
    802051fe:	e43fe0ef          	jal	80204040 <brelse>
    80205202:	a889                	j	80205254 <writei+0x15c>
    80205204:	fd043503          	ld	a0,-48(s0)
    80205208:	ed3fe0ef          	jal	802040da <bwrite>
    8020520c:	fd043503          	ld	a0,-48(s0)
    80205210:	e31fe0ef          	jal	80204040 <brelse>
    80205214:	fdc42783          	lw	a5,-36(s0)
    80205218:	873e                	mv	a4,a5
    8020521a:	fcc42783          	lw	a5,-52(s0)
    8020521e:	9fb9                	addw	a5,a5,a4
    80205220:	fcf42e23          	sw	a5,-36(s0)
    80205224:	fb042783          	lw	a5,-80(s0)
    80205228:	873e                	mv	a4,a5
    8020522a:	fcc42783          	lw	a5,-52(s0)
    8020522e:	9fb9                	addw	a5,a5,a4
    80205230:	faf42823          	sw	a5,-80(s0)
    80205234:	fcc46783          	lwu	a5,-52(s0)
    80205238:	fa843703          	ld	a4,-88(s0)
    8020523c:	97ba                	add	a5,a5,a4
    8020523e:	faf43423          	sd	a5,-88(s0)
    80205242:	fdc42783          	lw	a5,-36(s0)
    80205246:	873e                	mv	a4,a5
    80205248:	fa442783          	lw	a5,-92(s0)
    8020524c:	2701                	sext.w	a4,a4
    8020524e:	2781                	sext.w	a5,a5
    80205250:	f0f76de3          	bltu	a4,a5,8020516a <writei+0x72>
    80205254:	fb843783          	ld	a5,-72(s0)
    80205258:	4bdc                	lw	a5,20(a5)
    8020525a:	fb042703          	lw	a4,-80(s0)
    8020525e:	2701                	sext.w	a4,a4
    80205260:	00e7f763          	bgeu	a5,a4,8020526e <writei+0x176>
    80205264:	fb843783          	ld	a5,-72(s0)
    80205268:	fb042703          	lw	a4,-80(s0)
    8020526c:	cbd8                	sw	a4,20(a5)
    8020526e:	fb843503          	ld	a0,-72(s0)
    80205272:	fd8ff0ef          	jal	80204a4a <iupdate>
    80205276:	fdc42783          	lw	a5,-36(s0)
    8020527a:	853e                	mv	a0,a5
    8020527c:	60e6                	ld	ra,88(sp)
    8020527e:	6446                	ld	s0,80(sp)
    80205280:	64a6                	ld	s1,72(sp)
    80205282:	6125                	addi	sp,sp,96
    80205284:	8082                	ret

0000000080205286 <dirlookup>:
    80205286:	715d                	addi	sp,sp,-80
    80205288:	e486                	sd	ra,72(sp)
    8020528a:	e0a2                	sd	s0,64(sp)
    8020528c:	0880                	addi	s0,sp,80
    8020528e:	fca43423          	sd	a0,-56(s0)
    80205292:	fcb43023          	sd	a1,-64(s0)
    80205296:	fac43c23          	sd	a2,-72(s0)
    8020529a:	fc843783          	ld	a5,-56(s0)
    8020529e:	01079703          	lh	a4,16(a5)
    802052a2:	4785                	li	a5,1
    802052a4:	00f70863          	beq	a4,a5,802052b4 <dirlookup+0x2e>
    802052a8:	00003517          	auipc	a0,0x3
    802052ac:	79050513          	addi	a0,a0,1936 # 80208a38 <rodata_start+0xa38>
    802052b0:	efcfb0ef          	jal	802009ac <panic>
    802052b4:	fe042623          	sw	zero,-20(s0)
    802052b8:	a051                	j	8020533c <dirlookup+0xb6>
    802052ba:	fd840793          	addi	a5,s0,-40
    802052be:	fec42683          	lw	a3,-20(s0)
    802052c2:	4741                	li	a4,16
    802052c4:	863e                	mv	a2,a5
    802052c6:	4581                	li	a1,0
    802052c8:	fc843503          	ld	a0,-56(s0)
    802052cc:	cc3ff0ef          	jal	80204f8e <readi>
    802052d0:	87aa                	mv	a5,a0
    802052d2:	873e                	mv	a4,a5
    802052d4:	47c1                	li	a5,16
    802052d6:	00f70863          	beq	a4,a5,802052e6 <dirlookup+0x60>
    802052da:	00003517          	auipc	a0,0x3
    802052de:	77650513          	addi	a0,a0,1910 # 80208a50 <rodata_start+0xa50>
    802052e2:	ecafb0ef          	jal	802009ac <panic>
    802052e6:	fd845783          	lhu	a5,-40(s0)
    802052ea:	c3b9                	beqz	a5,80205330 <dirlookup+0xaa>
    802052ec:	fd840793          	addi	a5,s0,-40
    802052f0:	0789                	addi	a5,a5,2
    802052f2:	4639                	li	a2,14
    802052f4:	85be                	mv	a1,a5
    802052f6:	fc043503          	ld	a0,-64(s0)
    802052fa:	a07fc0ef          	jal	80201d00 <strncmp>
    802052fe:	87aa                	mv	a5,a0
    80205300:	eb8d                	bnez	a5,80205332 <dirlookup+0xac>
    80205302:	fb843783          	ld	a5,-72(s0)
    80205306:	c791                	beqz	a5,80205312 <dirlookup+0x8c>
    80205308:	fb843783          	ld	a5,-72(s0)
    8020530c:	fec42703          	lw	a4,-20(s0)
    80205310:	c398                	sw	a4,0(a5)
    80205312:	fd845783          	lhu	a5,-40(s0)
    80205316:	fef42423          	sw	a5,-24(s0)
    8020531a:	fc843783          	ld	a5,-56(s0)
    8020531e:	439c                	lw	a5,0(a5)
    80205320:	fe842703          	lw	a4,-24(s0)
    80205324:	85ba                	mv	a1,a4
    80205326:	853e                	mv	a0,a5
    80205328:	fd0ff0ef          	jal	80204af8 <iget>
    8020532c:	87aa                	mv	a5,a0
    8020532e:	a005                	j	8020534e <dirlookup+0xc8>
    80205330:	0001                	nop
    80205332:	fec42783          	lw	a5,-20(s0)
    80205336:	27c1                	addiw	a5,a5,16
    80205338:	fef42623          	sw	a5,-20(s0)
    8020533c:	fc843783          	ld	a5,-56(s0)
    80205340:	4bdc                	lw	a5,20(a5)
    80205342:	fec42703          	lw	a4,-20(s0)
    80205346:	2701                	sext.w	a4,a4
    80205348:	f6f769e3          	bltu	a4,a5,802052ba <dirlookup+0x34>
    8020534c:	4781                	li	a5,0
    8020534e:	853e                	mv	a0,a5
    80205350:	60a6                	ld	ra,72(sp)
    80205352:	6406                	ld	s0,64(sp)
    80205354:	6161                	addi	sp,sp,80
    80205356:	8082                	ret

0000000080205358 <dirls>:
    80205358:	7139                	addi	sp,sp,-64
    8020535a:	fc06                	sd	ra,56(sp)
    8020535c:	f822                	sd	s0,48(sp)
    8020535e:	0080                	addi	s0,sp,64
    80205360:	fca43423          	sd	a0,-56(s0)
    80205364:	fc843783          	ld	a5,-56(s0)
    80205368:	01079703          	lh	a4,16(a5)
    8020536c:	4785                	li	a5,1
    8020536e:	00f70863          	beq	a4,a5,8020537e <dirls+0x26>
    80205372:	00003517          	auipc	a0,0x3
    80205376:	6c650513          	addi	a0,a0,1734 # 80208a38 <rodata_start+0xa38>
    8020537a:	e32fb0ef          	jal	802009ac <panic>
    8020537e:	fe043023          	sd	zero,-32(s0)
    80205382:	fe043423          	sd	zero,-24(s0)
    80205386:	a095                	j	802053ea <dirls+0x92>
    80205388:	fd040793          	addi	a5,s0,-48
    8020538c:	fe843703          	ld	a4,-24(s0)
    80205390:	0007069b          	sext.w	a3,a4
    80205394:	4741                	li	a4,16
    80205396:	863e                	mv	a2,a5
    80205398:	4581                	li	a1,0
    8020539a:	fc843503          	ld	a0,-56(s0)
    8020539e:	bf1ff0ef          	jal	80204f8e <readi>
    802053a2:	87aa                	mv	a5,a0
    802053a4:	873e                	mv	a4,a5
    802053a6:	47c1                	li	a5,16
    802053a8:	00f70863          	beq	a4,a5,802053b8 <dirls+0x60>
    802053ac:	00003517          	auipc	a0,0x3
    802053b0:	6a450513          	addi	a0,a0,1700 # 80208a50 <rodata_start+0xa50>
    802053b4:	df8fb0ef          	jal	802009ac <panic>
    802053b8:	fd045783          	lhu	a5,-48(s0)
    802053bc:	c38d                	beqz	a5,802053de <dirls+0x86>
    802053be:	fd040793          	addi	a5,s0,-48
    802053c2:	0789                	addi	a5,a5,2
    802053c4:	85be                	mv	a1,a5
    802053c6:	00003517          	auipc	a0,0x3
    802053ca:	69a50513          	addi	a0,a0,1690 # 80208a60 <rodata_start+0xa60>
    802053ce:	dd5fb0ef          	jal	802011a2 <printk>
    802053d2:	fe043783          	ld	a5,-32(s0)
    802053d6:	0785                	addi	a5,a5,1
    802053d8:	fef43023          	sd	a5,-32(s0)
    802053dc:	a011                	j	802053e0 <dirls+0x88>
    802053de:	0001                	nop
    802053e0:	fe843783          	ld	a5,-24(s0)
    802053e4:	07c1                	addi	a5,a5,16
    802053e6:	fef43423          	sd	a5,-24(s0)
    802053ea:	fc843783          	ld	a5,-56(s0)
    802053ee:	4bdc                	lw	a5,20(a5)
    802053f0:	1782                	slli	a5,a5,0x20
    802053f2:	9381                	srli	a5,a5,0x20
    802053f4:	fe843703          	ld	a4,-24(s0)
    802053f8:	f8f768e3          	bltu	a4,a5,80205388 <dirls+0x30>
    802053fc:	fe043783          	ld	a5,-32(s0)
    80205400:	2781                	sext.w	a5,a5
    80205402:	853e                	mv	a0,a5
    80205404:	70e2                	ld	ra,56(sp)
    80205406:	7442                	ld	s0,48(sp)
    80205408:	6121                	addi	sp,sp,64
    8020540a:	8082                	ret

000000008020540c <dirlink>:
    8020540c:	715d                	addi	sp,sp,-80
    8020540e:	e486                	sd	ra,72(sp)
    80205410:	e0a2                	sd	s0,64(sp)
    80205412:	0880                	addi	s0,sp,80
    80205414:	fca43423          	sd	a0,-56(s0)
    80205418:	fcb43023          	sd	a1,-64(s0)
    8020541c:	87b2                	mv	a5,a2
    8020541e:	faf42e23          	sw	a5,-68(s0)
    80205422:	4601                	li	a2,0
    80205424:	fc043583          	ld	a1,-64(s0)
    80205428:	fc843503          	ld	a0,-56(s0)
    8020542c:	e5bff0ef          	jal	80205286 <dirlookup>
    80205430:	fea43023          	sd	a0,-32(s0)
    80205434:	fe043783          	ld	a5,-32(s0)
    80205438:	c799                	beqz	a5,80205446 <dirlink+0x3a>
    8020543a:	fe043503          	ld	a0,-32(s0)
    8020543e:	8c7ff0ef          	jal	80204d04 <iput>
    80205442:	57fd                	li	a5,-1
    80205444:	a055                	j	802054e8 <dirlink+0xdc>
    80205446:	fe042623          	sw	zero,-20(s0)
    8020544a:	a081                	j	8020548a <dirlink+0x7e>
    8020544c:	fd040793          	addi	a5,s0,-48
    80205450:	fec42683          	lw	a3,-20(s0)
    80205454:	4741                	li	a4,16
    80205456:	863e                	mv	a2,a5
    80205458:	4581                	li	a1,0
    8020545a:	fc843503          	ld	a0,-56(s0)
    8020545e:	b31ff0ef          	jal	80204f8e <readi>
    80205462:	87aa                	mv	a5,a0
    80205464:	873e                	mv	a4,a5
    80205466:	47c1                	li	a5,16
    80205468:	00f70863          	beq	a4,a5,80205478 <dirlink+0x6c>
    8020546c:	00003517          	auipc	a0,0x3
    80205470:	5fc50513          	addi	a0,a0,1532 # 80208a68 <rodata_start+0xa68>
    80205474:	d38fb0ef          	jal	802009ac <panic>
    80205478:	fd045783          	lhu	a5,-48(s0)
    8020547c:	cf99                	beqz	a5,8020549a <dirlink+0x8e>
    8020547e:	fec42783          	lw	a5,-20(s0)
    80205482:	27c1                	addiw	a5,a5,16
    80205484:	2781                	sext.w	a5,a5
    80205486:	fef42623          	sw	a5,-20(s0)
    8020548a:	fc843783          	ld	a5,-56(s0)
    8020548e:	4bd8                	lw	a4,20(a5)
    80205490:	fec42783          	lw	a5,-20(s0)
    80205494:	fae7ece3          	bltu	a5,a4,8020544c <dirlink+0x40>
    80205498:	a011                	j	8020549c <dirlink+0x90>
    8020549a:	0001                	nop
    8020549c:	fd040793          	addi	a5,s0,-48
    802054a0:	0789                	addi	a5,a5,2
    802054a2:	4639                	li	a2,14
    802054a4:	fc043583          	ld	a1,-64(s0)
    802054a8:	853e                	mv	a0,a5
    802054aa:	fd0fc0ef          	jal	80201c7a <strncpy>
    802054ae:	fbc42783          	lw	a5,-68(s0)
    802054b2:	17c2                	slli	a5,a5,0x30
    802054b4:	93c1                	srli	a5,a5,0x30
    802054b6:	fcf41823          	sh	a5,-48(s0)
    802054ba:	fd040793          	addi	a5,s0,-48
    802054be:	fec42683          	lw	a3,-20(s0)
    802054c2:	4741                	li	a4,16
    802054c4:	863e                	mv	a2,a5
    802054c6:	4581                	li	a1,0
    802054c8:	fc843503          	ld	a0,-56(s0)
    802054cc:	c2dff0ef          	jal	802050f8 <writei>
    802054d0:	87aa                	mv	a5,a0
    802054d2:	873e                	mv	a4,a5
    802054d4:	47c1                	li	a5,16
    802054d6:	00f70863          	beq	a4,a5,802054e6 <dirlink+0xda>
    802054da:	00003517          	auipc	a0,0x3
    802054de:	59e50513          	addi	a0,a0,1438 # 80208a78 <rodata_start+0xa78>
    802054e2:	ccafb0ef          	jal	802009ac <panic>
    802054e6:	4781                	li	a5,0
    802054e8:	853e                	mv	a0,a5
    802054ea:	60a6                	ld	ra,72(sp)
    802054ec:	6406                	ld	s0,64(sp)
    802054ee:	6161                	addi	sp,sp,80
    802054f0:	8082                	ret

00000000802054f2 <namei>:
    802054f2:	7179                	addi	sp,sp,-48
    802054f4:	f406                	sd	ra,40(sp)
    802054f6:	f022                	sd	s0,32(sp)
    802054f8:	1800                	addi	s0,sp,48
    802054fa:	fca43c23          	sd	a0,-40(s0)
    802054fe:	fe042623          	sw	zero,-20(s0)
    80205502:	fd8ff0ef          	jal	80204cda <root_dir>
    80205506:	fea43023          	sd	a0,-32(s0)
    8020550a:	fe043783          	ld	a5,-32(s0)
    8020550e:	e799                	bnez	a5,8020551c <namei+0x2a>
    80205510:	00003517          	auipc	a0,0x3
    80205514:	57050513          	addi	a0,a0,1392 # 80208a80 <rodata_start+0xa80>
    80205518:	c94fb0ef          	jal	802009ac <panic>
    8020551c:	fec42783          	lw	a5,-20(s0)
    80205520:	fd843703          	ld	a4,-40(s0)
    80205524:	97ba                	add	a5,a5,a4
    80205526:	4601                	li	a2,0
    80205528:	85be                	mv	a1,a5
    8020552a:	fe043503          	ld	a0,-32(s0)
    8020552e:	d59ff0ef          	jal	80205286 <dirlookup>
    80205532:	87aa                	mv	a5,a0
    80205534:	853e                	mv	a0,a5
    80205536:	70a2                	ld	ra,40(sp)
    80205538:	7402                	ld	s0,32(sp)
    8020553a:	6145                	addi	sp,sp,48
    8020553c:	8082                	ret
	...

0000000080205540 <kernelvec>:
    80205540:	7111                	addi	sp,sp,-256
    80205542:	e006                	sd	ra,0(sp)
    80205544:	e40a                	sd	sp,8(sp)
    80205546:	e80e                	sd	gp,16(sp)
    80205548:	ec12                	sd	tp,24(sp)
    8020554a:	f016                	sd	t0,32(sp)
    8020554c:	f41a                	sd	t1,40(sp)
    8020554e:	f81e                	sd	t2,48(sp)
    80205550:	fc22                	sd	s0,56(sp)
    80205552:	e0a6                	sd	s1,64(sp)
    80205554:	e4ca                	sd	s2,72(sp)
    80205556:	e8aa                	sd	a0,80(sp)
    80205558:	ecae                	sd	a1,88(sp)
    8020555a:	f0b2                	sd	a2,96(sp)
    8020555c:	f4b6                	sd	a3,104(sp)
    8020555e:	f8ba                	sd	a4,112(sp)
    80205560:	fcbe                	sd	a5,120(sp)
    80205562:	e142                	sd	a6,128(sp)
    80205564:	e546                	sd	a7,136(sp)
    80205566:	e94a                	sd	s2,144(sp)
    80205568:	ed4e                	sd	s3,152(sp)
    8020556a:	f152                	sd	s4,160(sp)
    8020556c:	f556                	sd	s5,168(sp)
    8020556e:	f95a                	sd	s6,176(sp)
    80205570:	fd5e                	sd	s7,184(sp)
    80205572:	e1e2                	sd	s8,192(sp)
    80205574:	e5e6                	sd	s9,200(sp)
    80205576:	e9ea                	sd	s10,208(sp)
    80205578:	edee                	sd	s11,216(sp)
    8020557a:	f1f2                	sd	t3,224(sp)
    8020557c:	f5f6                	sd	t4,232(sp)
    8020557e:	f9fa                	sd	t5,240(sp)
    80205580:	fdfe                	sd	t6,248(sp)
    80205582:	f31fb0ef          	jal	802014b2 <kerneltrap>

0000000080205586 <kernelret>:
    80205586:	6082                	ld	ra,0(sp)
    80205588:	6122                	ld	sp,8(sp)
    8020558a:	61c2                	ld	gp,16(sp)
    8020558c:	7282                	ld	t0,32(sp)
    8020558e:	7322                	ld	t1,40(sp)
    80205590:	73c2                	ld	t2,48(sp)
    80205592:	7462                	ld	s0,56(sp)
    80205594:	6486                	ld	s1,64(sp)
    80205596:	6526                	ld	a0,72(sp)
    80205598:	65c6                	ld	a1,80(sp)
    8020559a:	6666                	ld	a2,88(sp)
    8020559c:	7686                	ld	a3,96(sp)
    8020559e:	7726                	ld	a4,104(sp)
    802055a0:	77c6                	ld	a5,112(sp)
    802055a2:	7866                	ld	a6,120(sp)
    802055a4:	688a                	ld	a7,128(sp)
    802055a6:	692a                	ld	s2,136(sp)
    802055a8:	69ca                	ld	s3,144(sp)
    802055aa:	6a6a                	ld	s4,152(sp)
    802055ac:	7a8a                	ld	s5,160(sp)
    802055ae:	7b2a                	ld	s6,168(sp)
    802055b0:	7bca                	ld	s7,176(sp)
    802055b2:	7c6a                	ld	s8,184(sp)
    802055b4:	6c8e                	ld	s9,192(sp)
    802055b6:	6d2e                	ld	s10,200(sp)
    802055b8:	6dce                	ld	s11,208(sp)
    802055ba:	6e6e                	ld	t3,216(sp)
    802055bc:	7e8e                	ld	t4,224(sp)
    802055be:	7f2e                	ld	t5,232(sp)
    802055c0:	7fce                	ld	t6,240(sp)
    802055c2:	6111                	addi	sp,sp,256
    802055c4:	10200073          	sret
    802055c8:	0000                	unimp
    802055ca:	0000                	unimp
	...

00000000802055ce <plicinit>:
    802055ce:	1101                	addi	sp,sp,-32
    802055d0:	ec06                	sd	ra,24(sp)
    802055d2:	e822                	sd	s0,16(sp)
    802055d4:	1000                	addi	s0,sp,32
    802055d6:	d7dfc0ef          	jal	80202352 <cpuid>
    802055da:	87aa                	mv	a5,a0
    802055dc:	fef42623          	sw	a5,-20(s0)
    802055e0:	0c0007b7          	lui	a5,0xc000
    802055e4:	0791                	addi	a5,a5,4 # c000004 <n+0xbffffe4>
    802055e6:	4705                	li	a4,1
    802055e8:	c398                	sw	a4,0(a5)
    802055ea:	fec42783          	lw	a5,-20(s0)
    802055ee:	0087979b          	slliw	a5,a5,0x8
    802055f2:	2781                	sext.w	a5,a5
    802055f4:	873e                	mv	a4,a5
    802055f6:	0c0027b7          	lui	a5,0xc002
    802055fa:	08078793          	addi	a5,a5,128 # c002080 <n+0xc002060>
    802055fe:	97ba                	add	a5,a5,a4
    80205600:	873e                	mv	a4,a5
    80205602:	4789                	li	a5,2
    80205604:	c31c                	sw	a5,0(a4)
    80205606:	fec42783          	lw	a5,-20(s0)
    8020560a:	00d7979b          	slliw	a5,a5,0xd
    8020560e:	2781                	sext.w	a5,a5
    80205610:	873e                	mv	a4,a5
    80205612:	0c2017b7          	lui	a5,0xc201
    80205616:	97ba                	add	a5,a5,a4
    80205618:	0007a023          	sw	zero,0(a5) # c201000 <n+0xc200fe0>
    8020561c:	0001                	nop
    8020561e:	60e2                	ld	ra,24(sp)
    80205620:	6442                	ld	s0,16(sp)
    80205622:	6105                	addi	sp,sp,32
    80205624:	8082                	ret

0000000080205626 <plic_claim>:
    80205626:	1101                	addi	sp,sp,-32
    80205628:	ec06                	sd	ra,24(sp)
    8020562a:	e822                	sd	s0,16(sp)
    8020562c:	1000                	addi	s0,sp,32
    8020562e:	d25fc0ef          	jal	80202352 <cpuid>
    80205632:	87aa                	mv	a5,a0
    80205634:	fef42623          	sw	a5,-20(s0)
    80205638:	fec42783          	lw	a5,-20(s0)
    8020563c:	00d7979b          	slliw	a5,a5,0xd
    80205640:	2781                	sext.w	a5,a5
    80205642:	873e                	mv	a4,a5
    80205644:	0c2017b7          	lui	a5,0xc201
    80205648:	0791                	addi	a5,a5,4 # c201004 <n+0xc200fe4>
    8020564a:	97ba                	add	a5,a5,a4
    8020564c:	439c                	lw	a5,0(a5)
    8020564e:	fef42423          	sw	a5,-24(s0)
    80205652:	fe842783          	lw	a5,-24(s0)
    80205656:	853e                	mv	a0,a5
    80205658:	60e2                	ld	ra,24(sp)
    8020565a:	6442                	ld	s0,16(sp)
    8020565c:	6105                	addi	sp,sp,32
    8020565e:	8082                	ret

0000000080205660 <plic_complete>:
    80205660:	7179                	addi	sp,sp,-48
    80205662:	f406                	sd	ra,40(sp)
    80205664:	f022                	sd	s0,32(sp)
    80205666:	1800                	addi	s0,sp,48
    80205668:	87aa                	mv	a5,a0
    8020566a:	fcf42e23          	sw	a5,-36(s0)
    8020566e:	ce5fc0ef          	jal	80202352 <cpuid>
    80205672:	87aa                	mv	a5,a0
    80205674:	fef42623          	sw	a5,-20(s0)
    80205678:	fec42783          	lw	a5,-20(s0)
    8020567c:	00d7979b          	slliw	a5,a5,0xd
    80205680:	2781                	sext.w	a5,a5
    80205682:	873e                	mv	a4,a5
    80205684:	0c2017b7          	lui	a5,0xc201
    80205688:	0791                	addi	a5,a5,4 # c201004 <n+0xc200fe4>
    8020568a:	97ba                	add	a5,a5,a4
    8020568c:	873e                	mv	a4,a5
    8020568e:	fdc42783          	lw	a5,-36(s0)
    80205692:	c31c                	sw	a5,0(a4)
    80205694:	0001                	nop
    80205696:	70a2                	ld	ra,40(sp)
    80205698:	7402                	ld	s0,32(sp)
    8020569a:	6145                	addi	sp,sp,48
    8020569c:	8082                	ret

000000008020569e <r_sstatus>:
    8020569e:	1101                	addi	sp,sp,-32
    802056a0:	ec06                	sd	ra,24(sp)
    802056a2:	e822                	sd	s0,16(sp)
    802056a4:	1000                	addi	s0,sp,32
    802056a6:	100027f3          	csrr	a5,sstatus
    802056aa:	fef43423          	sd	a5,-24(s0)
    802056ae:	fe843783          	ld	a5,-24(s0)
    802056b2:	853e                	mv	a0,a5
    802056b4:	60e2                	ld	ra,24(sp)
    802056b6:	6442                	ld	s0,16(sp)
    802056b8:	6105                	addi	sp,sp,32
    802056ba:	8082                	ret

00000000802056bc <w_sstatus>:
    802056bc:	1101                	addi	sp,sp,-32
    802056be:	ec06                	sd	ra,24(sp)
    802056c0:	e822                	sd	s0,16(sp)
    802056c2:	1000                	addi	s0,sp,32
    802056c4:	fea43423          	sd	a0,-24(s0)
    802056c8:	fe843783          	ld	a5,-24(s0)
    802056cc:	10079073          	csrw	sstatus,a5
    802056d0:	0001                	nop
    802056d2:	60e2                	ld	ra,24(sp)
    802056d4:	6442                	ld	s0,16(sp)
    802056d6:	6105                	addi	sp,sp,32
    802056d8:	8082                	ret

00000000802056da <intr_on>:
    802056da:	1141                	addi	sp,sp,-16
    802056dc:	e406                	sd	ra,8(sp)
    802056de:	e022                	sd	s0,0(sp)
    802056e0:	0800                	addi	s0,sp,16
    802056e2:	fbdff0ef          	jal	8020569e <r_sstatus>
    802056e6:	87aa                	mv	a5,a0
    802056e8:	0027e793          	ori	a5,a5,2
    802056ec:	853e                	mv	a0,a5
    802056ee:	fcfff0ef          	jal	802056bc <w_sstatus>
    802056f2:	0001                	nop
    802056f4:	60a2                	ld	ra,8(sp)
    802056f6:	6402                	ld	s0,0(sp)
    802056f8:	0141                	addi	sp,sp,16
    802056fa:	8082                	ret

00000000802056fc <intr_off>:
    802056fc:	1141                	addi	sp,sp,-16
    802056fe:	e406                	sd	ra,8(sp)
    80205700:	e022                	sd	s0,0(sp)
    80205702:	0800                	addi	s0,sp,16
    80205704:	f9bff0ef          	jal	8020569e <r_sstatus>
    80205708:	87aa                	mv	a5,a0
    8020570a:	9bf5                	andi	a5,a5,-3
    8020570c:	853e                	mv	a0,a5
    8020570e:	fafff0ef          	jal	802056bc <w_sstatus>
    80205712:	0001                	nop
    80205714:	60a2                	ld	ra,8(sp)
    80205716:	6402                	ld	s0,0(sp)
    80205718:	0141                	addi	sp,sp,16
    8020571a:	8082                	ret

000000008020571c <virtio_disk_init>:
    8020571c:	7179                	addi	sp,sp,-48
    8020571e:	f406                	sd	ra,40(sp)
    80205720:	f022                	sd	s0,32(sp)
    80205722:	1800                	addi	s0,sp,48
    80205724:	fe042423          	sw	zero,-24(s0)
    80205728:	100017b7          	lui	a5,0x10001
    8020572c:	439c                	lw	a5,0(a5)
    8020572e:	0007871b          	sext.w	a4,a5
    80205732:	747277b7          	lui	a5,0x74727
    80205736:	97678793          	addi	a5,a5,-1674 # 74726976 <n+0x74726956>
    8020573a:	04f71063          	bne	a4,a5,8020577a <virtio_disk_init+0x5e>
    8020573e:	100017b7          	lui	a5,0x10001
    80205742:	0791                	addi	a5,a5,4 # 10001004 <n+0x10000fe4>
    80205744:	439c                	lw	a5,0(a5)
    80205746:	0007871b          	sext.w	a4,a5
    8020574a:	4785                	li	a5,1
    8020574c:	02f71763          	bne	a4,a5,8020577a <virtio_disk_init+0x5e>
    80205750:	100017b7          	lui	a5,0x10001
    80205754:	07a1                	addi	a5,a5,8 # 10001008 <n+0x10000fe8>
    80205756:	439c                	lw	a5,0(a5)
    80205758:	0007871b          	sext.w	a4,a5
    8020575c:	4789                	li	a5,2
    8020575e:	00f71e63          	bne	a4,a5,8020577a <virtio_disk_init+0x5e>
    80205762:	100017b7          	lui	a5,0x10001
    80205766:	07b1                	addi	a5,a5,12 # 1000100c <n+0x10000fec>
    80205768:	439c                	lw	a5,0(a5)
    8020576a:	0007871b          	sext.w	a4,a5
    8020576e:	554d47b7          	lui	a5,0x554d4
    80205772:	55178793          	addi	a5,a5,1361 # 554d4551 <n+0x554d4531>
    80205776:	00f70863          	beq	a4,a5,80205786 <virtio_disk_init+0x6a>
    8020577a:	00003517          	auipc	a0,0x3
    8020577e:	31650513          	addi	a0,a0,790 # 80208a90 <rodata_start+0xa90>
    80205782:	a2afb0ef          	jal	802009ac <panic>
    80205786:	fe842783          	lw	a5,-24(s0)
    8020578a:	0017e793          	ori	a5,a5,1
    8020578e:	fef42423          	sw	a5,-24(s0)
    80205792:	100017b7          	lui	a5,0x10001
    80205796:	07078793          	addi	a5,a5,112 # 10001070 <n+0x10001050>
    8020579a:	fe842703          	lw	a4,-24(s0)
    8020579e:	c398                	sw	a4,0(a5)
    802057a0:	fe842783          	lw	a5,-24(s0)
    802057a4:	0027e793          	ori	a5,a5,2
    802057a8:	fef42423          	sw	a5,-24(s0)
    802057ac:	100017b7          	lui	a5,0x10001
    802057b0:	07078793          	addi	a5,a5,112 # 10001070 <n+0x10001050>
    802057b4:	fe842703          	lw	a4,-24(s0)
    802057b8:	c398                	sw	a4,0(a5)
    802057ba:	100017b7          	lui	a5,0x10001
    802057be:	07c1                	addi	a5,a5,16 # 10001010 <n+0x10000ff0>
    802057c0:	439c                	lw	a5,0(a5)
    802057c2:	2781                	sext.w	a5,a5
    802057c4:	1782                	slli	a5,a5,0x20
    802057c6:	9381                	srli	a5,a5,0x20
    802057c8:	fef43023          	sd	a5,-32(s0)
    802057cc:	fe043783          	ld	a5,-32(s0)
    802057d0:	fdf7f793          	andi	a5,a5,-33
    802057d4:	fef43023          	sd	a5,-32(s0)
    802057d8:	fe043783          	ld	a5,-32(s0)
    802057dc:	f7f7f793          	andi	a5,a5,-129
    802057e0:	fef43023          	sd	a5,-32(s0)
    802057e4:	fe043703          	ld	a4,-32(s0)
    802057e8:	77fd                	lui	a5,0xfffff
    802057ea:	7ff78793          	addi	a5,a5,2047 # fffffffffffff7ff <bss_end+0xffffffff7f9677ff>
    802057ee:	8ff9                	and	a5,a5,a4
    802057f0:	fef43023          	sd	a5,-32(s0)
    802057f4:	fe043703          	ld	a4,-32(s0)
    802057f8:	77fd                	lui	a5,0xfffff
    802057fa:	17fd                	addi	a5,a5,-1 # ffffffffffffefff <bss_end+0xffffffff7f966fff>
    802057fc:	8ff9                	and	a5,a5,a4
    802057fe:	fef43023          	sd	a5,-32(s0)
    80205802:	fe043703          	ld	a4,-32(s0)
    80205806:	f80007b7          	lui	a5,0xf8000
    8020580a:	17fd                	addi	a5,a5,-1 # fffffffff7ffffff <bss_end+0xffffffff77967fff>
    8020580c:	8ff9                	and	a5,a5,a4
    8020580e:	fef43023          	sd	a5,-32(s0)
    80205812:	fe043703          	ld	a4,-32(s0)
    80205816:	e00007b7          	lui	a5,0xe0000
    8020581a:	17fd                	addi	a5,a5,-1 # ffffffffdfffffff <bss_end+0xffffffff5f967fff>
    8020581c:	8ff9                	and	a5,a5,a4
    8020581e:	fef43023          	sd	a5,-32(s0)
    80205822:	fe043703          	ld	a4,-32(s0)
    80205826:	f00007b7          	lui	a5,0xf0000
    8020582a:	17fd                	addi	a5,a5,-1 # ffffffffefffffff <bss_end+0xffffffff6f967fff>
    8020582c:	8ff9                	and	a5,a5,a4
    8020582e:	fef43023          	sd	a5,-32(s0)
    80205832:	100017b7          	lui	a5,0x10001
    80205836:	02078793          	addi	a5,a5,32 # 10001020 <n+0x10001000>
    8020583a:	fe043703          	ld	a4,-32(s0)
    8020583e:	2701                	sext.w	a4,a4
    80205840:	c398                	sw	a4,0(a5)
    80205842:	fe842783          	lw	a5,-24(s0)
    80205846:	0087e793          	ori	a5,a5,8
    8020584a:	fef42423          	sw	a5,-24(s0)
    8020584e:	100017b7          	lui	a5,0x10001
    80205852:	07078793          	addi	a5,a5,112 # 10001070 <n+0x10001050>
    80205856:	fe842703          	lw	a4,-24(s0)
    8020585a:	c398                	sw	a4,0(a5)
    8020585c:	fe842783          	lw	a5,-24(s0)
    80205860:	0047e793          	ori	a5,a5,4
    80205864:	fef42423          	sw	a5,-24(s0)
    80205868:	100017b7          	lui	a5,0x10001
    8020586c:	07078793          	addi	a5,a5,112 # 10001070 <n+0x10001050>
    80205870:	fe842703          	lw	a4,-24(s0)
    80205874:	c398                	sw	a4,0(a5)
    80205876:	100017b7          	lui	a5,0x10001
    8020587a:	02878793          	addi	a5,a5,40 # 10001028 <n+0x10001008>
    8020587e:	6705                	lui	a4,0x1
    80205880:	c398                	sw	a4,0(a5)
    80205882:	100017b7          	lui	a5,0x10001
    80205886:	03078793          	addi	a5,a5,48 # 10001030 <n+0x10001010>
    8020588a:	0007a023          	sw	zero,0(a5)
    8020588e:	100017b7          	lui	a5,0x10001
    80205892:	03478793          	addi	a5,a5,52 # 10001034 <n+0x10001014>
    80205896:	439c                	lw	a5,0(a5)
    80205898:	fcf42e23          	sw	a5,-36(s0)
    8020589c:	fdc42783          	lw	a5,-36(s0)
    802058a0:	2781                	sext.w	a5,a5
    802058a2:	e799                	bnez	a5,802058b0 <virtio_disk_init+0x194>
    802058a4:	00003517          	auipc	a0,0x3
    802058a8:	20c50513          	addi	a0,a0,524 # 80208ab0 <rodata_start+0xab0>
    802058ac:	900fb0ef          	jal	802009ac <panic>
    802058b0:	fdc42783          	lw	a5,-36(s0)
    802058b4:	0007871b          	sext.w	a4,a5
    802058b8:	479d                	li	a5,7
    802058ba:	00e7e863          	bltu	a5,a4,802058ca <virtio_disk_init+0x1ae>
    802058be:	00003517          	auipc	a0,0x3
    802058c2:	21250513          	addi	a0,a0,530 # 80208ad0 <rodata_start+0xad0>
    802058c6:	8e6fb0ef          	jal	802009ac <panic>
    802058ca:	100017b7          	lui	a5,0x10001
    802058ce:	03878793          	addi	a5,a5,56 # 10001038 <n+0x10001018>
    802058d2:	4721                	li	a4,8
    802058d4:	c398                	sw	a4,0(a5)
    802058d6:	6609                	lui	a2,0x2
    802058d8:	4581                	li	a1,0
    802058da:	0048e517          	auipc	a0,0x48e
    802058de:	72650513          	addi	a0,a0,1830 # 80694000 <disk>
    802058e2:	946fc0ef          	jal	80201a28 <memset>
    802058e6:	0048e797          	auipc	a5,0x48e
    802058ea:	71a78793          	addi	a5,a5,1818 # 80694000 <disk>
    802058ee:	00c7d713          	srli	a4,a5,0xc
    802058f2:	100017b7          	lui	a5,0x10001
    802058f6:	04078793          	addi	a5,a5,64 # 10001040 <n+0x10001020>
    802058fa:	2701                	sext.w	a4,a4
    802058fc:	c398                	sw	a4,0(a5)
    802058fe:	0048e717          	auipc	a4,0x48e
    80205902:	70270713          	addi	a4,a4,1794 # 80694000 <disk>
    80205906:	6789                	lui	a5,0x2
    80205908:	97ba                	add	a5,a5,a4
    8020590a:	0048e717          	auipc	a4,0x48e
    8020590e:	6f670713          	addi	a4,a4,1782 # 80694000 <disk>
    80205912:	e398                	sd	a4,0(a5)
    80205914:	0048e717          	auipc	a4,0x48e
    80205918:	76c70713          	addi	a4,a4,1900 # 80694080 <disk+0x80>
    8020591c:	0048e697          	auipc	a3,0x48e
    80205920:	6e468693          	addi	a3,a3,1764 # 80694000 <disk>
    80205924:	6789                	lui	a5,0x2
    80205926:	97b6                	add	a5,a5,a3
    80205928:	e798                	sd	a4,8(a5)
    8020592a:	0048f717          	auipc	a4,0x48f
    8020592e:	6d670713          	addi	a4,a4,1750 # 80695000 <disk+0x1000>
    80205932:	0048e697          	auipc	a3,0x48e
    80205936:	6ce68693          	addi	a3,a3,1742 # 80694000 <disk>
    8020593a:	6789                	lui	a5,0x2
    8020593c:	97b6                	add	a5,a5,a3
    8020593e:	eb98                	sd	a4,16(a5)
    80205940:	fe042623          	sw	zero,-20(s0)
    80205944:	a015                	j	80205968 <virtio_disk_init+0x24c>
    80205946:	0048e717          	auipc	a4,0x48e
    8020594a:	6ba70713          	addi	a4,a4,1722 # 80694000 <disk>
    8020594e:	fec42783          	lw	a5,-20(s0)
    80205952:	97ba                	add	a5,a5,a4
    80205954:	6709                	lui	a4,0x2
    80205956:	97ba                	add	a5,a5,a4
    80205958:	4705                	li	a4,1
    8020595a:	00e78c23          	sb	a4,24(a5) # 2018 <n+0x1ff8>
    8020595e:	fec42783          	lw	a5,-20(s0)
    80205962:	2785                	addiw	a5,a5,1
    80205964:	fef42623          	sw	a5,-20(s0)
    80205968:	fec42783          	lw	a5,-20(s0)
    8020596c:	0007871b          	sext.w	a4,a5
    80205970:	479d                	li	a5,7
    80205972:	fce7dae3          	bge	a5,a4,80205946 <virtio_disk_init+0x22a>
    80205976:	0001                	nop
    80205978:	0001                	nop
    8020597a:	70a2                	ld	ra,40(sp)
    8020597c:	7402                	ld	s0,32(sp)
    8020597e:	6145                	addi	sp,sp,48
    80205980:	8082                	ret

0000000080205982 <alloc_desc>:
    80205982:	1101                	addi	sp,sp,-32
    80205984:	ec06                	sd	ra,24(sp)
    80205986:	e822                	sd	s0,16(sp)
    80205988:	1000                	addi	s0,sp,32
    8020598a:	fe042623          	sw	zero,-20(s0)
    8020598e:	a081                	j	802059ce <alloc_desc+0x4c>
    80205990:	0048e717          	auipc	a4,0x48e
    80205994:	67070713          	addi	a4,a4,1648 # 80694000 <disk>
    80205998:	fec42783          	lw	a5,-20(s0)
    8020599c:	97ba                	add	a5,a5,a4
    8020599e:	6709                	lui	a4,0x2
    802059a0:	97ba                	add	a5,a5,a4
    802059a2:	0187c783          	lbu	a5,24(a5)
    802059a6:	cf99                	beqz	a5,802059c4 <alloc_desc+0x42>
    802059a8:	0048e717          	auipc	a4,0x48e
    802059ac:	65870713          	addi	a4,a4,1624 # 80694000 <disk>
    802059b0:	fec42783          	lw	a5,-20(s0)
    802059b4:	97ba                	add	a5,a5,a4
    802059b6:	6709                	lui	a4,0x2
    802059b8:	97ba                	add	a5,a5,a4
    802059ba:	00078c23          	sb	zero,24(a5)
    802059be:	fec42783          	lw	a5,-20(s0)
    802059c2:	a831                	j	802059de <alloc_desc+0x5c>
    802059c4:	fec42783          	lw	a5,-20(s0)
    802059c8:	2785                	addiw	a5,a5,1
    802059ca:	fef42623          	sw	a5,-20(s0)
    802059ce:	fec42783          	lw	a5,-20(s0)
    802059d2:	0007871b          	sext.w	a4,a5
    802059d6:	479d                	li	a5,7
    802059d8:	fae7dce3          	bge	a5,a4,80205990 <alloc_desc+0xe>
    802059dc:	57fd                	li	a5,-1
    802059de:	853e                	mv	a0,a5
    802059e0:	60e2                	ld	ra,24(sp)
    802059e2:	6442                	ld	s0,16(sp)
    802059e4:	6105                	addi	sp,sp,32
    802059e6:	8082                	ret

00000000802059e8 <free_desc>:
    802059e8:	1101                	addi	sp,sp,-32
    802059ea:	ec06                	sd	ra,24(sp)
    802059ec:	e822                	sd	s0,16(sp)
    802059ee:	1000                	addi	s0,sp,32
    802059f0:	87aa                	mv	a5,a0
    802059f2:	fef42623          	sw	a5,-20(s0)
    802059f6:	fec42783          	lw	a5,-20(s0)
    802059fa:	0007871b          	sext.w	a4,a5
    802059fe:	479d                	li	a5,7
    80205a00:	00e7d863          	bge	a5,a4,80205a10 <free_desc+0x28>
    80205a04:	00003517          	auipc	a0,0x3
    80205a08:	0ec50513          	addi	a0,a0,236 # 80208af0 <rodata_start+0xaf0>
    80205a0c:	fa1fa0ef          	jal	802009ac <panic>
    80205a10:	0048e717          	auipc	a4,0x48e
    80205a14:	5f070713          	addi	a4,a4,1520 # 80694000 <disk>
    80205a18:	fec42783          	lw	a5,-20(s0)
    80205a1c:	97ba                	add	a5,a5,a4
    80205a1e:	6709                	lui	a4,0x2
    80205a20:	97ba                	add	a5,a5,a4
    80205a22:	0187c783          	lbu	a5,24(a5)
    80205a26:	c799                	beqz	a5,80205a34 <free_desc+0x4c>
    80205a28:	00003517          	auipc	a0,0x3
    80205a2c:	0d850513          	addi	a0,a0,216 # 80208b00 <rodata_start+0xb00>
    80205a30:	f7dfa0ef          	jal	802009ac <panic>
    80205a34:	0048e717          	auipc	a4,0x48e
    80205a38:	5cc70713          	addi	a4,a4,1484 # 80694000 <disk>
    80205a3c:	6789                	lui	a5,0x2
    80205a3e:	97ba                	add	a5,a5,a4
    80205a40:	6398                	ld	a4,0(a5)
    80205a42:	fec42783          	lw	a5,-20(s0)
    80205a46:	0792                	slli	a5,a5,0x4
    80205a48:	97ba                	add	a5,a5,a4
    80205a4a:	0007b023          	sd	zero,0(a5) # 2000 <n+0x1fe0>
    80205a4e:	0048e717          	auipc	a4,0x48e
    80205a52:	5b270713          	addi	a4,a4,1458 # 80694000 <disk>
    80205a56:	6789                	lui	a5,0x2
    80205a58:	97ba                	add	a5,a5,a4
    80205a5a:	6398                	ld	a4,0(a5)
    80205a5c:	fec42783          	lw	a5,-20(s0)
    80205a60:	0792                	slli	a5,a5,0x4
    80205a62:	97ba                	add	a5,a5,a4
    80205a64:	0007a423          	sw	zero,8(a5) # 2008 <n+0x1fe8>
    80205a68:	0048e717          	auipc	a4,0x48e
    80205a6c:	59870713          	addi	a4,a4,1432 # 80694000 <disk>
    80205a70:	6789                	lui	a5,0x2
    80205a72:	97ba                	add	a5,a5,a4
    80205a74:	6398                	ld	a4,0(a5)
    80205a76:	fec42783          	lw	a5,-20(s0)
    80205a7a:	0792                	slli	a5,a5,0x4
    80205a7c:	97ba                	add	a5,a5,a4
    80205a7e:	00079623          	sh	zero,12(a5) # 200c <n+0x1fec>
    80205a82:	0048e717          	auipc	a4,0x48e
    80205a86:	57e70713          	addi	a4,a4,1406 # 80694000 <disk>
    80205a8a:	6789                	lui	a5,0x2
    80205a8c:	97ba                	add	a5,a5,a4
    80205a8e:	6398                	ld	a4,0(a5)
    80205a90:	fec42783          	lw	a5,-20(s0)
    80205a94:	0792                	slli	a5,a5,0x4
    80205a96:	97ba                	add	a5,a5,a4
    80205a98:	00079723          	sh	zero,14(a5) # 200e <n+0x1fee>
    80205a9c:	0048e717          	auipc	a4,0x48e
    80205aa0:	56470713          	addi	a4,a4,1380 # 80694000 <disk>
    80205aa4:	fec42783          	lw	a5,-20(s0)
    80205aa8:	97ba                	add	a5,a5,a4
    80205aaa:	6709                	lui	a4,0x2
    80205aac:	97ba                	add	a5,a5,a4
    80205aae:	4705                	li	a4,1
    80205ab0:	00e78c23          	sb	a4,24(a5)
    80205ab4:	0001                	nop
    80205ab6:	60e2                	ld	ra,24(sp)
    80205ab8:	6442                	ld	s0,16(sp)
    80205aba:	6105                	addi	sp,sp,32
    80205abc:	8082                	ret

0000000080205abe <free_chain>:
    80205abe:	7179                	addi	sp,sp,-48
    80205ac0:	f406                	sd	ra,40(sp)
    80205ac2:	f022                	sd	s0,32(sp)
    80205ac4:	1800                	addi	s0,sp,48
    80205ac6:	87aa                	mv	a5,a0
    80205ac8:	fcf42e23          	sw	a5,-36(s0)
    80205acc:	0048e717          	auipc	a4,0x48e
    80205ad0:	53470713          	addi	a4,a4,1332 # 80694000 <disk>
    80205ad4:	6789                	lui	a5,0x2
    80205ad6:	97ba                	add	a5,a5,a4
    80205ad8:	6398                	ld	a4,0(a5)
    80205ada:	fdc42783          	lw	a5,-36(s0)
    80205ade:	0792                	slli	a5,a5,0x4
    80205ae0:	97ba                	add	a5,a5,a4
    80205ae2:	00c7d783          	lhu	a5,12(a5) # 200c <n+0x1fec>
    80205ae6:	fef42623          	sw	a5,-20(s0)
    80205aea:	0048e717          	auipc	a4,0x48e
    80205aee:	51670713          	addi	a4,a4,1302 # 80694000 <disk>
    80205af2:	6789                	lui	a5,0x2
    80205af4:	97ba                	add	a5,a5,a4
    80205af6:	6398                	ld	a4,0(a5)
    80205af8:	fdc42783          	lw	a5,-36(s0)
    80205afc:	0792                	slli	a5,a5,0x4
    80205afe:	97ba                	add	a5,a5,a4
    80205b00:	00e7d783          	lhu	a5,14(a5) # 200e <n+0x1fee>
    80205b04:	fef42423          	sw	a5,-24(s0)
    80205b08:	fdc42783          	lw	a5,-36(s0)
    80205b0c:	853e                	mv	a0,a5
    80205b0e:	edbff0ef          	jal	802059e8 <free_desc>
    80205b12:	fec42783          	lw	a5,-20(s0)
    80205b16:	8b85                	andi	a5,a5,1
    80205b18:	2781                	sext.w	a5,a5
    80205b1a:	c791                	beqz	a5,80205b26 <free_chain+0x68>
    80205b1c:	fe842783          	lw	a5,-24(s0)
    80205b20:	fcf42e23          	sw	a5,-36(s0)
    80205b24:	b765                	j	80205acc <free_chain+0xe>
    80205b26:	0001                	nop
    80205b28:	0001                	nop
    80205b2a:	70a2                	ld	ra,40(sp)
    80205b2c:	7402                	ld	s0,32(sp)
    80205b2e:	6145                	addi	sp,sp,48
    80205b30:	8082                	ret

0000000080205b32 <alloc3_desc>:
    80205b32:	7139                	addi	sp,sp,-64
    80205b34:	fc06                	sd	ra,56(sp)
    80205b36:	f822                	sd	s0,48(sp)
    80205b38:	f426                	sd	s1,40(sp)
    80205b3a:	0080                	addi	s0,sp,64
    80205b3c:	fca43423          	sd	a0,-56(s0)
    80205b40:	fc042e23          	sw	zero,-36(s0)
    80205b44:	a0bd                	j	80205bb2 <alloc3_desc+0x80>
    80205b46:	fdc42783          	lw	a5,-36(s0)
    80205b4a:	078a                	slli	a5,a5,0x2
    80205b4c:	fc843703          	ld	a4,-56(s0)
    80205b50:	00f704b3          	add	s1,a4,a5
    80205b54:	e2fff0ef          	jal	80205982 <alloc_desc>
    80205b58:	87aa                	mv	a5,a0
    80205b5a:	c09c                	sw	a5,0(s1)
    80205b5c:	fdc42783          	lw	a5,-36(s0)
    80205b60:	078a                	slli	a5,a5,0x2
    80205b62:	fc843703          	ld	a4,-56(s0)
    80205b66:	97ba                	add	a5,a5,a4
    80205b68:	439c                	lw	a5,0(a5)
    80205b6a:	0207df63          	bgez	a5,80205ba8 <alloc3_desc+0x76>
    80205b6e:	fc042c23          	sw	zero,-40(s0)
    80205b72:	a005                	j	80205b92 <alloc3_desc+0x60>
    80205b74:	fd842783          	lw	a5,-40(s0)
    80205b78:	078a                	slli	a5,a5,0x2
    80205b7a:	fc843703          	ld	a4,-56(s0)
    80205b7e:	97ba                	add	a5,a5,a4
    80205b80:	439c                	lw	a5,0(a5)
    80205b82:	853e                	mv	a0,a5
    80205b84:	e65ff0ef          	jal	802059e8 <free_desc>
    80205b88:	fd842783          	lw	a5,-40(s0)
    80205b8c:	2785                	addiw	a5,a5,1
    80205b8e:	fcf42c23          	sw	a5,-40(s0)
    80205b92:	fd842783          	lw	a5,-40(s0)
    80205b96:	873e                	mv	a4,a5
    80205b98:	fdc42783          	lw	a5,-36(s0)
    80205b9c:	2701                	sext.w	a4,a4
    80205b9e:	2781                	sext.w	a5,a5
    80205ba0:	fcf74ae3          	blt	a4,a5,80205b74 <alloc3_desc+0x42>
    80205ba4:	57fd                	li	a5,-1
    80205ba6:	a831                	j	80205bc2 <alloc3_desc+0x90>
    80205ba8:	fdc42783          	lw	a5,-36(s0)
    80205bac:	2785                	addiw	a5,a5,1
    80205bae:	fcf42e23          	sw	a5,-36(s0)
    80205bb2:	fdc42783          	lw	a5,-36(s0)
    80205bb6:	0007871b          	sext.w	a4,a5
    80205bba:	4789                	li	a5,2
    80205bbc:	f8e7d5e3          	bge	a5,a4,80205b46 <alloc3_desc+0x14>
    80205bc0:	4781                	li	a5,0
    80205bc2:	853e                	mv	a0,a5
    80205bc4:	70e2                	ld	ra,56(sp)
    80205bc6:	7442                	ld	s0,48(sp)
    80205bc8:	74a2                	ld	s1,40(sp)
    80205bca:	6121                	addi	sp,sp,64
    80205bcc:	8082                	ret

0000000080205bce <virtio_disk_rw>:
    80205bce:	715d                	addi	sp,sp,-80
    80205bd0:	e486                	sd	ra,72(sp)
    80205bd2:	e0a2                	sd	s0,64(sp)
    80205bd4:	0880                	addi	s0,sp,80
    80205bd6:	faa43c23          	sd	a0,-72(s0)
    80205bda:	87ae                	mv	a5,a1
    80205bdc:	faf42a23          	sw	a5,-76(s0)
    80205be0:	fb843783          	ld	a5,-72(s0)
    80205be4:	47dc                	lw	a5,12(a5)
    80205be6:	0017979b          	slliw	a5,a5,0x1
    80205bea:	2781                	sext.w	a5,a5
    80205bec:	1782                	slli	a5,a5,0x20
    80205bee:	9381                	srli	a5,a5,0x20
    80205bf0:	fef43423          	sd	a5,-24(s0)
    80205bf4:	fc840793          	addi	a5,s0,-56
    80205bf8:	853e                	mv	a0,a5
    80205bfa:	f39ff0ef          	jal	80205b32 <alloc3_desc>
    80205bfe:	87aa                	mv	a5,a0
    80205c00:	c781                	beqz	a5,80205c08 <virtio_disk_rw+0x3a>
    80205c02:	b8bfc0ef          	jal	8020278c <yield>
    80205c06:	b7fd                	j	80205bf4 <virtio_disk_rw+0x26>
    80205c08:	0001                	nop
    80205c0a:	fc842783          	lw	a5,-56(s0)
    80205c0e:	20078793          	addi	a5,a5,512
    80205c12:	00479713          	slli	a4,a5,0x4
    80205c16:	0048e797          	auipc	a5,0x48e
    80205c1a:	3ea78793          	addi	a5,a5,1002 # 80694000 <disk>
    80205c1e:	97ba                	add	a5,a5,a4
    80205c20:	0a878793          	addi	a5,a5,168
    80205c24:	fef43023          	sd	a5,-32(s0)
    80205c28:	fb442783          	lw	a5,-76(s0)
    80205c2c:	2781                	sext.w	a5,a5
    80205c2e:	c791                	beqz	a5,80205c3a <virtio_disk_rw+0x6c>
    80205c30:	fe043783          	ld	a5,-32(s0)
    80205c34:	4705                	li	a4,1
    80205c36:	c398                	sw	a4,0(a5)
    80205c38:	a029                	j	80205c42 <virtio_disk_rw+0x74>
    80205c3a:	fe043783          	ld	a5,-32(s0)
    80205c3e:	0007a023          	sw	zero,0(a5)
    80205c42:	fe043783          	ld	a5,-32(s0)
    80205c46:	0007a223          	sw	zero,4(a5)
    80205c4a:	fe043783          	ld	a5,-32(s0)
    80205c4e:	fe843703          	ld	a4,-24(s0)
    80205c52:	e798                	sd	a4,8(a5)
    80205c54:	0048e717          	auipc	a4,0x48e
    80205c58:	3ac70713          	addi	a4,a4,940 # 80694000 <disk>
    80205c5c:	6789                	lui	a5,0x2
    80205c5e:	97ba                	add	a5,a5,a4
    80205c60:	6398                	ld	a4,0(a5)
    80205c62:	fc842783          	lw	a5,-56(s0)
    80205c66:	0792                	slli	a5,a5,0x4
    80205c68:	97ba                	add	a5,a5,a4
    80205c6a:	fe043703          	ld	a4,-32(s0)
    80205c6e:	e398                	sd	a4,0(a5)
    80205c70:	0048e717          	auipc	a4,0x48e
    80205c74:	39070713          	addi	a4,a4,912 # 80694000 <disk>
    80205c78:	6789                	lui	a5,0x2
    80205c7a:	97ba                	add	a5,a5,a4
    80205c7c:	6398                	ld	a4,0(a5)
    80205c7e:	fc842783          	lw	a5,-56(s0)
    80205c82:	0792                	slli	a5,a5,0x4
    80205c84:	97ba                	add	a5,a5,a4
    80205c86:	4741                	li	a4,16
    80205c88:	c798                	sw	a4,8(a5)
    80205c8a:	0048e717          	auipc	a4,0x48e
    80205c8e:	37670713          	addi	a4,a4,886 # 80694000 <disk>
    80205c92:	6789                	lui	a5,0x2
    80205c94:	97ba                	add	a5,a5,a4
    80205c96:	6398                	ld	a4,0(a5)
    80205c98:	fc842783          	lw	a5,-56(s0)
    80205c9c:	0792                	slli	a5,a5,0x4
    80205c9e:	97ba                	add	a5,a5,a4
    80205ca0:	4705                	li	a4,1
    80205ca2:	00e79623          	sh	a4,12(a5) # 200c <n+0x1fec>
    80205ca6:	fcc42683          	lw	a3,-52(s0)
    80205caa:	0048e717          	auipc	a4,0x48e
    80205cae:	35670713          	addi	a4,a4,854 # 80694000 <disk>
    80205cb2:	6789                	lui	a5,0x2
    80205cb4:	97ba                	add	a5,a5,a4
    80205cb6:	6398                	ld	a4,0(a5)
    80205cb8:	fc842783          	lw	a5,-56(s0)
    80205cbc:	0792                	slli	a5,a5,0x4
    80205cbe:	97ba                	add	a5,a5,a4
    80205cc0:	03069713          	slli	a4,a3,0x30
    80205cc4:	9341                	srli	a4,a4,0x30
    80205cc6:	00e79723          	sh	a4,14(a5) # 200e <n+0x1fee>
    80205cca:	fb843783          	ld	a5,-72(s0)
    80205cce:	02878693          	addi	a3,a5,40
    80205cd2:	0048e717          	auipc	a4,0x48e
    80205cd6:	32e70713          	addi	a4,a4,814 # 80694000 <disk>
    80205cda:	6789                	lui	a5,0x2
    80205cdc:	97ba                	add	a5,a5,a4
    80205cde:	6398                	ld	a4,0(a5)
    80205ce0:	fcc42783          	lw	a5,-52(s0)
    80205ce4:	0792                	slli	a5,a5,0x4
    80205ce6:	97ba                	add	a5,a5,a4
    80205ce8:	8736                	mv	a4,a3
    80205cea:	e398                	sd	a4,0(a5)
    80205cec:	0048e717          	auipc	a4,0x48e
    80205cf0:	31470713          	addi	a4,a4,788 # 80694000 <disk>
    80205cf4:	6789                	lui	a5,0x2
    80205cf6:	97ba                	add	a5,a5,a4
    80205cf8:	6398                	ld	a4,0(a5)
    80205cfa:	fcc42783          	lw	a5,-52(s0)
    80205cfe:	0792                	slli	a5,a5,0x4
    80205d00:	97ba                	add	a5,a5,a4
    80205d02:	40000713          	li	a4,1024
    80205d06:	c798                	sw	a4,8(a5)
    80205d08:	fb442783          	lw	a5,-76(s0)
    80205d0c:	2781                	sext.w	a5,a5
    80205d0e:	cf99                	beqz	a5,80205d2c <virtio_disk_rw+0x15e>
    80205d10:	0048e717          	auipc	a4,0x48e
    80205d14:	2f070713          	addi	a4,a4,752 # 80694000 <disk>
    80205d18:	6789                	lui	a5,0x2
    80205d1a:	97ba                	add	a5,a5,a4
    80205d1c:	6398                	ld	a4,0(a5)
    80205d1e:	fcc42783          	lw	a5,-52(s0)
    80205d22:	0792                	slli	a5,a5,0x4
    80205d24:	97ba                	add	a5,a5,a4
    80205d26:	00079623          	sh	zero,12(a5) # 200c <n+0x1fec>
    80205d2a:	a839                	j	80205d48 <virtio_disk_rw+0x17a>
    80205d2c:	0048e717          	auipc	a4,0x48e
    80205d30:	2d470713          	addi	a4,a4,724 # 80694000 <disk>
    80205d34:	6789                	lui	a5,0x2
    80205d36:	97ba                	add	a5,a5,a4
    80205d38:	6398                	ld	a4,0(a5)
    80205d3a:	fcc42783          	lw	a5,-52(s0)
    80205d3e:	0792                	slli	a5,a5,0x4
    80205d40:	97ba                	add	a5,a5,a4
    80205d42:	4709                	li	a4,2
    80205d44:	00e79623          	sh	a4,12(a5) # 200c <n+0x1fec>
    80205d48:	0048e717          	auipc	a4,0x48e
    80205d4c:	2b870713          	addi	a4,a4,696 # 80694000 <disk>
    80205d50:	6789                	lui	a5,0x2
    80205d52:	97ba                	add	a5,a5,a4
    80205d54:	6398                	ld	a4,0(a5)
    80205d56:	fcc42783          	lw	a5,-52(s0)
    80205d5a:	0792                	slli	a5,a5,0x4
    80205d5c:	97ba                	add	a5,a5,a4
    80205d5e:	00c7d703          	lhu	a4,12(a5) # 200c <n+0x1fec>
    80205d62:	0048e697          	auipc	a3,0x48e
    80205d66:	29e68693          	addi	a3,a3,670 # 80694000 <disk>
    80205d6a:	6789                	lui	a5,0x2
    80205d6c:	97b6                	add	a5,a5,a3
    80205d6e:	6394                	ld	a3,0(a5)
    80205d70:	fcc42783          	lw	a5,-52(s0)
    80205d74:	0792                	slli	a5,a5,0x4
    80205d76:	97b6                	add	a5,a5,a3
    80205d78:	00176713          	ori	a4,a4,1
    80205d7c:	1742                	slli	a4,a4,0x30
    80205d7e:	9341                	srli	a4,a4,0x30
    80205d80:	00e79623          	sh	a4,12(a5) # 200c <n+0x1fec>
    80205d84:	fd042683          	lw	a3,-48(s0)
    80205d88:	0048e717          	auipc	a4,0x48e
    80205d8c:	27870713          	addi	a4,a4,632 # 80694000 <disk>
    80205d90:	6789                	lui	a5,0x2
    80205d92:	97ba                	add	a5,a5,a4
    80205d94:	6398                	ld	a4,0(a5)
    80205d96:	fcc42783          	lw	a5,-52(s0)
    80205d9a:	0792                	slli	a5,a5,0x4
    80205d9c:	97ba                	add	a5,a5,a4
    80205d9e:	03069713          	slli	a4,a3,0x30
    80205da2:	9341                	srli	a4,a4,0x30
    80205da4:	00e79723          	sh	a4,14(a5) # 200e <n+0x1fee>
    80205da8:	fc842783          	lw	a5,-56(s0)
    80205dac:	0048e717          	auipc	a4,0x48e
    80205db0:	25470713          	addi	a4,a4,596 # 80694000 <disk>
    80205db4:	20078793          	addi	a5,a5,512
    80205db8:	0792                	slli	a5,a5,0x4
    80205dba:	97ba                	add	a5,a5,a4
    80205dbc:	576d                	li	a4,-5
    80205dbe:	02e78823          	sb	a4,48(a5)
    80205dc2:	fc842783          	lw	a5,-56(s0)
    80205dc6:	20078793          	addi	a5,a5,512
    80205dca:	00479713          	slli	a4,a5,0x4
    80205dce:	0048e797          	auipc	a5,0x48e
    80205dd2:	23278793          	addi	a5,a5,562 # 80694000 <disk>
    80205dd6:	97ba                	add	a5,a5,a4
    80205dd8:	03078693          	addi	a3,a5,48
    80205ddc:	0048e717          	auipc	a4,0x48e
    80205de0:	22470713          	addi	a4,a4,548 # 80694000 <disk>
    80205de4:	6789                	lui	a5,0x2
    80205de6:	97ba                	add	a5,a5,a4
    80205de8:	6398                	ld	a4,0(a5)
    80205dea:	fd042783          	lw	a5,-48(s0)
    80205dee:	0792                	slli	a5,a5,0x4
    80205df0:	97ba                	add	a5,a5,a4
    80205df2:	8736                	mv	a4,a3
    80205df4:	e398                	sd	a4,0(a5)
    80205df6:	0048e717          	auipc	a4,0x48e
    80205dfa:	20a70713          	addi	a4,a4,522 # 80694000 <disk>
    80205dfe:	6789                	lui	a5,0x2
    80205e00:	97ba                	add	a5,a5,a4
    80205e02:	6398                	ld	a4,0(a5)
    80205e04:	fd042783          	lw	a5,-48(s0)
    80205e08:	0792                	slli	a5,a5,0x4
    80205e0a:	97ba                	add	a5,a5,a4
    80205e0c:	4705                	li	a4,1
    80205e0e:	c798                	sw	a4,8(a5)
    80205e10:	0048e717          	auipc	a4,0x48e
    80205e14:	1f070713          	addi	a4,a4,496 # 80694000 <disk>
    80205e18:	6789                	lui	a5,0x2
    80205e1a:	97ba                	add	a5,a5,a4
    80205e1c:	6398                	ld	a4,0(a5)
    80205e1e:	fd042783          	lw	a5,-48(s0)
    80205e22:	0792                	slli	a5,a5,0x4
    80205e24:	97ba                	add	a5,a5,a4
    80205e26:	4709                	li	a4,2
    80205e28:	00e79623          	sh	a4,12(a5) # 200c <n+0x1fec>
    80205e2c:	0048e717          	auipc	a4,0x48e
    80205e30:	1d470713          	addi	a4,a4,468 # 80694000 <disk>
    80205e34:	6789                	lui	a5,0x2
    80205e36:	97ba                	add	a5,a5,a4
    80205e38:	6398                	ld	a4,0(a5)
    80205e3a:	fd042783          	lw	a5,-48(s0)
    80205e3e:	0792                	slli	a5,a5,0x4
    80205e40:	97ba                	add	a5,a5,a4
    80205e42:	00079723          	sh	zero,14(a5) # 200e <n+0x1fee>
    80205e46:	fb843783          	ld	a5,-72(s0)
    80205e4a:	4705                	li	a4,1
    80205e4c:	c3d8                	sw	a4,4(a5)
    80205e4e:	fc842783          	lw	a5,-56(s0)
    80205e52:	0048e717          	auipc	a4,0x48e
    80205e56:	1ae70713          	addi	a4,a4,430 # 80694000 <disk>
    80205e5a:	20078793          	addi	a5,a5,512
    80205e5e:	0792                	slli	a5,a5,0x4
    80205e60:	97ba                	add	a5,a5,a4
    80205e62:	fb843703          	ld	a4,-72(s0)
    80205e66:	f798                	sd	a4,40(a5)
    80205e68:	fc842603          	lw	a2,-56(s0)
    80205e6c:	0048e717          	auipc	a4,0x48e
    80205e70:	19470713          	addi	a4,a4,404 # 80694000 <disk>
    80205e74:	6789                	lui	a5,0x2
    80205e76:	97ba                	add	a5,a5,a4
    80205e78:	6794                	ld	a3,8(a5)
    80205e7a:	0048e717          	auipc	a4,0x48e
    80205e7e:	18670713          	addi	a4,a4,390 # 80694000 <disk>
    80205e82:	6789                	lui	a5,0x2
    80205e84:	97ba                	add	a5,a5,a4
    80205e86:	679c                	ld	a5,8(a5)
    80205e88:	0027d783          	lhu	a5,2(a5) # 2002 <n+0x1fe2>
    80205e8c:	2781                	sext.w	a5,a5
    80205e8e:	8b9d                	andi	a5,a5,7
    80205e90:	2781                	sext.w	a5,a5
    80205e92:	03061713          	slli	a4,a2,0x30
    80205e96:	9341                	srli	a4,a4,0x30
    80205e98:	0786                	slli	a5,a5,0x1
    80205e9a:	97b6                	add	a5,a5,a3
    80205e9c:	00e79223          	sh	a4,4(a5)
    80205ea0:	0330000f          	fence	rw,rw
    80205ea4:	0048e717          	auipc	a4,0x48e
    80205ea8:	15c70713          	addi	a4,a4,348 # 80694000 <disk>
    80205eac:	6789                	lui	a5,0x2
    80205eae:	97ba                	add	a5,a5,a4
    80205eb0:	679c                	ld	a5,8(a5)
    80205eb2:	0027d703          	lhu	a4,2(a5) # 2002 <n+0x1fe2>
    80205eb6:	0048e697          	auipc	a3,0x48e
    80205eba:	14a68693          	addi	a3,a3,330 # 80694000 <disk>
    80205ebe:	6789                	lui	a5,0x2
    80205ec0:	97b6                	add	a5,a5,a3
    80205ec2:	679c                	ld	a5,8(a5)
    80205ec4:	2705                	addiw	a4,a4,1
    80205ec6:	1742                	slli	a4,a4,0x30
    80205ec8:	9341                	srli	a4,a4,0x30
    80205eca:	00e79123          	sh	a4,2(a5) # 2002 <n+0x1fe2>
    80205ece:	0330000f          	fence	rw,rw
    80205ed2:	100017b7          	lui	a5,0x10001
    80205ed6:	05078793          	addi	a5,a5,80 # 10001050 <n+0x10001030>
    80205eda:	0007a023          	sw	zero,0(a5)
    80205ede:	fb843783          	ld	a5,-72(s0)
    80205ee2:	fcf43c23          	sd	a5,-40(s0)
    80205ee6:	ff4ff0ef          	jal	802056da <intr_on>
    80205eea:	0001                	nop
    80205eec:	fd843783          	ld	a5,-40(s0)
    80205ef0:	43dc                	lw	a5,4(a5)
    80205ef2:	0007871b          	sext.w	a4,a5
    80205ef6:	4785                	li	a5,1
    80205ef8:	fef70ae3          	beq	a4,a5,80205eec <virtio_disk_rw+0x31e>
    80205efc:	801ff0ef          	jal	802056fc <intr_off>
    80205f00:	fc842783          	lw	a5,-56(s0)
    80205f04:	0048e717          	auipc	a4,0x48e
    80205f08:	0fc70713          	addi	a4,a4,252 # 80694000 <disk>
    80205f0c:	20078793          	addi	a5,a5,512
    80205f10:	0792                	slli	a5,a5,0x4
    80205f12:	97ba                	add	a5,a5,a4
    80205f14:	0207b423          	sd	zero,40(a5)
    80205f18:	fc842783          	lw	a5,-56(s0)
    80205f1c:	853e                	mv	a0,a5
    80205f1e:	ba1ff0ef          	jal	80205abe <free_chain>
    80205f22:	0001                	nop
    80205f24:	60a6                	ld	ra,72(sp)
    80205f26:	6406                	ld	s0,64(sp)
    80205f28:	6161                	addi	sp,sp,80
    80205f2a:	8082                	ret

0000000080205f2c <virtio_disk_intr>:
    80205f2c:	1101                	addi	sp,sp,-32
    80205f2e:	ec06                	sd	ra,24(sp)
    80205f30:	e822                	sd	s0,16(sp)
    80205f32:	1000                	addi	s0,sp,32
    80205f34:	100017b7          	lui	a5,0x10001
    80205f38:	06078793          	addi	a5,a5,96 # 10001060 <n+0x10001040>
    80205f3c:	439c                	lw	a5,0(a5)
    80205f3e:	0007871b          	sext.w	a4,a5
    80205f42:	100017b7          	lui	a5,0x10001
    80205f46:	06478793          	addi	a5,a5,100 # 10001064 <n+0x10001044>
    80205f4a:	8b0d                	andi	a4,a4,3
    80205f4c:	2701                	sext.w	a4,a4
    80205f4e:	c398                	sw	a4,0(a5)
    80205f50:	0330000f          	fence	rw,rw
    80205f54:	a055                	j	80205ff8 <virtio_disk_intr+0xcc>
    80205f56:	0330000f          	fence	rw,rw
    80205f5a:	0048e717          	auipc	a4,0x48e
    80205f5e:	0a670713          	addi	a4,a4,166 # 80694000 <disk>
    80205f62:	6789                	lui	a5,0x2
    80205f64:	97ba                	add	a5,a5,a4
    80205f66:	6b98                	ld	a4,16(a5)
    80205f68:	0048e697          	auipc	a3,0x48e
    80205f6c:	09868693          	addi	a3,a3,152 # 80694000 <disk>
    80205f70:	6789                	lui	a5,0x2
    80205f72:	97b6                	add	a5,a5,a3
    80205f74:	0207d783          	lhu	a5,32(a5) # 2020 <n+0x2000>
    80205f78:	2781                	sext.w	a5,a5
    80205f7a:	8b9d                	andi	a5,a5,7
    80205f7c:	2781                	sext.w	a5,a5
    80205f7e:	078e                	slli	a5,a5,0x3
    80205f80:	97ba                	add	a5,a5,a4
    80205f82:	43dc                	lw	a5,4(a5)
    80205f84:	fef42623          	sw	a5,-20(s0)
    80205f88:	0048e717          	auipc	a4,0x48e
    80205f8c:	07870713          	addi	a4,a4,120 # 80694000 <disk>
    80205f90:	fec42783          	lw	a5,-20(s0)
    80205f94:	20078793          	addi	a5,a5,512
    80205f98:	0792                	slli	a5,a5,0x4
    80205f9a:	97ba                	add	a5,a5,a4
    80205f9c:	0307c783          	lbu	a5,48(a5)
    80205fa0:	c799                	beqz	a5,80205fae <virtio_disk_intr+0x82>
    80205fa2:	00003517          	auipc	a0,0x3
    80205fa6:	b6e50513          	addi	a0,a0,-1170 # 80208b10 <rodata_start+0xb10>
    80205faa:	a03fa0ef          	jal	802009ac <panic>
    80205fae:	0048e717          	auipc	a4,0x48e
    80205fb2:	05270713          	addi	a4,a4,82 # 80694000 <disk>
    80205fb6:	fec42783          	lw	a5,-20(s0)
    80205fba:	20078793          	addi	a5,a5,512
    80205fbe:	0792                	slli	a5,a5,0x4
    80205fc0:	97ba                	add	a5,a5,a4
    80205fc2:	779c                	ld	a5,40(a5)
    80205fc4:	fef43023          	sd	a5,-32(s0)
    80205fc8:	fe043783          	ld	a5,-32(s0)
    80205fcc:	0007a223          	sw	zero,4(a5)
    80205fd0:	0048e717          	auipc	a4,0x48e
    80205fd4:	03070713          	addi	a4,a4,48 # 80694000 <disk>
    80205fd8:	6789                	lui	a5,0x2
    80205fda:	97ba                	add	a5,a5,a4
    80205fdc:	0207d783          	lhu	a5,32(a5) # 2020 <n+0x2000>
    80205fe0:	2785                	addiw	a5,a5,1
    80205fe2:	03079713          	slli	a4,a5,0x30
    80205fe6:	9341                	srli	a4,a4,0x30
    80205fe8:	0048e697          	auipc	a3,0x48e
    80205fec:	01868693          	addi	a3,a3,24 # 80694000 <disk>
    80205ff0:	6789                	lui	a5,0x2
    80205ff2:	97b6                	add	a5,a5,a3
    80205ff4:	02e79023          	sh	a4,32(a5) # 2020 <n+0x2000>
    80205ff8:	0048e717          	auipc	a4,0x48e
    80205ffc:	00870713          	addi	a4,a4,8 # 80694000 <disk>
    80206000:	6789                	lui	a5,0x2
    80206002:	97ba                	add	a5,a5,a4
    80206004:	0207d683          	lhu	a3,32(a5) # 2020 <n+0x2000>
    80206008:	0048e717          	auipc	a4,0x48e
    8020600c:	ff870713          	addi	a4,a4,-8 # 80694000 <disk>
    80206010:	6789                	lui	a5,0x2
    80206012:	97ba                	add	a5,a5,a4
    80206014:	6b9c                	ld	a5,16(a5)
    80206016:	0027d783          	lhu	a5,2(a5) # 2002 <n+0x1fe2>
    8020601a:	0006871b          	sext.w	a4,a3
    8020601e:	2781                	sext.w	a5,a5
    80206020:	f2f71be3          	bne	a4,a5,80205f56 <virtio_disk_intr+0x2a>
    80206024:	0001                	nop
    80206026:	0001                	nop
    80206028:	60e2                	ld	ra,24(sp)
    8020602a:	6442                	ld	s0,16(sp)
    8020602c:	6105                	addi	sp,sp,32
    8020602e:	8082                	ret
	...

0000000080207000 <__alltraps>:
    80207000:	14011173          	csrrw	sp,sscratch,sp
    80207004:	e406                	sd	ra,8(sp)
    80207006:	ec0e                	sd	gp,24(sp)
    80207008:	f416                	sd	t0,40(sp)
    8020700a:	f81a                	sd	t1,48(sp)
    8020700c:	fc1e                	sd	t2,56(sp)
    8020700e:	e0a2                	sd	s0,64(sp)
    80207010:	e4a6                	sd	s1,72(sp)
    80207012:	e8aa                	sd	a0,80(sp)
    80207014:	ecae                	sd	a1,88(sp)
    80207016:	f0b2                	sd	a2,96(sp)
    80207018:	f4b6                	sd	a3,104(sp)
    8020701a:	f8ba                	sd	a4,112(sp)
    8020701c:	fcbe                	sd	a5,120(sp)
    8020701e:	e142                	sd	a6,128(sp)
    80207020:	e546                	sd	a7,136(sp)
    80207022:	e94a                	sd	s2,144(sp)
    80207024:	ed4e                	sd	s3,152(sp)
    80207026:	f152                	sd	s4,160(sp)
    80207028:	f556                	sd	s5,168(sp)
    8020702a:	f95a                	sd	s6,176(sp)
    8020702c:	fd5e                	sd	s7,184(sp)
    8020702e:	e1e2                	sd	s8,192(sp)
    80207030:	e5e6                	sd	s9,200(sp)
    80207032:	e9ea                	sd	s10,208(sp)
    80207034:	edee                	sd	s11,216(sp)
    80207036:	f1f2                	sd	t3,224(sp)
    80207038:	f5f6                	sd	t4,232(sp)
    8020703a:	f9fa                	sd	t5,240(sp)
    8020703c:	fdfe                	sd	t6,248(sp)
    8020703e:	100022f3          	csrr	t0,sstatus
    80207042:	14102373          	csrr	t1,sepc
    80207046:	e216                	sd	t0,256(sp)
    80207048:	e61a                	sd	t1,264(sp)
    8020704a:	140023f3          	csrr	t2,sscratch
    8020704e:	e81e                	sd	t2,16(sp)
    80207050:	62d2                	ld	t0,272(sp)
    80207052:	7312                	ld	t1,288(sp)
    80207054:	6172                	ld	sp,280(sp)
    80207056:	18029073          	csrw	satp,t0
    8020705a:	12000073          	sfence.vma
    8020705e:	8302                	jr	t1

0000000080207060 <__restore>:
    80207060:	18059073          	csrw	satp,a1
    80207064:	12000073          	sfence.vma
    80207068:	14051073          	csrw	sscratch,a0
    8020706c:	812a                	mv	sp,a0
    8020706e:	6292                	ld	t0,256(sp)
    80207070:	6332                	ld	t1,264(sp)
    80207072:	10029073          	csrw	sstatus,t0
    80207076:	14131073          	csrw	sepc,t1
    8020707a:	60a2                	ld	ra,8(sp)
    8020707c:	61e2                	ld	gp,24(sp)
    8020707e:	72a2                	ld	t0,40(sp)
    80207080:	7342                	ld	t1,48(sp)
    80207082:	73e2                	ld	t2,56(sp)
    80207084:	6406                	ld	s0,64(sp)
    80207086:	64a6                	ld	s1,72(sp)
    80207088:	6546                	ld	a0,80(sp)
    8020708a:	65e6                	ld	a1,88(sp)
    8020708c:	7606                	ld	a2,96(sp)
    8020708e:	76a6                	ld	a3,104(sp)
    80207090:	7746                	ld	a4,112(sp)
    80207092:	77e6                	ld	a5,120(sp)
    80207094:	680a                	ld	a6,128(sp)
    80207096:	68aa                	ld	a7,136(sp)
    80207098:	694a                	ld	s2,144(sp)
    8020709a:	69ea                	ld	s3,152(sp)
    8020709c:	7a0a                	ld	s4,160(sp)
    8020709e:	7aaa                	ld	s5,168(sp)
    802070a0:	7b4a                	ld	s6,176(sp)
    802070a2:	7bea                	ld	s7,184(sp)
    802070a4:	6c0e                	ld	s8,192(sp)
    802070a6:	6cae                	ld	s9,200(sp)
    802070a8:	6d4e                	ld	s10,208(sp)
    802070aa:	6dee                	ld	s11,216(sp)
    802070ac:	7e0e                	ld	t3,224(sp)
    802070ae:	7eae                	ld	t4,232(sp)
    802070b0:	7f4e                	ld	t5,240(sp)
    802070b2:	7fee                	ld	t6,248(sp)
    802070b4:	6142                	ld	sp,16(sp)
    802070b6:	10200073          	sret
	...
