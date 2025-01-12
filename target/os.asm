
../target/os.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	00014117          	auipc	sp,0x14
    80200004:	00010113          	mv	sp,sp
    80200008:	2ee0006f          	j	802002f6 <main>
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
    80200074:	fcf43823          	sd	a5,-48(s0)
    80200078:	fd043783          	ld	a5,-48(s0)
    8020007c:	639c                	ld	a5,0(a5)
    8020007e:	fcf43423          	sd	a5,-56(s0)
    80200082:	fd043783          	ld	a5,-48(s0)
    80200086:	07a1                	addi	a5,a5,8
    80200088:	fcf43823          	sd	a5,-48(s0)
    8020008c:	0000100f          	fence.i
    80200090:	fe043423          	sd	zero,-24(s0)
    80200094:	a875                	j	80200150 <load_app+0xec>
    80200096:	fe843703          	ld	a4,-24(s0)
    8020009a:	6791                	lui	a5,0x4
    8020009c:	02078793          	addi	a5,a5,32 # 4020 <n+0x4000>
    802000a0:	97ba                	add	a5,a5,a4
    802000a2:	07c6                	slli	a5,a5,0x11
    802000a4:	fef43023          	sd	a5,-32(s0)
    802000a8:	fe843783          	ld	a5,-24(s0)
    802000ac:	0792                	slli	a5,a5,0x4
    802000ae:	fd043703          	ld	a4,-48(s0)
    802000b2:	97ba                	add	a5,a5,a4
    802000b4:	6390                	ld	a2,0(a5)
    802000b6:	fe843783          	ld	a5,-24(s0)
    802000ba:	0792                	slli	a5,a5,0x4
    802000bc:	07a1                	addi	a5,a5,8
    802000be:	fd043703          	ld	a4,-48(s0)
    802000c2:	97ba                	add	a5,a5,a4
    802000c4:	639c                	ld	a5,0(a5)
    802000c6:	86be                	mv	a3,a5
    802000c8:	fe843583          	ld	a1,-24(s0)
    802000cc:	00002517          	auipc	a0,0x2
    802000d0:	f3450513          	addi	a0,a0,-204 # 80202000 <rodata_start>
    802000d4:	395000ef          	jal	80200c68 <printk>
    802000d8:	fe843783          	ld	a5,-24(s0)
    802000dc:	0792                	slli	a5,a5,0x4
    802000de:	fd043703          	ld	a4,-48(s0)
    802000e2:	97ba                	add	a5,a5,a4
    802000e4:	639c                	ld	a5,0(a5)
    802000e6:	fcf43c23          	sd	a5,-40(s0)
    802000ea:	a01d                	j	80200110 <load_app+0xac>
    802000ec:	fd843783          	ld	a5,-40(s0)
    802000f0:	0007c703          	lbu	a4,0(a5)
    802000f4:	fe043783          	ld	a5,-32(s0)
    802000f8:	00e78023          	sb	a4,0(a5)
    802000fc:	fd843783          	ld	a5,-40(s0)
    80200100:	0785                	addi	a5,a5,1
    80200102:	fcf43c23          	sd	a5,-40(s0)
    80200106:	fe043783          	ld	a5,-32(s0)
    8020010a:	0785                	addi	a5,a5,1
    8020010c:	fef43023          	sd	a5,-32(s0)
    80200110:	fe843783          	ld	a5,-24(s0)
    80200114:	0792                	slli	a5,a5,0x4
    80200116:	07a1                	addi	a5,a5,8
    80200118:	fd043703          	ld	a4,-48(s0)
    8020011c:	97ba                	add	a5,a5,a4
    8020011e:	6398                	ld	a4,0(a5)
    80200120:	fd843783          	ld	a5,-40(s0)
    80200124:	fcf774e3          	bgeu	a4,a5,802000ec <load_app+0x88>
    80200128:	fe043783          	ld	a5,-32(s0)
    8020012c:	17fd                	addi	a5,a5,-1
    8020012e:	fef43023          	sd	a5,-32(s0)
    80200132:	fe043603          	ld	a2,-32(s0)
    80200136:	fe843583          	ld	a1,-24(s0)
    8020013a:	00002517          	auipc	a0,0x2
    8020013e:	eee50513          	addi	a0,a0,-274 # 80202028 <rodata_start+0x28>
    80200142:	327000ef          	jal	80200c68 <printk>
    80200146:	fe843783          	ld	a5,-24(s0)
    8020014a:	0785                	addi	a5,a5,1
    8020014c:	fef43423          	sd	a5,-24(s0)
    80200150:	fe843703          	ld	a4,-24(s0)
    80200154:	fc843783          	ld	a5,-56(s0)
    80200158:	f2f76fe3          	bltu	a4,a5,80200096 <load_app+0x32>
    8020015c:	0001                	nop
    8020015e:	0001                	nop
    80200160:	70e2                	ld	ra,56(sp)
    80200162:	7442                	ld	s0,48(sp)
    80200164:	6121                	addi	sp,sp,64
    80200166:	8082                	ret

0000000080200168 <run_app>:
    80200168:	1101                	addi	sp,sp,-32
    8020016a:	ec06                	sd	ra,24(sp)
    8020016c:	e822                	sd	s0,16(sp)
    8020016e:	1000                	addi	s0,sp,32
    80200170:	00014797          	auipc	a5,0x14
    80200174:	e9878793          	addi	a5,a5,-360 # 80214008 <current_app>
    80200178:	6398                	ld	a4,0(a5)
    8020017a:	00003797          	auipc	a5,0x3
    8020017e:	e8678793          	addi	a5,a5,-378 # 80203000 <_num_app>
    80200182:	639c                	ld	a5,0(a5)
    80200184:	863e                	mv	a2,a5
    80200186:	85ba                	mv	a1,a4
    80200188:	00002517          	auipc	a0,0x2
    8020018c:	ed050513          	addi	a0,a0,-304 # 80202058 <rodata_start+0x58>
    80200190:	2d9000ef          	jal	80200c68 <printk>
    80200194:	00003797          	auipc	a5,0x3
    80200198:	e6c78793          	addi	a5,a5,-404 # 80203000 <_num_app>
    8020019c:	6398                	ld	a4,0(a5)
    8020019e:	00014797          	auipc	a5,0x14
    802001a2:	e6a78793          	addi	a5,a5,-406 # 80214008 <current_app>
    802001a6:	639c                	ld	a5,0(a5)
    802001a8:	00e7e863          	bltu	a5,a4,802001b8 <run_app+0x50>
    802001ac:	00002517          	auipc	a0,0x2
    802001b0:	edc50513          	addi	a0,a0,-292 # 80202088 <rodata_start+0x88>
    802001b4:	2ba000ef          	jal	8020046e <panic>
    802001b8:	e5bff0ef          	jal	80200012 <r_sstatus>
    802001bc:	fea43423          	sd	a0,-24(s0)
    802001c0:	00014797          	auipc	a5,0x14
    802001c4:	e4878793          	addi	a5,a5,-440 # 80214008 <current_app>
    802001c8:	6398                	ld	a4,0(a5)
    802001ca:	6791                	lui	a5,0x4
    802001cc:	02078793          	addi	a5,a5,32 # 4020 <n+0x4000>
    802001d0:	97ba                	add	a5,a5,a4
    802001d2:	01179713          	slli	a4,a5,0x11
    802001d6:	00015797          	auipc	a5,0x15
    802001da:	e3a78793          	addi	a5,a5,-454 # 80215010 <tc.0>
    802001de:	10e7b423          	sd	a4,264(a5)
    802001e2:	00014797          	auipc	a5,0x14
    802001e6:	e2678793          	addi	a5,a5,-474 # 80214008 <current_app>
    802001ea:	639c                	ld	a5,0(a5)
    802001ec:	00178713          	addi	a4,a5,1
    802001f0:	00014797          	auipc	a5,0x14
    802001f4:	e1878793          	addi	a5,a5,-488 # 80214008 <current_app>
    802001f8:	e398                	sd	a4,0(a5)
    802001fa:	fe843783          	ld	a5,-24(s0)
    802001fe:	eff7f713          	andi	a4,a5,-257
    80200202:	00015797          	auipc	a5,0x15
    80200206:	e0e78793          	addi	a5,a5,-498 # 80215010 <tc.0>
    8020020a:	10e7b023          	sd	a4,256(a5)
    8020020e:	e3dff0ef          	jal	8020004a <get_user_stack_top>
    80200212:	872a                	mv	a4,a0
    80200214:	00015797          	auipc	a5,0x15
    80200218:	dfc78793          	addi	a5,a5,-516 # 80215010 <tc.0>
    8020021c:	eb98                	sd	a4,16(a5)
    8020021e:	00015797          	auipc	a5,0x15
    80200222:	df278793          	addi	a5,a5,-526 # 80215010 <tc.0>
    80200226:	6b9c                	ld	a5,16(a5)
    80200228:	85be                	mv	a1,a5
    8020022a:	00002517          	auipc	a0,0x2
    8020022e:	e7e50513          	addi	a0,a0,-386 # 802020a8 <rodata_start+0xa8>
    80200232:	237000ef          	jal	80200c68 <printk>
    80200236:	dfbff0ef          	jal	80200030 <get_kernel_stack_top>
    8020023a:	87aa                	mv	a5,a0
    8020023c:	ef078793          	addi	a5,a5,-272
    80200240:	fef43023          	sd	a5,-32(s0)
    80200244:	fe043703          	ld	a4,-32(s0)
    80200248:	00015797          	auipc	a5,0x15
    8020024c:	dc878793          	addi	a5,a5,-568 # 80215010 <tc.0>
    80200250:	86be                	mv	a3,a5
    80200252:	11000793          	li	a5,272
    80200256:	863e                	mv	a2,a5
    80200258:	85b6                	mv	a1,a3
    8020025a:	853a                	mv	a0,a4
    8020025c:	5b1000ef          	jal	8020100c <memcpy>
    80200260:	00015517          	auipc	a0,0x15
    80200264:	db050513          	addi	a0,a0,-592 # 80215010 <tc.0>
    80200268:	511000ef          	jal	80200f78 <__restore>
    8020026c:	00002517          	auipc	a0,0x2
    80200270:	e6450513          	addi	a0,a0,-412 # 802020d0 <rodata_start+0xd0>
    80200274:	1fa000ef          	jal	8020046e <panic>
    80200278:	0001                	nop
    8020027a:	60e2                	ld	ra,24(sp)
    8020027c:	6442                	ld	s0,16(sp)
    8020027e:	6105                	addi	sp,sp,32
    80200280:	8082                	ret

0000000080200282 <clear_bss>:
    80200282:	1101                	addi	sp,sp,-32
    80200284:	ec06                	sd	ra,24(sp)
    80200286:	e822                	sd	s0,16(sp)
    80200288:	1000                	addi	s0,sp,32
    8020028a:	00016617          	auipc	a2,0x16
    8020028e:	d7660613          	addi	a2,a2,-650 # 80216000 <bss_end>
    80200292:	00014597          	auipc	a1,0x14
    80200296:	d7058593          	addi	a1,a1,-656 # 80214002 <bss_start>
    8020029a:	00002517          	auipc	a0,0x2
    8020029e:	e5e50513          	addi	a0,a0,-418 # 802020f8 <rodata_start+0xf8>
    802002a2:	1c7000ef          	jal	80200c68 <printk>
    802002a6:	00002517          	auipc	a0,0x2
    802002aa:	e8a50513          	addi	a0,a0,-374 # 80202130 <rodata_start+0x130>
    802002ae:	1bb000ef          	jal	80200c68 <printk>
    802002b2:	00014797          	auipc	a5,0x14
    802002b6:	d5078793          	addi	a5,a5,-688 # 80214002 <bss_start>
    802002ba:	fef43423          	sd	a5,-24(s0)
    802002be:	00014797          	auipc	a5,0x14
    802002c2:	d4478793          	addi	a5,a5,-700 # 80214002 <bss_start>
    802002c6:	fef43023          	sd	a5,-32(s0)
    802002ca:	a811                	j	802002de <clear_bss+0x5c>
    802002cc:	fe843783          	ld	a5,-24(s0)
    802002d0:	00078023          	sb	zero,0(a5)
    802002d4:	fe843783          	ld	a5,-24(s0)
    802002d8:	0785                	addi	a5,a5,1
    802002da:	fef43423          	sd	a5,-24(s0)
    802002de:	fe843703          	ld	a4,-24(s0)
    802002e2:	fe043783          	ld	a5,-32(s0)
    802002e6:	fef763e3          	bltu	a4,a5,802002cc <clear_bss+0x4a>
    802002ea:	0001                	nop
    802002ec:	0001                	nop
    802002ee:	60e2                	ld	ra,24(sp)
    802002f0:	6442                	ld	s0,16(sp)
    802002f2:	6105                	addi	sp,sp,32
    802002f4:	8082                	ret

00000000802002f6 <main>:
    802002f6:	1141                	addi	sp,sp,-16
    802002f8:	e406                	sd	ra,8(sp)
    802002fa:	e022                	sd	s0,0(sp)
    802002fc:	0800                	addi	s0,sp,16
    802002fe:	f85ff0ef          	jal	80200282 <clear_bss>
    80200302:	2f5000ef          	jal	80200df6 <trap_init>
    80200306:	d5fff0ef          	jal	80200064 <load_app>
    8020030a:	e5fff0ef          	jal	80200168 <run_app>
    8020030e:	00002517          	auipc	a0,0x2
    80200312:	e4250513          	addi	a0,a0,-446 # 80202150 <rodata_start+0x150>
    80200316:	158000ef          	jal	8020046e <panic>
    8020031a:	4781                	li	a5,0
    8020031c:	853e                	mv	a0,a5
    8020031e:	60a2                	ld	ra,8(sp)
    80200320:	6402                	ld	s0,0(sp)
    80200322:	0141                	addi	sp,sp,16
    80200324:	8082                	ret

0000000080200326 <sbi_ecall>:
    80200326:	7159                	addi	sp,sp,-112
    80200328:	f486                	sd	ra,104(sp)
    8020032a:	f0a2                	sd	s0,96(sp)
    8020032c:	1880                	addi	s0,sp,112
    8020032e:	fcc43023          	sd	a2,-64(s0)
    80200332:	fad43c23          	sd	a3,-72(s0)
    80200336:	fae43823          	sd	a4,-80(s0)
    8020033a:	faf43423          	sd	a5,-88(s0)
    8020033e:	fb043023          	sd	a6,-96(s0)
    80200342:	f9143c23          	sd	a7,-104(s0)
    80200346:	87aa                	mv	a5,a0
    80200348:	fcf42623          	sw	a5,-52(s0)
    8020034c:	87ae                	mv	a5,a1
    8020034e:	fcf42423          	sw	a5,-56(s0)
    80200352:	fc043503          	ld	a0,-64(s0)
    80200356:	fb843583          	ld	a1,-72(s0)
    8020035a:	fb043603          	ld	a2,-80(s0)
    8020035e:	fa843683          	ld	a3,-88(s0)
    80200362:	fa043703          	ld	a4,-96(s0)
    80200366:	f9843783          	ld	a5,-104(s0)
    8020036a:	fc842803          	lw	a6,-56(s0)
    8020036e:	fcc42883          	lw	a7,-52(s0)
    80200372:	00000073          	ecall
    80200376:	87aa                	mv	a5,a0
    80200378:	fcf43823          	sd	a5,-48(s0)
    8020037c:	87ae                	mv	a5,a1
    8020037e:	fcf43c23          	sd	a5,-40(s0)
    80200382:	fd043783          	ld	a5,-48(s0)
    80200386:	fef43023          	sd	a5,-32(s0)
    8020038a:	fd843783          	ld	a5,-40(s0)
    8020038e:	fef43423          	sd	a5,-24(s0)
    80200392:	fe043703          	ld	a4,-32(s0)
    80200396:	fe843783          	ld	a5,-24(s0)
    8020039a:	833a                	mv	t1,a4
    8020039c:	83be                	mv	t2,a5
    8020039e:	871a                	mv	a4,t1
    802003a0:	879e                	mv	a5,t2
    802003a2:	853a                	mv	a0,a4
    802003a4:	85be                	mv	a1,a5
    802003a6:	70a6                	ld	ra,104(sp)
    802003a8:	7406                	ld	s0,96(sp)
    802003aa:	6165                	addi	sp,sp,112
    802003ac:	8082                	ret

00000000802003ae <sbi_console_putchar>:
    802003ae:	1101                	addi	sp,sp,-32
    802003b0:	ec06                	sd	ra,24(sp)
    802003b2:	e822                	sd	s0,16(sp)
    802003b4:	1000                	addi	s0,sp,32
    802003b6:	87aa                	mv	a5,a0
    802003b8:	fef407a3          	sb	a5,-17(s0)
    802003bc:	fef40603          	lb	a2,-17(s0)
    802003c0:	4881                	li	a7,0
    802003c2:	4801                	li	a6,0
    802003c4:	4781                	li	a5,0
    802003c6:	4701                	li	a4,0
    802003c8:	4681                	li	a3,0
    802003ca:	4581                	li	a1,0
    802003cc:	4505                	li	a0,1
    802003ce:	f59ff0ef          	jal	80200326 <sbi_ecall>
    802003d2:	0001                	nop
    802003d4:	60e2                	ld	ra,24(sp)
    802003d6:	6442                	ld	s0,16(sp)
    802003d8:	6105                	addi	sp,sp,32
    802003da:	8082                	ret

00000000802003dc <sbi_shut_down>:
    802003dc:	1101                	addi	sp,sp,-32
    802003de:	ec06                	sd	ra,24(sp)
    802003e0:	e822                	sd	s0,16(sp)
    802003e2:	1000                	addi	s0,sp,32
    802003e4:	87aa                	mv	a5,a0
    802003e6:	fef42623          	sw	a5,-20(s0)
    802003ea:	fec46683          	lwu	a3,-20(s0)
    802003ee:	4881                	li	a7,0
    802003f0:	4801                	li	a6,0
    802003f2:	4781                	li	a5,0
    802003f4:	4701                	li	a4,0
    802003f6:	4601                	li	a2,0
    802003f8:	4581                	li	a1,0
    802003fa:	53525537          	lui	a0,0x53525
    802003fe:	35450513          	addi	a0,a0,852 # 53525354 <n+0x53525334>
    80200402:	f25ff0ef          	jal	80200326 <sbi_ecall>
    80200406:	0001                	nop
    80200408:	60e2                	ld	ra,24(sp)
    8020040a:	6442                	ld	s0,16(sp)
    8020040c:	6105                	addi	sp,sp,32
    8020040e:	8082                	ret

0000000080200410 <print>:
    80200410:	1101                	addi	sp,sp,-32
    80200412:	ec06                	sd	ra,24(sp)
    80200414:	e822                	sd	s0,16(sp)
    80200416:	1000                	addi	s0,sp,32
    80200418:	fea43423          	sd	a0,-24(s0)
    8020041c:	a821                	j	80200434 <print+0x24>
    8020041e:	fe843783          	ld	a5,-24(s0)
    80200422:	00178713          	addi	a4,a5,1
    80200426:	fee43423          	sd	a4,-24(s0)
    8020042a:	00078783          	lb	a5,0(a5)
    8020042e:	853e                	mv	a0,a5
    80200430:	f7fff0ef          	jal	802003ae <sbi_console_putchar>
    80200434:	fe843783          	ld	a5,-24(s0)
    80200438:	00078783          	lb	a5,0(a5)
    8020043c:	f3ed                	bnez	a5,8020041e <print+0xe>
    8020043e:	0001                	nop
    80200440:	0001                	nop
    80200442:	60e2                	ld	ra,24(sp)
    80200444:	6442                	ld	s0,16(sp)
    80200446:	6105                	addi	sp,sp,32
    80200448:	8082                	ret

000000008020044a <println>:
    8020044a:	1101                	addi	sp,sp,-32
    8020044c:	ec06                	sd	ra,24(sp)
    8020044e:	e822                	sd	s0,16(sp)
    80200450:	1000                	addi	s0,sp,32
    80200452:	fea43423          	sd	a0,-24(s0)
    80200456:	fe843503          	ld	a0,-24(s0)
    8020045a:	fb7ff0ef          	jal	80200410 <print>
    8020045e:	4529                	li	a0,10
    80200460:	f4fff0ef          	jal	802003ae <sbi_console_putchar>
    80200464:	0001                	nop
    80200466:	60e2                	ld	ra,24(sp)
    80200468:	6442                	ld	s0,16(sp)
    8020046a:	6105                	addi	sp,sp,32
    8020046c:	8082                	ret

000000008020046e <panic>:
    8020046e:	1101                	addi	sp,sp,-32
    80200470:	ec06                	sd	ra,24(sp)
    80200472:	e822                	sd	s0,16(sp)
    80200474:	1000                	addi	s0,sp,32
    80200476:	fea43423          	sd	a0,-24(s0)
    8020047a:	4529                	li	a0,10
    8020047c:	f33ff0ef          	jal	802003ae <sbi_console_putchar>
    80200480:	7dd000ef          	jal	8020145c <sys_stack_trace>
    80200484:	00002517          	auipc	a0,0x2
    80200488:	ce450513          	addi	a0,a0,-796 # 80202168 <rodata_start+0x168>
    8020048c:	f85ff0ef          	jal	80200410 <print>
    80200490:	fe843503          	ld	a0,-24(s0)
    80200494:	fb7ff0ef          	jal	8020044a <println>
    80200498:	4505                	li	a0,1
    8020049a:	f43ff0ef          	jal	802003dc <sbi_shut_down>
    8020049e:	0001                	nop
    802004a0:	60e2                	ld	ra,24(sp)
    802004a2:	6442                	ld	s0,16(sp)
    802004a4:	6105                	addi	sp,sp,32
    802004a6:	8082                	ret

00000000802004a8 <mini_strlen>:
    802004a8:	7179                	addi	sp,sp,-48
    802004aa:	f406                	sd	ra,40(sp)
    802004ac:	f022                	sd	s0,32(sp)
    802004ae:	1800                	addi	s0,sp,48
    802004b0:	fca43c23          	sd	a0,-40(s0)
    802004b4:	fe042623          	sw	zero,-20(s0)
    802004b8:	a031                	j	802004c4 <mini_strlen+0x1c>
    802004ba:	fec42783          	lw	a5,-20(s0)
    802004be:	2785                	addiw	a5,a5,1
    802004c0:	fef42623          	sw	a5,-20(s0)
    802004c4:	fec46783          	lwu	a5,-20(s0)
    802004c8:	fd843703          	ld	a4,-40(s0)
    802004cc:	97ba                	add	a5,a5,a4
    802004ce:	00078783          	lb	a5,0(a5)
    802004d2:	f7e5                	bnez	a5,802004ba <mini_strlen+0x12>
    802004d4:	fec42783          	lw	a5,-20(s0)
    802004d8:	853e                	mv	a0,a5
    802004da:	70a2                	ld	ra,40(sp)
    802004dc:	7402                	ld	s0,32(sp)
    802004de:	6145                	addi	sp,sp,48
    802004e0:	8082                	ret

00000000802004e2 <mini_itoa>:
    802004e2:	715d                	addi	sp,sp,-80
    802004e4:	e486                	sd	ra,72(sp)
    802004e6:	e0a2                	sd	s0,64(sp)
    802004e8:	0880                	addi	s0,sp,80
    802004ea:	fca43423          	sd	a0,-56(s0)
    802004ee:	fae43823          	sd	a4,-80(s0)
    802004f2:	873e                	mv	a4,a5
    802004f4:	87ae                	mv	a5,a1
    802004f6:	fcf42223          	sw	a5,-60(s0)
    802004fa:	87b2                	mv	a5,a2
    802004fc:	fcf42023          	sw	a5,-64(s0)
    80200500:	87b6                	mv	a5,a3
    80200502:	faf42e23          	sw	a5,-68(s0)
    80200506:	87ba                	mv	a5,a4
    80200508:	faf42c23          	sw	a5,-72(s0)
    8020050c:	fb043783          	ld	a5,-80(s0)
    80200510:	fef43423          	sd	a5,-24(s0)
    80200514:	fe042223          	sw	zero,-28(s0)
    80200518:	fc442783          	lw	a5,-60(s0)
    8020051c:	0007871b          	sext.w	a4,a5
    80200520:	47c1                	li	a5,16
    80200522:	00e7f463          	bgeu	a5,a4,8020052a <mini_itoa+0x48>
    80200526:	4781                	li	a5,0
    80200528:	aaf9                	j	80200706 <mini_itoa+0x224>
    8020052a:	fc843783          	ld	a5,-56(s0)
    8020052e:	0007df63          	bgez	a5,8020054c <mini_itoa+0x6a>
    80200532:	fbc42783          	lw	a5,-68(s0)
    80200536:	2781                	sext.w	a5,a5
    80200538:	eb91                	bnez	a5,8020054c <mini_itoa+0x6a>
    8020053a:	4785                	li	a5,1
    8020053c:	fef42223          	sw	a5,-28(s0)
    80200540:	fc843783          	ld	a5,-56(s0)
    80200544:	40f007b3          	neg	a5,a5
    80200548:	fcf43423          	sd	a5,-56(s0)
    8020054c:	fc042e23          	sw	zero,-36(s0)
    80200550:	fbc42783          	lw	a5,-68(s0)
    80200554:	2781                	sext.w	a5,a5
    80200556:	cb91                	beqz	a5,8020056a <mini_itoa+0x88>
    80200558:	fc843703          	ld	a4,-56(s0)
    8020055c:	fc446783          	lwu	a5,-60(s0)
    80200560:	02f777b3          	remu	a5,a4,a5
    80200564:	fcf42e23          	sw	a5,-36(s0)
    80200568:	a809                	j	8020057a <mini_itoa+0x98>
    8020056a:	fc446783          	lwu	a5,-60(s0)
    8020056e:	fc843703          	ld	a4,-56(s0)
    80200572:	02f767b3          	rem	a5,a4,a5
    80200576:	fcf42e23          	sw	a5,-36(s0)
    8020057a:	fdc42783          	lw	a5,-36(s0)
    8020057e:	0007871b          	sext.w	a4,a5
    80200582:	47a5                	li	a5,9
    80200584:	00e7cb63          	blt	a5,a4,8020059a <mini_itoa+0xb8>
    80200588:	fdc42783          	lw	a5,-36(s0)
    8020058c:	0ff7f793          	zext.b	a5,a5
    80200590:	0307879b          	addiw	a5,a5,48
    80200594:	0ff7f713          	zext.b	a4,a5
    80200598:	a025                	j	802005c0 <mini_itoa+0xde>
    8020059a:	fc042783          	lw	a5,-64(s0)
    8020059e:	2781                	sext.w	a5,a5
    802005a0:	c781                	beqz	a5,802005a8 <mini_itoa+0xc6>
    802005a2:	04100793          	li	a5,65
    802005a6:	a019                	j	802005ac <mini_itoa+0xca>
    802005a8:	06100793          	li	a5,97
    802005ac:	fdc42703          	lw	a4,-36(s0)
    802005b0:	0ff77713          	zext.b	a4,a4
    802005b4:	9fb9                	addw	a5,a5,a4
    802005b6:	0ff7f793          	zext.b	a5,a5
    802005ba:	37d9                	addiw	a5,a5,-10
    802005bc:	0ff7f713          	zext.b	a4,a5
    802005c0:	fe843783          	ld	a5,-24(s0)
    802005c4:	00178693          	addi	a3,a5,1
    802005c8:	fed43423          	sd	a3,-24(s0)
    802005cc:	00e78023          	sb	a4,0(a5)
    802005d0:	fbc42783          	lw	a5,-68(s0)
    802005d4:	2781                	sext.w	a5,a5
    802005d6:	cb91                	beqz	a5,802005ea <mini_itoa+0x108>
    802005d8:	fc843703          	ld	a4,-56(s0)
    802005dc:	fc446783          	lwu	a5,-60(s0)
    802005e0:	02f757b3          	divu	a5,a4,a5
    802005e4:	fcf43423          	sd	a5,-56(s0)
    802005e8:	a809                	j	802005fa <mini_itoa+0x118>
    802005ea:	fc446783          	lwu	a5,-60(s0)
    802005ee:	fc843703          	ld	a4,-56(s0)
    802005f2:	02f747b3          	div	a5,a4,a5
    802005f6:	fcf43423          	sd	a5,-56(s0)
    802005fa:	fc843783          	ld	a5,-56(s0)
    802005fe:	f7b9                	bnez	a5,8020054c <mini_itoa+0x6a>
    80200600:	fe843703          	ld	a4,-24(s0)
    80200604:	fb043783          	ld	a5,-80(s0)
    80200608:	40f707b3          	sub	a5,a4,a5
    8020060c:	fef42023          	sw	a5,-32(s0)
    80200610:	a005                	j	80200630 <mini_itoa+0x14e>
    80200612:	fe843783          	ld	a5,-24(s0)
    80200616:	00178713          	addi	a4,a5,1
    8020061a:	fee43423          	sd	a4,-24(s0)
    8020061e:	03000713          	li	a4,48
    80200622:	00e78023          	sb	a4,0(a5)
    80200626:	fe042783          	lw	a5,-32(s0)
    8020062a:	2785                	addiw	a5,a5,1
    8020062c:	fef42023          	sw	a5,-32(s0)
    80200630:	fe042783          	lw	a5,-32(s0)
    80200634:	873e                	mv	a4,a5
    80200636:	fb842783          	lw	a5,-72(s0)
    8020063a:	2701                	sext.w	a4,a4
    8020063c:	2781                	sext.w	a5,a5
    8020063e:	fcf76ae3          	bltu	a4,a5,80200612 <mini_itoa+0x130>
    80200642:	fe442783          	lw	a5,-28(s0)
    80200646:	2781                	sext.w	a5,a5
    80200648:	cb99                	beqz	a5,8020065e <mini_itoa+0x17c>
    8020064a:	fe843783          	ld	a5,-24(s0)
    8020064e:	00178713          	addi	a4,a5,1
    80200652:	fee43423          	sd	a4,-24(s0)
    80200656:	02d00713          	li	a4,45
    8020065a:	00e78023          	sb	a4,0(a5)
    8020065e:	fe843783          	ld	a5,-24(s0)
    80200662:	00078023          	sb	zero,0(a5)
    80200666:	fe843703          	ld	a4,-24(s0)
    8020066a:	fb043783          	ld	a5,-80(s0)
    8020066e:	40f707b3          	sub	a5,a4,a5
    80200672:	fcf42c23          	sw	a5,-40(s0)
    80200676:	fe042023          	sw	zero,-32(s0)
    8020067a:	a895                	j	802006ee <mini_itoa+0x20c>
    8020067c:	fe046783          	lwu	a5,-32(s0)
    80200680:	fb043703          	ld	a4,-80(s0)
    80200684:	97ba                	add	a5,a5,a4
    80200686:	0007c783          	lbu	a5,0(a5)
    8020068a:	fcf40ba3          	sb	a5,-41(s0)
    8020068e:	fd842783          	lw	a5,-40(s0)
    80200692:	873e                	mv	a4,a5
    80200694:	fe042783          	lw	a5,-32(s0)
    80200698:	40f707bb          	subw	a5,a4,a5
    8020069c:	2781                	sext.w	a5,a5
    8020069e:	37fd                	addiw	a5,a5,-1
    802006a0:	2781                	sext.w	a5,a5
    802006a2:	1782                	slli	a5,a5,0x20
    802006a4:	9381                	srli	a5,a5,0x20
    802006a6:	fb043703          	ld	a4,-80(s0)
    802006aa:	973e                	add	a4,a4,a5
    802006ac:	fe046783          	lwu	a5,-32(s0)
    802006b0:	fb043683          	ld	a3,-80(s0)
    802006b4:	97b6                	add	a5,a5,a3
    802006b6:	00074703          	lbu	a4,0(a4)
    802006ba:	00e78023          	sb	a4,0(a5)
    802006be:	fd842783          	lw	a5,-40(s0)
    802006c2:	873e                	mv	a4,a5
    802006c4:	fe042783          	lw	a5,-32(s0)
    802006c8:	40f707bb          	subw	a5,a4,a5
    802006cc:	2781                	sext.w	a5,a5
    802006ce:	37fd                	addiw	a5,a5,-1
    802006d0:	2781                	sext.w	a5,a5
    802006d2:	1782                	slli	a5,a5,0x20
    802006d4:	9381                	srli	a5,a5,0x20
    802006d6:	fb043703          	ld	a4,-80(s0)
    802006da:	97ba                	add	a5,a5,a4
    802006dc:	fd744703          	lbu	a4,-41(s0)
    802006e0:	00e78023          	sb	a4,0(a5)
    802006e4:	fe042783          	lw	a5,-32(s0)
    802006e8:	2785                	addiw	a5,a5,1
    802006ea:	fef42023          	sw	a5,-32(s0)
    802006ee:	fd842783          	lw	a5,-40(s0)
    802006f2:	0017d79b          	srliw	a5,a5,0x1
    802006f6:	2781                	sext.w	a5,a5
    802006f8:	fe042703          	lw	a4,-32(s0)
    802006fc:	2701                	sext.w	a4,a4
    802006fe:	f6f76fe3          	bltu	a4,a5,8020067c <mini_itoa+0x19a>
    80200702:	fd842783          	lw	a5,-40(s0)
    80200706:	853e                	mv	a0,a5
    80200708:	60a6                	ld	ra,72(sp)
    8020070a:	6406                	ld	s0,64(sp)
    8020070c:	6161                	addi	sp,sp,80
    8020070e:	8082                	ret

0000000080200710 <_putc>:
    80200710:	1101                	addi	sp,sp,-32
    80200712:	ec06                	sd	ra,24(sp)
    80200714:	e822                	sd	s0,16(sp)
    80200716:	1000                	addi	s0,sp,32
    80200718:	87aa                	mv	a5,a0
    8020071a:	feb43023          	sd	a1,-32(s0)
    8020071e:	fef42623          	sw	a5,-20(s0)
    80200722:	fe043783          	ld	a5,-32(s0)
    80200726:	6798                	ld	a4,8(a5)
    80200728:	fe043783          	ld	a5,-32(s0)
    8020072c:	639c                	ld	a5,0(a5)
    8020072e:	40f707b3          	sub	a5,a4,a5
    80200732:	2781                	sext.w	a5,a5
    80200734:	2785                	addiw	a5,a5,1
    80200736:	0007871b          	sext.w	a4,a5
    8020073a:	fe043783          	ld	a5,-32(s0)
    8020073e:	4b9c                	lw	a5,16(a5)
    80200740:	00f76463          	bltu	a4,a5,80200748 <_putc+0x38>
    80200744:	4781                	li	a5,0
    80200746:	a02d                	j	80200770 <_putc+0x60>
    80200748:	fe043783          	ld	a5,-32(s0)
    8020074c:	679c                	ld	a5,8(a5)
    8020074e:	00178693          	addi	a3,a5,1
    80200752:	fe043703          	ld	a4,-32(s0)
    80200756:	e714                	sd	a3,8(a4)
    80200758:	fec42703          	lw	a4,-20(s0)
    8020075c:	0ff77713          	zext.b	a4,a4
    80200760:	00e78023          	sb	a4,0(a5)
    80200764:	fe043783          	ld	a5,-32(s0)
    80200768:	679c                	ld	a5,8(a5)
    8020076a:	00078023          	sb	zero,0(a5)
    8020076e:	4785                	li	a5,1
    80200770:	853e                	mv	a0,a5
    80200772:	60e2                	ld	ra,24(sp)
    80200774:	6442                	ld	s0,16(sp)
    80200776:	6105                	addi	sp,sp,32
    80200778:	8082                	ret

000000008020077a <_puts>:
    8020077a:	7139                	addi	sp,sp,-64
    8020077c:	fc06                	sd	ra,56(sp)
    8020077e:	f822                	sd	s0,48(sp)
    80200780:	0080                	addi	s0,sp,64
    80200782:	fca43c23          	sd	a0,-40(s0)
    80200786:	87ae                	mv	a5,a1
    80200788:	fcc43423          	sd	a2,-56(s0)
    8020078c:	fcf42a23          	sw	a5,-44(s0)
    80200790:	fc843783          	ld	a5,-56(s0)
    80200794:	4b9c                	lw	a5,16(a5)
    80200796:	02079713          	slli	a4,a5,0x20
    8020079a:	9301                	srli	a4,a4,0x20
    8020079c:	fc843783          	ld	a5,-56(s0)
    802007a0:	6794                	ld	a3,8(a5)
    802007a2:	fc843783          	ld	a5,-56(s0)
    802007a6:	639c                	ld	a5,0(a5)
    802007a8:	40f687b3          	sub	a5,a3,a5
    802007ac:	8f1d                	sub	a4,a4,a5
    802007ae:	fd446783          	lwu	a5,-44(s0)
    802007b2:	02e7c463          	blt	a5,a4,802007da <_puts+0x60>
    802007b6:	fc843783          	ld	a5,-56(s0)
    802007ba:	4b98                	lw	a4,16(a5)
    802007bc:	fc843783          	ld	a5,-56(s0)
    802007c0:	6794                	ld	a3,8(a5)
    802007c2:	fc843783          	ld	a5,-56(s0)
    802007c6:	639c                	ld	a5,0(a5)
    802007c8:	40f687b3          	sub	a5,a3,a5
    802007cc:	2781                	sext.w	a5,a5
    802007ce:	40f707bb          	subw	a5,a4,a5
    802007d2:	2781                	sext.w	a5,a5
    802007d4:	37fd                	addiw	a5,a5,-1
    802007d6:	fcf42a23          	sw	a5,-44(s0)
    802007da:	fe042623          	sw	zero,-20(s0)
    802007de:	a03d                	j	8020080c <_puts+0x92>
    802007e0:	fec46783          	lwu	a5,-20(s0)
    802007e4:	fd843703          	ld	a4,-40(s0)
    802007e8:	973e                	add	a4,a4,a5
    802007ea:	fc843783          	ld	a5,-56(s0)
    802007ee:	679c                	ld	a5,8(a5)
    802007f0:	00178613          	addi	a2,a5,1
    802007f4:	fc843683          	ld	a3,-56(s0)
    802007f8:	e690                	sd	a2,8(a3)
    802007fa:	00074703          	lbu	a4,0(a4)
    802007fe:	00e78023          	sb	a4,0(a5)
    80200802:	fec42783          	lw	a5,-20(s0)
    80200806:	2785                	addiw	a5,a5,1
    80200808:	fef42623          	sw	a5,-20(s0)
    8020080c:	fec42783          	lw	a5,-20(s0)
    80200810:	873e                	mv	a4,a5
    80200812:	fd442783          	lw	a5,-44(s0)
    80200816:	2701                	sext.w	a4,a4
    80200818:	2781                	sext.w	a5,a5
    8020081a:	fcf763e3          	bltu	a4,a5,802007e0 <_puts+0x66>
    8020081e:	fc843783          	ld	a5,-56(s0)
    80200822:	679c                	ld	a5,8(a5)
    80200824:	00078023          	sb	zero,0(a5)
    80200828:	fd442783          	lw	a5,-44(s0)
    8020082c:	853e                	mv	a0,a5
    8020082e:	70e2                	ld	ra,56(sp)
    80200830:	7442                	ld	s0,48(sp)
    80200832:	6121                	addi	sp,sp,64
    80200834:	8082                	ret

0000000080200836 <mini_vsnprintf>:
    80200836:	7119                	addi	sp,sp,-128
    80200838:	fc86                	sd	ra,120(sp)
    8020083a:	f8a2                	sd	s0,112(sp)
    8020083c:	0100                	addi	s0,sp,128
    8020083e:	f8a43c23          	sd	a0,-104(s0)
    80200842:	87ae                	mv	a5,a1
    80200844:	f8c43423          	sd	a2,-120(s0)
    80200848:	f8d43023          	sd	a3,-128(s0)
    8020084c:	f8f42a23          	sw	a5,-108(s0)
    80200850:	f9843783          	ld	a5,-104(s0)
    80200854:	fcf43023          	sd	a5,-64(s0)
    80200858:	f9843783          	ld	a5,-104(s0)
    8020085c:	fcf43423          	sd	a5,-56(s0)
    80200860:	f9442783          	lw	a5,-108(s0)
    80200864:	fcf42823          	sw	a5,-48(s0)
    80200868:	a4f1                	j	80200b34 <mini_vsnprintf+0x2fe>
    8020086a:	fc843703          	ld	a4,-56(s0)
    8020086e:	fc043783          	ld	a5,-64(s0)
    80200872:	40f707b3          	sub	a5,a4,a5
    80200876:	2781                	sext.w	a5,a5
    80200878:	2785                	addiw	a5,a5,1
    8020087a:	0007871b          	sext.w	a4,a5
    8020087e:	fd042783          	lw	a5,-48(s0)
    80200882:	2cf77a63          	bgeu	a4,a5,80200b56 <mini_vsnprintf+0x320>
    80200886:	fef44783          	lbu	a5,-17(s0)
    8020088a:	0ff7f713          	zext.b	a4,a5
    8020088e:	02500793          	li	a5,37
    80200892:	00f70c63          	beq	a4,a5,802008aa <mini_vsnprintf+0x74>
    80200896:	fef44783          	lbu	a5,-17(s0)
    8020089a:	2781                	sext.w	a5,a5
    8020089c:	fc040713          	addi	a4,s0,-64
    802008a0:	85ba                	mv	a1,a4
    802008a2:	853e                	mv	a0,a5
    802008a4:	e6dff0ef          	jal	80200710 <_putc>
    802008a8:	a471                	j	80200b34 <mini_vsnprintf+0x2fe>
    802008aa:	fe040723          	sb	zero,-18(s0)
    802008ae:	fe042423          	sw	zero,-24(s0)
    802008b2:	f8843783          	ld	a5,-120(s0)
    802008b6:	00178713          	addi	a4,a5,1
    802008ba:	f8e43423          	sd	a4,-120(s0)
    802008be:	0007c783          	lbu	a5,0(a5)
    802008c2:	fef407a3          	sb	a5,-17(s0)
    802008c6:	fef44783          	lbu	a5,-17(s0)
    802008ca:	0ff7f713          	zext.b	a4,a5
    802008ce:	03000793          	li	a5,48
    802008d2:	06f71c63          	bne	a4,a5,8020094a <mini_vsnprintf+0x114>
    802008d6:	a899                	j	8020092c <mini_vsnprintf+0xf6>
    802008d8:	fef44783          	lbu	a5,-17(s0)
    802008dc:	0ff7f793          	zext.b	a5,a5
    802008e0:	26078d63          	beqz	a5,80200b5a <mini_vsnprintf+0x324>
    802008e4:	fef44783          	lbu	a5,-17(s0)
    802008e8:	0ff7f713          	zext.b	a4,a5
    802008ec:	02f00793          	li	a5,47
    802008f0:	04e7fd63          	bgeu	a5,a4,8020094a <mini_vsnprintf+0x114>
    802008f4:	fef44783          	lbu	a5,-17(s0)
    802008f8:	0ff7f713          	zext.b	a4,a5
    802008fc:	03900793          	li	a5,57
    80200900:	04e7e563          	bltu	a5,a4,8020094a <mini_vsnprintf+0x114>
    80200904:	fee44783          	lbu	a5,-18(s0)
    80200908:	873e                	mv	a4,a5
    8020090a:	87ba                	mv	a5,a4
    8020090c:	0027979b          	slliw	a5,a5,0x2
    80200910:	9fb9                	addw	a5,a5,a4
    80200912:	0017979b          	slliw	a5,a5,0x1
    80200916:	0ff7f793          	zext.b	a5,a5
    8020091a:	fef44703          	lbu	a4,-17(s0)
    8020091e:	9fb9                	addw	a5,a5,a4
    80200920:	0ff7f793          	zext.b	a5,a5
    80200924:	fd07879b          	addiw	a5,a5,-48
    80200928:	fef40723          	sb	a5,-18(s0)
    8020092c:	f8843783          	ld	a5,-120(s0)
    80200930:	00178713          	addi	a4,a5,1
    80200934:	f8e43423          	sd	a4,-120(s0)
    80200938:	0007c783          	lbu	a5,0(a5)
    8020093c:	fef407a3          	sb	a5,-17(s0)
    80200940:	fef44783          	lbu	a5,-17(s0)
    80200944:	0ff7f793          	zext.b	a5,a5
    80200948:	fbc1                	bnez	a5,802008d8 <mini_vsnprintf+0xa2>
    8020094a:	fef44783          	lbu	a5,-17(s0)
    8020094e:	0ff7f713          	zext.b	a4,a5
    80200952:	06c00793          	li	a5,108
    80200956:	00f71f63          	bne	a4,a5,80200974 <mini_vsnprintf+0x13e>
    8020095a:	4785                	li	a5,1
    8020095c:	fef42423          	sw	a5,-24(s0)
    80200960:	f8843783          	ld	a5,-120(s0)
    80200964:	00178713          	addi	a4,a5,1
    80200968:	f8e43423          	sd	a4,-120(s0)
    8020096c:	0007c783          	lbu	a5,0(a5)
    80200970:	fef407a3          	sb	a5,-17(s0)
    80200974:	fef44783          	lbu	a5,-17(s0)
    80200978:	2781                	sext.w	a5,a5
    8020097a:	1e078263          	beqz	a5,80200b5e <mini_vsnprintf+0x328>
    8020097e:	1a07c163          	bltz	a5,80200b20 <mini_vsnprintf+0x2ea>
    80200982:	07800713          	li	a4,120
    80200986:	18f74d63          	blt	a4,a5,80200b20 <mini_vsnprintf+0x2ea>
    8020098a:	05800713          	li	a4,88
    8020098e:	18e7c963          	blt	a5,a4,80200b20 <mini_vsnprintf+0x2ea>
    80200992:	fa87879b          	addiw	a5,a5,-88
    80200996:	86be                	mv	a3,a5
    80200998:	0006871b          	sext.w	a4,a3
    8020099c:	02000793          	li	a5,32
    802009a0:	18e7e063          	bltu	a5,a4,80200b20 <mini_vsnprintf+0x2ea>
    802009a4:	02069793          	slli	a5,a3,0x20
    802009a8:	9381                	srli	a5,a5,0x20
    802009aa:	00279713          	slli	a4,a5,0x2
    802009ae:	00001797          	auipc	a5,0x1
    802009b2:	7c678793          	addi	a5,a5,1990 # 80202174 <rodata_start+0x174>
    802009b6:	97ba                	add	a5,a5,a4
    802009b8:	439c                	lw	a5,0(a5)
    802009ba:	0007871b          	sext.w	a4,a5
    802009be:	00001797          	auipc	a5,0x1
    802009c2:	7b678793          	addi	a5,a5,1974 # 80202174 <rodata_start+0x174>
    802009c6:	97ba                	add	a5,a5,a4
    802009c8:	8782                	jr	a5
    802009ca:	4785                	li	a5,1
    802009cc:	fef42423          	sw	a5,-24(s0)
    802009d0:	a295                	j	80200b34 <mini_vsnprintf+0x2fe>
    802009d2:	fe842783          	lw	a5,-24(s0)
    802009d6:	2781                	sext.w	a5,a5
    802009d8:	ef81                	bnez	a5,802009f0 <mini_vsnprintf+0x1ba>
    802009da:	f8043783          	ld	a5,-128(s0)
    802009de:	00878713          	addi	a4,a5,8
    802009e2:	f8e43023          	sd	a4,-128(s0)
    802009e6:	439c                	lw	a5,0(a5)
    802009e8:	02079513          	slli	a0,a5,0x20
    802009ec:	9101                	srli	a0,a0,0x20
    802009ee:	a809                	j	80200a00 <mini_vsnprintf+0x1ca>
    802009f0:	f8043783          	ld	a5,-128(s0)
    802009f4:	00878713          	addi	a4,a5,8
    802009f8:	f8e43023          	sd	a4,-128(s0)
    802009fc:	639c                	ld	a5,0(a5)
    802009fe:	853e                	mv	a0,a5
    80200a00:	fef44783          	lbu	a5,-17(s0)
    80200a04:	0007871b          	sext.w	a4,a5
    80200a08:	07500793          	li	a5,117
    80200a0c:	40f707b3          	sub	a5,a4,a5
    80200a10:	0017b793          	seqz	a5,a5
    80200a14:	0ff7f793          	zext.b	a5,a5
    80200a18:	0007869b          	sext.w	a3,a5
    80200a1c:	fee44783          	lbu	a5,-18(s0)
    80200a20:	2781                	sext.w	a5,a5
    80200a22:	fa840713          	addi	a4,s0,-88
    80200a26:	4601                	li	a2,0
    80200a28:	45a9                	li	a1,10
    80200a2a:	ab9ff0ef          	jal	802004e2 <mini_itoa>
    80200a2e:	87aa                	mv	a5,a0
    80200a30:	fcf42e23          	sw	a5,-36(s0)
    80200a34:	fc040693          	addi	a3,s0,-64
    80200a38:	fdc42703          	lw	a4,-36(s0)
    80200a3c:	fa840793          	addi	a5,s0,-88
    80200a40:	8636                	mv	a2,a3
    80200a42:	85ba                	mv	a1,a4
    80200a44:	853e                	mv	a0,a5
    80200a46:	d35ff0ef          	jal	8020077a <_puts>
    80200a4a:	fe042423          	sw	zero,-24(s0)
    80200a4e:	a0dd                	j	80200b34 <mini_vsnprintf+0x2fe>
    80200a50:	fe842783          	lw	a5,-24(s0)
    80200a54:	2781                	sext.w	a5,a5
    80200a56:	ef81                	bnez	a5,80200a6e <mini_vsnprintf+0x238>
    80200a58:	f8043783          	ld	a5,-128(s0)
    80200a5c:	00878713          	addi	a4,a5,8
    80200a60:	f8e43023          	sd	a4,-128(s0)
    80200a64:	439c                	lw	a5,0(a5)
    80200a66:	02079513          	slli	a0,a5,0x20
    80200a6a:	9101                	srli	a0,a0,0x20
    80200a6c:	a809                	j	80200a7e <mini_vsnprintf+0x248>
    80200a6e:	f8043783          	ld	a5,-128(s0)
    80200a72:	00878713          	addi	a4,a5,8
    80200a76:	f8e43023          	sd	a4,-128(s0)
    80200a7a:	639c                	ld	a5,0(a5)
    80200a7c:	853e                	mv	a0,a5
    80200a7e:	fef44783          	lbu	a5,-17(s0)
    80200a82:	0007871b          	sext.w	a4,a5
    80200a86:	05800793          	li	a5,88
    80200a8a:	40f707b3          	sub	a5,a4,a5
    80200a8e:	0017b793          	seqz	a5,a5
    80200a92:	0ff7f793          	zext.b	a5,a5
    80200a96:	0007861b          	sext.w	a2,a5
    80200a9a:	fee44783          	lbu	a5,-18(s0)
    80200a9e:	2781                	sext.w	a5,a5
    80200aa0:	fa840713          	addi	a4,s0,-88
    80200aa4:	4685                	li	a3,1
    80200aa6:	45c1                	li	a1,16
    80200aa8:	a3bff0ef          	jal	802004e2 <mini_itoa>
    80200aac:	87aa                	mv	a5,a0
    80200aae:	fcf42e23          	sw	a5,-36(s0)
    80200ab2:	fc040693          	addi	a3,s0,-64
    80200ab6:	fdc42703          	lw	a4,-36(s0)
    80200aba:	fa840793          	addi	a5,s0,-88
    80200abe:	8636                	mv	a2,a3
    80200ac0:	85ba                	mv	a1,a4
    80200ac2:	853e                	mv	a0,a5
    80200ac4:	cb7ff0ef          	jal	8020077a <_puts>
    80200ac8:	fe042423          	sw	zero,-24(s0)
    80200acc:	a0a5                	j	80200b34 <mini_vsnprintf+0x2fe>
    80200ace:	f8043783          	ld	a5,-128(s0)
    80200ad2:	00878713          	addi	a4,a5,8
    80200ad6:	f8e43023          	sd	a4,-128(s0)
    80200ada:	439c                	lw	a5,0(a5)
    80200adc:	0ff7f793          	zext.b	a5,a5
    80200ae0:	2781                	sext.w	a5,a5
    80200ae2:	fc040713          	addi	a4,s0,-64
    80200ae6:	85ba                	mv	a1,a4
    80200ae8:	853e                	mv	a0,a5
    80200aea:	c27ff0ef          	jal	80200710 <_putc>
    80200aee:	a099                	j	80200b34 <mini_vsnprintf+0x2fe>
    80200af0:	f8043783          	ld	a5,-128(s0)
    80200af4:	00878713          	addi	a4,a5,8
    80200af8:	f8e43023          	sd	a4,-128(s0)
    80200afc:	639c                	ld	a5,0(a5)
    80200afe:	fef43023          	sd	a5,-32(s0)
    80200b02:	fe043503          	ld	a0,-32(s0)
    80200b06:	9a3ff0ef          	jal	802004a8 <mini_strlen>
    80200b0a:	87aa                	mv	a5,a0
    80200b0c:	873e                	mv	a4,a5
    80200b0e:	fc040793          	addi	a5,s0,-64
    80200b12:	863e                	mv	a2,a5
    80200b14:	85ba                	mv	a1,a4
    80200b16:	fe043503          	ld	a0,-32(s0)
    80200b1a:	c61ff0ef          	jal	8020077a <_puts>
    80200b1e:	a819                	j	80200b34 <mini_vsnprintf+0x2fe>
    80200b20:	fef44783          	lbu	a5,-17(s0)
    80200b24:	2781                	sext.w	a5,a5
    80200b26:	fc040713          	addi	a4,s0,-64
    80200b2a:	85ba                	mv	a1,a4
    80200b2c:	853e                	mv	a0,a5
    80200b2e:	be3ff0ef          	jal	80200710 <_putc>
    80200b32:	0001                	nop
    80200b34:	f8843783          	ld	a5,-120(s0)
    80200b38:	00178713          	addi	a4,a5,1
    80200b3c:	f8e43423          	sd	a4,-120(s0)
    80200b40:	0007c783          	lbu	a5,0(a5)
    80200b44:	fef407a3          	sb	a5,-17(s0)
    80200b48:	fef44783          	lbu	a5,-17(s0)
    80200b4c:	0ff7f793          	zext.b	a5,a5
    80200b50:	d0079de3          	bnez	a5,8020086a <mini_vsnprintf+0x34>
    80200b54:	a031                	j	80200b60 <mini_vsnprintf+0x32a>
    80200b56:	0001                	nop
    80200b58:	a021                	j	80200b60 <mini_vsnprintf+0x32a>
    80200b5a:	0001                	nop
    80200b5c:	a011                	j	80200b60 <mini_vsnprintf+0x32a>
    80200b5e:	0001                	nop
    80200b60:	fc843703          	ld	a4,-56(s0)
    80200b64:	fc043783          	ld	a5,-64(s0)
    80200b68:	40f707b3          	sub	a5,a4,a5
    80200b6c:	2781                	sext.w	a5,a5
    80200b6e:	853e                	mv	a0,a5
    80200b70:	70e6                	ld	ra,120(sp)
    80200b72:	7446                	ld	s0,112(sp)
    80200b74:	6109                	addi	sp,sp,128
    80200b76:	8082                	ret

0000000080200b78 <_vprintk>:
    80200b78:	7129                	addi	sp,sp,-320
    80200b7a:	fe06                	sd	ra,312(sp)
    80200b7c:	fa22                	sd	s0,304(sp)
    80200b7e:	0280                	addi	s0,sp,320
    80200b80:	eca43c23          	sd	a0,-296(s0)
    80200b84:	ecb43823          	sd	a1,-304(s0)
    80200b88:	ecc43423          	sd	a2,-312(s0)
    80200b8c:	ed043783          	ld	a5,-304(s0)
    80200b90:	fef43023          	sd	a5,-32(s0)
    80200b94:	fe043703          	ld	a4,-32(s0)
    80200b98:	ee040793          	addi	a5,s0,-288
    80200b9c:	86ba                	mv	a3,a4
    80200b9e:	ed843603          	ld	a2,-296(s0)
    80200ba2:	10000593          	li	a1,256
    80200ba6:	853e                	mv	a0,a5
    80200ba8:	c8fff0ef          	jal	80200836 <mini_vsnprintf>
    80200bac:	87aa                	mv	a5,a0
    80200bae:	fef42623          	sw	a5,-20(s0)
    80200bb2:	fec42783          	lw	a5,-20(s0)
    80200bb6:	17c1                	addi	a5,a5,-16
    80200bb8:	97a2                	add	a5,a5,s0
    80200bba:	ee078823          	sb	zero,-272(a5)
    80200bbe:	ee040713          	addi	a4,s0,-288
    80200bc2:	ec843783          	ld	a5,-312(s0)
    80200bc6:	853a                	mv	a0,a4
    80200bc8:	9782                	jalr	a5
    80200bca:	fec42783          	lw	a5,-20(s0)
    80200bce:	853e                	mv	a0,a5
    80200bd0:	70f2                	ld	ra,312(sp)
    80200bd2:	7452                	ld	s0,304(sp)
    80200bd4:	6131                	addi	sp,sp,320
    80200bd6:	8082                	ret

0000000080200bd8 <_vprints>:
    80200bd8:	7129                	addi	sp,sp,-320
    80200bda:	fe06                	sd	ra,312(sp)
    80200bdc:	fa22                	sd	s0,304(sp)
    80200bde:	0280                	addi	s0,sp,320
    80200be0:	eca43c23          	sd	a0,-296(s0)
    80200be4:	ecb43823          	sd	a1,-304(s0)
    80200be8:	ecc43423          	sd	a2,-312(s0)
    80200bec:	ed043783          	ld	a5,-304(s0)
    80200bf0:	fef43023          	sd	a5,-32(s0)
    80200bf4:	fe043703          	ld	a4,-32(s0)
    80200bf8:	ee040793          	addi	a5,s0,-288
    80200bfc:	86ba                	mv	a3,a4
    80200bfe:	ed843603          	ld	a2,-296(s0)
    80200c02:	10000593          	li	a1,256
    80200c06:	853e                	mv	a0,a5
    80200c08:	c2fff0ef          	jal	80200836 <mini_vsnprintf>
    80200c0c:	87aa                	mv	a5,a0
    80200c0e:	fef42623          	sw	a5,-20(s0)
    80200c12:	fec42783          	lw	a5,-20(s0)
    80200c16:	17c1                	addi	a5,a5,-16
    80200c18:	97a2                	add	a5,a5,s0
    80200c1a:	ee078823          	sb	zero,-272(a5)
    80200c1e:	ee040713          	addi	a4,s0,-288
    80200c22:	ec843783          	ld	a5,-312(s0)
    80200c26:	853a                	mv	a0,a4
    80200c28:	9782                	jalr	a5
    80200c2a:	fec42783          	lw	a5,-20(s0)
    80200c2e:	853e                	mv	a0,a5
    80200c30:	70f2                	ld	ra,312(sp)
    80200c32:	7452                	ld	s0,304(sp)
    80200c34:	6131                	addi	sp,sp,320
    80200c36:	8082                	ret

0000000080200c38 <vprintk>:
    80200c38:	1101                	addi	sp,sp,-32
    80200c3a:	ec06                	sd	ra,24(sp)
    80200c3c:	e822                	sd	s0,16(sp)
    80200c3e:	1000                	addi	s0,sp,32
    80200c40:	fea43423          	sd	a0,-24(s0)
    80200c44:	feb43023          	sd	a1,-32(s0)
    80200c48:	fffff617          	auipc	a2,0xfffff
    80200c4c:	7c860613          	addi	a2,a2,1992 # 80200410 <print>
    80200c50:	fe043583          	ld	a1,-32(s0)
    80200c54:	fe843503          	ld	a0,-24(s0)
    80200c58:	f21ff0ef          	jal	80200b78 <_vprintk>
    80200c5c:	87aa                	mv	a5,a0
    80200c5e:	853e                	mv	a0,a5
    80200c60:	60e2                	ld	ra,24(sp)
    80200c62:	6442                	ld	s0,16(sp)
    80200c64:	6105                	addi	sp,sp,32
    80200c66:	8082                	ret

0000000080200c68 <printk>:
    80200c68:	7159                	addi	sp,sp,-112
    80200c6a:	f406                	sd	ra,40(sp)
    80200c6c:	f022                	sd	s0,32(sp)
    80200c6e:	1800                	addi	s0,sp,48
    80200c70:	fca43c23          	sd	a0,-40(s0)
    80200c74:	e40c                	sd	a1,8(s0)
    80200c76:	e810                	sd	a2,16(s0)
    80200c78:	ec14                	sd	a3,24(s0)
    80200c7a:	f018                	sd	a4,32(s0)
    80200c7c:	f41c                	sd	a5,40(s0)
    80200c7e:	03043823          	sd	a6,48(s0)
    80200c82:	03143c23          	sd	a7,56(s0)
    80200c86:	fe042623          	sw	zero,-20(s0)
    80200c8a:	04040793          	addi	a5,s0,64
    80200c8e:	fcf43823          	sd	a5,-48(s0)
    80200c92:	fd043783          	ld	a5,-48(s0)
    80200c96:	fc878793          	addi	a5,a5,-56
    80200c9a:	fef43023          	sd	a5,-32(s0)
    80200c9e:	fe043783          	ld	a5,-32(s0)
    80200ca2:	85be                	mv	a1,a5
    80200ca4:	fd843503          	ld	a0,-40(s0)
    80200ca8:	f91ff0ef          	jal	80200c38 <vprintk>
    80200cac:	87aa                	mv	a5,a0
    80200cae:	fef42623          	sw	a5,-20(s0)
    80200cb2:	fec42783          	lw	a5,-20(s0)
    80200cb6:	853e                	mv	a0,a5
    80200cb8:	70a2                	ld	ra,40(sp)
    80200cba:	7402                	ld	s0,32(sp)
    80200cbc:	6165                	addi	sp,sp,112
    80200cbe:	8082                	ret

0000000080200cc0 <_vprintk_port>:
    80200cc0:	7129                	addi	sp,sp,-320
    80200cc2:	fe06                	sd	ra,312(sp)
    80200cc4:	fa22                	sd	s0,304(sp)
    80200cc6:	0280                	addi	s0,sp,320
    80200cc8:	eca43c23          	sd	a0,-296(s0)
    80200ccc:	ecb43823          	sd	a1,-304(s0)
    80200cd0:	ecc43423          	sd	a2,-312(s0)
    80200cd4:	ed043783          	ld	a5,-304(s0)
    80200cd8:	fef43023          	sd	a5,-32(s0)
    80200cdc:	fe043703          	ld	a4,-32(s0)
    80200ce0:	ee040793          	addi	a5,s0,-288
    80200ce4:	86ba                	mv	a3,a4
    80200ce6:	ed843603          	ld	a2,-296(s0)
    80200cea:	10000593          	li	a1,256
    80200cee:	853e                	mv	a0,a5
    80200cf0:	b47ff0ef          	jal	80200836 <mini_vsnprintf>
    80200cf4:	87aa                	mv	a5,a0
    80200cf6:	fef42623          	sw	a5,-20(s0)
    80200cfa:	fec42783          	lw	a5,-20(s0)
    80200cfe:	17c1                	addi	a5,a5,-16
    80200d00:	97a2                	add	a5,a5,s0
    80200d02:	ee078823          	sb	zero,-272(a5)
    80200d06:	fec42783          	lw	a5,-20(s0)
    80200d0a:	853e                	mv	a0,a5
    80200d0c:	70f2                	ld	ra,312(sp)
    80200d0e:	7452                	ld	s0,304(sp)
    80200d10:	6131                	addi	sp,sp,320
    80200d12:	8082                	ret

0000000080200d14 <vprintk_port>:
    80200d14:	1101                	addi	sp,sp,-32
    80200d16:	ec06                	sd	ra,24(sp)
    80200d18:	e822                	sd	s0,16(sp)
    80200d1a:	1000                	addi	s0,sp,32
    80200d1c:	fea43423          	sd	a0,-24(s0)
    80200d20:	feb43023          	sd	a1,-32(s0)
    80200d24:	fffff617          	auipc	a2,0xfffff
    80200d28:	6ec60613          	addi	a2,a2,1772 # 80200410 <print>
    80200d2c:	fe043583          	ld	a1,-32(s0)
    80200d30:	fe843503          	ld	a0,-24(s0)
    80200d34:	f8dff0ef          	jal	80200cc0 <_vprintk_port>
    80200d38:	87aa                	mv	a5,a0
    80200d3a:	853e                	mv	a0,a5
    80200d3c:	60e2                	ld	ra,24(sp)
    80200d3e:	6442                	ld	s0,16(sp)
    80200d40:	6105                	addi	sp,sp,32
    80200d42:	8082                	ret

0000000080200d44 <printk_port>:
    80200d44:	7159                	addi	sp,sp,-112
    80200d46:	f406                	sd	ra,40(sp)
    80200d48:	f022                	sd	s0,32(sp)
    80200d4a:	1800                	addi	s0,sp,48
    80200d4c:	fca43c23          	sd	a0,-40(s0)
    80200d50:	e40c                	sd	a1,8(s0)
    80200d52:	e810                	sd	a2,16(s0)
    80200d54:	ec14                	sd	a3,24(s0)
    80200d56:	f018                	sd	a4,32(s0)
    80200d58:	f41c                	sd	a5,40(s0)
    80200d5a:	03043823          	sd	a6,48(s0)
    80200d5e:	03143c23          	sd	a7,56(s0)
    80200d62:	fe042623          	sw	zero,-20(s0)
    80200d66:	04040793          	addi	a5,s0,64
    80200d6a:	fcf43823          	sd	a5,-48(s0)
    80200d6e:	fd043783          	ld	a5,-48(s0)
    80200d72:	fc878793          	addi	a5,a5,-56
    80200d76:	fef43023          	sd	a5,-32(s0)
    80200d7a:	fe043783          	ld	a5,-32(s0)
    80200d7e:	85be                	mv	a1,a5
    80200d80:	fd843503          	ld	a0,-40(s0)
    80200d84:	f91ff0ef          	jal	80200d14 <vprintk_port>
    80200d88:	87aa                	mv	a5,a0
    80200d8a:	fef42623          	sw	a5,-20(s0)
    80200d8e:	fec42783          	lw	a5,-20(s0)
    80200d92:	853e                	mv	a0,a5
    80200d94:	70a2                	ld	ra,40(sp)
    80200d96:	7402                	ld	s0,32(sp)
    80200d98:	6165                	addi	sp,sp,112
    80200d9a:	8082                	ret

0000000080200d9c <w_stvec>:
    80200d9c:	1101                	addi	sp,sp,-32
    80200d9e:	ec06                	sd	ra,24(sp)
    80200da0:	e822                	sd	s0,16(sp)
    80200da2:	1000                	addi	s0,sp,32
    80200da4:	fea43423          	sd	a0,-24(s0)
    80200da8:	fe843783          	ld	a5,-24(s0)
    80200dac:	10579073          	csrw	stvec,a5
    80200db0:	0001                	nop
    80200db2:	60e2                	ld	ra,24(sp)
    80200db4:	6442                	ld	s0,16(sp)
    80200db6:	6105                	addi	sp,sp,32
    80200db8:	8082                	ret

0000000080200dba <r_scause>:
    80200dba:	1101                	addi	sp,sp,-32
    80200dbc:	ec06                	sd	ra,24(sp)
    80200dbe:	e822                	sd	s0,16(sp)
    80200dc0:	1000                	addi	s0,sp,32
    80200dc2:	142027f3          	csrr	a5,scause
    80200dc6:	fef43423          	sd	a5,-24(s0)
    80200dca:	fe843783          	ld	a5,-24(s0)
    80200dce:	853e                	mv	a0,a5
    80200dd0:	60e2                	ld	ra,24(sp)
    80200dd2:	6442                	ld	s0,16(sp)
    80200dd4:	6105                	addi	sp,sp,32
    80200dd6:	8082                	ret

0000000080200dd8 <r_stval>:
    80200dd8:	1101                	addi	sp,sp,-32
    80200dda:	ec06                	sd	ra,24(sp)
    80200ddc:	e822                	sd	s0,16(sp)
    80200dde:	1000                	addi	s0,sp,32
    80200de0:	143027f3          	csrr	a5,stval
    80200de4:	fef43423          	sd	a5,-24(s0)
    80200de8:	fe843783          	ld	a5,-24(s0)
    80200dec:	853e                	mv	a0,a5
    80200dee:	60e2                	ld	ra,24(sp)
    80200df0:	6442                	ld	s0,16(sp)
    80200df2:	6105                	addi	sp,sp,32
    80200df4:	8082                	ret

0000000080200df6 <trap_init>:
    80200df6:	1141                	addi	sp,sp,-16
    80200df8:	e406                	sd	ra,8(sp)
    80200dfa:	e022                	sd	s0,0(sp)
    80200dfc:	0800                	addi	s0,sp,16
    80200dfe:	00000797          	auipc	a5,0x0
    80200e02:	12278793          	addi	a5,a5,290 # 80200f20 <__alltraps>
    80200e06:	85be                	mv	a1,a5
    80200e08:	00001517          	auipc	a0,0x1
    80200e0c:	3f050513          	addi	a0,a0,1008 # 802021f8 <rodata_start+0x1f8>
    80200e10:	e59ff0ef          	jal	80200c68 <printk>
    80200e14:	00000797          	auipc	a5,0x0
    80200e18:	10c78793          	addi	a5,a5,268 # 80200f20 <__alltraps>
    80200e1c:	853e                	mv	a0,a5
    80200e1e:	f7fff0ef          	jal	80200d9c <w_stvec>
    80200e22:	0001                	nop
    80200e24:	60a2                	ld	ra,8(sp)
    80200e26:	6402                	ld	s0,0(sp)
    80200e28:	0141                	addi	sp,sp,16
    80200e2a:	8082                	ret

0000000080200e2c <trap_handler>:
    80200e2c:	7139                	addi	sp,sp,-64
    80200e2e:	fc06                	sd	ra,56(sp)
    80200e30:	f822                	sd	s0,48(sp)
    80200e32:	0080                	addi	s0,sp,64
    80200e34:	fca43423          	sd	a0,-56(s0)
    80200e38:	00001517          	auipc	a0,0x1
    80200e3c:	3f050513          	addi	a0,a0,1008 # 80202228 <rodata_start+0x228>
    80200e40:	e29ff0ef          	jal	80200c68 <printk>
    80200e44:	f77ff0ef          	jal	80200dba <r_scause>
    80200e48:	fea43423          	sd	a0,-24(s0)
    80200e4c:	f8dff0ef          	jal	80200dd8 <r_stval>
    80200e50:	fea43023          	sd	a0,-32(s0)
    80200e54:	fe843583          	ld	a1,-24(s0)
    80200e58:	00001517          	auipc	a0,0x1
    80200e5c:	3f850513          	addi	a0,a0,1016 # 80202250 <rodata_start+0x250>
    80200e60:	e09ff0ef          	jal	80200c68 <printk>
    80200e64:	fe043583          	ld	a1,-32(s0)
    80200e68:	00001517          	auipc	a0,0x1
    80200e6c:	41050513          	addi	a0,a0,1040 # 80202278 <rodata_start+0x278>
    80200e70:	df9ff0ef          	jal	80200c68 <printk>
    80200e74:	fe843703          	ld	a4,-24(s0)
    80200e78:	6785                	lui	a5,0x1
    80200e7a:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80200e7c:	8ff9                	and	a5,a5,a4
    80200e7e:	fcf43c23          	sd	a5,-40(s0)
    80200e82:	fd843703          	ld	a4,-40(s0)
    80200e86:	47a1                	li	a5,8
    80200e88:	02f70263          	beq	a4,a5,80200eac <trap_handler+0x80>
    80200e8c:	fd843703          	ld	a4,-40(s0)
    80200e90:	47a1                	li	a5,8
    80200e92:	06e7e963          	bltu	a5,a4,80200f04 <trap_handler+0xd8>
    80200e96:	fd843703          	ld	a4,-40(s0)
    80200e9a:	4789                	li	a5,2
    80200e9c:	04f70863          	beq	a4,a5,80200eec <trap_handler+0xc0>
    80200ea0:	fd843703          	ld	a4,-40(s0)
    80200ea4:	479d                	li	a5,7
    80200ea6:	04f70963          	beq	a4,a5,80200ef8 <trap_handler+0xcc>
    80200eaa:	a8a9                	j	80200f04 <trap_handler+0xd8>
    80200eac:	fc843783          	ld	a5,-56(s0)
    80200eb0:	1087b783          	ld	a5,264(a5)
    80200eb4:	00478713          	addi	a4,a5,4
    80200eb8:	fc843783          	ld	a5,-56(s0)
    80200ebc:	10e7b423          	sd	a4,264(a5)
    80200ec0:	fc843783          	ld	a5,-56(s0)
    80200ec4:	67d8                	ld	a4,136(a5)
    80200ec6:	fc843783          	ld	a5,-56(s0)
    80200eca:	6bac                	ld	a1,80(a5)
    80200ecc:	fc843783          	ld	a5,-56(s0)
    80200ed0:	6fb0                	ld	a2,88(a5)
    80200ed2:	fc843783          	ld	a5,-56(s0)
    80200ed6:	73bc                	ld	a5,96(a5)
    80200ed8:	86be                	mv	a3,a5
    80200eda:	853a                	mv	a0,a4
    80200edc:	5ee000ef          	jal	802014ca <syscall>
    80200ee0:	87aa                	mv	a5,a0
    80200ee2:	873e                	mv	a4,a5
    80200ee4:	fc843783          	ld	a5,-56(s0)
    80200ee8:	ebb8                	sd	a4,80(a5)
    80200eea:	a025                	j	80200f12 <trap_handler+0xe6>
    80200eec:	00001517          	auipc	a0,0x1
    80200ef0:	3b450513          	addi	a0,a0,948 # 802022a0 <rodata_start+0x2a0>
    80200ef4:	d7aff0ef          	jal	8020046e <panic>
    80200ef8:	00001517          	auipc	a0,0x1
    80200efc:	3d050513          	addi	a0,a0,976 # 802022c8 <rodata_start+0x2c8>
    80200f00:	d6eff0ef          	jal	8020046e <panic>
    80200f04:	00001517          	auipc	a0,0x1
    80200f08:	3f450513          	addi	a0,a0,1012 # 802022f8 <rodata_start+0x2f8>
    80200f0c:	d62ff0ef          	jal	8020046e <panic>
    80200f10:	0001                	nop
    80200f12:	fc843783          	ld	a5,-56(s0)
    80200f16:	853e                	mv	a0,a5
    80200f18:	70e2                	ld	ra,56(sp)
    80200f1a:	7442                	ld	s0,48(sp)
    80200f1c:	6121                	addi	sp,sp,64
    80200f1e:	8082                	ret

0000000080200f20 <__alltraps>:
    80200f20:	14011173          	csrrw	sp,sscratch,sp
    80200f24:	716d                	addi	sp,sp,-272
    80200f26:	e406                	sd	ra,8(sp)
    80200f28:	ec0e                	sd	gp,24(sp)
    80200f2a:	f416                	sd	t0,40(sp)
    80200f2c:	f81a                	sd	t1,48(sp)
    80200f2e:	fc1e                	sd	t2,56(sp)
    80200f30:	e0a2                	sd	s0,64(sp)
    80200f32:	e4a6                	sd	s1,72(sp)
    80200f34:	e8aa                	sd	a0,80(sp)
    80200f36:	ecae                	sd	a1,88(sp)
    80200f38:	f0b2                	sd	a2,96(sp)
    80200f3a:	f4b6                	sd	a3,104(sp)
    80200f3c:	f8ba                	sd	a4,112(sp)
    80200f3e:	fcbe                	sd	a5,120(sp)
    80200f40:	e142                	sd	a6,128(sp)
    80200f42:	e546                	sd	a7,136(sp)
    80200f44:	e94a                	sd	s2,144(sp)
    80200f46:	ed4e                	sd	s3,152(sp)
    80200f48:	f152                	sd	s4,160(sp)
    80200f4a:	f556                	sd	s5,168(sp)
    80200f4c:	f95a                	sd	s6,176(sp)
    80200f4e:	fd5e                	sd	s7,184(sp)
    80200f50:	e1e2                	sd	s8,192(sp)
    80200f52:	e5e6                	sd	s9,200(sp)
    80200f54:	e9ea                	sd	s10,208(sp)
    80200f56:	edee                	sd	s11,216(sp)
    80200f58:	f1f2                	sd	t3,224(sp)
    80200f5a:	f5f6                	sd	t4,232(sp)
    80200f5c:	f9fa                	sd	t5,240(sp)
    80200f5e:	fdfe                	sd	t6,248(sp)
    80200f60:	100022f3          	csrr	t0,sstatus
    80200f64:	14102373          	csrr	t1,sepc
    80200f68:	e216                	sd	t0,256(sp)
    80200f6a:	e61a                	sd	t1,264(sp)
    80200f6c:	140023f3          	csrr	t2,sscratch
    80200f70:	e81e                	sd	t2,16(sp)
    80200f72:	850a                	mv	a0,sp
    80200f74:	eb9ff0ef          	jal	80200e2c <trap_handler>

0000000080200f78 <__restore>:
    80200f78:	812a                	mv	sp,a0
    80200f7a:	6292                	ld	t0,256(sp)
    80200f7c:	6332                	ld	t1,264(sp)
    80200f7e:	63c2                	ld	t2,16(sp)
    80200f80:	10029073          	csrw	sstatus,t0
    80200f84:	14131073          	csrw	sepc,t1
    80200f88:	14039073          	csrw	sscratch,t2
    80200f8c:	60a2                	ld	ra,8(sp)
    80200f8e:	61e2                	ld	gp,24(sp)
    80200f90:	72a2                	ld	t0,40(sp)
    80200f92:	7342                	ld	t1,48(sp)
    80200f94:	73e2                	ld	t2,56(sp)
    80200f96:	6406                	ld	s0,64(sp)
    80200f98:	64a6                	ld	s1,72(sp)
    80200f9a:	6546                	ld	a0,80(sp)
    80200f9c:	65e6                	ld	a1,88(sp)
    80200f9e:	7606                	ld	a2,96(sp)
    80200fa0:	76a6                	ld	a3,104(sp)
    80200fa2:	7746                	ld	a4,112(sp)
    80200fa4:	77e6                	ld	a5,120(sp)
    80200fa6:	680a                	ld	a6,128(sp)
    80200fa8:	68aa                	ld	a7,136(sp)
    80200faa:	694a                	ld	s2,144(sp)
    80200fac:	69ea                	ld	s3,152(sp)
    80200fae:	7a0a                	ld	s4,160(sp)
    80200fb0:	7aaa                	ld	s5,168(sp)
    80200fb2:	7b4a                	ld	s6,176(sp)
    80200fb4:	7bea                	ld	s7,184(sp)
    80200fb6:	6c0e                	ld	s8,192(sp)
    80200fb8:	6cae                	ld	s9,200(sp)
    80200fba:	6d4e                	ld	s10,208(sp)
    80200fbc:	6dee                	ld	s11,216(sp)
    80200fbe:	7e0e                	ld	t3,224(sp)
    80200fc0:	7eae                	ld	t4,232(sp)
    80200fc2:	7f4e                	ld	t5,240(sp)
    80200fc4:	7fee                	ld	t6,248(sp)
    80200fc6:	6151                	addi	sp,sp,272
    80200fc8:	14011173          	csrrw	sp,sscratch,sp
    80200fcc:	10200073          	sret
	...

0000000080200fd2 <strlen>:
    80200fd2:	7179                	addi	sp,sp,-48
    80200fd4:	f406                	sd	ra,40(sp)
    80200fd6:	f022                	sd	s0,32(sp)
    80200fd8:	1800                	addi	s0,sp,48
    80200fda:	fca43c23          	sd	a0,-40(s0)
    80200fde:	fe042623          	sw	zero,-20(s0)
    80200fe2:	a031                	j	80200fee <strlen+0x1c>
    80200fe4:	fec42783          	lw	a5,-20(s0)
    80200fe8:	2785                	addiw	a5,a5,1
    80200fea:	fef42623          	sw	a5,-20(s0)
    80200fee:	fec46783          	lwu	a5,-20(s0)
    80200ff2:	fd843703          	ld	a4,-40(s0)
    80200ff6:	97ba                	add	a5,a5,a4
    80200ff8:	00078783          	lb	a5,0(a5)
    80200ffc:	f7e5                	bnez	a5,80200fe4 <strlen+0x12>
    80200ffe:	fec42783          	lw	a5,-20(s0)
    80201002:	853e                	mv	a0,a5
    80201004:	70a2                	ld	ra,40(sp)
    80201006:	7402                	ld	s0,32(sp)
    80201008:	6145                	addi	sp,sp,48
    8020100a:	8082                	ret

000000008020100c <memcpy>:
    8020100c:	7139                	addi	sp,sp,-64
    8020100e:	fc06                	sd	ra,56(sp)
    80201010:	f822                	sd	s0,48(sp)
    80201012:	0080                	addi	s0,sp,64
    80201014:	fca43c23          	sd	a0,-40(s0)
    80201018:	fcb43823          	sd	a1,-48(s0)
    8020101c:	fcc43423          	sd	a2,-56(s0)
    80201020:	fd843783          	ld	a5,-40(s0)
    80201024:	fef43423          	sd	a5,-24(s0)
    80201028:	fd043783          	ld	a5,-48(s0)
    8020102c:	fef43023          	sd	a5,-32(s0)
    80201030:	a00d                	j	80201052 <memcpy+0x46>
    80201032:	fe043703          	ld	a4,-32(s0)
    80201036:	00170793          	addi	a5,a4,1
    8020103a:	fef43023          	sd	a5,-32(s0)
    8020103e:	fe843783          	ld	a5,-24(s0)
    80201042:	00178693          	addi	a3,a5,1
    80201046:	fed43423          	sd	a3,-24(s0)
    8020104a:	00074703          	lbu	a4,0(a4)
    8020104e:	00e78023          	sb	a4,0(a5)
    80201052:	fc843783          	ld	a5,-56(s0)
    80201056:	fff78713          	addi	a4,a5,-1
    8020105a:	fce43423          	sd	a4,-56(s0)
    8020105e:	fbf1                	bnez	a5,80201032 <memcpy+0x26>
    80201060:	fd843783          	ld	a5,-40(s0)
    80201064:	853e                	mv	a0,a5
    80201066:	70e2                	ld	ra,56(sp)
    80201068:	7442                	ld	s0,48(sp)
    8020106a:	6121                	addi	sp,sp,64
    8020106c:	8082                	ret

000000008020106e <memcmp>:
    8020106e:	715d                	addi	sp,sp,-80
    80201070:	e486                	sd	ra,72(sp)
    80201072:	e0a2                	sd	s0,64(sp)
    80201074:	0880                	addi	s0,sp,80
    80201076:	fca43423          	sd	a0,-56(s0)
    8020107a:	fcb43023          	sd	a1,-64(s0)
    8020107e:	fac43c23          	sd	a2,-72(s0)
    80201082:	fc843783          	ld	a5,-56(s0)
    80201086:	fef43423          	sd	a5,-24(s0)
    8020108a:	fc043783          	ld	a5,-64(s0)
    8020108e:	fef43023          	sd	a5,-32(s0)
    80201092:	a099                	j	802010d8 <memcmp+0x6a>
    80201094:	fe843783          	ld	a5,-24(s0)
    80201098:	0007c783          	lbu	a5,0(a5)
    8020109c:	0007871b          	sext.w	a4,a5
    802010a0:	fe043783          	ld	a5,-32(s0)
    802010a4:	0007c783          	lbu	a5,0(a5)
    802010a8:	2781                	sext.w	a5,a5
    802010aa:	40f707bb          	subw	a5,a4,a5
    802010ae:	fcf42e23          	sw	a5,-36(s0)
    802010b2:	fdc42783          	lw	a5,-36(s0)
    802010b6:	2781                	sext.w	a5,a5
    802010b8:	e785                	bnez	a5,802010e0 <memcmp+0x72>
    802010ba:	fe843783          	ld	a5,-24(s0)
    802010be:	0785                	addi	a5,a5,1
    802010c0:	fef43423          	sd	a5,-24(s0)
    802010c4:	fe043783          	ld	a5,-32(s0)
    802010c8:	0785                	addi	a5,a5,1
    802010ca:	fef43023          	sd	a5,-32(s0)
    802010ce:	fb843783          	ld	a5,-72(s0)
    802010d2:	17fd                	addi	a5,a5,-1
    802010d4:	faf43c23          	sd	a5,-72(s0)
    802010d8:	fb843783          	ld	a5,-72(s0)
    802010dc:	ffc5                	bnez	a5,80201094 <memcmp+0x26>
    802010de:	a011                	j	802010e2 <memcmp+0x74>
    802010e0:	0001                	nop
    802010e2:	fdc42783          	lw	a5,-36(s0)
    802010e6:	853e                	mv	a0,a5
    802010e8:	60a6                	ld	ra,72(sp)
    802010ea:	6406                	ld	s0,64(sp)
    802010ec:	6161                	addi	sp,sp,80
    802010ee:	8082                	ret

00000000802010f0 <memmove>:
    802010f0:	7139                	addi	sp,sp,-64
    802010f2:	fc06                	sd	ra,56(sp)
    802010f4:	f822                	sd	s0,48(sp)
    802010f6:	0080                	addi	s0,sp,64
    802010f8:	fca43c23          	sd	a0,-40(s0)
    802010fc:	fcb43823          	sd	a1,-48(s0)
    80201100:	87b2                	mv	a5,a2
    80201102:	fcf42623          	sw	a5,-52(s0)
    80201106:	fd843783          	ld	a5,-40(s0)
    8020110a:	fef43423          	sd	a5,-24(s0)
    8020110e:	a035                	j	8020113a <memmove+0x4a>
    80201110:	fd043703          	ld	a4,-48(s0)
    80201114:	00170793          	addi	a5,a4,1
    80201118:	fcf43823          	sd	a5,-48(s0)
    8020111c:	fe843783          	ld	a5,-24(s0)
    80201120:	00178693          	addi	a3,a5,1
    80201124:	fed43423          	sd	a3,-24(s0)
    80201128:	00074703          	lbu	a4,0(a4)
    8020112c:	00e78023          	sb	a4,0(a5)
    80201130:	fcc42783          	lw	a5,-52(s0)
    80201134:	37fd                	addiw	a5,a5,-1
    80201136:	fcf42623          	sw	a5,-52(s0)
    8020113a:	fcc42783          	lw	a5,-52(s0)
    8020113e:	2781                	sext.w	a5,a5
    80201140:	fbe1                	bnez	a5,80201110 <memmove+0x20>
    80201142:	0001                	nop
    80201144:	0001                	nop
    80201146:	70e2                	ld	ra,56(sp)
    80201148:	7442                	ld	s0,48(sp)
    8020114a:	6121                	addi	sp,sp,64
    8020114c:	8082                	ret

000000008020114e <memset>:
    8020114e:	7179                	addi	sp,sp,-48
    80201150:	f406                	sd	ra,40(sp)
    80201152:	f022                	sd	s0,32(sp)
    80201154:	1800                	addi	s0,sp,48
    80201156:	fca43c23          	sd	a0,-40(s0)
    8020115a:	87ae                	mv	a5,a1
    8020115c:	8732                	mv	a4,a2
    8020115e:	fcf40ba3          	sb	a5,-41(s0)
    80201162:	87ba                	mv	a5,a4
    80201164:	fcf42823          	sw	a5,-48(s0)
    80201168:	fd843783          	ld	a5,-40(s0)
    8020116c:	fef43423          	sd	a5,-24(s0)
    80201170:	a005                	j	80201190 <memset+0x42>
    80201172:	fe843783          	ld	a5,-24(s0)
    80201176:	00178713          	addi	a4,a5,1
    8020117a:	fee43423          	sd	a4,-24(s0)
    8020117e:	fd744703          	lbu	a4,-41(s0)
    80201182:	00e78023          	sb	a4,0(a5)
    80201186:	fd042783          	lw	a5,-48(s0)
    8020118a:	37fd                	addiw	a5,a5,-1
    8020118c:	fcf42823          	sw	a5,-48(s0)
    80201190:	fd042783          	lw	a5,-48(s0)
    80201194:	2781                	sext.w	a5,a5
    80201196:	fff1                	bnez	a5,80201172 <memset+0x24>
    80201198:	fd843783          	ld	a5,-40(s0)
    8020119c:	853e                	mv	a0,a5
    8020119e:	70a2                	ld	ra,40(sp)
    802011a0:	7402                	ld	s0,32(sp)
    802011a2:	6145                	addi	sp,sp,48
    802011a4:	8082                	ret

00000000802011a6 <strcmp>:
    802011a6:	1101                	addi	sp,sp,-32
    802011a8:	ec06                	sd	ra,24(sp)
    802011aa:	e822                	sd	s0,16(sp)
    802011ac:	1000                	addi	s0,sp,32
    802011ae:	fea43423          	sd	a0,-24(s0)
    802011b2:	feb43023          	sd	a1,-32(s0)
    802011b6:	a091                	j	802011fa <strcmp+0x54>
    802011b8:	fe843783          	ld	a5,-24(s0)
    802011bc:	00078703          	lb	a4,0(a5)
    802011c0:	fe043783          	ld	a5,-32(s0)
    802011c4:	00078783          	lb	a5,0(a5)
    802011c8:	00f70f63          	beq	a4,a5,802011e6 <strcmp+0x40>
    802011cc:	fe843783          	ld	a5,-24(s0)
    802011d0:	00078783          	lb	a5,0(a5)
    802011d4:	873e                	mv	a4,a5
    802011d6:	fe043783          	ld	a5,-32(s0)
    802011da:	00078783          	lb	a5,0(a5)
    802011de:	40f707bb          	subw	a5,a4,a5
    802011e2:	2781                	sext.w	a5,a5
    802011e4:	a089                	j	80201226 <strcmp+0x80>
    802011e6:	fe843783          	ld	a5,-24(s0)
    802011ea:	0785                	addi	a5,a5,1
    802011ec:	fef43423          	sd	a5,-24(s0)
    802011f0:	fe043783          	ld	a5,-32(s0)
    802011f4:	0785                	addi	a5,a5,1
    802011f6:	fef43023          	sd	a5,-32(s0)
    802011fa:	fe843783          	ld	a5,-24(s0)
    802011fe:	00078783          	lb	a5,0(a5)
    80201202:	c791                	beqz	a5,8020120e <strcmp+0x68>
    80201204:	fe043783          	ld	a5,-32(s0)
    80201208:	00078783          	lb	a5,0(a5)
    8020120c:	f7d5                	bnez	a5,802011b8 <strcmp+0x12>
    8020120e:	fe843783          	ld	a5,-24(s0)
    80201212:	00078783          	lb	a5,0(a5)
    80201216:	873e                	mv	a4,a5
    80201218:	fe043783          	ld	a5,-32(s0)
    8020121c:	00078783          	lb	a5,0(a5)
    80201220:	40f707bb          	subw	a5,a4,a5
    80201224:	2781                	sext.w	a5,a5
    80201226:	853e                	mv	a0,a5
    80201228:	60e2                	ld	ra,24(sp)
    8020122a:	6442                	ld	s0,16(sp)
    8020122c:	6105                	addi	sp,sp,32
    8020122e:	8082                	ret

0000000080201230 <ifsubstr>:
    80201230:	7139                	addi	sp,sp,-64
    80201232:	fc06                	sd	ra,56(sp)
    80201234:	f822                	sd	s0,48(sp)
    80201236:	0080                	addi	s0,sp,64
    80201238:	fca43c23          	sd	a0,-40(s0)
    8020123c:	fcb43823          	sd	a1,-48(s0)
    80201240:	87b2                	mv	a5,a2
    80201242:	fcf42623          	sw	a5,-52(s0)
    80201246:	fd043503          	ld	a0,-48(s0)
    8020124a:	d89ff0ef          	jal	80200fd2 <strlen>
    8020124e:	87aa                	mv	a5,a0
    80201250:	fef42023          	sw	a5,-32(s0)
    80201254:	fe042623          	sw	zero,-20(s0)
    80201258:	fe042423          	sw	zero,-24(s0)
    8020125c:	fe042223          	sw	zero,-28(s0)
    80201260:	a04d                	j	80201302 <ifsubstr+0xd2>
    80201262:	fec42783          	lw	a5,-20(s0)
    80201266:	0007871b          	sext.w	a4,a5
    8020126a:	4785                	li	a5,1
    8020126c:	06f71063          	bne	a4,a5,802012cc <ifsubstr+0x9c>
    80201270:	fe842783          	lw	a5,-24(s0)
    80201274:	0017871b          	addiw	a4,a5,1
    80201278:	fee42423          	sw	a4,-24(s0)
    8020127c:	1782                	slli	a5,a5,0x20
    8020127e:	9381                	srli	a5,a5,0x20
    80201280:	fd843703          	ld	a4,-40(s0)
    80201284:	97ba                	add	a5,a5,a4
    80201286:	0007c683          	lbu	a3,0(a5)
    8020128a:	fe442783          	lw	a5,-28(s0)
    8020128e:	0017871b          	addiw	a4,a5,1
    80201292:	fee42223          	sw	a4,-28(s0)
    80201296:	1782                	slli	a5,a5,0x20
    80201298:	9381                	srli	a5,a5,0x20
    8020129a:	fd043703          	ld	a4,-48(s0)
    8020129e:	97ba                	add	a5,a5,a4
    802012a0:	0007c783          	lbu	a5,0(a5)
    802012a4:	8736                	mv	a4,a3
    802012a6:	00f71d63          	bne	a4,a5,802012c0 <ifsubstr+0x90>
    802012aa:	fe442783          	lw	a5,-28(s0)
    802012ae:	873e                	mv	a4,a5
    802012b0:	fe042783          	lw	a5,-32(s0)
    802012b4:	2701                	sext.w	a4,a4
    802012b6:	2781                	sext.w	a5,a5
    802012b8:	04f71563          	bne	a4,a5,80201302 <ifsubstr+0xd2>
    802012bc:	4785                	li	a5,1
    802012be:	a8bd                	j	8020133c <ifsubstr+0x10c>
    802012c0:	fe042223          	sw	zero,-28(s0)
    802012c4:	4785                	li	a5,1
    802012c6:	fef42623          	sw	a5,-20(s0)
    802012ca:	a825                	j	80201302 <ifsubstr+0xd2>
    802012cc:	fe842783          	lw	a5,-24(s0)
    802012d0:	0017871b          	addiw	a4,a5,1
    802012d4:	fee42423          	sw	a4,-24(s0)
    802012d8:	1782                	slli	a5,a5,0x20
    802012da:	9381                	srli	a5,a5,0x20
    802012dc:	fd843703          	ld	a4,-40(s0)
    802012e0:	97ba                	add	a5,a5,a4
    802012e2:	0007c703          	lbu	a4,0(a5)
    802012e6:	fd043783          	ld	a5,-48(s0)
    802012ea:	0007c783          	lbu	a5,0(a5)
    802012ee:	00f71a63          	bne	a4,a5,80201302 <ifsubstr+0xd2>
    802012f2:	4785                	li	a5,1
    802012f4:	fef42623          	sw	a5,-20(s0)
    802012f8:	fe442783          	lw	a5,-28(s0)
    802012fc:	2785                	addiw	a5,a5,1
    802012fe:	fef42223          	sw	a5,-28(s0)
    80201302:	fcc42783          	lw	a5,-52(s0)
    80201306:	fe842703          	lw	a4,-24(s0)
    8020130a:	2701                	sext.w	a4,a4
    8020130c:	00f77b63          	bgeu	a4,a5,80201322 <ifsubstr+0xf2>
    80201310:	fe442783          	lw	a5,-28(s0)
    80201314:	873e                	mv	a4,a5
    80201316:	fe042783          	lw	a5,-32(s0)
    8020131a:	2701                	sext.w	a4,a4
    8020131c:	2781                	sext.w	a5,a5
    8020131e:	f4f762e3          	bltu	a4,a5,80201262 <ifsubstr+0x32>
    80201322:	fe442783          	lw	a5,-28(s0)
    80201326:	873e                	mv	a4,a5
    80201328:	fe042783          	lw	a5,-32(s0)
    8020132c:	2701                	sext.w	a4,a4
    8020132e:	2781                	sext.w	a5,a5
    80201330:	00f77463          	bgeu	a4,a5,80201338 <ifsubstr+0x108>
    80201334:	4785                	li	a5,1
    80201336:	a019                	j	8020133c <ifsubstr+0x10c>
    80201338:	fec42783          	lw	a5,-20(s0)
    8020133c:	853e                	mv	a0,a5
    8020133e:	70e2                	ld	ra,56(sp)
    80201340:	7442                	ld	s0,48(sp)
    80201342:	6121                	addi	sp,sp,64
    80201344:	8082                	ret

0000000080201346 <strcpy>:
    80201346:	7179                	addi	sp,sp,-48
    80201348:	f406                	sd	ra,40(sp)
    8020134a:	f022                	sd	s0,32(sp)
    8020134c:	1800                	addi	s0,sp,48
    8020134e:	fca43c23          	sd	a0,-40(s0)
    80201352:	fcb43823          	sd	a1,-48(s0)
    80201356:	fd843783          	ld	a5,-40(s0)
    8020135a:	fef43423          	sd	a5,-24(s0)
    8020135e:	a00d                	j	80201380 <strcpy+0x3a>
    80201360:	fd043703          	ld	a4,-48(s0)
    80201364:	00170793          	addi	a5,a4,1
    80201368:	fcf43823          	sd	a5,-48(s0)
    8020136c:	fe843783          	ld	a5,-24(s0)
    80201370:	00178693          	addi	a3,a5,1
    80201374:	fed43423          	sd	a3,-24(s0)
    80201378:	00070703          	lb	a4,0(a4)
    8020137c:	00e78023          	sb	a4,0(a5)
    80201380:	fd043783          	ld	a5,-48(s0)
    80201384:	00078783          	lb	a5,0(a5)
    80201388:	ffe1                	bnez	a5,80201360 <strcpy+0x1a>
    8020138a:	fe843783          	ld	a5,-24(s0)
    8020138e:	00078023          	sb	zero,0(a5)
    80201392:	fd843783          	ld	a5,-40(s0)
    80201396:	853e                	mv	a0,a5
    80201398:	70a2                	ld	ra,40(sp)
    8020139a:	7402                	ld	s0,32(sp)
    8020139c:	6145                	addi	sp,sp,48
    8020139e:	8082                	ret

00000000802013a0 <strcat>:
    802013a0:	7179                	addi	sp,sp,-48
    802013a2:	f406                	sd	ra,40(sp)
    802013a4:	f022                	sd	s0,32(sp)
    802013a6:	1800                	addi	s0,sp,48
    802013a8:	fca43c23          	sd	a0,-40(s0)
    802013ac:	fcb43823          	sd	a1,-48(s0)
    802013b0:	fd843783          	ld	a5,-40(s0)
    802013b4:	fef43423          	sd	a5,-24(s0)
    802013b8:	a031                	j	802013c4 <strcat+0x24>
    802013ba:	fe843783          	ld	a5,-24(s0)
    802013be:	0785                	addi	a5,a5,1
    802013c0:	fef43423          	sd	a5,-24(s0)
    802013c4:	fe843783          	ld	a5,-24(s0)
    802013c8:	00078783          	lb	a5,0(a5)
    802013cc:	f7fd                	bnez	a5,802013ba <strcat+0x1a>
    802013ce:	a00d                	j	802013f0 <strcat+0x50>
    802013d0:	fd043703          	ld	a4,-48(s0)
    802013d4:	00170793          	addi	a5,a4,1
    802013d8:	fcf43823          	sd	a5,-48(s0)
    802013dc:	fe843783          	ld	a5,-24(s0)
    802013e0:	00178693          	addi	a3,a5,1
    802013e4:	fed43423          	sd	a3,-24(s0)
    802013e8:	00070703          	lb	a4,0(a4)
    802013ec:	00e78023          	sb	a4,0(a5)
    802013f0:	fd043783          	ld	a5,-48(s0)
    802013f4:	00078783          	lb	a5,0(a5)
    802013f8:	ffe1                	bnez	a5,802013d0 <strcat+0x30>
    802013fa:	fd843783          	ld	a5,-40(s0)
    802013fe:	853e                	mv	a0,a5
    80201400:	70a2                	ld	ra,40(sp)
    80201402:	7402                	ld	s0,32(sp)
    80201404:	6145                	addi	sp,sp,48
    80201406:	8082                	ret

0000000080201408 <sys_write>:
    80201408:	1101                	addi	sp,sp,-32
    8020140a:	ec06                	sd	ra,24(sp)
    8020140c:	e822                	sd	s0,16(sp)
    8020140e:	1000                	addi	s0,sp,32
    80201410:	fea43423          	sd	a0,-24(s0)
    80201414:	fe843583          	ld	a1,-24(s0)
    80201418:	00001517          	auipc	a0,0x1
    8020141c:	ef850513          	addi	a0,a0,-264 # 80202310 <rodata_start+0x310>
    80201420:	849ff0ef          	jal	80200c68 <printk>
    80201424:	4781                	li	a5,0
    80201426:	853e                	mv	a0,a5
    80201428:	60e2                	ld	ra,24(sp)
    8020142a:	6442                	ld	s0,16(sp)
    8020142c:	6105                	addi	sp,sp,32
    8020142e:	8082                	ret

0000000080201430 <sys_exit>:
    80201430:	1101                	addi	sp,sp,-32
    80201432:	ec06                	sd	ra,24(sp)
    80201434:	e822                	sd	s0,16(sp)
    80201436:	1000                	addi	s0,sp,32
    80201438:	fea43423          	sd	a0,-24(s0)
    8020143c:	fe843583          	ld	a1,-24(s0)
    80201440:	00001517          	auipc	a0,0x1
    80201444:	ed850513          	addi	a0,a0,-296 # 80202318 <rodata_start+0x318>
    80201448:	821ff0ef          	jal	80200c68 <printk>
    8020144c:	d1dfe0ef          	jal	80200168 <run_app>
    80201450:	4781                	li	a5,0
    80201452:	853e                	mv	a0,a5
    80201454:	60e2                	ld	ra,24(sp)
    80201456:	6442                	ld	s0,16(sp)
    80201458:	6105                	addi	sp,sp,32
    8020145a:	8082                	ret

000000008020145c <sys_stack_trace>:
    8020145c:	7179                	addi	sp,sp,-48
    8020145e:	f406                	sd	ra,40(sp)
    80201460:	f022                	sd	s0,32(sp)
    80201462:	1800                	addi	s0,sp,48
    80201464:	00001517          	auipc	a0,0x1
    80201468:	ed450513          	addi	a0,a0,-300 # 80202338 <rodata_start+0x338>
    8020146c:	ffcff0ef          	jal	80200c68 <printk>
    80201470:	87a2                	mv	a5,s0
    80201472:	fef43423          	sd	a5,-24(s0)
    80201476:	a81d                	j	802014ac <sys_stack_trace+0x50>
    80201478:	fe843783          	ld	a5,-24(s0)
    8020147c:	17fd                	addi	a5,a5,-1
    8020147e:	639c                	ld	a5,0(a5)
    80201480:	fef43023          	sd	a5,-32(s0)
    80201484:	fe843783          	ld	a5,-24(s0)
    80201488:	17f9                	addi	a5,a5,-2
    8020148a:	639c                	ld	a5,0(a5)
    8020148c:	fcf43c23          	sd	a5,-40(s0)
    80201490:	fd843603          	ld	a2,-40(s0)
    80201494:	fe043583          	ld	a1,-32(s0)
    80201498:	00001517          	auipc	a0,0x1
    8020149c:	ed050513          	addi	a0,a0,-304 # 80202368 <rodata_start+0x368>
    802014a0:	fc8ff0ef          	jal	80200c68 <printk>
    802014a4:	fd843783          	ld	a5,-40(s0)
    802014a8:	fef43423          	sd	a5,-24(s0)
    802014ac:	fe843783          	ld	a5,-24(s0)
    802014b0:	f7e1                	bnez	a5,80201478 <sys_stack_trace+0x1c>
    802014b2:	00001517          	auipc	a0,0x1
    802014b6:	ece50513          	addi	a0,a0,-306 # 80202380 <rodata_start+0x380>
    802014ba:	faeff0ef          	jal	80200c68 <printk>
    802014be:	4781                	li	a5,0
    802014c0:	853e                	mv	a0,a5
    802014c2:	70a2                	ld	ra,40(sp)
    802014c4:	7402                	ld	s0,32(sp)
    802014c6:	6145                	addi	sp,sp,48
    802014c8:	8082                	ret

00000000802014ca <syscall>:
    802014ca:	7139                	addi	sp,sp,-64
    802014cc:	fc06                	sd	ra,56(sp)
    802014ce:	f822                	sd	s0,48(sp)
    802014d0:	0080                	addi	s0,sp,64
    802014d2:	fca43c23          	sd	a0,-40(s0)
    802014d6:	fcb43823          	sd	a1,-48(s0)
    802014da:	fcc43423          	sd	a2,-56(s0)
    802014de:	fcd43023          	sd	a3,-64(s0)
    802014e2:	fd843703          	ld	a4,-40(s0)
    802014e6:	478d                	li	a5,3
    802014e8:	04f70363          	beq	a4,a5,8020152e <syscall+0x64>
    802014ec:	fd843703          	ld	a4,-40(s0)
    802014f0:	478d                	li	a5,3
    802014f2:	04e7e463          	bltu	a5,a4,8020153a <syscall+0x70>
    802014f6:	fd843703          	ld	a4,-40(s0)
    802014fa:	4785                	li	a5,1
    802014fc:	00f70863          	beq	a4,a5,8020150c <syscall+0x42>
    80201500:	fd843703          	ld	a4,-40(s0)
    80201504:	4789                	li	a5,2
    80201506:	00f70c63          	beq	a4,a5,8020151e <syscall+0x54>
    8020150a:	a805                	j	8020153a <syscall+0x70>
    8020150c:	fd043783          	ld	a5,-48(s0)
    80201510:	853e                	mv	a0,a5
    80201512:	ef7ff0ef          	jal	80201408 <sys_write>
    80201516:	87aa                	mv	a5,a0
    80201518:	fef43423          	sd	a5,-24(s0)
    8020151c:	a835                	j	80201558 <syscall+0x8e>
    8020151e:	fd043503          	ld	a0,-48(s0)
    80201522:	f0fff0ef          	jal	80201430 <sys_exit>
    80201526:	87aa                	mv	a5,a0
    80201528:	fef43423          	sd	a5,-24(s0)
    8020152c:	a035                	j	80201558 <syscall+0x8e>
    8020152e:	f2fff0ef          	jal	8020145c <sys_stack_trace>
    80201532:	87aa                	mv	a5,a0
    80201534:	fef43423          	sd	a5,-24(s0)
    80201538:	a005                	j	80201558 <syscall+0x8e>
    8020153a:	fd843583          	ld	a1,-40(s0)
    8020153e:	00001517          	auipc	a0,0x1
    80201542:	e7250513          	addi	a0,a0,-398 # 802023b0 <rodata_start+0x3b0>
    80201546:	f22ff0ef          	jal	80200c68 <printk>
    8020154a:	00001517          	auipc	a0,0x1
    8020154e:	e8650513          	addi	a0,a0,-378 # 802023d0 <rodata_start+0x3d0>
    80201552:	f1dfe0ef          	jal	8020046e <panic>
    80201556:	0001                	nop
    80201558:	fe843783          	ld	a5,-24(s0)
    8020155c:	853e                	mv	a0,a5
    8020155e:	70e2                	ld	ra,56(sp)
    80201560:	7442                	ld	s0,48(sp)
    80201562:	6121                	addi	sp,sp,64
    80201564:	8082                	ret
