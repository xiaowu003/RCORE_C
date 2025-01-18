
../target/os.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	00014117          	auipc	sp,0x14
    80200004:	00010113          	mv	sp,sp
    80200008:	2e80006f          	j	802002f0 <main>
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
    80200048:	49b000ef          	jal	80200ce2 <printk>
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
    8020007c:	0002c797          	auipc	a5,0x2c
    80200080:	f8c78793          	addi	a5,a5,-116 # 8022c008 <user_stack>
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
    80200098:	00030717          	auipc	a4,0x30
    8020009c:	f6870713          	addi	a4,a4,-152 # 80230000 <bss_end>
    802000a0:	20100793          	li	a5,513
    802000a4:	07da                	slli	a5,a5,0x16
    802000a6:	00f76863          	bltu	a4,a5,802000b6 <load_init+0x26>
    802000aa:	00002517          	auipc	a0,0x2
    802000ae:	f5e50513          	addi	a0,a0,-162 # 80202008 <rodata_start+0x8>
    802000b2:	436000ef          	jal	802004e8 <panic>
    802000b6:	0002f797          	auipc	a5,0x2f
    802000ba:	5b278793          	addi	a5,a5,1458 # 8022f668 <app_info_ptr>
    802000be:	00003717          	auipc	a4,0x3
    802000c2:	f4270713          	addi	a4,a4,-190 # 80203000 <_num_app>
    802000c6:	e398                	sd	a4,0(a5)
    802000c8:	0002f797          	auipc	a5,0x2f
    802000cc:	5a078793          	addi	a5,a5,1440 # 8022f668 <app_info_ptr>
    802000d0:	639c                	ld	a5,0(a5)
    802000d2:	6398                	ld	a4,0(a5)
    802000d4:	0002f797          	auipc	a5,0x2f
    802000d8:	59c78793          	addi	a5,a5,1436 # 8022f670 <app_num>
    802000dc:	e398                	sd	a4,0(a5)
    802000de:	0002f797          	auipc	a5,0x2f
    802000e2:	58a78793          	addi	a5,a5,1418 # 8022f668 <app_info_ptr>
    802000e6:	639c                	ld	a5,0(a5)
    802000e8:	00878713          	addi	a4,a5,8
    802000ec:	0002f797          	auipc	a5,0x2f
    802000f0:	57c78793          	addi	a5,a5,1404 # 8022f668 <app_info_ptr>
    802000f4:	e398                	sd	a4,0(a5)
    802000f6:	00002517          	auipc	a0,0x2
    802000fa:	f2a50513          	addi	a0,a0,-214 # 80202020 <rodata_start+0x20>
    802000fe:	3e5000ef          	jal	80200ce2 <printk>
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
    8020016a:	100010ef          	jal	8020126a <memset>
    8020016e:	fc843783          	ld	a5,-56(s0)
    80200172:	01179713          	slli	a4,a5,0x11
    80200176:	20100793          	li	a5,513
    8020017a:	07da                	slli	a5,a5,0x16
    8020017c:	97ba                	add	a5,a5,a4
    8020017e:	fe843703          	ld	a4,-24(s0)
    80200182:	fd843603          	ld	a2,-40(s0)
    80200186:	85ba                	mv	a1,a4
    80200188:	853e                	mv	a0,a5
    8020018a:	086010ef          	jal	80201210 <memmove>
    8020018e:	00002517          	auipc	a0,0x2
    80200192:	eaa50513          	addi	a0,a0,-342 # 80202038 <rodata_start+0x38>
    80200196:	34d000ef          	jal	80200ce2 <printk>
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
    802001b4:	a879                	j	80200252 <run_all_app+0xaa>
    802001b6:	6e0010ef          	jal	80201896 <allocate_proc>
    802001ba:	fea43023          	sd	a0,-32(s0)
    802001be:	0002f797          	auipc	a5,0x2f
    802001c2:	4aa78793          	addi	a5,a5,1194 # 8022f668 <app_info_ptr>
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
    80200200:	edf7f793          	andi	a5,a5,-289
    80200204:	0207e713          	ori	a4,a5,32
    80200208:	fe043783          	ld	a5,-32(s0)
    8020020c:	10e7bc23          	sd	a4,280(a5)
    80200210:	fe043783          	ld	a5,-32(s0)
    80200214:	6398                	ld	a4,0(a5)
    80200216:	6785                	lui	a5,0x1
    80200218:	ef078793          	addi	a5,a5,-272 # ef0 <n+0xed0>
    8020021c:	97ba                	add	a5,a5,a4
    8020021e:	873e                	mv	a4,a5
    80200220:	fe043783          	ld	a5,-32(s0)
    80200224:	07e1                	addi	a5,a5,24
    80200226:	11000613          	li	a2,272
    8020022a:	85be                	mv	a1,a5
    8020022c:	853a                	mv	a0,a4
    8020022e:	6ff000ef          	jal	8020112c <memcpy>
    80200232:	fe043783          	ld	a5,-32(s0)
    80200236:	6398                	ld	a4,0(a5)
    80200238:	6785                	lui	a5,0x1
    8020023a:	ef078793          	addi	a5,a5,-272 # ef0 <n+0xed0>
    8020023e:	973e                	add	a4,a4,a5
    80200240:	fe043783          	ld	a5,-32(s0)
    80200244:	12e7b823          	sd	a4,304(a5)
    80200248:	fe843783          	ld	a5,-24(s0)
    8020024c:	0785                	addi	a5,a5,1
    8020024e:	fef43423          	sd	a5,-24(s0)
    80200252:	0002f797          	auipc	a5,0x2f
    80200256:	41e78793          	addi	a5,a5,1054 # 8022f670 <app_num>
    8020025a:	639c                	ld	a5,0(a5)
    8020025c:	fe843703          	ld	a4,-24(s0)
    80200260:	f4f76be3          	bltu	a4,a5,802001b6 <run_all_app+0xe>
    80200264:	00002517          	auipc	a0,0x2
    80200268:	dec50513          	addi	a0,a0,-532 # 80202050 <rodata_start+0x50>
    8020026c:	277000ef          	jal	80200ce2 <printk>
    80200270:	4781                	li	a5,0
    80200272:	853e                	mv	a0,a5
    80200274:	60e2                	ld	ra,24(sp)
    80200276:	6442                	ld	s0,16(sp)
    80200278:	6105                	addi	sp,sp,32
    8020027a:	8082                	ret

000000008020027c <clear_bss>:
    8020027c:	1101                	addi	sp,sp,-32
    8020027e:	ec06                	sd	ra,24(sp)
    80200280:	e822                	sd	s0,16(sp)
    80200282:	1000                	addi	s0,sp,32
    80200284:	00030617          	auipc	a2,0x30
    80200288:	d7c60613          	addi	a2,a2,-644 # 80230000 <bss_end>
    8020028c:	00014597          	auipc	a1,0x14
    80200290:	d7658593          	addi	a1,a1,-650 # 80214002 <bss_start>
    80200294:	00002517          	auipc	a0,0x2
    80200298:	ddc50513          	addi	a0,a0,-548 # 80202070 <rodata_start+0x70>
    8020029c:	247000ef          	jal	80200ce2 <printk>
    802002a0:	00002517          	auipc	a0,0x2
    802002a4:	e0850513          	addi	a0,a0,-504 # 802020a8 <rodata_start+0xa8>
    802002a8:	23b000ef          	jal	80200ce2 <printk>
    802002ac:	00014797          	auipc	a5,0x14
    802002b0:	d5678793          	addi	a5,a5,-682 # 80214002 <bss_start>
    802002b4:	fef43423          	sd	a5,-24(s0)
    802002b8:	00014797          	auipc	a5,0x14
    802002bc:	d4a78793          	addi	a5,a5,-694 # 80214002 <bss_start>
    802002c0:	fef43023          	sd	a5,-32(s0)
    802002c4:	a811                	j	802002d8 <clear_bss+0x5c>
    802002c6:	fe843783          	ld	a5,-24(s0)
    802002ca:	00078023          	sb	zero,0(a5)
    802002ce:	fe843783          	ld	a5,-24(s0)
    802002d2:	0785                	addi	a5,a5,1
    802002d4:	fef43423          	sd	a5,-24(s0)
    802002d8:	fe843703          	ld	a4,-24(s0)
    802002dc:	fe043783          	ld	a5,-32(s0)
    802002e0:	fef763e3          	bltu	a4,a5,802002c6 <clear_bss+0x4a>
    802002e4:	0001                	nop
    802002e6:	0001                	nop
    802002e8:	60e2                	ld	ra,24(sp)
    802002ea:	6442                	ld	s0,16(sp)
    802002ec:	6105                	addi	sp,sp,32
    802002ee:	8082                	ret

00000000802002f0 <main>:
    802002f0:	1141                	addi	sp,sp,-16
    802002f2:	e406                	sd	ra,8(sp)
    802002f4:	e022                	sd	s0,0(sp)
    802002f6:	0800                	addi	s0,sp,16
    802002f8:	f85ff0ef          	jal	8020027c <clear_bss>
    802002fc:	3b5000ef          	jal	80200eb0 <trap_init>
    80200300:	4b8010ef          	jal	802017b8 <proc_init>
    80200304:	d8dff0ef          	jal	80200090 <load_init>
    80200308:	13e000ef          	jal	80200446 <sbi_get_sbi_spec_version>
    8020030c:	047010ef          	jal	80201b52 <timer_init>
    80200310:	e99ff0ef          	jal	802001a8 <run_all_app>
    80200314:	63a010ef          	jal	8020194e <scheduler>
    80200318:	00002517          	auipc	a0,0x2
    8020031c:	db050513          	addi	a0,a0,-592 # 802020c8 <rodata_start+0xc8>
    80200320:	1c8000ef          	jal	802004e8 <panic>
    80200324:	4781                	li	a5,0
    80200326:	853e                	mv	a0,a5
    80200328:	60a2                	ld	ra,8(sp)
    8020032a:	6402                	ld	s0,0(sp)
    8020032c:	0141                	addi	sp,sp,16
    8020032e:	8082                	ret

0000000080200330 <sbi_ecall>:
    80200330:	7159                	addi	sp,sp,-112
    80200332:	f486                	sd	ra,104(sp)
    80200334:	f0a2                	sd	s0,96(sp)
    80200336:	1880                	addi	s0,sp,112
    80200338:	fca43423          	sd	a0,-56(s0)
    8020033c:	fcb43023          	sd	a1,-64(s0)
    80200340:	fac43c23          	sd	a2,-72(s0)
    80200344:	fad43823          	sd	a3,-80(s0)
    80200348:	fae43423          	sd	a4,-88(s0)
    8020034c:	faf43023          	sd	a5,-96(s0)
    80200350:	f9043c23          	sd	a6,-104(s0)
    80200354:	f9143823          	sd	a7,-112(s0)
    80200358:	fb843503          	ld	a0,-72(s0)
    8020035c:	fb043583          	ld	a1,-80(s0)
    80200360:	fa843603          	ld	a2,-88(s0)
    80200364:	fa043683          	ld	a3,-96(s0)
    80200368:	f9843703          	ld	a4,-104(s0)
    8020036c:	f9043783          	ld	a5,-112(s0)
    80200370:	fc043803          	ld	a6,-64(s0)
    80200374:	fc843883          	ld	a7,-56(s0)
    80200378:	00000073          	ecall
    8020037c:	87aa                	mv	a5,a0
    8020037e:	fcf43823          	sd	a5,-48(s0)
    80200382:	87ae                	mv	a5,a1
    80200384:	fcf43c23          	sd	a5,-40(s0)
    80200388:	fd043783          	ld	a5,-48(s0)
    8020038c:	fef43023          	sd	a5,-32(s0)
    80200390:	fd843783          	ld	a5,-40(s0)
    80200394:	fef43423          	sd	a5,-24(s0)
    80200398:	fe043703          	ld	a4,-32(s0)
    8020039c:	fe843783          	ld	a5,-24(s0)
    802003a0:	833a                	mv	t1,a4
    802003a2:	83be                	mv	t2,a5
    802003a4:	871a                	mv	a4,t1
    802003a6:	879e                	mv	a5,t2
    802003a8:	853a                	mv	a0,a4
    802003aa:	85be                	mv	a1,a5
    802003ac:	70a6                	ld	ra,104(sp)
    802003ae:	7406                	ld	s0,96(sp)
    802003b0:	6165                	addi	sp,sp,112
    802003b2:	8082                	ret

00000000802003b4 <sbi_set_timer>:
    802003b4:	1101                	addi	sp,sp,-32
    802003b6:	ec06                	sd	ra,24(sp)
    802003b8:	e822                	sd	s0,16(sp)
    802003ba:	1000                	addi	s0,sp,32
    802003bc:	fea43423          	sd	a0,-24(s0)
    802003c0:	4881                	li	a7,0
    802003c2:	4801                	li	a6,0
    802003c4:	4781                	li	a5,0
    802003c6:	4701                	li	a4,0
    802003c8:	4681                	li	a3,0
    802003ca:	fe843603          	ld	a2,-24(s0)
    802003ce:	4581                	li	a1,0
    802003d0:	54495537          	lui	a0,0x54495
    802003d4:	d4550513          	addi	a0,a0,-699 # 54494d45 <n+0x54494d25>
    802003d8:	f59ff0ef          	jal	80200330 <sbi_ecall>
    802003dc:	0001                	nop
    802003de:	60e2                	ld	ra,24(sp)
    802003e0:	6442                	ld	s0,16(sp)
    802003e2:	6105                	addi	sp,sp,32
    802003e4:	8082                	ret

00000000802003e6 <sbi_console_putchar>:
    802003e6:	1101                	addi	sp,sp,-32
    802003e8:	ec06                	sd	ra,24(sp)
    802003ea:	e822                	sd	s0,16(sp)
    802003ec:	1000                	addi	s0,sp,32
    802003ee:	87aa                	mv	a5,a0
    802003f0:	fef407a3          	sb	a5,-17(s0)
    802003f4:	fef40603          	lb	a2,-17(s0)
    802003f8:	4881                	li	a7,0
    802003fa:	4801                	li	a6,0
    802003fc:	4781                	li	a5,0
    802003fe:	4701                	li	a4,0
    80200400:	4681                	li	a3,0
    80200402:	4581                	li	a1,0
    80200404:	4505                	li	a0,1
    80200406:	f2bff0ef          	jal	80200330 <sbi_ecall>
    8020040a:	0001                	nop
    8020040c:	60e2                	ld	ra,24(sp)
    8020040e:	6442                	ld	s0,16(sp)
    80200410:	6105                	addi	sp,sp,32
    80200412:	8082                	ret

0000000080200414 <sbi_shut_down>:
    80200414:	1101                	addi	sp,sp,-32
    80200416:	ec06                	sd	ra,24(sp)
    80200418:	e822                	sd	s0,16(sp)
    8020041a:	1000                	addi	s0,sp,32
    8020041c:	fea43423          	sd	a0,-24(s0)
    80200420:	4881                	li	a7,0
    80200422:	4801                	li	a6,0
    80200424:	4781                	li	a5,0
    80200426:	4701                	li	a4,0
    80200428:	fe843683          	ld	a3,-24(s0)
    8020042c:	4601                	li	a2,0
    8020042e:	4581                	li	a1,0
    80200430:	53525537          	lui	a0,0x53525
    80200434:	35450513          	addi	a0,a0,852 # 53525354 <n+0x53525334>
    80200438:	ef9ff0ef          	jal	80200330 <sbi_ecall>
    8020043c:	0001                	nop
    8020043e:	60e2                	ld	ra,24(sp)
    80200440:	6442                	ld	s0,16(sp)
    80200442:	6105                	addi	sp,sp,32
    80200444:	8082                	ret

0000000080200446 <sbi_get_sbi_spec_version>:
    80200446:	1101                	addi	sp,sp,-32
    80200448:	ec06                	sd	ra,24(sp)
    8020044a:	e822                	sd	s0,16(sp)
    8020044c:	1000                	addi	s0,sp,32
    8020044e:	4881                	li	a7,0
    80200450:	4801                	li	a6,0
    80200452:	4781                	li	a5,0
    80200454:	4701                	li	a4,0
    80200456:	4681                	li	a3,0
    80200458:	4601                	li	a2,0
    8020045a:	4581                	li	a1,0
    8020045c:	4541                	li	a0,16
    8020045e:	ed3ff0ef          	jal	80200330 <sbi_ecall>
    80200462:	872a                	mv	a4,a0
    80200464:	87ae                	mv	a5,a1
    80200466:	fee43023          	sd	a4,-32(s0)
    8020046a:	fef43423          	sd	a5,-24(s0)
    8020046e:	fe843783          	ld	a5,-24(s0)
    80200472:	85be                	mv	a1,a5
    80200474:	00002517          	auipc	a0,0x2
    80200478:	c6c50513          	addi	a0,a0,-916 # 802020e0 <rodata_start+0xe0>
    8020047c:	067000ef          	jal	80200ce2 <printk>
    80200480:	0001                	nop
    80200482:	60e2                	ld	ra,24(sp)
    80200484:	6442                	ld	s0,16(sp)
    80200486:	6105                	addi	sp,sp,32
    80200488:	8082                	ret

000000008020048a <print>:
    8020048a:	1101                	addi	sp,sp,-32
    8020048c:	ec06                	sd	ra,24(sp)
    8020048e:	e822                	sd	s0,16(sp)
    80200490:	1000                	addi	s0,sp,32
    80200492:	fea43423          	sd	a0,-24(s0)
    80200496:	a821                	j	802004ae <print+0x24>
    80200498:	fe843783          	ld	a5,-24(s0)
    8020049c:	00178713          	addi	a4,a5,1
    802004a0:	fee43423          	sd	a4,-24(s0)
    802004a4:	00078783          	lb	a5,0(a5)
    802004a8:	853e                	mv	a0,a5
    802004aa:	f3dff0ef          	jal	802003e6 <sbi_console_putchar>
    802004ae:	fe843783          	ld	a5,-24(s0)
    802004b2:	00078783          	lb	a5,0(a5)
    802004b6:	f3ed                	bnez	a5,80200498 <print+0xe>
    802004b8:	0001                	nop
    802004ba:	0001                	nop
    802004bc:	60e2                	ld	ra,24(sp)
    802004be:	6442                	ld	s0,16(sp)
    802004c0:	6105                	addi	sp,sp,32
    802004c2:	8082                	ret

00000000802004c4 <println>:
    802004c4:	1101                	addi	sp,sp,-32
    802004c6:	ec06                	sd	ra,24(sp)
    802004c8:	e822                	sd	s0,16(sp)
    802004ca:	1000                	addi	s0,sp,32
    802004cc:	fea43423          	sd	a0,-24(s0)
    802004d0:	fe843503          	ld	a0,-24(s0)
    802004d4:	fb7ff0ef          	jal	8020048a <print>
    802004d8:	4529                	li	a0,10
    802004da:	f0dff0ef          	jal	802003e6 <sbi_console_putchar>
    802004de:	0001                	nop
    802004e0:	60e2                	ld	ra,24(sp)
    802004e2:	6442                	ld	s0,16(sp)
    802004e4:	6105                	addi	sp,sp,32
    802004e6:	8082                	ret

00000000802004e8 <panic>:
    802004e8:	1101                	addi	sp,sp,-32
    802004ea:	ec06                	sd	ra,24(sp)
    802004ec:	e822                	sd	s0,16(sp)
    802004ee:	1000                	addi	s0,sp,32
    802004f0:	fea43423          	sd	a0,-24(s0)
    802004f4:	4529                	li	a0,10
    802004f6:	ef1ff0ef          	jal	802003e6 <sbi_console_putchar>
    802004fa:	08e010ef          	jal	80201588 <sys_stack_trace>
    802004fe:	00002517          	auipc	a0,0x2
    80200502:	bfa50513          	addi	a0,a0,-1030 # 802020f8 <rodata_start+0xf8>
    80200506:	f85ff0ef          	jal	8020048a <print>
    8020050a:	fe843503          	ld	a0,-24(s0)
    8020050e:	fb7ff0ef          	jal	802004c4 <println>
    80200512:	4505                	li	a0,1
    80200514:	f01ff0ef          	jal	80200414 <sbi_shut_down>
    80200518:	0001                	nop
    8020051a:	60e2                	ld	ra,24(sp)
    8020051c:	6442                	ld	s0,16(sp)
    8020051e:	6105                	addi	sp,sp,32
    80200520:	8082                	ret

0000000080200522 <mini_strlen>:
    80200522:	7179                	addi	sp,sp,-48
    80200524:	f406                	sd	ra,40(sp)
    80200526:	f022                	sd	s0,32(sp)
    80200528:	1800                	addi	s0,sp,48
    8020052a:	fca43c23          	sd	a0,-40(s0)
    8020052e:	fe042623          	sw	zero,-20(s0)
    80200532:	a031                	j	8020053e <mini_strlen+0x1c>
    80200534:	fec42783          	lw	a5,-20(s0)
    80200538:	2785                	addiw	a5,a5,1
    8020053a:	fef42623          	sw	a5,-20(s0)
    8020053e:	fec46783          	lwu	a5,-20(s0)
    80200542:	fd843703          	ld	a4,-40(s0)
    80200546:	97ba                	add	a5,a5,a4
    80200548:	00078783          	lb	a5,0(a5)
    8020054c:	f7e5                	bnez	a5,80200534 <mini_strlen+0x12>
    8020054e:	fec42783          	lw	a5,-20(s0)
    80200552:	853e                	mv	a0,a5
    80200554:	70a2                	ld	ra,40(sp)
    80200556:	7402                	ld	s0,32(sp)
    80200558:	6145                	addi	sp,sp,48
    8020055a:	8082                	ret

000000008020055c <mini_itoa>:
    8020055c:	715d                	addi	sp,sp,-80
    8020055e:	e486                	sd	ra,72(sp)
    80200560:	e0a2                	sd	s0,64(sp)
    80200562:	0880                	addi	s0,sp,80
    80200564:	fca43423          	sd	a0,-56(s0)
    80200568:	fae43823          	sd	a4,-80(s0)
    8020056c:	873e                	mv	a4,a5
    8020056e:	87ae                	mv	a5,a1
    80200570:	fcf42223          	sw	a5,-60(s0)
    80200574:	87b2                	mv	a5,a2
    80200576:	fcf42023          	sw	a5,-64(s0)
    8020057a:	87b6                	mv	a5,a3
    8020057c:	faf42e23          	sw	a5,-68(s0)
    80200580:	87ba                	mv	a5,a4
    80200582:	faf42c23          	sw	a5,-72(s0)
    80200586:	fb043783          	ld	a5,-80(s0)
    8020058a:	fef43423          	sd	a5,-24(s0)
    8020058e:	fe042223          	sw	zero,-28(s0)
    80200592:	fc442783          	lw	a5,-60(s0)
    80200596:	0007871b          	sext.w	a4,a5
    8020059a:	47c1                	li	a5,16
    8020059c:	00e7f463          	bgeu	a5,a4,802005a4 <mini_itoa+0x48>
    802005a0:	4781                	li	a5,0
    802005a2:	aaf9                	j	80200780 <mini_itoa+0x224>
    802005a4:	fc843783          	ld	a5,-56(s0)
    802005a8:	0007df63          	bgez	a5,802005c6 <mini_itoa+0x6a>
    802005ac:	fbc42783          	lw	a5,-68(s0)
    802005b0:	2781                	sext.w	a5,a5
    802005b2:	eb91                	bnez	a5,802005c6 <mini_itoa+0x6a>
    802005b4:	4785                	li	a5,1
    802005b6:	fef42223          	sw	a5,-28(s0)
    802005ba:	fc843783          	ld	a5,-56(s0)
    802005be:	40f007b3          	neg	a5,a5
    802005c2:	fcf43423          	sd	a5,-56(s0)
    802005c6:	fc042e23          	sw	zero,-36(s0)
    802005ca:	fbc42783          	lw	a5,-68(s0)
    802005ce:	2781                	sext.w	a5,a5
    802005d0:	cb91                	beqz	a5,802005e4 <mini_itoa+0x88>
    802005d2:	fc843703          	ld	a4,-56(s0)
    802005d6:	fc446783          	lwu	a5,-60(s0)
    802005da:	02f777b3          	remu	a5,a4,a5
    802005de:	fcf42e23          	sw	a5,-36(s0)
    802005e2:	a809                	j	802005f4 <mini_itoa+0x98>
    802005e4:	fc446783          	lwu	a5,-60(s0)
    802005e8:	fc843703          	ld	a4,-56(s0)
    802005ec:	02f767b3          	rem	a5,a4,a5
    802005f0:	fcf42e23          	sw	a5,-36(s0)
    802005f4:	fdc42783          	lw	a5,-36(s0)
    802005f8:	0007871b          	sext.w	a4,a5
    802005fc:	47a5                	li	a5,9
    802005fe:	00e7cb63          	blt	a5,a4,80200614 <mini_itoa+0xb8>
    80200602:	fdc42783          	lw	a5,-36(s0)
    80200606:	0ff7f793          	zext.b	a5,a5
    8020060a:	0307879b          	addiw	a5,a5,48
    8020060e:	0ff7f713          	zext.b	a4,a5
    80200612:	a025                	j	8020063a <mini_itoa+0xde>
    80200614:	fc042783          	lw	a5,-64(s0)
    80200618:	2781                	sext.w	a5,a5
    8020061a:	c781                	beqz	a5,80200622 <mini_itoa+0xc6>
    8020061c:	04100793          	li	a5,65
    80200620:	a019                	j	80200626 <mini_itoa+0xca>
    80200622:	06100793          	li	a5,97
    80200626:	fdc42703          	lw	a4,-36(s0)
    8020062a:	0ff77713          	zext.b	a4,a4
    8020062e:	9fb9                	addw	a5,a5,a4
    80200630:	0ff7f793          	zext.b	a5,a5
    80200634:	37d9                	addiw	a5,a5,-10
    80200636:	0ff7f713          	zext.b	a4,a5
    8020063a:	fe843783          	ld	a5,-24(s0)
    8020063e:	00178693          	addi	a3,a5,1
    80200642:	fed43423          	sd	a3,-24(s0)
    80200646:	00e78023          	sb	a4,0(a5)
    8020064a:	fbc42783          	lw	a5,-68(s0)
    8020064e:	2781                	sext.w	a5,a5
    80200650:	cb91                	beqz	a5,80200664 <mini_itoa+0x108>
    80200652:	fc843703          	ld	a4,-56(s0)
    80200656:	fc446783          	lwu	a5,-60(s0)
    8020065a:	02f757b3          	divu	a5,a4,a5
    8020065e:	fcf43423          	sd	a5,-56(s0)
    80200662:	a809                	j	80200674 <mini_itoa+0x118>
    80200664:	fc446783          	lwu	a5,-60(s0)
    80200668:	fc843703          	ld	a4,-56(s0)
    8020066c:	02f747b3          	div	a5,a4,a5
    80200670:	fcf43423          	sd	a5,-56(s0)
    80200674:	fc843783          	ld	a5,-56(s0)
    80200678:	f7b9                	bnez	a5,802005c6 <mini_itoa+0x6a>
    8020067a:	fe843703          	ld	a4,-24(s0)
    8020067e:	fb043783          	ld	a5,-80(s0)
    80200682:	40f707b3          	sub	a5,a4,a5
    80200686:	fef42023          	sw	a5,-32(s0)
    8020068a:	a005                	j	802006aa <mini_itoa+0x14e>
    8020068c:	fe843783          	ld	a5,-24(s0)
    80200690:	00178713          	addi	a4,a5,1
    80200694:	fee43423          	sd	a4,-24(s0)
    80200698:	03000713          	li	a4,48
    8020069c:	00e78023          	sb	a4,0(a5)
    802006a0:	fe042783          	lw	a5,-32(s0)
    802006a4:	2785                	addiw	a5,a5,1
    802006a6:	fef42023          	sw	a5,-32(s0)
    802006aa:	fe042783          	lw	a5,-32(s0)
    802006ae:	873e                	mv	a4,a5
    802006b0:	fb842783          	lw	a5,-72(s0)
    802006b4:	2701                	sext.w	a4,a4
    802006b6:	2781                	sext.w	a5,a5
    802006b8:	fcf76ae3          	bltu	a4,a5,8020068c <mini_itoa+0x130>
    802006bc:	fe442783          	lw	a5,-28(s0)
    802006c0:	2781                	sext.w	a5,a5
    802006c2:	cb99                	beqz	a5,802006d8 <mini_itoa+0x17c>
    802006c4:	fe843783          	ld	a5,-24(s0)
    802006c8:	00178713          	addi	a4,a5,1
    802006cc:	fee43423          	sd	a4,-24(s0)
    802006d0:	02d00713          	li	a4,45
    802006d4:	00e78023          	sb	a4,0(a5)
    802006d8:	fe843783          	ld	a5,-24(s0)
    802006dc:	00078023          	sb	zero,0(a5)
    802006e0:	fe843703          	ld	a4,-24(s0)
    802006e4:	fb043783          	ld	a5,-80(s0)
    802006e8:	40f707b3          	sub	a5,a4,a5
    802006ec:	fcf42c23          	sw	a5,-40(s0)
    802006f0:	fe042023          	sw	zero,-32(s0)
    802006f4:	a895                	j	80200768 <mini_itoa+0x20c>
    802006f6:	fe046783          	lwu	a5,-32(s0)
    802006fa:	fb043703          	ld	a4,-80(s0)
    802006fe:	97ba                	add	a5,a5,a4
    80200700:	0007c783          	lbu	a5,0(a5)
    80200704:	fcf40ba3          	sb	a5,-41(s0)
    80200708:	fd842783          	lw	a5,-40(s0)
    8020070c:	873e                	mv	a4,a5
    8020070e:	fe042783          	lw	a5,-32(s0)
    80200712:	40f707bb          	subw	a5,a4,a5
    80200716:	2781                	sext.w	a5,a5
    80200718:	37fd                	addiw	a5,a5,-1
    8020071a:	2781                	sext.w	a5,a5
    8020071c:	1782                	slli	a5,a5,0x20
    8020071e:	9381                	srli	a5,a5,0x20
    80200720:	fb043703          	ld	a4,-80(s0)
    80200724:	973e                	add	a4,a4,a5
    80200726:	fe046783          	lwu	a5,-32(s0)
    8020072a:	fb043683          	ld	a3,-80(s0)
    8020072e:	97b6                	add	a5,a5,a3
    80200730:	00074703          	lbu	a4,0(a4)
    80200734:	00e78023          	sb	a4,0(a5)
    80200738:	fd842783          	lw	a5,-40(s0)
    8020073c:	873e                	mv	a4,a5
    8020073e:	fe042783          	lw	a5,-32(s0)
    80200742:	40f707bb          	subw	a5,a4,a5
    80200746:	2781                	sext.w	a5,a5
    80200748:	37fd                	addiw	a5,a5,-1
    8020074a:	2781                	sext.w	a5,a5
    8020074c:	1782                	slli	a5,a5,0x20
    8020074e:	9381                	srli	a5,a5,0x20
    80200750:	fb043703          	ld	a4,-80(s0)
    80200754:	97ba                	add	a5,a5,a4
    80200756:	fd744703          	lbu	a4,-41(s0)
    8020075a:	00e78023          	sb	a4,0(a5)
    8020075e:	fe042783          	lw	a5,-32(s0)
    80200762:	2785                	addiw	a5,a5,1
    80200764:	fef42023          	sw	a5,-32(s0)
    80200768:	fd842783          	lw	a5,-40(s0)
    8020076c:	0017d79b          	srliw	a5,a5,0x1
    80200770:	2781                	sext.w	a5,a5
    80200772:	fe042703          	lw	a4,-32(s0)
    80200776:	2701                	sext.w	a4,a4
    80200778:	f6f76fe3          	bltu	a4,a5,802006f6 <mini_itoa+0x19a>
    8020077c:	fd842783          	lw	a5,-40(s0)
    80200780:	853e                	mv	a0,a5
    80200782:	60a6                	ld	ra,72(sp)
    80200784:	6406                	ld	s0,64(sp)
    80200786:	6161                	addi	sp,sp,80
    80200788:	8082                	ret

000000008020078a <_putc>:
    8020078a:	1101                	addi	sp,sp,-32
    8020078c:	ec06                	sd	ra,24(sp)
    8020078e:	e822                	sd	s0,16(sp)
    80200790:	1000                	addi	s0,sp,32
    80200792:	87aa                	mv	a5,a0
    80200794:	feb43023          	sd	a1,-32(s0)
    80200798:	fef42623          	sw	a5,-20(s0)
    8020079c:	fe043783          	ld	a5,-32(s0)
    802007a0:	6798                	ld	a4,8(a5)
    802007a2:	fe043783          	ld	a5,-32(s0)
    802007a6:	639c                	ld	a5,0(a5)
    802007a8:	40f707b3          	sub	a5,a4,a5
    802007ac:	2781                	sext.w	a5,a5
    802007ae:	2785                	addiw	a5,a5,1
    802007b0:	0007871b          	sext.w	a4,a5
    802007b4:	fe043783          	ld	a5,-32(s0)
    802007b8:	4b9c                	lw	a5,16(a5)
    802007ba:	00f76463          	bltu	a4,a5,802007c2 <_putc+0x38>
    802007be:	4781                	li	a5,0
    802007c0:	a02d                	j	802007ea <_putc+0x60>
    802007c2:	fe043783          	ld	a5,-32(s0)
    802007c6:	679c                	ld	a5,8(a5)
    802007c8:	00178693          	addi	a3,a5,1
    802007cc:	fe043703          	ld	a4,-32(s0)
    802007d0:	e714                	sd	a3,8(a4)
    802007d2:	fec42703          	lw	a4,-20(s0)
    802007d6:	0ff77713          	zext.b	a4,a4
    802007da:	00e78023          	sb	a4,0(a5)
    802007de:	fe043783          	ld	a5,-32(s0)
    802007e2:	679c                	ld	a5,8(a5)
    802007e4:	00078023          	sb	zero,0(a5)
    802007e8:	4785                	li	a5,1
    802007ea:	853e                	mv	a0,a5
    802007ec:	60e2                	ld	ra,24(sp)
    802007ee:	6442                	ld	s0,16(sp)
    802007f0:	6105                	addi	sp,sp,32
    802007f2:	8082                	ret

00000000802007f4 <_puts>:
    802007f4:	7139                	addi	sp,sp,-64
    802007f6:	fc06                	sd	ra,56(sp)
    802007f8:	f822                	sd	s0,48(sp)
    802007fa:	0080                	addi	s0,sp,64
    802007fc:	fca43c23          	sd	a0,-40(s0)
    80200800:	87ae                	mv	a5,a1
    80200802:	fcc43423          	sd	a2,-56(s0)
    80200806:	fcf42a23          	sw	a5,-44(s0)
    8020080a:	fc843783          	ld	a5,-56(s0)
    8020080e:	4b9c                	lw	a5,16(a5)
    80200810:	02079713          	slli	a4,a5,0x20
    80200814:	9301                	srli	a4,a4,0x20
    80200816:	fc843783          	ld	a5,-56(s0)
    8020081a:	6794                	ld	a3,8(a5)
    8020081c:	fc843783          	ld	a5,-56(s0)
    80200820:	639c                	ld	a5,0(a5)
    80200822:	40f687b3          	sub	a5,a3,a5
    80200826:	8f1d                	sub	a4,a4,a5
    80200828:	fd446783          	lwu	a5,-44(s0)
    8020082c:	02e7c463          	blt	a5,a4,80200854 <_puts+0x60>
    80200830:	fc843783          	ld	a5,-56(s0)
    80200834:	4b98                	lw	a4,16(a5)
    80200836:	fc843783          	ld	a5,-56(s0)
    8020083a:	6794                	ld	a3,8(a5)
    8020083c:	fc843783          	ld	a5,-56(s0)
    80200840:	639c                	ld	a5,0(a5)
    80200842:	40f687b3          	sub	a5,a3,a5
    80200846:	2781                	sext.w	a5,a5
    80200848:	40f707bb          	subw	a5,a4,a5
    8020084c:	2781                	sext.w	a5,a5
    8020084e:	37fd                	addiw	a5,a5,-1
    80200850:	fcf42a23          	sw	a5,-44(s0)
    80200854:	fe042623          	sw	zero,-20(s0)
    80200858:	a03d                	j	80200886 <_puts+0x92>
    8020085a:	fec46783          	lwu	a5,-20(s0)
    8020085e:	fd843703          	ld	a4,-40(s0)
    80200862:	973e                	add	a4,a4,a5
    80200864:	fc843783          	ld	a5,-56(s0)
    80200868:	679c                	ld	a5,8(a5)
    8020086a:	00178613          	addi	a2,a5,1
    8020086e:	fc843683          	ld	a3,-56(s0)
    80200872:	e690                	sd	a2,8(a3)
    80200874:	00074703          	lbu	a4,0(a4)
    80200878:	00e78023          	sb	a4,0(a5)
    8020087c:	fec42783          	lw	a5,-20(s0)
    80200880:	2785                	addiw	a5,a5,1
    80200882:	fef42623          	sw	a5,-20(s0)
    80200886:	fec42783          	lw	a5,-20(s0)
    8020088a:	873e                	mv	a4,a5
    8020088c:	fd442783          	lw	a5,-44(s0)
    80200890:	2701                	sext.w	a4,a4
    80200892:	2781                	sext.w	a5,a5
    80200894:	fcf763e3          	bltu	a4,a5,8020085a <_puts+0x66>
    80200898:	fc843783          	ld	a5,-56(s0)
    8020089c:	679c                	ld	a5,8(a5)
    8020089e:	00078023          	sb	zero,0(a5)
    802008a2:	fd442783          	lw	a5,-44(s0)
    802008a6:	853e                	mv	a0,a5
    802008a8:	70e2                	ld	ra,56(sp)
    802008aa:	7442                	ld	s0,48(sp)
    802008ac:	6121                	addi	sp,sp,64
    802008ae:	8082                	ret

00000000802008b0 <mini_vsnprintf>:
    802008b0:	7119                	addi	sp,sp,-128
    802008b2:	fc86                	sd	ra,120(sp)
    802008b4:	f8a2                	sd	s0,112(sp)
    802008b6:	0100                	addi	s0,sp,128
    802008b8:	f8a43c23          	sd	a0,-104(s0)
    802008bc:	87ae                	mv	a5,a1
    802008be:	f8c43423          	sd	a2,-120(s0)
    802008c2:	f8d43023          	sd	a3,-128(s0)
    802008c6:	f8f42a23          	sw	a5,-108(s0)
    802008ca:	f9843783          	ld	a5,-104(s0)
    802008ce:	fcf43023          	sd	a5,-64(s0)
    802008d2:	f9843783          	ld	a5,-104(s0)
    802008d6:	fcf43423          	sd	a5,-56(s0)
    802008da:	f9442783          	lw	a5,-108(s0)
    802008de:	fcf42823          	sw	a5,-48(s0)
    802008e2:	a4f1                	j	80200bae <mini_vsnprintf+0x2fe>
    802008e4:	fc843703          	ld	a4,-56(s0)
    802008e8:	fc043783          	ld	a5,-64(s0)
    802008ec:	40f707b3          	sub	a5,a4,a5
    802008f0:	2781                	sext.w	a5,a5
    802008f2:	2785                	addiw	a5,a5,1
    802008f4:	0007871b          	sext.w	a4,a5
    802008f8:	fd042783          	lw	a5,-48(s0)
    802008fc:	2cf77a63          	bgeu	a4,a5,80200bd0 <mini_vsnprintf+0x320>
    80200900:	fef44783          	lbu	a5,-17(s0)
    80200904:	0ff7f713          	zext.b	a4,a5
    80200908:	02500793          	li	a5,37
    8020090c:	00f70c63          	beq	a4,a5,80200924 <mini_vsnprintf+0x74>
    80200910:	fef44783          	lbu	a5,-17(s0)
    80200914:	2781                	sext.w	a5,a5
    80200916:	fc040713          	addi	a4,s0,-64
    8020091a:	85ba                	mv	a1,a4
    8020091c:	853e                	mv	a0,a5
    8020091e:	e6dff0ef          	jal	8020078a <_putc>
    80200922:	a471                	j	80200bae <mini_vsnprintf+0x2fe>
    80200924:	fe040723          	sb	zero,-18(s0)
    80200928:	fe042423          	sw	zero,-24(s0)
    8020092c:	f8843783          	ld	a5,-120(s0)
    80200930:	00178713          	addi	a4,a5,1
    80200934:	f8e43423          	sd	a4,-120(s0)
    80200938:	0007c783          	lbu	a5,0(a5)
    8020093c:	fef407a3          	sb	a5,-17(s0)
    80200940:	fef44783          	lbu	a5,-17(s0)
    80200944:	0ff7f713          	zext.b	a4,a5
    80200948:	03000793          	li	a5,48
    8020094c:	06f71c63          	bne	a4,a5,802009c4 <mini_vsnprintf+0x114>
    80200950:	a899                	j	802009a6 <mini_vsnprintf+0xf6>
    80200952:	fef44783          	lbu	a5,-17(s0)
    80200956:	0ff7f793          	zext.b	a5,a5
    8020095a:	26078d63          	beqz	a5,80200bd4 <mini_vsnprintf+0x324>
    8020095e:	fef44783          	lbu	a5,-17(s0)
    80200962:	0ff7f713          	zext.b	a4,a5
    80200966:	02f00793          	li	a5,47
    8020096a:	04e7fd63          	bgeu	a5,a4,802009c4 <mini_vsnprintf+0x114>
    8020096e:	fef44783          	lbu	a5,-17(s0)
    80200972:	0ff7f713          	zext.b	a4,a5
    80200976:	03900793          	li	a5,57
    8020097a:	04e7e563          	bltu	a5,a4,802009c4 <mini_vsnprintf+0x114>
    8020097e:	fee44783          	lbu	a5,-18(s0)
    80200982:	873e                	mv	a4,a5
    80200984:	87ba                	mv	a5,a4
    80200986:	0027979b          	slliw	a5,a5,0x2
    8020098a:	9fb9                	addw	a5,a5,a4
    8020098c:	0017979b          	slliw	a5,a5,0x1
    80200990:	0ff7f793          	zext.b	a5,a5
    80200994:	fef44703          	lbu	a4,-17(s0)
    80200998:	9fb9                	addw	a5,a5,a4
    8020099a:	0ff7f793          	zext.b	a5,a5
    8020099e:	fd07879b          	addiw	a5,a5,-48
    802009a2:	fef40723          	sb	a5,-18(s0)
    802009a6:	f8843783          	ld	a5,-120(s0)
    802009aa:	00178713          	addi	a4,a5,1
    802009ae:	f8e43423          	sd	a4,-120(s0)
    802009b2:	0007c783          	lbu	a5,0(a5)
    802009b6:	fef407a3          	sb	a5,-17(s0)
    802009ba:	fef44783          	lbu	a5,-17(s0)
    802009be:	0ff7f793          	zext.b	a5,a5
    802009c2:	fbc1                	bnez	a5,80200952 <mini_vsnprintf+0xa2>
    802009c4:	fef44783          	lbu	a5,-17(s0)
    802009c8:	0ff7f713          	zext.b	a4,a5
    802009cc:	06c00793          	li	a5,108
    802009d0:	00f71f63          	bne	a4,a5,802009ee <mini_vsnprintf+0x13e>
    802009d4:	4785                	li	a5,1
    802009d6:	fef42423          	sw	a5,-24(s0)
    802009da:	f8843783          	ld	a5,-120(s0)
    802009de:	00178713          	addi	a4,a5,1
    802009e2:	f8e43423          	sd	a4,-120(s0)
    802009e6:	0007c783          	lbu	a5,0(a5)
    802009ea:	fef407a3          	sb	a5,-17(s0)
    802009ee:	fef44783          	lbu	a5,-17(s0)
    802009f2:	2781                	sext.w	a5,a5
    802009f4:	1e078263          	beqz	a5,80200bd8 <mini_vsnprintf+0x328>
    802009f8:	1a07c163          	bltz	a5,80200b9a <mini_vsnprintf+0x2ea>
    802009fc:	07800713          	li	a4,120
    80200a00:	18f74d63          	blt	a4,a5,80200b9a <mini_vsnprintf+0x2ea>
    80200a04:	05800713          	li	a4,88
    80200a08:	18e7c963          	blt	a5,a4,80200b9a <mini_vsnprintf+0x2ea>
    80200a0c:	fa87879b          	addiw	a5,a5,-88
    80200a10:	86be                	mv	a3,a5
    80200a12:	0006871b          	sext.w	a4,a3
    80200a16:	02000793          	li	a5,32
    80200a1a:	18e7e063          	bltu	a5,a4,80200b9a <mini_vsnprintf+0x2ea>
    80200a1e:	02069793          	slli	a5,a3,0x20
    80200a22:	9381                	srli	a5,a5,0x20
    80200a24:	00279713          	slli	a4,a5,0x2
    80200a28:	00001797          	auipc	a5,0x1
    80200a2c:	6dc78793          	addi	a5,a5,1756 # 80202104 <rodata_start+0x104>
    80200a30:	97ba                	add	a5,a5,a4
    80200a32:	439c                	lw	a5,0(a5)
    80200a34:	0007871b          	sext.w	a4,a5
    80200a38:	00001797          	auipc	a5,0x1
    80200a3c:	6cc78793          	addi	a5,a5,1740 # 80202104 <rodata_start+0x104>
    80200a40:	97ba                	add	a5,a5,a4
    80200a42:	8782                	jr	a5
    80200a44:	4785                	li	a5,1
    80200a46:	fef42423          	sw	a5,-24(s0)
    80200a4a:	a295                	j	80200bae <mini_vsnprintf+0x2fe>
    80200a4c:	fe842783          	lw	a5,-24(s0)
    80200a50:	2781                	sext.w	a5,a5
    80200a52:	ef81                	bnez	a5,80200a6a <mini_vsnprintf+0x1ba>
    80200a54:	f8043783          	ld	a5,-128(s0)
    80200a58:	00878713          	addi	a4,a5,8
    80200a5c:	f8e43023          	sd	a4,-128(s0)
    80200a60:	439c                	lw	a5,0(a5)
    80200a62:	02079513          	slli	a0,a5,0x20
    80200a66:	9101                	srli	a0,a0,0x20
    80200a68:	a809                	j	80200a7a <mini_vsnprintf+0x1ca>
    80200a6a:	f8043783          	ld	a5,-128(s0)
    80200a6e:	00878713          	addi	a4,a5,8
    80200a72:	f8e43023          	sd	a4,-128(s0)
    80200a76:	639c                	ld	a5,0(a5)
    80200a78:	853e                	mv	a0,a5
    80200a7a:	fef44783          	lbu	a5,-17(s0)
    80200a7e:	0007871b          	sext.w	a4,a5
    80200a82:	07500793          	li	a5,117
    80200a86:	40f707b3          	sub	a5,a4,a5
    80200a8a:	0017b793          	seqz	a5,a5
    80200a8e:	0ff7f793          	zext.b	a5,a5
    80200a92:	0007869b          	sext.w	a3,a5
    80200a96:	fee44783          	lbu	a5,-18(s0)
    80200a9a:	2781                	sext.w	a5,a5
    80200a9c:	fa840713          	addi	a4,s0,-88
    80200aa0:	4601                	li	a2,0
    80200aa2:	45a9                	li	a1,10
    80200aa4:	ab9ff0ef          	jal	8020055c <mini_itoa>
    80200aa8:	87aa                	mv	a5,a0
    80200aaa:	fcf42e23          	sw	a5,-36(s0)
    80200aae:	fc040693          	addi	a3,s0,-64
    80200ab2:	fdc42703          	lw	a4,-36(s0)
    80200ab6:	fa840793          	addi	a5,s0,-88
    80200aba:	8636                	mv	a2,a3
    80200abc:	85ba                	mv	a1,a4
    80200abe:	853e                	mv	a0,a5
    80200ac0:	d35ff0ef          	jal	802007f4 <_puts>
    80200ac4:	fe042423          	sw	zero,-24(s0)
    80200ac8:	a0dd                	j	80200bae <mini_vsnprintf+0x2fe>
    80200aca:	fe842783          	lw	a5,-24(s0)
    80200ace:	2781                	sext.w	a5,a5
    80200ad0:	ef81                	bnez	a5,80200ae8 <mini_vsnprintf+0x238>
    80200ad2:	f8043783          	ld	a5,-128(s0)
    80200ad6:	00878713          	addi	a4,a5,8
    80200ada:	f8e43023          	sd	a4,-128(s0)
    80200ade:	439c                	lw	a5,0(a5)
    80200ae0:	02079513          	slli	a0,a5,0x20
    80200ae4:	9101                	srli	a0,a0,0x20
    80200ae6:	a809                	j	80200af8 <mini_vsnprintf+0x248>
    80200ae8:	f8043783          	ld	a5,-128(s0)
    80200aec:	00878713          	addi	a4,a5,8
    80200af0:	f8e43023          	sd	a4,-128(s0)
    80200af4:	639c                	ld	a5,0(a5)
    80200af6:	853e                	mv	a0,a5
    80200af8:	fef44783          	lbu	a5,-17(s0)
    80200afc:	0007871b          	sext.w	a4,a5
    80200b00:	05800793          	li	a5,88
    80200b04:	40f707b3          	sub	a5,a4,a5
    80200b08:	0017b793          	seqz	a5,a5
    80200b0c:	0ff7f793          	zext.b	a5,a5
    80200b10:	0007861b          	sext.w	a2,a5
    80200b14:	fee44783          	lbu	a5,-18(s0)
    80200b18:	2781                	sext.w	a5,a5
    80200b1a:	fa840713          	addi	a4,s0,-88
    80200b1e:	4685                	li	a3,1
    80200b20:	45c1                	li	a1,16
    80200b22:	a3bff0ef          	jal	8020055c <mini_itoa>
    80200b26:	87aa                	mv	a5,a0
    80200b28:	fcf42e23          	sw	a5,-36(s0)
    80200b2c:	fc040693          	addi	a3,s0,-64
    80200b30:	fdc42703          	lw	a4,-36(s0)
    80200b34:	fa840793          	addi	a5,s0,-88
    80200b38:	8636                	mv	a2,a3
    80200b3a:	85ba                	mv	a1,a4
    80200b3c:	853e                	mv	a0,a5
    80200b3e:	cb7ff0ef          	jal	802007f4 <_puts>
    80200b42:	fe042423          	sw	zero,-24(s0)
    80200b46:	a0a5                	j	80200bae <mini_vsnprintf+0x2fe>
    80200b48:	f8043783          	ld	a5,-128(s0)
    80200b4c:	00878713          	addi	a4,a5,8
    80200b50:	f8e43023          	sd	a4,-128(s0)
    80200b54:	439c                	lw	a5,0(a5)
    80200b56:	0ff7f793          	zext.b	a5,a5
    80200b5a:	2781                	sext.w	a5,a5
    80200b5c:	fc040713          	addi	a4,s0,-64
    80200b60:	85ba                	mv	a1,a4
    80200b62:	853e                	mv	a0,a5
    80200b64:	c27ff0ef          	jal	8020078a <_putc>
    80200b68:	a099                	j	80200bae <mini_vsnprintf+0x2fe>
    80200b6a:	f8043783          	ld	a5,-128(s0)
    80200b6e:	00878713          	addi	a4,a5,8
    80200b72:	f8e43023          	sd	a4,-128(s0)
    80200b76:	639c                	ld	a5,0(a5)
    80200b78:	fef43023          	sd	a5,-32(s0)
    80200b7c:	fe043503          	ld	a0,-32(s0)
    80200b80:	9a3ff0ef          	jal	80200522 <mini_strlen>
    80200b84:	87aa                	mv	a5,a0
    80200b86:	873e                	mv	a4,a5
    80200b88:	fc040793          	addi	a5,s0,-64
    80200b8c:	863e                	mv	a2,a5
    80200b8e:	85ba                	mv	a1,a4
    80200b90:	fe043503          	ld	a0,-32(s0)
    80200b94:	c61ff0ef          	jal	802007f4 <_puts>
    80200b98:	a819                	j	80200bae <mini_vsnprintf+0x2fe>
    80200b9a:	fef44783          	lbu	a5,-17(s0)
    80200b9e:	2781                	sext.w	a5,a5
    80200ba0:	fc040713          	addi	a4,s0,-64
    80200ba4:	85ba                	mv	a1,a4
    80200ba6:	853e                	mv	a0,a5
    80200ba8:	be3ff0ef          	jal	8020078a <_putc>
    80200bac:	0001                	nop
    80200bae:	f8843783          	ld	a5,-120(s0)
    80200bb2:	00178713          	addi	a4,a5,1
    80200bb6:	f8e43423          	sd	a4,-120(s0)
    80200bba:	0007c783          	lbu	a5,0(a5)
    80200bbe:	fef407a3          	sb	a5,-17(s0)
    80200bc2:	fef44783          	lbu	a5,-17(s0)
    80200bc6:	0ff7f793          	zext.b	a5,a5
    80200bca:	d0079de3          	bnez	a5,802008e4 <mini_vsnprintf+0x34>
    80200bce:	a031                	j	80200bda <mini_vsnprintf+0x32a>
    80200bd0:	0001                	nop
    80200bd2:	a021                	j	80200bda <mini_vsnprintf+0x32a>
    80200bd4:	0001                	nop
    80200bd6:	a011                	j	80200bda <mini_vsnprintf+0x32a>
    80200bd8:	0001                	nop
    80200bda:	fc843703          	ld	a4,-56(s0)
    80200bde:	fc043783          	ld	a5,-64(s0)
    80200be2:	40f707b3          	sub	a5,a4,a5
    80200be6:	2781                	sext.w	a5,a5
    80200be8:	853e                	mv	a0,a5
    80200bea:	70e6                	ld	ra,120(sp)
    80200bec:	7446                	ld	s0,112(sp)
    80200bee:	6109                	addi	sp,sp,128
    80200bf0:	8082                	ret

0000000080200bf2 <_vprintk>:
    80200bf2:	7129                	addi	sp,sp,-320
    80200bf4:	fe06                	sd	ra,312(sp)
    80200bf6:	fa22                	sd	s0,304(sp)
    80200bf8:	0280                	addi	s0,sp,320
    80200bfa:	eca43c23          	sd	a0,-296(s0)
    80200bfe:	ecb43823          	sd	a1,-304(s0)
    80200c02:	ecc43423          	sd	a2,-312(s0)
    80200c06:	ed043783          	ld	a5,-304(s0)
    80200c0a:	fef43023          	sd	a5,-32(s0)
    80200c0e:	fe043703          	ld	a4,-32(s0)
    80200c12:	ee040793          	addi	a5,s0,-288
    80200c16:	86ba                	mv	a3,a4
    80200c18:	ed843603          	ld	a2,-296(s0)
    80200c1c:	10000593          	li	a1,256
    80200c20:	853e                	mv	a0,a5
    80200c22:	c8fff0ef          	jal	802008b0 <mini_vsnprintf>
    80200c26:	87aa                	mv	a5,a0
    80200c28:	fef42623          	sw	a5,-20(s0)
    80200c2c:	fec42783          	lw	a5,-20(s0)
    80200c30:	17c1                	addi	a5,a5,-16
    80200c32:	97a2                	add	a5,a5,s0
    80200c34:	ee078823          	sb	zero,-272(a5)
    80200c38:	ee040713          	addi	a4,s0,-288
    80200c3c:	ec843783          	ld	a5,-312(s0)
    80200c40:	853a                	mv	a0,a4
    80200c42:	9782                	jalr	a5
    80200c44:	fec42783          	lw	a5,-20(s0)
    80200c48:	853e                	mv	a0,a5
    80200c4a:	70f2                	ld	ra,312(sp)
    80200c4c:	7452                	ld	s0,304(sp)
    80200c4e:	6131                	addi	sp,sp,320
    80200c50:	8082                	ret

0000000080200c52 <_vprints>:
    80200c52:	7129                	addi	sp,sp,-320
    80200c54:	fe06                	sd	ra,312(sp)
    80200c56:	fa22                	sd	s0,304(sp)
    80200c58:	0280                	addi	s0,sp,320
    80200c5a:	eca43c23          	sd	a0,-296(s0)
    80200c5e:	ecb43823          	sd	a1,-304(s0)
    80200c62:	ecc43423          	sd	a2,-312(s0)
    80200c66:	ed043783          	ld	a5,-304(s0)
    80200c6a:	fef43023          	sd	a5,-32(s0)
    80200c6e:	fe043703          	ld	a4,-32(s0)
    80200c72:	ee040793          	addi	a5,s0,-288
    80200c76:	86ba                	mv	a3,a4
    80200c78:	ed843603          	ld	a2,-296(s0)
    80200c7c:	10000593          	li	a1,256
    80200c80:	853e                	mv	a0,a5
    80200c82:	c2fff0ef          	jal	802008b0 <mini_vsnprintf>
    80200c86:	87aa                	mv	a5,a0
    80200c88:	fef42623          	sw	a5,-20(s0)
    80200c8c:	fec42783          	lw	a5,-20(s0)
    80200c90:	17c1                	addi	a5,a5,-16
    80200c92:	97a2                	add	a5,a5,s0
    80200c94:	ee078823          	sb	zero,-272(a5)
    80200c98:	ee040713          	addi	a4,s0,-288
    80200c9c:	ec843783          	ld	a5,-312(s0)
    80200ca0:	853a                	mv	a0,a4
    80200ca2:	9782                	jalr	a5
    80200ca4:	fec42783          	lw	a5,-20(s0)
    80200ca8:	853e                	mv	a0,a5
    80200caa:	70f2                	ld	ra,312(sp)
    80200cac:	7452                	ld	s0,304(sp)
    80200cae:	6131                	addi	sp,sp,320
    80200cb0:	8082                	ret

0000000080200cb2 <vprintk>:
    80200cb2:	1101                	addi	sp,sp,-32
    80200cb4:	ec06                	sd	ra,24(sp)
    80200cb6:	e822                	sd	s0,16(sp)
    80200cb8:	1000                	addi	s0,sp,32
    80200cba:	fea43423          	sd	a0,-24(s0)
    80200cbe:	feb43023          	sd	a1,-32(s0)
    80200cc2:	fffff617          	auipc	a2,0xfffff
    80200cc6:	7c860613          	addi	a2,a2,1992 # 8020048a <print>
    80200cca:	fe043583          	ld	a1,-32(s0)
    80200cce:	fe843503          	ld	a0,-24(s0)
    80200cd2:	f21ff0ef          	jal	80200bf2 <_vprintk>
    80200cd6:	87aa                	mv	a5,a0
    80200cd8:	853e                	mv	a0,a5
    80200cda:	60e2                	ld	ra,24(sp)
    80200cdc:	6442                	ld	s0,16(sp)
    80200cde:	6105                	addi	sp,sp,32
    80200ce0:	8082                	ret

0000000080200ce2 <printk>:
    80200ce2:	7159                	addi	sp,sp,-112
    80200ce4:	f406                	sd	ra,40(sp)
    80200ce6:	f022                	sd	s0,32(sp)
    80200ce8:	1800                	addi	s0,sp,48
    80200cea:	fca43c23          	sd	a0,-40(s0)
    80200cee:	e40c                	sd	a1,8(s0)
    80200cf0:	e810                	sd	a2,16(s0)
    80200cf2:	ec14                	sd	a3,24(s0)
    80200cf4:	f018                	sd	a4,32(s0)
    80200cf6:	f41c                	sd	a5,40(s0)
    80200cf8:	03043823          	sd	a6,48(s0)
    80200cfc:	03143c23          	sd	a7,56(s0)
    80200d00:	fe042623          	sw	zero,-20(s0)
    80200d04:	04040793          	addi	a5,s0,64
    80200d08:	fcf43823          	sd	a5,-48(s0)
    80200d0c:	fd043783          	ld	a5,-48(s0)
    80200d10:	fc878793          	addi	a5,a5,-56
    80200d14:	fef43023          	sd	a5,-32(s0)
    80200d18:	fe043783          	ld	a5,-32(s0)
    80200d1c:	85be                	mv	a1,a5
    80200d1e:	fd843503          	ld	a0,-40(s0)
    80200d22:	f91ff0ef          	jal	80200cb2 <vprintk>
    80200d26:	87aa                	mv	a5,a0
    80200d28:	fef42623          	sw	a5,-20(s0)
    80200d2c:	fec42783          	lw	a5,-20(s0)
    80200d30:	853e                	mv	a0,a5
    80200d32:	70a2                	ld	ra,40(sp)
    80200d34:	7402                	ld	s0,32(sp)
    80200d36:	6165                	addi	sp,sp,112
    80200d38:	8082                	ret

0000000080200d3a <_vprintk_port>:
    80200d3a:	7129                	addi	sp,sp,-320
    80200d3c:	fe06                	sd	ra,312(sp)
    80200d3e:	fa22                	sd	s0,304(sp)
    80200d40:	0280                	addi	s0,sp,320
    80200d42:	eca43c23          	sd	a0,-296(s0)
    80200d46:	ecb43823          	sd	a1,-304(s0)
    80200d4a:	ecc43423          	sd	a2,-312(s0)
    80200d4e:	ed043783          	ld	a5,-304(s0)
    80200d52:	fef43023          	sd	a5,-32(s0)
    80200d56:	fe043703          	ld	a4,-32(s0)
    80200d5a:	ee040793          	addi	a5,s0,-288
    80200d5e:	86ba                	mv	a3,a4
    80200d60:	ed843603          	ld	a2,-296(s0)
    80200d64:	10000593          	li	a1,256
    80200d68:	853e                	mv	a0,a5
    80200d6a:	b47ff0ef          	jal	802008b0 <mini_vsnprintf>
    80200d6e:	87aa                	mv	a5,a0
    80200d70:	fef42623          	sw	a5,-20(s0)
    80200d74:	fec42783          	lw	a5,-20(s0)
    80200d78:	17c1                	addi	a5,a5,-16
    80200d7a:	97a2                	add	a5,a5,s0
    80200d7c:	ee078823          	sb	zero,-272(a5)
    80200d80:	fec42783          	lw	a5,-20(s0)
    80200d84:	853e                	mv	a0,a5
    80200d86:	70f2                	ld	ra,312(sp)
    80200d88:	7452                	ld	s0,304(sp)
    80200d8a:	6131                	addi	sp,sp,320
    80200d8c:	8082                	ret

0000000080200d8e <vprintk_port>:
    80200d8e:	1101                	addi	sp,sp,-32
    80200d90:	ec06                	sd	ra,24(sp)
    80200d92:	e822                	sd	s0,16(sp)
    80200d94:	1000                	addi	s0,sp,32
    80200d96:	fea43423          	sd	a0,-24(s0)
    80200d9a:	feb43023          	sd	a1,-32(s0)
    80200d9e:	fffff617          	auipc	a2,0xfffff
    80200da2:	6ec60613          	addi	a2,a2,1772 # 8020048a <print>
    80200da6:	fe043583          	ld	a1,-32(s0)
    80200daa:	fe843503          	ld	a0,-24(s0)
    80200dae:	f8dff0ef          	jal	80200d3a <_vprintk_port>
    80200db2:	87aa                	mv	a5,a0
    80200db4:	853e                	mv	a0,a5
    80200db6:	60e2                	ld	ra,24(sp)
    80200db8:	6442                	ld	s0,16(sp)
    80200dba:	6105                	addi	sp,sp,32
    80200dbc:	8082                	ret

0000000080200dbe <printk_port>:
    80200dbe:	7159                	addi	sp,sp,-112
    80200dc0:	f406                	sd	ra,40(sp)
    80200dc2:	f022                	sd	s0,32(sp)
    80200dc4:	1800                	addi	s0,sp,48
    80200dc6:	fca43c23          	sd	a0,-40(s0)
    80200dca:	e40c                	sd	a1,8(s0)
    80200dcc:	e810                	sd	a2,16(s0)
    80200dce:	ec14                	sd	a3,24(s0)
    80200dd0:	f018                	sd	a4,32(s0)
    80200dd2:	f41c                	sd	a5,40(s0)
    80200dd4:	03043823          	sd	a6,48(s0)
    80200dd8:	03143c23          	sd	a7,56(s0)
    80200ddc:	fe042623          	sw	zero,-20(s0)
    80200de0:	04040793          	addi	a5,s0,64
    80200de4:	fcf43823          	sd	a5,-48(s0)
    80200de8:	fd043783          	ld	a5,-48(s0)
    80200dec:	fc878793          	addi	a5,a5,-56
    80200df0:	fef43023          	sd	a5,-32(s0)
    80200df4:	fe043783          	ld	a5,-32(s0)
    80200df8:	85be                	mv	a1,a5
    80200dfa:	fd843503          	ld	a0,-40(s0)
    80200dfe:	f91ff0ef          	jal	80200d8e <vprintk_port>
    80200e02:	87aa                	mv	a5,a0
    80200e04:	fef42623          	sw	a5,-20(s0)
    80200e08:	fec42783          	lw	a5,-20(s0)
    80200e0c:	853e                	mv	a0,a5
    80200e0e:	70a2                	ld	ra,40(sp)
    80200e10:	7402                	ld	s0,32(sp)
    80200e12:	6165                	addi	sp,sp,112
    80200e14:	8082                	ret

0000000080200e16 <w_stvec>:
    80200e16:	1101                	addi	sp,sp,-32
    80200e18:	ec06                	sd	ra,24(sp)
    80200e1a:	e822                	sd	s0,16(sp)
    80200e1c:	1000                	addi	s0,sp,32
    80200e1e:	fea43423          	sd	a0,-24(s0)
    80200e22:	fe843783          	ld	a5,-24(s0)
    80200e26:	10579073          	csrw	stvec,a5
    80200e2a:	0001                	nop
    80200e2c:	60e2                	ld	ra,24(sp)
    80200e2e:	6442                	ld	s0,16(sp)
    80200e30:	6105                	addi	sp,sp,32
    80200e32:	8082                	ret

0000000080200e34 <r_scause>:
    80200e34:	1101                	addi	sp,sp,-32
    80200e36:	ec06                	sd	ra,24(sp)
    80200e38:	e822                	sd	s0,16(sp)
    80200e3a:	1000                	addi	s0,sp,32
    80200e3c:	142027f3          	csrr	a5,scause
    80200e40:	fef43423          	sd	a5,-24(s0)
    80200e44:	fe843783          	ld	a5,-24(s0)
    80200e48:	853e                	mv	a0,a5
    80200e4a:	60e2                	ld	ra,24(sp)
    80200e4c:	6442                	ld	s0,16(sp)
    80200e4e:	6105                	addi	sp,sp,32
    80200e50:	8082                	ret

0000000080200e52 <r_stval>:
    80200e52:	1101                	addi	sp,sp,-32
    80200e54:	ec06                	sd	ra,24(sp)
    80200e56:	e822                	sd	s0,16(sp)
    80200e58:	1000                	addi	s0,sp,32
    80200e5a:	143027f3          	csrr	a5,stval
    80200e5e:	fef43423          	sd	a5,-24(s0)
    80200e62:	fe843783          	ld	a5,-24(s0)
    80200e66:	853e                	mv	a0,a5
    80200e68:	60e2                	ld	ra,24(sp)
    80200e6a:	6442                	ld	s0,16(sp)
    80200e6c:	6105                	addi	sp,sp,32
    80200e6e:	8082                	ret

0000000080200e70 <unknown_trap>:
    80200e70:	7179                	addi	sp,sp,-48
    80200e72:	f406                	sd	ra,40(sp)
    80200e74:	f022                	sd	s0,32(sp)
    80200e76:	ec26                	sd	s1,24(sp)
    80200e78:	1800                	addi	s0,sp,48
    80200e7a:	fca43c23          	sd	a0,-40(s0)
    80200e7e:	fb7ff0ef          	jal	80200e34 <r_scause>
    80200e82:	84aa                	mv	s1,a0
    80200e84:	fcfff0ef          	jal	80200e52 <r_stval>
    80200e88:	87aa                	mv	a5,a0
    80200e8a:	86be                	mv	a3,a5
    80200e8c:	8626                	mv	a2,s1
    80200e8e:	fd843583          	ld	a1,-40(s0)
    80200e92:	00001517          	auipc	a0,0x1
    80200e96:	2f650513          	addi	a0,a0,758 # 80202188 <rodata_start+0x188>
    80200e9a:	e49ff0ef          	jal	80200ce2 <printk>
    80200e9e:	4505                	li	a0,1
    80200ea0:	d74ff0ef          	jal	80200414 <sbi_shut_down>
    80200ea4:	0001                	nop
    80200ea6:	70a2                	ld	ra,40(sp)
    80200ea8:	7402                	ld	s0,32(sp)
    80200eaa:	64e2                	ld	s1,24(sp)
    80200eac:	6145                	addi	sp,sp,48
    80200eae:	8082                	ret

0000000080200eb0 <trap_init>:
    80200eb0:	1141                	addi	sp,sp,-16
    80200eb2:	e406                	sd	ra,8(sp)
    80200eb4:	e022                	sd	s0,0(sp)
    80200eb6:	0800                	addi	s0,sp,16
    80200eb8:	00000797          	auipc	a5,0x0
    80200ebc:	18c78793          	addi	a5,a5,396 # 80201044 <__alltraps>
    80200ec0:	85be                	mv	a1,a5
    80200ec2:	00001517          	auipc	a0,0x1
    80200ec6:	2f650513          	addi	a0,a0,758 # 802021b8 <rodata_start+0x1b8>
    80200eca:	e19ff0ef          	jal	80200ce2 <printk>
    80200ece:	00000797          	auipc	a5,0x0
    80200ed2:	17678793          	addi	a5,a5,374 # 80201044 <__alltraps>
    80200ed6:	853e                	mv	a0,a5
    80200ed8:	f3fff0ef          	jal	80200e16 <w_stvec>
    80200edc:	0001                	nop
    80200ede:	60a2                	ld	ra,8(sp)
    80200ee0:	6402                	ld	s0,0(sp)
    80200ee2:	0141                	addi	sp,sp,16
    80200ee4:	8082                	ret

0000000080200ee6 <trap_handler>:
    80200ee6:	7139                	addi	sp,sp,-64
    80200ee8:	fc06                	sd	ra,56(sp)
    80200eea:	f822                	sd	s0,48(sp)
    80200eec:	0080                	addi	s0,sp,64
    80200eee:	fca43423          	sd	a0,-56(s0)
    80200ef2:	00001517          	auipc	a0,0x1
    80200ef6:	2f650513          	addi	a0,a0,758 # 802021e8 <rodata_start+0x1e8>
    80200efa:	de9ff0ef          	jal	80200ce2 <printk>
    80200efe:	f37ff0ef          	jal	80200e34 <r_scause>
    80200f02:	fea43423          	sd	a0,-24(s0)
    80200f06:	f4dff0ef          	jal	80200e52 <r_stval>
    80200f0a:	fea43023          	sd	a0,-32(s0)
    80200f0e:	fe843583          	ld	a1,-24(s0)
    80200f12:	00001517          	auipc	a0,0x1
    80200f16:	2fe50513          	addi	a0,a0,766 # 80202210 <rodata_start+0x210>
    80200f1a:	dc9ff0ef          	jal	80200ce2 <printk>
    80200f1e:	fe043583          	ld	a1,-32(s0)
    80200f22:	00001517          	auipc	a0,0x1
    80200f26:	31650513          	addi	a0,a0,790 # 80202238 <rodata_start+0x238>
    80200f2a:	db9ff0ef          	jal	80200ce2 <printk>
    80200f2e:	fe843703          	ld	a4,-24(s0)
    80200f32:	6785                	lui	a5,0x1
    80200f34:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80200f36:	8ff9                	and	a5,a5,a4
    80200f38:	fcf43c23          	sd	a5,-40(s0)
    80200f3c:	fe843783          	ld	a5,-24(s0)
    80200f40:	0407d063          	bgez	a5,80200f80 <trap_handler+0x9a>
    80200f44:	fe843703          	ld	a4,-24(s0)
    80200f48:	57fd                	li	a5,-1
    80200f4a:	8385                	srli	a5,a5,0x1
    80200f4c:	8ff9                	and	a5,a5,a4
    80200f4e:	fef43423          	sd	a5,-24(s0)
    80200f52:	fe843703          	ld	a4,-24(s0)
    80200f56:	4795                	li	a5,5
    80200f58:	00f71d63          	bne	a4,a5,80200f72 <trap_handler+0x8c>
    80200f5c:	00001517          	auipc	a0,0x1
    80200f60:	30450513          	addi	a0,a0,772 # 80202260 <rodata_start+0x260>
    80200f64:	d7fff0ef          	jal	80200ce2 <printk>
    80200f68:	373000ef          	jal	80201ada <set_next_10ms_timer>
    80200f6c:	28b000ef          	jal	802019f6 <yield>
    80200f70:	a0d1                	j	80201034 <trap_handler+0x14e>
    80200f72:	00001517          	auipc	a0,0x1
    80200f76:	31650513          	addi	a0,a0,790 # 80202288 <rodata_start+0x288>
    80200f7a:	ef7ff0ef          	jal	80200e70 <unknown_trap>
    80200f7e:	a85d                	j	80201034 <trap_handler+0x14e>
    80200f80:	fd843703          	ld	a4,-40(s0)
    80200f84:	47a1                	li	a5,8
    80200f86:	02f70c63          	beq	a4,a5,80200fbe <trap_handler+0xd8>
    80200f8a:	fd843703          	ld	a4,-40(s0)
    80200f8e:	47a1                	li	a5,8
    80200f90:	08e7eb63          	bltu	a5,a4,80201026 <trap_handler+0x140>
    80200f94:	fd843703          	ld	a4,-40(s0)
    80200f98:	479d                	li	a5,7
    80200f9a:	06f70963          	beq	a4,a5,8020100c <trap_handler+0x126>
    80200f9e:	fd843703          	ld	a4,-40(s0)
    80200fa2:	479d                	li	a5,7
    80200fa4:	08e7e163          	bltu	a5,a4,80201026 <trap_handler+0x140>
    80200fa8:	fd843703          	ld	a4,-40(s0)
    80200fac:	4789                	li	a5,2
    80200fae:	04f70863          	beq	a4,a5,80200ffe <trap_handler+0x118>
    80200fb2:	fd843703          	ld	a4,-40(s0)
    80200fb6:	4795                	li	a5,5
    80200fb8:	06f70163          	beq	a4,a5,8020101a <trap_handler+0x134>
    80200fbc:	a0ad                	j	80201026 <trap_handler+0x140>
    80200fbe:	fc843783          	ld	a5,-56(s0)
    80200fc2:	1087b783          	ld	a5,264(a5)
    80200fc6:	00478713          	addi	a4,a5,4
    80200fca:	fc843783          	ld	a5,-56(s0)
    80200fce:	10e7b423          	sd	a4,264(a5)
    80200fd2:	fc843783          	ld	a5,-56(s0)
    80200fd6:	67d8                	ld	a4,136(a5)
    80200fd8:	fc843783          	ld	a5,-56(s0)
    80200fdc:	6bac                	ld	a1,80(a5)
    80200fde:	fc843783          	ld	a5,-56(s0)
    80200fe2:	6fb0                	ld	a2,88(a5)
    80200fe4:	fc843783          	ld	a5,-56(s0)
    80200fe8:	73bc                	ld	a5,96(a5)
    80200fea:	86be                	mv	a3,a5
    80200fec:	853a                	mv	a0,a4
    80200fee:	6a4000ef          	jal	80201692 <syscall>
    80200ff2:	87aa                	mv	a5,a0
    80200ff4:	873e                	mv	a4,a5
    80200ff6:	fc843783          	ld	a5,-56(s0)
    80200ffa:	ebb8                	sd	a4,80(a5)
    80200ffc:	a825                	j	80201034 <trap_handler+0x14e>
    80200ffe:	00001517          	auipc	a0,0x1
    80201002:	29a50513          	addi	a0,a0,666 # 80202298 <rodata_start+0x298>
    80201006:	ce2ff0ef          	jal	802004e8 <panic>
    8020100a:	a02d                	j	80201034 <trap_handler+0x14e>
    8020100c:	00001517          	auipc	a0,0x1
    80201010:	2b450513          	addi	a0,a0,692 # 802022c0 <rodata_start+0x2c0>
    80201014:	cd4ff0ef          	jal	802004e8 <panic>
    80201018:	a831                	j	80201034 <trap_handler+0x14e>
    8020101a:	00001517          	auipc	a0,0x1
    8020101e:	2d650513          	addi	a0,a0,726 # 802022f0 <rodata_start+0x2f0>
    80201022:	cc6ff0ef          	jal	802004e8 <panic>
    80201026:	00001517          	auipc	a0,0x1
    8020102a:	2f250513          	addi	a0,a0,754 # 80202318 <rodata_start+0x318>
    8020102e:	e43ff0ef          	jal	80200e70 <unknown_trap>
    80201032:	0001                	nop
    80201034:	fc843783          	ld	a5,-56(s0)
    80201038:	853e                	mv	a0,a5
    8020103a:	70e2                	ld	ra,56(sp)
    8020103c:	7442                	ld	s0,48(sp)
    8020103e:	6121                	addi	sp,sp,64
    80201040:	8082                	ret
	...

0000000080201044 <__alltraps>:
    80201044:	14011173          	csrrw	sp,sscratch,sp
    80201048:	716d                	addi	sp,sp,-272
    8020104a:	e406                	sd	ra,8(sp)
    8020104c:	ec0e                	sd	gp,24(sp)
    8020104e:	f416                	sd	t0,40(sp)
    80201050:	f81a                	sd	t1,48(sp)
    80201052:	fc1e                	sd	t2,56(sp)
    80201054:	e0a2                	sd	s0,64(sp)
    80201056:	e4a6                	sd	s1,72(sp)
    80201058:	e8aa                	sd	a0,80(sp)
    8020105a:	ecae                	sd	a1,88(sp)
    8020105c:	f0b2                	sd	a2,96(sp)
    8020105e:	f4b6                	sd	a3,104(sp)
    80201060:	f8ba                	sd	a4,112(sp)
    80201062:	fcbe                	sd	a5,120(sp)
    80201064:	e142                	sd	a6,128(sp)
    80201066:	e546                	sd	a7,136(sp)
    80201068:	e94a                	sd	s2,144(sp)
    8020106a:	ed4e                	sd	s3,152(sp)
    8020106c:	f152                	sd	s4,160(sp)
    8020106e:	f556                	sd	s5,168(sp)
    80201070:	f95a                	sd	s6,176(sp)
    80201072:	fd5e                	sd	s7,184(sp)
    80201074:	e1e2                	sd	s8,192(sp)
    80201076:	e5e6                	sd	s9,200(sp)
    80201078:	e9ea                	sd	s10,208(sp)
    8020107a:	edee                	sd	s11,216(sp)
    8020107c:	f1f2                	sd	t3,224(sp)
    8020107e:	f5f6                	sd	t4,232(sp)
    80201080:	f9fa                	sd	t5,240(sp)
    80201082:	fdfe                	sd	t6,248(sp)
    80201084:	100022f3          	csrr	t0,sstatus
    80201088:	14102373          	csrr	t1,sepc
    8020108c:	e216                	sd	t0,256(sp)
    8020108e:	e61a                	sd	t1,264(sp)
    80201090:	140023f3          	csrr	t2,sscratch
    80201094:	e81e                	sd	t2,16(sp)
    80201096:	850a                	mv	a0,sp
    80201098:	e4fff0ef          	jal	80200ee6 <trap_handler>

000000008020109c <__restore>:
    8020109c:	6292                	ld	t0,256(sp)
    8020109e:	6332                	ld	t1,264(sp)
    802010a0:	63c2                	ld	t2,16(sp)
    802010a2:	10029073          	csrw	sstatus,t0
    802010a6:	14131073          	csrw	sepc,t1
    802010aa:	14039073          	csrw	sscratch,t2
    802010ae:	60a2                	ld	ra,8(sp)
    802010b0:	61e2                	ld	gp,24(sp)
    802010b2:	72a2                	ld	t0,40(sp)
    802010b4:	7342                	ld	t1,48(sp)
    802010b6:	73e2                	ld	t2,56(sp)
    802010b8:	6406                	ld	s0,64(sp)
    802010ba:	64a6                	ld	s1,72(sp)
    802010bc:	6546                	ld	a0,80(sp)
    802010be:	65e6                	ld	a1,88(sp)
    802010c0:	7606                	ld	a2,96(sp)
    802010c2:	76a6                	ld	a3,104(sp)
    802010c4:	7746                	ld	a4,112(sp)
    802010c6:	77e6                	ld	a5,120(sp)
    802010c8:	680a                	ld	a6,128(sp)
    802010ca:	68aa                	ld	a7,136(sp)
    802010cc:	694a                	ld	s2,144(sp)
    802010ce:	69ea                	ld	s3,152(sp)
    802010d0:	7a0a                	ld	s4,160(sp)
    802010d2:	7aaa                	ld	s5,168(sp)
    802010d4:	7b4a                	ld	s6,176(sp)
    802010d6:	7bea                	ld	s7,184(sp)
    802010d8:	6c0e                	ld	s8,192(sp)
    802010da:	6cae                	ld	s9,200(sp)
    802010dc:	6d4e                	ld	s10,208(sp)
    802010de:	6dee                	ld	s11,216(sp)
    802010e0:	7e0e                	ld	t3,224(sp)
    802010e2:	7eae                	ld	t4,232(sp)
    802010e4:	7f4e                	ld	t5,240(sp)
    802010e6:	7fee                	ld	t6,248(sp)
    802010e8:	6151                	addi	sp,sp,272
    802010ea:	14011173          	csrrw	sp,sscratch,sp
    802010ee:	10200073          	sret

00000000802010f2 <strlen>:
    802010f2:	7179                	addi	sp,sp,-48
    802010f4:	f406                	sd	ra,40(sp)
    802010f6:	f022                	sd	s0,32(sp)
    802010f8:	1800                	addi	s0,sp,48
    802010fa:	fca43c23          	sd	a0,-40(s0)
    802010fe:	fe042623          	sw	zero,-20(s0)
    80201102:	a031                	j	8020110e <strlen+0x1c>
    80201104:	fec42783          	lw	a5,-20(s0)
    80201108:	2785                	addiw	a5,a5,1
    8020110a:	fef42623          	sw	a5,-20(s0)
    8020110e:	fec46783          	lwu	a5,-20(s0)
    80201112:	fd843703          	ld	a4,-40(s0)
    80201116:	97ba                	add	a5,a5,a4
    80201118:	00078783          	lb	a5,0(a5)
    8020111c:	f7e5                	bnez	a5,80201104 <strlen+0x12>
    8020111e:	fec42783          	lw	a5,-20(s0)
    80201122:	853e                	mv	a0,a5
    80201124:	70a2                	ld	ra,40(sp)
    80201126:	7402                	ld	s0,32(sp)
    80201128:	6145                	addi	sp,sp,48
    8020112a:	8082                	ret

000000008020112c <memcpy>:
    8020112c:	7139                	addi	sp,sp,-64
    8020112e:	fc06                	sd	ra,56(sp)
    80201130:	f822                	sd	s0,48(sp)
    80201132:	0080                	addi	s0,sp,64
    80201134:	fca43c23          	sd	a0,-40(s0)
    80201138:	fcb43823          	sd	a1,-48(s0)
    8020113c:	fcc43423          	sd	a2,-56(s0)
    80201140:	fd843783          	ld	a5,-40(s0)
    80201144:	fef43423          	sd	a5,-24(s0)
    80201148:	fd043783          	ld	a5,-48(s0)
    8020114c:	fef43023          	sd	a5,-32(s0)
    80201150:	a00d                	j	80201172 <memcpy+0x46>
    80201152:	fe043703          	ld	a4,-32(s0)
    80201156:	00170793          	addi	a5,a4,1
    8020115a:	fef43023          	sd	a5,-32(s0)
    8020115e:	fe843783          	ld	a5,-24(s0)
    80201162:	00178693          	addi	a3,a5,1
    80201166:	fed43423          	sd	a3,-24(s0)
    8020116a:	00074703          	lbu	a4,0(a4)
    8020116e:	00e78023          	sb	a4,0(a5)
    80201172:	fc843783          	ld	a5,-56(s0)
    80201176:	fff78713          	addi	a4,a5,-1
    8020117a:	fce43423          	sd	a4,-56(s0)
    8020117e:	fbf1                	bnez	a5,80201152 <memcpy+0x26>
    80201180:	fd843783          	ld	a5,-40(s0)
    80201184:	853e                	mv	a0,a5
    80201186:	70e2                	ld	ra,56(sp)
    80201188:	7442                	ld	s0,48(sp)
    8020118a:	6121                	addi	sp,sp,64
    8020118c:	8082                	ret

000000008020118e <memcmp>:
    8020118e:	715d                	addi	sp,sp,-80
    80201190:	e486                	sd	ra,72(sp)
    80201192:	e0a2                	sd	s0,64(sp)
    80201194:	0880                	addi	s0,sp,80
    80201196:	fca43423          	sd	a0,-56(s0)
    8020119a:	fcb43023          	sd	a1,-64(s0)
    8020119e:	fac43c23          	sd	a2,-72(s0)
    802011a2:	fc843783          	ld	a5,-56(s0)
    802011a6:	fef43423          	sd	a5,-24(s0)
    802011aa:	fc043783          	ld	a5,-64(s0)
    802011ae:	fef43023          	sd	a5,-32(s0)
    802011b2:	a099                	j	802011f8 <memcmp+0x6a>
    802011b4:	fe843783          	ld	a5,-24(s0)
    802011b8:	0007c783          	lbu	a5,0(a5)
    802011bc:	0007871b          	sext.w	a4,a5
    802011c0:	fe043783          	ld	a5,-32(s0)
    802011c4:	0007c783          	lbu	a5,0(a5)
    802011c8:	2781                	sext.w	a5,a5
    802011ca:	40f707bb          	subw	a5,a4,a5
    802011ce:	fcf42e23          	sw	a5,-36(s0)
    802011d2:	fdc42783          	lw	a5,-36(s0)
    802011d6:	2781                	sext.w	a5,a5
    802011d8:	e785                	bnez	a5,80201200 <memcmp+0x72>
    802011da:	fe843783          	ld	a5,-24(s0)
    802011de:	0785                	addi	a5,a5,1
    802011e0:	fef43423          	sd	a5,-24(s0)
    802011e4:	fe043783          	ld	a5,-32(s0)
    802011e8:	0785                	addi	a5,a5,1
    802011ea:	fef43023          	sd	a5,-32(s0)
    802011ee:	fb843783          	ld	a5,-72(s0)
    802011f2:	17fd                	addi	a5,a5,-1
    802011f4:	faf43c23          	sd	a5,-72(s0)
    802011f8:	fb843783          	ld	a5,-72(s0)
    802011fc:	ffc5                	bnez	a5,802011b4 <memcmp+0x26>
    802011fe:	a011                	j	80201202 <memcmp+0x74>
    80201200:	0001                	nop
    80201202:	fdc42783          	lw	a5,-36(s0)
    80201206:	853e                	mv	a0,a5
    80201208:	60a6                	ld	ra,72(sp)
    8020120a:	6406                	ld	s0,64(sp)
    8020120c:	6161                	addi	sp,sp,80
    8020120e:	8082                	ret

0000000080201210 <memmove>:
    80201210:	7139                	addi	sp,sp,-64
    80201212:	fc06                	sd	ra,56(sp)
    80201214:	f822                	sd	s0,48(sp)
    80201216:	0080                	addi	s0,sp,64
    80201218:	fca43c23          	sd	a0,-40(s0)
    8020121c:	fcb43823          	sd	a1,-48(s0)
    80201220:	fcc43423          	sd	a2,-56(s0)
    80201224:	fd843783          	ld	a5,-40(s0)
    80201228:	fef43423          	sd	a5,-24(s0)
    8020122c:	a035                	j	80201258 <memmove+0x48>
    8020122e:	fd043703          	ld	a4,-48(s0)
    80201232:	00170793          	addi	a5,a4,1
    80201236:	fcf43823          	sd	a5,-48(s0)
    8020123a:	fe843783          	ld	a5,-24(s0)
    8020123e:	00178693          	addi	a3,a5,1
    80201242:	fed43423          	sd	a3,-24(s0)
    80201246:	00074703          	lbu	a4,0(a4)
    8020124a:	00e78023          	sb	a4,0(a5)
    8020124e:	fc843783          	ld	a5,-56(s0)
    80201252:	17fd                	addi	a5,a5,-1
    80201254:	fcf43423          	sd	a5,-56(s0)
    80201258:	fc843783          	ld	a5,-56(s0)
    8020125c:	fbe9                	bnez	a5,8020122e <memmove+0x1e>
    8020125e:	0001                	nop
    80201260:	0001                	nop
    80201262:	70e2                	ld	ra,56(sp)
    80201264:	7442                	ld	s0,48(sp)
    80201266:	6121                	addi	sp,sp,64
    80201268:	8082                	ret

000000008020126a <memset>:
    8020126a:	7179                	addi	sp,sp,-48
    8020126c:	f406                	sd	ra,40(sp)
    8020126e:	f022                	sd	s0,32(sp)
    80201270:	1800                	addi	s0,sp,48
    80201272:	fca43c23          	sd	a0,-40(s0)
    80201276:	87ae                	mv	a5,a1
    80201278:	8732                	mv	a4,a2
    8020127a:	fcf40ba3          	sb	a5,-41(s0)
    8020127e:	87ba                	mv	a5,a4
    80201280:	fcf42823          	sw	a5,-48(s0)
    80201284:	fd843783          	ld	a5,-40(s0)
    80201288:	fef43423          	sd	a5,-24(s0)
    8020128c:	a005                	j	802012ac <memset+0x42>
    8020128e:	fe843783          	ld	a5,-24(s0)
    80201292:	00178713          	addi	a4,a5,1
    80201296:	fee43423          	sd	a4,-24(s0)
    8020129a:	fd744703          	lbu	a4,-41(s0)
    8020129e:	00e78023          	sb	a4,0(a5)
    802012a2:	fd042783          	lw	a5,-48(s0)
    802012a6:	37fd                	addiw	a5,a5,-1
    802012a8:	fcf42823          	sw	a5,-48(s0)
    802012ac:	fd042783          	lw	a5,-48(s0)
    802012b0:	2781                	sext.w	a5,a5
    802012b2:	fff1                	bnez	a5,8020128e <memset+0x24>
    802012b4:	fd843783          	ld	a5,-40(s0)
    802012b8:	853e                	mv	a0,a5
    802012ba:	70a2                	ld	ra,40(sp)
    802012bc:	7402                	ld	s0,32(sp)
    802012be:	6145                	addi	sp,sp,48
    802012c0:	8082                	ret

00000000802012c2 <strcmp>:
    802012c2:	1101                	addi	sp,sp,-32
    802012c4:	ec06                	sd	ra,24(sp)
    802012c6:	e822                	sd	s0,16(sp)
    802012c8:	1000                	addi	s0,sp,32
    802012ca:	fea43423          	sd	a0,-24(s0)
    802012ce:	feb43023          	sd	a1,-32(s0)
    802012d2:	a091                	j	80201316 <strcmp+0x54>
    802012d4:	fe843783          	ld	a5,-24(s0)
    802012d8:	00078703          	lb	a4,0(a5)
    802012dc:	fe043783          	ld	a5,-32(s0)
    802012e0:	00078783          	lb	a5,0(a5)
    802012e4:	00f70f63          	beq	a4,a5,80201302 <strcmp+0x40>
    802012e8:	fe843783          	ld	a5,-24(s0)
    802012ec:	00078783          	lb	a5,0(a5)
    802012f0:	873e                	mv	a4,a5
    802012f2:	fe043783          	ld	a5,-32(s0)
    802012f6:	00078783          	lb	a5,0(a5)
    802012fa:	40f707bb          	subw	a5,a4,a5
    802012fe:	2781                	sext.w	a5,a5
    80201300:	a089                	j	80201342 <strcmp+0x80>
    80201302:	fe843783          	ld	a5,-24(s0)
    80201306:	0785                	addi	a5,a5,1
    80201308:	fef43423          	sd	a5,-24(s0)
    8020130c:	fe043783          	ld	a5,-32(s0)
    80201310:	0785                	addi	a5,a5,1
    80201312:	fef43023          	sd	a5,-32(s0)
    80201316:	fe843783          	ld	a5,-24(s0)
    8020131a:	00078783          	lb	a5,0(a5)
    8020131e:	c791                	beqz	a5,8020132a <strcmp+0x68>
    80201320:	fe043783          	ld	a5,-32(s0)
    80201324:	00078783          	lb	a5,0(a5)
    80201328:	f7d5                	bnez	a5,802012d4 <strcmp+0x12>
    8020132a:	fe843783          	ld	a5,-24(s0)
    8020132e:	00078783          	lb	a5,0(a5)
    80201332:	873e                	mv	a4,a5
    80201334:	fe043783          	ld	a5,-32(s0)
    80201338:	00078783          	lb	a5,0(a5)
    8020133c:	40f707bb          	subw	a5,a4,a5
    80201340:	2781                	sext.w	a5,a5
    80201342:	853e                	mv	a0,a5
    80201344:	60e2                	ld	ra,24(sp)
    80201346:	6442                	ld	s0,16(sp)
    80201348:	6105                	addi	sp,sp,32
    8020134a:	8082                	ret

000000008020134c <ifsubstr>:
    8020134c:	7139                	addi	sp,sp,-64
    8020134e:	fc06                	sd	ra,56(sp)
    80201350:	f822                	sd	s0,48(sp)
    80201352:	0080                	addi	s0,sp,64
    80201354:	fca43c23          	sd	a0,-40(s0)
    80201358:	fcb43823          	sd	a1,-48(s0)
    8020135c:	87b2                	mv	a5,a2
    8020135e:	fcf42623          	sw	a5,-52(s0)
    80201362:	fd043503          	ld	a0,-48(s0)
    80201366:	d8dff0ef          	jal	802010f2 <strlen>
    8020136a:	87aa                	mv	a5,a0
    8020136c:	fef42023          	sw	a5,-32(s0)
    80201370:	fe042623          	sw	zero,-20(s0)
    80201374:	fe042423          	sw	zero,-24(s0)
    80201378:	fe042223          	sw	zero,-28(s0)
    8020137c:	a04d                	j	8020141e <ifsubstr+0xd2>
    8020137e:	fec42783          	lw	a5,-20(s0)
    80201382:	0007871b          	sext.w	a4,a5
    80201386:	4785                	li	a5,1
    80201388:	06f71063          	bne	a4,a5,802013e8 <ifsubstr+0x9c>
    8020138c:	fe842783          	lw	a5,-24(s0)
    80201390:	0017871b          	addiw	a4,a5,1
    80201394:	fee42423          	sw	a4,-24(s0)
    80201398:	1782                	slli	a5,a5,0x20
    8020139a:	9381                	srli	a5,a5,0x20
    8020139c:	fd843703          	ld	a4,-40(s0)
    802013a0:	97ba                	add	a5,a5,a4
    802013a2:	0007c683          	lbu	a3,0(a5)
    802013a6:	fe442783          	lw	a5,-28(s0)
    802013aa:	0017871b          	addiw	a4,a5,1
    802013ae:	fee42223          	sw	a4,-28(s0)
    802013b2:	1782                	slli	a5,a5,0x20
    802013b4:	9381                	srli	a5,a5,0x20
    802013b6:	fd043703          	ld	a4,-48(s0)
    802013ba:	97ba                	add	a5,a5,a4
    802013bc:	0007c783          	lbu	a5,0(a5)
    802013c0:	8736                	mv	a4,a3
    802013c2:	00f71d63          	bne	a4,a5,802013dc <ifsubstr+0x90>
    802013c6:	fe442783          	lw	a5,-28(s0)
    802013ca:	873e                	mv	a4,a5
    802013cc:	fe042783          	lw	a5,-32(s0)
    802013d0:	2701                	sext.w	a4,a4
    802013d2:	2781                	sext.w	a5,a5
    802013d4:	04f71563          	bne	a4,a5,8020141e <ifsubstr+0xd2>
    802013d8:	4785                	li	a5,1
    802013da:	a8bd                	j	80201458 <ifsubstr+0x10c>
    802013dc:	fe042223          	sw	zero,-28(s0)
    802013e0:	4785                	li	a5,1
    802013e2:	fef42623          	sw	a5,-20(s0)
    802013e6:	a825                	j	8020141e <ifsubstr+0xd2>
    802013e8:	fe842783          	lw	a5,-24(s0)
    802013ec:	0017871b          	addiw	a4,a5,1
    802013f0:	fee42423          	sw	a4,-24(s0)
    802013f4:	1782                	slli	a5,a5,0x20
    802013f6:	9381                	srli	a5,a5,0x20
    802013f8:	fd843703          	ld	a4,-40(s0)
    802013fc:	97ba                	add	a5,a5,a4
    802013fe:	0007c703          	lbu	a4,0(a5)
    80201402:	fd043783          	ld	a5,-48(s0)
    80201406:	0007c783          	lbu	a5,0(a5)
    8020140a:	00f71a63          	bne	a4,a5,8020141e <ifsubstr+0xd2>
    8020140e:	4785                	li	a5,1
    80201410:	fef42623          	sw	a5,-20(s0)
    80201414:	fe442783          	lw	a5,-28(s0)
    80201418:	2785                	addiw	a5,a5,1
    8020141a:	fef42223          	sw	a5,-28(s0)
    8020141e:	fcc42783          	lw	a5,-52(s0)
    80201422:	fe842703          	lw	a4,-24(s0)
    80201426:	2701                	sext.w	a4,a4
    80201428:	00f77b63          	bgeu	a4,a5,8020143e <ifsubstr+0xf2>
    8020142c:	fe442783          	lw	a5,-28(s0)
    80201430:	873e                	mv	a4,a5
    80201432:	fe042783          	lw	a5,-32(s0)
    80201436:	2701                	sext.w	a4,a4
    80201438:	2781                	sext.w	a5,a5
    8020143a:	f4f762e3          	bltu	a4,a5,8020137e <ifsubstr+0x32>
    8020143e:	fe442783          	lw	a5,-28(s0)
    80201442:	873e                	mv	a4,a5
    80201444:	fe042783          	lw	a5,-32(s0)
    80201448:	2701                	sext.w	a4,a4
    8020144a:	2781                	sext.w	a5,a5
    8020144c:	00f77463          	bgeu	a4,a5,80201454 <ifsubstr+0x108>
    80201450:	4785                	li	a5,1
    80201452:	a019                	j	80201458 <ifsubstr+0x10c>
    80201454:	fec42783          	lw	a5,-20(s0)
    80201458:	853e                	mv	a0,a5
    8020145a:	70e2                	ld	ra,56(sp)
    8020145c:	7442                	ld	s0,48(sp)
    8020145e:	6121                	addi	sp,sp,64
    80201460:	8082                	ret

0000000080201462 <strcpy>:
    80201462:	7179                	addi	sp,sp,-48
    80201464:	f406                	sd	ra,40(sp)
    80201466:	f022                	sd	s0,32(sp)
    80201468:	1800                	addi	s0,sp,48
    8020146a:	fca43c23          	sd	a0,-40(s0)
    8020146e:	fcb43823          	sd	a1,-48(s0)
    80201472:	fd843783          	ld	a5,-40(s0)
    80201476:	fef43423          	sd	a5,-24(s0)
    8020147a:	a00d                	j	8020149c <strcpy+0x3a>
    8020147c:	fd043703          	ld	a4,-48(s0)
    80201480:	00170793          	addi	a5,a4,1
    80201484:	fcf43823          	sd	a5,-48(s0)
    80201488:	fe843783          	ld	a5,-24(s0)
    8020148c:	00178693          	addi	a3,a5,1
    80201490:	fed43423          	sd	a3,-24(s0)
    80201494:	00070703          	lb	a4,0(a4)
    80201498:	00e78023          	sb	a4,0(a5)
    8020149c:	fd043783          	ld	a5,-48(s0)
    802014a0:	00078783          	lb	a5,0(a5)
    802014a4:	ffe1                	bnez	a5,8020147c <strcpy+0x1a>
    802014a6:	fe843783          	ld	a5,-24(s0)
    802014aa:	00078023          	sb	zero,0(a5)
    802014ae:	fd843783          	ld	a5,-40(s0)
    802014b2:	853e                	mv	a0,a5
    802014b4:	70a2                	ld	ra,40(sp)
    802014b6:	7402                	ld	s0,32(sp)
    802014b8:	6145                	addi	sp,sp,48
    802014ba:	8082                	ret

00000000802014bc <strcat>:
    802014bc:	7179                	addi	sp,sp,-48
    802014be:	f406                	sd	ra,40(sp)
    802014c0:	f022                	sd	s0,32(sp)
    802014c2:	1800                	addi	s0,sp,48
    802014c4:	fca43c23          	sd	a0,-40(s0)
    802014c8:	fcb43823          	sd	a1,-48(s0)
    802014cc:	fd843783          	ld	a5,-40(s0)
    802014d0:	fef43423          	sd	a5,-24(s0)
    802014d4:	a031                	j	802014e0 <strcat+0x24>
    802014d6:	fe843783          	ld	a5,-24(s0)
    802014da:	0785                	addi	a5,a5,1
    802014dc:	fef43423          	sd	a5,-24(s0)
    802014e0:	fe843783          	ld	a5,-24(s0)
    802014e4:	00078783          	lb	a5,0(a5)
    802014e8:	f7fd                	bnez	a5,802014d6 <strcat+0x1a>
    802014ea:	a00d                	j	8020150c <strcat+0x50>
    802014ec:	fd043703          	ld	a4,-48(s0)
    802014f0:	00170793          	addi	a5,a4,1
    802014f4:	fcf43823          	sd	a5,-48(s0)
    802014f8:	fe843783          	ld	a5,-24(s0)
    802014fc:	00178693          	addi	a3,a5,1
    80201500:	fed43423          	sd	a3,-24(s0)
    80201504:	00070703          	lb	a4,0(a4)
    80201508:	00e78023          	sb	a4,0(a5)
    8020150c:	fd043783          	ld	a5,-48(s0)
    80201510:	00078783          	lb	a5,0(a5)
    80201514:	ffe1                	bnez	a5,802014ec <strcat+0x30>
    80201516:	fd843783          	ld	a5,-40(s0)
    8020151a:	853e                	mv	a0,a5
    8020151c:	70a2                	ld	ra,40(sp)
    8020151e:	7402                	ld	s0,32(sp)
    80201520:	6145                	addi	sp,sp,48
    80201522:	8082                	ret

0000000080201524 <sys_write>:
    80201524:	1101                	addi	sp,sp,-32
    80201526:	ec06                	sd	ra,24(sp)
    80201528:	e822                	sd	s0,16(sp)
    8020152a:	1000                	addi	s0,sp,32
    8020152c:	fea43423          	sd	a0,-24(s0)
    80201530:	fe843583          	ld	a1,-24(s0)
    80201534:	00001517          	auipc	a0,0x1
    80201538:	df450513          	addi	a0,a0,-524 # 80202328 <rodata_start+0x328>
    8020153c:	fa6ff0ef          	jal	80200ce2 <printk>
    80201540:	4781                	li	a5,0
    80201542:	853e                	mv	a0,a5
    80201544:	60e2                	ld	ra,24(sp)
    80201546:	6442                	ld	s0,16(sp)
    80201548:	6105                	addi	sp,sp,32
    8020154a:	8082                	ret

000000008020154c <sys_exit>:
    8020154c:	7179                	addi	sp,sp,-48
    8020154e:	f406                	sd	ra,40(sp)
    80201550:	f022                	sd	s0,32(sp)
    80201552:	1800                	addi	s0,sp,48
    80201554:	fca43c23          	sd	a0,-40(s0)
    80201558:	fd843583          	ld	a1,-40(s0)
    8020155c:	00001517          	auipc	a0,0x1
    80201560:	dd450513          	addi	a0,a0,-556 # 80202330 <rodata_start+0x330>
    80201564:	f7eff0ef          	jal	80200ce2 <printk>
    80201568:	3ca000ef          	jal	80201932 <get_cur_proc>
    8020156c:	fea43423          	sd	a0,-24(s0)
    80201570:	fe843783          	ld	a5,-24(s0)
    80201574:	470d                	li	a4,3
    80201576:	cb98                	sw	a4,16(a5)
    80201578:	47e000ef          	jal	802019f6 <yield>
    8020157c:	4781                	li	a5,0
    8020157e:	853e                	mv	a0,a5
    80201580:	70a2                	ld	ra,40(sp)
    80201582:	7402                	ld	s0,32(sp)
    80201584:	6145                	addi	sp,sp,48
    80201586:	8082                	ret

0000000080201588 <sys_stack_trace>:
    80201588:	7179                	addi	sp,sp,-48
    8020158a:	f406                	sd	ra,40(sp)
    8020158c:	f022                	sd	s0,32(sp)
    8020158e:	1800                	addi	s0,sp,48
    80201590:	00001517          	auipc	a0,0x1
    80201594:	dc050513          	addi	a0,a0,-576 # 80202350 <rodata_start+0x350>
    80201598:	f4aff0ef          	jal	80200ce2 <printk>
    8020159c:	87a2                	mv	a5,s0
    8020159e:	fef43423          	sd	a5,-24(s0)
    802015a2:	a81d                	j	802015d8 <sys_stack_trace+0x50>
    802015a4:	fe843783          	ld	a5,-24(s0)
    802015a8:	17fd                	addi	a5,a5,-1
    802015aa:	639c                	ld	a5,0(a5)
    802015ac:	fef43023          	sd	a5,-32(s0)
    802015b0:	fe843783          	ld	a5,-24(s0)
    802015b4:	17f9                	addi	a5,a5,-2
    802015b6:	639c                	ld	a5,0(a5)
    802015b8:	fcf43c23          	sd	a5,-40(s0)
    802015bc:	fd843603          	ld	a2,-40(s0)
    802015c0:	fe043583          	ld	a1,-32(s0)
    802015c4:	00001517          	auipc	a0,0x1
    802015c8:	dbc50513          	addi	a0,a0,-580 # 80202380 <rodata_start+0x380>
    802015cc:	f16ff0ef          	jal	80200ce2 <printk>
    802015d0:	fd843783          	ld	a5,-40(s0)
    802015d4:	fef43423          	sd	a5,-24(s0)
    802015d8:	fe843783          	ld	a5,-24(s0)
    802015dc:	f7e1                	bnez	a5,802015a4 <sys_stack_trace+0x1c>
    802015de:	00001517          	auipc	a0,0x1
    802015e2:	dba50513          	addi	a0,a0,-582 # 80202398 <rodata_start+0x398>
    802015e6:	efcff0ef          	jal	80200ce2 <printk>
    802015ea:	4781                	li	a5,0
    802015ec:	853e                	mv	a0,a5
    802015ee:	70a2                	ld	ra,40(sp)
    802015f0:	7402                	ld	s0,32(sp)
    802015f2:	6145                	addi	sp,sp,48
    802015f4:	8082                	ret

00000000802015f6 <sys_yield>:
    802015f6:	1141                	addi	sp,sp,-16
    802015f8:	e406                	sd	ra,8(sp)
    802015fa:	e022                	sd	s0,0(sp)
    802015fc:	0800                	addi	s0,sp,16
    802015fe:	3f8000ef          	jal	802019f6 <yield>
    80201602:	4781                	li	a5,0
    80201604:	853e                	mv	a0,a5
    80201606:	60a2                	ld	ra,8(sp)
    80201608:	6402                	ld	s0,0(sp)
    8020160a:	0141                	addi	sp,sp,16
    8020160c:	8082                	ret

000000008020160e <sys_get_tiem>:
    8020160e:	7179                	addi	sp,sp,-48
    80201610:	f406                	sd	ra,40(sp)
    80201612:	f022                	sd	s0,32(sp)
    80201614:	1800                	addi	s0,sp,48
    80201616:	fca43c23          	sd	a0,-40(s0)
    8020161a:	48a000ef          	jal	80201aa4 <get_cycle>
    8020161e:	fea43423          	sd	a0,-24(s0)
    80201622:	fe843703          	ld	a4,-24(s0)
    80201626:	00001797          	auipc	a5,0x1
    8020162a:	dfa78793          	addi	a5,a5,-518 # 80202420 <rodata_start+0x420>
    8020162e:	639c                	ld	a5,0(a5)
    80201630:	02f737b3          	mulhu	a5,a4,a5
    80201634:	0177d713          	srli	a4,a5,0x17
    80201638:	fd843783          	ld	a5,-40(s0)
    8020163c:	e398                	sd	a4,0(a5)
    8020163e:	fe843703          	ld	a4,-24(s0)
    80201642:	00001797          	auipc	a5,0x1
    80201646:	dde78793          	addi	a5,a5,-546 # 80202420 <rodata_start+0x420>
    8020164a:	639c                	ld	a5,0(a5)
    8020164c:	02f737b3          	mulhu	a5,a4,a5
    80201650:	83dd                	srli	a5,a5,0x17
    80201652:	009896b7          	lui	a3,0x989
    80201656:	68068693          	addi	a3,a3,1664 # 989680 <n+0x989660>
    8020165a:	02d787b3          	mul	a5,a5,a3
    8020165e:	40f707b3          	sub	a5,a4,a5
    80201662:	000f4737          	lui	a4,0xf4
    80201666:	24070713          	addi	a4,a4,576 # f4240 <n+0xf4220>
    8020166a:	02e78733          	mul	a4,a5,a4
    8020166e:	00001797          	auipc	a5,0x1
    80201672:	db278793          	addi	a5,a5,-590 # 80202420 <rodata_start+0x420>
    80201676:	639c                	ld	a5,0(a5)
    80201678:	02f737b3          	mulhu	a5,a4,a5
    8020167c:	0177d713          	srli	a4,a5,0x17
    80201680:	fd843783          	ld	a5,-40(s0)
    80201684:	e798                	sd	a4,8(a5)
    80201686:	4781                	li	a5,0
    80201688:	853e                	mv	a0,a5
    8020168a:	70a2                	ld	ra,40(sp)
    8020168c:	7402                	ld	s0,32(sp)
    8020168e:	6145                	addi	sp,sp,48
    80201690:	8082                	ret

0000000080201692 <syscall>:
    80201692:	7139                	addi	sp,sp,-64
    80201694:	fc06                	sd	ra,56(sp)
    80201696:	f822                	sd	s0,48(sp)
    80201698:	0080                	addi	s0,sp,64
    8020169a:	fca43c23          	sd	a0,-40(s0)
    8020169e:	fcb43823          	sd	a1,-48(s0)
    802016a2:	fcc43423          	sd	a2,-56(s0)
    802016a6:	fcd43023          	sd	a3,-64(s0)
    802016aa:	fd843703          	ld	a4,-40(s0)
    802016ae:	4795                	li	a5,5
    802016b0:	06e7e963          	bltu	a5,a4,80201722 <syscall+0x90>
    802016b4:	fd843783          	ld	a5,-40(s0)
    802016b8:	00279713          	slli	a4,a5,0x2
    802016bc:	00001797          	auipc	a5,0x1
    802016c0:	d4c78793          	addi	a5,a5,-692 # 80202408 <rodata_start+0x408>
    802016c4:	97ba                	add	a5,a5,a4
    802016c6:	439c                	lw	a5,0(a5)
    802016c8:	0007871b          	sext.w	a4,a5
    802016cc:	00001797          	auipc	a5,0x1
    802016d0:	d3c78793          	addi	a5,a5,-708 # 80202408 <rodata_start+0x408>
    802016d4:	97ba                	add	a5,a5,a4
    802016d6:	8782                	jr	a5
    802016d8:	fd043783          	ld	a5,-48(s0)
    802016dc:	853e                	mv	a0,a5
    802016de:	e47ff0ef          	jal	80201524 <sys_write>
    802016e2:	87aa                	mv	a5,a0
    802016e4:	fef43423          	sd	a5,-24(s0)
    802016e8:	a8a1                	j	80201740 <syscall+0xae>
    802016ea:	fd043503          	ld	a0,-48(s0)
    802016ee:	e5fff0ef          	jal	8020154c <sys_exit>
    802016f2:	87aa                	mv	a5,a0
    802016f4:	fef43423          	sd	a5,-24(s0)
    802016f8:	a0a1                	j	80201740 <syscall+0xae>
    802016fa:	e8fff0ef          	jal	80201588 <sys_stack_trace>
    802016fe:	87aa                	mv	a5,a0
    80201700:	fef43423          	sd	a5,-24(s0)
    80201704:	a835                	j	80201740 <syscall+0xae>
    80201706:	ef1ff0ef          	jal	802015f6 <sys_yield>
    8020170a:	87aa                	mv	a5,a0
    8020170c:	fef43423          	sd	a5,-24(s0)
    80201710:	a805                	j	80201740 <syscall+0xae>
    80201712:	fd043783          	ld	a5,-48(s0)
    80201716:	853e                	mv	a0,a5
    80201718:	ef7ff0ef          	jal	8020160e <sys_get_tiem>
    8020171c:	fea43423          	sd	a0,-24(s0)
    80201720:	a005                	j	80201740 <syscall+0xae>
    80201722:	fd843583          	ld	a1,-40(s0)
    80201726:	00001517          	auipc	a0,0x1
    8020172a:	ca250513          	addi	a0,a0,-862 # 802023c8 <rodata_start+0x3c8>
    8020172e:	db4ff0ef          	jal	80200ce2 <printk>
    80201732:	00001517          	auipc	a0,0x1
    80201736:	cb650513          	addi	a0,a0,-842 # 802023e8 <rodata_start+0x3e8>
    8020173a:	daffe0ef          	jal	802004e8 <panic>
    8020173e:	0001                	nop
    80201740:	fe843783          	ld	a5,-24(s0)
    80201744:	853e                	mv	a0,a5
    80201746:	70e2                	ld	ra,56(sp)
    80201748:	7442                	ld	s0,48(sp)
    8020174a:	6121                	addi	sp,sp,64
    8020174c:	8082                	ret

000000008020174e <__switch>:
    8020174e:	00153023          	sd	ra,0(a0)
    80201752:	00253423          	sd	sp,8(a0)
    80201756:	e900                	sd	s0,16(a0)
    80201758:	ed04                	sd	s1,24(a0)
    8020175a:	03253023          	sd	s2,32(a0)
    8020175e:	03353423          	sd	s3,40(a0)
    80201762:	03453823          	sd	s4,48(a0)
    80201766:	03553c23          	sd	s5,56(a0)
    8020176a:	05653023          	sd	s6,64(a0)
    8020176e:	05753423          	sd	s7,72(a0)
    80201772:	05853823          	sd	s8,80(a0)
    80201776:	05953c23          	sd	s9,88(a0)
    8020177a:	07a53023          	sd	s10,96(a0)
    8020177e:	07b53423          	sd	s11,104(a0)
    80201782:	0005b083          	ld	ra,0(a1)
    80201786:	0085b103          	ld	sp,8(a1)
    8020178a:	6980                	ld	s0,16(a1)
    8020178c:	6d84                	ld	s1,24(a1)
    8020178e:	0205b903          	ld	s2,32(a1)
    80201792:	0285b983          	ld	s3,40(a1)
    80201796:	0305ba03          	ld	s4,48(a1)
    8020179a:	0385ba83          	ld	s5,56(a1)
    8020179e:	0405bb03          	ld	s6,64(a1)
    802017a2:	0485bb83          	ld	s7,72(a1)
    802017a6:	0505bc03          	ld	s8,80(a1)
    802017aa:	0585bc83          	ld	s9,88(a1)
    802017ae:	0605bd03          	ld	s10,96(a1)
    802017b2:	0685bd83          	ld	s11,104(a1)
    802017b6:	8082                	ret

00000000802017b8 <proc_init>:
    802017b8:	1101                	addi	sp,sp,-32
    802017ba:	ec06                	sd	ra,24(sp)
    802017bc:	e822                	sd	s0,16(sp)
    802017be:	1000                	addi	s0,sp,32
    802017c0:	00001517          	auipc	a0,0x1
    802017c4:	c6850513          	addi	a0,a0,-920 # 80202428 <rodata_start+0x428>
    802017c8:	d1aff0ef          	jal	80200ce2 <printk>
    802017cc:	0002e797          	auipc	a5,0x2e
    802017d0:	83c78793          	addi	a5,a5,-1988 # 8022f008 <proc>
    802017d4:	fef43423          	sd	a5,-24(s0)
    802017d8:	a849                	j	8020186a <proc_init+0xb2>
    802017da:	fe843703          	ld	a4,-24(s0)
    802017de:	0002e797          	auipc	a5,0x2e
    802017e2:	82a78793          	addi	a5,a5,-2006 # 8022f008 <proc>
    802017e6:	40f707b3          	sub	a5,a4,a5
    802017ea:	4037d713          	srai	a4,a5,0x3
    802017ee:	00001797          	auipc	a5,0x1
    802017f2:	c9278793          	addi	a5,a5,-878 # 80202480 <rodata_start+0x480>
    802017f6:	639c                	ld	a5,0(a5)
    802017f8:	02f707b3          	mul	a5,a4,a5
    802017fc:	853e                	mv	a0,a5
    802017fe:	833fe0ef          	jal	80200030 <get_kernel_stack>
    80201802:	872a                	mv	a4,a0
    80201804:	fe843783          	ld	a5,-24(s0)
    80201808:	e398                	sd	a4,0(a5)
    8020180a:	fe843703          	ld	a4,-24(s0)
    8020180e:	0002d797          	auipc	a5,0x2d
    80201812:	7fa78793          	addi	a5,a5,2042 # 8022f008 <proc>
    80201816:	40f707b3          	sub	a5,a4,a5
    8020181a:	4037d713          	srai	a4,a5,0x3
    8020181e:	00001797          	auipc	a5,0x1
    80201822:	c6278793          	addi	a5,a5,-926 # 80202480 <rodata_start+0x480>
    80201826:	639c                	ld	a5,0(a5)
    80201828:	02f707b3          	mul	a5,a4,a5
    8020182c:	853e                	mv	a0,a5
    8020182e:	83bfe0ef          	jal	80200068 <get_user_stack>
    80201832:	872a                	mv	a4,a0
    80201834:	fe843783          	ld	a5,-24(s0)
    80201838:	e798                	sd	a4,8(a5)
    8020183a:	fe843783          	ld	a5,-24(s0)
    8020183e:	0007a823          	sw	zero,16(a5)
    80201842:	fe843783          	ld	a5,-24(s0)
    80201846:	6398                	ld	a4,0(a5)
    80201848:	fe843783          	ld	a5,-24(s0)
    8020184c:	679c                	ld	a5,8(a5)
    8020184e:	863e                	mv	a2,a5
    80201850:	85ba                	mv	a1,a4
    80201852:	00001517          	auipc	a0,0x1
    80201856:	bee50513          	addi	a0,a0,-1042 # 80202440 <rodata_start+0x440>
    8020185a:	c88ff0ef          	jal	80200ce2 <printk>
    8020185e:	fe843783          	ld	a5,-24(s0)
    80201862:	19878793          	addi	a5,a5,408
    80201866:	fef43423          	sd	a5,-24(s0)
    8020186a:	fe843703          	ld	a4,-24(s0)
    8020186e:	0002e797          	auipc	a5,0x2e
    80201872:	c6278793          	addi	a5,a5,-926 # 8022f4d0 <os_proc>
    80201876:	f6f762e3          	bltu	a4,a5,802017da <proc_init+0x22>
    8020187a:	00012717          	auipc	a4,0x12
    8020187e:	78670713          	addi	a4,a4,1926 # 80214000 <boot_stack_top>
    80201882:	0002e797          	auipc	a5,0x2e
    80201886:	c4e78793          	addi	a5,a5,-946 # 8022f4d0 <os_proc>
    8020188a:	e398                	sd	a4,0(a5)
    8020188c:	0001                	nop
    8020188e:	60e2                	ld	ra,24(sp)
    80201890:	6442                	ld	s0,16(sp)
    80201892:	6105                	addi	sp,sp,32
    80201894:	8082                	ret

0000000080201896 <allocate_proc>:
    80201896:	1101                	addi	sp,sp,-32
    80201898:	ec06                	sd	ra,24(sp)
    8020189a:	e822                	sd	s0,16(sp)
    8020189c:	1000                	addi	s0,sp,32
    8020189e:	0002d797          	auipc	a5,0x2d
    802018a2:	76a78793          	addi	a5,a5,1898 # 8022f008 <proc>
    802018a6:	fef43423          	sd	a5,-24(s0)
    802018aa:	a0b5                	j	80201916 <allocate_proc+0x80>
    802018ac:	fe843783          	ld	a5,-24(s0)
    802018b0:	4b9c                	lw	a5,16(a5)
    802018b2:	efa1                	bnez	a5,8020190a <allocate_proc+0x74>
    802018b4:	fe843783          	ld	a5,-24(s0)
    802018b8:	4705                	li	a4,1
    802018ba:	cb98                	sw	a4,16(a5)
    802018bc:	fe843783          	ld	a5,-24(s0)
    802018c0:	07e1                	addi	a5,a5,24
    802018c2:	11000613          	li	a2,272
    802018c6:	4581                	li	a1,0
    802018c8:	853e                	mv	a0,a5
    802018ca:	9a1ff0ef          	jal	8020126a <memset>
    802018ce:	fe843783          	ld	a5,-24(s0)
    802018d2:	12878793          	addi	a5,a5,296
    802018d6:	07000613          	li	a2,112
    802018da:	4581                	li	a1,0
    802018dc:	853e                	mv	a0,a5
    802018de:	98dff0ef          	jal	8020126a <memset>
    802018e2:	fffff717          	auipc	a4,0xfffff
    802018e6:	7ba70713          	addi	a4,a4,1978 # 8020109c <__restore>
    802018ea:	fe843783          	ld	a5,-24(s0)
    802018ee:	12e7b423          	sd	a4,296(a5)
    802018f2:	fe843783          	ld	a5,-24(s0)
    802018f6:	6398                	ld	a4,0(a5)
    802018f8:	6785                	lui	a5,0x1
    802018fa:	973e                	add	a4,a4,a5
    802018fc:	fe843783          	ld	a5,-24(s0)
    80201900:	12e7b823          	sd	a4,304(a5) # 1130 <n+0x1110>
    80201904:	fe843783          	ld	a5,-24(s0)
    80201908:	a005                	j	80201928 <allocate_proc+0x92>
    8020190a:	fe843783          	ld	a5,-24(s0)
    8020190e:	19878793          	addi	a5,a5,408
    80201912:	fef43423          	sd	a5,-24(s0)
    80201916:	fe843703          	ld	a4,-24(s0)
    8020191a:	0002e797          	auipc	a5,0x2e
    8020191e:	bb678793          	addi	a5,a5,-1098 # 8022f4d0 <os_proc>
    80201922:	f8f765e3          	bltu	a4,a5,802018ac <allocate_proc+0x16>
    80201926:	4781                	li	a5,0
    80201928:	853e                	mv	a0,a5
    8020192a:	60e2                	ld	ra,24(sp)
    8020192c:	6442                	ld	s0,16(sp)
    8020192e:	6105                	addi	sp,sp,32
    80201930:	8082                	ret

0000000080201932 <get_cur_proc>:
    80201932:	1141                	addi	sp,sp,-16
    80201934:	e406                	sd	ra,8(sp)
    80201936:	e022                	sd	s0,0(sp)
    80201938:	0800                	addi	s0,sp,16
    8020193a:	0002e797          	auipc	a5,0x2e
    8020193e:	d3e78793          	addi	a5,a5,-706 # 8022f678 <current_proc>
    80201942:	639c                	ld	a5,0(a5)
    80201944:	853e                	mv	a0,a5
    80201946:	60a2                	ld	ra,8(sp)
    80201948:	6402                	ld	s0,0(sp)
    8020194a:	0141                	addi	sp,sp,16
    8020194c:	8082                	ret

000000008020194e <scheduler>:
    8020194e:	1101                	addi	sp,sp,-32
    80201950:	ec06                	sd	ra,24(sp)
    80201952:	e822                	sd	s0,16(sp)
    80201954:	1000                	addi	s0,sp,32
    80201956:	0002d797          	auipc	a5,0x2d
    8020195a:	6b278793          	addi	a5,a5,1714 # 8022f008 <proc>
    8020195e:	fef43423          	sd	a5,-24(s0)
    80201962:	a889                	j	802019b4 <scheduler+0x66>
    80201964:	fe843783          	ld	a5,-24(s0)
    80201968:	4b98                	lw	a4,16(a5)
    8020196a:	4785                	li	a5,1
    8020196c:	02f71e63          	bne	a4,a5,802019a8 <scheduler+0x5a>
    80201970:	fe843783          	ld	a5,-24(s0)
    80201974:	4709                	li	a4,2
    80201976:	cb98                	sw	a4,16(a5)
    80201978:	0002e797          	auipc	a5,0x2e
    8020197c:	d0078793          	addi	a5,a5,-768 # 8022f678 <current_proc>
    80201980:	fe843703          	ld	a4,-24(s0)
    80201984:	e398                	sd	a4,0(a5)
    80201986:	00001517          	auipc	a0,0x1
    8020198a:	ada50513          	addi	a0,a0,-1318 # 80202460 <rodata_start+0x460>
    8020198e:	b54ff0ef          	jal	80200ce2 <printk>
    80201992:	fe843783          	ld	a5,-24(s0)
    80201996:	12878793          	addi	a5,a5,296
    8020199a:	85be                	mv	a1,a5
    8020199c:	0002e517          	auipc	a0,0x2e
    802019a0:	c5c50513          	addi	a0,a0,-932 # 8022f5f8 <os_proc+0x128>
    802019a4:	dabff0ef          	jal	8020174e <__switch>
    802019a8:	fe843783          	ld	a5,-24(s0)
    802019ac:	19878793          	addi	a5,a5,408
    802019b0:	fef43423          	sd	a5,-24(s0)
    802019b4:	fe843703          	ld	a4,-24(s0)
    802019b8:	0002e797          	auipc	a5,0x2e
    802019bc:	b1878793          	addi	a5,a5,-1256 # 8022f4d0 <os_proc>
    802019c0:	faf762e3          	bltu	a4,a5,80201964 <scheduler+0x16>
    802019c4:	bf49                	j	80201956 <scheduler+0x8>

00000000802019c6 <sched>:
    802019c6:	1101                	addi	sp,sp,-32
    802019c8:	ec06                	sd	ra,24(sp)
    802019ca:	e822                	sd	s0,16(sp)
    802019cc:	1000                	addi	s0,sp,32
    802019ce:	f65ff0ef          	jal	80201932 <get_cur_proc>
    802019d2:	fea43423          	sd	a0,-24(s0)
    802019d6:	fe843783          	ld	a5,-24(s0)
    802019da:	12878793          	addi	a5,a5,296
    802019de:	0002e597          	auipc	a1,0x2e
    802019e2:	c1a58593          	addi	a1,a1,-998 # 8022f5f8 <os_proc+0x128>
    802019e6:	853e                	mv	a0,a5
    802019e8:	d67ff0ef          	jal	8020174e <__switch>
    802019ec:	0001                	nop
    802019ee:	60e2                	ld	ra,24(sp)
    802019f0:	6442                	ld	s0,16(sp)
    802019f2:	6105                	addi	sp,sp,32
    802019f4:	8082                	ret

00000000802019f6 <yield>:
    802019f6:	1141                	addi	sp,sp,-16
    802019f8:	e406                	sd	ra,8(sp)
    802019fa:	e022                	sd	s0,0(sp)
    802019fc:	0800                	addi	s0,sp,16
    802019fe:	0002e797          	auipc	a5,0x2e
    80201a02:	c7a78793          	addi	a5,a5,-902 # 8022f678 <current_proc>
    80201a06:	639c                	ld	a5,0(a5)
    80201a08:	4b98                	lw	a4,16(a5)
    80201a0a:	4789                	li	a5,2
    80201a0c:	00f71963          	bne	a4,a5,80201a1e <yield+0x28>
    80201a10:	0002e797          	auipc	a5,0x2e
    80201a14:	c6878793          	addi	a5,a5,-920 # 8022f678 <current_proc>
    80201a18:	639c                	ld	a5,0(a5)
    80201a1a:	4705                	li	a4,1
    80201a1c:	cb98                	sw	a4,16(a5)
    80201a1e:	fa9ff0ef          	jal	802019c6 <sched>
    80201a22:	0001                	nop
    80201a24:	60a2                	ld	ra,8(sp)
    80201a26:	6402                	ld	s0,0(sp)
    80201a28:	0141                	addi	sp,sp,16
    80201a2a:	8082                	ret

0000000080201a2c <r_mstatus>:
    80201a2c:	1101                	addi	sp,sp,-32
    80201a2e:	ec06                	sd	ra,24(sp)
    80201a30:	e822                	sd	s0,16(sp)
    80201a32:	1000                	addi	s0,sp,32
    80201a34:	300027f3          	csrr	a5,mstatus
    80201a38:	fef43423          	sd	a5,-24(s0)
    80201a3c:	fe843783          	ld	a5,-24(s0)
    80201a40:	853e                	mv	a0,a5
    80201a42:	60e2                	ld	ra,24(sp)
    80201a44:	6442                	ld	s0,16(sp)
    80201a46:	6105                	addi	sp,sp,32
    80201a48:	8082                	ret

0000000080201a4a <r_sie>:
    80201a4a:	1101                	addi	sp,sp,-32
    80201a4c:	ec06                	sd	ra,24(sp)
    80201a4e:	e822                	sd	s0,16(sp)
    80201a50:	1000                	addi	s0,sp,32
    80201a52:	104027f3          	csrr	a5,sie
    80201a56:	fef43423          	sd	a5,-24(s0)
    80201a5a:	fe843783          	ld	a5,-24(s0)
    80201a5e:	853e                	mv	a0,a5
    80201a60:	60e2                	ld	ra,24(sp)
    80201a62:	6442                	ld	s0,16(sp)
    80201a64:	6105                	addi	sp,sp,32
    80201a66:	8082                	ret

0000000080201a68 <w_sie>:
    80201a68:	1101                	addi	sp,sp,-32
    80201a6a:	ec06                	sd	ra,24(sp)
    80201a6c:	e822                	sd	s0,16(sp)
    80201a6e:	1000                	addi	s0,sp,32
    80201a70:	fea43423          	sd	a0,-24(s0)
    80201a74:	fe843783          	ld	a5,-24(s0)
    80201a78:	10479073          	csrw	sie,a5
    80201a7c:	0001                	nop
    80201a7e:	60e2                	ld	ra,24(sp)
    80201a80:	6442                	ld	s0,16(sp)
    80201a82:	6105                	addi	sp,sp,32
    80201a84:	8082                	ret

0000000080201a86 <r_time>:
    80201a86:	1101                	addi	sp,sp,-32
    80201a88:	ec06                	sd	ra,24(sp)
    80201a8a:	e822                	sd	s0,16(sp)
    80201a8c:	1000                	addi	s0,sp,32
    80201a8e:	c01027f3          	rdtime	a5
    80201a92:	fef43423          	sd	a5,-24(s0)
    80201a96:	fe843783          	ld	a5,-24(s0)
    80201a9a:	853e                	mv	a0,a5
    80201a9c:	60e2                	ld	ra,24(sp)
    80201a9e:	6442                	ld	s0,16(sp)
    80201aa0:	6105                	addi	sp,sp,32
    80201aa2:	8082                	ret

0000000080201aa4 <get_cycle>:
    80201aa4:	1141                	addi	sp,sp,-16
    80201aa6:	e406                	sd	ra,8(sp)
    80201aa8:	e022                	sd	s0,0(sp)
    80201aaa:	0800                	addi	s0,sp,16
    80201aac:	fdbff0ef          	jal	80201a86 <r_time>
    80201ab0:	87aa                	mv	a5,a0
    80201ab2:	853e                	mv	a0,a5
    80201ab4:	60a2                	ld	ra,8(sp)
    80201ab6:	6402                	ld	s0,0(sp)
    80201ab8:	0141                	addi	sp,sp,16
    80201aba:	8082                	ret

0000000080201abc <set_timer>:
    80201abc:	1101                	addi	sp,sp,-32
    80201abe:	ec06                	sd	ra,24(sp)
    80201ac0:	e822                	sd	s0,16(sp)
    80201ac2:	1000                	addi	s0,sp,32
    80201ac4:	fea43423          	sd	a0,-24(s0)
    80201ac8:	fe843503          	ld	a0,-24(s0)
    80201acc:	8e9fe0ef          	jal	802003b4 <sbi_set_timer>
    80201ad0:	0001                	nop
    80201ad2:	60e2                	ld	ra,24(sp)
    80201ad4:	6442                	ld	s0,16(sp)
    80201ad6:	6105                	addi	sp,sp,32
    80201ad8:	8082                	ret

0000000080201ada <set_next_10ms_timer>:
    80201ada:	1101                	addi	sp,sp,-32
    80201adc:	ec06                	sd	ra,24(sp)
    80201ade:	e822                	sd	s0,16(sp)
    80201ae0:	1000                	addi	s0,sp,32
    80201ae2:	67e1                	lui	a5,0x18
    80201ae4:	6a078793          	addi	a5,a5,1696 # 186a0 <n+0x18680>
    80201ae8:	fef43423          	sd	a5,-24(s0)
    80201aec:	fb9ff0ef          	jal	80201aa4 <get_cycle>
    80201af0:	872a                	mv	a4,a0
    80201af2:	fe843783          	ld	a5,-24(s0)
    80201af6:	97ba                	add	a5,a5,a4
    80201af8:	853e                	mv	a0,a5
    80201afa:	fc3ff0ef          	jal	80201abc <set_timer>
    80201afe:	0001                	nop
    80201b00:	60e2                	ld	ra,24(sp)
    80201b02:	6442                	ld	s0,16(sp)
    80201b04:	6105                	addi	sp,sp,32
    80201b06:	8082                	ret

0000000080201b08 <get_time_us>:
    80201b08:	1141                	addi	sp,sp,-16
    80201b0a:	e406                	sd	ra,8(sp)
    80201b0c:	e022                	sd	s0,0(sp)
    80201b0e:	0800                	addi	s0,sp,16
    80201b10:	f95ff0ef          	jal	80201aa4 <get_cycle>
    80201b14:	872a                	mv	a4,a0
    80201b16:	00001797          	auipc	a5,0x1
    80201b1a:	99278793          	addi	a5,a5,-1646 # 802024a8 <rodata_start+0x4a8>
    80201b1e:	639c                	ld	a5,0(a5)
    80201b20:	02f737b3          	mulhu	a5,a4,a5
    80201b24:	838d                	srli	a5,a5,0x3
    80201b26:	853e                	mv	a0,a5
    80201b28:	60a2                	ld	ra,8(sp)
    80201b2a:	6402                	ld	s0,0(sp)
    80201b2c:	0141                	addi	sp,sp,16
    80201b2e:	8082                	ret

0000000080201b30 <enable_timer_interrupt>:
    80201b30:	1141                	addi	sp,sp,-16
    80201b32:	e406                	sd	ra,8(sp)
    80201b34:	e022                	sd	s0,0(sp)
    80201b36:	0800                	addi	s0,sp,16
    80201b38:	f13ff0ef          	jal	80201a4a <r_sie>
    80201b3c:	87aa                	mv	a5,a0
    80201b3e:	0207e793          	ori	a5,a5,32
    80201b42:	853e                	mv	a0,a5
    80201b44:	f25ff0ef          	jal	80201a68 <w_sie>
    80201b48:	0001                	nop
    80201b4a:	60a2                	ld	ra,8(sp)
    80201b4c:	6402                	ld	s0,0(sp)
    80201b4e:	0141                	addi	sp,sp,16
    80201b50:	8082                	ret

0000000080201b52 <timer_init>:
    80201b52:	1141                	addi	sp,sp,-16
    80201b54:	e406                	sd	ra,8(sp)
    80201b56:	e022                	sd	s0,0(sp)
    80201b58:	0800                	addi	s0,sp,16
    80201b5a:	fd7ff0ef          	jal	80201b30 <enable_timer_interrupt>
    80201b5e:	f7dff0ef          	jal	80201ada <set_next_10ms_timer>
    80201b62:	0001                	nop
    80201b64:	60a2                	ld	ra,8(sp)
    80201b66:	6402                	ld	s0,0(sp)
    80201b68:	0141                	addi	sp,sp,16
    80201b6a:	8082                	ret

0000000080201b6c <interrupt_query>:
    80201b6c:	1101                	addi	sp,sp,-32
    80201b6e:	ec06                	sd	ra,24(sp)
    80201b70:	e822                	sd	s0,16(sp)
    80201b72:	1000                	addi	s0,sp,32
    80201b74:	eb9ff0ef          	jal	80201a2c <r_mstatus>
    80201b78:	fea43423          	sd	a0,-24(s0)
    80201b7c:	fe843583          	ld	a1,-24(s0)
    80201b80:	00001517          	auipc	a0,0x1
    80201b84:	90850513          	addi	a0,a0,-1784 # 80202488 <rodata_start+0x488>
    80201b88:	95aff0ef          	jal	80200ce2 <printk>
    80201b8c:	0001                	nop
    80201b8e:	60e2                	ld	ra,24(sp)
    80201b90:	6442                	ld	s0,16(sp)
    80201b92:	6105                	addi	sp,sp,32
    80201b94:	8082                	ret
