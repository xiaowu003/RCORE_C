
../target/os.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	00014117          	auipc	sp,0x14
    80200004:	00010113          	mv	sp,sp
    80200008:	3060006f          	j	8020030e <main>
    8020000c:	0000                	unimp
    8020000e:	0000                	unimp
	...

0000000080200012 <r_sstatus>:
    80200012:	1101                	addi	sp,sp,-32 # 80213fe0 <boot_stack+0xffe0>
    80200014:	ec06                	sd	ra,24(sp)
    80200016:	e822                	sd	s0,16(sp)
    80200018:	1000                	addi	s0,sp,32
    8020001a:	100027f3          	csrr	a5,sstatus
    8020001e:	fef43423          	sd	a5,-24(s0)
    80200022:	fe843783          	ld	a5,-24(s0)
    80200026:	853e                	mv	a0,a5
    80200028:	60e2                	ld	ra,24(sp)
    8020002a:	6442                	ld	s0,16(sp)
    8020002c:	6105                	addi	sp,sp,32
    8020002e:	8082                	ret

0000000080200030 <get_kernel_stack_top>:
    80200030:	1141                	addi	sp,sp,-16
    80200032:	e406                	sd	ra,8(sp)
    80200034:	e022                	sd	s0,0(sp)
    80200036:	0800                	addi	s0,sp,16
    80200038:	00014797          	auipc	a5,0x14
    8020003c:	fc878793          	addi	a5,a5,-56 # 80214000 <boot_stack_top>
    80200040:	853e                	mv	a0,a5
    80200042:	60a2                	ld	ra,8(sp)
    80200044:	6402                	ld	s0,0(sp)
    80200046:	0141                	addi	sp,sp,16
    80200048:	8082                	ret

000000008020004a <get_user_stack_top>:
    8020004a:	1141                	addi	sp,sp,-16
    8020004c:	e406                	sd	ra,8(sp)
    8020004e:	e022                	sd	s0,0(sp)
    80200050:	0800                	addi	s0,sp,16
    80200052:	00015797          	auipc	a5,0x15
    80200056:	fbe78793          	addi	a5,a5,-66 # 80215010 <tc.0>
    8020005a:	853e                	mv	a0,a5
    8020005c:	60a2                	ld	ra,8(sp)
    8020005e:	6402                	ld	s0,0(sp)
    80200060:	0141                	addi	sp,sp,16
    80200062:	8082                	ret

0000000080200064 <load_app>:
    80200064:	7139                	addi	sp,sp,-64
    80200066:	fc06                	sd	ra,56(sp)
    80200068:	f822                	sd	s0,48(sp)
    8020006a:	0080                	addi	s0,sp,64
    8020006c:	00003797          	auipc	a5,0x3
    80200070:	f9478793          	addi	a5,a5,-108 # 80203000 <_num_app>
    80200074:	fcf43c23          	sd	a5,-40(s0)
    80200078:	fd843783          	ld	a5,-40(s0)
    8020007c:	639c                	ld	a5,0(a5)
    8020007e:	fcf43823          	sd	a5,-48(s0)
    80200082:	00003797          	auipc	a5,0x3
    80200086:	f7e78793          	addi	a5,a5,-130 # 80203000 <_num_app>
    8020008a:	6398                	ld	a4,0(a5)
    8020008c:	00014797          	auipc	a5,0x14
    80200090:	f7c78793          	addi	a5,a5,-132 # 80214008 <current_app>
    80200094:	639c                	ld	a5,0(a5)
    80200096:	00e7e863          	bltu	a5,a4,802000a6 <load_app+0x42>
    8020009a:	00002517          	auipc	a0,0x2
    8020009e:	f6650513          	addi	a0,a0,-154 # 80202000 <rodata_start>
    802000a2:	3e4000ef          	jal	80200486 <panic>
    802000a6:	fd843783          	ld	a5,-40(s0)
    802000aa:	07a1                	addi	a5,a5,8
    802000ac:	fcf43c23          	sd	a5,-40(s0)
    802000b0:	0000100f          	fence.i
    802000b4:	00014797          	auipc	a5,0x14
    802000b8:	f5478793          	addi	a5,a5,-172 # 80214008 <current_app>
    802000bc:	639c                	ld	a5,0(a5)
    802000be:	fcf42623          	sw	a5,-52(s0)
    802000c2:	20100793          	li	a5,513
    802000c6:	07da                	slli	a5,a5,0x16
    802000c8:	fef43423          	sd	a5,-24(s0)
    802000cc:	fcc42783          	lw	a5,-52(s0)
    802000d0:	0017979b          	slliw	a5,a5,0x1
    802000d4:	2781                	sext.w	a5,a5
    802000d6:	078e                	slli	a5,a5,0x3
    802000d8:	fd843703          	ld	a4,-40(s0)
    802000dc:	97ba                	add	a5,a5,a4
    802000de:	6390                	ld	a2,0(a5)
    802000e0:	fcc42783          	lw	a5,-52(s0)
    802000e4:	0017979b          	slliw	a5,a5,0x1
    802000e8:	2781                	sext.w	a5,a5
    802000ea:	0785                	addi	a5,a5,1
    802000ec:	078e                	slli	a5,a5,0x3
    802000ee:	fd843703          	ld	a4,-40(s0)
    802000f2:	97ba                	add	a5,a5,a4
    802000f4:	6398                	ld	a4,0(a5)
    802000f6:	fcc42783          	lw	a5,-52(s0)
    802000fa:	86ba                	mv	a3,a4
    802000fc:	85be                	mv	a1,a5
    802000fe:	00002517          	auipc	a0,0x2
    80200102:	f2250513          	addi	a0,a0,-222 # 80202020 <rodata_start+0x20>
    80200106:	377000ef          	jal	80200c7c <printk>
    8020010a:	fcc42783          	lw	a5,-52(s0)
    8020010e:	0017979b          	slliw	a5,a5,0x1
    80200112:	2781                	sext.w	a5,a5
    80200114:	078e                	slli	a5,a5,0x3
    80200116:	fd843703          	ld	a4,-40(s0)
    8020011a:	97ba                	add	a5,a5,a4
    8020011c:	639c                	ld	a5,0(a5)
    8020011e:	fef43023          	sd	a5,-32(s0)
    80200122:	a01d                	j	80200148 <load_app+0xe4>
    80200124:	fe043783          	ld	a5,-32(s0)
    80200128:	0007c703          	lbu	a4,0(a5)
    8020012c:	fe843783          	ld	a5,-24(s0)
    80200130:	00e78023          	sb	a4,0(a5)
    80200134:	fe043783          	ld	a5,-32(s0)
    80200138:	0785                	addi	a5,a5,1
    8020013a:	fef43023          	sd	a5,-32(s0)
    8020013e:	fe843783          	ld	a5,-24(s0)
    80200142:	0785                	addi	a5,a5,1
    80200144:	fef43423          	sd	a5,-24(s0)
    80200148:	fcc42783          	lw	a5,-52(s0)
    8020014c:	0017979b          	slliw	a5,a5,0x1
    80200150:	2781                	sext.w	a5,a5
    80200152:	0785                	addi	a5,a5,1
    80200154:	078e                	slli	a5,a5,0x3
    80200156:	fd843703          	ld	a4,-40(s0)
    8020015a:	97ba                	add	a5,a5,a4
    8020015c:	6398                	ld	a4,0(a5)
    8020015e:	fe043783          	ld	a5,-32(s0)
    80200162:	fcf771e3          	bgeu	a4,a5,80200124 <load_app+0xc0>
    80200166:	fe843783          	ld	a5,-24(s0)
    8020016a:	17fd                	addi	a5,a5,-1
    8020016c:	fef43423          	sd	a5,-24(s0)
    80200170:	fcc42783          	lw	a5,-52(s0)
    80200174:	fe843603          	ld	a2,-24(s0)
    80200178:	85be                	mv	a1,a5
    8020017a:	00002517          	auipc	a0,0x2
    8020017e:	ece50513          	addi	a0,a0,-306 # 80202048 <rodata_start+0x48>
    80200182:	2fb000ef          	jal	80200c7c <printk>
    80200186:	0001                	nop
    80200188:	70e2                	ld	ra,56(sp)
    8020018a:	7442                	ld	s0,48(sp)
    8020018c:	6121                	addi	sp,sp,64
    8020018e:	8082                	ret

0000000080200190 <run_app>:
    80200190:	1101                	addi	sp,sp,-32
    80200192:	ec06                	sd	ra,24(sp)
    80200194:	e822                	sd	s0,16(sp)
    80200196:	1000                	addi	s0,sp,32
    80200198:	00014797          	auipc	a5,0x14
    8020019c:	e7078793          	addi	a5,a5,-400 # 80214008 <current_app>
    802001a0:	6398                	ld	a4,0(a5)
    802001a2:	00003797          	auipc	a5,0x3
    802001a6:	e5e78793          	addi	a5,a5,-418 # 80203000 <_num_app>
    802001aa:	639c                	ld	a5,0(a5)
    802001ac:	863e                	mv	a2,a5
    802001ae:	85ba                	mv	a1,a4
    802001b0:	00002517          	auipc	a0,0x2
    802001b4:	ec850513          	addi	a0,a0,-312 # 80202078 <rodata_start+0x78>
    802001b8:	2c5000ef          	jal	80200c7c <printk>
    802001bc:	00003797          	auipc	a5,0x3
    802001c0:	e4478793          	addi	a5,a5,-444 # 80203000 <_num_app>
    802001c4:	6398                	ld	a4,0(a5)
    802001c6:	00014797          	auipc	a5,0x14
    802001ca:	e4278793          	addi	a5,a5,-446 # 80214008 <current_app>
    802001ce:	639c                	ld	a5,0(a5)
    802001d0:	00e7e863          	bltu	a5,a4,802001e0 <run_app+0x50>
    802001d4:	00002517          	auipc	a0,0x2
    802001d8:	e2c50513          	addi	a0,a0,-468 # 80202000 <rodata_start>
    802001dc:	2aa000ef          	jal	80200486 <panic>
    802001e0:	e33ff0ef          	jal	80200012 <r_sstatus>
    802001e4:	fea43423          	sd	a0,-24(s0)
    802001e8:	00015797          	auipc	a5,0x15
    802001ec:	e2878793          	addi	a5,a5,-472 # 80215010 <tc.0>
    802001f0:	20100713          	li	a4,513
    802001f4:	075a                	slli	a4,a4,0x16
    802001f6:	10e7b423          	sd	a4,264(a5)
    802001fa:	00014797          	auipc	a5,0x14
    802001fe:	e0e78793          	addi	a5,a5,-498 # 80214008 <current_app>
    80200202:	639c                	ld	a5,0(a5)
    80200204:	00178713          	addi	a4,a5,1
    80200208:	00014797          	auipc	a5,0x14
    8020020c:	e0078793          	addi	a5,a5,-512 # 80214008 <current_app>
    80200210:	e398                	sd	a4,0(a5)
    80200212:	fe843783          	ld	a5,-24(s0)
    80200216:	eff7f713          	andi	a4,a5,-257
    8020021a:	00015797          	auipc	a5,0x15
    8020021e:	df678793          	addi	a5,a5,-522 # 80215010 <tc.0>
    80200222:	10e7b023          	sd	a4,256(a5)
    80200226:	e25ff0ef          	jal	8020004a <get_user_stack_top>
    8020022a:	872a                	mv	a4,a0
    8020022c:	00015797          	auipc	a5,0x15
    80200230:	de478793          	addi	a5,a5,-540 # 80215010 <tc.0>
    80200234:	eb98                	sd	a4,16(a5)
    80200236:	00015797          	auipc	a5,0x15
    8020023a:	dda78793          	addi	a5,a5,-550 # 80215010 <tc.0>
    8020023e:	6b9c                	ld	a5,16(a5)
    80200240:	85be                	mv	a1,a5
    80200242:	00002517          	auipc	a0,0x2
    80200246:	e6650513          	addi	a0,a0,-410 # 802020a8 <rodata_start+0xa8>
    8020024a:	233000ef          	jal	80200c7c <printk>
    8020024e:	de3ff0ef          	jal	80200030 <get_kernel_stack_top>
    80200252:	87aa                	mv	a5,a0
    80200254:	ef078793          	addi	a5,a5,-272
    80200258:	fef43023          	sd	a5,-32(s0)
    8020025c:	fe043703          	ld	a4,-32(s0)
    80200260:	00015797          	auipc	a5,0x15
    80200264:	db078793          	addi	a5,a5,-592 # 80215010 <tc.0>
    80200268:	86be                	mv	a3,a5
    8020026a:	11000793          	li	a5,272
    8020026e:	863e                	mv	a2,a5
    80200270:	85b6                	mv	a1,a3
    80200272:	853a                	mv	a0,a4
    80200274:	5ad000ef          	jal	80201020 <memcpy>
    80200278:	00015517          	auipc	a0,0x15
    8020027c:	d9850513          	addi	a0,a0,-616 # 80215010 <tc.0>
    80200280:	50d000ef          	jal	80200f8c <__restore>
    80200284:	00002517          	auipc	a0,0x2
    80200288:	e4c50513          	addi	a0,a0,-436 # 802020d0 <rodata_start+0xd0>
    8020028c:	1fa000ef          	jal	80200486 <panic>
    80200290:	0001                	nop
    80200292:	60e2                	ld	ra,24(sp)
    80200294:	6442                	ld	s0,16(sp)
    80200296:	6105                	addi	sp,sp,32
    80200298:	8082                	ret

000000008020029a <clear_bss>:
    8020029a:	1101                	addi	sp,sp,-32
    8020029c:	ec06                	sd	ra,24(sp)
    8020029e:	e822                	sd	s0,16(sp)
    802002a0:	1000                	addi	s0,sp,32
    802002a2:	00016617          	auipc	a2,0x16
    802002a6:	d5e60613          	addi	a2,a2,-674 # 80216000 <bss_end>
    802002aa:	00014597          	auipc	a1,0x14
    802002ae:	d5858593          	addi	a1,a1,-680 # 80214002 <bss_start>
    802002b2:	00002517          	auipc	a0,0x2
    802002b6:	e4650513          	addi	a0,a0,-442 # 802020f8 <rodata_start+0xf8>
    802002ba:	1c3000ef          	jal	80200c7c <printk>
    802002be:	00002517          	auipc	a0,0x2
    802002c2:	e7250513          	addi	a0,a0,-398 # 80202130 <rodata_start+0x130>
    802002c6:	1b7000ef          	jal	80200c7c <printk>
    802002ca:	00014797          	auipc	a5,0x14
    802002ce:	d3878793          	addi	a5,a5,-712 # 80214002 <bss_start>
    802002d2:	fef43423          	sd	a5,-24(s0)
    802002d6:	00014797          	auipc	a5,0x14
    802002da:	d2c78793          	addi	a5,a5,-724 # 80214002 <bss_start>
    802002de:	fef43023          	sd	a5,-32(s0)
    802002e2:	a811                	j	802002f6 <clear_bss+0x5c>
    802002e4:	fe843783          	ld	a5,-24(s0)
    802002e8:	00078023          	sb	zero,0(a5)
    802002ec:	fe843783          	ld	a5,-24(s0)
    802002f0:	0785                	addi	a5,a5,1
    802002f2:	fef43423          	sd	a5,-24(s0)
    802002f6:	fe843703          	ld	a4,-24(s0)
    802002fa:	fe043783          	ld	a5,-32(s0)
    802002fe:	fef763e3          	bltu	a4,a5,802002e4 <clear_bss+0x4a>
    80200302:	0001                	nop
    80200304:	0001                	nop
    80200306:	60e2                	ld	ra,24(sp)
    80200308:	6442                	ld	s0,16(sp)
    8020030a:	6105                	addi	sp,sp,32
    8020030c:	8082                	ret

000000008020030e <main>:
    8020030e:	1141                	addi	sp,sp,-16
    80200310:	e406                	sd	ra,8(sp)
    80200312:	e022                	sd	s0,0(sp)
    80200314:	0800                	addi	s0,sp,16
    80200316:	f85ff0ef          	jal	8020029a <clear_bss>
    8020031a:	2f1000ef          	jal	80200e0a <trap_init>
    8020031e:	d47ff0ef          	jal	80200064 <load_app>
    80200322:	e6fff0ef          	jal	80200190 <run_app>
    80200326:	00002517          	auipc	a0,0x2
    8020032a:	e2a50513          	addi	a0,a0,-470 # 80202150 <rodata_start+0x150>
    8020032e:	158000ef          	jal	80200486 <panic>
    80200332:	4781                	li	a5,0
    80200334:	853e                	mv	a0,a5
    80200336:	60a2                	ld	ra,8(sp)
    80200338:	6402                	ld	s0,0(sp)
    8020033a:	0141                	addi	sp,sp,16
    8020033c:	8082                	ret

000000008020033e <sbi_ecall>:
    8020033e:	7159                	addi	sp,sp,-112
    80200340:	f486                	sd	ra,104(sp)
    80200342:	f0a2                	sd	s0,96(sp)
    80200344:	1880                	addi	s0,sp,112
    80200346:	fcc43023          	sd	a2,-64(s0)
    8020034a:	fad43c23          	sd	a3,-72(s0)
    8020034e:	fae43823          	sd	a4,-80(s0)
    80200352:	faf43423          	sd	a5,-88(s0)
    80200356:	fb043023          	sd	a6,-96(s0)
    8020035a:	f9143c23          	sd	a7,-104(s0)
    8020035e:	87aa                	mv	a5,a0
    80200360:	fcf42623          	sw	a5,-52(s0)
    80200364:	87ae                	mv	a5,a1
    80200366:	fcf42423          	sw	a5,-56(s0)
    8020036a:	fc043503          	ld	a0,-64(s0)
    8020036e:	fb843583          	ld	a1,-72(s0)
    80200372:	fb043603          	ld	a2,-80(s0)
    80200376:	fa843683          	ld	a3,-88(s0)
    8020037a:	fa043703          	ld	a4,-96(s0)
    8020037e:	f9843783          	ld	a5,-104(s0)
    80200382:	fc842803          	lw	a6,-56(s0)
    80200386:	fcc42883          	lw	a7,-52(s0)
    8020038a:	00000073          	ecall
    8020038e:	87aa                	mv	a5,a0
    80200390:	fcf43823          	sd	a5,-48(s0)
    80200394:	87ae                	mv	a5,a1
    80200396:	fcf43c23          	sd	a5,-40(s0)
    8020039a:	fd043783          	ld	a5,-48(s0)
    8020039e:	fef43023          	sd	a5,-32(s0)
    802003a2:	fd843783          	ld	a5,-40(s0)
    802003a6:	fef43423          	sd	a5,-24(s0)
    802003aa:	fe043703          	ld	a4,-32(s0)
    802003ae:	fe843783          	ld	a5,-24(s0)
    802003b2:	833a                	mv	t1,a4
    802003b4:	83be                	mv	t2,a5
    802003b6:	871a                	mv	a4,t1
    802003b8:	879e                	mv	a5,t2
    802003ba:	853a                	mv	a0,a4
    802003bc:	85be                	mv	a1,a5
    802003be:	70a6                	ld	ra,104(sp)
    802003c0:	7406                	ld	s0,96(sp)
    802003c2:	6165                	addi	sp,sp,112
    802003c4:	8082                	ret

00000000802003c6 <sbi_console_putchar>:
    802003c6:	1101                	addi	sp,sp,-32
    802003c8:	ec06                	sd	ra,24(sp)
    802003ca:	e822                	sd	s0,16(sp)
    802003cc:	1000                	addi	s0,sp,32
    802003ce:	87aa                	mv	a5,a0
    802003d0:	fef407a3          	sb	a5,-17(s0)
    802003d4:	fef40603          	lb	a2,-17(s0)
    802003d8:	4881                	li	a7,0
    802003da:	4801                	li	a6,0
    802003dc:	4781                	li	a5,0
    802003de:	4701                	li	a4,0
    802003e0:	4681                	li	a3,0
    802003e2:	4581                	li	a1,0
    802003e4:	4505                	li	a0,1
    802003e6:	f59ff0ef          	jal	8020033e <sbi_ecall>
    802003ea:	0001                	nop
    802003ec:	60e2                	ld	ra,24(sp)
    802003ee:	6442                	ld	s0,16(sp)
    802003f0:	6105                	addi	sp,sp,32
    802003f2:	8082                	ret

00000000802003f4 <sbi_shut_down>:
    802003f4:	1101                	addi	sp,sp,-32
    802003f6:	ec06                	sd	ra,24(sp)
    802003f8:	e822                	sd	s0,16(sp)
    802003fa:	1000                	addi	s0,sp,32
    802003fc:	87aa                	mv	a5,a0
    802003fe:	fef42623          	sw	a5,-20(s0)
    80200402:	fec46683          	lwu	a3,-20(s0)
    80200406:	4881                	li	a7,0
    80200408:	4801                	li	a6,0
    8020040a:	4781                	li	a5,0
    8020040c:	4701                	li	a4,0
    8020040e:	4601                	li	a2,0
    80200410:	4581                	li	a1,0
    80200412:	53525537          	lui	a0,0x53525
    80200416:	35450513          	addi	a0,a0,852 # 53525354 <n+0x53525334>
    8020041a:	f25ff0ef          	jal	8020033e <sbi_ecall>
    8020041e:	0001                	nop
    80200420:	60e2                	ld	ra,24(sp)
    80200422:	6442                	ld	s0,16(sp)
    80200424:	6105                	addi	sp,sp,32
    80200426:	8082                	ret

0000000080200428 <print>:
    80200428:	1101                	addi	sp,sp,-32
    8020042a:	ec06                	sd	ra,24(sp)
    8020042c:	e822                	sd	s0,16(sp)
    8020042e:	1000                	addi	s0,sp,32
    80200430:	fea43423          	sd	a0,-24(s0)
    80200434:	a821                	j	8020044c <print+0x24>
    80200436:	fe843783          	ld	a5,-24(s0)
    8020043a:	00178713          	addi	a4,a5,1
    8020043e:	fee43423          	sd	a4,-24(s0)
    80200442:	00078783          	lb	a5,0(a5)
    80200446:	853e                	mv	a0,a5
    80200448:	f7fff0ef          	jal	802003c6 <sbi_console_putchar>
    8020044c:	fe843783          	ld	a5,-24(s0)
    80200450:	00078783          	lb	a5,0(a5)
    80200454:	f3ed                	bnez	a5,80200436 <print+0xe>
    80200456:	0001                	nop
    80200458:	0001                	nop
    8020045a:	60e2                	ld	ra,24(sp)
    8020045c:	6442                	ld	s0,16(sp)
    8020045e:	6105                	addi	sp,sp,32
    80200460:	8082                	ret

0000000080200462 <println>:
    80200462:	1101                	addi	sp,sp,-32
    80200464:	ec06                	sd	ra,24(sp)
    80200466:	e822                	sd	s0,16(sp)
    80200468:	1000                	addi	s0,sp,32
    8020046a:	fea43423          	sd	a0,-24(s0)
    8020046e:	fe843503          	ld	a0,-24(s0)
    80200472:	fb7ff0ef          	jal	80200428 <print>
    80200476:	4529                	li	a0,10
    80200478:	f4fff0ef          	jal	802003c6 <sbi_console_putchar>
    8020047c:	0001                	nop
    8020047e:	60e2                	ld	ra,24(sp)
    80200480:	6442                	ld	s0,16(sp)
    80200482:	6105                	addi	sp,sp,32
    80200484:	8082                	ret

0000000080200486 <panic>:
    80200486:	1101                	addi	sp,sp,-32
    80200488:	ec06                	sd	ra,24(sp)
    8020048a:	e822                	sd	s0,16(sp)
    8020048c:	1000                	addi	s0,sp,32
    8020048e:	fea43423          	sd	a0,-24(s0)
    80200492:	4529                	li	a0,10
    80200494:	f33ff0ef          	jal	802003c6 <sbi_console_putchar>
    80200498:	00002517          	auipc	a0,0x2
    8020049c:	cd050513          	addi	a0,a0,-816 # 80202168 <rodata_start+0x168>
    802004a0:	f89ff0ef          	jal	80200428 <print>
    802004a4:	fe843503          	ld	a0,-24(s0)
    802004a8:	fbbff0ef          	jal	80200462 <println>
    802004ac:	4505                	li	a0,1
    802004ae:	f47ff0ef          	jal	802003f4 <sbi_shut_down>
    802004b2:	0001                	nop
    802004b4:	60e2                	ld	ra,24(sp)
    802004b6:	6442                	ld	s0,16(sp)
    802004b8:	6105                	addi	sp,sp,32
    802004ba:	8082                	ret

00000000802004bc <mini_strlen>:
    802004bc:	7179                	addi	sp,sp,-48
    802004be:	f406                	sd	ra,40(sp)
    802004c0:	f022                	sd	s0,32(sp)
    802004c2:	1800                	addi	s0,sp,48
    802004c4:	fca43c23          	sd	a0,-40(s0)
    802004c8:	fe042623          	sw	zero,-20(s0)
    802004cc:	a031                	j	802004d8 <mini_strlen+0x1c>
    802004ce:	fec42783          	lw	a5,-20(s0)
    802004d2:	2785                	addiw	a5,a5,1
    802004d4:	fef42623          	sw	a5,-20(s0)
    802004d8:	fec46783          	lwu	a5,-20(s0)
    802004dc:	fd843703          	ld	a4,-40(s0)
    802004e0:	97ba                	add	a5,a5,a4
    802004e2:	00078783          	lb	a5,0(a5)
    802004e6:	f7e5                	bnez	a5,802004ce <mini_strlen+0x12>
    802004e8:	fec42783          	lw	a5,-20(s0)
    802004ec:	853e                	mv	a0,a5
    802004ee:	70a2                	ld	ra,40(sp)
    802004f0:	7402                	ld	s0,32(sp)
    802004f2:	6145                	addi	sp,sp,48
    802004f4:	8082                	ret

00000000802004f6 <mini_itoa>:
    802004f6:	715d                	addi	sp,sp,-80
    802004f8:	e486                	sd	ra,72(sp)
    802004fa:	e0a2                	sd	s0,64(sp)
    802004fc:	0880                	addi	s0,sp,80
    802004fe:	fca43423          	sd	a0,-56(s0)
    80200502:	fae43823          	sd	a4,-80(s0)
    80200506:	873e                	mv	a4,a5
    80200508:	87ae                	mv	a5,a1
    8020050a:	fcf42223          	sw	a5,-60(s0)
    8020050e:	87b2                	mv	a5,a2
    80200510:	fcf42023          	sw	a5,-64(s0)
    80200514:	87b6                	mv	a5,a3
    80200516:	faf42e23          	sw	a5,-68(s0)
    8020051a:	87ba                	mv	a5,a4
    8020051c:	faf42c23          	sw	a5,-72(s0)
    80200520:	fb043783          	ld	a5,-80(s0)
    80200524:	fef43423          	sd	a5,-24(s0)
    80200528:	fe042223          	sw	zero,-28(s0)
    8020052c:	fc442783          	lw	a5,-60(s0)
    80200530:	0007871b          	sext.w	a4,a5
    80200534:	47c1                	li	a5,16
    80200536:	00e7f463          	bgeu	a5,a4,8020053e <mini_itoa+0x48>
    8020053a:	4781                	li	a5,0
    8020053c:	aaf9                	j	8020071a <mini_itoa+0x224>
    8020053e:	fc843783          	ld	a5,-56(s0)
    80200542:	0007df63          	bgez	a5,80200560 <mini_itoa+0x6a>
    80200546:	fbc42783          	lw	a5,-68(s0)
    8020054a:	2781                	sext.w	a5,a5
    8020054c:	eb91                	bnez	a5,80200560 <mini_itoa+0x6a>
    8020054e:	4785                	li	a5,1
    80200550:	fef42223          	sw	a5,-28(s0)
    80200554:	fc843783          	ld	a5,-56(s0)
    80200558:	40f007b3          	neg	a5,a5
    8020055c:	fcf43423          	sd	a5,-56(s0)
    80200560:	fc042e23          	sw	zero,-36(s0)
    80200564:	fbc42783          	lw	a5,-68(s0)
    80200568:	2781                	sext.w	a5,a5
    8020056a:	cb91                	beqz	a5,8020057e <mini_itoa+0x88>
    8020056c:	fc843703          	ld	a4,-56(s0)
    80200570:	fc446783          	lwu	a5,-60(s0)
    80200574:	02f777b3          	remu	a5,a4,a5
    80200578:	fcf42e23          	sw	a5,-36(s0)
    8020057c:	a809                	j	8020058e <mini_itoa+0x98>
    8020057e:	fc446783          	lwu	a5,-60(s0)
    80200582:	fc843703          	ld	a4,-56(s0)
    80200586:	02f767b3          	rem	a5,a4,a5
    8020058a:	fcf42e23          	sw	a5,-36(s0)
    8020058e:	fdc42783          	lw	a5,-36(s0)
    80200592:	0007871b          	sext.w	a4,a5
    80200596:	47a5                	li	a5,9
    80200598:	00e7cb63          	blt	a5,a4,802005ae <mini_itoa+0xb8>
    8020059c:	fdc42783          	lw	a5,-36(s0)
    802005a0:	0ff7f793          	zext.b	a5,a5
    802005a4:	0307879b          	addiw	a5,a5,48
    802005a8:	0ff7f713          	zext.b	a4,a5
    802005ac:	a025                	j	802005d4 <mini_itoa+0xde>
    802005ae:	fc042783          	lw	a5,-64(s0)
    802005b2:	2781                	sext.w	a5,a5
    802005b4:	c781                	beqz	a5,802005bc <mini_itoa+0xc6>
    802005b6:	04100793          	li	a5,65
    802005ba:	a019                	j	802005c0 <mini_itoa+0xca>
    802005bc:	06100793          	li	a5,97
    802005c0:	fdc42703          	lw	a4,-36(s0)
    802005c4:	0ff77713          	zext.b	a4,a4
    802005c8:	9fb9                	addw	a5,a5,a4
    802005ca:	0ff7f793          	zext.b	a5,a5
    802005ce:	37d9                	addiw	a5,a5,-10
    802005d0:	0ff7f713          	zext.b	a4,a5
    802005d4:	fe843783          	ld	a5,-24(s0)
    802005d8:	00178693          	addi	a3,a5,1
    802005dc:	fed43423          	sd	a3,-24(s0)
    802005e0:	00e78023          	sb	a4,0(a5)
    802005e4:	fbc42783          	lw	a5,-68(s0)
    802005e8:	2781                	sext.w	a5,a5
    802005ea:	cb91                	beqz	a5,802005fe <mini_itoa+0x108>
    802005ec:	fc843703          	ld	a4,-56(s0)
    802005f0:	fc446783          	lwu	a5,-60(s0)
    802005f4:	02f757b3          	divu	a5,a4,a5
    802005f8:	fcf43423          	sd	a5,-56(s0)
    802005fc:	a809                	j	8020060e <mini_itoa+0x118>
    802005fe:	fc446783          	lwu	a5,-60(s0)
    80200602:	fc843703          	ld	a4,-56(s0)
    80200606:	02f747b3          	div	a5,a4,a5
    8020060a:	fcf43423          	sd	a5,-56(s0)
    8020060e:	fc843783          	ld	a5,-56(s0)
    80200612:	f7b9                	bnez	a5,80200560 <mini_itoa+0x6a>
    80200614:	fe843703          	ld	a4,-24(s0)
    80200618:	fb043783          	ld	a5,-80(s0)
    8020061c:	40f707b3          	sub	a5,a4,a5
    80200620:	fef42023          	sw	a5,-32(s0)
    80200624:	a005                	j	80200644 <mini_itoa+0x14e>
    80200626:	fe843783          	ld	a5,-24(s0)
    8020062a:	00178713          	addi	a4,a5,1
    8020062e:	fee43423          	sd	a4,-24(s0)
    80200632:	03000713          	li	a4,48
    80200636:	00e78023          	sb	a4,0(a5)
    8020063a:	fe042783          	lw	a5,-32(s0)
    8020063e:	2785                	addiw	a5,a5,1
    80200640:	fef42023          	sw	a5,-32(s0)
    80200644:	fe042783          	lw	a5,-32(s0)
    80200648:	873e                	mv	a4,a5
    8020064a:	fb842783          	lw	a5,-72(s0)
    8020064e:	2701                	sext.w	a4,a4
    80200650:	2781                	sext.w	a5,a5
    80200652:	fcf76ae3          	bltu	a4,a5,80200626 <mini_itoa+0x130>
    80200656:	fe442783          	lw	a5,-28(s0)
    8020065a:	2781                	sext.w	a5,a5
    8020065c:	cb99                	beqz	a5,80200672 <mini_itoa+0x17c>
    8020065e:	fe843783          	ld	a5,-24(s0)
    80200662:	00178713          	addi	a4,a5,1
    80200666:	fee43423          	sd	a4,-24(s0)
    8020066a:	02d00713          	li	a4,45
    8020066e:	00e78023          	sb	a4,0(a5)
    80200672:	fe843783          	ld	a5,-24(s0)
    80200676:	00078023          	sb	zero,0(a5)
    8020067a:	fe843703          	ld	a4,-24(s0)
    8020067e:	fb043783          	ld	a5,-80(s0)
    80200682:	40f707b3          	sub	a5,a4,a5
    80200686:	fcf42c23          	sw	a5,-40(s0)
    8020068a:	fe042023          	sw	zero,-32(s0)
    8020068e:	a895                	j	80200702 <mini_itoa+0x20c>
    80200690:	fe046783          	lwu	a5,-32(s0)
    80200694:	fb043703          	ld	a4,-80(s0)
    80200698:	97ba                	add	a5,a5,a4
    8020069a:	0007c783          	lbu	a5,0(a5)
    8020069e:	fcf40ba3          	sb	a5,-41(s0)
    802006a2:	fd842783          	lw	a5,-40(s0)
    802006a6:	873e                	mv	a4,a5
    802006a8:	fe042783          	lw	a5,-32(s0)
    802006ac:	40f707bb          	subw	a5,a4,a5
    802006b0:	2781                	sext.w	a5,a5
    802006b2:	37fd                	addiw	a5,a5,-1
    802006b4:	2781                	sext.w	a5,a5
    802006b6:	1782                	slli	a5,a5,0x20
    802006b8:	9381                	srli	a5,a5,0x20
    802006ba:	fb043703          	ld	a4,-80(s0)
    802006be:	973e                	add	a4,a4,a5
    802006c0:	fe046783          	lwu	a5,-32(s0)
    802006c4:	fb043683          	ld	a3,-80(s0)
    802006c8:	97b6                	add	a5,a5,a3
    802006ca:	00074703          	lbu	a4,0(a4)
    802006ce:	00e78023          	sb	a4,0(a5)
    802006d2:	fd842783          	lw	a5,-40(s0)
    802006d6:	873e                	mv	a4,a5
    802006d8:	fe042783          	lw	a5,-32(s0)
    802006dc:	40f707bb          	subw	a5,a4,a5
    802006e0:	2781                	sext.w	a5,a5
    802006e2:	37fd                	addiw	a5,a5,-1
    802006e4:	2781                	sext.w	a5,a5
    802006e6:	1782                	slli	a5,a5,0x20
    802006e8:	9381                	srli	a5,a5,0x20
    802006ea:	fb043703          	ld	a4,-80(s0)
    802006ee:	97ba                	add	a5,a5,a4
    802006f0:	fd744703          	lbu	a4,-41(s0)
    802006f4:	00e78023          	sb	a4,0(a5)
    802006f8:	fe042783          	lw	a5,-32(s0)
    802006fc:	2785                	addiw	a5,a5,1
    802006fe:	fef42023          	sw	a5,-32(s0)
    80200702:	fd842783          	lw	a5,-40(s0)
    80200706:	0017d79b          	srliw	a5,a5,0x1
    8020070a:	2781                	sext.w	a5,a5
    8020070c:	fe042703          	lw	a4,-32(s0)
    80200710:	2701                	sext.w	a4,a4
    80200712:	f6f76fe3          	bltu	a4,a5,80200690 <mini_itoa+0x19a>
    80200716:	fd842783          	lw	a5,-40(s0)
    8020071a:	853e                	mv	a0,a5
    8020071c:	60a6                	ld	ra,72(sp)
    8020071e:	6406                	ld	s0,64(sp)
    80200720:	6161                	addi	sp,sp,80
    80200722:	8082                	ret

0000000080200724 <_putc>:
    80200724:	1101                	addi	sp,sp,-32
    80200726:	ec06                	sd	ra,24(sp)
    80200728:	e822                	sd	s0,16(sp)
    8020072a:	1000                	addi	s0,sp,32
    8020072c:	87aa                	mv	a5,a0
    8020072e:	feb43023          	sd	a1,-32(s0)
    80200732:	fef42623          	sw	a5,-20(s0)
    80200736:	fe043783          	ld	a5,-32(s0)
    8020073a:	6798                	ld	a4,8(a5)
    8020073c:	fe043783          	ld	a5,-32(s0)
    80200740:	639c                	ld	a5,0(a5)
    80200742:	40f707b3          	sub	a5,a4,a5
    80200746:	2781                	sext.w	a5,a5
    80200748:	2785                	addiw	a5,a5,1
    8020074a:	0007871b          	sext.w	a4,a5
    8020074e:	fe043783          	ld	a5,-32(s0)
    80200752:	4b9c                	lw	a5,16(a5)
    80200754:	00f76463          	bltu	a4,a5,8020075c <_putc+0x38>
    80200758:	4781                	li	a5,0
    8020075a:	a02d                	j	80200784 <_putc+0x60>
    8020075c:	fe043783          	ld	a5,-32(s0)
    80200760:	679c                	ld	a5,8(a5)
    80200762:	00178693          	addi	a3,a5,1
    80200766:	fe043703          	ld	a4,-32(s0)
    8020076a:	e714                	sd	a3,8(a4)
    8020076c:	fec42703          	lw	a4,-20(s0)
    80200770:	0ff77713          	zext.b	a4,a4
    80200774:	00e78023          	sb	a4,0(a5)
    80200778:	fe043783          	ld	a5,-32(s0)
    8020077c:	679c                	ld	a5,8(a5)
    8020077e:	00078023          	sb	zero,0(a5)
    80200782:	4785                	li	a5,1
    80200784:	853e                	mv	a0,a5
    80200786:	60e2                	ld	ra,24(sp)
    80200788:	6442                	ld	s0,16(sp)
    8020078a:	6105                	addi	sp,sp,32
    8020078c:	8082                	ret

000000008020078e <_puts>:
    8020078e:	7139                	addi	sp,sp,-64
    80200790:	fc06                	sd	ra,56(sp)
    80200792:	f822                	sd	s0,48(sp)
    80200794:	0080                	addi	s0,sp,64
    80200796:	fca43c23          	sd	a0,-40(s0)
    8020079a:	87ae                	mv	a5,a1
    8020079c:	fcc43423          	sd	a2,-56(s0)
    802007a0:	fcf42a23          	sw	a5,-44(s0)
    802007a4:	fc843783          	ld	a5,-56(s0)
    802007a8:	4b9c                	lw	a5,16(a5)
    802007aa:	02079713          	slli	a4,a5,0x20
    802007ae:	9301                	srli	a4,a4,0x20
    802007b0:	fc843783          	ld	a5,-56(s0)
    802007b4:	6794                	ld	a3,8(a5)
    802007b6:	fc843783          	ld	a5,-56(s0)
    802007ba:	639c                	ld	a5,0(a5)
    802007bc:	40f687b3          	sub	a5,a3,a5
    802007c0:	8f1d                	sub	a4,a4,a5
    802007c2:	fd446783          	lwu	a5,-44(s0)
    802007c6:	02e7c463          	blt	a5,a4,802007ee <_puts+0x60>
    802007ca:	fc843783          	ld	a5,-56(s0)
    802007ce:	4b98                	lw	a4,16(a5)
    802007d0:	fc843783          	ld	a5,-56(s0)
    802007d4:	6794                	ld	a3,8(a5)
    802007d6:	fc843783          	ld	a5,-56(s0)
    802007da:	639c                	ld	a5,0(a5)
    802007dc:	40f687b3          	sub	a5,a3,a5
    802007e0:	2781                	sext.w	a5,a5
    802007e2:	40f707bb          	subw	a5,a4,a5
    802007e6:	2781                	sext.w	a5,a5
    802007e8:	37fd                	addiw	a5,a5,-1
    802007ea:	fcf42a23          	sw	a5,-44(s0)
    802007ee:	fe042623          	sw	zero,-20(s0)
    802007f2:	a03d                	j	80200820 <_puts+0x92>
    802007f4:	fec46783          	lwu	a5,-20(s0)
    802007f8:	fd843703          	ld	a4,-40(s0)
    802007fc:	973e                	add	a4,a4,a5
    802007fe:	fc843783          	ld	a5,-56(s0)
    80200802:	679c                	ld	a5,8(a5)
    80200804:	00178613          	addi	a2,a5,1
    80200808:	fc843683          	ld	a3,-56(s0)
    8020080c:	e690                	sd	a2,8(a3)
    8020080e:	00074703          	lbu	a4,0(a4)
    80200812:	00e78023          	sb	a4,0(a5)
    80200816:	fec42783          	lw	a5,-20(s0)
    8020081a:	2785                	addiw	a5,a5,1
    8020081c:	fef42623          	sw	a5,-20(s0)
    80200820:	fec42783          	lw	a5,-20(s0)
    80200824:	873e                	mv	a4,a5
    80200826:	fd442783          	lw	a5,-44(s0)
    8020082a:	2701                	sext.w	a4,a4
    8020082c:	2781                	sext.w	a5,a5
    8020082e:	fcf763e3          	bltu	a4,a5,802007f4 <_puts+0x66>
    80200832:	fc843783          	ld	a5,-56(s0)
    80200836:	679c                	ld	a5,8(a5)
    80200838:	00078023          	sb	zero,0(a5)
    8020083c:	fd442783          	lw	a5,-44(s0)
    80200840:	853e                	mv	a0,a5
    80200842:	70e2                	ld	ra,56(sp)
    80200844:	7442                	ld	s0,48(sp)
    80200846:	6121                	addi	sp,sp,64
    80200848:	8082                	ret

000000008020084a <mini_vsnprintf>:
    8020084a:	7119                	addi	sp,sp,-128
    8020084c:	fc86                	sd	ra,120(sp)
    8020084e:	f8a2                	sd	s0,112(sp)
    80200850:	0100                	addi	s0,sp,128
    80200852:	f8a43c23          	sd	a0,-104(s0)
    80200856:	87ae                	mv	a5,a1
    80200858:	f8c43423          	sd	a2,-120(s0)
    8020085c:	f8d43023          	sd	a3,-128(s0)
    80200860:	f8f42a23          	sw	a5,-108(s0)
    80200864:	f9843783          	ld	a5,-104(s0)
    80200868:	fcf43023          	sd	a5,-64(s0)
    8020086c:	f9843783          	ld	a5,-104(s0)
    80200870:	fcf43423          	sd	a5,-56(s0)
    80200874:	f9442783          	lw	a5,-108(s0)
    80200878:	fcf42823          	sw	a5,-48(s0)
    8020087c:	a4f1                	j	80200b48 <mini_vsnprintf+0x2fe>
    8020087e:	fc843703          	ld	a4,-56(s0)
    80200882:	fc043783          	ld	a5,-64(s0)
    80200886:	40f707b3          	sub	a5,a4,a5
    8020088a:	2781                	sext.w	a5,a5
    8020088c:	2785                	addiw	a5,a5,1
    8020088e:	0007871b          	sext.w	a4,a5
    80200892:	fd042783          	lw	a5,-48(s0)
    80200896:	2cf77a63          	bgeu	a4,a5,80200b6a <mini_vsnprintf+0x320>
    8020089a:	fef44783          	lbu	a5,-17(s0)
    8020089e:	0ff7f713          	zext.b	a4,a5
    802008a2:	02500793          	li	a5,37
    802008a6:	00f70c63          	beq	a4,a5,802008be <mini_vsnprintf+0x74>
    802008aa:	fef44783          	lbu	a5,-17(s0)
    802008ae:	2781                	sext.w	a5,a5
    802008b0:	fc040713          	addi	a4,s0,-64
    802008b4:	85ba                	mv	a1,a4
    802008b6:	853e                	mv	a0,a5
    802008b8:	e6dff0ef          	jal	80200724 <_putc>
    802008bc:	a471                	j	80200b48 <mini_vsnprintf+0x2fe>
    802008be:	fe040723          	sb	zero,-18(s0)
    802008c2:	fe042423          	sw	zero,-24(s0)
    802008c6:	f8843783          	ld	a5,-120(s0)
    802008ca:	00178713          	addi	a4,a5,1
    802008ce:	f8e43423          	sd	a4,-120(s0)
    802008d2:	0007c783          	lbu	a5,0(a5)
    802008d6:	fef407a3          	sb	a5,-17(s0)
    802008da:	fef44783          	lbu	a5,-17(s0)
    802008de:	0ff7f713          	zext.b	a4,a5
    802008e2:	03000793          	li	a5,48
    802008e6:	06f71c63          	bne	a4,a5,8020095e <mini_vsnprintf+0x114>
    802008ea:	a899                	j	80200940 <mini_vsnprintf+0xf6>
    802008ec:	fef44783          	lbu	a5,-17(s0)
    802008f0:	0ff7f793          	zext.b	a5,a5
    802008f4:	26078d63          	beqz	a5,80200b6e <mini_vsnprintf+0x324>
    802008f8:	fef44783          	lbu	a5,-17(s0)
    802008fc:	0ff7f713          	zext.b	a4,a5
    80200900:	02f00793          	li	a5,47
    80200904:	04e7fd63          	bgeu	a5,a4,8020095e <mini_vsnprintf+0x114>
    80200908:	fef44783          	lbu	a5,-17(s0)
    8020090c:	0ff7f713          	zext.b	a4,a5
    80200910:	03900793          	li	a5,57
    80200914:	04e7e563          	bltu	a5,a4,8020095e <mini_vsnprintf+0x114>
    80200918:	fee44783          	lbu	a5,-18(s0)
    8020091c:	873e                	mv	a4,a5
    8020091e:	87ba                	mv	a5,a4
    80200920:	0027979b          	slliw	a5,a5,0x2
    80200924:	9fb9                	addw	a5,a5,a4
    80200926:	0017979b          	slliw	a5,a5,0x1
    8020092a:	0ff7f793          	zext.b	a5,a5
    8020092e:	fef44703          	lbu	a4,-17(s0)
    80200932:	9fb9                	addw	a5,a5,a4
    80200934:	0ff7f793          	zext.b	a5,a5
    80200938:	fd07879b          	addiw	a5,a5,-48
    8020093c:	fef40723          	sb	a5,-18(s0)
    80200940:	f8843783          	ld	a5,-120(s0)
    80200944:	00178713          	addi	a4,a5,1
    80200948:	f8e43423          	sd	a4,-120(s0)
    8020094c:	0007c783          	lbu	a5,0(a5)
    80200950:	fef407a3          	sb	a5,-17(s0)
    80200954:	fef44783          	lbu	a5,-17(s0)
    80200958:	0ff7f793          	zext.b	a5,a5
    8020095c:	fbc1                	bnez	a5,802008ec <mini_vsnprintf+0xa2>
    8020095e:	fef44783          	lbu	a5,-17(s0)
    80200962:	0ff7f713          	zext.b	a4,a5
    80200966:	06c00793          	li	a5,108
    8020096a:	00f71f63          	bne	a4,a5,80200988 <mini_vsnprintf+0x13e>
    8020096e:	4785                	li	a5,1
    80200970:	fef42423          	sw	a5,-24(s0)
    80200974:	f8843783          	ld	a5,-120(s0)
    80200978:	00178713          	addi	a4,a5,1
    8020097c:	f8e43423          	sd	a4,-120(s0)
    80200980:	0007c783          	lbu	a5,0(a5)
    80200984:	fef407a3          	sb	a5,-17(s0)
    80200988:	fef44783          	lbu	a5,-17(s0)
    8020098c:	2781                	sext.w	a5,a5
    8020098e:	1e078263          	beqz	a5,80200b72 <mini_vsnprintf+0x328>
    80200992:	1a07c163          	bltz	a5,80200b34 <mini_vsnprintf+0x2ea>
    80200996:	07800713          	li	a4,120
    8020099a:	18f74d63          	blt	a4,a5,80200b34 <mini_vsnprintf+0x2ea>
    8020099e:	05800713          	li	a4,88
    802009a2:	18e7c963          	blt	a5,a4,80200b34 <mini_vsnprintf+0x2ea>
    802009a6:	fa87879b          	addiw	a5,a5,-88
    802009aa:	86be                	mv	a3,a5
    802009ac:	0006871b          	sext.w	a4,a3
    802009b0:	02000793          	li	a5,32
    802009b4:	18e7e063          	bltu	a5,a4,80200b34 <mini_vsnprintf+0x2ea>
    802009b8:	02069793          	slli	a5,a3,0x20
    802009bc:	9381                	srli	a5,a5,0x20
    802009be:	00279713          	slli	a4,a5,0x2
    802009c2:	00001797          	auipc	a5,0x1
    802009c6:	7b278793          	addi	a5,a5,1970 # 80202174 <rodata_start+0x174>
    802009ca:	97ba                	add	a5,a5,a4
    802009cc:	439c                	lw	a5,0(a5)
    802009ce:	0007871b          	sext.w	a4,a5
    802009d2:	00001797          	auipc	a5,0x1
    802009d6:	7a278793          	addi	a5,a5,1954 # 80202174 <rodata_start+0x174>
    802009da:	97ba                	add	a5,a5,a4
    802009dc:	8782                	jr	a5
    802009de:	4785                	li	a5,1
    802009e0:	fef42423          	sw	a5,-24(s0)
    802009e4:	a295                	j	80200b48 <mini_vsnprintf+0x2fe>
    802009e6:	fe842783          	lw	a5,-24(s0)
    802009ea:	2781                	sext.w	a5,a5
    802009ec:	ef81                	bnez	a5,80200a04 <mini_vsnprintf+0x1ba>
    802009ee:	f8043783          	ld	a5,-128(s0)
    802009f2:	00878713          	addi	a4,a5,8
    802009f6:	f8e43023          	sd	a4,-128(s0)
    802009fa:	439c                	lw	a5,0(a5)
    802009fc:	02079513          	slli	a0,a5,0x20
    80200a00:	9101                	srli	a0,a0,0x20
    80200a02:	a809                	j	80200a14 <mini_vsnprintf+0x1ca>
    80200a04:	f8043783          	ld	a5,-128(s0)
    80200a08:	00878713          	addi	a4,a5,8
    80200a0c:	f8e43023          	sd	a4,-128(s0)
    80200a10:	639c                	ld	a5,0(a5)
    80200a12:	853e                	mv	a0,a5
    80200a14:	fef44783          	lbu	a5,-17(s0)
    80200a18:	0007871b          	sext.w	a4,a5
    80200a1c:	07500793          	li	a5,117
    80200a20:	40f707b3          	sub	a5,a4,a5
    80200a24:	0017b793          	seqz	a5,a5
    80200a28:	0ff7f793          	zext.b	a5,a5
    80200a2c:	0007869b          	sext.w	a3,a5
    80200a30:	fee44783          	lbu	a5,-18(s0)
    80200a34:	2781                	sext.w	a5,a5
    80200a36:	fa840713          	addi	a4,s0,-88
    80200a3a:	4601                	li	a2,0
    80200a3c:	45a9                	li	a1,10
    80200a3e:	ab9ff0ef          	jal	802004f6 <mini_itoa>
    80200a42:	87aa                	mv	a5,a0
    80200a44:	fcf42e23          	sw	a5,-36(s0)
    80200a48:	fc040693          	addi	a3,s0,-64
    80200a4c:	fdc42703          	lw	a4,-36(s0)
    80200a50:	fa840793          	addi	a5,s0,-88
    80200a54:	8636                	mv	a2,a3
    80200a56:	85ba                	mv	a1,a4
    80200a58:	853e                	mv	a0,a5
    80200a5a:	d35ff0ef          	jal	8020078e <_puts>
    80200a5e:	fe042423          	sw	zero,-24(s0)
    80200a62:	a0dd                	j	80200b48 <mini_vsnprintf+0x2fe>
    80200a64:	fe842783          	lw	a5,-24(s0)
    80200a68:	2781                	sext.w	a5,a5
    80200a6a:	ef81                	bnez	a5,80200a82 <mini_vsnprintf+0x238>
    80200a6c:	f8043783          	ld	a5,-128(s0)
    80200a70:	00878713          	addi	a4,a5,8
    80200a74:	f8e43023          	sd	a4,-128(s0)
    80200a78:	439c                	lw	a5,0(a5)
    80200a7a:	02079513          	slli	a0,a5,0x20
    80200a7e:	9101                	srli	a0,a0,0x20
    80200a80:	a809                	j	80200a92 <mini_vsnprintf+0x248>
    80200a82:	f8043783          	ld	a5,-128(s0)
    80200a86:	00878713          	addi	a4,a5,8
    80200a8a:	f8e43023          	sd	a4,-128(s0)
    80200a8e:	639c                	ld	a5,0(a5)
    80200a90:	853e                	mv	a0,a5
    80200a92:	fef44783          	lbu	a5,-17(s0)
    80200a96:	0007871b          	sext.w	a4,a5
    80200a9a:	05800793          	li	a5,88
    80200a9e:	40f707b3          	sub	a5,a4,a5
    80200aa2:	0017b793          	seqz	a5,a5
    80200aa6:	0ff7f793          	zext.b	a5,a5
    80200aaa:	0007861b          	sext.w	a2,a5
    80200aae:	fee44783          	lbu	a5,-18(s0)
    80200ab2:	2781                	sext.w	a5,a5
    80200ab4:	fa840713          	addi	a4,s0,-88
    80200ab8:	4685                	li	a3,1
    80200aba:	45c1                	li	a1,16
    80200abc:	a3bff0ef          	jal	802004f6 <mini_itoa>
    80200ac0:	87aa                	mv	a5,a0
    80200ac2:	fcf42e23          	sw	a5,-36(s0)
    80200ac6:	fc040693          	addi	a3,s0,-64
    80200aca:	fdc42703          	lw	a4,-36(s0)
    80200ace:	fa840793          	addi	a5,s0,-88
    80200ad2:	8636                	mv	a2,a3
    80200ad4:	85ba                	mv	a1,a4
    80200ad6:	853e                	mv	a0,a5
    80200ad8:	cb7ff0ef          	jal	8020078e <_puts>
    80200adc:	fe042423          	sw	zero,-24(s0)
    80200ae0:	a0a5                	j	80200b48 <mini_vsnprintf+0x2fe>
    80200ae2:	f8043783          	ld	a5,-128(s0)
    80200ae6:	00878713          	addi	a4,a5,8
    80200aea:	f8e43023          	sd	a4,-128(s0)
    80200aee:	439c                	lw	a5,0(a5)
    80200af0:	0ff7f793          	zext.b	a5,a5
    80200af4:	2781                	sext.w	a5,a5
    80200af6:	fc040713          	addi	a4,s0,-64
    80200afa:	85ba                	mv	a1,a4
    80200afc:	853e                	mv	a0,a5
    80200afe:	c27ff0ef          	jal	80200724 <_putc>
    80200b02:	a099                	j	80200b48 <mini_vsnprintf+0x2fe>
    80200b04:	f8043783          	ld	a5,-128(s0)
    80200b08:	00878713          	addi	a4,a5,8
    80200b0c:	f8e43023          	sd	a4,-128(s0)
    80200b10:	639c                	ld	a5,0(a5)
    80200b12:	fef43023          	sd	a5,-32(s0)
    80200b16:	fe043503          	ld	a0,-32(s0)
    80200b1a:	9a3ff0ef          	jal	802004bc <mini_strlen>
    80200b1e:	87aa                	mv	a5,a0
    80200b20:	873e                	mv	a4,a5
    80200b22:	fc040793          	addi	a5,s0,-64
    80200b26:	863e                	mv	a2,a5
    80200b28:	85ba                	mv	a1,a4
    80200b2a:	fe043503          	ld	a0,-32(s0)
    80200b2e:	c61ff0ef          	jal	8020078e <_puts>
    80200b32:	a819                	j	80200b48 <mini_vsnprintf+0x2fe>
    80200b34:	fef44783          	lbu	a5,-17(s0)
    80200b38:	2781                	sext.w	a5,a5
    80200b3a:	fc040713          	addi	a4,s0,-64
    80200b3e:	85ba                	mv	a1,a4
    80200b40:	853e                	mv	a0,a5
    80200b42:	be3ff0ef          	jal	80200724 <_putc>
    80200b46:	0001                	nop
    80200b48:	f8843783          	ld	a5,-120(s0)
    80200b4c:	00178713          	addi	a4,a5,1
    80200b50:	f8e43423          	sd	a4,-120(s0)
    80200b54:	0007c783          	lbu	a5,0(a5)
    80200b58:	fef407a3          	sb	a5,-17(s0)
    80200b5c:	fef44783          	lbu	a5,-17(s0)
    80200b60:	0ff7f793          	zext.b	a5,a5
    80200b64:	d0079de3          	bnez	a5,8020087e <mini_vsnprintf+0x34>
    80200b68:	a031                	j	80200b74 <mini_vsnprintf+0x32a>
    80200b6a:	0001                	nop
    80200b6c:	a021                	j	80200b74 <mini_vsnprintf+0x32a>
    80200b6e:	0001                	nop
    80200b70:	a011                	j	80200b74 <mini_vsnprintf+0x32a>
    80200b72:	0001                	nop
    80200b74:	fc843703          	ld	a4,-56(s0)
    80200b78:	fc043783          	ld	a5,-64(s0)
    80200b7c:	40f707b3          	sub	a5,a4,a5
    80200b80:	2781                	sext.w	a5,a5
    80200b82:	853e                	mv	a0,a5
    80200b84:	70e6                	ld	ra,120(sp)
    80200b86:	7446                	ld	s0,112(sp)
    80200b88:	6109                	addi	sp,sp,128
    80200b8a:	8082                	ret

0000000080200b8c <_vprintk>:
    80200b8c:	7129                	addi	sp,sp,-320
    80200b8e:	fe06                	sd	ra,312(sp)
    80200b90:	fa22                	sd	s0,304(sp)
    80200b92:	0280                	addi	s0,sp,320
    80200b94:	eca43c23          	sd	a0,-296(s0)
    80200b98:	ecb43823          	sd	a1,-304(s0)
    80200b9c:	ecc43423          	sd	a2,-312(s0)
    80200ba0:	ed043783          	ld	a5,-304(s0)
    80200ba4:	fef43023          	sd	a5,-32(s0)
    80200ba8:	fe043703          	ld	a4,-32(s0)
    80200bac:	ee040793          	addi	a5,s0,-288
    80200bb0:	86ba                	mv	a3,a4
    80200bb2:	ed843603          	ld	a2,-296(s0)
    80200bb6:	10000593          	li	a1,256
    80200bba:	853e                	mv	a0,a5
    80200bbc:	c8fff0ef          	jal	8020084a <mini_vsnprintf>
    80200bc0:	87aa                	mv	a5,a0
    80200bc2:	fef42623          	sw	a5,-20(s0)
    80200bc6:	fec42783          	lw	a5,-20(s0)
    80200bca:	17c1                	addi	a5,a5,-16
    80200bcc:	97a2                	add	a5,a5,s0
    80200bce:	ee078823          	sb	zero,-272(a5)
    80200bd2:	ee040713          	addi	a4,s0,-288
    80200bd6:	ec843783          	ld	a5,-312(s0)
    80200bda:	853a                	mv	a0,a4
    80200bdc:	9782                	jalr	a5
    80200bde:	fec42783          	lw	a5,-20(s0)
    80200be2:	853e                	mv	a0,a5
    80200be4:	70f2                	ld	ra,312(sp)
    80200be6:	7452                	ld	s0,304(sp)
    80200be8:	6131                	addi	sp,sp,320
    80200bea:	8082                	ret

0000000080200bec <_vprints>:
    80200bec:	7129                	addi	sp,sp,-320
    80200bee:	fe06                	sd	ra,312(sp)
    80200bf0:	fa22                	sd	s0,304(sp)
    80200bf2:	0280                	addi	s0,sp,320
    80200bf4:	eca43c23          	sd	a0,-296(s0)
    80200bf8:	ecb43823          	sd	a1,-304(s0)
    80200bfc:	ecc43423          	sd	a2,-312(s0)
    80200c00:	ed043783          	ld	a5,-304(s0)
    80200c04:	fef43023          	sd	a5,-32(s0)
    80200c08:	fe043703          	ld	a4,-32(s0)
    80200c0c:	ee040793          	addi	a5,s0,-288
    80200c10:	86ba                	mv	a3,a4
    80200c12:	ed843603          	ld	a2,-296(s0)
    80200c16:	10000593          	li	a1,256
    80200c1a:	853e                	mv	a0,a5
    80200c1c:	c2fff0ef          	jal	8020084a <mini_vsnprintf>
    80200c20:	87aa                	mv	a5,a0
    80200c22:	fef42623          	sw	a5,-20(s0)
    80200c26:	fec42783          	lw	a5,-20(s0)
    80200c2a:	17c1                	addi	a5,a5,-16
    80200c2c:	97a2                	add	a5,a5,s0
    80200c2e:	ee078823          	sb	zero,-272(a5)
    80200c32:	ee040713          	addi	a4,s0,-288
    80200c36:	ec843783          	ld	a5,-312(s0)
    80200c3a:	853a                	mv	a0,a4
    80200c3c:	9782                	jalr	a5
    80200c3e:	fec42783          	lw	a5,-20(s0)
    80200c42:	853e                	mv	a0,a5
    80200c44:	70f2                	ld	ra,312(sp)
    80200c46:	7452                	ld	s0,304(sp)
    80200c48:	6131                	addi	sp,sp,320
    80200c4a:	8082                	ret

0000000080200c4c <vprintk>:
    80200c4c:	1101                	addi	sp,sp,-32
    80200c4e:	ec06                	sd	ra,24(sp)
    80200c50:	e822                	sd	s0,16(sp)
    80200c52:	1000                	addi	s0,sp,32
    80200c54:	fea43423          	sd	a0,-24(s0)
    80200c58:	feb43023          	sd	a1,-32(s0)
    80200c5c:	fffff617          	auipc	a2,0xfffff
    80200c60:	7cc60613          	addi	a2,a2,1996 # 80200428 <print>
    80200c64:	fe043583          	ld	a1,-32(s0)
    80200c68:	fe843503          	ld	a0,-24(s0)
    80200c6c:	f21ff0ef          	jal	80200b8c <_vprintk>
    80200c70:	87aa                	mv	a5,a0
    80200c72:	853e                	mv	a0,a5
    80200c74:	60e2                	ld	ra,24(sp)
    80200c76:	6442                	ld	s0,16(sp)
    80200c78:	6105                	addi	sp,sp,32
    80200c7a:	8082                	ret

0000000080200c7c <printk>:
    80200c7c:	7159                	addi	sp,sp,-112
    80200c7e:	f406                	sd	ra,40(sp)
    80200c80:	f022                	sd	s0,32(sp)
    80200c82:	1800                	addi	s0,sp,48
    80200c84:	fca43c23          	sd	a0,-40(s0)
    80200c88:	e40c                	sd	a1,8(s0)
    80200c8a:	e810                	sd	a2,16(s0)
    80200c8c:	ec14                	sd	a3,24(s0)
    80200c8e:	f018                	sd	a4,32(s0)
    80200c90:	f41c                	sd	a5,40(s0)
    80200c92:	03043823          	sd	a6,48(s0)
    80200c96:	03143c23          	sd	a7,56(s0)
    80200c9a:	fe042623          	sw	zero,-20(s0)
    80200c9e:	04040793          	addi	a5,s0,64
    80200ca2:	fcf43823          	sd	a5,-48(s0)
    80200ca6:	fd043783          	ld	a5,-48(s0)
    80200caa:	fc878793          	addi	a5,a5,-56
    80200cae:	fef43023          	sd	a5,-32(s0)
    80200cb2:	fe043783          	ld	a5,-32(s0)
    80200cb6:	85be                	mv	a1,a5
    80200cb8:	fd843503          	ld	a0,-40(s0)
    80200cbc:	f91ff0ef          	jal	80200c4c <vprintk>
    80200cc0:	87aa                	mv	a5,a0
    80200cc2:	fef42623          	sw	a5,-20(s0)
    80200cc6:	fec42783          	lw	a5,-20(s0)
    80200cca:	853e                	mv	a0,a5
    80200ccc:	70a2                	ld	ra,40(sp)
    80200cce:	7402                	ld	s0,32(sp)
    80200cd0:	6165                	addi	sp,sp,112
    80200cd2:	8082                	ret

0000000080200cd4 <_vprintk_port>:
    80200cd4:	7129                	addi	sp,sp,-320
    80200cd6:	fe06                	sd	ra,312(sp)
    80200cd8:	fa22                	sd	s0,304(sp)
    80200cda:	0280                	addi	s0,sp,320
    80200cdc:	eca43c23          	sd	a0,-296(s0)
    80200ce0:	ecb43823          	sd	a1,-304(s0)
    80200ce4:	ecc43423          	sd	a2,-312(s0)
    80200ce8:	ed043783          	ld	a5,-304(s0)
    80200cec:	fef43023          	sd	a5,-32(s0)
    80200cf0:	fe043703          	ld	a4,-32(s0)
    80200cf4:	ee040793          	addi	a5,s0,-288
    80200cf8:	86ba                	mv	a3,a4
    80200cfa:	ed843603          	ld	a2,-296(s0)
    80200cfe:	10000593          	li	a1,256
    80200d02:	853e                	mv	a0,a5
    80200d04:	b47ff0ef          	jal	8020084a <mini_vsnprintf>
    80200d08:	87aa                	mv	a5,a0
    80200d0a:	fef42623          	sw	a5,-20(s0)
    80200d0e:	fec42783          	lw	a5,-20(s0)
    80200d12:	17c1                	addi	a5,a5,-16
    80200d14:	97a2                	add	a5,a5,s0
    80200d16:	ee078823          	sb	zero,-272(a5)
    80200d1a:	fec42783          	lw	a5,-20(s0)
    80200d1e:	853e                	mv	a0,a5
    80200d20:	70f2                	ld	ra,312(sp)
    80200d22:	7452                	ld	s0,304(sp)
    80200d24:	6131                	addi	sp,sp,320
    80200d26:	8082                	ret

0000000080200d28 <vprintk_port>:
    80200d28:	1101                	addi	sp,sp,-32
    80200d2a:	ec06                	sd	ra,24(sp)
    80200d2c:	e822                	sd	s0,16(sp)
    80200d2e:	1000                	addi	s0,sp,32
    80200d30:	fea43423          	sd	a0,-24(s0)
    80200d34:	feb43023          	sd	a1,-32(s0)
    80200d38:	fffff617          	auipc	a2,0xfffff
    80200d3c:	6f060613          	addi	a2,a2,1776 # 80200428 <print>
    80200d40:	fe043583          	ld	a1,-32(s0)
    80200d44:	fe843503          	ld	a0,-24(s0)
    80200d48:	f8dff0ef          	jal	80200cd4 <_vprintk_port>
    80200d4c:	87aa                	mv	a5,a0
    80200d4e:	853e                	mv	a0,a5
    80200d50:	60e2                	ld	ra,24(sp)
    80200d52:	6442                	ld	s0,16(sp)
    80200d54:	6105                	addi	sp,sp,32
    80200d56:	8082                	ret

0000000080200d58 <printk_port>:
    80200d58:	7159                	addi	sp,sp,-112
    80200d5a:	f406                	sd	ra,40(sp)
    80200d5c:	f022                	sd	s0,32(sp)
    80200d5e:	1800                	addi	s0,sp,48
    80200d60:	fca43c23          	sd	a0,-40(s0)
    80200d64:	e40c                	sd	a1,8(s0)
    80200d66:	e810                	sd	a2,16(s0)
    80200d68:	ec14                	sd	a3,24(s0)
    80200d6a:	f018                	sd	a4,32(s0)
    80200d6c:	f41c                	sd	a5,40(s0)
    80200d6e:	03043823          	sd	a6,48(s0)
    80200d72:	03143c23          	sd	a7,56(s0)
    80200d76:	fe042623          	sw	zero,-20(s0)
    80200d7a:	04040793          	addi	a5,s0,64
    80200d7e:	fcf43823          	sd	a5,-48(s0)
    80200d82:	fd043783          	ld	a5,-48(s0)
    80200d86:	fc878793          	addi	a5,a5,-56
    80200d8a:	fef43023          	sd	a5,-32(s0)
    80200d8e:	fe043783          	ld	a5,-32(s0)
    80200d92:	85be                	mv	a1,a5
    80200d94:	fd843503          	ld	a0,-40(s0)
    80200d98:	f91ff0ef          	jal	80200d28 <vprintk_port>
    80200d9c:	87aa                	mv	a5,a0
    80200d9e:	fef42623          	sw	a5,-20(s0)
    80200da2:	fec42783          	lw	a5,-20(s0)
    80200da6:	853e                	mv	a0,a5
    80200da8:	70a2                	ld	ra,40(sp)
    80200daa:	7402                	ld	s0,32(sp)
    80200dac:	6165                	addi	sp,sp,112
    80200dae:	8082                	ret

0000000080200db0 <w_stvec>:
    80200db0:	1101                	addi	sp,sp,-32
    80200db2:	ec06                	sd	ra,24(sp)
    80200db4:	e822                	sd	s0,16(sp)
    80200db6:	1000                	addi	s0,sp,32
    80200db8:	fea43423          	sd	a0,-24(s0)
    80200dbc:	fe843783          	ld	a5,-24(s0)
    80200dc0:	10579073          	csrw	stvec,a5
    80200dc4:	0001                	nop
    80200dc6:	60e2                	ld	ra,24(sp)
    80200dc8:	6442                	ld	s0,16(sp)
    80200dca:	6105                	addi	sp,sp,32
    80200dcc:	8082                	ret

0000000080200dce <r_scause>:
    80200dce:	1101                	addi	sp,sp,-32
    80200dd0:	ec06                	sd	ra,24(sp)
    80200dd2:	e822                	sd	s0,16(sp)
    80200dd4:	1000                	addi	s0,sp,32
    80200dd6:	142027f3          	csrr	a5,scause
    80200dda:	fef43423          	sd	a5,-24(s0)
    80200dde:	fe843783          	ld	a5,-24(s0)
    80200de2:	853e                	mv	a0,a5
    80200de4:	60e2                	ld	ra,24(sp)
    80200de6:	6442                	ld	s0,16(sp)
    80200de8:	6105                	addi	sp,sp,32
    80200dea:	8082                	ret

0000000080200dec <r_stval>:
    80200dec:	1101                	addi	sp,sp,-32
    80200dee:	ec06                	sd	ra,24(sp)
    80200df0:	e822                	sd	s0,16(sp)
    80200df2:	1000                	addi	s0,sp,32
    80200df4:	143027f3          	csrr	a5,stval
    80200df8:	fef43423          	sd	a5,-24(s0)
    80200dfc:	fe843783          	ld	a5,-24(s0)
    80200e00:	853e                	mv	a0,a5
    80200e02:	60e2                	ld	ra,24(sp)
    80200e04:	6442                	ld	s0,16(sp)
    80200e06:	6105                	addi	sp,sp,32
    80200e08:	8082                	ret

0000000080200e0a <trap_init>:
    80200e0a:	1141                	addi	sp,sp,-16
    80200e0c:	e406                	sd	ra,8(sp)
    80200e0e:	e022                	sd	s0,0(sp)
    80200e10:	0800                	addi	s0,sp,16
    80200e12:	00000797          	auipc	a5,0x0
    80200e16:	12278793          	addi	a5,a5,290 # 80200f34 <__alltraps>
    80200e1a:	85be                	mv	a1,a5
    80200e1c:	00001517          	auipc	a0,0x1
    80200e20:	3dc50513          	addi	a0,a0,988 # 802021f8 <rodata_start+0x1f8>
    80200e24:	e59ff0ef          	jal	80200c7c <printk>
    80200e28:	00000797          	auipc	a5,0x0
    80200e2c:	10c78793          	addi	a5,a5,268 # 80200f34 <__alltraps>
    80200e30:	853e                	mv	a0,a5
    80200e32:	f7fff0ef          	jal	80200db0 <w_stvec>
    80200e36:	0001                	nop
    80200e38:	60a2                	ld	ra,8(sp)
    80200e3a:	6402                	ld	s0,0(sp)
    80200e3c:	0141                	addi	sp,sp,16
    80200e3e:	8082                	ret

0000000080200e40 <trap_handler>:
    80200e40:	7139                	addi	sp,sp,-64
    80200e42:	fc06                	sd	ra,56(sp)
    80200e44:	f822                	sd	s0,48(sp)
    80200e46:	0080                	addi	s0,sp,64
    80200e48:	fca43423          	sd	a0,-56(s0)
    80200e4c:	00001517          	auipc	a0,0x1
    80200e50:	3cc50513          	addi	a0,a0,972 # 80202218 <rodata_start+0x218>
    80200e54:	e29ff0ef          	jal	80200c7c <printk>
    80200e58:	f77ff0ef          	jal	80200dce <r_scause>
    80200e5c:	fea43423          	sd	a0,-24(s0)
    80200e60:	f8dff0ef          	jal	80200dec <r_stval>
    80200e64:	fea43023          	sd	a0,-32(s0)
    80200e68:	fe843583          	ld	a1,-24(s0)
    80200e6c:	00001517          	auipc	a0,0x1
    80200e70:	3d450513          	addi	a0,a0,980 # 80202240 <rodata_start+0x240>
    80200e74:	e09ff0ef          	jal	80200c7c <printk>
    80200e78:	fe043583          	ld	a1,-32(s0)
    80200e7c:	00001517          	auipc	a0,0x1
    80200e80:	3ec50513          	addi	a0,a0,1004 # 80202268 <rodata_start+0x268>
    80200e84:	df9ff0ef          	jal	80200c7c <printk>
    80200e88:	fe843703          	ld	a4,-24(s0)
    80200e8c:	6785                	lui	a5,0x1
    80200e8e:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80200e90:	8ff9                	and	a5,a5,a4
    80200e92:	fcf43c23          	sd	a5,-40(s0)
    80200e96:	fd843703          	ld	a4,-40(s0)
    80200e9a:	47a1                	li	a5,8
    80200e9c:	02f70263          	beq	a4,a5,80200ec0 <trap_handler+0x80>
    80200ea0:	fd843703          	ld	a4,-40(s0)
    80200ea4:	47a1                	li	a5,8
    80200ea6:	06e7e963          	bltu	a5,a4,80200f18 <trap_handler+0xd8>
    80200eaa:	fd843703          	ld	a4,-40(s0)
    80200eae:	4789                	li	a5,2
    80200eb0:	04f70863          	beq	a4,a5,80200f00 <trap_handler+0xc0>
    80200eb4:	fd843703          	ld	a4,-40(s0)
    80200eb8:	479d                	li	a5,7
    80200eba:	04f70963          	beq	a4,a5,80200f0c <trap_handler+0xcc>
    80200ebe:	a8a9                	j	80200f18 <trap_handler+0xd8>
    80200ec0:	fc843783          	ld	a5,-56(s0)
    80200ec4:	1087b783          	ld	a5,264(a5)
    80200ec8:	00478713          	addi	a4,a5,4
    80200ecc:	fc843783          	ld	a5,-56(s0)
    80200ed0:	10e7b423          	sd	a4,264(a5)
    80200ed4:	fc843783          	ld	a5,-56(s0)
    80200ed8:	67d8                	ld	a4,136(a5)
    80200eda:	fc843783          	ld	a5,-56(s0)
    80200ede:	6bac                	ld	a1,80(a5)
    80200ee0:	fc843783          	ld	a5,-56(s0)
    80200ee4:	6fb0                	ld	a2,88(a5)
    80200ee6:	fc843783          	ld	a5,-56(s0)
    80200eea:	73bc                	ld	a5,96(a5)
    80200eec:	86be                	mv	a3,a5
    80200eee:	853a                	mv	a0,a4
    80200ef0:	584000ef          	jal	80201474 <syscall>
    80200ef4:	87aa                	mv	a5,a0
    80200ef6:	873e                	mv	a4,a5
    80200ef8:	fc843783          	ld	a5,-56(s0)
    80200efc:	ebb8                	sd	a4,80(a5)
    80200efe:	a025                	j	80200f26 <trap_handler+0xe6>
    80200f00:	00001517          	auipc	a0,0x1
    80200f04:	39050513          	addi	a0,a0,912 # 80202290 <rodata_start+0x290>
    80200f08:	d7eff0ef          	jal	80200486 <panic>
    80200f0c:	00001517          	auipc	a0,0x1
    80200f10:	3ac50513          	addi	a0,a0,940 # 802022b8 <rodata_start+0x2b8>
    80200f14:	d72ff0ef          	jal	80200486 <panic>
    80200f18:	00001517          	auipc	a0,0x1
    80200f1c:	3d050513          	addi	a0,a0,976 # 802022e8 <rodata_start+0x2e8>
    80200f20:	d66ff0ef          	jal	80200486 <panic>
    80200f24:	0001                	nop
    80200f26:	fc843783          	ld	a5,-56(s0)
    80200f2a:	853e                	mv	a0,a5
    80200f2c:	70e2                	ld	ra,56(sp)
    80200f2e:	7442                	ld	s0,48(sp)
    80200f30:	6121                	addi	sp,sp,64
    80200f32:	8082                	ret

0000000080200f34 <__alltraps>:
    80200f34:	14011173          	csrrw	sp,sscratch,sp
    80200f38:	716d                	addi	sp,sp,-272
    80200f3a:	e406                	sd	ra,8(sp)
    80200f3c:	ec0e                	sd	gp,24(sp)
    80200f3e:	f416                	sd	t0,40(sp)
    80200f40:	f81a                	sd	t1,48(sp)
    80200f42:	fc1e                	sd	t2,56(sp)
    80200f44:	e0a2                	sd	s0,64(sp)
    80200f46:	e4a6                	sd	s1,72(sp)
    80200f48:	e8aa                	sd	a0,80(sp)
    80200f4a:	ecae                	sd	a1,88(sp)
    80200f4c:	f0b2                	sd	a2,96(sp)
    80200f4e:	f4b6                	sd	a3,104(sp)
    80200f50:	f8ba                	sd	a4,112(sp)
    80200f52:	fcbe                	sd	a5,120(sp)
    80200f54:	e142                	sd	a6,128(sp)
    80200f56:	e546                	sd	a7,136(sp)
    80200f58:	e94a                	sd	s2,144(sp)
    80200f5a:	ed4e                	sd	s3,152(sp)
    80200f5c:	f152                	sd	s4,160(sp)
    80200f5e:	f556                	sd	s5,168(sp)
    80200f60:	f95a                	sd	s6,176(sp)
    80200f62:	fd5e                	sd	s7,184(sp)
    80200f64:	e1e2                	sd	s8,192(sp)
    80200f66:	e5e6                	sd	s9,200(sp)
    80200f68:	e9ea                	sd	s10,208(sp)
    80200f6a:	edee                	sd	s11,216(sp)
    80200f6c:	f1f2                	sd	t3,224(sp)
    80200f6e:	f5f6                	sd	t4,232(sp)
    80200f70:	f9fa                	sd	t5,240(sp)
    80200f72:	fdfe                	sd	t6,248(sp)
    80200f74:	100022f3          	csrr	t0,sstatus
    80200f78:	14102373          	csrr	t1,sepc
    80200f7c:	e216                	sd	t0,256(sp)
    80200f7e:	e61a                	sd	t1,264(sp)
    80200f80:	140023f3          	csrr	t2,sscratch
    80200f84:	e81e                	sd	t2,16(sp)
    80200f86:	850a                	mv	a0,sp
    80200f88:	eb9ff0ef          	jal	80200e40 <trap_handler>

0000000080200f8c <__restore>:
    80200f8c:	812a                	mv	sp,a0
    80200f8e:	6292                	ld	t0,256(sp)
    80200f90:	6332                	ld	t1,264(sp)
    80200f92:	63c2                	ld	t2,16(sp)
    80200f94:	10029073          	csrw	sstatus,t0
    80200f98:	14131073          	csrw	sepc,t1
    80200f9c:	14039073          	csrw	sscratch,t2
    80200fa0:	60a2                	ld	ra,8(sp)
    80200fa2:	61e2                	ld	gp,24(sp)
    80200fa4:	72a2                	ld	t0,40(sp)
    80200fa6:	7342                	ld	t1,48(sp)
    80200fa8:	73e2                	ld	t2,56(sp)
    80200faa:	6406                	ld	s0,64(sp)
    80200fac:	64a6                	ld	s1,72(sp)
    80200fae:	6546                	ld	a0,80(sp)
    80200fb0:	65e6                	ld	a1,88(sp)
    80200fb2:	7606                	ld	a2,96(sp)
    80200fb4:	76a6                	ld	a3,104(sp)
    80200fb6:	7746                	ld	a4,112(sp)
    80200fb8:	77e6                	ld	a5,120(sp)
    80200fba:	680a                	ld	a6,128(sp)
    80200fbc:	68aa                	ld	a7,136(sp)
    80200fbe:	694a                	ld	s2,144(sp)
    80200fc0:	69ea                	ld	s3,152(sp)
    80200fc2:	7a0a                	ld	s4,160(sp)
    80200fc4:	7aaa                	ld	s5,168(sp)
    80200fc6:	7b4a                	ld	s6,176(sp)
    80200fc8:	7bea                	ld	s7,184(sp)
    80200fca:	6c0e                	ld	s8,192(sp)
    80200fcc:	6cae                	ld	s9,200(sp)
    80200fce:	6d4e                	ld	s10,208(sp)
    80200fd0:	6dee                	ld	s11,216(sp)
    80200fd2:	7e0e                	ld	t3,224(sp)
    80200fd4:	7eae                	ld	t4,232(sp)
    80200fd6:	7f4e                	ld	t5,240(sp)
    80200fd8:	7fee                	ld	t6,248(sp)
    80200fda:	6151                	addi	sp,sp,272
    80200fdc:	14011173          	csrrw	sp,sscratch,sp
    80200fe0:	10200073          	sret
	...

0000000080200fe6 <strlen>:
    80200fe6:	7179                	addi	sp,sp,-48
    80200fe8:	f406                	sd	ra,40(sp)
    80200fea:	f022                	sd	s0,32(sp)
    80200fec:	1800                	addi	s0,sp,48
    80200fee:	fca43c23          	sd	a0,-40(s0)
    80200ff2:	fe042623          	sw	zero,-20(s0)
    80200ff6:	a031                	j	80201002 <strlen+0x1c>
    80200ff8:	fec42783          	lw	a5,-20(s0)
    80200ffc:	2785                	addiw	a5,a5,1
    80200ffe:	fef42623          	sw	a5,-20(s0)
    80201002:	fec46783          	lwu	a5,-20(s0)
    80201006:	fd843703          	ld	a4,-40(s0)
    8020100a:	97ba                	add	a5,a5,a4
    8020100c:	00078783          	lb	a5,0(a5)
    80201010:	f7e5                	bnez	a5,80200ff8 <strlen+0x12>
    80201012:	fec42783          	lw	a5,-20(s0)
    80201016:	853e                	mv	a0,a5
    80201018:	70a2                	ld	ra,40(sp)
    8020101a:	7402                	ld	s0,32(sp)
    8020101c:	6145                	addi	sp,sp,48
    8020101e:	8082                	ret

0000000080201020 <memcpy>:
    80201020:	7139                	addi	sp,sp,-64
    80201022:	fc06                	sd	ra,56(sp)
    80201024:	f822                	sd	s0,48(sp)
    80201026:	0080                	addi	s0,sp,64
    80201028:	fca43c23          	sd	a0,-40(s0)
    8020102c:	fcb43823          	sd	a1,-48(s0)
    80201030:	fcc43423          	sd	a2,-56(s0)
    80201034:	fd843783          	ld	a5,-40(s0)
    80201038:	fef43423          	sd	a5,-24(s0)
    8020103c:	fd043783          	ld	a5,-48(s0)
    80201040:	fef43023          	sd	a5,-32(s0)
    80201044:	a00d                	j	80201066 <memcpy+0x46>
    80201046:	fe043703          	ld	a4,-32(s0)
    8020104a:	00170793          	addi	a5,a4,1
    8020104e:	fef43023          	sd	a5,-32(s0)
    80201052:	fe843783          	ld	a5,-24(s0)
    80201056:	00178693          	addi	a3,a5,1
    8020105a:	fed43423          	sd	a3,-24(s0)
    8020105e:	00074703          	lbu	a4,0(a4)
    80201062:	00e78023          	sb	a4,0(a5)
    80201066:	fc843783          	ld	a5,-56(s0)
    8020106a:	fff78713          	addi	a4,a5,-1
    8020106e:	fce43423          	sd	a4,-56(s0)
    80201072:	fbf1                	bnez	a5,80201046 <memcpy+0x26>
    80201074:	fd843783          	ld	a5,-40(s0)
    80201078:	853e                	mv	a0,a5
    8020107a:	70e2                	ld	ra,56(sp)
    8020107c:	7442                	ld	s0,48(sp)
    8020107e:	6121                	addi	sp,sp,64
    80201080:	8082                	ret

0000000080201082 <memcmp>:
    80201082:	715d                	addi	sp,sp,-80
    80201084:	e486                	sd	ra,72(sp)
    80201086:	e0a2                	sd	s0,64(sp)
    80201088:	0880                	addi	s0,sp,80
    8020108a:	fca43423          	sd	a0,-56(s0)
    8020108e:	fcb43023          	sd	a1,-64(s0)
    80201092:	fac43c23          	sd	a2,-72(s0)
    80201096:	fc843783          	ld	a5,-56(s0)
    8020109a:	fef43423          	sd	a5,-24(s0)
    8020109e:	fc043783          	ld	a5,-64(s0)
    802010a2:	fef43023          	sd	a5,-32(s0)
    802010a6:	a099                	j	802010ec <memcmp+0x6a>
    802010a8:	fe843783          	ld	a5,-24(s0)
    802010ac:	0007c783          	lbu	a5,0(a5)
    802010b0:	0007871b          	sext.w	a4,a5
    802010b4:	fe043783          	ld	a5,-32(s0)
    802010b8:	0007c783          	lbu	a5,0(a5)
    802010bc:	2781                	sext.w	a5,a5
    802010be:	40f707bb          	subw	a5,a4,a5
    802010c2:	fcf42e23          	sw	a5,-36(s0)
    802010c6:	fdc42783          	lw	a5,-36(s0)
    802010ca:	2781                	sext.w	a5,a5
    802010cc:	e785                	bnez	a5,802010f4 <memcmp+0x72>
    802010ce:	fe843783          	ld	a5,-24(s0)
    802010d2:	0785                	addi	a5,a5,1
    802010d4:	fef43423          	sd	a5,-24(s0)
    802010d8:	fe043783          	ld	a5,-32(s0)
    802010dc:	0785                	addi	a5,a5,1
    802010de:	fef43023          	sd	a5,-32(s0)
    802010e2:	fb843783          	ld	a5,-72(s0)
    802010e6:	17fd                	addi	a5,a5,-1
    802010e8:	faf43c23          	sd	a5,-72(s0)
    802010ec:	fb843783          	ld	a5,-72(s0)
    802010f0:	ffc5                	bnez	a5,802010a8 <memcmp+0x26>
    802010f2:	a011                	j	802010f6 <memcmp+0x74>
    802010f4:	0001                	nop
    802010f6:	fdc42783          	lw	a5,-36(s0)
    802010fa:	853e                	mv	a0,a5
    802010fc:	60a6                	ld	ra,72(sp)
    802010fe:	6406                	ld	s0,64(sp)
    80201100:	6161                	addi	sp,sp,80
    80201102:	8082                	ret

0000000080201104 <memmove>:
    80201104:	7139                	addi	sp,sp,-64
    80201106:	fc06                	sd	ra,56(sp)
    80201108:	f822                	sd	s0,48(sp)
    8020110a:	0080                	addi	s0,sp,64
    8020110c:	fca43c23          	sd	a0,-40(s0)
    80201110:	fcb43823          	sd	a1,-48(s0)
    80201114:	87b2                	mv	a5,a2
    80201116:	fcf42623          	sw	a5,-52(s0)
    8020111a:	fd843783          	ld	a5,-40(s0)
    8020111e:	fef43423          	sd	a5,-24(s0)
    80201122:	a035                	j	8020114e <memmove+0x4a>
    80201124:	fd043703          	ld	a4,-48(s0)
    80201128:	00170793          	addi	a5,a4,1
    8020112c:	fcf43823          	sd	a5,-48(s0)
    80201130:	fe843783          	ld	a5,-24(s0)
    80201134:	00178693          	addi	a3,a5,1
    80201138:	fed43423          	sd	a3,-24(s0)
    8020113c:	00074703          	lbu	a4,0(a4)
    80201140:	00e78023          	sb	a4,0(a5)
    80201144:	fcc42783          	lw	a5,-52(s0)
    80201148:	37fd                	addiw	a5,a5,-1
    8020114a:	fcf42623          	sw	a5,-52(s0)
    8020114e:	fcc42783          	lw	a5,-52(s0)
    80201152:	2781                	sext.w	a5,a5
    80201154:	fbe1                	bnez	a5,80201124 <memmove+0x20>
    80201156:	0001                	nop
    80201158:	0001                	nop
    8020115a:	70e2                	ld	ra,56(sp)
    8020115c:	7442                	ld	s0,48(sp)
    8020115e:	6121                	addi	sp,sp,64
    80201160:	8082                	ret

0000000080201162 <memset>:
    80201162:	7179                	addi	sp,sp,-48
    80201164:	f406                	sd	ra,40(sp)
    80201166:	f022                	sd	s0,32(sp)
    80201168:	1800                	addi	s0,sp,48
    8020116a:	fca43c23          	sd	a0,-40(s0)
    8020116e:	87ae                	mv	a5,a1
    80201170:	8732                	mv	a4,a2
    80201172:	fcf40ba3          	sb	a5,-41(s0)
    80201176:	87ba                	mv	a5,a4
    80201178:	fcf42823          	sw	a5,-48(s0)
    8020117c:	fd843783          	ld	a5,-40(s0)
    80201180:	fef43423          	sd	a5,-24(s0)
    80201184:	a005                	j	802011a4 <memset+0x42>
    80201186:	fe843783          	ld	a5,-24(s0)
    8020118a:	00178713          	addi	a4,a5,1
    8020118e:	fee43423          	sd	a4,-24(s0)
    80201192:	fd744703          	lbu	a4,-41(s0)
    80201196:	00e78023          	sb	a4,0(a5)
    8020119a:	fd042783          	lw	a5,-48(s0)
    8020119e:	37fd                	addiw	a5,a5,-1
    802011a0:	fcf42823          	sw	a5,-48(s0)
    802011a4:	fd042783          	lw	a5,-48(s0)
    802011a8:	2781                	sext.w	a5,a5
    802011aa:	fff1                	bnez	a5,80201186 <memset+0x24>
    802011ac:	fd843783          	ld	a5,-40(s0)
    802011b0:	853e                	mv	a0,a5
    802011b2:	70a2                	ld	ra,40(sp)
    802011b4:	7402                	ld	s0,32(sp)
    802011b6:	6145                	addi	sp,sp,48
    802011b8:	8082                	ret

00000000802011ba <strcmp>:
    802011ba:	1101                	addi	sp,sp,-32
    802011bc:	ec06                	sd	ra,24(sp)
    802011be:	e822                	sd	s0,16(sp)
    802011c0:	1000                	addi	s0,sp,32
    802011c2:	fea43423          	sd	a0,-24(s0)
    802011c6:	feb43023          	sd	a1,-32(s0)
    802011ca:	a091                	j	8020120e <strcmp+0x54>
    802011cc:	fe843783          	ld	a5,-24(s0)
    802011d0:	00078703          	lb	a4,0(a5)
    802011d4:	fe043783          	ld	a5,-32(s0)
    802011d8:	00078783          	lb	a5,0(a5)
    802011dc:	00f70f63          	beq	a4,a5,802011fa <strcmp+0x40>
    802011e0:	fe843783          	ld	a5,-24(s0)
    802011e4:	00078783          	lb	a5,0(a5)
    802011e8:	873e                	mv	a4,a5
    802011ea:	fe043783          	ld	a5,-32(s0)
    802011ee:	00078783          	lb	a5,0(a5)
    802011f2:	40f707bb          	subw	a5,a4,a5
    802011f6:	2781                	sext.w	a5,a5
    802011f8:	a089                	j	8020123a <strcmp+0x80>
    802011fa:	fe843783          	ld	a5,-24(s0)
    802011fe:	0785                	addi	a5,a5,1
    80201200:	fef43423          	sd	a5,-24(s0)
    80201204:	fe043783          	ld	a5,-32(s0)
    80201208:	0785                	addi	a5,a5,1
    8020120a:	fef43023          	sd	a5,-32(s0)
    8020120e:	fe843783          	ld	a5,-24(s0)
    80201212:	00078783          	lb	a5,0(a5)
    80201216:	c791                	beqz	a5,80201222 <strcmp+0x68>
    80201218:	fe043783          	ld	a5,-32(s0)
    8020121c:	00078783          	lb	a5,0(a5)
    80201220:	f7d5                	bnez	a5,802011cc <strcmp+0x12>
    80201222:	fe843783          	ld	a5,-24(s0)
    80201226:	00078783          	lb	a5,0(a5)
    8020122a:	873e                	mv	a4,a5
    8020122c:	fe043783          	ld	a5,-32(s0)
    80201230:	00078783          	lb	a5,0(a5)
    80201234:	40f707bb          	subw	a5,a4,a5
    80201238:	2781                	sext.w	a5,a5
    8020123a:	853e                	mv	a0,a5
    8020123c:	60e2                	ld	ra,24(sp)
    8020123e:	6442                	ld	s0,16(sp)
    80201240:	6105                	addi	sp,sp,32
    80201242:	8082                	ret

0000000080201244 <ifsubstr>:
    80201244:	7139                	addi	sp,sp,-64
    80201246:	fc06                	sd	ra,56(sp)
    80201248:	f822                	sd	s0,48(sp)
    8020124a:	0080                	addi	s0,sp,64
    8020124c:	fca43c23          	sd	a0,-40(s0)
    80201250:	fcb43823          	sd	a1,-48(s0)
    80201254:	87b2                	mv	a5,a2
    80201256:	fcf42623          	sw	a5,-52(s0)
    8020125a:	fd043503          	ld	a0,-48(s0)
    8020125e:	d89ff0ef          	jal	80200fe6 <strlen>
    80201262:	87aa                	mv	a5,a0
    80201264:	fef42023          	sw	a5,-32(s0)
    80201268:	fe042623          	sw	zero,-20(s0)
    8020126c:	fe042423          	sw	zero,-24(s0)
    80201270:	fe042223          	sw	zero,-28(s0)
    80201274:	a04d                	j	80201316 <ifsubstr+0xd2>
    80201276:	fec42783          	lw	a5,-20(s0)
    8020127a:	0007871b          	sext.w	a4,a5
    8020127e:	4785                	li	a5,1
    80201280:	06f71063          	bne	a4,a5,802012e0 <ifsubstr+0x9c>
    80201284:	fe842783          	lw	a5,-24(s0)
    80201288:	0017871b          	addiw	a4,a5,1
    8020128c:	fee42423          	sw	a4,-24(s0)
    80201290:	1782                	slli	a5,a5,0x20
    80201292:	9381                	srli	a5,a5,0x20
    80201294:	fd843703          	ld	a4,-40(s0)
    80201298:	97ba                	add	a5,a5,a4
    8020129a:	0007c683          	lbu	a3,0(a5)
    8020129e:	fe442783          	lw	a5,-28(s0)
    802012a2:	0017871b          	addiw	a4,a5,1
    802012a6:	fee42223          	sw	a4,-28(s0)
    802012aa:	1782                	slli	a5,a5,0x20
    802012ac:	9381                	srli	a5,a5,0x20
    802012ae:	fd043703          	ld	a4,-48(s0)
    802012b2:	97ba                	add	a5,a5,a4
    802012b4:	0007c783          	lbu	a5,0(a5)
    802012b8:	8736                	mv	a4,a3
    802012ba:	00f71d63          	bne	a4,a5,802012d4 <ifsubstr+0x90>
    802012be:	fe442783          	lw	a5,-28(s0)
    802012c2:	873e                	mv	a4,a5
    802012c4:	fe042783          	lw	a5,-32(s0)
    802012c8:	2701                	sext.w	a4,a4
    802012ca:	2781                	sext.w	a5,a5
    802012cc:	04f71563          	bne	a4,a5,80201316 <ifsubstr+0xd2>
    802012d0:	4785                	li	a5,1
    802012d2:	a8bd                	j	80201350 <ifsubstr+0x10c>
    802012d4:	fe042223          	sw	zero,-28(s0)
    802012d8:	4785                	li	a5,1
    802012da:	fef42623          	sw	a5,-20(s0)
    802012de:	a825                	j	80201316 <ifsubstr+0xd2>
    802012e0:	fe842783          	lw	a5,-24(s0)
    802012e4:	0017871b          	addiw	a4,a5,1
    802012e8:	fee42423          	sw	a4,-24(s0)
    802012ec:	1782                	slli	a5,a5,0x20
    802012ee:	9381                	srli	a5,a5,0x20
    802012f0:	fd843703          	ld	a4,-40(s0)
    802012f4:	97ba                	add	a5,a5,a4
    802012f6:	0007c703          	lbu	a4,0(a5)
    802012fa:	fd043783          	ld	a5,-48(s0)
    802012fe:	0007c783          	lbu	a5,0(a5)
    80201302:	00f71a63          	bne	a4,a5,80201316 <ifsubstr+0xd2>
    80201306:	4785                	li	a5,1
    80201308:	fef42623          	sw	a5,-20(s0)
    8020130c:	fe442783          	lw	a5,-28(s0)
    80201310:	2785                	addiw	a5,a5,1
    80201312:	fef42223          	sw	a5,-28(s0)
    80201316:	fcc42783          	lw	a5,-52(s0)
    8020131a:	fe842703          	lw	a4,-24(s0)
    8020131e:	2701                	sext.w	a4,a4
    80201320:	00f77b63          	bgeu	a4,a5,80201336 <ifsubstr+0xf2>
    80201324:	fe442783          	lw	a5,-28(s0)
    80201328:	873e                	mv	a4,a5
    8020132a:	fe042783          	lw	a5,-32(s0)
    8020132e:	2701                	sext.w	a4,a4
    80201330:	2781                	sext.w	a5,a5
    80201332:	f4f762e3          	bltu	a4,a5,80201276 <ifsubstr+0x32>
    80201336:	fe442783          	lw	a5,-28(s0)
    8020133a:	873e                	mv	a4,a5
    8020133c:	fe042783          	lw	a5,-32(s0)
    80201340:	2701                	sext.w	a4,a4
    80201342:	2781                	sext.w	a5,a5
    80201344:	00f77463          	bgeu	a4,a5,8020134c <ifsubstr+0x108>
    80201348:	4785                	li	a5,1
    8020134a:	a019                	j	80201350 <ifsubstr+0x10c>
    8020134c:	fec42783          	lw	a5,-20(s0)
    80201350:	853e                	mv	a0,a5
    80201352:	70e2                	ld	ra,56(sp)
    80201354:	7442                	ld	s0,48(sp)
    80201356:	6121                	addi	sp,sp,64
    80201358:	8082                	ret

000000008020135a <strcpy>:
    8020135a:	7179                	addi	sp,sp,-48
    8020135c:	f406                	sd	ra,40(sp)
    8020135e:	f022                	sd	s0,32(sp)
    80201360:	1800                	addi	s0,sp,48
    80201362:	fca43c23          	sd	a0,-40(s0)
    80201366:	fcb43823          	sd	a1,-48(s0)
    8020136a:	fd843783          	ld	a5,-40(s0)
    8020136e:	fef43423          	sd	a5,-24(s0)
    80201372:	a00d                	j	80201394 <strcpy+0x3a>
    80201374:	fd043703          	ld	a4,-48(s0)
    80201378:	00170793          	addi	a5,a4,1
    8020137c:	fcf43823          	sd	a5,-48(s0)
    80201380:	fe843783          	ld	a5,-24(s0)
    80201384:	00178693          	addi	a3,a5,1
    80201388:	fed43423          	sd	a3,-24(s0)
    8020138c:	00070703          	lb	a4,0(a4)
    80201390:	00e78023          	sb	a4,0(a5)
    80201394:	fd043783          	ld	a5,-48(s0)
    80201398:	00078783          	lb	a5,0(a5)
    8020139c:	ffe1                	bnez	a5,80201374 <strcpy+0x1a>
    8020139e:	fe843783          	ld	a5,-24(s0)
    802013a2:	00078023          	sb	zero,0(a5)
    802013a6:	fd843783          	ld	a5,-40(s0)
    802013aa:	853e                	mv	a0,a5
    802013ac:	70a2                	ld	ra,40(sp)
    802013ae:	7402                	ld	s0,32(sp)
    802013b0:	6145                	addi	sp,sp,48
    802013b2:	8082                	ret

00000000802013b4 <strcat>:
    802013b4:	7179                	addi	sp,sp,-48
    802013b6:	f406                	sd	ra,40(sp)
    802013b8:	f022                	sd	s0,32(sp)
    802013ba:	1800                	addi	s0,sp,48
    802013bc:	fca43c23          	sd	a0,-40(s0)
    802013c0:	fcb43823          	sd	a1,-48(s0)
    802013c4:	fd843783          	ld	a5,-40(s0)
    802013c8:	fef43423          	sd	a5,-24(s0)
    802013cc:	a031                	j	802013d8 <strcat+0x24>
    802013ce:	fe843783          	ld	a5,-24(s0)
    802013d2:	0785                	addi	a5,a5,1
    802013d4:	fef43423          	sd	a5,-24(s0)
    802013d8:	fe843783          	ld	a5,-24(s0)
    802013dc:	00078783          	lb	a5,0(a5)
    802013e0:	f7fd                	bnez	a5,802013ce <strcat+0x1a>
    802013e2:	a00d                	j	80201404 <strcat+0x50>
    802013e4:	fd043703          	ld	a4,-48(s0)
    802013e8:	00170793          	addi	a5,a4,1
    802013ec:	fcf43823          	sd	a5,-48(s0)
    802013f0:	fe843783          	ld	a5,-24(s0)
    802013f4:	00178693          	addi	a3,a5,1
    802013f8:	fed43423          	sd	a3,-24(s0)
    802013fc:	00070703          	lb	a4,0(a4)
    80201400:	00e78023          	sb	a4,0(a5)
    80201404:	fd043783          	ld	a5,-48(s0)
    80201408:	00078783          	lb	a5,0(a5)
    8020140c:	ffe1                	bnez	a5,802013e4 <strcat+0x30>
    8020140e:	fd843783          	ld	a5,-40(s0)
    80201412:	853e                	mv	a0,a5
    80201414:	70a2                	ld	ra,40(sp)
    80201416:	7402                	ld	s0,32(sp)
    80201418:	6145                	addi	sp,sp,48
    8020141a:	8082                	ret

000000008020141c <sys_write>:
    8020141c:	1101                	addi	sp,sp,-32
    8020141e:	ec06                	sd	ra,24(sp)
    80201420:	e822                	sd	s0,16(sp)
    80201422:	1000                	addi	s0,sp,32
    80201424:	fea43423          	sd	a0,-24(s0)
    80201428:	fe843583          	ld	a1,-24(s0)
    8020142c:	00001517          	auipc	a0,0x1
    80201430:	ed450513          	addi	a0,a0,-300 # 80202300 <rodata_start+0x300>
    80201434:	849ff0ef          	jal	80200c7c <printk>
    80201438:	4781                	li	a5,0
    8020143a:	853e                	mv	a0,a5
    8020143c:	60e2                	ld	ra,24(sp)
    8020143e:	6442                	ld	s0,16(sp)
    80201440:	6105                	addi	sp,sp,32
    80201442:	8082                	ret

0000000080201444 <sys_exit>:
    80201444:	1101                	addi	sp,sp,-32
    80201446:	ec06                	sd	ra,24(sp)
    80201448:	e822                	sd	s0,16(sp)
    8020144a:	1000                	addi	s0,sp,32
    8020144c:	fea43423          	sd	a0,-24(s0)
    80201450:	fe843583          	ld	a1,-24(s0)
    80201454:	00001517          	auipc	a0,0x1
    80201458:	eb450513          	addi	a0,a0,-332 # 80202308 <rodata_start+0x308>
    8020145c:	821ff0ef          	jal	80200c7c <printk>
    80201460:	c05fe0ef          	jal	80200064 <load_app>
    80201464:	d2dfe0ef          	jal	80200190 <run_app>
    80201468:	4781                	li	a5,0
    8020146a:	853e                	mv	a0,a5
    8020146c:	60e2                	ld	ra,24(sp)
    8020146e:	6442                	ld	s0,16(sp)
    80201470:	6105                	addi	sp,sp,32
    80201472:	8082                	ret

0000000080201474 <syscall>:
    80201474:	7139                	addi	sp,sp,-64
    80201476:	fc06                	sd	ra,56(sp)
    80201478:	f822                	sd	s0,48(sp)
    8020147a:	0080                	addi	s0,sp,64
    8020147c:	fca43c23          	sd	a0,-40(s0)
    80201480:	fcb43823          	sd	a1,-48(s0)
    80201484:	fcc43423          	sd	a2,-56(s0)
    80201488:	fcd43023          	sd	a3,-64(s0)
    8020148c:	fd843703          	ld	a4,-40(s0)
    80201490:	4785                	li	a5,1
    80201492:	00f70863          	beq	a4,a5,802014a2 <syscall+0x2e>
    80201496:	fd843703          	ld	a4,-40(s0)
    8020149a:	4789                	li	a5,2
    8020149c:	00f70c63          	beq	a4,a5,802014b4 <syscall+0x40>
    802014a0:	a015                	j	802014c4 <syscall+0x50>
    802014a2:	fd043783          	ld	a5,-48(s0)
    802014a6:	853e                	mv	a0,a5
    802014a8:	f75ff0ef          	jal	8020141c <sys_write>
    802014ac:	87aa                	mv	a5,a0
    802014ae:	fef43423          	sd	a5,-24(s0)
    802014b2:	a805                	j	802014e2 <syscall+0x6e>
    802014b4:	fd043503          	ld	a0,-48(s0)
    802014b8:	f8dff0ef          	jal	80201444 <sys_exit>
    802014bc:	87aa                	mv	a5,a0
    802014be:	fef43423          	sd	a5,-24(s0)
    802014c2:	a005                	j	802014e2 <syscall+0x6e>
    802014c4:	fd843583          	ld	a1,-40(s0)
    802014c8:	00001517          	auipc	a0,0x1
    802014cc:	e6050513          	addi	a0,a0,-416 # 80202328 <rodata_start+0x328>
    802014d0:	facff0ef          	jal	80200c7c <printk>
    802014d4:	00001517          	auipc	a0,0x1
    802014d8:	e7450513          	addi	a0,a0,-396 # 80202348 <rodata_start+0x348>
    802014dc:	fabfe0ef          	jal	80200486 <panic>
    802014e0:	0001                	nop
    802014e2:	fe843783          	ld	a5,-24(s0)
    802014e6:	853e                	mv	a0,a5
    802014e8:	70e2                	ld	ra,56(sp)
    802014ea:	7442                	ld	s0,48(sp)
    802014ec:	6121                	addi	sp,sp,64
    802014ee:	8082                	ret
