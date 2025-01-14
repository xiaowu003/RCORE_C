
../target/os.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	00014117          	auipc	sp,0x14
    80200004:	00010113          	mv	sp,sp
    80200008:	2e40006f          	j	802002ec <main>
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

0000000080200030 <get_kernel_stack>:
    80200030:	1101                	addi	sp,sp,-32
    80200032:	ec06                	sd	ra,24(sp)
    80200034:	e822                	sd	s0,16(sp)
    80200036:	1000                	addi	s0,sp,32
    80200038:	fea43423          	sd	a0,-24(s0)
    8020003c:	fe843583          	ld	a1,-24(s0)
    80200040:	00002517          	auipc	a0,0x2
    80200044:	fc050513          	addi	a0,a0,-64 # 80202000 <rodata_start>
    80200048:	41f000ef          	jal	80200c66 <printk>
    8020004c:	fe843783          	ld	a5,-24(s0)
    80200050:	00f79713          	slli	a4,a5,0xf
    80200054:	00014797          	auipc	a5,0x14
    80200058:	fb478793          	addi	a5,a5,-76 # 80214008 <kernel_stack>
    8020005c:	97ba                	add	a5,a5,a4
    8020005e:	853e                	mv	a0,a5
    80200060:	60e2                	ld	ra,24(sp)
    80200062:	6442                	ld	s0,16(sp)
    80200064:	6105                	addi	sp,sp,32
    80200066:	8082                	ret

0000000080200068 <get_user_stack>:
    80200068:	1101                	addi	sp,sp,-32
    8020006a:	ec06                	sd	ra,24(sp)
    8020006c:	e822                	sd	s0,16(sp)
    8020006e:	1000                	addi	s0,sp,32
    80200070:	fea43423          	sd	a0,-24(s0)
    80200074:	fe843783          	ld	a5,-24(s0)
    80200078:	00c79713          	slli	a4,a5,0xc
    8020007c:	00024797          	auipc	a5,0x24
    80200080:	f8c78793          	addi	a5,a5,-116 # 80224008 <user_stack>
    80200084:	97ba                	add	a5,a5,a4
    80200086:	853e                	mv	a0,a5
    80200088:	60e2                	ld	ra,24(sp)
    8020008a:	6442                	ld	s0,16(sp)
    8020008c:	6105                	addi	sp,sp,32
    8020008e:	8082                	ret

0000000080200090 <load_init>:
    80200090:	1141                	addi	sp,sp,-16
    80200092:	e406                	sd	ra,8(sp)
    80200094:	e022                	sd	s0,0(sp)
    80200096:	0800                	addi	s0,sp,16
    80200098:	00027717          	auipc	a4,0x27
    8020009c:	f6870713          	addi	a4,a4,-152 # 80227000 <bss_end>
    802000a0:	20100793          	li	a5,513
    802000a4:	07da                	slli	a5,a5,0x16
    802000a6:	00f76863          	bltu	a4,a5,802000b6 <load_init+0x26>
    802000aa:	00002517          	auipc	a0,0x2
    802000ae:	f5e50513          	addi	a0,a0,-162 # 80202008 <rodata_start+0x8>
    802000b2:	3ba000ef          	jal	8020046c <panic>
    802000b6:	00026797          	auipc	a5,0x26
    802000ba:	41a78793          	addi	a5,a5,1050 # 802264d0 <app_info_ptr>
    802000be:	00003717          	auipc	a4,0x3
    802000c2:	f4270713          	addi	a4,a4,-190 # 80203000 <_num_app>
    802000c6:	e398                	sd	a4,0(a5)
    802000c8:	00026797          	auipc	a5,0x26
    802000cc:	40878793          	addi	a5,a5,1032 # 802264d0 <app_info_ptr>
    802000d0:	639c                	ld	a5,0(a5)
    802000d2:	6398                	ld	a4,0(a5)
    802000d4:	00026797          	auipc	a5,0x26
    802000d8:	40478793          	addi	a5,a5,1028 # 802264d8 <app_num>
    802000dc:	e398                	sd	a4,0(a5)
    802000de:	00026797          	auipc	a5,0x26
    802000e2:	3f278793          	addi	a5,a5,1010 # 802264d0 <app_info_ptr>
    802000e6:	639c                	ld	a5,0(a5)
    802000e8:	00878713          	addi	a4,a5,8
    802000ec:	00026797          	auipc	a5,0x26
    802000f0:	3e478793          	addi	a5,a5,996 # 802264d0 <app_info_ptr>
    802000f4:	e398                	sd	a4,0(a5)
    802000f6:	00002517          	auipc	a0,0x2
    802000fa:	f2a50513          	addi	a0,a0,-214 # 80202020 <rodata_start+0x20>
    802000fe:	369000ef          	jal	80200c66 <printk>
    80200102:	0001                	nop
    80200104:	60a2                	ld	ra,8(sp)
    80200106:	6402                	ld	s0,0(sp)
    80200108:	0141                	addi	sp,sp,16
    8020010a:	8082                	ret

000000008020010c <load_app>:
    8020010c:	7139                	addi	sp,sp,-64
    8020010e:	fc06                	sd	ra,56(sp)
    80200110:	f822                	sd	s0,48(sp)
    80200112:	0080                	addi	s0,sp,64
    80200114:	fca43423          	sd	a0,-56(s0)
    80200118:	fcb43023          	sd	a1,-64(s0)
    8020011c:	fc843783          	ld	a5,-56(s0)
    80200120:	0792                	slli	a5,a5,0x4
    80200122:	fc043703          	ld	a4,-64(s0)
    80200126:	97ba                	add	a5,a5,a4
    80200128:	639c                	ld	a5,0(a5)
    8020012a:	fef43423          	sd	a5,-24(s0)
    8020012e:	fc843783          	ld	a5,-56(s0)
    80200132:	0792                	slli	a5,a5,0x4
    80200134:	07a1                	addi	a5,a5,8
    80200136:	fc043703          	ld	a4,-64(s0)
    8020013a:	97ba                	add	a5,a5,a4
    8020013c:	639c                	ld	a5,0(a5)
    8020013e:	fef43023          	sd	a5,-32(s0)
    80200142:	fe043703          	ld	a4,-32(s0)
    80200146:	fe843783          	ld	a5,-24(s0)
    8020014a:	40f707b3          	sub	a5,a4,a5
    8020014e:	fcf43c23          	sd	a5,-40(s0)
    80200152:	fc843783          	ld	a5,-56(s0)
    80200156:	01179713          	slli	a4,a5,0x11
    8020015a:	20100793          	li	a5,513
    8020015e:	07da                	slli	a5,a5,0x16
    80200160:	97ba                	add	a5,a5,a4
    80200162:	00020637          	lui	a2,0x20
    80200166:	4581                	li	a1,0
    80200168:	853e                	mv	a0,a5
    8020016a:	7dd000ef          	jal	80201146 <memset>
    8020016e:	fc843783          	ld	a5,-56(s0)
    80200172:	01179713          	slli	a4,a5,0x11
    80200176:	20100793          	li	a5,513
    8020017a:	07da                	slli	a5,a5,0x16
    8020017c:	97ba                	add	a5,a5,a4
    8020017e:	fe843703          	ld	a4,-24(s0)
    80200182:	fd843603          	ld	a2,-40(s0)
    80200186:	85ba                	mv	a1,a4
    80200188:	853e                	mv	a0,a5
    8020018a:	763000ef          	jal	802010ec <memmove>
    8020018e:	00002517          	auipc	a0,0x2
    80200192:	eaa50513          	addi	a0,a0,-342 # 80202038 <rodata_start+0x38>
    80200196:	2d1000ef          	jal	80200c66 <printk>
    8020019a:	fd843783          	ld	a5,-40(s0)
    8020019e:	853e                	mv	a0,a5
    802001a0:	70e2                	ld	ra,56(sp)
    802001a2:	7442                	ld	s0,48(sp)
    802001a4:	6121                	addi	sp,sp,64
    802001a6:	8082                	ret

00000000802001a8 <run_all_app>:
    802001a8:	1101                	addi	sp,sp,-32
    802001aa:	ec06                	sd	ra,24(sp)
    802001ac:	e822                	sd	s0,16(sp)
    802001ae:	1000                	addi	s0,sp,32
    802001b0:	fe043423          	sd	zero,-24(s0)
    802001b4:	a869                	j	8020024e <run_all_app+0xa6>
    802001b6:	526010ef          	jal	802016dc <allocate_proc>
    802001ba:	fea43023          	sd	a0,-32(s0)
    802001be:	00026797          	auipc	a5,0x26
    802001c2:	31278793          	addi	a5,a5,786 # 802264d0 <app_info_ptr>
    802001c6:	639c                	ld	a5,0(a5)
    802001c8:	85be                	mv	a1,a5
    802001ca:	fe843503          	ld	a0,-24(s0)
    802001ce:	f3fff0ef          	jal	8020010c <load_app>
    802001d2:	fe043783          	ld	a5,-32(s0)
    802001d6:	6798                	ld	a4,8(a5)
    802001d8:	6785                	lui	a5,0x1
    802001da:	973e                	add	a4,a4,a5
    802001dc:	fe043783          	ld	a5,-32(s0)
    802001e0:	f798                	sd	a4,40(a5)
    802001e2:	fe843703          	ld	a4,-24(s0)
    802001e6:	6791                	lui	a5,0x4
    802001e8:	02078793          	addi	a5,a5,32 # 4020 <n+0x4000>
    802001ec:	97ba                	add	a5,a5,a4
    802001ee:	01179713          	slli	a4,a5,0x11
    802001f2:	fe043783          	ld	a5,-32(s0)
    802001f6:	12e7b023          	sd	a4,288(a5)
    802001fa:	e19ff0ef          	jal	80200012 <r_sstatus>
    802001fe:	87aa                	mv	a5,a0
    80200200:	eff7f713          	andi	a4,a5,-257
    80200204:	fe043783          	ld	a5,-32(s0)
    80200208:	10e7bc23          	sd	a4,280(a5)
    8020020c:	fe043783          	ld	a5,-32(s0)
    80200210:	6398                	ld	a4,0(a5)
    80200212:	6785                	lui	a5,0x1
    80200214:	ef078793          	addi	a5,a5,-272 # ef0 <n+0xed0>
    80200218:	97ba                	add	a5,a5,a4
    8020021a:	873e                	mv	a4,a5
    8020021c:	fe043783          	ld	a5,-32(s0)
    80200220:	07e1                	addi	a5,a5,24
    80200222:	11000613          	li	a2,272
    80200226:	85be                	mv	a1,a5
    80200228:	853a                	mv	a0,a4
    8020022a:	5df000ef          	jal	80201008 <memcpy>
    8020022e:	fe043783          	ld	a5,-32(s0)
    80200232:	6398                	ld	a4,0(a5)
    80200234:	6785                	lui	a5,0x1
    80200236:	ef078793          	addi	a5,a5,-272 # ef0 <n+0xed0>
    8020023a:	973e                	add	a4,a4,a5
    8020023c:	fe043783          	ld	a5,-32(s0)
    80200240:	12e7b823          	sd	a4,304(a5)
    80200244:	fe843783          	ld	a5,-24(s0)
    80200248:	0785                	addi	a5,a5,1
    8020024a:	fef43423          	sd	a5,-24(s0)
    8020024e:	00003797          	auipc	a5,0x3
    80200252:	db278793          	addi	a5,a5,-590 # 80203000 <_num_app>
    80200256:	639c                	ld	a5,0(a5)
    80200258:	fe843703          	ld	a4,-24(s0)
    8020025c:	f4f76de3          	bltu	a4,a5,802001b6 <run_all_app+0xe>
    80200260:	00002517          	auipc	a0,0x2
    80200264:	df050513          	addi	a0,a0,-528 # 80202050 <rodata_start+0x50>
    80200268:	1ff000ef          	jal	80200c66 <printk>
    8020026c:	4781                	li	a5,0
    8020026e:	853e                	mv	a0,a5
    80200270:	60e2                	ld	ra,24(sp)
    80200272:	6442                	ld	s0,16(sp)
    80200274:	6105                	addi	sp,sp,32
    80200276:	8082                	ret

0000000080200278 <clear_bss>:
    80200278:	1101                	addi	sp,sp,-32
    8020027a:	ec06                	sd	ra,24(sp)
    8020027c:	e822                	sd	s0,16(sp)
    8020027e:	1000                	addi	s0,sp,32
    80200280:	00027617          	auipc	a2,0x27
    80200284:	d8060613          	addi	a2,a2,-640 # 80227000 <bss_end>
    80200288:	00014597          	auipc	a1,0x14
    8020028c:	d7a58593          	addi	a1,a1,-646 # 80214002 <bss_start>
    80200290:	00002517          	auipc	a0,0x2
    80200294:	de050513          	addi	a0,a0,-544 # 80202070 <rodata_start+0x70>
    80200298:	1cf000ef          	jal	80200c66 <printk>
    8020029c:	00002517          	auipc	a0,0x2
    802002a0:	e0c50513          	addi	a0,a0,-500 # 802020a8 <rodata_start+0xa8>
    802002a4:	1c3000ef          	jal	80200c66 <printk>
    802002a8:	00014797          	auipc	a5,0x14
    802002ac:	d5a78793          	addi	a5,a5,-678 # 80214002 <bss_start>
    802002b0:	fef43423          	sd	a5,-24(s0)
    802002b4:	00014797          	auipc	a5,0x14
    802002b8:	d4e78793          	addi	a5,a5,-690 # 80214002 <bss_start>
    802002bc:	fef43023          	sd	a5,-32(s0)
    802002c0:	a811                	j	802002d4 <clear_bss+0x5c>
    802002c2:	fe843783          	ld	a5,-24(s0)
    802002c6:	00078023          	sb	zero,0(a5)
    802002ca:	fe843783          	ld	a5,-24(s0)
    802002ce:	0785                	addi	a5,a5,1
    802002d0:	fef43423          	sd	a5,-24(s0)
    802002d4:	fe843703          	ld	a4,-24(s0)
    802002d8:	fe043783          	ld	a5,-32(s0)
    802002dc:	fef763e3          	bltu	a4,a5,802002c2 <clear_bss+0x4a>
    802002e0:	0001                	nop
    802002e2:	0001                	nop
    802002e4:	60e2                	ld	ra,24(sp)
    802002e6:	6442                	ld	s0,16(sp)
    802002e8:	6105                	addi	sp,sp,32
    802002ea:	8082                	ret

00000000802002ec <main>:
    802002ec:	1141                	addi	sp,sp,-16
    802002ee:	e406                	sd	ra,8(sp)
    802002f0:	e022                	sd	s0,0(sp)
    802002f2:	0800                	addi	s0,sp,16
    802002f4:	f85ff0ef          	jal	80200278 <clear_bss>
    802002f8:	2fd000ef          	jal	80200df4 <trap_init>
    802002fc:	302010ef          	jal	802015fe <proc_init>
    80200300:	d91ff0ef          	jal	80200090 <load_init>
    80200304:	ea5ff0ef          	jal	802001a8 <run_all_app>
    80200308:	48c010ef          	jal	80201794 <scheduler>
    8020030c:	00002517          	auipc	a0,0x2
    80200310:	dbc50513          	addi	a0,a0,-580 # 802020c8 <rodata_start+0xc8>
    80200314:	158000ef          	jal	8020046c <panic>
    80200318:	4781                	li	a5,0
    8020031a:	853e                	mv	a0,a5
    8020031c:	60a2                	ld	ra,8(sp)
    8020031e:	6402                	ld	s0,0(sp)
    80200320:	0141                	addi	sp,sp,16
    80200322:	8082                	ret

0000000080200324 <sbi_ecall>:
    80200324:	7159                	addi	sp,sp,-112
    80200326:	f486                	sd	ra,104(sp)
    80200328:	f0a2                	sd	s0,96(sp)
    8020032a:	1880                	addi	s0,sp,112
    8020032c:	fcc43023          	sd	a2,-64(s0)
    80200330:	fad43c23          	sd	a3,-72(s0)
    80200334:	fae43823          	sd	a4,-80(s0)
    80200338:	faf43423          	sd	a5,-88(s0)
    8020033c:	fb043023          	sd	a6,-96(s0)
    80200340:	f9143c23          	sd	a7,-104(s0)
    80200344:	87aa                	mv	a5,a0
    80200346:	fcf42623          	sw	a5,-52(s0)
    8020034a:	87ae                	mv	a5,a1
    8020034c:	fcf42423          	sw	a5,-56(s0)
    80200350:	fc043503          	ld	a0,-64(s0)
    80200354:	fb843583          	ld	a1,-72(s0)
    80200358:	fb043603          	ld	a2,-80(s0)
    8020035c:	fa843683          	ld	a3,-88(s0)
    80200360:	fa043703          	ld	a4,-96(s0)
    80200364:	f9843783          	ld	a5,-104(s0)
    80200368:	fc842803          	lw	a6,-56(s0)
    8020036c:	fcc42883          	lw	a7,-52(s0)
    80200370:	00000073          	ecall
    80200374:	87aa                	mv	a5,a0
    80200376:	fcf43823          	sd	a5,-48(s0)
    8020037a:	87ae                	mv	a5,a1
    8020037c:	fcf43c23          	sd	a5,-40(s0)
    80200380:	fd043783          	ld	a5,-48(s0)
    80200384:	fef43023          	sd	a5,-32(s0)
    80200388:	fd843783          	ld	a5,-40(s0)
    8020038c:	fef43423          	sd	a5,-24(s0)
    80200390:	fe043703          	ld	a4,-32(s0)
    80200394:	fe843783          	ld	a5,-24(s0)
    80200398:	833a                	mv	t1,a4
    8020039a:	83be                	mv	t2,a5
    8020039c:	871a                	mv	a4,t1
    8020039e:	879e                	mv	a5,t2
    802003a0:	853a                	mv	a0,a4
    802003a2:	85be                	mv	a1,a5
    802003a4:	70a6                	ld	ra,104(sp)
    802003a6:	7406                	ld	s0,96(sp)
    802003a8:	6165                	addi	sp,sp,112
    802003aa:	8082                	ret

00000000802003ac <sbi_console_putchar>:
    802003ac:	1101                	addi	sp,sp,-32
    802003ae:	ec06                	sd	ra,24(sp)
    802003b0:	e822                	sd	s0,16(sp)
    802003b2:	1000                	addi	s0,sp,32
    802003b4:	87aa                	mv	a5,a0
    802003b6:	fef407a3          	sb	a5,-17(s0)
    802003ba:	fef40603          	lb	a2,-17(s0)
    802003be:	4881                	li	a7,0
    802003c0:	4801                	li	a6,0
    802003c2:	4781                	li	a5,0
    802003c4:	4701                	li	a4,0
    802003c6:	4681                	li	a3,0
    802003c8:	4581                	li	a1,0
    802003ca:	4505                	li	a0,1
    802003cc:	f59ff0ef          	jal	80200324 <sbi_ecall>
    802003d0:	0001                	nop
    802003d2:	60e2                	ld	ra,24(sp)
    802003d4:	6442                	ld	s0,16(sp)
    802003d6:	6105                	addi	sp,sp,32
    802003d8:	8082                	ret

00000000802003da <sbi_shut_down>:
    802003da:	1101                	addi	sp,sp,-32
    802003dc:	ec06                	sd	ra,24(sp)
    802003de:	e822                	sd	s0,16(sp)
    802003e0:	1000                	addi	s0,sp,32
    802003e2:	87aa                	mv	a5,a0
    802003e4:	fef42623          	sw	a5,-20(s0)
    802003e8:	fec46683          	lwu	a3,-20(s0)
    802003ec:	4881                	li	a7,0
    802003ee:	4801                	li	a6,0
    802003f0:	4781                	li	a5,0
    802003f2:	4701                	li	a4,0
    802003f4:	4601                	li	a2,0
    802003f6:	4581                	li	a1,0
    802003f8:	53525537          	lui	a0,0x53525
    802003fc:	35450513          	addi	a0,a0,852 # 53525354 <n+0x53525334>
    80200400:	f25ff0ef          	jal	80200324 <sbi_ecall>
    80200404:	0001                	nop
    80200406:	60e2                	ld	ra,24(sp)
    80200408:	6442                	ld	s0,16(sp)
    8020040a:	6105                	addi	sp,sp,32
    8020040c:	8082                	ret

000000008020040e <print>:
    8020040e:	1101                	addi	sp,sp,-32
    80200410:	ec06                	sd	ra,24(sp)
    80200412:	e822                	sd	s0,16(sp)
    80200414:	1000                	addi	s0,sp,32
    80200416:	fea43423          	sd	a0,-24(s0)
    8020041a:	a821                	j	80200432 <print+0x24>
    8020041c:	fe843783          	ld	a5,-24(s0)
    80200420:	00178713          	addi	a4,a5,1
    80200424:	fee43423          	sd	a4,-24(s0)
    80200428:	00078783          	lb	a5,0(a5)
    8020042c:	853e                	mv	a0,a5
    8020042e:	f7fff0ef          	jal	802003ac <sbi_console_putchar>
    80200432:	fe843783          	ld	a5,-24(s0)
    80200436:	00078783          	lb	a5,0(a5)
    8020043a:	f3ed                	bnez	a5,8020041c <print+0xe>
    8020043c:	0001                	nop
    8020043e:	0001                	nop
    80200440:	60e2                	ld	ra,24(sp)
    80200442:	6442                	ld	s0,16(sp)
    80200444:	6105                	addi	sp,sp,32
    80200446:	8082                	ret

0000000080200448 <println>:
    80200448:	1101                	addi	sp,sp,-32
    8020044a:	ec06                	sd	ra,24(sp)
    8020044c:	e822                	sd	s0,16(sp)
    8020044e:	1000                	addi	s0,sp,32
    80200450:	fea43423          	sd	a0,-24(s0)
    80200454:	fe843503          	ld	a0,-24(s0)
    80200458:	fb7ff0ef          	jal	8020040e <print>
    8020045c:	4529                	li	a0,10
    8020045e:	f4fff0ef          	jal	802003ac <sbi_console_putchar>
    80200462:	0001                	nop
    80200464:	60e2                	ld	ra,24(sp)
    80200466:	6442                	ld	s0,16(sp)
    80200468:	6105                	addi	sp,sp,32
    8020046a:	8082                	ret

000000008020046c <panic>:
    8020046c:	1101                	addi	sp,sp,-32
    8020046e:	ec06                	sd	ra,24(sp)
    80200470:	e822                	sd	s0,16(sp)
    80200472:	1000                	addi	s0,sp,32
    80200474:	fea43423          	sd	a0,-24(s0)
    80200478:	4529                	li	a0,10
    8020047a:	f33ff0ef          	jal	802003ac <sbi_console_putchar>
    8020047e:	7d7000ef          	jal	80201454 <sys_stack_trace>
    80200482:	00002517          	auipc	a0,0x2
    80200486:	c5e50513          	addi	a0,a0,-930 # 802020e0 <rodata_start+0xe0>
    8020048a:	f85ff0ef          	jal	8020040e <print>
    8020048e:	fe843503          	ld	a0,-24(s0)
    80200492:	fb7ff0ef          	jal	80200448 <println>
    80200496:	4505                	li	a0,1
    80200498:	f43ff0ef          	jal	802003da <sbi_shut_down>
    8020049c:	0001                	nop
    8020049e:	60e2                	ld	ra,24(sp)
    802004a0:	6442                	ld	s0,16(sp)
    802004a2:	6105                	addi	sp,sp,32
    802004a4:	8082                	ret

00000000802004a6 <mini_strlen>:
    802004a6:	7179                	addi	sp,sp,-48
    802004a8:	f406                	sd	ra,40(sp)
    802004aa:	f022                	sd	s0,32(sp)
    802004ac:	1800                	addi	s0,sp,48
    802004ae:	fca43c23          	sd	a0,-40(s0)
    802004b2:	fe042623          	sw	zero,-20(s0)
    802004b6:	a031                	j	802004c2 <mini_strlen+0x1c>
    802004b8:	fec42783          	lw	a5,-20(s0)
    802004bc:	2785                	addiw	a5,a5,1
    802004be:	fef42623          	sw	a5,-20(s0)
    802004c2:	fec46783          	lwu	a5,-20(s0)
    802004c6:	fd843703          	ld	a4,-40(s0)
    802004ca:	97ba                	add	a5,a5,a4
    802004cc:	00078783          	lb	a5,0(a5)
    802004d0:	f7e5                	bnez	a5,802004b8 <mini_strlen+0x12>
    802004d2:	fec42783          	lw	a5,-20(s0)
    802004d6:	853e                	mv	a0,a5
    802004d8:	70a2                	ld	ra,40(sp)
    802004da:	7402                	ld	s0,32(sp)
    802004dc:	6145                	addi	sp,sp,48
    802004de:	8082                	ret

00000000802004e0 <mini_itoa>:
    802004e0:	715d                	addi	sp,sp,-80
    802004e2:	e486                	sd	ra,72(sp)
    802004e4:	e0a2                	sd	s0,64(sp)
    802004e6:	0880                	addi	s0,sp,80
    802004e8:	fca43423          	sd	a0,-56(s0)
    802004ec:	fae43823          	sd	a4,-80(s0)
    802004f0:	873e                	mv	a4,a5
    802004f2:	87ae                	mv	a5,a1
    802004f4:	fcf42223          	sw	a5,-60(s0)
    802004f8:	87b2                	mv	a5,a2
    802004fa:	fcf42023          	sw	a5,-64(s0)
    802004fe:	87b6                	mv	a5,a3
    80200500:	faf42e23          	sw	a5,-68(s0)
    80200504:	87ba                	mv	a5,a4
    80200506:	faf42c23          	sw	a5,-72(s0)
    8020050a:	fb043783          	ld	a5,-80(s0)
    8020050e:	fef43423          	sd	a5,-24(s0)
    80200512:	fe042223          	sw	zero,-28(s0)
    80200516:	fc442783          	lw	a5,-60(s0)
    8020051a:	0007871b          	sext.w	a4,a5
    8020051e:	47c1                	li	a5,16
    80200520:	00e7f463          	bgeu	a5,a4,80200528 <mini_itoa+0x48>
    80200524:	4781                	li	a5,0
    80200526:	aaf9                	j	80200704 <mini_itoa+0x224>
    80200528:	fc843783          	ld	a5,-56(s0)
    8020052c:	0007df63          	bgez	a5,8020054a <mini_itoa+0x6a>
    80200530:	fbc42783          	lw	a5,-68(s0)
    80200534:	2781                	sext.w	a5,a5
    80200536:	eb91                	bnez	a5,8020054a <mini_itoa+0x6a>
    80200538:	4785                	li	a5,1
    8020053a:	fef42223          	sw	a5,-28(s0)
    8020053e:	fc843783          	ld	a5,-56(s0)
    80200542:	40f007b3          	neg	a5,a5
    80200546:	fcf43423          	sd	a5,-56(s0)
    8020054a:	fc042e23          	sw	zero,-36(s0)
    8020054e:	fbc42783          	lw	a5,-68(s0)
    80200552:	2781                	sext.w	a5,a5
    80200554:	cb91                	beqz	a5,80200568 <mini_itoa+0x88>
    80200556:	fc843703          	ld	a4,-56(s0)
    8020055a:	fc446783          	lwu	a5,-60(s0)
    8020055e:	02f777b3          	remu	a5,a4,a5
    80200562:	fcf42e23          	sw	a5,-36(s0)
    80200566:	a809                	j	80200578 <mini_itoa+0x98>
    80200568:	fc446783          	lwu	a5,-60(s0)
    8020056c:	fc843703          	ld	a4,-56(s0)
    80200570:	02f767b3          	rem	a5,a4,a5
    80200574:	fcf42e23          	sw	a5,-36(s0)
    80200578:	fdc42783          	lw	a5,-36(s0)
    8020057c:	0007871b          	sext.w	a4,a5
    80200580:	47a5                	li	a5,9
    80200582:	00e7cb63          	blt	a5,a4,80200598 <mini_itoa+0xb8>
    80200586:	fdc42783          	lw	a5,-36(s0)
    8020058a:	0ff7f793          	zext.b	a5,a5
    8020058e:	0307879b          	addiw	a5,a5,48
    80200592:	0ff7f713          	zext.b	a4,a5
    80200596:	a025                	j	802005be <mini_itoa+0xde>
    80200598:	fc042783          	lw	a5,-64(s0)
    8020059c:	2781                	sext.w	a5,a5
    8020059e:	c781                	beqz	a5,802005a6 <mini_itoa+0xc6>
    802005a0:	04100793          	li	a5,65
    802005a4:	a019                	j	802005aa <mini_itoa+0xca>
    802005a6:	06100793          	li	a5,97
    802005aa:	fdc42703          	lw	a4,-36(s0)
    802005ae:	0ff77713          	zext.b	a4,a4
    802005b2:	9fb9                	addw	a5,a5,a4
    802005b4:	0ff7f793          	zext.b	a5,a5
    802005b8:	37d9                	addiw	a5,a5,-10
    802005ba:	0ff7f713          	zext.b	a4,a5
    802005be:	fe843783          	ld	a5,-24(s0)
    802005c2:	00178693          	addi	a3,a5,1
    802005c6:	fed43423          	sd	a3,-24(s0)
    802005ca:	00e78023          	sb	a4,0(a5)
    802005ce:	fbc42783          	lw	a5,-68(s0)
    802005d2:	2781                	sext.w	a5,a5
    802005d4:	cb91                	beqz	a5,802005e8 <mini_itoa+0x108>
    802005d6:	fc843703          	ld	a4,-56(s0)
    802005da:	fc446783          	lwu	a5,-60(s0)
    802005de:	02f757b3          	divu	a5,a4,a5
    802005e2:	fcf43423          	sd	a5,-56(s0)
    802005e6:	a809                	j	802005f8 <mini_itoa+0x118>
    802005e8:	fc446783          	lwu	a5,-60(s0)
    802005ec:	fc843703          	ld	a4,-56(s0)
    802005f0:	02f747b3          	div	a5,a4,a5
    802005f4:	fcf43423          	sd	a5,-56(s0)
    802005f8:	fc843783          	ld	a5,-56(s0)
    802005fc:	f7b9                	bnez	a5,8020054a <mini_itoa+0x6a>
    802005fe:	fe843703          	ld	a4,-24(s0)
    80200602:	fb043783          	ld	a5,-80(s0)
    80200606:	40f707b3          	sub	a5,a4,a5
    8020060a:	fef42023          	sw	a5,-32(s0)
    8020060e:	a005                	j	8020062e <mini_itoa+0x14e>
    80200610:	fe843783          	ld	a5,-24(s0)
    80200614:	00178713          	addi	a4,a5,1
    80200618:	fee43423          	sd	a4,-24(s0)
    8020061c:	03000713          	li	a4,48
    80200620:	00e78023          	sb	a4,0(a5)
    80200624:	fe042783          	lw	a5,-32(s0)
    80200628:	2785                	addiw	a5,a5,1
    8020062a:	fef42023          	sw	a5,-32(s0)
    8020062e:	fe042783          	lw	a5,-32(s0)
    80200632:	873e                	mv	a4,a5
    80200634:	fb842783          	lw	a5,-72(s0)
    80200638:	2701                	sext.w	a4,a4
    8020063a:	2781                	sext.w	a5,a5
    8020063c:	fcf76ae3          	bltu	a4,a5,80200610 <mini_itoa+0x130>
    80200640:	fe442783          	lw	a5,-28(s0)
    80200644:	2781                	sext.w	a5,a5
    80200646:	cb99                	beqz	a5,8020065c <mini_itoa+0x17c>
    80200648:	fe843783          	ld	a5,-24(s0)
    8020064c:	00178713          	addi	a4,a5,1
    80200650:	fee43423          	sd	a4,-24(s0)
    80200654:	02d00713          	li	a4,45
    80200658:	00e78023          	sb	a4,0(a5)
    8020065c:	fe843783          	ld	a5,-24(s0)
    80200660:	00078023          	sb	zero,0(a5)
    80200664:	fe843703          	ld	a4,-24(s0)
    80200668:	fb043783          	ld	a5,-80(s0)
    8020066c:	40f707b3          	sub	a5,a4,a5
    80200670:	fcf42c23          	sw	a5,-40(s0)
    80200674:	fe042023          	sw	zero,-32(s0)
    80200678:	a895                	j	802006ec <mini_itoa+0x20c>
    8020067a:	fe046783          	lwu	a5,-32(s0)
    8020067e:	fb043703          	ld	a4,-80(s0)
    80200682:	97ba                	add	a5,a5,a4
    80200684:	0007c783          	lbu	a5,0(a5)
    80200688:	fcf40ba3          	sb	a5,-41(s0)
    8020068c:	fd842783          	lw	a5,-40(s0)
    80200690:	873e                	mv	a4,a5
    80200692:	fe042783          	lw	a5,-32(s0)
    80200696:	40f707bb          	subw	a5,a4,a5
    8020069a:	2781                	sext.w	a5,a5
    8020069c:	37fd                	addiw	a5,a5,-1
    8020069e:	2781                	sext.w	a5,a5
    802006a0:	1782                	slli	a5,a5,0x20
    802006a2:	9381                	srli	a5,a5,0x20
    802006a4:	fb043703          	ld	a4,-80(s0)
    802006a8:	973e                	add	a4,a4,a5
    802006aa:	fe046783          	lwu	a5,-32(s0)
    802006ae:	fb043683          	ld	a3,-80(s0)
    802006b2:	97b6                	add	a5,a5,a3
    802006b4:	00074703          	lbu	a4,0(a4)
    802006b8:	00e78023          	sb	a4,0(a5)
    802006bc:	fd842783          	lw	a5,-40(s0)
    802006c0:	873e                	mv	a4,a5
    802006c2:	fe042783          	lw	a5,-32(s0)
    802006c6:	40f707bb          	subw	a5,a4,a5
    802006ca:	2781                	sext.w	a5,a5
    802006cc:	37fd                	addiw	a5,a5,-1
    802006ce:	2781                	sext.w	a5,a5
    802006d0:	1782                	slli	a5,a5,0x20
    802006d2:	9381                	srli	a5,a5,0x20
    802006d4:	fb043703          	ld	a4,-80(s0)
    802006d8:	97ba                	add	a5,a5,a4
    802006da:	fd744703          	lbu	a4,-41(s0)
    802006de:	00e78023          	sb	a4,0(a5)
    802006e2:	fe042783          	lw	a5,-32(s0)
    802006e6:	2785                	addiw	a5,a5,1
    802006e8:	fef42023          	sw	a5,-32(s0)
    802006ec:	fd842783          	lw	a5,-40(s0)
    802006f0:	0017d79b          	srliw	a5,a5,0x1
    802006f4:	2781                	sext.w	a5,a5
    802006f6:	fe042703          	lw	a4,-32(s0)
    802006fa:	2701                	sext.w	a4,a4
    802006fc:	f6f76fe3          	bltu	a4,a5,8020067a <mini_itoa+0x19a>
    80200700:	fd842783          	lw	a5,-40(s0)
    80200704:	853e                	mv	a0,a5
    80200706:	60a6                	ld	ra,72(sp)
    80200708:	6406                	ld	s0,64(sp)
    8020070a:	6161                	addi	sp,sp,80
    8020070c:	8082                	ret

000000008020070e <_putc>:
    8020070e:	1101                	addi	sp,sp,-32
    80200710:	ec06                	sd	ra,24(sp)
    80200712:	e822                	sd	s0,16(sp)
    80200714:	1000                	addi	s0,sp,32
    80200716:	87aa                	mv	a5,a0
    80200718:	feb43023          	sd	a1,-32(s0)
    8020071c:	fef42623          	sw	a5,-20(s0)
    80200720:	fe043783          	ld	a5,-32(s0)
    80200724:	6798                	ld	a4,8(a5)
    80200726:	fe043783          	ld	a5,-32(s0)
    8020072a:	639c                	ld	a5,0(a5)
    8020072c:	40f707b3          	sub	a5,a4,a5
    80200730:	2781                	sext.w	a5,a5
    80200732:	2785                	addiw	a5,a5,1
    80200734:	0007871b          	sext.w	a4,a5
    80200738:	fe043783          	ld	a5,-32(s0)
    8020073c:	4b9c                	lw	a5,16(a5)
    8020073e:	00f76463          	bltu	a4,a5,80200746 <_putc+0x38>
    80200742:	4781                	li	a5,0
    80200744:	a02d                	j	8020076e <_putc+0x60>
    80200746:	fe043783          	ld	a5,-32(s0)
    8020074a:	679c                	ld	a5,8(a5)
    8020074c:	00178693          	addi	a3,a5,1
    80200750:	fe043703          	ld	a4,-32(s0)
    80200754:	e714                	sd	a3,8(a4)
    80200756:	fec42703          	lw	a4,-20(s0)
    8020075a:	0ff77713          	zext.b	a4,a4
    8020075e:	00e78023          	sb	a4,0(a5)
    80200762:	fe043783          	ld	a5,-32(s0)
    80200766:	679c                	ld	a5,8(a5)
    80200768:	00078023          	sb	zero,0(a5)
    8020076c:	4785                	li	a5,1
    8020076e:	853e                	mv	a0,a5
    80200770:	60e2                	ld	ra,24(sp)
    80200772:	6442                	ld	s0,16(sp)
    80200774:	6105                	addi	sp,sp,32
    80200776:	8082                	ret

0000000080200778 <_puts>:
    80200778:	7139                	addi	sp,sp,-64
    8020077a:	fc06                	sd	ra,56(sp)
    8020077c:	f822                	sd	s0,48(sp)
    8020077e:	0080                	addi	s0,sp,64
    80200780:	fca43c23          	sd	a0,-40(s0)
    80200784:	87ae                	mv	a5,a1
    80200786:	fcc43423          	sd	a2,-56(s0)
    8020078a:	fcf42a23          	sw	a5,-44(s0)
    8020078e:	fc843783          	ld	a5,-56(s0)
    80200792:	4b9c                	lw	a5,16(a5)
    80200794:	02079713          	slli	a4,a5,0x20
    80200798:	9301                	srli	a4,a4,0x20
    8020079a:	fc843783          	ld	a5,-56(s0)
    8020079e:	6794                	ld	a3,8(a5)
    802007a0:	fc843783          	ld	a5,-56(s0)
    802007a4:	639c                	ld	a5,0(a5)
    802007a6:	40f687b3          	sub	a5,a3,a5
    802007aa:	8f1d                	sub	a4,a4,a5
    802007ac:	fd446783          	lwu	a5,-44(s0)
    802007b0:	02e7c463          	blt	a5,a4,802007d8 <_puts+0x60>
    802007b4:	fc843783          	ld	a5,-56(s0)
    802007b8:	4b98                	lw	a4,16(a5)
    802007ba:	fc843783          	ld	a5,-56(s0)
    802007be:	6794                	ld	a3,8(a5)
    802007c0:	fc843783          	ld	a5,-56(s0)
    802007c4:	639c                	ld	a5,0(a5)
    802007c6:	40f687b3          	sub	a5,a3,a5
    802007ca:	2781                	sext.w	a5,a5
    802007cc:	40f707bb          	subw	a5,a4,a5
    802007d0:	2781                	sext.w	a5,a5
    802007d2:	37fd                	addiw	a5,a5,-1
    802007d4:	fcf42a23          	sw	a5,-44(s0)
    802007d8:	fe042623          	sw	zero,-20(s0)
    802007dc:	a03d                	j	8020080a <_puts+0x92>
    802007de:	fec46783          	lwu	a5,-20(s0)
    802007e2:	fd843703          	ld	a4,-40(s0)
    802007e6:	973e                	add	a4,a4,a5
    802007e8:	fc843783          	ld	a5,-56(s0)
    802007ec:	679c                	ld	a5,8(a5)
    802007ee:	00178613          	addi	a2,a5,1
    802007f2:	fc843683          	ld	a3,-56(s0)
    802007f6:	e690                	sd	a2,8(a3)
    802007f8:	00074703          	lbu	a4,0(a4)
    802007fc:	00e78023          	sb	a4,0(a5)
    80200800:	fec42783          	lw	a5,-20(s0)
    80200804:	2785                	addiw	a5,a5,1
    80200806:	fef42623          	sw	a5,-20(s0)
    8020080a:	fec42783          	lw	a5,-20(s0)
    8020080e:	873e                	mv	a4,a5
    80200810:	fd442783          	lw	a5,-44(s0)
    80200814:	2701                	sext.w	a4,a4
    80200816:	2781                	sext.w	a5,a5
    80200818:	fcf763e3          	bltu	a4,a5,802007de <_puts+0x66>
    8020081c:	fc843783          	ld	a5,-56(s0)
    80200820:	679c                	ld	a5,8(a5)
    80200822:	00078023          	sb	zero,0(a5)
    80200826:	fd442783          	lw	a5,-44(s0)
    8020082a:	853e                	mv	a0,a5
    8020082c:	70e2                	ld	ra,56(sp)
    8020082e:	7442                	ld	s0,48(sp)
    80200830:	6121                	addi	sp,sp,64
    80200832:	8082                	ret

0000000080200834 <mini_vsnprintf>:
    80200834:	7119                	addi	sp,sp,-128
    80200836:	fc86                	sd	ra,120(sp)
    80200838:	f8a2                	sd	s0,112(sp)
    8020083a:	0100                	addi	s0,sp,128
    8020083c:	f8a43c23          	sd	a0,-104(s0)
    80200840:	87ae                	mv	a5,a1
    80200842:	f8c43423          	sd	a2,-120(s0)
    80200846:	f8d43023          	sd	a3,-128(s0)
    8020084a:	f8f42a23          	sw	a5,-108(s0)
    8020084e:	f9843783          	ld	a5,-104(s0)
    80200852:	fcf43023          	sd	a5,-64(s0)
    80200856:	f9843783          	ld	a5,-104(s0)
    8020085a:	fcf43423          	sd	a5,-56(s0)
    8020085e:	f9442783          	lw	a5,-108(s0)
    80200862:	fcf42823          	sw	a5,-48(s0)
    80200866:	a4f1                	j	80200b32 <mini_vsnprintf+0x2fe>
    80200868:	fc843703          	ld	a4,-56(s0)
    8020086c:	fc043783          	ld	a5,-64(s0)
    80200870:	40f707b3          	sub	a5,a4,a5
    80200874:	2781                	sext.w	a5,a5
    80200876:	2785                	addiw	a5,a5,1
    80200878:	0007871b          	sext.w	a4,a5
    8020087c:	fd042783          	lw	a5,-48(s0)
    80200880:	2cf77a63          	bgeu	a4,a5,80200b54 <mini_vsnprintf+0x320>
    80200884:	fef44783          	lbu	a5,-17(s0)
    80200888:	0ff7f713          	zext.b	a4,a5
    8020088c:	02500793          	li	a5,37
    80200890:	00f70c63          	beq	a4,a5,802008a8 <mini_vsnprintf+0x74>
    80200894:	fef44783          	lbu	a5,-17(s0)
    80200898:	2781                	sext.w	a5,a5
    8020089a:	fc040713          	addi	a4,s0,-64
    8020089e:	85ba                	mv	a1,a4
    802008a0:	853e                	mv	a0,a5
    802008a2:	e6dff0ef          	jal	8020070e <_putc>
    802008a6:	a471                	j	80200b32 <mini_vsnprintf+0x2fe>
    802008a8:	fe040723          	sb	zero,-18(s0)
    802008ac:	fe042423          	sw	zero,-24(s0)
    802008b0:	f8843783          	ld	a5,-120(s0)
    802008b4:	00178713          	addi	a4,a5,1
    802008b8:	f8e43423          	sd	a4,-120(s0)
    802008bc:	0007c783          	lbu	a5,0(a5)
    802008c0:	fef407a3          	sb	a5,-17(s0)
    802008c4:	fef44783          	lbu	a5,-17(s0)
    802008c8:	0ff7f713          	zext.b	a4,a5
    802008cc:	03000793          	li	a5,48
    802008d0:	06f71c63          	bne	a4,a5,80200948 <mini_vsnprintf+0x114>
    802008d4:	a899                	j	8020092a <mini_vsnprintf+0xf6>
    802008d6:	fef44783          	lbu	a5,-17(s0)
    802008da:	0ff7f793          	zext.b	a5,a5
    802008de:	26078d63          	beqz	a5,80200b58 <mini_vsnprintf+0x324>
    802008e2:	fef44783          	lbu	a5,-17(s0)
    802008e6:	0ff7f713          	zext.b	a4,a5
    802008ea:	02f00793          	li	a5,47
    802008ee:	04e7fd63          	bgeu	a5,a4,80200948 <mini_vsnprintf+0x114>
    802008f2:	fef44783          	lbu	a5,-17(s0)
    802008f6:	0ff7f713          	zext.b	a4,a5
    802008fa:	03900793          	li	a5,57
    802008fe:	04e7e563          	bltu	a5,a4,80200948 <mini_vsnprintf+0x114>
    80200902:	fee44783          	lbu	a5,-18(s0)
    80200906:	873e                	mv	a4,a5
    80200908:	87ba                	mv	a5,a4
    8020090a:	0027979b          	slliw	a5,a5,0x2
    8020090e:	9fb9                	addw	a5,a5,a4
    80200910:	0017979b          	slliw	a5,a5,0x1
    80200914:	0ff7f793          	zext.b	a5,a5
    80200918:	fef44703          	lbu	a4,-17(s0)
    8020091c:	9fb9                	addw	a5,a5,a4
    8020091e:	0ff7f793          	zext.b	a5,a5
    80200922:	fd07879b          	addiw	a5,a5,-48
    80200926:	fef40723          	sb	a5,-18(s0)
    8020092a:	f8843783          	ld	a5,-120(s0)
    8020092e:	00178713          	addi	a4,a5,1
    80200932:	f8e43423          	sd	a4,-120(s0)
    80200936:	0007c783          	lbu	a5,0(a5)
    8020093a:	fef407a3          	sb	a5,-17(s0)
    8020093e:	fef44783          	lbu	a5,-17(s0)
    80200942:	0ff7f793          	zext.b	a5,a5
    80200946:	fbc1                	bnez	a5,802008d6 <mini_vsnprintf+0xa2>
    80200948:	fef44783          	lbu	a5,-17(s0)
    8020094c:	0ff7f713          	zext.b	a4,a5
    80200950:	06c00793          	li	a5,108
    80200954:	00f71f63          	bne	a4,a5,80200972 <mini_vsnprintf+0x13e>
    80200958:	4785                	li	a5,1
    8020095a:	fef42423          	sw	a5,-24(s0)
    8020095e:	f8843783          	ld	a5,-120(s0)
    80200962:	00178713          	addi	a4,a5,1
    80200966:	f8e43423          	sd	a4,-120(s0)
    8020096a:	0007c783          	lbu	a5,0(a5)
    8020096e:	fef407a3          	sb	a5,-17(s0)
    80200972:	fef44783          	lbu	a5,-17(s0)
    80200976:	2781                	sext.w	a5,a5
    80200978:	1e078263          	beqz	a5,80200b5c <mini_vsnprintf+0x328>
    8020097c:	1a07c163          	bltz	a5,80200b1e <mini_vsnprintf+0x2ea>
    80200980:	07800713          	li	a4,120
    80200984:	18f74d63          	blt	a4,a5,80200b1e <mini_vsnprintf+0x2ea>
    80200988:	05800713          	li	a4,88
    8020098c:	18e7c963          	blt	a5,a4,80200b1e <mini_vsnprintf+0x2ea>
    80200990:	fa87879b          	addiw	a5,a5,-88
    80200994:	86be                	mv	a3,a5
    80200996:	0006871b          	sext.w	a4,a3
    8020099a:	02000793          	li	a5,32
    8020099e:	18e7e063          	bltu	a5,a4,80200b1e <mini_vsnprintf+0x2ea>
    802009a2:	02069793          	slli	a5,a3,0x20
    802009a6:	9381                	srli	a5,a5,0x20
    802009a8:	00279713          	slli	a4,a5,0x2
    802009ac:	00001797          	auipc	a5,0x1
    802009b0:	74078793          	addi	a5,a5,1856 # 802020ec <rodata_start+0xec>
    802009b4:	97ba                	add	a5,a5,a4
    802009b6:	439c                	lw	a5,0(a5)
    802009b8:	0007871b          	sext.w	a4,a5
    802009bc:	00001797          	auipc	a5,0x1
    802009c0:	73078793          	addi	a5,a5,1840 # 802020ec <rodata_start+0xec>
    802009c4:	97ba                	add	a5,a5,a4
    802009c6:	8782                	jr	a5
    802009c8:	4785                	li	a5,1
    802009ca:	fef42423          	sw	a5,-24(s0)
    802009ce:	a295                	j	80200b32 <mini_vsnprintf+0x2fe>
    802009d0:	fe842783          	lw	a5,-24(s0)
    802009d4:	2781                	sext.w	a5,a5
    802009d6:	ef81                	bnez	a5,802009ee <mini_vsnprintf+0x1ba>
    802009d8:	f8043783          	ld	a5,-128(s0)
    802009dc:	00878713          	addi	a4,a5,8
    802009e0:	f8e43023          	sd	a4,-128(s0)
    802009e4:	439c                	lw	a5,0(a5)
    802009e6:	02079513          	slli	a0,a5,0x20
    802009ea:	9101                	srli	a0,a0,0x20
    802009ec:	a809                	j	802009fe <mini_vsnprintf+0x1ca>
    802009ee:	f8043783          	ld	a5,-128(s0)
    802009f2:	00878713          	addi	a4,a5,8
    802009f6:	f8e43023          	sd	a4,-128(s0)
    802009fa:	639c                	ld	a5,0(a5)
    802009fc:	853e                	mv	a0,a5
    802009fe:	fef44783          	lbu	a5,-17(s0)
    80200a02:	0007871b          	sext.w	a4,a5
    80200a06:	07500793          	li	a5,117
    80200a0a:	40f707b3          	sub	a5,a4,a5
    80200a0e:	0017b793          	seqz	a5,a5
    80200a12:	0ff7f793          	zext.b	a5,a5
    80200a16:	0007869b          	sext.w	a3,a5
    80200a1a:	fee44783          	lbu	a5,-18(s0)
    80200a1e:	2781                	sext.w	a5,a5
    80200a20:	fa840713          	addi	a4,s0,-88
    80200a24:	4601                	li	a2,0
    80200a26:	45a9                	li	a1,10
    80200a28:	ab9ff0ef          	jal	802004e0 <mini_itoa>
    80200a2c:	87aa                	mv	a5,a0
    80200a2e:	fcf42e23          	sw	a5,-36(s0)
    80200a32:	fc040693          	addi	a3,s0,-64
    80200a36:	fdc42703          	lw	a4,-36(s0)
    80200a3a:	fa840793          	addi	a5,s0,-88
    80200a3e:	8636                	mv	a2,a3
    80200a40:	85ba                	mv	a1,a4
    80200a42:	853e                	mv	a0,a5
    80200a44:	d35ff0ef          	jal	80200778 <_puts>
    80200a48:	fe042423          	sw	zero,-24(s0)
    80200a4c:	a0dd                	j	80200b32 <mini_vsnprintf+0x2fe>
    80200a4e:	fe842783          	lw	a5,-24(s0)
    80200a52:	2781                	sext.w	a5,a5
    80200a54:	ef81                	bnez	a5,80200a6c <mini_vsnprintf+0x238>
    80200a56:	f8043783          	ld	a5,-128(s0)
    80200a5a:	00878713          	addi	a4,a5,8
    80200a5e:	f8e43023          	sd	a4,-128(s0)
    80200a62:	439c                	lw	a5,0(a5)
    80200a64:	02079513          	slli	a0,a5,0x20
    80200a68:	9101                	srli	a0,a0,0x20
    80200a6a:	a809                	j	80200a7c <mini_vsnprintf+0x248>
    80200a6c:	f8043783          	ld	a5,-128(s0)
    80200a70:	00878713          	addi	a4,a5,8
    80200a74:	f8e43023          	sd	a4,-128(s0)
    80200a78:	639c                	ld	a5,0(a5)
    80200a7a:	853e                	mv	a0,a5
    80200a7c:	fef44783          	lbu	a5,-17(s0)
    80200a80:	0007871b          	sext.w	a4,a5
    80200a84:	05800793          	li	a5,88
    80200a88:	40f707b3          	sub	a5,a4,a5
    80200a8c:	0017b793          	seqz	a5,a5
    80200a90:	0ff7f793          	zext.b	a5,a5
    80200a94:	0007861b          	sext.w	a2,a5
    80200a98:	fee44783          	lbu	a5,-18(s0)
    80200a9c:	2781                	sext.w	a5,a5
    80200a9e:	fa840713          	addi	a4,s0,-88
    80200aa2:	4685                	li	a3,1
    80200aa4:	45c1                	li	a1,16
    80200aa6:	a3bff0ef          	jal	802004e0 <mini_itoa>
    80200aaa:	87aa                	mv	a5,a0
    80200aac:	fcf42e23          	sw	a5,-36(s0)
    80200ab0:	fc040693          	addi	a3,s0,-64
    80200ab4:	fdc42703          	lw	a4,-36(s0)
    80200ab8:	fa840793          	addi	a5,s0,-88
    80200abc:	8636                	mv	a2,a3
    80200abe:	85ba                	mv	a1,a4
    80200ac0:	853e                	mv	a0,a5
    80200ac2:	cb7ff0ef          	jal	80200778 <_puts>
    80200ac6:	fe042423          	sw	zero,-24(s0)
    80200aca:	a0a5                	j	80200b32 <mini_vsnprintf+0x2fe>
    80200acc:	f8043783          	ld	a5,-128(s0)
    80200ad0:	00878713          	addi	a4,a5,8
    80200ad4:	f8e43023          	sd	a4,-128(s0)
    80200ad8:	439c                	lw	a5,0(a5)
    80200ada:	0ff7f793          	zext.b	a5,a5
    80200ade:	2781                	sext.w	a5,a5
    80200ae0:	fc040713          	addi	a4,s0,-64
    80200ae4:	85ba                	mv	a1,a4
    80200ae6:	853e                	mv	a0,a5
    80200ae8:	c27ff0ef          	jal	8020070e <_putc>
    80200aec:	a099                	j	80200b32 <mini_vsnprintf+0x2fe>
    80200aee:	f8043783          	ld	a5,-128(s0)
    80200af2:	00878713          	addi	a4,a5,8
    80200af6:	f8e43023          	sd	a4,-128(s0)
    80200afa:	639c                	ld	a5,0(a5)
    80200afc:	fef43023          	sd	a5,-32(s0)
    80200b00:	fe043503          	ld	a0,-32(s0)
    80200b04:	9a3ff0ef          	jal	802004a6 <mini_strlen>
    80200b08:	87aa                	mv	a5,a0
    80200b0a:	873e                	mv	a4,a5
    80200b0c:	fc040793          	addi	a5,s0,-64
    80200b10:	863e                	mv	a2,a5
    80200b12:	85ba                	mv	a1,a4
    80200b14:	fe043503          	ld	a0,-32(s0)
    80200b18:	c61ff0ef          	jal	80200778 <_puts>
    80200b1c:	a819                	j	80200b32 <mini_vsnprintf+0x2fe>
    80200b1e:	fef44783          	lbu	a5,-17(s0)
    80200b22:	2781                	sext.w	a5,a5
    80200b24:	fc040713          	addi	a4,s0,-64
    80200b28:	85ba                	mv	a1,a4
    80200b2a:	853e                	mv	a0,a5
    80200b2c:	be3ff0ef          	jal	8020070e <_putc>
    80200b30:	0001                	nop
    80200b32:	f8843783          	ld	a5,-120(s0)
    80200b36:	00178713          	addi	a4,a5,1
    80200b3a:	f8e43423          	sd	a4,-120(s0)
    80200b3e:	0007c783          	lbu	a5,0(a5)
    80200b42:	fef407a3          	sb	a5,-17(s0)
    80200b46:	fef44783          	lbu	a5,-17(s0)
    80200b4a:	0ff7f793          	zext.b	a5,a5
    80200b4e:	d0079de3          	bnez	a5,80200868 <mini_vsnprintf+0x34>
    80200b52:	a031                	j	80200b5e <mini_vsnprintf+0x32a>
    80200b54:	0001                	nop
    80200b56:	a021                	j	80200b5e <mini_vsnprintf+0x32a>
    80200b58:	0001                	nop
    80200b5a:	a011                	j	80200b5e <mini_vsnprintf+0x32a>
    80200b5c:	0001                	nop
    80200b5e:	fc843703          	ld	a4,-56(s0)
    80200b62:	fc043783          	ld	a5,-64(s0)
    80200b66:	40f707b3          	sub	a5,a4,a5
    80200b6a:	2781                	sext.w	a5,a5
    80200b6c:	853e                	mv	a0,a5
    80200b6e:	70e6                	ld	ra,120(sp)
    80200b70:	7446                	ld	s0,112(sp)
    80200b72:	6109                	addi	sp,sp,128
    80200b74:	8082                	ret

0000000080200b76 <_vprintk>:
    80200b76:	7129                	addi	sp,sp,-320
    80200b78:	fe06                	sd	ra,312(sp)
    80200b7a:	fa22                	sd	s0,304(sp)
    80200b7c:	0280                	addi	s0,sp,320
    80200b7e:	eca43c23          	sd	a0,-296(s0)
    80200b82:	ecb43823          	sd	a1,-304(s0)
    80200b86:	ecc43423          	sd	a2,-312(s0)
    80200b8a:	ed043783          	ld	a5,-304(s0)
    80200b8e:	fef43023          	sd	a5,-32(s0)
    80200b92:	fe043703          	ld	a4,-32(s0)
    80200b96:	ee040793          	addi	a5,s0,-288
    80200b9a:	86ba                	mv	a3,a4
    80200b9c:	ed843603          	ld	a2,-296(s0)
    80200ba0:	10000593          	li	a1,256
    80200ba4:	853e                	mv	a0,a5
    80200ba6:	c8fff0ef          	jal	80200834 <mini_vsnprintf>
    80200baa:	87aa                	mv	a5,a0
    80200bac:	fef42623          	sw	a5,-20(s0)
    80200bb0:	fec42783          	lw	a5,-20(s0)
    80200bb4:	17c1                	addi	a5,a5,-16
    80200bb6:	97a2                	add	a5,a5,s0
    80200bb8:	ee078823          	sb	zero,-272(a5)
    80200bbc:	ee040713          	addi	a4,s0,-288
    80200bc0:	ec843783          	ld	a5,-312(s0)
    80200bc4:	853a                	mv	a0,a4
    80200bc6:	9782                	jalr	a5
    80200bc8:	fec42783          	lw	a5,-20(s0)
    80200bcc:	853e                	mv	a0,a5
    80200bce:	70f2                	ld	ra,312(sp)
    80200bd0:	7452                	ld	s0,304(sp)
    80200bd2:	6131                	addi	sp,sp,320
    80200bd4:	8082                	ret

0000000080200bd6 <_vprints>:
    80200bd6:	7129                	addi	sp,sp,-320
    80200bd8:	fe06                	sd	ra,312(sp)
    80200bda:	fa22                	sd	s0,304(sp)
    80200bdc:	0280                	addi	s0,sp,320
    80200bde:	eca43c23          	sd	a0,-296(s0)
    80200be2:	ecb43823          	sd	a1,-304(s0)
    80200be6:	ecc43423          	sd	a2,-312(s0)
    80200bea:	ed043783          	ld	a5,-304(s0)
    80200bee:	fef43023          	sd	a5,-32(s0)
    80200bf2:	fe043703          	ld	a4,-32(s0)
    80200bf6:	ee040793          	addi	a5,s0,-288
    80200bfa:	86ba                	mv	a3,a4
    80200bfc:	ed843603          	ld	a2,-296(s0)
    80200c00:	10000593          	li	a1,256
    80200c04:	853e                	mv	a0,a5
    80200c06:	c2fff0ef          	jal	80200834 <mini_vsnprintf>
    80200c0a:	87aa                	mv	a5,a0
    80200c0c:	fef42623          	sw	a5,-20(s0)
    80200c10:	fec42783          	lw	a5,-20(s0)
    80200c14:	17c1                	addi	a5,a5,-16
    80200c16:	97a2                	add	a5,a5,s0
    80200c18:	ee078823          	sb	zero,-272(a5)
    80200c1c:	ee040713          	addi	a4,s0,-288
    80200c20:	ec843783          	ld	a5,-312(s0)
    80200c24:	853a                	mv	a0,a4
    80200c26:	9782                	jalr	a5
    80200c28:	fec42783          	lw	a5,-20(s0)
    80200c2c:	853e                	mv	a0,a5
    80200c2e:	70f2                	ld	ra,312(sp)
    80200c30:	7452                	ld	s0,304(sp)
    80200c32:	6131                	addi	sp,sp,320
    80200c34:	8082                	ret

0000000080200c36 <vprintk>:
    80200c36:	1101                	addi	sp,sp,-32
    80200c38:	ec06                	sd	ra,24(sp)
    80200c3a:	e822                	sd	s0,16(sp)
    80200c3c:	1000                	addi	s0,sp,32
    80200c3e:	fea43423          	sd	a0,-24(s0)
    80200c42:	feb43023          	sd	a1,-32(s0)
    80200c46:	fffff617          	auipc	a2,0xfffff
    80200c4a:	7c860613          	addi	a2,a2,1992 # 8020040e <print>
    80200c4e:	fe043583          	ld	a1,-32(s0)
    80200c52:	fe843503          	ld	a0,-24(s0)
    80200c56:	f21ff0ef          	jal	80200b76 <_vprintk>
    80200c5a:	87aa                	mv	a5,a0
    80200c5c:	853e                	mv	a0,a5
    80200c5e:	60e2                	ld	ra,24(sp)
    80200c60:	6442                	ld	s0,16(sp)
    80200c62:	6105                	addi	sp,sp,32
    80200c64:	8082                	ret

0000000080200c66 <printk>:
    80200c66:	7159                	addi	sp,sp,-112
    80200c68:	f406                	sd	ra,40(sp)
    80200c6a:	f022                	sd	s0,32(sp)
    80200c6c:	1800                	addi	s0,sp,48
    80200c6e:	fca43c23          	sd	a0,-40(s0)
    80200c72:	e40c                	sd	a1,8(s0)
    80200c74:	e810                	sd	a2,16(s0)
    80200c76:	ec14                	sd	a3,24(s0)
    80200c78:	f018                	sd	a4,32(s0)
    80200c7a:	f41c                	sd	a5,40(s0)
    80200c7c:	03043823          	sd	a6,48(s0)
    80200c80:	03143c23          	sd	a7,56(s0)
    80200c84:	fe042623          	sw	zero,-20(s0)
    80200c88:	04040793          	addi	a5,s0,64
    80200c8c:	fcf43823          	sd	a5,-48(s0)
    80200c90:	fd043783          	ld	a5,-48(s0)
    80200c94:	fc878793          	addi	a5,a5,-56
    80200c98:	fef43023          	sd	a5,-32(s0)
    80200c9c:	fe043783          	ld	a5,-32(s0)
    80200ca0:	85be                	mv	a1,a5
    80200ca2:	fd843503          	ld	a0,-40(s0)
    80200ca6:	f91ff0ef          	jal	80200c36 <vprintk>
    80200caa:	87aa                	mv	a5,a0
    80200cac:	fef42623          	sw	a5,-20(s0)
    80200cb0:	fec42783          	lw	a5,-20(s0)
    80200cb4:	853e                	mv	a0,a5
    80200cb6:	70a2                	ld	ra,40(sp)
    80200cb8:	7402                	ld	s0,32(sp)
    80200cba:	6165                	addi	sp,sp,112
    80200cbc:	8082                	ret

0000000080200cbe <_vprintk_port>:
    80200cbe:	7129                	addi	sp,sp,-320
    80200cc0:	fe06                	sd	ra,312(sp)
    80200cc2:	fa22                	sd	s0,304(sp)
    80200cc4:	0280                	addi	s0,sp,320
    80200cc6:	eca43c23          	sd	a0,-296(s0)
    80200cca:	ecb43823          	sd	a1,-304(s0)
    80200cce:	ecc43423          	sd	a2,-312(s0)
    80200cd2:	ed043783          	ld	a5,-304(s0)
    80200cd6:	fef43023          	sd	a5,-32(s0)
    80200cda:	fe043703          	ld	a4,-32(s0)
    80200cde:	ee040793          	addi	a5,s0,-288
    80200ce2:	86ba                	mv	a3,a4
    80200ce4:	ed843603          	ld	a2,-296(s0)
    80200ce8:	10000593          	li	a1,256
    80200cec:	853e                	mv	a0,a5
    80200cee:	b47ff0ef          	jal	80200834 <mini_vsnprintf>
    80200cf2:	87aa                	mv	a5,a0
    80200cf4:	fef42623          	sw	a5,-20(s0)
    80200cf8:	fec42783          	lw	a5,-20(s0)
    80200cfc:	17c1                	addi	a5,a5,-16
    80200cfe:	97a2                	add	a5,a5,s0
    80200d00:	ee078823          	sb	zero,-272(a5)
    80200d04:	fec42783          	lw	a5,-20(s0)
    80200d08:	853e                	mv	a0,a5
    80200d0a:	70f2                	ld	ra,312(sp)
    80200d0c:	7452                	ld	s0,304(sp)
    80200d0e:	6131                	addi	sp,sp,320
    80200d10:	8082                	ret

0000000080200d12 <vprintk_port>:
    80200d12:	1101                	addi	sp,sp,-32
    80200d14:	ec06                	sd	ra,24(sp)
    80200d16:	e822                	sd	s0,16(sp)
    80200d18:	1000                	addi	s0,sp,32
    80200d1a:	fea43423          	sd	a0,-24(s0)
    80200d1e:	feb43023          	sd	a1,-32(s0)
    80200d22:	fffff617          	auipc	a2,0xfffff
    80200d26:	6ec60613          	addi	a2,a2,1772 # 8020040e <print>
    80200d2a:	fe043583          	ld	a1,-32(s0)
    80200d2e:	fe843503          	ld	a0,-24(s0)
    80200d32:	f8dff0ef          	jal	80200cbe <_vprintk_port>
    80200d36:	87aa                	mv	a5,a0
    80200d38:	853e                	mv	a0,a5
    80200d3a:	60e2                	ld	ra,24(sp)
    80200d3c:	6442                	ld	s0,16(sp)
    80200d3e:	6105                	addi	sp,sp,32
    80200d40:	8082                	ret

0000000080200d42 <printk_port>:
    80200d42:	7159                	addi	sp,sp,-112
    80200d44:	f406                	sd	ra,40(sp)
    80200d46:	f022                	sd	s0,32(sp)
    80200d48:	1800                	addi	s0,sp,48
    80200d4a:	fca43c23          	sd	a0,-40(s0)
    80200d4e:	e40c                	sd	a1,8(s0)
    80200d50:	e810                	sd	a2,16(s0)
    80200d52:	ec14                	sd	a3,24(s0)
    80200d54:	f018                	sd	a4,32(s0)
    80200d56:	f41c                	sd	a5,40(s0)
    80200d58:	03043823          	sd	a6,48(s0)
    80200d5c:	03143c23          	sd	a7,56(s0)
    80200d60:	fe042623          	sw	zero,-20(s0)
    80200d64:	04040793          	addi	a5,s0,64
    80200d68:	fcf43823          	sd	a5,-48(s0)
    80200d6c:	fd043783          	ld	a5,-48(s0)
    80200d70:	fc878793          	addi	a5,a5,-56
    80200d74:	fef43023          	sd	a5,-32(s0)
    80200d78:	fe043783          	ld	a5,-32(s0)
    80200d7c:	85be                	mv	a1,a5
    80200d7e:	fd843503          	ld	a0,-40(s0)
    80200d82:	f91ff0ef          	jal	80200d12 <vprintk_port>
    80200d86:	87aa                	mv	a5,a0
    80200d88:	fef42623          	sw	a5,-20(s0)
    80200d8c:	fec42783          	lw	a5,-20(s0)
    80200d90:	853e                	mv	a0,a5
    80200d92:	70a2                	ld	ra,40(sp)
    80200d94:	7402                	ld	s0,32(sp)
    80200d96:	6165                	addi	sp,sp,112
    80200d98:	8082                	ret

0000000080200d9a <w_stvec>:
    80200d9a:	1101                	addi	sp,sp,-32
    80200d9c:	ec06                	sd	ra,24(sp)
    80200d9e:	e822                	sd	s0,16(sp)
    80200da0:	1000                	addi	s0,sp,32
    80200da2:	fea43423          	sd	a0,-24(s0)
    80200da6:	fe843783          	ld	a5,-24(s0)
    80200daa:	10579073          	csrw	stvec,a5
    80200dae:	0001                	nop
    80200db0:	60e2                	ld	ra,24(sp)
    80200db2:	6442                	ld	s0,16(sp)
    80200db4:	6105                	addi	sp,sp,32
    80200db6:	8082                	ret

0000000080200db8 <r_scause>:
    80200db8:	1101                	addi	sp,sp,-32
    80200dba:	ec06                	sd	ra,24(sp)
    80200dbc:	e822                	sd	s0,16(sp)
    80200dbe:	1000                	addi	s0,sp,32
    80200dc0:	142027f3          	csrr	a5,scause
    80200dc4:	fef43423          	sd	a5,-24(s0)
    80200dc8:	fe843783          	ld	a5,-24(s0)
    80200dcc:	853e                	mv	a0,a5
    80200dce:	60e2                	ld	ra,24(sp)
    80200dd0:	6442                	ld	s0,16(sp)
    80200dd2:	6105                	addi	sp,sp,32
    80200dd4:	8082                	ret

0000000080200dd6 <r_stval>:
    80200dd6:	1101                	addi	sp,sp,-32
    80200dd8:	ec06                	sd	ra,24(sp)
    80200dda:	e822                	sd	s0,16(sp)
    80200ddc:	1000                	addi	s0,sp,32
    80200dde:	143027f3          	csrr	a5,stval
    80200de2:	fef43423          	sd	a5,-24(s0)
    80200de6:	fe843783          	ld	a5,-24(s0)
    80200dea:	853e                	mv	a0,a5
    80200dec:	60e2                	ld	ra,24(sp)
    80200dee:	6442                	ld	s0,16(sp)
    80200df0:	6105                	addi	sp,sp,32
    80200df2:	8082                	ret

0000000080200df4 <trap_init>:
    80200df4:	1141                	addi	sp,sp,-16
    80200df6:	e406                	sd	ra,8(sp)
    80200df8:	e022                	sd	s0,0(sp)
    80200dfa:	0800                	addi	s0,sp,16
    80200dfc:	00000797          	auipc	a5,0x0
    80200e00:	12478793          	addi	a5,a5,292 # 80200f20 <__alltraps>
    80200e04:	85be                	mv	a1,a5
    80200e06:	00001517          	auipc	a0,0x1
    80200e0a:	36a50513          	addi	a0,a0,874 # 80202170 <rodata_start+0x170>
    80200e0e:	e59ff0ef          	jal	80200c66 <printk>
    80200e12:	00000797          	auipc	a5,0x0
    80200e16:	10e78793          	addi	a5,a5,270 # 80200f20 <__alltraps>
    80200e1a:	853e                	mv	a0,a5
    80200e1c:	f7fff0ef          	jal	80200d9a <w_stvec>
    80200e20:	0001                	nop
    80200e22:	60a2                	ld	ra,8(sp)
    80200e24:	6402                	ld	s0,0(sp)
    80200e26:	0141                	addi	sp,sp,16
    80200e28:	8082                	ret

0000000080200e2a <trap_handler>:
    80200e2a:	7139                	addi	sp,sp,-64
    80200e2c:	fc06                	sd	ra,56(sp)
    80200e2e:	f822                	sd	s0,48(sp)
    80200e30:	0080                	addi	s0,sp,64
    80200e32:	fca43423          	sd	a0,-56(s0)
    80200e36:	00001517          	auipc	a0,0x1
    80200e3a:	36a50513          	addi	a0,a0,874 # 802021a0 <rodata_start+0x1a0>
    80200e3e:	e29ff0ef          	jal	80200c66 <printk>
    80200e42:	f77ff0ef          	jal	80200db8 <r_scause>
    80200e46:	fea43423          	sd	a0,-24(s0)
    80200e4a:	f8dff0ef          	jal	80200dd6 <r_stval>
    80200e4e:	fea43023          	sd	a0,-32(s0)
    80200e52:	fe843583          	ld	a1,-24(s0)
    80200e56:	00001517          	auipc	a0,0x1
    80200e5a:	37250513          	addi	a0,a0,882 # 802021c8 <rodata_start+0x1c8>
    80200e5e:	e09ff0ef          	jal	80200c66 <printk>
    80200e62:	fe043583          	ld	a1,-32(s0)
    80200e66:	00001517          	auipc	a0,0x1
    80200e6a:	38a50513          	addi	a0,a0,906 # 802021f0 <rodata_start+0x1f0>
    80200e6e:	df9ff0ef          	jal	80200c66 <printk>
    80200e72:	fe843703          	ld	a4,-24(s0)
    80200e76:	6785                	lui	a5,0x1
    80200e78:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80200e7a:	8ff9                	and	a5,a5,a4
    80200e7c:	fcf43c23          	sd	a5,-40(s0)
    80200e80:	fd843703          	ld	a4,-40(s0)
    80200e84:	47a1                	li	a5,8
    80200e86:	02f70263          	beq	a4,a5,80200eaa <trap_handler+0x80>
    80200e8a:	fd843703          	ld	a4,-40(s0)
    80200e8e:	47a1                	li	a5,8
    80200e90:	06e7e963          	bltu	a5,a4,80200f02 <trap_handler+0xd8>
    80200e94:	fd843703          	ld	a4,-40(s0)
    80200e98:	4789                	li	a5,2
    80200e9a:	04f70863          	beq	a4,a5,80200eea <trap_handler+0xc0>
    80200e9e:	fd843703          	ld	a4,-40(s0)
    80200ea2:	479d                	li	a5,7
    80200ea4:	04f70963          	beq	a4,a5,80200ef6 <trap_handler+0xcc>
    80200ea8:	a8a9                	j	80200f02 <trap_handler+0xd8>
    80200eaa:	fc843783          	ld	a5,-56(s0)
    80200eae:	1087b783          	ld	a5,264(a5)
    80200eb2:	00478713          	addi	a4,a5,4
    80200eb6:	fc843783          	ld	a5,-56(s0)
    80200eba:	10e7b423          	sd	a4,264(a5)
    80200ebe:	fc843783          	ld	a5,-56(s0)
    80200ec2:	67d8                	ld	a4,136(a5)
    80200ec4:	fc843783          	ld	a5,-56(s0)
    80200ec8:	6bac                	ld	a1,80(a5)
    80200eca:	fc843783          	ld	a5,-56(s0)
    80200ece:	6fb0                	ld	a2,88(a5)
    80200ed0:	fc843783          	ld	a5,-56(s0)
    80200ed4:	73bc                	ld	a5,96(a5)
    80200ed6:	86be                	mv	a3,a5
    80200ed8:	853a                	mv	a0,a4
    80200eda:	600000ef          	jal	802014da <syscall>
    80200ede:	87aa                	mv	a5,a0
    80200ee0:	873e                	mv	a4,a5
    80200ee2:	fc843783          	ld	a5,-56(s0)
    80200ee6:	ebb8                	sd	a4,80(a5)
    80200ee8:	a025                	j	80200f10 <trap_handler+0xe6>
    80200eea:	00001517          	auipc	a0,0x1
    80200eee:	32e50513          	addi	a0,a0,814 # 80202218 <rodata_start+0x218>
    80200ef2:	d7aff0ef          	jal	8020046c <panic>
    80200ef6:	00001517          	auipc	a0,0x1
    80200efa:	34a50513          	addi	a0,a0,842 # 80202240 <rodata_start+0x240>
    80200efe:	d6eff0ef          	jal	8020046c <panic>
    80200f02:	00001517          	auipc	a0,0x1
    80200f06:	36e50513          	addi	a0,a0,878 # 80202270 <rodata_start+0x270>
    80200f0a:	d62ff0ef          	jal	8020046c <panic>
    80200f0e:	0001                	nop
    80200f10:	fc843783          	ld	a5,-56(s0)
    80200f14:	853e                	mv	a0,a5
    80200f16:	70e2                	ld	ra,56(sp)
    80200f18:	7442                	ld	s0,48(sp)
    80200f1a:	6121                	addi	sp,sp,64
    80200f1c:	8082                	ret
	...

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
    80200f74:	eb7ff0ef          	jal	80200e2a <trap_handler>

0000000080200f78 <__restore>:
    80200f78:	6292                	ld	t0,256(sp)
    80200f7a:	6332                	ld	t1,264(sp)
    80200f7c:	63c2                	ld	t2,16(sp)
    80200f7e:	10029073          	csrw	sstatus,t0
    80200f82:	14131073          	csrw	sepc,t1
    80200f86:	14039073          	csrw	sscratch,t2
    80200f8a:	60a2                	ld	ra,8(sp)
    80200f8c:	61e2                	ld	gp,24(sp)
    80200f8e:	72a2                	ld	t0,40(sp)
    80200f90:	7342                	ld	t1,48(sp)
    80200f92:	73e2                	ld	t2,56(sp)
    80200f94:	6406                	ld	s0,64(sp)
    80200f96:	64a6                	ld	s1,72(sp)
    80200f98:	6546                	ld	a0,80(sp)
    80200f9a:	65e6                	ld	a1,88(sp)
    80200f9c:	7606                	ld	a2,96(sp)
    80200f9e:	76a6                	ld	a3,104(sp)
    80200fa0:	7746                	ld	a4,112(sp)
    80200fa2:	77e6                	ld	a5,120(sp)
    80200fa4:	680a                	ld	a6,128(sp)
    80200fa6:	68aa                	ld	a7,136(sp)
    80200fa8:	694a                	ld	s2,144(sp)
    80200faa:	69ea                	ld	s3,152(sp)
    80200fac:	7a0a                	ld	s4,160(sp)
    80200fae:	7aaa                	ld	s5,168(sp)
    80200fb0:	7b4a                	ld	s6,176(sp)
    80200fb2:	7bea                	ld	s7,184(sp)
    80200fb4:	6c0e                	ld	s8,192(sp)
    80200fb6:	6cae                	ld	s9,200(sp)
    80200fb8:	6d4e                	ld	s10,208(sp)
    80200fba:	6dee                	ld	s11,216(sp)
    80200fbc:	7e0e                	ld	t3,224(sp)
    80200fbe:	7eae                	ld	t4,232(sp)
    80200fc0:	7f4e                	ld	t5,240(sp)
    80200fc2:	7fee                	ld	t6,248(sp)
    80200fc4:	6151                	addi	sp,sp,272
    80200fc6:	14011173          	csrrw	sp,sscratch,sp
    80200fca:	10200073          	sret

0000000080200fce <strlen>:
    80200fce:	7179                	addi	sp,sp,-48
    80200fd0:	f406                	sd	ra,40(sp)
    80200fd2:	f022                	sd	s0,32(sp)
    80200fd4:	1800                	addi	s0,sp,48
    80200fd6:	fca43c23          	sd	a0,-40(s0)
    80200fda:	fe042623          	sw	zero,-20(s0)
    80200fde:	a031                	j	80200fea <strlen+0x1c>
    80200fe0:	fec42783          	lw	a5,-20(s0)
    80200fe4:	2785                	addiw	a5,a5,1
    80200fe6:	fef42623          	sw	a5,-20(s0)
    80200fea:	fec46783          	lwu	a5,-20(s0)
    80200fee:	fd843703          	ld	a4,-40(s0)
    80200ff2:	97ba                	add	a5,a5,a4
    80200ff4:	00078783          	lb	a5,0(a5)
    80200ff8:	f7e5                	bnez	a5,80200fe0 <strlen+0x12>
    80200ffa:	fec42783          	lw	a5,-20(s0)
    80200ffe:	853e                	mv	a0,a5
    80201000:	70a2                	ld	ra,40(sp)
    80201002:	7402                	ld	s0,32(sp)
    80201004:	6145                	addi	sp,sp,48
    80201006:	8082                	ret

0000000080201008 <memcpy>:
    80201008:	7139                	addi	sp,sp,-64
    8020100a:	fc06                	sd	ra,56(sp)
    8020100c:	f822                	sd	s0,48(sp)
    8020100e:	0080                	addi	s0,sp,64
    80201010:	fca43c23          	sd	a0,-40(s0)
    80201014:	fcb43823          	sd	a1,-48(s0)
    80201018:	fcc43423          	sd	a2,-56(s0)
    8020101c:	fd843783          	ld	a5,-40(s0)
    80201020:	fef43423          	sd	a5,-24(s0)
    80201024:	fd043783          	ld	a5,-48(s0)
    80201028:	fef43023          	sd	a5,-32(s0)
    8020102c:	a00d                	j	8020104e <memcpy+0x46>
    8020102e:	fe043703          	ld	a4,-32(s0)
    80201032:	00170793          	addi	a5,a4,1
    80201036:	fef43023          	sd	a5,-32(s0)
    8020103a:	fe843783          	ld	a5,-24(s0)
    8020103e:	00178693          	addi	a3,a5,1
    80201042:	fed43423          	sd	a3,-24(s0)
    80201046:	00074703          	lbu	a4,0(a4)
    8020104a:	00e78023          	sb	a4,0(a5)
    8020104e:	fc843783          	ld	a5,-56(s0)
    80201052:	fff78713          	addi	a4,a5,-1
    80201056:	fce43423          	sd	a4,-56(s0)
    8020105a:	fbf1                	bnez	a5,8020102e <memcpy+0x26>
    8020105c:	fd843783          	ld	a5,-40(s0)
    80201060:	853e                	mv	a0,a5
    80201062:	70e2                	ld	ra,56(sp)
    80201064:	7442                	ld	s0,48(sp)
    80201066:	6121                	addi	sp,sp,64
    80201068:	8082                	ret

000000008020106a <memcmp>:
    8020106a:	715d                	addi	sp,sp,-80
    8020106c:	e486                	sd	ra,72(sp)
    8020106e:	e0a2                	sd	s0,64(sp)
    80201070:	0880                	addi	s0,sp,80
    80201072:	fca43423          	sd	a0,-56(s0)
    80201076:	fcb43023          	sd	a1,-64(s0)
    8020107a:	fac43c23          	sd	a2,-72(s0)
    8020107e:	fc843783          	ld	a5,-56(s0)
    80201082:	fef43423          	sd	a5,-24(s0)
    80201086:	fc043783          	ld	a5,-64(s0)
    8020108a:	fef43023          	sd	a5,-32(s0)
    8020108e:	a099                	j	802010d4 <memcmp+0x6a>
    80201090:	fe843783          	ld	a5,-24(s0)
    80201094:	0007c783          	lbu	a5,0(a5)
    80201098:	0007871b          	sext.w	a4,a5
    8020109c:	fe043783          	ld	a5,-32(s0)
    802010a0:	0007c783          	lbu	a5,0(a5)
    802010a4:	2781                	sext.w	a5,a5
    802010a6:	40f707bb          	subw	a5,a4,a5
    802010aa:	fcf42e23          	sw	a5,-36(s0)
    802010ae:	fdc42783          	lw	a5,-36(s0)
    802010b2:	2781                	sext.w	a5,a5
    802010b4:	e785                	bnez	a5,802010dc <memcmp+0x72>
    802010b6:	fe843783          	ld	a5,-24(s0)
    802010ba:	0785                	addi	a5,a5,1
    802010bc:	fef43423          	sd	a5,-24(s0)
    802010c0:	fe043783          	ld	a5,-32(s0)
    802010c4:	0785                	addi	a5,a5,1
    802010c6:	fef43023          	sd	a5,-32(s0)
    802010ca:	fb843783          	ld	a5,-72(s0)
    802010ce:	17fd                	addi	a5,a5,-1
    802010d0:	faf43c23          	sd	a5,-72(s0)
    802010d4:	fb843783          	ld	a5,-72(s0)
    802010d8:	ffc5                	bnez	a5,80201090 <memcmp+0x26>
    802010da:	a011                	j	802010de <memcmp+0x74>
    802010dc:	0001                	nop
    802010de:	fdc42783          	lw	a5,-36(s0)
    802010e2:	853e                	mv	a0,a5
    802010e4:	60a6                	ld	ra,72(sp)
    802010e6:	6406                	ld	s0,64(sp)
    802010e8:	6161                	addi	sp,sp,80
    802010ea:	8082                	ret

00000000802010ec <memmove>:
    802010ec:	7139                	addi	sp,sp,-64
    802010ee:	fc06                	sd	ra,56(sp)
    802010f0:	f822                	sd	s0,48(sp)
    802010f2:	0080                	addi	s0,sp,64
    802010f4:	fca43c23          	sd	a0,-40(s0)
    802010f8:	fcb43823          	sd	a1,-48(s0)
    802010fc:	fcc43423          	sd	a2,-56(s0)
    80201100:	fd843783          	ld	a5,-40(s0)
    80201104:	fef43423          	sd	a5,-24(s0)
    80201108:	a035                	j	80201134 <memmove+0x48>
    8020110a:	fd043703          	ld	a4,-48(s0)
    8020110e:	00170793          	addi	a5,a4,1
    80201112:	fcf43823          	sd	a5,-48(s0)
    80201116:	fe843783          	ld	a5,-24(s0)
    8020111a:	00178693          	addi	a3,a5,1
    8020111e:	fed43423          	sd	a3,-24(s0)
    80201122:	00074703          	lbu	a4,0(a4)
    80201126:	00e78023          	sb	a4,0(a5)
    8020112a:	fc843783          	ld	a5,-56(s0)
    8020112e:	17fd                	addi	a5,a5,-1
    80201130:	fcf43423          	sd	a5,-56(s0)
    80201134:	fc843783          	ld	a5,-56(s0)
    80201138:	fbe9                	bnez	a5,8020110a <memmove+0x1e>
    8020113a:	0001                	nop
    8020113c:	0001                	nop
    8020113e:	70e2                	ld	ra,56(sp)
    80201140:	7442                	ld	s0,48(sp)
    80201142:	6121                	addi	sp,sp,64
    80201144:	8082                	ret

0000000080201146 <memset>:
    80201146:	7179                	addi	sp,sp,-48
    80201148:	f406                	sd	ra,40(sp)
    8020114a:	f022                	sd	s0,32(sp)
    8020114c:	1800                	addi	s0,sp,48
    8020114e:	fca43c23          	sd	a0,-40(s0)
    80201152:	87ae                	mv	a5,a1
    80201154:	8732                	mv	a4,a2
    80201156:	fcf40ba3          	sb	a5,-41(s0)
    8020115a:	87ba                	mv	a5,a4
    8020115c:	fcf42823          	sw	a5,-48(s0)
    80201160:	fd843783          	ld	a5,-40(s0)
    80201164:	fef43423          	sd	a5,-24(s0)
    80201168:	a005                	j	80201188 <memset+0x42>
    8020116a:	fe843783          	ld	a5,-24(s0)
    8020116e:	00178713          	addi	a4,a5,1
    80201172:	fee43423          	sd	a4,-24(s0)
    80201176:	fd744703          	lbu	a4,-41(s0)
    8020117a:	00e78023          	sb	a4,0(a5)
    8020117e:	fd042783          	lw	a5,-48(s0)
    80201182:	37fd                	addiw	a5,a5,-1
    80201184:	fcf42823          	sw	a5,-48(s0)
    80201188:	fd042783          	lw	a5,-48(s0)
    8020118c:	2781                	sext.w	a5,a5
    8020118e:	fff1                	bnez	a5,8020116a <memset+0x24>
    80201190:	fd843783          	ld	a5,-40(s0)
    80201194:	853e                	mv	a0,a5
    80201196:	70a2                	ld	ra,40(sp)
    80201198:	7402                	ld	s0,32(sp)
    8020119a:	6145                	addi	sp,sp,48
    8020119c:	8082                	ret

000000008020119e <strcmp>:
    8020119e:	1101                	addi	sp,sp,-32
    802011a0:	ec06                	sd	ra,24(sp)
    802011a2:	e822                	sd	s0,16(sp)
    802011a4:	1000                	addi	s0,sp,32
    802011a6:	fea43423          	sd	a0,-24(s0)
    802011aa:	feb43023          	sd	a1,-32(s0)
    802011ae:	a091                	j	802011f2 <strcmp+0x54>
    802011b0:	fe843783          	ld	a5,-24(s0)
    802011b4:	00078703          	lb	a4,0(a5)
    802011b8:	fe043783          	ld	a5,-32(s0)
    802011bc:	00078783          	lb	a5,0(a5)
    802011c0:	00f70f63          	beq	a4,a5,802011de <strcmp+0x40>
    802011c4:	fe843783          	ld	a5,-24(s0)
    802011c8:	00078783          	lb	a5,0(a5)
    802011cc:	873e                	mv	a4,a5
    802011ce:	fe043783          	ld	a5,-32(s0)
    802011d2:	00078783          	lb	a5,0(a5)
    802011d6:	40f707bb          	subw	a5,a4,a5
    802011da:	2781                	sext.w	a5,a5
    802011dc:	a089                	j	8020121e <strcmp+0x80>
    802011de:	fe843783          	ld	a5,-24(s0)
    802011e2:	0785                	addi	a5,a5,1
    802011e4:	fef43423          	sd	a5,-24(s0)
    802011e8:	fe043783          	ld	a5,-32(s0)
    802011ec:	0785                	addi	a5,a5,1
    802011ee:	fef43023          	sd	a5,-32(s0)
    802011f2:	fe843783          	ld	a5,-24(s0)
    802011f6:	00078783          	lb	a5,0(a5)
    802011fa:	c791                	beqz	a5,80201206 <strcmp+0x68>
    802011fc:	fe043783          	ld	a5,-32(s0)
    80201200:	00078783          	lb	a5,0(a5)
    80201204:	f7d5                	bnez	a5,802011b0 <strcmp+0x12>
    80201206:	fe843783          	ld	a5,-24(s0)
    8020120a:	00078783          	lb	a5,0(a5)
    8020120e:	873e                	mv	a4,a5
    80201210:	fe043783          	ld	a5,-32(s0)
    80201214:	00078783          	lb	a5,0(a5)
    80201218:	40f707bb          	subw	a5,a4,a5
    8020121c:	2781                	sext.w	a5,a5
    8020121e:	853e                	mv	a0,a5
    80201220:	60e2                	ld	ra,24(sp)
    80201222:	6442                	ld	s0,16(sp)
    80201224:	6105                	addi	sp,sp,32
    80201226:	8082                	ret

0000000080201228 <ifsubstr>:
    80201228:	7139                	addi	sp,sp,-64
    8020122a:	fc06                	sd	ra,56(sp)
    8020122c:	f822                	sd	s0,48(sp)
    8020122e:	0080                	addi	s0,sp,64
    80201230:	fca43c23          	sd	a0,-40(s0)
    80201234:	fcb43823          	sd	a1,-48(s0)
    80201238:	87b2                	mv	a5,a2
    8020123a:	fcf42623          	sw	a5,-52(s0)
    8020123e:	fd043503          	ld	a0,-48(s0)
    80201242:	d8dff0ef          	jal	80200fce <strlen>
    80201246:	87aa                	mv	a5,a0
    80201248:	fef42023          	sw	a5,-32(s0)
    8020124c:	fe042623          	sw	zero,-20(s0)
    80201250:	fe042423          	sw	zero,-24(s0)
    80201254:	fe042223          	sw	zero,-28(s0)
    80201258:	a04d                	j	802012fa <ifsubstr+0xd2>
    8020125a:	fec42783          	lw	a5,-20(s0)
    8020125e:	0007871b          	sext.w	a4,a5
    80201262:	4785                	li	a5,1
    80201264:	06f71063          	bne	a4,a5,802012c4 <ifsubstr+0x9c>
    80201268:	fe842783          	lw	a5,-24(s0)
    8020126c:	0017871b          	addiw	a4,a5,1
    80201270:	fee42423          	sw	a4,-24(s0)
    80201274:	1782                	slli	a5,a5,0x20
    80201276:	9381                	srli	a5,a5,0x20
    80201278:	fd843703          	ld	a4,-40(s0)
    8020127c:	97ba                	add	a5,a5,a4
    8020127e:	0007c683          	lbu	a3,0(a5)
    80201282:	fe442783          	lw	a5,-28(s0)
    80201286:	0017871b          	addiw	a4,a5,1
    8020128a:	fee42223          	sw	a4,-28(s0)
    8020128e:	1782                	slli	a5,a5,0x20
    80201290:	9381                	srli	a5,a5,0x20
    80201292:	fd043703          	ld	a4,-48(s0)
    80201296:	97ba                	add	a5,a5,a4
    80201298:	0007c783          	lbu	a5,0(a5)
    8020129c:	8736                	mv	a4,a3
    8020129e:	00f71d63          	bne	a4,a5,802012b8 <ifsubstr+0x90>
    802012a2:	fe442783          	lw	a5,-28(s0)
    802012a6:	873e                	mv	a4,a5
    802012a8:	fe042783          	lw	a5,-32(s0)
    802012ac:	2701                	sext.w	a4,a4
    802012ae:	2781                	sext.w	a5,a5
    802012b0:	04f71563          	bne	a4,a5,802012fa <ifsubstr+0xd2>
    802012b4:	4785                	li	a5,1
    802012b6:	a8bd                	j	80201334 <ifsubstr+0x10c>
    802012b8:	fe042223          	sw	zero,-28(s0)
    802012bc:	4785                	li	a5,1
    802012be:	fef42623          	sw	a5,-20(s0)
    802012c2:	a825                	j	802012fa <ifsubstr+0xd2>
    802012c4:	fe842783          	lw	a5,-24(s0)
    802012c8:	0017871b          	addiw	a4,a5,1
    802012cc:	fee42423          	sw	a4,-24(s0)
    802012d0:	1782                	slli	a5,a5,0x20
    802012d2:	9381                	srli	a5,a5,0x20
    802012d4:	fd843703          	ld	a4,-40(s0)
    802012d8:	97ba                	add	a5,a5,a4
    802012da:	0007c703          	lbu	a4,0(a5)
    802012de:	fd043783          	ld	a5,-48(s0)
    802012e2:	0007c783          	lbu	a5,0(a5)
    802012e6:	00f71a63          	bne	a4,a5,802012fa <ifsubstr+0xd2>
    802012ea:	4785                	li	a5,1
    802012ec:	fef42623          	sw	a5,-20(s0)
    802012f0:	fe442783          	lw	a5,-28(s0)
    802012f4:	2785                	addiw	a5,a5,1
    802012f6:	fef42223          	sw	a5,-28(s0)
    802012fa:	fcc42783          	lw	a5,-52(s0)
    802012fe:	fe842703          	lw	a4,-24(s0)
    80201302:	2701                	sext.w	a4,a4
    80201304:	00f77b63          	bgeu	a4,a5,8020131a <ifsubstr+0xf2>
    80201308:	fe442783          	lw	a5,-28(s0)
    8020130c:	873e                	mv	a4,a5
    8020130e:	fe042783          	lw	a5,-32(s0)
    80201312:	2701                	sext.w	a4,a4
    80201314:	2781                	sext.w	a5,a5
    80201316:	f4f762e3          	bltu	a4,a5,8020125a <ifsubstr+0x32>
    8020131a:	fe442783          	lw	a5,-28(s0)
    8020131e:	873e                	mv	a4,a5
    80201320:	fe042783          	lw	a5,-32(s0)
    80201324:	2701                	sext.w	a4,a4
    80201326:	2781                	sext.w	a5,a5
    80201328:	00f77463          	bgeu	a4,a5,80201330 <ifsubstr+0x108>
    8020132c:	4785                	li	a5,1
    8020132e:	a019                	j	80201334 <ifsubstr+0x10c>
    80201330:	fec42783          	lw	a5,-20(s0)
    80201334:	853e                	mv	a0,a5
    80201336:	70e2                	ld	ra,56(sp)
    80201338:	7442                	ld	s0,48(sp)
    8020133a:	6121                	addi	sp,sp,64
    8020133c:	8082                	ret

000000008020133e <strcpy>:
    8020133e:	7179                	addi	sp,sp,-48
    80201340:	f406                	sd	ra,40(sp)
    80201342:	f022                	sd	s0,32(sp)
    80201344:	1800                	addi	s0,sp,48
    80201346:	fca43c23          	sd	a0,-40(s0)
    8020134a:	fcb43823          	sd	a1,-48(s0)
    8020134e:	fd843783          	ld	a5,-40(s0)
    80201352:	fef43423          	sd	a5,-24(s0)
    80201356:	a00d                	j	80201378 <strcpy+0x3a>
    80201358:	fd043703          	ld	a4,-48(s0)
    8020135c:	00170793          	addi	a5,a4,1
    80201360:	fcf43823          	sd	a5,-48(s0)
    80201364:	fe843783          	ld	a5,-24(s0)
    80201368:	00178693          	addi	a3,a5,1
    8020136c:	fed43423          	sd	a3,-24(s0)
    80201370:	00070703          	lb	a4,0(a4)
    80201374:	00e78023          	sb	a4,0(a5)
    80201378:	fd043783          	ld	a5,-48(s0)
    8020137c:	00078783          	lb	a5,0(a5)
    80201380:	ffe1                	bnez	a5,80201358 <strcpy+0x1a>
    80201382:	fe843783          	ld	a5,-24(s0)
    80201386:	00078023          	sb	zero,0(a5)
    8020138a:	fd843783          	ld	a5,-40(s0)
    8020138e:	853e                	mv	a0,a5
    80201390:	70a2                	ld	ra,40(sp)
    80201392:	7402                	ld	s0,32(sp)
    80201394:	6145                	addi	sp,sp,48
    80201396:	8082                	ret

0000000080201398 <strcat>:
    80201398:	7179                	addi	sp,sp,-48
    8020139a:	f406                	sd	ra,40(sp)
    8020139c:	f022                	sd	s0,32(sp)
    8020139e:	1800                	addi	s0,sp,48
    802013a0:	fca43c23          	sd	a0,-40(s0)
    802013a4:	fcb43823          	sd	a1,-48(s0)
    802013a8:	fd843783          	ld	a5,-40(s0)
    802013ac:	fef43423          	sd	a5,-24(s0)
    802013b0:	a031                	j	802013bc <strcat+0x24>
    802013b2:	fe843783          	ld	a5,-24(s0)
    802013b6:	0785                	addi	a5,a5,1
    802013b8:	fef43423          	sd	a5,-24(s0)
    802013bc:	fe843783          	ld	a5,-24(s0)
    802013c0:	00078783          	lb	a5,0(a5)
    802013c4:	f7fd                	bnez	a5,802013b2 <strcat+0x1a>
    802013c6:	a00d                	j	802013e8 <strcat+0x50>
    802013c8:	fd043703          	ld	a4,-48(s0)
    802013cc:	00170793          	addi	a5,a4,1
    802013d0:	fcf43823          	sd	a5,-48(s0)
    802013d4:	fe843783          	ld	a5,-24(s0)
    802013d8:	00178693          	addi	a3,a5,1
    802013dc:	fed43423          	sd	a3,-24(s0)
    802013e0:	00070703          	lb	a4,0(a4)
    802013e4:	00e78023          	sb	a4,0(a5)
    802013e8:	fd043783          	ld	a5,-48(s0)
    802013ec:	00078783          	lb	a5,0(a5)
    802013f0:	ffe1                	bnez	a5,802013c8 <strcat+0x30>
    802013f2:	fd843783          	ld	a5,-40(s0)
    802013f6:	853e                	mv	a0,a5
    802013f8:	70a2                	ld	ra,40(sp)
    802013fa:	7402                	ld	s0,32(sp)
    802013fc:	6145                	addi	sp,sp,48
    802013fe:	8082                	ret

0000000080201400 <sys_write>:
    80201400:	1101                	addi	sp,sp,-32
    80201402:	ec06                	sd	ra,24(sp)
    80201404:	e822                	sd	s0,16(sp)
    80201406:	1000                	addi	s0,sp,32
    80201408:	fea43423          	sd	a0,-24(s0)
    8020140c:	fe843583          	ld	a1,-24(s0)
    80201410:	00001517          	auipc	a0,0x1
    80201414:	e7850513          	addi	a0,a0,-392 # 80202288 <rodata_start+0x288>
    80201418:	84fff0ef          	jal	80200c66 <printk>
    8020141c:	4781                	li	a5,0
    8020141e:	853e                	mv	a0,a5
    80201420:	60e2                	ld	ra,24(sp)
    80201422:	6442                	ld	s0,16(sp)
    80201424:	6105                	addi	sp,sp,32
    80201426:	8082                	ret

0000000080201428 <sys_exit>:
    80201428:	1101                	addi	sp,sp,-32
    8020142a:	ec06                	sd	ra,24(sp)
    8020142c:	e822                	sd	s0,16(sp)
    8020142e:	1000                	addi	s0,sp,32
    80201430:	fea43423          	sd	a0,-24(s0)
    80201434:	fe843583          	ld	a1,-24(s0)
    80201438:	00001517          	auipc	a0,0x1
    8020143c:	e5850513          	addi	a0,a0,-424 # 80202290 <rodata_start+0x290>
    80201440:	827ff0ef          	jal	80200c66 <printk>
    80201444:	3f8000ef          	jal	8020183c <yield>
    80201448:	4781                	li	a5,0
    8020144a:	853e                	mv	a0,a5
    8020144c:	60e2                	ld	ra,24(sp)
    8020144e:	6442                	ld	s0,16(sp)
    80201450:	6105                	addi	sp,sp,32
    80201452:	8082                	ret

0000000080201454 <sys_stack_trace>:
    80201454:	7179                	addi	sp,sp,-48
    80201456:	f406                	sd	ra,40(sp)
    80201458:	f022                	sd	s0,32(sp)
    8020145a:	1800                	addi	s0,sp,48
    8020145c:	00001517          	auipc	a0,0x1
    80201460:	e5450513          	addi	a0,a0,-428 # 802022b0 <rodata_start+0x2b0>
    80201464:	803ff0ef          	jal	80200c66 <printk>
    80201468:	87a2                	mv	a5,s0
    8020146a:	fef43423          	sd	a5,-24(s0)
    8020146e:	a81d                	j	802014a4 <sys_stack_trace+0x50>
    80201470:	fe843783          	ld	a5,-24(s0)
    80201474:	17fd                	addi	a5,a5,-1
    80201476:	639c                	ld	a5,0(a5)
    80201478:	fef43023          	sd	a5,-32(s0)
    8020147c:	fe843783          	ld	a5,-24(s0)
    80201480:	17f9                	addi	a5,a5,-2
    80201482:	639c                	ld	a5,0(a5)
    80201484:	fcf43c23          	sd	a5,-40(s0)
    80201488:	fd843603          	ld	a2,-40(s0)
    8020148c:	fe043583          	ld	a1,-32(s0)
    80201490:	00001517          	auipc	a0,0x1
    80201494:	e5050513          	addi	a0,a0,-432 # 802022e0 <rodata_start+0x2e0>
    80201498:	fceff0ef          	jal	80200c66 <printk>
    8020149c:	fd843783          	ld	a5,-40(s0)
    802014a0:	fef43423          	sd	a5,-24(s0)
    802014a4:	fe843783          	ld	a5,-24(s0)
    802014a8:	f7e1                	bnez	a5,80201470 <sys_stack_trace+0x1c>
    802014aa:	00001517          	auipc	a0,0x1
    802014ae:	e4e50513          	addi	a0,a0,-434 # 802022f8 <rodata_start+0x2f8>
    802014b2:	fb4ff0ef          	jal	80200c66 <printk>
    802014b6:	4781                	li	a5,0
    802014b8:	853e                	mv	a0,a5
    802014ba:	70a2                	ld	ra,40(sp)
    802014bc:	7402                	ld	s0,32(sp)
    802014be:	6145                	addi	sp,sp,48
    802014c0:	8082                	ret

00000000802014c2 <sys_yield>:
    802014c2:	1141                	addi	sp,sp,-16
    802014c4:	e406                	sd	ra,8(sp)
    802014c6:	e022                	sd	s0,0(sp)
    802014c8:	0800                	addi	s0,sp,16
    802014ca:	372000ef          	jal	8020183c <yield>
    802014ce:	4781                	li	a5,0
    802014d0:	853e                	mv	a0,a5
    802014d2:	60a2                	ld	ra,8(sp)
    802014d4:	6402                	ld	s0,0(sp)
    802014d6:	0141                	addi	sp,sp,16
    802014d8:	8082                	ret

00000000802014da <syscall>:
    802014da:	7139                	addi	sp,sp,-64
    802014dc:	fc06                	sd	ra,56(sp)
    802014de:	f822                	sd	s0,48(sp)
    802014e0:	0080                	addi	s0,sp,64
    802014e2:	fca43c23          	sd	a0,-40(s0)
    802014e6:	fcb43823          	sd	a1,-48(s0)
    802014ea:	fcc43423          	sd	a2,-56(s0)
    802014ee:	fcd43023          	sd	a3,-64(s0)
    802014f2:	fd843703          	ld	a4,-40(s0)
    802014f6:	4791                	li	a5,4
    802014f8:	06f70363          	beq	a4,a5,8020155e <syscall+0x84>
    802014fc:	fd843703          	ld	a4,-40(s0)
    80201500:	4791                	li	a5,4
    80201502:	06e7e363          	bltu	a5,a4,80201568 <syscall+0x8e>
    80201506:	fd843703          	ld	a4,-40(s0)
    8020150a:	478d                	li	a5,3
    8020150c:	04f70363          	beq	a4,a5,80201552 <syscall+0x78>
    80201510:	fd843703          	ld	a4,-40(s0)
    80201514:	478d                	li	a5,3
    80201516:	04e7e963          	bltu	a5,a4,80201568 <syscall+0x8e>
    8020151a:	fd843703          	ld	a4,-40(s0)
    8020151e:	4785                	li	a5,1
    80201520:	00f70863          	beq	a4,a5,80201530 <syscall+0x56>
    80201524:	fd843703          	ld	a4,-40(s0)
    80201528:	4789                	li	a5,2
    8020152a:	00f70c63          	beq	a4,a5,80201542 <syscall+0x68>
    8020152e:	a82d                	j	80201568 <syscall+0x8e>
    80201530:	fd043783          	ld	a5,-48(s0)
    80201534:	853e                	mv	a0,a5
    80201536:	ecbff0ef          	jal	80201400 <sys_write>
    8020153a:	87aa                	mv	a5,a0
    8020153c:	fef43423          	sd	a5,-24(s0)
    80201540:	a099                	j	80201586 <syscall+0xac>
    80201542:	fd043503          	ld	a0,-48(s0)
    80201546:	ee3ff0ef          	jal	80201428 <sys_exit>
    8020154a:	87aa                	mv	a5,a0
    8020154c:	fef43423          	sd	a5,-24(s0)
    80201550:	a81d                	j	80201586 <syscall+0xac>
    80201552:	f03ff0ef          	jal	80201454 <sys_stack_trace>
    80201556:	87aa                	mv	a5,a0
    80201558:	fef43423          	sd	a5,-24(s0)
    8020155c:	a02d                	j	80201586 <syscall+0xac>
    8020155e:	f65ff0ef          	jal	802014c2 <sys_yield>
    80201562:	87aa                	mv	a5,a0
    80201564:	fef43423          	sd	a5,-24(s0)
    80201568:	fd843583          	ld	a1,-40(s0)
    8020156c:	00001517          	auipc	a0,0x1
    80201570:	dbc50513          	addi	a0,a0,-580 # 80202328 <rodata_start+0x328>
    80201574:	ef2ff0ef          	jal	80200c66 <printk>
    80201578:	00001517          	auipc	a0,0x1
    8020157c:	dd050513          	addi	a0,a0,-560 # 80202348 <rodata_start+0x348>
    80201580:	eedfe0ef          	jal	8020046c <panic>
    80201584:	0001                	nop
    80201586:	fe843783          	ld	a5,-24(s0)
    8020158a:	853e                	mv	a0,a5
    8020158c:	70e2                	ld	ra,56(sp)
    8020158e:	7442                	ld	s0,48(sp)
    80201590:	6121                	addi	sp,sp,64
    80201592:	8082                	ret

0000000080201594 <__switch>:
    80201594:	00153023          	sd	ra,0(a0)
    80201598:	00253423          	sd	sp,8(a0)
    8020159c:	e900                	sd	s0,16(a0)
    8020159e:	ed04                	sd	s1,24(a0)
    802015a0:	03253023          	sd	s2,32(a0)
    802015a4:	03353423          	sd	s3,40(a0)
    802015a8:	03453823          	sd	s4,48(a0)
    802015ac:	03553c23          	sd	s5,56(a0)
    802015b0:	05653023          	sd	s6,64(a0)
    802015b4:	05753423          	sd	s7,72(a0)
    802015b8:	05853823          	sd	s8,80(a0)
    802015bc:	05953c23          	sd	s9,88(a0)
    802015c0:	07a53023          	sd	s10,96(a0)
    802015c4:	07b53423          	sd	s11,104(a0)
    802015c8:	0005b083          	ld	ra,0(a1)
    802015cc:	0085b103          	ld	sp,8(a1)
    802015d0:	6980                	ld	s0,16(a1)
    802015d2:	6d84                	ld	s1,24(a1)
    802015d4:	0205b903          	ld	s2,32(a1)
    802015d8:	0285b983          	ld	s3,40(a1)
    802015dc:	0305ba03          	ld	s4,48(a1)
    802015e0:	0385ba83          	ld	s5,56(a1)
    802015e4:	0405bb03          	ld	s6,64(a1)
    802015e8:	0485bb83          	ld	s7,72(a1)
    802015ec:	0505bc03          	ld	s8,80(a1)
    802015f0:	0585bc83          	ld	s9,88(a1)
    802015f4:	0605bd03          	ld	s10,96(a1)
    802015f8:	0685bd83          	ld	s11,104(a1)
    802015fc:	8082                	ret

00000000802015fe <proc_init>:
    802015fe:	1101                	addi	sp,sp,-32
    80201600:	ec06                	sd	ra,24(sp)
    80201602:	e822                	sd	s0,16(sp)
    80201604:	1000                	addi	s0,sp,32
    80201606:	00001517          	auipc	a0,0x1
    8020160a:	d6250513          	addi	a0,a0,-670 # 80202368 <rodata_start+0x368>
    8020160e:	e58ff0ef          	jal	80200c66 <printk>
    80201612:	00025797          	auipc	a5,0x25
    80201616:	9f678793          	addi	a5,a5,-1546 # 80226008 <proc>
    8020161a:	fef43423          	sd	a5,-24(s0)
    8020161e:	a849                	j	802016b0 <proc_init+0xb2>
    80201620:	fe843703          	ld	a4,-24(s0)
    80201624:	00025797          	auipc	a5,0x25
    80201628:	9e478793          	addi	a5,a5,-1564 # 80226008 <proc>
    8020162c:	40f707b3          	sub	a5,a4,a5
    80201630:	4037d713          	srai	a4,a5,0x3
    80201634:	00001797          	auipc	a5,0x1
    80201638:	d8c78793          	addi	a5,a5,-628 # 802023c0 <rodata_start+0x3c0>
    8020163c:	639c                	ld	a5,0(a5)
    8020163e:	02f707b3          	mul	a5,a4,a5
    80201642:	853e                	mv	a0,a5
    80201644:	9edfe0ef          	jal	80200030 <get_kernel_stack>
    80201648:	872a                	mv	a4,a0
    8020164a:	fe843783          	ld	a5,-24(s0)
    8020164e:	e398                	sd	a4,0(a5)
    80201650:	fe843703          	ld	a4,-24(s0)
    80201654:	00025797          	auipc	a5,0x25
    80201658:	9b478793          	addi	a5,a5,-1612 # 80226008 <proc>
    8020165c:	40f707b3          	sub	a5,a4,a5
    80201660:	4037d713          	srai	a4,a5,0x3
    80201664:	00001797          	auipc	a5,0x1
    80201668:	d5c78793          	addi	a5,a5,-676 # 802023c0 <rodata_start+0x3c0>
    8020166c:	639c                	ld	a5,0(a5)
    8020166e:	02f707b3          	mul	a5,a4,a5
    80201672:	853e                	mv	a0,a5
    80201674:	9f5fe0ef          	jal	80200068 <get_user_stack>
    80201678:	872a                	mv	a4,a0
    8020167a:	fe843783          	ld	a5,-24(s0)
    8020167e:	e798                	sd	a4,8(a5)
    80201680:	fe843783          	ld	a5,-24(s0)
    80201684:	0007a823          	sw	zero,16(a5)
    80201688:	fe843783          	ld	a5,-24(s0)
    8020168c:	6398                	ld	a4,0(a5)
    8020168e:	fe843783          	ld	a5,-24(s0)
    80201692:	679c                	ld	a5,8(a5)
    80201694:	863e                	mv	a2,a5
    80201696:	85ba                	mv	a1,a4
    80201698:	00001517          	auipc	a0,0x1
    8020169c:	ce850513          	addi	a0,a0,-792 # 80202380 <rodata_start+0x380>
    802016a0:	dc6ff0ef          	jal	80200c66 <printk>
    802016a4:	fe843783          	ld	a5,-24(s0)
    802016a8:	19878793          	addi	a5,a5,408
    802016ac:	fef43423          	sd	a5,-24(s0)
    802016b0:	fe843703          	ld	a4,-24(s0)
    802016b4:	00025797          	auipc	a5,0x25
    802016b8:	c8478793          	addi	a5,a5,-892 # 80226338 <os_proc>
    802016bc:	f6f762e3          	bltu	a4,a5,80201620 <proc_init+0x22>
    802016c0:	00013717          	auipc	a4,0x13
    802016c4:	94070713          	addi	a4,a4,-1728 # 80214000 <boot_stack_top>
    802016c8:	00025797          	auipc	a5,0x25
    802016cc:	c7078793          	addi	a5,a5,-912 # 80226338 <os_proc>
    802016d0:	e398                	sd	a4,0(a5)
    802016d2:	0001                	nop
    802016d4:	60e2                	ld	ra,24(sp)
    802016d6:	6442                	ld	s0,16(sp)
    802016d8:	6105                	addi	sp,sp,32
    802016da:	8082                	ret

00000000802016dc <allocate_proc>:
    802016dc:	1101                	addi	sp,sp,-32
    802016de:	ec06                	sd	ra,24(sp)
    802016e0:	e822                	sd	s0,16(sp)
    802016e2:	1000                	addi	s0,sp,32
    802016e4:	00025797          	auipc	a5,0x25
    802016e8:	92478793          	addi	a5,a5,-1756 # 80226008 <proc>
    802016ec:	fef43423          	sd	a5,-24(s0)
    802016f0:	a0b5                	j	8020175c <allocate_proc+0x80>
    802016f2:	fe843783          	ld	a5,-24(s0)
    802016f6:	4b9c                	lw	a5,16(a5)
    802016f8:	efa1                	bnez	a5,80201750 <allocate_proc+0x74>
    802016fa:	fe843783          	ld	a5,-24(s0)
    802016fe:	4705                	li	a4,1
    80201700:	cb98                	sw	a4,16(a5)
    80201702:	fe843783          	ld	a5,-24(s0)
    80201706:	07e1                	addi	a5,a5,24
    80201708:	11000613          	li	a2,272
    8020170c:	4581                	li	a1,0
    8020170e:	853e                	mv	a0,a5
    80201710:	a37ff0ef          	jal	80201146 <memset>
    80201714:	fe843783          	ld	a5,-24(s0)
    80201718:	12878793          	addi	a5,a5,296
    8020171c:	07000613          	li	a2,112
    80201720:	4581                	li	a1,0
    80201722:	853e                	mv	a0,a5
    80201724:	a23ff0ef          	jal	80201146 <memset>
    80201728:	00000717          	auipc	a4,0x0
    8020172c:	85070713          	addi	a4,a4,-1968 # 80200f78 <__restore>
    80201730:	fe843783          	ld	a5,-24(s0)
    80201734:	12e7b423          	sd	a4,296(a5)
    80201738:	fe843783          	ld	a5,-24(s0)
    8020173c:	6398                	ld	a4,0(a5)
    8020173e:	6785                	lui	a5,0x1
    80201740:	973e                	add	a4,a4,a5
    80201742:	fe843783          	ld	a5,-24(s0)
    80201746:	12e7b823          	sd	a4,304(a5) # 1130 <n+0x1110>
    8020174a:	fe843783          	ld	a5,-24(s0)
    8020174e:	a005                	j	8020176e <allocate_proc+0x92>
    80201750:	fe843783          	ld	a5,-24(s0)
    80201754:	19878793          	addi	a5,a5,408
    80201758:	fef43423          	sd	a5,-24(s0)
    8020175c:	fe843703          	ld	a4,-24(s0)
    80201760:	00025797          	auipc	a5,0x25
    80201764:	bd878793          	addi	a5,a5,-1064 # 80226338 <os_proc>
    80201768:	f8f765e3          	bltu	a4,a5,802016f2 <allocate_proc+0x16>
    8020176c:	4781                	li	a5,0
    8020176e:	853e                	mv	a0,a5
    80201770:	60e2                	ld	ra,24(sp)
    80201772:	6442                	ld	s0,16(sp)
    80201774:	6105                	addi	sp,sp,32
    80201776:	8082                	ret

0000000080201778 <cur_proc>:
    80201778:	1141                	addi	sp,sp,-16
    8020177a:	e406                	sd	ra,8(sp)
    8020177c:	e022                	sd	s0,0(sp)
    8020177e:	0800                	addi	s0,sp,16
    80201780:	00025797          	auipc	a5,0x25
    80201784:	d6078793          	addi	a5,a5,-672 # 802264e0 <current_proc>
    80201788:	639c                	ld	a5,0(a5)
    8020178a:	853e                	mv	a0,a5
    8020178c:	60a2                	ld	ra,8(sp)
    8020178e:	6402                	ld	s0,0(sp)
    80201790:	0141                	addi	sp,sp,16
    80201792:	8082                	ret

0000000080201794 <scheduler>:
    80201794:	1101                	addi	sp,sp,-32
    80201796:	ec06                	sd	ra,24(sp)
    80201798:	e822                	sd	s0,16(sp)
    8020179a:	1000                	addi	s0,sp,32
    8020179c:	00025797          	auipc	a5,0x25
    802017a0:	86c78793          	addi	a5,a5,-1940 # 80226008 <proc>
    802017a4:	fef43423          	sd	a5,-24(s0)
    802017a8:	a889                	j	802017fa <scheduler+0x66>
    802017aa:	fe843783          	ld	a5,-24(s0)
    802017ae:	4b98                	lw	a4,16(a5)
    802017b0:	4785                	li	a5,1
    802017b2:	02f71e63          	bne	a4,a5,802017ee <scheduler+0x5a>
    802017b6:	fe843783          	ld	a5,-24(s0)
    802017ba:	4709                	li	a4,2
    802017bc:	cb98                	sw	a4,16(a5)
    802017be:	00025797          	auipc	a5,0x25
    802017c2:	d2278793          	addi	a5,a5,-734 # 802264e0 <current_proc>
    802017c6:	fe843703          	ld	a4,-24(s0)
    802017ca:	e398                	sd	a4,0(a5)
    802017cc:	00001517          	auipc	a0,0x1
    802017d0:	bd450513          	addi	a0,a0,-1068 # 802023a0 <rodata_start+0x3a0>
    802017d4:	c92ff0ef          	jal	80200c66 <printk>
    802017d8:	fe843783          	ld	a5,-24(s0)
    802017dc:	12878793          	addi	a5,a5,296
    802017e0:	85be                	mv	a1,a5
    802017e2:	00025517          	auipc	a0,0x25
    802017e6:	c7e50513          	addi	a0,a0,-898 # 80226460 <os_proc+0x128>
    802017ea:	dabff0ef          	jal	80201594 <__switch>
    802017ee:	fe843783          	ld	a5,-24(s0)
    802017f2:	19878793          	addi	a5,a5,408
    802017f6:	fef43423          	sd	a5,-24(s0)
    802017fa:	fe843703          	ld	a4,-24(s0)
    802017fe:	00025797          	auipc	a5,0x25
    80201802:	b3a78793          	addi	a5,a5,-1222 # 80226338 <os_proc>
    80201806:	faf762e3          	bltu	a4,a5,802017aa <scheduler+0x16>
    8020180a:	bf49                	j	8020179c <scheduler+0x8>

000000008020180c <sched>:
    8020180c:	1101                	addi	sp,sp,-32
    8020180e:	ec06                	sd	ra,24(sp)
    80201810:	e822                	sd	s0,16(sp)
    80201812:	1000                	addi	s0,sp,32
    80201814:	f65ff0ef          	jal	80201778 <cur_proc>
    80201818:	fea43423          	sd	a0,-24(s0)
    8020181c:	fe843783          	ld	a5,-24(s0)
    80201820:	12878793          	addi	a5,a5,296
    80201824:	00025597          	auipc	a1,0x25
    80201828:	c3c58593          	addi	a1,a1,-964 # 80226460 <os_proc+0x128>
    8020182c:	853e                	mv	a0,a5
    8020182e:	d67ff0ef          	jal	80201594 <__switch>
    80201832:	0001                	nop
    80201834:	60e2                	ld	ra,24(sp)
    80201836:	6442                	ld	s0,16(sp)
    80201838:	6105                	addi	sp,sp,32
    8020183a:	8082                	ret

000000008020183c <yield>:
    8020183c:	1141                	addi	sp,sp,-16
    8020183e:	e406                	sd	ra,8(sp)
    80201840:	e022                	sd	s0,0(sp)
    80201842:	0800                	addi	s0,sp,16
    80201844:	00025797          	auipc	a5,0x25
    80201848:	c9c78793          	addi	a5,a5,-868 # 802264e0 <current_proc>
    8020184c:	639c                	ld	a5,0(a5)
    8020184e:	4705                	li	a4,1
    80201850:	cb98                	sw	a4,16(a5)
    80201852:	fbbff0ef          	jal	8020180c <sched>
    80201856:	0001                	nop
    80201858:	60a2                	ld	ra,8(sp)
    8020185a:	6402                	ld	s0,0(sp)
    8020185c:	0141                	addi	sp,sp,16
    8020185e:	8082                	ret
