
../target/os.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	0001c117          	auipc	sp,0x1c
    80200004:	00010113          	mv	sp,sp
    80200008:	3700006f          	j	80200378 <main>
    8020000c:	0000                	unimp
    8020000e:	0000                	unimp
	...

0000000080200012 <r_sstatus>:
    80200012:	1101                	addi	sp,sp,-32 # 8021bfe0 <boot_stack+0xffe0>
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

0000000080200030 <load_init>:
    80200030:	1141                	addi	sp,sp,-16
    80200032:	e406                	sd	ra,8(sp)
    80200034:	e022                	sd	s0,0(sp)
    80200036:	0800                	addi	s0,sp,16
    80200038:	00024717          	auipc	a4,0x24
    8020003c:	fc870713          	addi	a4,a4,-56 # 80224000 <bss_end>
    80200040:	20100793          	li	a5,513
    80200044:	07da                	slli	a5,a5,0x16
    80200046:	00f76863          	bltu	a4,a5,80200056 <load_init+0x26>
    8020004a:	00004517          	auipc	a0,0x4
    8020004e:	fb650513          	addi	a0,a0,-74 # 80204000 <rodata_start>
    80200052:	522000ef          	jal	80200574 <panic>
    80200056:	00023797          	auipc	a5,0x23
    8020005a:	04278793          	addi	a5,a5,66 # 80223098 <app_info_ptr>
    8020005e:	00005717          	auipc	a4,0x5
    80200062:	fa270713          	addi	a4,a4,-94 # 80205000 <_num_app>
    80200066:	e398                	sd	a4,0(a5)
    80200068:	00023797          	auipc	a5,0x23
    8020006c:	03078793          	addi	a5,a5,48 # 80223098 <app_info_ptr>
    80200070:	639c                	ld	a5,0(a5)
    80200072:	6398                	ld	a4,0(a5)
    80200074:	00023797          	auipc	a5,0x23
    80200078:	02c78793          	addi	a5,a5,44 # 802230a0 <app_num>
    8020007c:	e398                	sd	a4,0(a5)
    8020007e:	00023797          	auipc	a5,0x23
    80200082:	02278793          	addi	a5,a5,34 # 802230a0 <app_num>
    80200086:	639c                	ld	a5,0(a5)
    80200088:	85be                	mv	a1,a5
    8020008a:	00004517          	auipc	a0,0x4
    8020008e:	f8e50513          	addi	a0,a0,-114 # 80204018 <rodata_start+0x18>
    80200092:	4d9000ef          	jal	80200d6a <printk>
    80200096:	00023797          	auipc	a5,0x23
    8020009a:	00278793          	addi	a5,a5,2 # 80223098 <app_info_ptr>
    8020009e:	639c                	ld	a5,0(a5)
    802000a0:	00878713          	addi	a4,a5,8
    802000a4:	00023797          	auipc	a5,0x23
    802000a8:	ff478793          	addi	a5,a5,-12 # 80223098 <app_info_ptr>
    802000ac:	e398                	sd	a4,0(a5)
    802000ae:	00004517          	auipc	a0,0x4
    802000b2:	f8250513          	addi	a0,a0,-126 # 80204030 <rodata_start+0x30>
    802000b6:	4b5000ef          	jal	80200d6a <printk>
    802000ba:	0001                	nop
    802000bc:	60a2                	ld	ra,8(sp)
    802000be:	6402                	ld	s0,0(sp)
    802000c0:	0141                	addi	sp,sp,16
    802000c2:	8082                	ret

00000000802000c4 <load_app_pgtbl>:
    802000c4:	715d                	addi	sp,sp,-80
    802000c6:	e486                	sd	ra,72(sp)
    802000c8:	e0a2                	sd	s0,64(sp)
    802000ca:	0880                	addi	s0,sp,80
    802000cc:	fca43423          	sd	a0,-56(s0)
    802000d0:	fcb43023          	sd	a1,-64(s0)
    802000d4:	fac43c23          	sd	a2,-72(s0)
    802000d8:	268020ef          	jal	80202340 <uvmcreate>
    802000dc:	fea43423          	sd	a0,-24(s0)
    802000e0:	fb843783          	ld	a5,-72(s0)
    802000e4:	739c                	ld	a5,32(a5)
    802000e6:	4719                	li	a4,6
    802000e8:	86be                	mv	a3,a5
    802000ea:	6605                	lui	a2,0x1
    802000ec:	020007b7          	lui	a5,0x2000
    802000f0:	17fd                	addi	a5,a5,-1 # 1ffffff <n+0x1ffffdf>
    802000f2:	00d79593          	slli	a1,a5,0xd
    802000f6:	fe843503          	ld	a0,-24(s0)
    802000fa:	763010ef          	jal	8020205c <mappages>
    802000fe:	87aa                	mv	a5,a0
    80200100:	0007d863          	bgez	a5,80200110 <load_app_pgtbl+0x4c>
    80200104:	00004517          	auipc	a0,0x4
    80200108:	f4450513          	addi	a0,a0,-188 # 80204048 <rodata_start+0x48>
    8020010c:	468000ef          	jal	80200574 <panic>
    80200110:	fc843703          	ld	a4,-56(s0)
    80200114:	6785                	lui	a5,0x1
    80200116:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80200118:	8ff9                	and	a5,a5,a4
    8020011a:	cf99                	beqz	a5,80200138 <load_app_pgtbl+0x74>
    8020011c:	fc843583          	ld	a1,-56(s0)
    80200120:	00004517          	auipc	a0,0x4
    80200124:	f5050513          	addi	a0,a0,-176 # 80204070 <rodata_start+0x70>
    80200128:	443000ef          	jal	80200d6a <printk>
    8020012c:	00004517          	auipc	a0,0x4
    80200130:	f7c50513          	addi	a0,a0,-132 # 802040a8 <rodata_start+0xa8>
    80200134:	440000ef          	jal	80200574 <panic>
    80200138:	fc043703          	ld	a4,-64(s0)
    8020013c:	6785                	lui	a5,0x1
    8020013e:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80200140:	8ff9                	and	a5,a5,a4
    80200142:	cb99                	beqz	a5,80200158 <load_app_pgtbl+0x94>
    80200144:	fc043603          	ld	a2,-64(s0)
    80200148:	fc843583          	ld	a1,-56(s0)
    8020014c:	00004517          	auipc	a0,0x4
    80200150:	f6450513          	addi	a0,a0,-156 # 802040b0 <rodata_start+0xb0>
    80200154:	417000ef          	jal	80200d6a <printk>
    80200158:	fc043703          	ld	a4,-64(s0)
    8020015c:	6785                	lui	a5,0x1
    8020015e:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80200160:	973e                	add	a4,a4,a5
    80200162:	77fd                	lui	a5,0xfffff
    80200164:	8ff9                	and	a5,a5,a4
    80200166:	fcf43023          	sd	a5,-64(s0)
    8020016a:	fc043703          	ld	a4,-64(s0)
    8020016e:	fc843783          	ld	a5,-56(s0)
    80200172:	40f707b3          	sub	a5,a4,a5
    80200176:	fef43023          	sd	a5,-32(s0)
    8020017a:	fe043603          	ld	a2,-32(s0)
    8020017e:	fc843583          	ld	a1,-56(s0)
    80200182:	00004517          	auipc	a0,0x4
    80200186:	f7650513          	addi	a0,a0,-138 # 802040f8 <rodata_start+0xf8>
    8020018a:	3e1000ef          	jal	80200d6a <printk>
    8020018e:	4779                	li	a4,30
    80200190:	fc843683          	ld	a3,-56(s0)
    80200194:	fe043603          	ld	a2,-32(s0)
    80200198:	40100793          	li	a5,1025
    8020019c:	01579593          	slli	a1,a5,0x15
    802001a0:	fe843503          	ld	a0,-24(s0)
    802001a4:	6b9010ef          	jal	8020205c <mappages>
    802001a8:	87aa                	mv	a5,a0
    802001aa:	c799                	beqz	a5,802001b8 <load_app_pgtbl+0xf4>
    802001ac:	00004517          	auipc	a0,0x4
    802001b0:	f7c50513          	addi	a0,a0,-132 # 80204128 <rodata_start+0x128>
    802001b4:	3c0000ef          	jal	80200574 <panic>
    802001b8:	fb843783          	ld	a5,-72(s0)
    802001bc:	fe843703          	ld	a4,-24(s0)
    802001c0:	e798                	sd	a4,8(a5)
    802001c2:	fe043703          	ld	a4,-32(s0)
    802001c6:	000807b7          	lui	a5,0x80
    802001ca:	20178793          	addi	a5,a5,513 # 80201 <n+0x801e1>
    802001ce:	07b2                	slli	a5,a5,0xc
    802001d0:	97ba                	add	a5,a5,a4
    802001d2:	fcf43c23          	sd	a5,-40(s0)
    802001d6:	5ef010ef          	jal	80201fc4 <kalloc>
    802001da:	87aa                	mv	a5,a0
    802001dc:	4779                	li	a4,30
    802001de:	86be                	mv	a3,a5
    802001e0:	6605                	lui	a2,0x1
    802001e2:	fd843583          	ld	a1,-40(s0)
    802001e6:	fe843503          	ld	a0,-24(s0)
    802001ea:	673010ef          	jal	8020205c <mappages>
    802001ee:	fb843783          	ld	a5,-72(s0)
    802001f2:	fd843703          	ld	a4,-40(s0)
    802001f6:	ef98                	sd	a4,24(a5)
    802001f8:	fb843783          	ld	a5,-72(s0)
    802001fc:	739c                	ld	a5,32(a5)
    802001fe:	40100713          	li	a4,1025
    80200202:	0756                	slli	a4,a4,0x15
    80200204:	10e7b423          	sd	a4,264(a5)
    80200208:	fb843783          	ld	a5,-72(s0)
    8020020c:	6f94                	ld	a3,24(a5)
    8020020e:	fb843783          	ld	a5,-72(s0)
    80200212:	739c                	ld	a5,32(a5)
    80200214:	6705                	lui	a4,0x1
    80200216:	9736                	add	a4,a4,a3
    80200218:	eb98                	sd	a4,16(a5)
    8020021a:	df9ff0ef          	jal	80200012 <r_sstatus>
    8020021e:	87aa                	mv	a5,a0
    80200220:	edf7f713          	andi	a4,a5,-289
    80200224:	fb843783          	ld	a5,-72(s0)
    80200228:	739c                	ld	a5,32(a5)
    8020022a:	02076713          	ori	a4,a4,32
    8020022e:	10e7b023          	sd	a4,256(a5)
    80200232:	fe843783          	ld	a5,-24(s0)
    80200236:	853e                	mv	a0,a5
    80200238:	60a6                	ld	ra,72(sp)
    8020023a:	6406                	ld	s0,64(sp)
    8020023c:	6161                	addi	sp,sp,80
    8020023e:	8082                	ret

0000000080200240 <run_all_app>:
    80200240:	1101                	addi	sp,sp,-32
    80200242:	ec06                	sd	ra,24(sp)
    80200244:	e822                	sd	s0,16(sp)
    80200246:	1000                	addi	s0,sp,32
    80200248:	fe043423          	sd	zero,-24(s0)
    8020024c:	a079                	j	802002da <run_all_app+0x9a>
    8020024e:	0ff010ef          	jal	80201b4c <allocate_proc>
    80200252:	fea43023          	sd	a0,-32(s0)
    80200256:	00023797          	auipc	a5,0x23
    8020025a:	e4278793          	addi	a5,a5,-446 # 80223098 <app_info_ptr>
    8020025e:	6398                	ld	a4,0(a5)
    80200260:	fe843783          	ld	a5,-24(s0)
    80200264:	078e                	slli	a5,a5,0x3
    80200266:	97ba                	add	a5,a5,a4
    80200268:	6390                	ld	a2,0(a5)
    8020026a:	00023797          	auipc	a5,0x23
    8020026e:	e2e78793          	addi	a5,a5,-466 # 80223098 <app_info_ptr>
    80200272:	6398                	ld	a4,0(a5)
    80200274:	fe843783          	ld	a5,-24(s0)
    80200278:	0785                	addi	a5,a5,1
    8020027a:	078e                	slli	a5,a5,0x3
    8020027c:	97ba                	add	a5,a5,a4
    8020027e:	639c                	ld	a5,0(a5)
    80200280:	86be                	mv	a3,a5
    80200282:	fe843583          	ld	a1,-24(s0)
    80200286:	00004517          	auipc	a0,0x4
    8020028a:	ec250513          	addi	a0,a0,-318 # 80204148 <rodata_start+0x148>
    8020028e:	2dd000ef          	jal	80200d6a <printk>
    80200292:	00023797          	auipc	a5,0x23
    80200296:	e0678793          	addi	a5,a5,-506 # 80223098 <app_info_ptr>
    8020029a:	6398                	ld	a4,0(a5)
    8020029c:	fe843783          	ld	a5,-24(s0)
    802002a0:	078e                	slli	a5,a5,0x3
    802002a2:	97ba                	add	a5,a5,a4
    802002a4:	6394                	ld	a3,0(a5)
    802002a6:	00023797          	auipc	a5,0x23
    802002aa:	df278793          	addi	a5,a5,-526 # 80223098 <app_info_ptr>
    802002ae:	6398                	ld	a4,0(a5)
    802002b0:	fe843783          	ld	a5,-24(s0)
    802002b4:	0785                	addi	a5,a5,1
    802002b6:	078e                	slli	a5,a5,0x3
    802002b8:	97ba                	add	a5,a5,a4
    802002ba:	639c                	ld	a5,0(a5)
    802002bc:	fe043603          	ld	a2,-32(s0)
    802002c0:	85be                	mv	a1,a5
    802002c2:	8536                	mv	a0,a3
    802002c4:	e01ff0ef          	jal	802000c4 <load_app_pgtbl>
    802002c8:	fe043783          	ld	a5,-32(s0)
    802002cc:	4705                	li	a4,1
    802002ce:	c398                	sw	a4,0(a5)
    802002d0:	fe843783          	ld	a5,-24(s0)
    802002d4:	0785                	addi	a5,a5,1
    802002d6:	fef43423          	sd	a5,-24(s0)
    802002da:	00023797          	auipc	a5,0x23
    802002de:	dc678793          	addi	a5,a5,-570 # 802230a0 <app_num>
    802002e2:	639c                	ld	a5,0(a5)
    802002e4:	fe843703          	ld	a4,-24(s0)
    802002e8:	f6f763e3          	bltu	a4,a5,8020024e <run_all_app+0xe>
    802002ec:	00004517          	auipc	a0,0x4
    802002f0:	e8450513          	addi	a0,a0,-380 # 80204170 <rodata_start+0x170>
    802002f4:	277000ef          	jal	80200d6a <printk>
    802002f8:	4781                	li	a5,0
    802002fa:	853e                	mv	a0,a5
    802002fc:	60e2                	ld	ra,24(sp)
    802002fe:	6442                	ld	s0,16(sp)
    80200300:	6105                	addi	sp,sp,32
    80200302:	8082                	ret

0000000080200304 <clear_bss>:
    80200304:	1101                	addi	sp,sp,-32
    80200306:	ec06                	sd	ra,24(sp)
    80200308:	e822                	sd	s0,16(sp)
    8020030a:	1000                	addi	s0,sp,32
    8020030c:	00024617          	auipc	a2,0x24
    80200310:	cf460613          	addi	a2,a2,-780 # 80224000 <bss_end>
    80200314:	0001c597          	auipc	a1,0x1c
    80200318:	cec58593          	addi	a1,a1,-788 # 8021c000 <proc>
    8020031c:	00004517          	auipc	a0,0x4
    80200320:	e7450513          	addi	a0,a0,-396 # 80204190 <rodata_start+0x190>
    80200324:	247000ef          	jal	80200d6a <printk>
    80200328:	00004517          	auipc	a0,0x4
    8020032c:	ea050513          	addi	a0,a0,-352 # 802041c8 <rodata_start+0x1c8>
    80200330:	23b000ef          	jal	80200d6a <printk>
    80200334:	0001c797          	auipc	a5,0x1c
    80200338:	ccc78793          	addi	a5,a5,-820 # 8021c000 <proc>
    8020033c:	fef43423          	sd	a5,-24(s0)
    80200340:	00024797          	auipc	a5,0x24
    80200344:	cc078793          	addi	a5,a5,-832 # 80224000 <bss_end>
    80200348:	fef43023          	sd	a5,-32(s0)
    8020034c:	a811                	j	80200360 <clear_bss+0x5c>
    8020034e:	fe843783          	ld	a5,-24(s0)
    80200352:	00078023          	sb	zero,0(a5)
    80200356:	fe843783          	ld	a5,-24(s0)
    8020035a:	0785                	addi	a5,a5,1
    8020035c:	fef43423          	sd	a5,-24(s0)
    80200360:	fe843703          	ld	a4,-24(s0)
    80200364:	fe043783          	ld	a5,-32(s0)
    80200368:	fef763e3          	bltu	a4,a5,8020034e <clear_bss+0x4a>
    8020036c:	0001                	nop
    8020036e:	0001                	nop
    80200370:	60e2                	ld	ra,24(sp)
    80200372:	6442                	ld	s0,16(sp)
    80200374:	6105                	addi	sp,sp,32
    80200376:	8082                	ret

0000000080200378 <main>:
    80200378:	1141                	addi	sp,sp,-16
    8020037a:	e406                	sd	ra,8(sp)
    8020037c:	e022                	sd	s0,0(sp)
    8020037e:	0800                	addi	s0,sp,16
    80200380:	f85ff0ef          	jal	80200304 <clear_bss>
    80200384:	6ca010ef          	jal	80201a4e <proc_init>
    80200388:	385010ef          	jal	80201f0c <kernel_init>
    8020038c:	695010ef          	jal	80202220 <kvm_init>
    80200390:	ca1ff0ef          	jal	80200030 <load_init>
    80200394:	50f000ef          	jal	802010a2 <trap_init>
    80200398:	2d1010ef          	jal	80201e68 <timer_init>
    8020039c:	ea5ff0ef          	jal	80200240 <run_all_app>
    802003a0:	06f010ef          	jal	80201c0e <scheduler>
    802003a4:	00004517          	auipc	a0,0x4
    802003a8:	e4450513          	addi	a0,a0,-444 # 802041e8 <rodata_start+0x1e8>
    802003ac:	1c8000ef          	jal	80200574 <panic>
    802003b0:	4781                	li	a5,0
    802003b2:	853e                	mv	a0,a5
    802003b4:	60a2                	ld	ra,8(sp)
    802003b6:	6402                	ld	s0,0(sp)
    802003b8:	0141                	addi	sp,sp,16
    802003ba:	8082                	ret

00000000802003bc <sbi_ecall>:
    802003bc:	7159                	addi	sp,sp,-112
    802003be:	f486                	sd	ra,104(sp)
    802003c0:	f0a2                	sd	s0,96(sp)
    802003c2:	1880                	addi	s0,sp,112
    802003c4:	fca43423          	sd	a0,-56(s0)
    802003c8:	fcb43023          	sd	a1,-64(s0)
    802003cc:	fac43c23          	sd	a2,-72(s0)
    802003d0:	fad43823          	sd	a3,-80(s0)
    802003d4:	fae43423          	sd	a4,-88(s0)
    802003d8:	faf43023          	sd	a5,-96(s0)
    802003dc:	f9043c23          	sd	a6,-104(s0)
    802003e0:	f9143823          	sd	a7,-112(s0)
    802003e4:	fb843503          	ld	a0,-72(s0)
    802003e8:	fb043583          	ld	a1,-80(s0)
    802003ec:	fa843603          	ld	a2,-88(s0)
    802003f0:	fa043683          	ld	a3,-96(s0)
    802003f4:	f9843703          	ld	a4,-104(s0)
    802003f8:	f9043783          	ld	a5,-112(s0)
    802003fc:	fc043803          	ld	a6,-64(s0)
    80200400:	fc843883          	ld	a7,-56(s0)
    80200404:	00000073          	ecall
    80200408:	87aa                	mv	a5,a0
    8020040a:	fcf43823          	sd	a5,-48(s0)
    8020040e:	87ae                	mv	a5,a1
    80200410:	fcf43c23          	sd	a5,-40(s0)
    80200414:	fd043783          	ld	a5,-48(s0)
    80200418:	fef43023          	sd	a5,-32(s0)
    8020041c:	fd843783          	ld	a5,-40(s0)
    80200420:	fef43423          	sd	a5,-24(s0)
    80200424:	fe043703          	ld	a4,-32(s0)
    80200428:	fe843783          	ld	a5,-24(s0)
    8020042c:	833a                	mv	t1,a4
    8020042e:	83be                	mv	t2,a5
    80200430:	871a                	mv	a4,t1
    80200432:	879e                	mv	a5,t2
    80200434:	853a                	mv	a0,a4
    80200436:	85be                	mv	a1,a5
    80200438:	70a6                	ld	ra,104(sp)
    8020043a:	7406                	ld	s0,96(sp)
    8020043c:	6165                	addi	sp,sp,112
    8020043e:	8082                	ret

0000000080200440 <sbi_set_timer>:
    80200440:	1101                	addi	sp,sp,-32
    80200442:	ec06                	sd	ra,24(sp)
    80200444:	e822                	sd	s0,16(sp)
    80200446:	1000                	addi	s0,sp,32
    80200448:	fea43423          	sd	a0,-24(s0)
    8020044c:	4881                	li	a7,0
    8020044e:	4801                	li	a6,0
    80200450:	4781                	li	a5,0
    80200452:	4701                	li	a4,0
    80200454:	4681                	li	a3,0
    80200456:	fe843603          	ld	a2,-24(s0)
    8020045a:	4581                	li	a1,0
    8020045c:	54495537          	lui	a0,0x54495
    80200460:	d4550513          	addi	a0,a0,-699 # 54494d45 <n+0x54494d25>
    80200464:	f59ff0ef          	jal	802003bc <sbi_ecall>
    80200468:	0001                	nop
    8020046a:	60e2                	ld	ra,24(sp)
    8020046c:	6442                	ld	s0,16(sp)
    8020046e:	6105                	addi	sp,sp,32
    80200470:	8082                	ret

0000000080200472 <sbi_console_putchar>:
    80200472:	1101                	addi	sp,sp,-32
    80200474:	ec06                	sd	ra,24(sp)
    80200476:	e822                	sd	s0,16(sp)
    80200478:	1000                	addi	s0,sp,32
    8020047a:	87aa                	mv	a5,a0
    8020047c:	fef407a3          	sb	a5,-17(s0)
    80200480:	fef40603          	lb	a2,-17(s0)
    80200484:	4881                	li	a7,0
    80200486:	4801                	li	a6,0
    80200488:	4781                	li	a5,0
    8020048a:	4701                	li	a4,0
    8020048c:	4681                	li	a3,0
    8020048e:	4581                	li	a1,0
    80200490:	4505                	li	a0,1
    80200492:	f2bff0ef          	jal	802003bc <sbi_ecall>
    80200496:	0001                	nop
    80200498:	60e2                	ld	ra,24(sp)
    8020049a:	6442                	ld	s0,16(sp)
    8020049c:	6105                	addi	sp,sp,32
    8020049e:	8082                	ret

00000000802004a0 <sbi_shut_down>:
    802004a0:	1101                	addi	sp,sp,-32
    802004a2:	ec06                	sd	ra,24(sp)
    802004a4:	e822                	sd	s0,16(sp)
    802004a6:	1000                	addi	s0,sp,32
    802004a8:	fea43423          	sd	a0,-24(s0)
    802004ac:	4881                	li	a7,0
    802004ae:	4801                	li	a6,0
    802004b0:	4781                	li	a5,0
    802004b2:	4701                	li	a4,0
    802004b4:	fe843683          	ld	a3,-24(s0)
    802004b8:	4601                	li	a2,0
    802004ba:	4581                	li	a1,0
    802004bc:	53525537          	lui	a0,0x53525
    802004c0:	35450513          	addi	a0,a0,852 # 53525354 <n+0x53525334>
    802004c4:	ef9ff0ef          	jal	802003bc <sbi_ecall>
    802004c8:	0001                	nop
    802004ca:	60e2                	ld	ra,24(sp)
    802004cc:	6442                	ld	s0,16(sp)
    802004ce:	6105                	addi	sp,sp,32
    802004d0:	8082                	ret

00000000802004d2 <sbi_get_sbi_spec_version>:
    802004d2:	1101                	addi	sp,sp,-32
    802004d4:	ec06                	sd	ra,24(sp)
    802004d6:	e822                	sd	s0,16(sp)
    802004d8:	1000                	addi	s0,sp,32
    802004da:	4881                	li	a7,0
    802004dc:	4801                	li	a6,0
    802004de:	4781                	li	a5,0
    802004e0:	4701                	li	a4,0
    802004e2:	4681                	li	a3,0
    802004e4:	4601                	li	a2,0
    802004e6:	4581                	li	a1,0
    802004e8:	4541                	li	a0,16
    802004ea:	ed3ff0ef          	jal	802003bc <sbi_ecall>
    802004ee:	872a                	mv	a4,a0
    802004f0:	87ae                	mv	a5,a1
    802004f2:	fee43023          	sd	a4,-32(s0)
    802004f6:	fef43423          	sd	a5,-24(s0)
    802004fa:	fe843783          	ld	a5,-24(s0)
    802004fe:	85be                	mv	a1,a5
    80200500:	00004517          	auipc	a0,0x4
    80200504:	d0050513          	addi	a0,a0,-768 # 80204200 <rodata_start+0x200>
    80200508:	063000ef          	jal	80200d6a <printk>
    8020050c:	0001                	nop
    8020050e:	60e2                	ld	ra,24(sp)
    80200510:	6442                	ld	s0,16(sp)
    80200512:	6105                	addi	sp,sp,32
    80200514:	8082                	ret

0000000080200516 <print>:
    80200516:	1101                	addi	sp,sp,-32
    80200518:	ec06                	sd	ra,24(sp)
    8020051a:	e822                	sd	s0,16(sp)
    8020051c:	1000                	addi	s0,sp,32
    8020051e:	fea43423          	sd	a0,-24(s0)
    80200522:	a821                	j	8020053a <print+0x24>
    80200524:	fe843783          	ld	a5,-24(s0)
    80200528:	00178713          	addi	a4,a5,1
    8020052c:	fee43423          	sd	a4,-24(s0)
    80200530:	00078783          	lb	a5,0(a5)
    80200534:	853e                	mv	a0,a5
    80200536:	f3dff0ef          	jal	80200472 <sbi_console_putchar>
    8020053a:	fe843783          	ld	a5,-24(s0)
    8020053e:	00078783          	lb	a5,0(a5)
    80200542:	f3ed                	bnez	a5,80200524 <print+0xe>
    80200544:	0001                	nop
    80200546:	0001                	nop
    80200548:	60e2                	ld	ra,24(sp)
    8020054a:	6442                	ld	s0,16(sp)
    8020054c:	6105                	addi	sp,sp,32
    8020054e:	8082                	ret

0000000080200550 <println>:
    80200550:	1101                	addi	sp,sp,-32
    80200552:	ec06                	sd	ra,24(sp)
    80200554:	e822                	sd	s0,16(sp)
    80200556:	1000                	addi	s0,sp,32
    80200558:	fea43423          	sd	a0,-24(s0)
    8020055c:	fe843503          	ld	a0,-24(s0)
    80200560:	fb7ff0ef          	jal	80200516 <print>
    80200564:	4529                	li	a0,10
    80200566:	f0dff0ef          	jal	80200472 <sbi_console_putchar>
    8020056a:	0001                	nop
    8020056c:	60e2                	ld	ra,24(sp)
    8020056e:	6442                	ld	s0,16(sp)
    80200570:	6105                	addi	sp,sp,32
    80200572:	8082                	ret

0000000080200574 <panic>:
    80200574:	1101                	addi	sp,sp,-32
    80200576:	ec06                	sd	ra,24(sp)
    80200578:	e822                	sd	s0,16(sp)
    8020057a:	1000                	addi	s0,sp,32
    8020057c:	fea43423          	sd	a0,-24(s0)
    80200580:	4529                	li	a0,10
    80200582:	ef1ff0ef          	jal	80200472 <sbi_console_putchar>
    80200586:	00004517          	auipc	a0,0x4
    8020058a:	c9250513          	addi	a0,a0,-878 # 80204218 <rodata_start+0x218>
    8020058e:	f89ff0ef          	jal	80200516 <print>
    80200592:	fe843503          	ld	a0,-24(s0)
    80200596:	fbbff0ef          	jal	80200550 <println>
    8020059a:	4505                	li	a0,1
    8020059c:	f05ff0ef          	jal	802004a0 <sbi_shut_down>
    802005a0:	0001                	nop
    802005a2:	60e2                	ld	ra,24(sp)
    802005a4:	6442                	ld	s0,16(sp)
    802005a6:	6105                	addi	sp,sp,32
    802005a8:	8082                	ret

00000000802005aa <mini_strlen>:
    802005aa:	7179                	addi	sp,sp,-48
    802005ac:	f406                	sd	ra,40(sp)
    802005ae:	f022                	sd	s0,32(sp)
    802005b0:	1800                	addi	s0,sp,48
    802005b2:	fca43c23          	sd	a0,-40(s0)
    802005b6:	fe042623          	sw	zero,-20(s0)
    802005ba:	a031                	j	802005c6 <mini_strlen+0x1c>
    802005bc:	fec42783          	lw	a5,-20(s0)
    802005c0:	2785                	addiw	a5,a5,1
    802005c2:	fef42623          	sw	a5,-20(s0)
    802005c6:	fec46783          	lwu	a5,-20(s0)
    802005ca:	fd843703          	ld	a4,-40(s0)
    802005ce:	97ba                	add	a5,a5,a4
    802005d0:	00078783          	lb	a5,0(a5)
    802005d4:	f7e5                	bnez	a5,802005bc <mini_strlen+0x12>
    802005d6:	fec42783          	lw	a5,-20(s0)
    802005da:	853e                	mv	a0,a5
    802005dc:	70a2                	ld	ra,40(sp)
    802005de:	7402                	ld	s0,32(sp)
    802005e0:	6145                	addi	sp,sp,48
    802005e2:	8082                	ret

00000000802005e4 <mini_itoa>:
    802005e4:	715d                	addi	sp,sp,-80
    802005e6:	e486                	sd	ra,72(sp)
    802005e8:	e0a2                	sd	s0,64(sp)
    802005ea:	0880                	addi	s0,sp,80
    802005ec:	fca43423          	sd	a0,-56(s0)
    802005f0:	fae43823          	sd	a4,-80(s0)
    802005f4:	873e                	mv	a4,a5
    802005f6:	87ae                	mv	a5,a1
    802005f8:	fcf42223          	sw	a5,-60(s0)
    802005fc:	87b2                	mv	a5,a2
    802005fe:	fcf42023          	sw	a5,-64(s0)
    80200602:	87b6                	mv	a5,a3
    80200604:	faf42e23          	sw	a5,-68(s0)
    80200608:	87ba                	mv	a5,a4
    8020060a:	faf42c23          	sw	a5,-72(s0)
    8020060e:	fb043783          	ld	a5,-80(s0)
    80200612:	fef43423          	sd	a5,-24(s0)
    80200616:	fe042223          	sw	zero,-28(s0)
    8020061a:	fc442783          	lw	a5,-60(s0)
    8020061e:	0007871b          	sext.w	a4,a5
    80200622:	47c1                	li	a5,16
    80200624:	00e7f463          	bgeu	a5,a4,8020062c <mini_itoa+0x48>
    80200628:	4781                	li	a5,0
    8020062a:	aaf9                	j	80200808 <mini_itoa+0x224>
    8020062c:	fc843783          	ld	a5,-56(s0)
    80200630:	0007df63          	bgez	a5,8020064e <mini_itoa+0x6a>
    80200634:	fbc42783          	lw	a5,-68(s0)
    80200638:	2781                	sext.w	a5,a5
    8020063a:	eb91                	bnez	a5,8020064e <mini_itoa+0x6a>
    8020063c:	4785                	li	a5,1
    8020063e:	fef42223          	sw	a5,-28(s0)
    80200642:	fc843783          	ld	a5,-56(s0)
    80200646:	40f007b3          	neg	a5,a5
    8020064a:	fcf43423          	sd	a5,-56(s0)
    8020064e:	fc042e23          	sw	zero,-36(s0)
    80200652:	fbc42783          	lw	a5,-68(s0)
    80200656:	2781                	sext.w	a5,a5
    80200658:	cb91                	beqz	a5,8020066c <mini_itoa+0x88>
    8020065a:	fc843703          	ld	a4,-56(s0)
    8020065e:	fc446783          	lwu	a5,-60(s0)
    80200662:	02f777b3          	remu	a5,a4,a5
    80200666:	fcf42e23          	sw	a5,-36(s0)
    8020066a:	a809                	j	8020067c <mini_itoa+0x98>
    8020066c:	fc446783          	lwu	a5,-60(s0)
    80200670:	fc843703          	ld	a4,-56(s0)
    80200674:	02f767b3          	rem	a5,a4,a5
    80200678:	fcf42e23          	sw	a5,-36(s0)
    8020067c:	fdc42783          	lw	a5,-36(s0)
    80200680:	0007871b          	sext.w	a4,a5
    80200684:	47a5                	li	a5,9
    80200686:	00e7cb63          	blt	a5,a4,8020069c <mini_itoa+0xb8>
    8020068a:	fdc42783          	lw	a5,-36(s0)
    8020068e:	0ff7f793          	zext.b	a5,a5
    80200692:	0307879b          	addiw	a5,a5,48
    80200696:	0ff7f713          	zext.b	a4,a5
    8020069a:	a025                	j	802006c2 <mini_itoa+0xde>
    8020069c:	fc042783          	lw	a5,-64(s0)
    802006a0:	2781                	sext.w	a5,a5
    802006a2:	c781                	beqz	a5,802006aa <mini_itoa+0xc6>
    802006a4:	04100793          	li	a5,65
    802006a8:	a019                	j	802006ae <mini_itoa+0xca>
    802006aa:	06100793          	li	a5,97
    802006ae:	fdc42703          	lw	a4,-36(s0)
    802006b2:	0ff77713          	zext.b	a4,a4
    802006b6:	9fb9                	addw	a5,a5,a4
    802006b8:	0ff7f793          	zext.b	a5,a5
    802006bc:	37d9                	addiw	a5,a5,-10
    802006be:	0ff7f713          	zext.b	a4,a5
    802006c2:	fe843783          	ld	a5,-24(s0)
    802006c6:	00178693          	addi	a3,a5,1
    802006ca:	fed43423          	sd	a3,-24(s0)
    802006ce:	00e78023          	sb	a4,0(a5)
    802006d2:	fbc42783          	lw	a5,-68(s0)
    802006d6:	2781                	sext.w	a5,a5
    802006d8:	cb91                	beqz	a5,802006ec <mini_itoa+0x108>
    802006da:	fc843703          	ld	a4,-56(s0)
    802006de:	fc446783          	lwu	a5,-60(s0)
    802006e2:	02f757b3          	divu	a5,a4,a5
    802006e6:	fcf43423          	sd	a5,-56(s0)
    802006ea:	a809                	j	802006fc <mini_itoa+0x118>
    802006ec:	fc446783          	lwu	a5,-60(s0)
    802006f0:	fc843703          	ld	a4,-56(s0)
    802006f4:	02f747b3          	div	a5,a4,a5
    802006f8:	fcf43423          	sd	a5,-56(s0)
    802006fc:	fc843783          	ld	a5,-56(s0)
    80200700:	f7b9                	bnez	a5,8020064e <mini_itoa+0x6a>
    80200702:	fe843703          	ld	a4,-24(s0)
    80200706:	fb043783          	ld	a5,-80(s0)
    8020070a:	40f707b3          	sub	a5,a4,a5
    8020070e:	fef42023          	sw	a5,-32(s0)
    80200712:	a005                	j	80200732 <mini_itoa+0x14e>
    80200714:	fe843783          	ld	a5,-24(s0)
    80200718:	00178713          	addi	a4,a5,1
    8020071c:	fee43423          	sd	a4,-24(s0)
    80200720:	03000713          	li	a4,48
    80200724:	00e78023          	sb	a4,0(a5)
    80200728:	fe042783          	lw	a5,-32(s0)
    8020072c:	2785                	addiw	a5,a5,1
    8020072e:	fef42023          	sw	a5,-32(s0)
    80200732:	fe042783          	lw	a5,-32(s0)
    80200736:	873e                	mv	a4,a5
    80200738:	fb842783          	lw	a5,-72(s0)
    8020073c:	2701                	sext.w	a4,a4
    8020073e:	2781                	sext.w	a5,a5
    80200740:	fcf76ae3          	bltu	a4,a5,80200714 <mini_itoa+0x130>
    80200744:	fe442783          	lw	a5,-28(s0)
    80200748:	2781                	sext.w	a5,a5
    8020074a:	cb99                	beqz	a5,80200760 <mini_itoa+0x17c>
    8020074c:	fe843783          	ld	a5,-24(s0)
    80200750:	00178713          	addi	a4,a5,1
    80200754:	fee43423          	sd	a4,-24(s0)
    80200758:	02d00713          	li	a4,45
    8020075c:	00e78023          	sb	a4,0(a5)
    80200760:	fe843783          	ld	a5,-24(s0)
    80200764:	00078023          	sb	zero,0(a5)
    80200768:	fe843703          	ld	a4,-24(s0)
    8020076c:	fb043783          	ld	a5,-80(s0)
    80200770:	40f707b3          	sub	a5,a4,a5
    80200774:	fcf42c23          	sw	a5,-40(s0)
    80200778:	fe042023          	sw	zero,-32(s0)
    8020077c:	a895                	j	802007f0 <mini_itoa+0x20c>
    8020077e:	fe046783          	lwu	a5,-32(s0)
    80200782:	fb043703          	ld	a4,-80(s0)
    80200786:	97ba                	add	a5,a5,a4
    80200788:	0007c783          	lbu	a5,0(a5)
    8020078c:	fcf40ba3          	sb	a5,-41(s0)
    80200790:	fd842783          	lw	a5,-40(s0)
    80200794:	873e                	mv	a4,a5
    80200796:	fe042783          	lw	a5,-32(s0)
    8020079a:	40f707bb          	subw	a5,a4,a5
    8020079e:	2781                	sext.w	a5,a5
    802007a0:	37fd                	addiw	a5,a5,-1
    802007a2:	2781                	sext.w	a5,a5
    802007a4:	1782                	slli	a5,a5,0x20
    802007a6:	9381                	srli	a5,a5,0x20
    802007a8:	fb043703          	ld	a4,-80(s0)
    802007ac:	973e                	add	a4,a4,a5
    802007ae:	fe046783          	lwu	a5,-32(s0)
    802007b2:	fb043683          	ld	a3,-80(s0)
    802007b6:	97b6                	add	a5,a5,a3
    802007b8:	00074703          	lbu	a4,0(a4) # 1000 <n+0xfe0>
    802007bc:	00e78023          	sb	a4,0(a5)
    802007c0:	fd842783          	lw	a5,-40(s0)
    802007c4:	873e                	mv	a4,a5
    802007c6:	fe042783          	lw	a5,-32(s0)
    802007ca:	40f707bb          	subw	a5,a4,a5
    802007ce:	2781                	sext.w	a5,a5
    802007d0:	37fd                	addiw	a5,a5,-1
    802007d2:	2781                	sext.w	a5,a5
    802007d4:	1782                	slli	a5,a5,0x20
    802007d6:	9381                	srli	a5,a5,0x20
    802007d8:	fb043703          	ld	a4,-80(s0)
    802007dc:	97ba                	add	a5,a5,a4
    802007de:	fd744703          	lbu	a4,-41(s0)
    802007e2:	00e78023          	sb	a4,0(a5)
    802007e6:	fe042783          	lw	a5,-32(s0)
    802007ea:	2785                	addiw	a5,a5,1
    802007ec:	fef42023          	sw	a5,-32(s0)
    802007f0:	fd842783          	lw	a5,-40(s0)
    802007f4:	0017d79b          	srliw	a5,a5,0x1
    802007f8:	2781                	sext.w	a5,a5
    802007fa:	fe042703          	lw	a4,-32(s0)
    802007fe:	2701                	sext.w	a4,a4
    80200800:	f6f76fe3          	bltu	a4,a5,8020077e <mini_itoa+0x19a>
    80200804:	fd842783          	lw	a5,-40(s0)
    80200808:	853e                	mv	a0,a5
    8020080a:	60a6                	ld	ra,72(sp)
    8020080c:	6406                	ld	s0,64(sp)
    8020080e:	6161                	addi	sp,sp,80
    80200810:	8082                	ret

0000000080200812 <_putc>:
    80200812:	1101                	addi	sp,sp,-32
    80200814:	ec06                	sd	ra,24(sp)
    80200816:	e822                	sd	s0,16(sp)
    80200818:	1000                	addi	s0,sp,32
    8020081a:	87aa                	mv	a5,a0
    8020081c:	feb43023          	sd	a1,-32(s0)
    80200820:	fef42623          	sw	a5,-20(s0)
    80200824:	fe043783          	ld	a5,-32(s0)
    80200828:	6798                	ld	a4,8(a5)
    8020082a:	fe043783          	ld	a5,-32(s0)
    8020082e:	639c                	ld	a5,0(a5)
    80200830:	40f707b3          	sub	a5,a4,a5
    80200834:	2781                	sext.w	a5,a5
    80200836:	2785                	addiw	a5,a5,1
    80200838:	0007871b          	sext.w	a4,a5
    8020083c:	fe043783          	ld	a5,-32(s0)
    80200840:	4b9c                	lw	a5,16(a5)
    80200842:	00f76463          	bltu	a4,a5,8020084a <_putc+0x38>
    80200846:	4781                	li	a5,0
    80200848:	a02d                	j	80200872 <_putc+0x60>
    8020084a:	fe043783          	ld	a5,-32(s0)
    8020084e:	679c                	ld	a5,8(a5)
    80200850:	00178693          	addi	a3,a5,1
    80200854:	fe043703          	ld	a4,-32(s0)
    80200858:	e714                	sd	a3,8(a4)
    8020085a:	fec42703          	lw	a4,-20(s0)
    8020085e:	0ff77713          	zext.b	a4,a4
    80200862:	00e78023          	sb	a4,0(a5)
    80200866:	fe043783          	ld	a5,-32(s0)
    8020086a:	679c                	ld	a5,8(a5)
    8020086c:	00078023          	sb	zero,0(a5)
    80200870:	4785                	li	a5,1
    80200872:	853e                	mv	a0,a5
    80200874:	60e2                	ld	ra,24(sp)
    80200876:	6442                	ld	s0,16(sp)
    80200878:	6105                	addi	sp,sp,32
    8020087a:	8082                	ret

000000008020087c <_puts>:
    8020087c:	7139                	addi	sp,sp,-64
    8020087e:	fc06                	sd	ra,56(sp)
    80200880:	f822                	sd	s0,48(sp)
    80200882:	0080                	addi	s0,sp,64
    80200884:	fca43c23          	sd	a0,-40(s0)
    80200888:	87ae                	mv	a5,a1
    8020088a:	fcc43423          	sd	a2,-56(s0)
    8020088e:	fcf42a23          	sw	a5,-44(s0)
    80200892:	fc843783          	ld	a5,-56(s0)
    80200896:	4b9c                	lw	a5,16(a5)
    80200898:	02079713          	slli	a4,a5,0x20
    8020089c:	9301                	srli	a4,a4,0x20
    8020089e:	fc843783          	ld	a5,-56(s0)
    802008a2:	6794                	ld	a3,8(a5)
    802008a4:	fc843783          	ld	a5,-56(s0)
    802008a8:	639c                	ld	a5,0(a5)
    802008aa:	40f687b3          	sub	a5,a3,a5
    802008ae:	8f1d                	sub	a4,a4,a5
    802008b0:	fd446783          	lwu	a5,-44(s0)
    802008b4:	02e7c463          	blt	a5,a4,802008dc <_puts+0x60>
    802008b8:	fc843783          	ld	a5,-56(s0)
    802008bc:	4b98                	lw	a4,16(a5)
    802008be:	fc843783          	ld	a5,-56(s0)
    802008c2:	6794                	ld	a3,8(a5)
    802008c4:	fc843783          	ld	a5,-56(s0)
    802008c8:	639c                	ld	a5,0(a5)
    802008ca:	40f687b3          	sub	a5,a3,a5
    802008ce:	2781                	sext.w	a5,a5
    802008d0:	40f707bb          	subw	a5,a4,a5
    802008d4:	2781                	sext.w	a5,a5
    802008d6:	37fd                	addiw	a5,a5,-1
    802008d8:	fcf42a23          	sw	a5,-44(s0)
    802008dc:	fe042623          	sw	zero,-20(s0)
    802008e0:	a03d                	j	8020090e <_puts+0x92>
    802008e2:	fec46783          	lwu	a5,-20(s0)
    802008e6:	fd843703          	ld	a4,-40(s0)
    802008ea:	973e                	add	a4,a4,a5
    802008ec:	fc843783          	ld	a5,-56(s0)
    802008f0:	679c                	ld	a5,8(a5)
    802008f2:	00178613          	addi	a2,a5,1
    802008f6:	fc843683          	ld	a3,-56(s0)
    802008fa:	e690                	sd	a2,8(a3)
    802008fc:	00074703          	lbu	a4,0(a4)
    80200900:	00e78023          	sb	a4,0(a5)
    80200904:	fec42783          	lw	a5,-20(s0)
    80200908:	2785                	addiw	a5,a5,1
    8020090a:	fef42623          	sw	a5,-20(s0)
    8020090e:	fec42783          	lw	a5,-20(s0)
    80200912:	873e                	mv	a4,a5
    80200914:	fd442783          	lw	a5,-44(s0)
    80200918:	2701                	sext.w	a4,a4
    8020091a:	2781                	sext.w	a5,a5
    8020091c:	fcf763e3          	bltu	a4,a5,802008e2 <_puts+0x66>
    80200920:	fc843783          	ld	a5,-56(s0)
    80200924:	679c                	ld	a5,8(a5)
    80200926:	00078023          	sb	zero,0(a5)
    8020092a:	fd442783          	lw	a5,-44(s0)
    8020092e:	853e                	mv	a0,a5
    80200930:	70e2                	ld	ra,56(sp)
    80200932:	7442                	ld	s0,48(sp)
    80200934:	6121                	addi	sp,sp,64
    80200936:	8082                	ret

0000000080200938 <mini_vsnprintf>:
    80200938:	7119                	addi	sp,sp,-128
    8020093a:	fc86                	sd	ra,120(sp)
    8020093c:	f8a2                	sd	s0,112(sp)
    8020093e:	0100                	addi	s0,sp,128
    80200940:	f8a43c23          	sd	a0,-104(s0)
    80200944:	87ae                	mv	a5,a1
    80200946:	f8c43423          	sd	a2,-120(s0)
    8020094a:	f8d43023          	sd	a3,-128(s0)
    8020094e:	f8f42a23          	sw	a5,-108(s0)
    80200952:	f9843783          	ld	a5,-104(s0)
    80200956:	fcf43023          	sd	a5,-64(s0)
    8020095a:	f9843783          	ld	a5,-104(s0)
    8020095e:	fcf43423          	sd	a5,-56(s0)
    80200962:	f9442783          	lw	a5,-108(s0)
    80200966:	fcf42823          	sw	a5,-48(s0)
    8020096a:	a4f1                	j	80200c36 <mini_vsnprintf+0x2fe>
    8020096c:	fc843703          	ld	a4,-56(s0)
    80200970:	fc043783          	ld	a5,-64(s0)
    80200974:	40f707b3          	sub	a5,a4,a5
    80200978:	2781                	sext.w	a5,a5
    8020097a:	2785                	addiw	a5,a5,1
    8020097c:	0007871b          	sext.w	a4,a5
    80200980:	fd042783          	lw	a5,-48(s0)
    80200984:	2cf77a63          	bgeu	a4,a5,80200c58 <mini_vsnprintf+0x320>
    80200988:	fef44783          	lbu	a5,-17(s0)
    8020098c:	0ff7f713          	zext.b	a4,a5
    80200990:	02500793          	li	a5,37
    80200994:	00f70c63          	beq	a4,a5,802009ac <mini_vsnprintf+0x74>
    80200998:	fef44783          	lbu	a5,-17(s0)
    8020099c:	2781                	sext.w	a5,a5
    8020099e:	fc040713          	addi	a4,s0,-64
    802009a2:	85ba                	mv	a1,a4
    802009a4:	853e                	mv	a0,a5
    802009a6:	e6dff0ef          	jal	80200812 <_putc>
    802009aa:	a471                	j	80200c36 <mini_vsnprintf+0x2fe>
    802009ac:	fe040723          	sb	zero,-18(s0)
    802009b0:	fe042423          	sw	zero,-24(s0)
    802009b4:	f8843783          	ld	a5,-120(s0)
    802009b8:	00178713          	addi	a4,a5,1
    802009bc:	f8e43423          	sd	a4,-120(s0)
    802009c0:	0007c783          	lbu	a5,0(a5)
    802009c4:	fef407a3          	sb	a5,-17(s0)
    802009c8:	fef44783          	lbu	a5,-17(s0)
    802009cc:	0ff7f713          	zext.b	a4,a5
    802009d0:	03000793          	li	a5,48
    802009d4:	06f71c63          	bne	a4,a5,80200a4c <mini_vsnprintf+0x114>
    802009d8:	a899                	j	80200a2e <mini_vsnprintf+0xf6>
    802009da:	fef44783          	lbu	a5,-17(s0)
    802009de:	0ff7f793          	zext.b	a5,a5
    802009e2:	26078d63          	beqz	a5,80200c5c <mini_vsnprintf+0x324>
    802009e6:	fef44783          	lbu	a5,-17(s0)
    802009ea:	0ff7f713          	zext.b	a4,a5
    802009ee:	02f00793          	li	a5,47
    802009f2:	04e7fd63          	bgeu	a5,a4,80200a4c <mini_vsnprintf+0x114>
    802009f6:	fef44783          	lbu	a5,-17(s0)
    802009fa:	0ff7f713          	zext.b	a4,a5
    802009fe:	03900793          	li	a5,57
    80200a02:	04e7e563          	bltu	a5,a4,80200a4c <mini_vsnprintf+0x114>
    80200a06:	fee44783          	lbu	a5,-18(s0)
    80200a0a:	873e                	mv	a4,a5
    80200a0c:	87ba                	mv	a5,a4
    80200a0e:	0027979b          	slliw	a5,a5,0x2
    80200a12:	9fb9                	addw	a5,a5,a4
    80200a14:	0017979b          	slliw	a5,a5,0x1
    80200a18:	0ff7f793          	zext.b	a5,a5
    80200a1c:	fef44703          	lbu	a4,-17(s0)
    80200a20:	9fb9                	addw	a5,a5,a4
    80200a22:	0ff7f793          	zext.b	a5,a5
    80200a26:	fd07879b          	addiw	a5,a5,-48
    80200a2a:	fef40723          	sb	a5,-18(s0)
    80200a2e:	f8843783          	ld	a5,-120(s0)
    80200a32:	00178713          	addi	a4,a5,1
    80200a36:	f8e43423          	sd	a4,-120(s0)
    80200a3a:	0007c783          	lbu	a5,0(a5)
    80200a3e:	fef407a3          	sb	a5,-17(s0)
    80200a42:	fef44783          	lbu	a5,-17(s0)
    80200a46:	0ff7f793          	zext.b	a5,a5
    80200a4a:	fbc1                	bnez	a5,802009da <mini_vsnprintf+0xa2>
    80200a4c:	fef44783          	lbu	a5,-17(s0)
    80200a50:	0ff7f713          	zext.b	a4,a5
    80200a54:	06c00793          	li	a5,108
    80200a58:	00f71f63          	bne	a4,a5,80200a76 <mini_vsnprintf+0x13e>
    80200a5c:	4785                	li	a5,1
    80200a5e:	fef42423          	sw	a5,-24(s0)
    80200a62:	f8843783          	ld	a5,-120(s0)
    80200a66:	00178713          	addi	a4,a5,1
    80200a6a:	f8e43423          	sd	a4,-120(s0)
    80200a6e:	0007c783          	lbu	a5,0(a5)
    80200a72:	fef407a3          	sb	a5,-17(s0)
    80200a76:	fef44783          	lbu	a5,-17(s0)
    80200a7a:	2781                	sext.w	a5,a5
    80200a7c:	1e078263          	beqz	a5,80200c60 <mini_vsnprintf+0x328>
    80200a80:	1a07c163          	bltz	a5,80200c22 <mini_vsnprintf+0x2ea>
    80200a84:	07800713          	li	a4,120
    80200a88:	18f74d63          	blt	a4,a5,80200c22 <mini_vsnprintf+0x2ea>
    80200a8c:	05800713          	li	a4,88
    80200a90:	18e7c963          	blt	a5,a4,80200c22 <mini_vsnprintf+0x2ea>
    80200a94:	fa87879b          	addiw	a5,a5,-88
    80200a98:	86be                	mv	a3,a5
    80200a9a:	0006871b          	sext.w	a4,a3
    80200a9e:	02000793          	li	a5,32
    80200aa2:	18e7e063          	bltu	a5,a4,80200c22 <mini_vsnprintf+0x2ea>
    80200aa6:	02069793          	slli	a5,a3,0x20
    80200aaa:	9381                	srli	a5,a5,0x20
    80200aac:	00279713          	slli	a4,a5,0x2
    80200ab0:	00003797          	auipc	a5,0x3
    80200ab4:	77478793          	addi	a5,a5,1908 # 80204224 <rodata_start+0x224>
    80200ab8:	97ba                	add	a5,a5,a4
    80200aba:	439c                	lw	a5,0(a5)
    80200abc:	0007871b          	sext.w	a4,a5
    80200ac0:	00003797          	auipc	a5,0x3
    80200ac4:	76478793          	addi	a5,a5,1892 # 80204224 <rodata_start+0x224>
    80200ac8:	97ba                	add	a5,a5,a4
    80200aca:	8782                	jr	a5
    80200acc:	4785                	li	a5,1
    80200ace:	fef42423          	sw	a5,-24(s0)
    80200ad2:	a295                	j	80200c36 <mini_vsnprintf+0x2fe>
    80200ad4:	fe842783          	lw	a5,-24(s0)
    80200ad8:	2781                	sext.w	a5,a5
    80200ada:	ef81                	bnez	a5,80200af2 <mini_vsnprintf+0x1ba>
    80200adc:	f8043783          	ld	a5,-128(s0)
    80200ae0:	00878713          	addi	a4,a5,8
    80200ae4:	f8e43023          	sd	a4,-128(s0)
    80200ae8:	439c                	lw	a5,0(a5)
    80200aea:	02079513          	slli	a0,a5,0x20
    80200aee:	9101                	srli	a0,a0,0x20
    80200af0:	a809                	j	80200b02 <mini_vsnprintf+0x1ca>
    80200af2:	f8043783          	ld	a5,-128(s0)
    80200af6:	00878713          	addi	a4,a5,8
    80200afa:	f8e43023          	sd	a4,-128(s0)
    80200afe:	639c                	ld	a5,0(a5)
    80200b00:	853e                	mv	a0,a5
    80200b02:	fef44783          	lbu	a5,-17(s0)
    80200b06:	0007871b          	sext.w	a4,a5
    80200b0a:	07500793          	li	a5,117
    80200b0e:	40f707b3          	sub	a5,a4,a5
    80200b12:	0017b793          	seqz	a5,a5
    80200b16:	0ff7f793          	zext.b	a5,a5
    80200b1a:	0007869b          	sext.w	a3,a5
    80200b1e:	fee44783          	lbu	a5,-18(s0)
    80200b22:	2781                	sext.w	a5,a5
    80200b24:	fa840713          	addi	a4,s0,-88
    80200b28:	4601                	li	a2,0
    80200b2a:	45a9                	li	a1,10
    80200b2c:	ab9ff0ef          	jal	802005e4 <mini_itoa>
    80200b30:	87aa                	mv	a5,a0
    80200b32:	fcf42e23          	sw	a5,-36(s0)
    80200b36:	fc040693          	addi	a3,s0,-64
    80200b3a:	fdc42703          	lw	a4,-36(s0)
    80200b3e:	fa840793          	addi	a5,s0,-88
    80200b42:	8636                	mv	a2,a3
    80200b44:	85ba                	mv	a1,a4
    80200b46:	853e                	mv	a0,a5
    80200b48:	d35ff0ef          	jal	8020087c <_puts>
    80200b4c:	fe042423          	sw	zero,-24(s0)
    80200b50:	a0dd                	j	80200c36 <mini_vsnprintf+0x2fe>
    80200b52:	fe842783          	lw	a5,-24(s0)
    80200b56:	2781                	sext.w	a5,a5
    80200b58:	ef81                	bnez	a5,80200b70 <mini_vsnprintf+0x238>
    80200b5a:	f8043783          	ld	a5,-128(s0)
    80200b5e:	00878713          	addi	a4,a5,8
    80200b62:	f8e43023          	sd	a4,-128(s0)
    80200b66:	439c                	lw	a5,0(a5)
    80200b68:	02079513          	slli	a0,a5,0x20
    80200b6c:	9101                	srli	a0,a0,0x20
    80200b6e:	a809                	j	80200b80 <mini_vsnprintf+0x248>
    80200b70:	f8043783          	ld	a5,-128(s0)
    80200b74:	00878713          	addi	a4,a5,8
    80200b78:	f8e43023          	sd	a4,-128(s0)
    80200b7c:	639c                	ld	a5,0(a5)
    80200b7e:	853e                	mv	a0,a5
    80200b80:	fef44783          	lbu	a5,-17(s0)
    80200b84:	0007871b          	sext.w	a4,a5
    80200b88:	05800793          	li	a5,88
    80200b8c:	40f707b3          	sub	a5,a4,a5
    80200b90:	0017b793          	seqz	a5,a5
    80200b94:	0ff7f793          	zext.b	a5,a5
    80200b98:	0007861b          	sext.w	a2,a5
    80200b9c:	fee44783          	lbu	a5,-18(s0)
    80200ba0:	2781                	sext.w	a5,a5
    80200ba2:	fa840713          	addi	a4,s0,-88
    80200ba6:	4685                	li	a3,1
    80200ba8:	45c1                	li	a1,16
    80200baa:	a3bff0ef          	jal	802005e4 <mini_itoa>
    80200bae:	87aa                	mv	a5,a0
    80200bb0:	fcf42e23          	sw	a5,-36(s0)
    80200bb4:	fc040693          	addi	a3,s0,-64
    80200bb8:	fdc42703          	lw	a4,-36(s0)
    80200bbc:	fa840793          	addi	a5,s0,-88
    80200bc0:	8636                	mv	a2,a3
    80200bc2:	85ba                	mv	a1,a4
    80200bc4:	853e                	mv	a0,a5
    80200bc6:	cb7ff0ef          	jal	8020087c <_puts>
    80200bca:	fe042423          	sw	zero,-24(s0)
    80200bce:	a0a5                	j	80200c36 <mini_vsnprintf+0x2fe>
    80200bd0:	f8043783          	ld	a5,-128(s0)
    80200bd4:	00878713          	addi	a4,a5,8
    80200bd8:	f8e43023          	sd	a4,-128(s0)
    80200bdc:	439c                	lw	a5,0(a5)
    80200bde:	0ff7f793          	zext.b	a5,a5
    80200be2:	2781                	sext.w	a5,a5
    80200be4:	fc040713          	addi	a4,s0,-64
    80200be8:	85ba                	mv	a1,a4
    80200bea:	853e                	mv	a0,a5
    80200bec:	c27ff0ef          	jal	80200812 <_putc>
    80200bf0:	a099                	j	80200c36 <mini_vsnprintf+0x2fe>
    80200bf2:	f8043783          	ld	a5,-128(s0)
    80200bf6:	00878713          	addi	a4,a5,8
    80200bfa:	f8e43023          	sd	a4,-128(s0)
    80200bfe:	639c                	ld	a5,0(a5)
    80200c00:	fef43023          	sd	a5,-32(s0)
    80200c04:	fe043503          	ld	a0,-32(s0)
    80200c08:	9a3ff0ef          	jal	802005aa <mini_strlen>
    80200c0c:	87aa                	mv	a5,a0
    80200c0e:	873e                	mv	a4,a5
    80200c10:	fc040793          	addi	a5,s0,-64
    80200c14:	863e                	mv	a2,a5
    80200c16:	85ba                	mv	a1,a4
    80200c18:	fe043503          	ld	a0,-32(s0)
    80200c1c:	c61ff0ef          	jal	8020087c <_puts>
    80200c20:	a819                	j	80200c36 <mini_vsnprintf+0x2fe>
    80200c22:	fef44783          	lbu	a5,-17(s0)
    80200c26:	2781                	sext.w	a5,a5
    80200c28:	fc040713          	addi	a4,s0,-64
    80200c2c:	85ba                	mv	a1,a4
    80200c2e:	853e                	mv	a0,a5
    80200c30:	be3ff0ef          	jal	80200812 <_putc>
    80200c34:	0001                	nop
    80200c36:	f8843783          	ld	a5,-120(s0)
    80200c3a:	00178713          	addi	a4,a5,1
    80200c3e:	f8e43423          	sd	a4,-120(s0)
    80200c42:	0007c783          	lbu	a5,0(a5)
    80200c46:	fef407a3          	sb	a5,-17(s0)
    80200c4a:	fef44783          	lbu	a5,-17(s0)
    80200c4e:	0ff7f793          	zext.b	a5,a5
    80200c52:	d0079de3          	bnez	a5,8020096c <mini_vsnprintf+0x34>
    80200c56:	a031                	j	80200c62 <mini_vsnprintf+0x32a>
    80200c58:	0001                	nop
    80200c5a:	a021                	j	80200c62 <mini_vsnprintf+0x32a>
    80200c5c:	0001                	nop
    80200c5e:	a011                	j	80200c62 <mini_vsnprintf+0x32a>
    80200c60:	0001                	nop
    80200c62:	fc843703          	ld	a4,-56(s0)
    80200c66:	fc043783          	ld	a5,-64(s0)
    80200c6a:	40f707b3          	sub	a5,a4,a5
    80200c6e:	2781                	sext.w	a5,a5
    80200c70:	853e                	mv	a0,a5
    80200c72:	70e6                	ld	ra,120(sp)
    80200c74:	7446                	ld	s0,112(sp)
    80200c76:	6109                	addi	sp,sp,128
    80200c78:	8082                	ret

0000000080200c7a <_vprintk>:
    80200c7a:	7129                	addi	sp,sp,-320
    80200c7c:	fe06                	sd	ra,312(sp)
    80200c7e:	fa22                	sd	s0,304(sp)
    80200c80:	0280                	addi	s0,sp,320
    80200c82:	eca43c23          	sd	a0,-296(s0)
    80200c86:	ecb43823          	sd	a1,-304(s0)
    80200c8a:	ecc43423          	sd	a2,-312(s0)
    80200c8e:	ed043783          	ld	a5,-304(s0)
    80200c92:	fef43023          	sd	a5,-32(s0)
    80200c96:	fe043703          	ld	a4,-32(s0)
    80200c9a:	ee040793          	addi	a5,s0,-288
    80200c9e:	86ba                	mv	a3,a4
    80200ca0:	ed843603          	ld	a2,-296(s0)
    80200ca4:	10000593          	li	a1,256
    80200ca8:	853e                	mv	a0,a5
    80200caa:	c8fff0ef          	jal	80200938 <mini_vsnprintf>
    80200cae:	87aa                	mv	a5,a0
    80200cb0:	fef42623          	sw	a5,-20(s0)
    80200cb4:	fec42783          	lw	a5,-20(s0)
    80200cb8:	17c1                	addi	a5,a5,-16
    80200cba:	97a2                	add	a5,a5,s0
    80200cbc:	ee078823          	sb	zero,-272(a5)
    80200cc0:	ee040713          	addi	a4,s0,-288
    80200cc4:	ec843783          	ld	a5,-312(s0)
    80200cc8:	853a                	mv	a0,a4
    80200cca:	9782                	jalr	a5
    80200ccc:	fec42783          	lw	a5,-20(s0)
    80200cd0:	853e                	mv	a0,a5
    80200cd2:	70f2                	ld	ra,312(sp)
    80200cd4:	7452                	ld	s0,304(sp)
    80200cd6:	6131                	addi	sp,sp,320
    80200cd8:	8082                	ret

0000000080200cda <_vprints>:
    80200cda:	7129                	addi	sp,sp,-320
    80200cdc:	fe06                	sd	ra,312(sp)
    80200cde:	fa22                	sd	s0,304(sp)
    80200ce0:	0280                	addi	s0,sp,320
    80200ce2:	eca43c23          	sd	a0,-296(s0)
    80200ce6:	ecb43823          	sd	a1,-304(s0)
    80200cea:	ecc43423          	sd	a2,-312(s0)
    80200cee:	ed043783          	ld	a5,-304(s0)
    80200cf2:	fef43023          	sd	a5,-32(s0)
    80200cf6:	fe043703          	ld	a4,-32(s0)
    80200cfa:	ee040793          	addi	a5,s0,-288
    80200cfe:	86ba                	mv	a3,a4
    80200d00:	ed843603          	ld	a2,-296(s0)
    80200d04:	10000593          	li	a1,256
    80200d08:	853e                	mv	a0,a5
    80200d0a:	c2fff0ef          	jal	80200938 <mini_vsnprintf>
    80200d0e:	87aa                	mv	a5,a0
    80200d10:	fef42623          	sw	a5,-20(s0)
    80200d14:	fec42783          	lw	a5,-20(s0)
    80200d18:	17c1                	addi	a5,a5,-16
    80200d1a:	97a2                	add	a5,a5,s0
    80200d1c:	ee078823          	sb	zero,-272(a5)
    80200d20:	ee040713          	addi	a4,s0,-288
    80200d24:	ec843783          	ld	a5,-312(s0)
    80200d28:	853a                	mv	a0,a4
    80200d2a:	9782                	jalr	a5
    80200d2c:	fec42783          	lw	a5,-20(s0)
    80200d30:	853e                	mv	a0,a5
    80200d32:	70f2                	ld	ra,312(sp)
    80200d34:	7452                	ld	s0,304(sp)
    80200d36:	6131                	addi	sp,sp,320
    80200d38:	8082                	ret

0000000080200d3a <vprintk>:
    80200d3a:	1101                	addi	sp,sp,-32
    80200d3c:	ec06                	sd	ra,24(sp)
    80200d3e:	e822                	sd	s0,16(sp)
    80200d40:	1000                	addi	s0,sp,32
    80200d42:	fea43423          	sd	a0,-24(s0)
    80200d46:	feb43023          	sd	a1,-32(s0)
    80200d4a:	fffff617          	auipc	a2,0xfffff
    80200d4e:	7cc60613          	addi	a2,a2,1996 # 80200516 <print>
    80200d52:	fe043583          	ld	a1,-32(s0)
    80200d56:	fe843503          	ld	a0,-24(s0)
    80200d5a:	f21ff0ef          	jal	80200c7a <_vprintk>
    80200d5e:	87aa                	mv	a5,a0
    80200d60:	853e                	mv	a0,a5
    80200d62:	60e2                	ld	ra,24(sp)
    80200d64:	6442                	ld	s0,16(sp)
    80200d66:	6105                	addi	sp,sp,32
    80200d68:	8082                	ret

0000000080200d6a <printk>:
    80200d6a:	7159                	addi	sp,sp,-112
    80200d6c:	f406                	sd	ra,40(sp)
    80200d6e:	f022                	sd	s0,32(sp)
    80200d70:	1800                	addi	s0,sp,48
    80200d72:	fca43c23          	sd	a0,-40(s0)
    80200d76:	e40c                	sd	a1,8(s0)
    80200d78:	e810                	sd	a2,16(s0)
    80200d7a:	ec14                	sd	a3,24(s0)
    80200d7c:	f018                	sd	a4,32(s0)
    80200d7e:	f41c                	sd	a5,40(s0)
    80200d80:	03043823          	sd	a6,48(s0)
    80200d84:	03143c23          	sd	a7,56(s0)
    80200d88:	fe042623          	sw	zero,-20(s0)
    80200d8c:	04040793          	addi	a5,s0,64
    80200d90:	fcf43823          	sd	a5,-48(s0)
    80200d94:	fd043783          	ld	a5,-48(s0)
    80200d98:	fc878793          	addi	a5,a5,-56
    80200d9c:	fef43023          	sd	a5,-32(s0)
    80200da0:	fe043783          	ld	a5,-32(s0)
    80200da4:	85be                	mv	a1,a5
    80200da6:	fd843503          	ld	a0,-40(s0)
    80200daa:	f91ff0ef          	jal	80200d3a <vprintk>
    80200dae:	87aa                	mv	a5,a0
    80200db0:	fef42623          	sw	a5,-20(s0)
    80200db4:	fec42783          	lw	a5,-20(s0)
    80200db8:	853e                	mv	a0,a5
    80200dba:	70a2                	ld	ra,40(sp)
    80200dbc:	7402                	ld	s0,32(sp)
    80200dbe:	6165                	addi	sp,sp,112
    80200dc0:	8082                	ret

0000000080200dc2 <_vprintk_port>:
    80200dc2:	7129                	addi	sp,sp,-320
    80200dc4:	fe06                	sd	ra,312(sp)
    80200dc6:	fa22                	sd	s0,304(sp)
    80200dc8:	0280                	addi	s0,sp,320
    80200dca:	eca43c23          	sd	a0,-296(s0)
    80200dce:	ecb43823          	sd	a1,-304(s0)
    80200dd2:	ecc43423          	sd	a2,-312(s0)
    80200dd6:	ed043783          	ld	a5,-304(s0)
    80200dda:	fef43023          	sd	a5,-32(s0)
    80200dde:	fe043703          	ld	a4,-32(s0)
    80200de2:	ee040793          	addi	a5,s0,-288
    80200de6:	86ba                	mv	a3,a4
    80200de8:	ed843603          	ld	a2,-296(s0)
    80200dec:	10000593          	li	a1,256
    80200df0:	853e                	mv	a0,a5
    80200df2:	b47ff0ef          	jal	80200938 <mini_vsnprintf>
    80200df6:	87aa                	mv	a5,a0
    80200df8:	fef42623          	sw	a5,-20(s0)
    80200dfc:	fec42783          	lw	a5,-20(s0)
    80200e00:	17c1                	addi	a5,a5,-16
    80200e02:	97a2                	add	a5,a5,s0
    80200e04:	ee078823          	sb	zero,-272(a5)
    80200e08:	fec42783          	lw	a5,-20(s0)
    80200e0c:	853e                	mv	a0,a5
    80200e0e:	70f2                	ld	ra,312(sp)
    80200e10:	7452                	ld	s0,304(sp)
    80200e12:	6131                	addi	sp,sp,320
    80200e14:	8082                	ret

0000000080200e16 <vprintk_port>:
    80200e16:	1101                	addi	sp,sp,-32
    80200e18:	ec06                	sd	ra,24(sp)
    80200e1a:	e822                	sd	s0,16(sp)
    80200e1c:	1000                	addi	s0,sp,32
    80200e1e:	fea43423          	sd	a0,-24(s0)
    80200e22:	feb43023          	sd	a1,-32(s0)
    80200e26:	fffff617          	auipc	a2,0xfffff
    80200e2a:	6f060613          	addi	a2,a2,1776 # 80200516 <print>
    80200e2e:	fe043583          	ld	a1,-32(s0)
    80200e32:	fe843503          	ld	a0,-24(s0)
    80200e36:	f8dff0ef          	jal	80200dc2 <_vprintk_port>
    80200e3a:	87aa                	mv	a5,a0
    80200e3c:	853e                	mv	a0,a5
    80200e3e:	60e2                	ld	ra,24(sp)
    80200e40:	6442                	ld	s0,16(sp)
    80200e42:	6105                	addi	sp,sp,32
    80200e44:	8082                	ret

0000000080200e46 <printk_port>:
    80200e46:	7159                	addi	sp,sp,-112
    80200e48:	f406                	sd	ra,40(sp)
    80200e4a:	f022                	sd	s0,32(sp)
    80200e4c:	1800                	addi	s0,sp,48
    80200e4e:	fca43c23          	sd	a0,-40(s0)
    80200e52:	e40c                	sd	a1,8(s0)
    80200e54:	e810                	sd	a2,16(s0)
    80200e56:	ec14                	sd	a3,24(s0)
    80200e58:	f018                	sd	a4,32(s0)
    80200e5a:	f41c                	sd	a5,40(s0)
    80200e5c:	03043823          	sd	a6,48(s0)
    80200e60:	03143c23          	sd	a7,56(s0)
    80200e64:	fe042623          	sw	zero,-20(s0)
    80200e68:	04040793          	addi	a5,s0,64
    80200e6c:	fcf43823          	sd	a5,-48(s0)
    80200e70:	fd043783          	ld	a5,-48(s0)
    80200e74:	fc878793          	addi	a5,a5,-56
    80200e78:	fef43023          	sd	a5,-32(s0)
    80200e7c:	fe043783          	ld	a5,-32(s0)
    80200e80:	85be                	mv	a1,a5
    80200e82:	fd843503          	ld	a0,-40(s0)
    80200e86:	f91ff0ef          	jal	80200e16 <vprintk_port>
    80200e8a:	87aa                	mv	a5,a0
    80200e8c:	fef42623          	sw	a5,-20(s0)
    80200e90:	fec42783          	lw	a5,-20(s0)
    80200e94:	853e                	mv	a0,a5
    80200e96:	70a2                	ld	ra,40(sp)
    80200e98:	7402                	ld	s0,32(sp)
    80200e9a:	6165                	addi	sp,sp,112
    80200e9c:	8082                	ret

0000000080200e9e <r_sstatus>:
    80200e9e:	1101                	addi	sp,sp,-32
    80200ea0:	ec06                	sd	ra,24(sp)
    80200ea2:	e822                	sd	s0,16(sp)
    80200ea4:	1000                	addi	s0,sp,32
    80200ea6:	100027f3          	csrr	a5,sstatus
    80200eaa:	fef43423          	sd	a5,-24(s0)
    80200eae:	fe843783          	ld	a5,-24(s0)
    80200eb2:	853e                	mv	a0,a5
    80200eb4:	60e2                	ld	ra,24(sp)
    80200eb6:	6442                	ld	s0,16(sp)
    80200eb8:	6105                	addi	sp,sp,32
    80200eba:	8082                	ret

0000000080200ebc <w_sstatus>:
    80200ebc:	1101                	addi	sp,sp,-32
    80200ebe:	ec06                	sd	ra,24(sp)
    80200ec0:	e822                	sd	s0,16(sp)
    80200ec2:	1000                	addi	s0,sp,32
    80200ec4:	fea43423          	sd	a0,-24(s0)
    80200ec8:	fe843783          	ld	a5,-24(s0)
    80200ecc:	10079073          	csrw	sstatus,a5
    80200ed0:	0001                	nop
    80200ed2:	60e2                	ld	ra,24(sp)
    80200ed4:	6442                	ld	s0,16(sp)
    80200ed6:	6105                	addi	sp,sp,32
    80200ed8:	8082                	ret

0000000080200eda <w_sepc>:
    80200eda:	1101                	addi	sp,sp,-32
    80200edc:	ec06                	sd	ra,24(sp)
    80200ede:	e822                	sd	s0,16(sp)
    80200ee0:	1000                	addi	s0,sp,32
    80200ee2:	fea43423          	sd	a0,-24(s0)
    80200ee6:	fe843783          	ld	a5,-24(s0)
    80200eea:	14179073          	csrw	sepc,a5
    80200eee:	0001                	nop
    80200ef0:	60e2                	ld	ra,24(sp)
    80200ef2:	6442                	ld	s0,16(sp)
    80200ef4:	6105                	addi	sp,sp,32
    80200ef6:	8082                	ret

0000000080200ef8 <w_stvec>:
    80200ef8:	1101                	addi	sp,sp,-32
    80200efa:	ec06                	sd	ra,24(sp)
    80200efc:	e822                	sd	s0,16(sp)
    80200efe:	1000                	addi	s0,sp,32
    80200f00:	fea43423          	sd	a0,-24(s0)
    80200f04:	fe843783          	ld	a5,-24(s0)
    80200f08:	10579073          	csrw	stvec,a5
    80200f0c:	0001                	nop
    80200f0e:	60e2                	ld	ra,24(sp)
    80200f10:	6442                	ld	s0,16(sp)
    80200f12:	6105                	addi	sp,sp,32
    80200f14:	8082                	ret

0000000080200f16 <r_satp>:
    80200f16:	1101                	addi	sp,sp,-32
    80200f18:	ec06                	sd	ra,24(sp)
    80200f1a:	e822                	sd	s0,16(sp)
    80200f1c:	1000                	addi	s0,sp,32
    80200f1e:	180027f3          	csrr	a5,satp
    80200f22:	fef43423          	sd	a5,-24(s0)
    80200f26:	fe843783          	ld	a5,-24(s0)
    80200f2a:	853e                	mv	a0,a5
    80200f2c:	60e2                	ld	ra,24(sp)
    80200f2e:	6442                	ld	s0,16(sp)
    80200f30:	6105                	addi	sp,sp,32
    80200f32:	8082                	ret

0000000080200f34 <r_scause>:
    80200f34:	1101                	addi	sp,sp,-32
    80200f36:	ec06                	sd	ra,24(sp)
    80200f38:	e822                	sd	s0,16(sp)
    80200f3a:	1000                	addi	s0,sp,32
    80200f3c:	142027f3          	csrr	a5,scause
    80200f40:	fef43423          	sd	a5,-24(s0)
    80200f44:	fe843783          	ld	a5,-24(s0)
    80200f48:	853e                	mv	a0,a5
    80200f4a:	60e2                	ld	ra,24(sp)
    80200f4c:	6442                	ld	s0,16(sp)
    80200f4e:	6105                	addi	sp,sp,32
    80200f50:	8082                	ret

0000000080200f52 <r_stval>:
    80200f52:	1101                	addi	sp,sp,-32
    80200f54:	ec06                	sd	ra,24(sp)
    80200f56:	e822                	sd	s0,16(sp)
    80200f58:	1000                	addi	s0,sp,32
    80200f5a:	143027f3          	csrr	a5,stval
    80200f5e:	fef43423          	sd	a5,-24(s0)
    80200f62:	fe843783          	ld	a5,-24(s0)
    80200f66:	853e                	mv	a0,a5
    80200f68:	60e2                	ld	ra,24(sp)
    80200f6a:	6442                	ld	s0,16(sp)
    80200f6c:	6105                	addi	sp,sp,32
    80200f6e:	8082                	ret

0000000080200f70 <kerneltrap>:
    80200f70:	1101                	addi	sp,sp,-32
    80200f72:	ec06                	sd	ra,24(sp)
    80200f74:	e822                	sd	s0,16(sp)
    80200f76:	1000                	addi	s0,sp,32
    80200f78:	f27ff0ef          	jal	80200e9e <r_sstatus>
    80200f7c:	87aa                	mv	a5,a0
    80200f7e:	1007f793          	andi	a5,a5,256
    80200f82:	e799                	bnez	a5,80200f90 <kerneltrap+0x20>
    80200f84:	00003517          	auipc	a0,0x3
    80200f88:	32450513          	addi	a0,a0,804 # 802042a8 <rodata_start+0x2a8>
    80200f8c:	de8ff0ef          	jal	80200574 <panic>
    80200f90:	fa5ff0ef          	jal	80200f34 <r_scause>
    80200f94:	fea43423          	sd	a0,-24(s0)
    80200f98:	fe843603          	ld	a2,-24(s0)
    80200f9c:	fe843583          	ld	a1,-24(s0)
    80200fa0:	00003517          	auipc	a0,0x3
    80200fa4:	33050513          	addi	a0,a0,816 # 802042d0 <rodata_start+0x2d0>
    80200fa8:	dc3ff0ef          	jal	80200d6a <printk>
    80200fac:	fe843783          	ld	a5,-24(s0)
    80200fb0:	0407d063          	bgez	a5,80200ff0 <kerneltrap+0x80>
    80200fb4:	fe843703          	ld	a4,-24(s0)
    80200fb8:	57fd                	li	a5,-1
    80200fba:	8385                	srli	a5,a5,0x1
    80200fbc:	8ff9                	and	a5,a5,a4
    80200fbe:	fef43423          	sd	a5,-24(s0)
    80200fc2:	fe843703          	ld	a4,-24(s0)
    80200fc6:	4795                	li	a5,5
    80200fc8:	00f71d63          	bne	a4,a5,80200fe2 <kerneltrap+0x72>
    80200fcc:	00003517          	auipc	a0,0x3
    80200fd0:	31450513          	addi	a0,a0,788 # 802042e0 <rodata_start+0x2e0>
    80200fd4:	d97ff0ef          	jal	80200d6a <printk>
    80200fd8:	619000ef          	jal	80201df0 <set_next_10ms_timer>
    80200fdc:	531000ef          	jal	80201d0c <yield>
    80200fe0:	a801                	j	80200ff0 <kerneltrap+0x80>
    80200fe2:	00003517          	auipc	a0,0x3
    80200fe6:	31650513          	addi	a0,a0,790 # 802042f8 <rodata_start+0x2f8>
    80200fea:	078000ef          	jal	80201062 <unknown_trap>
    80200fee:	0001                	nop
    80200ff0:	00003517          	auipc	a0,0x3
    80200ff4:	31850513          	addi	a0,a0,792 # 80204308 <rodata_start+0x308>
    80200ff8:	d7cff0ef          	jal	80200574 <panic>
    80200ffc:	0001                	nop
    80200ffe:	60e2                	ld	ra,24(sp)
    80201000:	6442                	ld	s0,16(sp)
    80201002:	6105                	addi	sp,sp,32
    80201004:	8082                	ret

0000000080201006 <set_kerneltrap>:
    80201006:	1141                	addi	sp,sp,-16
    80201008:	e406                	sd	ra,8(sp)
    8020100a:	e022                	sd	s0,0(sp)
    8020100c:	0800                	addi	s0,sp,16
    8020100e:	00000797          	auipc	a5,0x0
    80201012:	f6278793          	addi	a5,a5,-158 # 80200f70 <kerneltrap>
    80201016:	9bf1                	andi	a5,a5,-4
    80201018:	853e                	mv	a0,a5
    8020101a:	edfff0ef          	jal	80200ef8 <w_stvec>
    8020101e:	0001                	nop
    80201020:	60a2                	ld	ra,8(sp)
    80201022:	6402                	ld	s0,0(sp)
    80201024:	0141                	addi	sp,sp,16
    80201026:	8082                	ret

0000000080201028 <set_usertrap>:
    80201028:	1141                	addi	sp,sp,-16
    8020102a:	e406                	sd	ra,8(sp)
    8020102c:	e022                	sd	s0,0(sp)
    8020102e:	0800                	addi	s0,sp,16
    80201030:	00002717          	auipc	a4,0x2
    80201034:	fd070713          	addi	a4,a4,-48 # 80203000 <__alltraps>
    80201038:	00002797          	auipc	a5,0x2
    8020103c:	fc878793          	addi	a5,a5,-56 # 80203000 <__alltraps>
    80201040:	40f707b3          	sub	a5,a4,a5
    80201044:	873e                	mv	a4,a5
    80201046:	040007b7          	lui	a5,0x4000
    8020104a:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    8020104c:	07b2                	slli	a5,a5,0xc
    8020104e:	97ba                	add	a5,a5,a4
    80201050:	9bf1                	andi	a5,a5,-4
    80201052:	853e                	mv	a0,a5
    80201054:	ea5ff0ef          	jal	80200ef8 <w_stvec>
    80201058:	0001                	nop
    8020105a:	60a2                	ld	ra,8(sp)
    8020105c:	6402                	ld	s0,0(sp)
    8020105e:	0141                	addi	sp,sp,16
    80201060:	8082                	ret

0000000080201062 <unknown_trap>:
    80201062:	7179                	addi	sp,sp,-48
    80201064:	f406                	sd	ra,40(sp)
    80201066:	f022                	sd	s0,32(sp)
    80201068:	ec26                	sd	s1,24(sp)
    8020106a:	1800                	addi	s0,sp,48
    8020106c:	fca43c23          	sd	a0,-40(s0)
    80201070:	ec5ff0ef          	jal	80200f34 <r_scause>
    80201074:	84aa                	mv	s1,a0
    80201076:	eddff0ef          	jal	80200f52 <r_stval>
    8020107a:	87aa                	mv	a5,a0
    8020107c:	86be                	mv	a3,a5
    8020107e:	8626                	mv	a2,s1
    80201080:	fd843583          	ld	a1,-40(s0)
    80201084:	00003517          	auipc	a0,0x3
    80201088:	29c50513          	addi	a0,a0,668 # 80204320 <rodata_start+0x320>
    8020108c:	cdfff0ef          	jal	80200d6a <printk>
    80201090:	4505                	li	a0,1
    80201092:	c0eff0ef          	jal	802004a0 <sbi_shut_down>
    80201096:	0001                	nop
    80201098:	70a2                	ld	ra,40(sp)
    8020109a:	7402                	ld	s0,32(sp)
    8020109c:	64e2                	ld	s1,24(sp)
    8020109e:	6145                	addi	sp,sp,48
    802010a0:	8082                	ret

00000000802010a2 <trap_init>:
    802010a2:	1141                	addi	sp,sp,-16
    802010a4:	e406                	sd	ra,8(sp)
    802010a6:	e022                	sd	s0,0(sp)
    802010a8:	0800                	addi	s0,sp,16
    802010aa:	f5dff0ef          	jal	80201006 <set_kerneltrap>
    802010ae:	00003517          	auipc	a0,0x3
    802010b2:	2a250513          	addi	a0,a0,674 # 80204350 <rodata_start+0x350>
    802010b6:	cb5ff0ef          	jal	80200d6a <printk>
    802010ba:	0001                	nop
    802010bc:	60a2                	ld	ra,8(sp)
    802010be:	6402                	ld	s0,0(sp)
    802010c0:	0141                	addi	sp,sp,16
    802010c2:	8082                	ret

00000000802010c4 <usertrapret>:
    802010c4:	7179                	addi	sp,sp,-48
    802010c6:	f406                	sd	ra,40(sp)
    802010c8:	f022                	sd	s0,32(sp)
    802010ca:	1800                	addi	s0,sp,48
    802010cc:	f5dff0ef          	jal	80201028 <set_usertrap>
    802010d0:	323000ef          	jal	80201bf2 <get_cur_proc>
    802010d4:	87aa                	mv	a5,a0
    802010d6:	739c                	ld	a5,32(a5)
    802010d8:	fef43423          	sd	a5,-24(s0)
    802010dc:	e3bff0ef          	jal	80200f16 <r_satp>
    802010e0:	872a                	mv	a4,a0
    802010e2:	fe843783          	ld	a5,-24(s0)
    802010e6:	10e7b823          	sd	a4,272(a5)
    802010ea:	309000ef          	jal	80201bf2 <get_cur_proc>
    802010ee:	87aa                	mv	a5,a0
    802010f0:	6b98                	ld	a4,16(a5)
    802010f2:	6785                	lui	a5,0x1
    802010f4:	973e                	add	a4,a4,a5
    802010f6:	fe843783          	ld	a5,-24(s0)
    802010fa:	10e7bc23          	sd	a4,280(a5) # 1118 <n+0x10f8>
    802010fe:	00000717          	auipc	a4,0x0
    80201102:	0b070713          	addi	a4,a4,176 # 802011ae <usertrap>
    80201106:	fe843783          	ld	a5,-24(s0)
    8020110a:	12e7b023          	sd	a4,288(a5)
    8020110e:	fe843783          	ld	a5,-24(s0)
    80201112:	1087b783          	ld	a5,264(a5)
    80201116:	853e                	mv	a0,a5
    80201118:	dc3ff0ef          	jal	80200eda <w_sepc>
    8020111c:	d83ff0ef          	jal	80200e9e <r_sstatus>
    80201120:	fea43023          	sd	a0,-32(s0)
    80201124:	fe043783          	ld	a5,-32(s0)
    80201128:	eff7f793          	andi	a5,a5,-257
    8020112c:	fef43023          	sd	a5,-32(s0)
    80201130:	fe043783          	ld	a5,-32(s0)
    80201134:	1007e793          	ori	a5,a5,256
    80201138:	fef43023          	sd	a5,-32(s0)
    8020113c:	fe043503          	ld	a0,-32(s0)
    80201140:	d7dff0ef          	jal	80200ebc <w_sstatus>
    80201144:	2af000ef          	jal	80201bf2 <get_cur_proc>
    80201148:	87aa                	mv	a5,a0
    8020114a:	679c                	ld	a5,8(a5)
    8020114c:	00c7d713          	srli	a4,a5,0xc
    80201150:	57fd                	li	a5,-1
    80201152:	17fe                	slli	a5,a5,0x3f
    80201154:	8fd9                	or	a5,a5,a4
    80201156:	fcf43c23          	sd	a5,-40(s0)
    8020115a:	00002717          	auipc	a4,0x2
    8020115e:	f0670713          	addi	a4,a4,-250 # 80203060 <__restore>
    80201162:	00002797          	auipc	a5,0x2
    80201166:	e9e78793          	addi	a5,a5,-354 # 80203000 <__alltraps>
    8020116a:	8f1d                	sub	a4,a4,a5
    8020116c:	040007b7          	lui	a5,0x4000
    80201170:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80201172:	07b2                	slli	a5,a5,0xc
    80201174:	97ba                	add	a5,a5,a4
    80201176:	fcf43823          	sd	a5,-48(s0)
    8020117a:	fe843783          	ld	a5,-24(s0)
    8020117e:	1087b783          	ld	a5,264(a5)
    80201182:	85be                	mv	a1,a5
    80201184:	00003517          	auipc	a0,0x3
    80201188:	1e450513          	addi	a0,a0,484 # 80204368 <rodata_start+0x368>
    8020118c:	bdfff0ef          	jal	80200d6a <printk>
    80201190:	fd043783          	ld	a5,-48(s0)
    80201194:	fd843583          	ld	a1,-40(s0)
    80201198:	02000737          	lui	a4,0x2000
    8020119c:	177d                	addi	a4,a4,-1 # 1ffffff <n+0x1ffffdf>
    8020119e:	00d71513          	slli	a0,a4,0xd
    802011a2:	9782                	jalr	a5
    802011a4:	0001                	nop
    802011a6:	70a2                	ld	ra,40(sp)
    802011a8:	7402                	ld	s0,32(sp)
    802011aa:	6145                	addi	sp,sp,48
    802011ac:	8082                	ret

00000000802011ae <usertrap>:
    802011ae:	1101                	addi	sp,sp,-32
    802011b0:	ec06                	sd	ra,24(sp)
    802011b2:	e822                	sd	s0,16(sp)
    802011b4:	1000                	addi	s0,sp,32
    802011b6:	e51ff0ef          	jal	80201006 <set_kerneltrap>
    802011ba:	239000ef          	jal	80201bf2 <get_cur_proc>
    802011be:	87aa                	mv	a5,a0
    802011c0:	739c                	ld	a5,32(a5)
    802011c2:	fef43423          	sd	a5,-24(s0)
    802011c6:	fe843783          	ld	a5,-24(s0)
    802011ca:	1087b783          	ld	a5,264(a5)
    802011ce:	85be                	mv	a1,a5
    802011d0:	00003517          	auipc	a0,0x3
    802011d4:	1b050513          	addi	a0,a0,432 # 80204380 <rodata_start+0x380>
    802011d8:	b93ff0ef          	jal	80200d6a <printk>
    802011dc:	cc3ff0ef          	jal	80200e9e <r_sstatus>
    802011e0:	87aa                	mv	a5,a0
    802011e2:	1007f793          	andi	a5,a5,256
    802011e6:	c799                	beqz	a5,802011f4 <usertrap+0x46>
    802011e8:	00003517          	auipc	a0,0x3
    802011ec:	1b850513          	addi	a0,a0,440 # 802043a0 <rodata_start+0x3a0>
    802011f0:	b84ff0ef          	jal	80200574 <panic>
    802011f4:	d41ff0ef          	jal	80200f34 <r_scause>
    802011f8:	fea43023          	sd	a0,-32(s0)
    802011fc:	fe043783          	ld	a5,-32(s0)
    80201200:	0407d063          	bgez	a5,80201240 <usertrap+0x92>
    80201204:	fe043703          	ld	a4,-32(s0)
    80201208:	57fd                	li	a5,-1
    8020120a:	8385                	srli	a5,a5,0x1
    8020120c:	8ff9                	and	a5,a5,a4
    8020120e:	fef43023          	sd	a5,-32(s0)
    80201212:	fe043703          	ld	a4,-32(s0)
    80201216:	4795                	li	a5,5
    80201218:	00f71d63          	bne	a4,a5,80201232 <usertrap+0x84>
    8020121c:	00003517          	auipc	a0,0x3
    80201220:	0c450513          	addi	a0,a0,196 # 802042e0 <rodata_start+0x2e0>
    80201224:	b47ff0ef          	jal	80200d6a <printk>
    80201228:	3c9000ef          	jal	80201df0 <set_next_10ms_timer>
    8020122c:	2e1000ef          	jal	80201d0c <yield>
    80201230:	a8d1                	j	80201304 <usertrap+0x156>
    80201232:	00003517          	auipc	a0,0x3
    80201236:	0c650513          	addi	a0,a0,198 # 802042f8 <rodata_start+0x2f8>
    8020123a:	e29ff0ef          	jal	80201062 <unknown_trap>
    8020123e:	a0d9                	j	80201304 <usertrap+0x156>
    80201240:	fe043583          	ld	a1,-32(s0)
    80201244:	00003517          	auipc	a0,0x3
    80201248:	17c50513          	addi	a0,a0,380 # 802043c0 <rodata_start+0x3c0>
    8020124c:	b1fff0ef          	jal	80200d6a <printk>
    80201250:	fe043703          	ld	a4,-32(s0)
    80201254:	47a1                	li	a5,8
    80201256:	02f70c63          	beq	a4,a5,8020128e <usertrap+0xe0>
    8020125a:	fe043703          	ld	a4,-32(s0)
    8020125e:	47a1                	li	a5,8
    80201260:	08e7eb63          	bltu	a5,a4,802012f6 <usertrap+0x148>
    80201264:	fe043703          	ld	a4,-32(s0)
    80201268:	479d                	li	a5,7
    8020126a:	06f70963          	beq	a4,a5,802012dc <usertrap+0x12e>
    8020126e:	fe043703          	ld	a4,-32(s0)
    80201272:	479d                	li	a5,7
    80201274:	08e7e163          	bltu	a5,a4,802012f6 <usertrap+0x148>
    80201278:	fe043703          	ld	a4,-32(s0)
    8020127c:	4789                	li	a5,2
    8020127e:	04f70863          	beq	a4,a5,802012ce <usertrap+0x120>
    80201282:	fe043703          	ld	a4,-32(s0)
    80201286:	4795                	li	a5,5
    80201288:	06f70163          	beq	a4,a5,802012ea <usertrap+0x13c>
    8020128c:	a0ad                	j	802012f6 <usertrap+0x148>
    8020128e:	fe843783          	ld	a5,-24(s0)
    80201292:	1087b783          	ld	a5,264(a5)
    80201296:	00478713          	addi	a4,a5,4
    8020129a:	fe843783          	ld	a5,-24(s0)
    8020129e:	10e7b423          	sd	a4,264(a5)
    802012a2:	fe843783          	ld	a5,-24(s0)
    802012a6:	67d8                	ld	a4,136(a5)
    802012a8:	fe843783          	ld	a5,-24(s0)
    802012ac:	6bac                	ld	a1,80(a5)
    802012ae:	fe843783          	ld	a5,-24(s0)
    802012b2:	6fb0                	ld	a2,88(a5)
    802012b4:	fe843783          	ld	a5,-24(s0)
    802012b8:	73bc                	ld	a5,96(a5)
    802012ba:	86be                	mv	a3,a5
    802012bc:	853a                	mv	a0,a4
    802012be:	664000ef          	jal	80201922 <syscall>
    802012c2:	87aa                	mv	a5,a0
    802012c4:	873e                	mv	a4,a5
    802012c6:	fe843783          	ld	a5,-24(s0)
    802012ca:	ebb8                	sd	a4,80(a5)
    802012cc:	a825                	j	80201304 <usertrap+0x156>
    802012ce:	00003517          	auipc	a0,0x3
    802012d2:	10a50513          	addi	a0,a0,266 # 802043d8 <rodata_start+0x3d8>
    802012d6:	a9eff0ef          	jal	80200574 <panic>
    802012da:	a02d                	j	80201304 <usertrap+0x156>
    802012dc:	00003517          	auipc	a0,0x3
    802012e0:	12450513          	addi	a0,a0,292 # 80204400 <rodata_start+0x400>
    802012e4:	a90ff0ef          	jal	80200574 <panic>
    802012e8:	a831                	j	80201304 <usertrap+0x156>
    802012ea:	00003517          	auipc	a0,0x3
    802012ee:	14650513          	addi	a0,a0,326 # 80204430 <rodata_start+0x430>
    802012f2:	a82ff0ef          	jal	80200574 <panic>
    802012f6:	00003517          	auipc	a0,0x3
    802012fa:	16250513          	addi	a0,a0,354 # 80204458 <rodata_start+0x458>
    802012fe:	d65ff0ef          	jal	80201062 <unknown_trap>
    80201302:	0001                	nop
    80201304:	dc1ff0ef          	jal	802010c4 <usertrapret>
    80201308:	0001                	nop
    8020130a:	60e2                	ld	ra,24(sp)
    8020130c:	6442                	ld	s0,16(sp)
    8020130e:	6105                	addi	sp,sp,32
    80201310:	8082                	ret

0000000080201312 <strlen>:
    80201312:	7179                	addi	sp,sp,-48
    80201314:	f406                	sd	ra,40(sp)
    80201316:	f022                	sd	s0,32(sp)
    80201318:	1800                	addi	s0,sp,48
    8020131a:	fca43c23          	sd	a0,-40(s0)
    8020131e:	fe042623          	sw	zero,-20(s0)
    80201322:	a031                	j	8020132e <strlen+0x1c>
    80201324:	fec42783          	lw	a5,-20(s0)
    80201328:	2785                	addiw	a5,a5,1
    8020132a:	fef42623          	sw	a5,-20(s0)
    8020132e:	fec46783          	lwu	a5,-20(s0)
    80201332:	fd843703          	ld	a4,-40(s0)
    80201336:	97ba                	add	a5,a5,a4
    80201338:	00078783          	lb	a5,0(a5)
    8020133c:	f7e5                	bnez	a5,80201324 <strlen+0x12>
    8020133e:	fec42783          	lw	a5,-20(s0)
    80201342:	853e                	mv	a0,a5
    80201344:	70a2                	ld	ra,40(sp)
    80201346:	7402                	ld	s0,32(sp)
    80201348:	6145                	addi	sp,sp,48
    8020134a:	8082                	ret

000000008020134c <memcpy>:
    8020134c:	7139                	addi	sp,sp,-64
    8020134e:	fc06                	sd	ra,56(sp)
    80201350:	f822                	sd	s0,48(sp)
    80201352:	0080                	addi	s0,sp,64
    80201354:	fca43c23          	sd	a0,-40(s0)
    80201358:	fcb43823          	sd	a1,-48(s0)
    8020135c:	fcc43423          	sd	a2,-56(s0)
    80201360:	fd843783          	ld	a5,-40(s0)
    80201364:	fef43423          	sd	a5,-24(s0)
    80201368:	fd043783          	ld	a5,-48(s0)
    8020136c:	fef43023          	sd	a5,-32(s0)
    80201370:	a00d                	j	80201392 <memcpy+0x46>
    80201372:	fe043703          	ld	a4,-32(s0)
    80201376:	00170793          	addi	a5,a4,1
    8020137a:	fef43023          	sd	a5,-32(s0)
    8020137e:	fe843783          	ld	a5,-24(s0)
    80201382:	00178693          	addi	a3,a5,1
    80201386:	fed43423          	sd	a3,-24(s0)
    8020138a:	00074703          	lbu	a4,0(a4)
    8020138e:	00e78023          	sb	a4,0(a5)
    80201392:	fc843783          	ld	a5,-56(s0)
    80201396:	fff78713          	addi	a4,a5,-1
    8020139a:	fce43423          	sd	a4,-56(s0)
    8020139e:	fbf1                	bnez	a5,80201372 <memcpy+0x26>
    802013a0:	fd843783          	ld	a5,-40(s0)
    802013a4:	853e                	mv	a0,a5
    802013a6:	70e2                	ld	ra,56(sp)
    802013a8:	7442                	ld	s0,48(sp)
    802013aa:	6121                	addi	sp,sp,64
    802013ac:	8082                	ret

00000000802013ae <memcmp>:
    802013ae:	7139                	addi	sp,sp,-64
    802013b0:	fc06                	sd	ra,56(sp)
    802013b2:	f822                	sd	s0,48(sp)
    802013b4:	0080                	addi	s0,sp,64
    802013b6:	fca43c23          	sd	a0,-40(s0)
    802013ba:	fcb43823          	sd	a1,-48(s0)
    802013be:	fcc43423          	sd	a2,-56(s0)
    802013c2:	fd843783          	ld	a5,-40(s0)
    802013c6:	fef43423          	sd	a5,-24(s0)
    802013ca:	fd043783          	ld	a5,-48(s0)
    802013ce:	fef43023          	sd	a5,-32(s0)
    802013d2:	a081                	j	80201412 <memcmp+0x64>
    802013d4:	fe843703          	ld	a4,-24(s0)
    802013d8:	fe043783          	ld	a5,-32(s0)
    802013dc:	02f70163          	beq	a4,a5,802013fe <memcmp+0x50>
    802013e0:	fe843783          	ld	a5,-24(s0)
    802013e4:	0007c783          	lbu	a5,0(a5)
    802013e8:	0007871b          	sext.w	a4,a5
    802013ec:	fe043783          	ld	a5,-32(s0)
    802013f0:	0007c783          	lbu	a5,0(a5)
    802013f4:	2781                	sext.w	a5,a5
    802013f6:	40f707bb          	subw	a5,a4,a5
    802013fa:	2781                	sext.w	a5,a5
    802013fc:	a01d                	j	80201422 <memcmp+0x74>
    802013fe:	fe843783          	ld	a5,-24(s0)
    80201402:	0785                	addi	a5,a5,1
    80201404:	fef43423          	sd	a5,-24(s0)
    80201408:	fe043783          	ld	a5,-32(s0)
    8020140c:	0785                	addi	a5,a5,1
    8020140e:	fef43023          	sd	a5,-32(s0)
    80201412:	fc843783          	ld	a5,-56(s0)
    80201416:	fff78713          	addi	a4,a5,-1
    8020141a:	fce43423          	sd	a4,-56(s0)
    8020141e:	fbdd                	bnez	a5,802013d4 <memcmp+0x26>
    80201420:	4781                	li	a5,0
    80201422:	853e                	mv	a0,a5
    80201424:	70e2                	ld	ra,56(sp)
    80201426:	7442                	ld	s0,48(sp)
    80201428:	6121                	addi	sp,sp,64
    8020142a:	8082                	ret

000000008020142c <memmove>:
    8020142c:	7139                	addi	sp,sp,-64
    8020142e:	fc06                	sd	ra,56(sp)
    80201430:	f822                	sd	s0,48(sp)
    80201432:	0080                	addi	s0,sp,64
    80201434:	fca43c23          	sd	a0,-40(s0)
    80201438:	fcb43823          	sd	a1,-48(s0)
    8020143c:	fcc43423          	sd	a2,-56(s0)
    80201440:	fd843783          	ld	a5,-40(s0)
    80201444:	fef43423          	sd	a5,-24(s0)
    80201448:	a035                	j	80201474 <memmove+0x48>
    8020144a:	fd043703          	ld	a4,-48(s0)
    8020144e:	00170793          	addi	a5,a4,1
    80201452:	fcf43823          	sd	a5,-48(s0)
    80201456:	fe843783          	ld	a5,-24(s0)
    8020145a:	00178693          	addi	a3,a5,1
    8020145e:	fed43423          	sd	a3,-24(s0)
    80201462:	00074703          	lbu	a4,0(a4)
    80201466:	00e78023          	sb	a4,0(a5)
    8020146a:	fc843783          	ld	a5,-56(s0)
    8020146e:	17fd                	addi	a5,a5,-1
    80201470:	fcf43423          	sd	a5,-56(s0)
    80201474:	fc843783          	ld	a5,-56(s0)
    80201478:	fbe9                	bnez	a5,8020144a <memmove+0x1e>
    8020147a:	0001                	nop
    8020147c:	0001                	nop
    8020147e:	70e2                	ld	ra,56(sp)
    80201480:	7442                	ld	s0,48(sp)
    80201482:	6121                	addi	sp,sp,64
    80201484:	8082                	ret

0000000080201486 <memset>:
    80201486:	7179                	addi	sp,sp,-48
    80201488:	f406                	sd	ra,40(sp)
    8020148a:	f022                	sd	s0,32(sp)
    8020148c:	1800                	addi	s0,sp,48
    8020148e:	fca43c23          	sd	a0,-40(s0)
    80201492:	87ae                	mv	a5,a1
    80201494:	8732                	mv	a4,a2
    80201496:	fcf40ba3          	sb	a5,-41(s0)
    8020149a:	87ba                	mv	a5,a4
    8020149c:	fcf42823          	sw	a5,-48(s0)
    802014a0:	fd843783          	ld	a5,-40(s0)
    802014a4:	fef43423          	sd	a5,-24(s0)
    802014a8:	a005                	j	802014c8 <memset+0x42>
    802014aa:	fe843783          	ld	a5,-24(s0)
    802014ae:	00178713          	addi	a4,a5,1
    802014b2:	fee43423          	sd	a4,-24(s0)
    802014b6:	fd744703          	lbu	a4,-41(s0)
    802014ba:	00e78023          	sb	a4,0(a5)
    802014be:	fd042783          	lw	a5,-48(s0)
    802014c2:	37fd                	addiw	a5,a5,-1
    802014c4:	fcf42823          	sw	a5,-48(s0)
    802014c8:	fd042783          	lw	a5,-48(s0)
    802014cc:	2781                	sext.w	a5,a5
    802014ce:	fff1                	bnez	a5,802014aa <memset+0x24>
    802014d0:	fd843783          	ld	a5,-40(s0)
    802014d4:	853e                	mv	a0,a5
    802014d6:	70a2                	ld	ra,40(sp)
    802014d8:	7402                	ld	s0,32(sp)
    802014da:	6145                	addi	sp,sp,48
    802014dc:	8082                	ret

00000000802014de <strcmp>:
    802014de:	1101                	addi	sp,sp,-32
    802014e0:	ec06                	sd	ra,24(sp)
    802014e2:	e822                	sd	s0,16(sp)
    802014e4:	1000                	addi	s0,sp,32
    802014e6:	fea43423          	sd	a0,-24(s0)
    802014ea:	feb43023          	sd	a1,-32(s0)
    802014ee:	a091                	j	80201532 <strcmp+0x54>
    802014f0:	fe843783          	ld	a5,-24(s0)
    802014f4:	00078703          	lb	a4,0(a5)
    802014f8:	fe043783          	ld	a5,-32(s0)
    802014fc:	00078783          	lb	a5,0(a5)
    80201500:	00f70f63          	beq	a4,a5,8020151e <strcmp+0x40>
    80201504:	fe843783          	ld	a5,-24(s0)
    80201508:	00078783          	lb	a5,0(a5)
    8020150c:	873e                	mv	a4,a5
    8020150e:	fe043783          	ld	a5,-32(s0)
    80201512:	00078783          	lb	a5,0(a5)
    80201516:	40f707bb          	subw	a5,a4,a5
    8020151a:	2781                	sext.w	a5,a5
    8020151c:	a089                	j	8020155e <strcmp+0x80>
    8020151e:	fe843783          	ld	a5,-24(s0)
    80201522:	0785                	addi	a5,a5,1
    80201524:	fef43423          	sd	a5,-24(s0)
    80201528:	fe043783          	ld	a5,-32(s0)
    8020152c:	0785                	addi	a5,a5,1
    8020152e:	fef43023          	sd	a5,-32(s0)
    80201532:	fe843783          	ld	a5,-24(s0)
    80201536:	00078783          	lb	a5,0(a5)
    8020153a:	c791                	beqz	a5,80201546 <strcmp+0x68>
    8020153c:	fe043783          	ld	a5,-32(s0)
    80201540:	00078783          	lb	a5,0(a5)
    80201544:	f7d5                	bnez	a5,802014f0 <strcmp+0x12>
    80201546:	fe843783          	ld	a5,-24(s0)
    8020154a:	00078783          	lb	a5,0(a5)
    8020154e:	873e                	mv	a4,a5
    80201550:	fe043783          	ld	a5,-32(s0)
    80201554:	00078783          	lb	a5,0(a5)
    80201558:	40f707bb          	subw	a5,a4,a5
    8020155c:	2781                	sext.w	a5,a5
    8020155e:	853e                	mv	a0,a5
    80201560:	60e2                	ld	ra,24(sp)
    80201562:	6442                	ld	s0,16(sp)
    80201564:	6105                	addi	sp,sp,32
    80201566:	8082                	ret

0000000080201568 <ifsubstr>:
    80201568:	7139                	addi	sp,sp,-64
    8020156a:	fc06                	sd	ra,56(sp)
    8020156c:	f822                	sd	s0,48(sp)
    8020156e:	0080                	addi	s0,sp,64
    80201570:	fca43c23          	sd	a0,-40(s0)
    80201574:	fcb43823          	sd	a1,-48(s0)
    80201578:	87b2                	mv	a5,a2
    8020157a:	fcf42623          	sw	a5,-52(s0)
    8020157e:	fd043503          	ld	a0,-48(s0)
    80201582:	d91ff0ef          	jal	80201312 <strlen>
    80201586:	87aa                	mv	a5,a0
    80201588:	fef42023          	sw	a5,-32(s0)
    8020158c:	fe042623          	sw	zero,-20(s0)
    80201590:	fe042423          	sw	zero,-24(s0)
    80201594:	fe042223          	sw	zero,-28(s0)
    80201598:	a04d                	j	8020163a <ifsubstr+0xd2>
    8020159a:	fec42783          	lw	a5,-20(s0)
    8020159e:	0007871b          	sext.w	a4,a5
    802015a2:	4785                	li	a5,1
    802015a4:	06f71063          	bne	a4,a5,80201604 <ifsubstr+0x9c>
    802015a8:	fe842783          	lw	a5,-24(s0)
    802015ac:	0017871b          	addiw	a4,a5,1
    802015b0:	fee42423          	sw	a4,-24(s0)
    802015b4:	1782                	slli	a5,a5,0x20
    802015b6:	9381                	srli	a5,a5,0x20
    802015b8:	fd843703          	ld	a4,-40(s0)
    802015bc:	97ba                	add	a5,a5,a4
    802015be:	0007c683          	lbu	a3,0(a5)
    802015c2:	fe442783          	lw	a5,-28(s0)
    802015c6:	0017871b          	addiw	a4,a5,1
    802015ca:	fee42223          	sw	a4,-28(s0)
    802015ce:	1782                	slli	a5,a5,0x20
    802015d0:	9381                	srli	a5,a5,0x20
    802015d2:	fd043703          	ld	a4,-48(s0)
    802015d6:	97ba                	add	a5,a5,a4
    802015d8:	0007c783          	lbu	a5,0(a5)
    802015dc:	8736                	mv	a4,a3
    802015de:	00f71d63          	bne	a4,a5,802015f8 <ifsubstr+0x90>
    802015e2:	fe442783          	lw	a5,-28(s0)
    802015e6:	873e                	mv	a4,a5
    802015e8:	fe042783          	lw	a5,-32(s0)
    802015ec:	2701                	sext.w	a4,a4
    802015ee:	2781                	sext.w	a5,a5
    802015f0:	04f71563          	bne	a4,a5,8020163a <ifsubstr+0xd2>
    802015f4:	4785                	li	a5,1
    802015f6:	a8bd                	j	80201674 <ifsubstr+0x10c>
    802015f8:	fe042223          	sw	zero,-28(s0)
    802015fc:	4785                	li	a5,1
    802015fe:	fef42623          	sw	a5,-20(s0)
    80201602:	a825                	j	8020163a <ifsubstr+0xd2>
    80201604:	fe842783          	lw	a5,-24(s0)
    80201608:	0017871b          	addiw	a4,a5,1
    8020160c:	fee42423          	sw	a4,-24(s0)
    80201610:	1782                	slli	a5,a5,0x20
    80201612:	9381                	srli	a5,a5,0x20
    80201614:	fd843703          	ld	a4,-40(s0)
    80201618:	97ba                	add	a5,a5,a4
    8020161a:	0007c703          	lbu	a4,0(a5)
    8020161e:	fd043783          	ld	a5,-48(s0)
    80201622:	0007c783          	lbu	a5,0(a5)
    80201626:	00f71a63          	bne	a4,a5,8020163a <ifsubstr+0xd2>
    8020162a:	4785                	li	a5,1
    8020162c:	fef42623          	sw	a5,-20(s0)
    80201630:	fe442783          	lw	a5,-28(s0)
    80201634:	2785                	addiw	a5,a5,1
    80201636:	fef42223          	sw	a5,-28(s0)
    8020163a:	fcc42783          	lw	a5,-52(s0)
    8020163e:	fe842703          	lw	a4,-24(s0)
    80201642:	2701                	sext.w	a4,a4
    80201644:	00f77b63          	bgeu	a4,a5,8020165a <ifsubstr+0xf2>
    80201648:	fe442783          	lw	a5,-28(s0)
    8020164c:	873e                	mv	a4,a5
    8020164e:	fe042783          	lw	a5,-32(s0)
    80201652:	2701                	sext.w	a4,a4
    80201654:	2781                	sext.w	a5,a5
    80201656:	f4f762e3          	bltu	a4,a5,8020159a <ifsubstr+0x32>
    8020165a:	fe442783          	lw	a5,-28(s0)
    8020165e:	873e                	mv	a4,a5
    80201660:	fe042783          	lw	a5,-32(s0)
    80201664:	2701                	sext.w	a4,a4
    80201666:	2781                	sext.w	a5,a5
    80201668:	00f77463          	bgeu	a4,a5,80201670 <ifsubstr+0x108>
    8020166c:	4785                	li	a5,1
    8020166e:	a019                	j	80201674 <ifsubstr+0x10c>
    80201670:	fec42783          	lw	a5,-20(s0)
    80201674:	853e                	mv	a0,a5
    80201676:	70e2                	ld	ra,56(sp)
    80201678:	7442                	ld	s0,48(sp)
    8020167a:	6121                	addi	sp,sp,64
    8020167c:	8082                	ret

000000008020167e <strcpy>:
    8020167e:	7179                	addi	sp,sp,-48
    80201680:	f406                	sd	ra,40(sp)
    80201682:	f022                	sd	s0,32(sp)
    80201684:	1800                	addi	s0,sp,48
    80201686:	fca43c23          	sd	a0,-40(s0)
    8020168a:	fcb43823          	sd	a1,-48(s0)
    8020168e:	fd843783          	ld	a5,-40(s0)
    80201692:	fef43423          	sd	a5,-24(s0)
    80201696:	a00d                	j	802016b8 <strcpy+0x3a>
    80201698:	fd043703          	ld	a4,-48(s0)
    8020169c:	00170793          	addi	a5,a4,1
    802016a0:	fcf43823          	sd	a5,-48(s0)
    802016a4:	fe843783          	ld	a5,-24(s0)
    802016a8:	00178693          	addi	a3,a5,1
    802016ac:	fed43423          	sd	a3,-24(s0)
    802016b0:	00070703          	lb	a4,0(a4)
    802016b4:	00e78023          	sb	a4,0(a5)
    802016b8:	fd043783          	ld	a5,-48(s0)
    802016bc:	00078783          	lb	a5,0(a5)
    802016c0:	ffe1                	bnez	a5,80201698 <strcpy+0x1a>
    802016c2:	fe843783          	ld	a5,-24(s0)
    802016c6:	00078023          	sb	zero,0(a5)
    802016ca:	fd843783          	ld	a5,-40(s0)
    802016ce:	853e                	mv	a0,a5
    802016d0:	70a2                	ld	ra,40(sp)
    802016d2:	7402                	ld	s0,32(sp)
    802016d4:	6145                	addi	sp,sp,48
    802016d6:	8082                	ret

00000000802016d8 <strcat>:
    802016d8:	7179                	addi	sp,sp,-48
    802016da:	f406                	sd	ra,40(sp)
    802016dc:	f022                	sd	s0,32(sp)
    802016de:	1800                	addi	s0,sp,48
    802016e0:	fca43c23          	sd	a0,-40(s0)
    802016e4:	fcb43823          	sd	a1,-48(s0)
    802016e8:	fd843783          	ld	a5,-40(s0)
    802016ec:	fef43423          	sd	a5,-24(s0)
    802016f0:	a031                	j	802016fc <strcat+0x24>
    802016f2:	fe843783          	ld	a5,-24(s0)
    802016f6:	0785                	addi	a5,a5,1
    802016f8:	fef43423          	sd	a5,-24(s0)
    802016fc:	fe843783          	ld	a5,-24(s0)
    80201700:	00078783          	lb	a5,0(a5)
    80201704:	f7fd                	bnez	a5,802016f2 <strcat+0x1a>
    80201706:	a00d                	j	80201728 <strcat+0x50>
    80201708:	fd043703          	ld	a4,-48(s0)
    8020170c:	00170793          	addi	a5,a4,1
    80201710:	fcf43823          	sd	a5,-48(s0)
    80201714:	fe843783          	ld	a5,-24(s0)
    80201718:	00178693          	addi	a3,a5,1
    8020171c:	fed43423          	sd	a3,-24(s0)
    80201720:	00070703          	lb	a4,0(a4)
    80201724:	00e78023          	sb	a4,0(a5)
    80201728:	fd043783          	ld	a5,-48(s0)
    8020172c:	00078783          	lb	a5,0(a5)
    80201730:	ffe1                	bnez	a5,80201708 <strcat+0x30>
    80201732:	fd843783          	ld	a5,-40(s0)
    80201736:	853e                	mv	a0,a5
    80201738:	70a2                	ld	ra,40(sp)
    8020173a:	7402                	ld	s0,32(sp)
    8020173c:	6145                	addi	sp,sp,48
    8020173e:	8082                	ret

0000000080201740 <sys_write>:
    80201740:	7111                	addi	sp,sp,-256
    80201742:	fd86                	sd	ra,248(sp)
    80201744:	f9a2                	sd	s0,240(sp)
    80201746:	0200                	addi	s0,sp,256
    80201748:	f0a43423          	sd	a0,-248(s0)
    8020174c:	87ae                	mv	a5,a1
    8020174e:	f0f42223          	sw	a5,-252(s0)
    80201752:	4a0000ef          	jal	80201bf2 <get_cur_proc>
    80201756:	fea43023          	sd	a0,-32(s0)
    8020175a:	fe043783          	ld	a5,-32(s0)
    8020175e:	6788                	ld	a0,8(a5)
    80201760:	f0442783          	lw	a5,-252(s0)
    80201764:	0007869b          	sext.w	a3,a5
    80201768:	0c800713          	li	a4,200
    8020176c:	00d77463          	bgeu	a4,a3,80201774 <sys_write+0x34>
    80201770:	0c800793          	li	a5,200
    80201774:	2781                	sext.w	a5,a5
    80201776:	02079713          	slli	a4,a5,0x20
    8020177a:	9301                	srli	a4,a4,0x20
    8020177c:	f1040793          	addi	a5,s0,-240
    80201780:	86ba                	mv	a3,a4
    80201782:	f0843603          	ld	a2,-248(s0)
    80201786:	85be                	mv	a1,a5
    80201788:	004010ef          	jal	8020278c <copyinstr>
    8020178c:	87aa                	mv	a5,a0
    8020178e:	fcf42e23          	sw	a5,-36(s0)
    80201792:	fe042623          	sw	zero,-20(s0)
    80201796:	a01d                	j	802017bc <sys_write+0x7c>
    80201798:	fec42783          	lw	a5,-20(s0)
    8020179c:	17c1                	addi	a5,a5,-16
    8020179e:	97a2                	add	a5,a5,s0
    802017a0:	f207c783          	lbu	a5,-224(a5)
    802017a4:	0187979b          	slliw	a5,a5,0x18
    802017a8:	4187d79b          	sraiw	a5,a5,0x18
    802017ac:	853e                	mv	a0,a5
    802017ae:	cc5fe0ef          	jal	80200472 <sbi_console_putchar>
    802017b2:	fec42783          	lw	a5,-20(s0)
    802017b6:	2785                	addiw	a5,a5,1
    802017b8:	fef42623          	sw	a5,-20(s0)
    802017bc:	fec42783          	lw	a5,-20(s0)
    802017c0:	873e                	mv	a4,a5
    802017c2:	fdc42783          	lw	a5,-36(s0)
    802017c6:	2701                	sext.w	a4,a4
    802017c8:	2781                	sext.w	a5,a5
    802017ca:	fcf747e3          	blt	a4,a5,80201798 <sys_write+0x58>
    802017ce:	fdc42783          	lw	a5,-36(s0)
    802017d2:	853e                	mv	a0,a5
    802017d4:	70ee                	ld	ra,248(sp)
    802017d6:	744e                	ld	s0,240(sp)
    802017d8:	6111                	addi	sp,sp,256
    802017da:	8082                	ret

00000000802017dc <sys_exit>:
    802017dc:	7179                	addi	sp,sp,-48
    802017de:	f406                	sd	ra,40(sp)
    802017e0:	f022                	sd	s0,32(sp)
    802017e2:	1800                	addi	s0,sp,48
    802017e4:	fca43c23          	sd	a0,-40(s0)
    802017e8:	fd843583          	ld	a1,-40(s0)
    802017ec:	00003517          	auipc	a0,0x3
    802017f0:	c7c50513          	addi	a0,a0,-900 # 80204468 <rodata_start+0x468>
    802017f4:	d76ff0ef          	jal	80200d6a <printk>
    802017f8:	3fa000ef          	jal	80201bf2 <get_cur_proc>
    802017fc:	fea43423          	sd	a0,-24(s0)
    80201800:	fe843783          	ld	a5,-24(s0)
    80201804:	470d                	li	a4,3
    80201806:	c398                	sw	a4,0(a5)
    80201808:	504000ef          	jal	80201d0c <yield>
    8020180c:	4781                	li	a5,0
    8020180e:	853e                	mv	a0,a5
    80201810:	70a2                	ld	ra,40(sp)
    80201812:	7402                	ld	s0,32(sp)
    80201814:	6145                	addi	sp,sp,48
    80201816:	8082                	ret

0000000080201818 <sys_stack_trace>:
    80201818:	7179                	addi	sp,sp,-48
    8020181a:	f406                	sd	ra,40(sp)
    8020181c:	f022                	sd	s0,32(sp)
    8020181e:	1800                	addi	s0,sp,48
    80201820:	00003517          	auipc	a0,0x3
    80201824:	c6850513          	addi	a0,a0,-920 # 80204488 <rodata_start+0x488>
    80201828:	d42ff0ef          	jal	80200d6a <printk>
    8020182c:	87a2                	mv	a5,s0
    8020182e:	fef43423          	sd	a5,-24(s0)
    80201832:	a81d                	j	80201868 <sys_stack_trace+0x50>
    80201834:	fe843783          	ld	a5,-24(s0)
    80201838:	17fd                	addi	a5,a5,-1
    8020183a:	639c                	ld	a5,0(a5)
    8020183c:	fef43023          	sd	a5,-32(s0)
    80201840:	fe843783          	ld	a5,-24(s0)
    80201844:	17f9                	addi	a5,a5,-2
    80201846:	639c                	ld	a5,0(a5)
    80201848:	fcf43c23          	sd	a5,-40(s0)
    8020184c:	fd843603          	ld	a2,-40(s0)
    80201850:	fe043583          	ld	a1,-32(s0)
    80201854:	00003517          	auipc	a0,0x3
    80201858:	c6450513          	addi	a0,a0,-924 # 802044b8 <rodata_start+0x4b8>
    8020185c:	d0eff0ef          	jal	80200d6a <printk>
    80201860:	fd843783          	ld	a5,-40(s0)
    80201864:	fef43423          	sd	a5,-24(s0)
    80201868:	fe843783          	ld	a5,-24(s0)
    8020186c:	f7e1                	bnez	a5,80201834 <sys_stack_trace+0x1c>
    8020186e:	00003517          	auipc	a0,0x3
    80201872:	c6250513          	addi	a0,a0,-926 # 802044d0 <rodata_start+0x4d0>
    80201876:	cf4ff0ef          	jal	80200d6a <printk>
    8020187a:	4781                	li	a5,0
    8020187c:	853e                	mv	a0,a5
    8020187e:	70a2                	ld	ra,40(sp)
    80201880:	7402                	ld	s0,32(sp)
    80201882:	6145                	addi	sp,sp,48
    80201884:	8082                	ret

0000000080201886 <sys_yield>:
    80201886:	1141                	addi	sp,sp,-16
    80201888:	e406                	sd	ra,8(sp)
    8020188a:	e022                	sd	s0,0(sp)
    8020188c:	0800                	addi	s0,sp,16
    8020188e:	47e000ef          	jal	80201d0c <yield>
    80201892:	4781                	li	a5,0
    80201894:	853e                	mv	a0,a5
    80201896:	60a2                	ld	ra,8(sp)
    80201898:	6402                	ld	s0,0(sp)
    8020189a:	0141                	addi	sp,sp,16
    8020189c:	8082                	ret

000000008020189e <sys_get_tiem>:
    8020189e:	7179                	addi	sp,sp,-48
    802018a0:	f406                	sd	ra,40(sp)
    802018a2:	f022                	sd	s0,32(sp)
    802018a4:	1800                	addi	s0,sp,48
    802018a6:	fca43c23          	sd	a0,-40(s0)
    802018aa:	510000ef          	jal	80201dba <get_cycle>
    802018ae:	fea43423          	sd	a0,-24(s0)
    802018b2:	fe843703          	ld	a4,-24(s0)
    802018b6:	00003797          	auipc	a5,0x3
    802018ba:	ca278793          	addi	a5,a5,-862 # 80204558 <rodata_start+0x558>
    802018be:	639c                	ld	a5,0(a5)
    802018c0:	02f737b3          	mulhu	a5,a4,a5
    802018c4:	0177d713          	srli	a4,a5,0x17
    802018c8:	fd843783          	ld	a5,-40(s0)
    802018cc:	e398                	sd	a4,0(a5)
    802018ce:	fe843703          	ld	a4,-24(s0)
    802018d2:	00003797          	auipc	a5,0x3
    802018d6:	c8678793          	addi	a5,a5,-890 # 80204558 <rodata_start+0x558>
    802018da:	639c                	ld	a5,0(a5)
    802018dc:	02f737b3          	mulhu	a5,a4,a5
    802018e0:	83dd                	srli	a5,a5,0x17
    802018e2:	009896b7          	lui	a3,0x989
    802018e6:	68068693          	addi	a3,a3,1664 # 989680 <n+0x989660>
    802018ea:	02d787b3          	mul	a5,a5,a3
    802018ee:	40f707b3          	sub	a5,a4,a5
    802018f2:	000f4737          	lui	a4,0xf4
    802018f6:	24070713          	addi	a4,a4,576 # f4240 <n+0xf4220>
    802018fa:	02e78733          	mul	a4,a5,a4
    802018fe:	00003797          	auipc	a5,0x3
    80201902:	c5a78793          	addi	a5,a5,-934 # 80204558 <rodata_start+0x558>
    80201906:	639c                	ld	a5,0(a5)
    80201908:	02f737b3          	mulhu	a5,a4,a5
    8020190c:	0177d713          	srli	a4,a5,0x17
    80201910:	fd843783          	ld	a5,-40(s0)
    80201914:	e798                	sd	a4,8(a5)
    80201916:	4781                	li	a5,0
    80201918:	853e                	mv	a0,a5
    8020191a:	70a2                	ld	ra,40(sp)
    8020191c:	7402                	ld	s0,32(sp)
    8020191e:	6145                	addi	sp,sp,48
    80201920:	8082                	ret

0000000080201922 <syscall>:
    80201922:	7139                	addi	sp,sp,-64
    80201924:	fc06                	sd	ra,56(sp)
    80201926:	f822                	sd	s0,48(sp)
    80201928:	0080                	addi	s0,sp,64
    8020192a:	fca43c23          	sd	a0,-40(s0)
    8020192e:	fcb43823          	sd	a1,-48(s0)
    80201932:	fcc43423          	sd	a2,-56(s0)
    80201936:	fcd43023          	sd	a3,-64(s0)
    8020193a:	fd843703          	ld	a4,-40(s0)
    8020193e:	4795                	li	a5,5
    80201940:	06e7ec63          	bltu	a5,a4,802019b8 <syscall+0x96>
    80201944:	fd843783          	ld	a5,-40(s0)
    80201948:	00279713          	slli	a4,a5,0x2
    8020194c:	00003797          	auipc	a5,0x3
    80201950:	bf478793          	addi	a5,a5,-1036 # 80204540 <rodata_start+0x540>
    80201954:	97ba                	add	a5,a5,a4
    80201956:	439c                	lw	a5,0(a5)
    80201958:	0007871b          	sext.w	a4,a5
    8020195c:	00003797          	auipc	a5,0x3
    80201960:	be478793          	addi	a5,a5,-1052 # 80204540 <rodata_start+0x540>
    80201964:	97ba                	add	a5,a5,a4
    80201966:	8782                	jr	a5
    80201968:	fc843783          	ld	a5,-56(s0)
    8020196c:	2781                	sext.w	a5,a5
    8020196e:	85be                	mv	a1,a5
    80201970:	fd043503          	ld	a0,-48(s0)
    80201974:	dcdff0ef          	jal	80201740 <sys_write>
    80201978:	87aa                	mv	a5,a0
    8020197a:	fef43423          	sd	a5,-24(s0)
    8020197e:	a8a1                	j	802019d6 <syscall+0xb4>
    80201980:	fd043503          	ld	a0,-48(s0)
    80201984:	e59ff0ef          	jal	802017dc <sys_exit>
    80201988:	87aa                	mv	a5,a0
    8020198a:	fef43423          	sd	a5,-24(s0)
    8020198e:	a0a1                	j	802019d6 <syscall+0xb4>
    80201990:	e89ff0ef          	jal	80201818 <sys_stack_trace>
    80201994:	87aa                	mv	a5,a0
    80201996:	fef43423          	sd	a5,-24(s0)
    8020199a:	a835                	j	802019d6 <syscall+0xb4>
    8020199c:	eebff0ef          	jal	80201886 <sys_yield>
    802019a0:	87aa                	mv	a5,a0
    802019a2:	fef43423          	sd	a5,-24(s0)
    802019a6:	a805                	j	802019d6 <syscall+0xb4>
    802019a8:	fd043783          	ld	a5,-48(s0)
    802019ac:	853e                	mv	a0,a5
    802019ae:	ef1ff0ef          	jal	8020189e <sys_get_tiem>
    802019b2:	fea43423          	sd	a0,-24(s0)
    802019b6:	a005                	j	802019d6 <syscall+0xb4>
    802019b8:	fd843583          	ld	a1,-40(s0)
    802019bc:	00003517          	auipc	a0,0x3
    802019c0:	b4450513          	addi	a0,a0,-1212 # 80204500 <rodata_start+0x500>
    802019c4:	ba6ff0ef          	jal	80200d6a <printk>
    802019c8:	00003517          	auipc	a0,0x3
    802019cc:	b5850513          	addi	a0,a0,-1192 # 80204520 <rodata_start+0x520>
    802019d0:	ba5fe0ef          	jal	80200574 <panic>
    802019d4:	0001                	nop
    802019d6:	fe843783          	ld	a5,-24(s0)
    802019da:	853e                	mv	a0,a5
    802019dc:	70e2                	ld	ra,56(sp)
    802019de:	7442                	ld	s0,48(sp)
    802019e0:	6121                	addi	sp,sp,64
    802019e2:	8082                	ret

00000000802019e4 <__switch>:
    802019e4:	00153023          	sd	ra,0(a0)
    802019e8:	00253423          	sd	sp,8(a0)
    802019ec:	e900                	sd	s0,16(a0)
    802019ee:	ed04                	sd	s1,24(a0)
    802019f0:	03253023          	sd	s2,32(a0)
    802019f4:	03353423          	sd	s3,40(a0)
    802019f8:	03453823          	sd	s4,48(a0)
    802019fc:	03553c23          	sd	s5,56(a0)
    80201a00:	05653023          	sd	s6,64(a0)
    80201a04:	05753423          	sd	s7,72(a0)
    80201a08:	05853823          	sd	s8,80(a0)
    80201a0c:	05953c23          	sd	s9,88(a0)
    80201a10:	07a53023          	sd	s10,96(a0)
    80201a14:	07b53423          	sd	s11,104(a0)
    80201a18:	0005b083          	ld	ra,0(a1)
    80201a1c:	0085b103          	ld	sp,8(a1)
    80201a20:	6980                	ld	s0,16(a1)
    80201a22:	6d84                	ld	s1,24(a1)
    80201a24:	0205b903          	ld	s2,32(a1)
    80201a28:	0285b983          	ld	s3,40(a1)
    80201a2c:	0305ba03          	ld	s4,48(a1)
    80201a30:	0385ba83          	ld	s5,56(a1)
    80201a34:	0405bb03          	ld	s6,64(a1)
    80201a38:	0485bb83          	ld	s7,72(a1)
    80201a3c:	0505bc03          	ld	s8,80(a1)
    80201a40:	0585bc83          	ld	s9,88(a1)
    80201a44:	0605bd03          	ld	s10,96(a1)
    80201a48:	0685bd83          	ld	s11,104(a1)
    80201a4c:	8082                	ret

0000000080201a4e <proc_init>:
    80201a4e:	1101                	addi	sp,sp,-32
    80201a50:	ec06                	sd	ra,24(sp)
    80201a52:	e822                	sd	s0,16(sp)
    80201a54:	1000                	addi	s0,sp,32
    80201a56:	00003517          	auipc	a0,0x3
    80201a5a:	b0a50513          	addi	a0,a0,-1270 # 80204560 <rodata_start+0x560>
    80201a5e:	b0cff0ef          	jal	80200d6a <printk>
    80201a62:	0001a797          	auipc	a5,0x1a
    80201a66:	59e78793          	addi	a5,a5,1438 # 8021c000 <proc>
    80201a6a:	fef43423          	sd	a5,-24(s0)
    80201a6e:	a045                	j	80201b0e <proc_init+0xc0>
    80201a70:	fe843703          	ld	a4,-24(s0)
    80201a74:	0001a797          	auipc	a5,0x1a
    80201a78:	58c78793          	addi	a5,a5,1420 # 8021c000 <proc>
    80201a7c:	40f707b3          	sub	a5,a4,a5
    80201a80:	4037d713          	srai	a4,a5,0x3
    80201a84:	00003797          	auipc	a5,0x3
    80201a88:	b5c78793          	addi	a5,a5,-1188 # 802045e0 <rodata_start+0x5e0>
    80201a8c:	639c                	ld	a5,0(a5)
    80201a8e:	02f707b3          	mul	a5,a4,a5
    80201a92:	00c79713          	slli	a4,a5,0xc
    80201a96:	0001a797          	auipc	a5,0x1a
    80201a9a:	73a78793          	addi	a5,a5,1850 # 8021c1d0 <kstack>
    80201a9e:	97ba                	add	a5,a5,a4
    80201aa0:	873e                	mv	a4,a5
    80201aa2:	fe843783          	ld	a5,-24(s0)
    80201aa6:	eb98                	sd	a4,16(a5)
    80201aa8:	fe843703          	ld	a4,-24(s0)
    80201aac:	0001a797          	auipc	a5,0x1a
    80201ab0:	55478793          	addi	a5,a5,1364 # 8021c000 <proc>
    80201ab4:	40f707b3          	sub	a5,a4,a5
    80201ab8:	4037d713          	srai	a4,a5,0x3
    80201abc:	00003797          	auipc	a5,0x3
    80201ac0:	b2478793          	addi	a5,a5,-1244 # 802045e0 <rodata_start+0x5e0>
    80201ac4:	639c                	ld	a5,0(a5)
    80201ac6:	02f707b3          	mul	a5,a4,a5
    80201aca:	00c79713          	slli	a4,a5,0xc
    80201ace:	0001e797          	auipc	a5,0x1e
    80201ad2:	53278793          	addi	a5,a5,1330 # 80220000 <trapframe_all>
    80201ad6:	973e                	add	a4,a4,a5
    80201ad8:	fe843783          	ld	a5,-24(s0)
    80201adc:	f398                	sd	a4,32(a5)
    80201ade:	fe843783          	ld	a5,-24(s0)
    80201ae2:	0007a023          	sw	zero,0(a5)
    80201ae6:	fe843783          	ld	a5,-24(s0)
    80201aea:	6b98                	ld	a4,16(a5)
    80201aec:	fe843783          	ld	a5,-24(s0)
    80201af0:	739c                	ld	a5,32(a5)
    80201af2:	863e                	mv	a2,a5
    80201af4:	85ba                	mv	a1,a4
    80201af6:	00003517          	auipc	a0,0x3
    80201afa:	a8250513          	addi	a0,a0,-1406 # 80204578 <rodata_start+0x578>
    80201afe:	a6cff0ef          	jal	80200d6a <printk>
    80201b02:	fe843783          	ld	a5,-24(s0)
    80201b06:	09878793          	addi	a5,a5,152
    80201b0a:	fef43423          	sd	a5,-24(s0)
    80201b0e:	fe843703          	ld	a4,-24(s0)
    80201b12:	0001a797          	auipc	a5,0x1a
    80201b16:	6b678793          	addi	a5,a5,1718 # 8021c1c8 <proc+0x1c8>
    80201b1a:	f4f76be3          	bltu	a4,a5,80201a70 <proc_init+0x22>
    80201b1e:	00021797          	auipc	a5,0x21
    80201b22:	58a78793          	addi	a5,a5,1418 # 802230a8 <current_proc>
    80201b26:	00021717          	auipc	a4,0x21
    80201b2a:	4da70713          	addi	a4,a4,1242 # 80223000 <os_proc>
    80201b2e:	e398                	sd	a4,0(a5)
    80201b30:	0001a717          	auipc	a4,0x1a
    80201b34:	4d070713          	addi	a4,a4,1232 # 8021c000 <proc>
    80201b38:	00021797          	auipc	a5,0x21
    80201b3c:	4c878793          	addi	a5,a5,1224 # 80223000 <os_proc>
    80201b40:	eb98                	sd	a4,16(a5)
    80201b42:	0001                	nop
    80201b44:	60e2                	ld	ra,24(sp)
    80201b46:	6442                	ld	s0,16(sp)
    80201b48:	6105                	addi	sp,sp,32
    80201b4a:	8082                	ret

0000000080201b4c <allocate_proc>:
    80201b4c:	1101                	addi	sp,sp,-32
    80201b4e:	ec06                	sd	ra,24(sp)
    80201b50:	e822                	sd	s0,16(sp)
    80201b52:	1000                	addi	s0,sp,32
    80201b54:	0001a797          	auipc	a5,0x1a
    80201b58:	4ac78793          	addi	a5,a5,1196 # 8021c000 <proc>
    80201b5c:	fef43423          	sd	a5,-24(s0)
    80201b60:	a89d                	j	80201bd6 <allocate_proc+0x8a>
    80201b62:	fe843783          	ld	a5,-24(s0)
    80201b66:	439c                	lw	a5,0(a5)
    80201b68:	e3ad                	bnez	a5,80201bca <allocate_proc+0x7e>
    80201b6a:	fe843783          	ld	a5,-24(s0)
    80201b6e:	4705                	li	a4,1
    80201b70:	c398                	sw	a4,0(a5)
    80201b72:	fe843783          	ld	a5,-24(s0)
    80201b76:	0007b423          	sd	zero,8(a5)
    80201b7a:	fe843783          	ld	a5,-24(s0)
    80201b7e:	0007bc23          	sd	zero,24(a5)
    80201b82:	fe843783          	ld	a5,-24(s0)
    80201b86:	739c                	ld	a5,32(a5)
    80201b88:	4621                	li	a2,8
    80201b8a:	4581                	li	a1,0
    80201b8c:	853e                	mv	a0,a5
    80201b8e:	8f9ff0ef          	jal	80201486 <memset>
    80201b92:	fe843783          	ld	a5,-24(s0)
    80201b96:	02878793          	addi	a5,a5,40
    80201b9a:	07000613          	li	a2,112
    80201b9e:	4581                	li	a1,0
    80201ba0:	853e                	mv	a0,a5
    80201ba2:	8e5ff0ef          	jal	80201486 <memset>
    80201ba6:	fffff717          	auipc	a4,0xfffff
    80201baa:	51e70713          	addi	a4,a4,1310 # 802010c4 <usertrapret>
    80201bae:	fe843783          	ld	a5,-24(s0)
    80201bb2:	f798                	sd	a4,40(a5)
    80201bb4:	fe843783          	ld	a5,-24(s0)
    80201bb8:	6b98                	ld	a4,16(a5)
    80201bba:	6785                	lui	a5,0x1
    80201bbc:	973e                	add	a4,a4,a5
    80201bbe:	fe843783          	ld	a5,-24(s0)
    80201bc2:	fb98                	sd	a4,48(a5)
    80201bc4:	fe843783          	ld	a5,-24(s0)
    80201bc8:	a005                	j	80201be8 <allocate_proc+0x9c>
    80201bca:	fe843783          	ld	a5,-24(s0)
    80201bce:	09878793          	addi	a5,a5,152 # 1098 <n+0x1078>
    80201bd2:	fef43423          	sd	a5,-24(s0)
    80201bd6:	fe843703          	ld	a4,-24(s0)
    80201bda:	0001a797          	auipc	a5,0x1a
    80201bde:	5ee78793          	addi	a5,a5,1518 # 8021c1c8 <proc+0x1c8>
    80201be2:	f8f760e3          	bltu	a4,a5,80201b62 <allocate_proc+0x16>
    80201be6:	4781                	li	a5,0
    80201be8:	853e                	mv	a0,a5
    80201bea:	60e2                	ld	ra,24(sp)
    80201bec:	6442                	ld	s0,16(sp)
    80201bee:	6105                	addi	sp,sp,32
    80201bf0:	8082                	ret

0000000080201bf2 <get_cur_proc>:
    80201bf2:	1141                	addi	sp,sp,-16
    80201bf4:	e406                	sd	ra,8(sp)
    80201bf6:	e022                	sd	s0,0(sp)
    80201bf8:	0800                	addi	s0,sp,16
    80201bfa:	00021797          	auipc	a5,0x21
    80201bfe:	4ae78793          	addi	a5,a5,1198 # 802230a8 <current_proc>
    80201c02:	639c                	ld	a5,0(a5)
    80201c04:	853e                	mv	a0,a5
    80201c06:	60a2                	ld	ra,8(sp)
    80201c08:	6402                	ld	s0,0(sp)
    80201c0a:	0141                	addi	sp,sp,16
    80201c0c:	8082                	ret

0000000080201c0e <scheduler>:
    80201c0e:	1101                	addi	sp,sp,-32
    80201c10:	ec06                	sd	ra,24(sp)
    80201c12:	e822                	sd	s0,16(sp)
    80201c14:	1000                	addi	s0,sp,32
    80201c16:	fe043023          	sd	zero,-32(s0)
    80201c1a:	0001a797          	auipc	a5,0x1a
    80201c1e:	3e678793          	addi	a5,a5,998 # 8021c000 <proc>
    80201c22:	fef43423          	sd	a5,-24(s0)
    80201c26:	a0bd                	j	80201c94 <scheduler+0x86>
    80201c28:	fe843783          	ld	a5,-24(s0)
    80201c2c:	4398                	lw	a4,0(a5)
    80201c2e:	4785                	li	a5,1
    80201c30:	04f71363          	bne	a4,a5,80201c76 <scheduler+0x68>
    80201c34:	fe843783          	ld	a5,-24(s0)
    80201c38:	4709                	li	a4,2
    80201c3a:	c398                	sw	a4,0(a5)
    80201c3c:	00021797          	auipc	a5,0x21
    80201c40:	46c78793          	addi	a5,a5,1132 # 802230a8 <current_proc>
    80201c44:	fe843703          	ld	a4,-24(s0)
    80201c48:	e398                	sd	a4,0(a5)
    80201c4a:	00003517          	auipc	a0,0x3
    80201c4e:	95650513          	addi	a0,a0,-1706 # 802045a0 <rodata_start+0x5a0>
    80201c52:	918ff0ef          	jal	80200d6a <printk>
    80201c56:	fe043783          	ld	a5,-32(s0)
    80201c5a:	0785                	addi	a5,a5,1
    80201c5c:	fef43023          	sd	a5,-32(s0)
    80201c60:	fe843783          	ld	a5,-24(s0)
    80201c64:	02878793          	addi	a5,a5,40
    80201c68:	85be                	mv	a1,a5
    80201c6a:	00021517          	auipc	a0,0x21
    80201c6e:	3be50513          	addi	a0,a0,958 # 80223028 <os_proc+0x28>
    80201c72:	d73ff0ef          	jal	802019e4 <__switch>
    80201c76:	00021797          	auipc	a5,0x21
    80201c7a:	42a78793          	addi	a5,a5,1066 # 802230a0 <app_num>
    80201c7e:	639c                	ld	a5,0(a5)
    80201c80:	fe043703          	ld	a4,-32(s0)
    80201c84:	02f77163          	bgeu	a4,a5,80201ca6 <scheduler+0x98>
    80201c88:	fe843783          	ld	a5,-24(s0)
    80201c8c:	09878793          	addi	a5,a5,152
    80201c90:	fef43423          	sd	a5,-24(s0)
    80201c94:	fe843703          	ld	a4,-24(s0)
    80201c98:	0001a797          	auipc	a5,0x1a
    80201c9c:	53078793          	addi	a5,a5,1328 # 8021c1c8 <proc+0x1c8>
    80201ca0:	f8f764e3          	bltu	a4,a5,80201c28 <scheduler+0x1a>
    80201ca4:	a011                	j	80201ca8 <scheduler+0x9a>
    80201ca6:	0001                	nop
    80201ca8:	00021797          	auipc	a5,0x21
    80201cac:	3f878793          	addi	a5,a5,1016 # 802230a0 <app_num>
    80201cb0:	639c                	ld	a5,0(a5)
    80201cb2:	fe043703          	ld	a4,-32(s0)
    80201cb6:	f6f762e3          	bltu	a4,a5,80201c1a <scheduler+0xc>
    80201cba:	fe043023          	sd	zero,-32(s0)
    80201cbe:	0001                	nop
    80201cc0:	00003517          	auipc	a0,0x3
    80201cc4:	90050513          	addi	a0,a0,-1792 # 802045c0 <rodata_start+0x5c0>
    80201cc8:	8a2ff0ef          	jal	80200d6a <printk>
    80201ccc:	4501                	li	a0,0
    80201cce:	fd2fe0ef          	jal	802004a0 <sbi_shut_down>
    80201cd2:	0001                	nop
    80201cd4:	60e2                	ld	ra,24(sp)
    80201cd6:	6442                	ld	s0,16(sp)
    80201cd8:	6105                	addi	sp,sp,32
    80201cda:	8082                	ret

0000000080201cdc <sched>:
    80201cdc:	1101                	addi	sp,sp,-32
    80201cde:	ec06                	sd	ra,24(sp)
    80201ce0:	e822                	sd	s0,16(sp)
    80201ce2:	1000                	addi	s0,sp,32
    80201ce4:	f0fff0ef          	jal	80201bf2 <get_cur_proc>
    80201ce8:	fea43423          	sd	a0,-24(s0)
    80201cec:	fe843783          	ld	a5,-24(s0)
    80201cf0:	02878793          	addi	a5,a5,40
    80201cf4:	00021597          	auipc	a1,0x21
    80201cf8:	33458593          	addi	a1,a1,820 # 80223028 <os_proc+0x28>
    80201cfc:	853e                	mv	a0,a5
    80201cfe:	ce7ff0ef          	jal	802019e4 <__switch>
    80201d02:	0001                	nop
    80201d04:	60e2                	ld	ra,24(sp)
    80201d06:	6442                	ld	s0,16(sp)
    80201d08:	6105                	addi	sp,sp,32
    80201d0a:	8082                	ret

0000000080201d0c <yield>:
    80201d0c:	1141                	addi	sp,sp,-16
    80201d0e:	e406                	sd	ra,8(sp)
    80201d10:	e022                	sd	s0,0(sp)
    80201d12:	0800                	addi	s0,sp,16
    80201d14:	00021797          	auipc	a5,0x21
    80201d18:	39478793          	addi	a5,a5,916 # 802230a8 <current_proc>
    80201d1c:	639c                	ld	a5,0(a5)
    80201d1e:	4398                	lw	a4,0(a5)
    80201d20:	4789                	li	a5,2
    80201d22:	00f71963          	bne	a4,a5,80201d34 <yield+0x28>
    80201d26:	00021797          	auipc	a5,0x21
    80201d2a:	38278793          	addi	a5,a5,898 # 802230a8 <current_proc>
    80201d2e:	639c                	ld	a5,0(a5)
    80201d30:	0007a023          	sw	zero,0(a5)
    80201d34:	fa9ff0ef          	jal	80201cdc <sched>
    80201d38:	0001                	nop
    80201d3a:	60a2                	ld	ra,8(sp)
    80201d3c:	6402                	ld	s0,0(sp)
    80201d3e:	0141                	addi	sp,sp,16
    80201d40:	8082                	ret

0000000080201d42 <r_mstatus>:
    80201d42:	1101                	addi	sp,sp,-32
    80201d44:	ec06                	sd	ra,24(sp)
    80201d46:	e822                	sd	s0,16(sp)
    80201d48:	1000                	addi	s0,sp,32
    80201d4a:	300027f3          	csrr	a5,mstatus
    80201d4e:	fef43423          	sd	a5,-24(s0)
    80201d52:	fe843783          	ld	a5,-24(s0)
    80201d56:	853e                	mv	a0,a5
    80201d58:	60e2                	ld	ra,24(sp)
    80201d5a:	6442                	ld	s0,16(sp)
    80201d5c:	6105                	addi	sp,sp,32
    80201d5e:	8082                	ret

0000000080201d60 <r_sie>:
    80201d60:	1101                	addi	sp,sp,-32
    80201d62:	ec06                	sd	ra,24(sp)
    80201d64:	e822                	sd	s0,16(sp)
    80201d66:	1000                	addi	s0,sp,32
    80201d68:	104027f3          	csrr	a5,sie
    80201d6c:	fef43423          	sd	a5,-24(s0)
    80201d70:	fe843783          	ld	a5,-24(s0)
    80201d74:	853e                	mv	a0,a5
    80201d76:	60e2                	ld	ra,24(sp)
    80201d78:	6442                	ld	s0,16(sp)
    80201d7a:	6105                	addi	sp,sp,32
    80201d7c:	8082                	ret

0000000080201d7e <w_sie>:
    80201d7e:	1101                	addi	sp,sp,-32
    80201d80:	ec06                	sd	ra,24(sp)
    80201d82:	e822                	sd	s0,16(sp)
    80201d84:	1000                	addi	s0,sp,32
    80201d86:	fea43423          	sd	a0,-24(s0)
    80201d8a:	fe843783          	ld	a5,-24(s0)
    80201d8e:	10479073          	csrw	sie,a5
    80201d92:	0001                	nop
    80201d94:	60e2                	ld	ra,24(sp)
    80201d96:	6442                	ld	s0,16(sp)
    80201d98:	6105                	addi	sp,sp,32
    80201d9a:	8082                	ret

0000000080201d9c <r_time>:
    80201d9c:	1101                	addi	sp,sp,-32
    80201d9e:	ec06                	sd	ra,24(sp)
    80201da0:	e822                	sd	s0,16(sp)
    80201da2:	1000                	addi	s0,sp,32
    80201da4:	c01027f3          	rdtime	a5
    80201da8:	fef43423          	sd	a5,-24(s0)
    80201dac:	fe843783          	ld	a5,-24(s0)
    80201db0:	853e                	mv	a0,a5
    80201db2:	60e2                	ld	ra,24(sp)
    80201db4:	6442                	ld	s0,16(sp)
    80201db6:	6105                	addi	sp,sp,32
    80201db8:	8082                	ret

0000000080201dba <get_cycle>:
    80201dba:	1141                	addi	sp,sp,-16
    80201dbc:	e406                	sd	ra,8(sp)
    80201dbe:	e022                	sd	s0,0(sp)
    80201dc0:	0800                	addi	s0,sp,16
    80201dc2:	fdbff0ef          	jal	80201d9c <r_time>
    80201dc6:	87aa                	mv	a5,a0
    80201dc8:	853e                	mv	a0,a5
    80201dca:	60a2                	ld	ra,8(sp)
    80201dcc:	6402                	ld	s0,0(sp)
    80201dce:	0141                	addi	sp,sp,16
    80201dd0:	8082                	ret

0000000080201dd2 <set_timer>:
    80201dd2:	1101                	addi	sp,sp,-32
    80201dd4:	ec06                	sd	ra,24(sp)
    80201dd6:	e822                	sd	s0,16(sp)
    80201dd8:	1000                	addi	s0,sp,32
    80201dda:	fea43423          	sd	a0,-24(s0)
    80201dde:	fe843503          	ld	a0,-24(s0)
    80201de2:	e5efe0ef          	jal	80200440 <sbi_set_timer>
    80201de6:	0001                	nop
    80201de8:	60e2                	ld	ra,24(sp)
    80201dea:	6442                	ld	s0,16(sp)
    80201dec:	6105                	addi	sp,sp,32
    80201dee:	8082                	ret

0000000080201df0 <set_next_10ms_timer>:
    80201df0:	1101                	addi	sp,sp,-32
    80201df2:	ec06                	sd	ra,24(sp)
    80201df4:	e822                	sd	s0,16(sp)
    80201df6:	1000                	addi	s0,sp,32
    80201df8:	67e1                	lui	a5,0x18
    80201dfa:	6a078793          	addi	a5,a5,1696 # 186a0 <n+0x18680>
    80201dfe:	fef43423          	sd	a5,-24(s0)
    80201e02:	fb9ff0ef          	jal	80201dba <get_cycle>
    80201e06:	872a                	mv	a4,a0
    80201e08:	fe843783          	ld	a5,-24(s0)
    80201e0c:	97ba                	add	a5,a5,a4
    80201e0e:	853e                	mv	a0,a5
    80201e10:	fc3ff0ef          	jal	80201dd2 <set_timer>
    80201e14:	0001                	nop
    80201e16:	60e2                	ld	ra,24(sp)
    80201e18:	6442                	ld	s0,16(sp)
    80201e1a:	6105                	addi	sp,sp,32
    80201e1c:	8082                	ret

0000000080201e1e <get_time_us>:
    80201e1e:	1141                	addi	sp,sp,-16
    80201e20:	e406                	sd	ra,8(sp)
    80201e22:	e022                	sd	s0,0(sp)
    80201e24:	0800                	addi	s0,sp,16
    80201e26:	f95ff0ef          	jal	80201dba <get_cycle>
    80201e2a:	872a                	mv	a4,a0
    80201e2c:	00002797          	auipc	a5,0x2
    80201e30:	7f478793          	addi	a5,a5,2036 # 80204620 <rodata_start+0x620>
    80201e34:	639c                	ld	a5,0(a5)
    80201e36:	02f737b3          	mulhu	a5,a4,a5
    80201e3a:	838d                	srli	a5,a5,0x3
    80201e3c:	853e                	mv	a0,a5
    80201e3e:	60a2                	ld	ra,8(sp)
    80201e40:	6402                	ld	s0,0(sp)
    80201e42:	0141                	addi	sp,sp,16
    80201e44:	8082                	ret

0000000080201e46 <enable_timer_interrupt>:
    80201e46:	1141                	addi	sp,sp,-16
    80201e48:	e406                	sd	ra,8(sp)
    80201e4a:	e022                	sd	s0,0(sp)
    80201e4c:	0800                	addi	s0,sp,16
    80201e4e:	f13ff0ef          	jal	80201d60 <r_sie>
    80201e52:	87aa                	mv	a5,a0
    80201e54:	0207e793          	ori	a5,a5,32
    80201e58:	853e                	mv	a0,a5
    80201e5a:	f25ff0ef          	jal	80201d7e <w_sie>
    80201e5e:	0001                	nop
    80201e60:	60a2                	ld	ra,8(sp)
    80201e62:	6402                	ld	s0,0(sp)
    80201e64:	0141                	addi	sp,sp,16
    80201e66:	8082                	ret

0000000080201e68 <timer_init>:
    80201e68:	1141                	addi	sp,sp,-16
    80201e6a:	e406                	sd	ra,8(sp)
    80201e6c:	e022                	sd	s0,0(sp)
    80201e6e:	0800                	addi	s0,sp,16
    80201e70:	fd7ff0ef          	jal	80201e46 <enable_timer_interrupt>
    80201e74:	f7dff0ef          	jal	80201df0 <set_next_10ms_timer>
    80201e78:	00002517          	auipc	a0,0x2
    80201e7c:	77050513          	addi	a0,a0,1904 # 802045e8 <rodata_start+0x5e8>
    80201e80:	eebfe0ef          	jal	80200d6a <printk>
    80201e84:	0001                	nop
    80201e86:	60a2                	ld	ra,8(sp)
    80201e88:	6402                	ld	s0,0(sp)
    80201e8a:	0141                	addi	sp,sp,16
    80201e8c:	8082                	ret

0000000080201e8e <interrupt_query>:
    80201e8e:	1101                	addi	sp,sp,-32
    80201e90:	ec06                	sd	ra,24(sp)
    80201e92:	e822                	sd	s0,16(sp)
    80201e94:	1000                	addi	s0,sp,32
    80201e96:	eadff0ef          	jal	80201d42 <r_mstatus>
    80201e9a:	fea43423          	sd	a0,-24(s0)
    80201e9e:	fe843583          	ld	a1,-24(s0)
    80201ea2:	00002517          	auipc	a0,0x2
    80201ea6:	75e50513          	addi	a0,a0,1886 # 80204600 <rodata_start+0x600>
    80201eaa:	ec1fe0ef          	jal	80200d6a <printk>
    80201eae:	0001                	nop
    80201eb0:	60e2                	ld	ra,24(sp)
    80201eb2:	6442                	ld	s0,16(sp)
    80201eb4:	6105                	addi	sp,sp,32
    80201eb6:	8082                	ret

0000000080201eb8 <freerange>:
    80201eb8:	7179                	addi	sp,sp,-48
    80201eba:	f406                	sd	ra,40(sp)
    80201ebc:	f022                	sd	s0,32(sp)
    80201ebe:	1800                	addi	s0,sp,48
    80201ec0:	fca43c23          	sd	a0,-40(s0)
    80201ec4:	fcb43823          	sd	a1,-48(s0)
    80201ec8:	fd843703          	ld	a4,-40(s0)
    80201ecc:	6785                	lui	a5,0x1
    80201ece:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80201ed0:	973e                	add	a4,a4,a5
    80201ed2:	77fd                	lui	a5,0xfffff
    80201ed4:	8ff9                	and	a5,a5,a4
    80201ed6:	fef43423          	sd	a5,-24(s0)
    80201eda:	a819                	j	80201ef0 <freerange+0x38>
    80201edc:	fe843503          	ld	a0,-24(s0)
    80201ee0:	068000ef          	jal	80201f48 <kfree>
    80201ee4:	fe843703          	ld	a4,-24(s0)
    80201ee8:	6785                	lui	a5,0x1
    80201eea:	97ba                	add	a5,a5,a4
    80201eec:	fef43423          	sd	a5,-24(s0)
    80201ef0:	fe843703          	ld	a4,-24(s0)
    80201ef4:	6785                	lui	a5,0x1
    80201ef6:	97ba                	add	a5,a5,a4
    80201ef8:	fd043703          	ld	a4,-48(s0)
    80201efc:	fef770e3          	bgeu	a4,a5,80201edc <freerange+0x24>
    80201f00:	0001                	nop
    80201f02:	0001                	nop
    80201f04:	70a2                	ld	ra,40(sp)
    80201f06:	7402                	ld	s0,32(sp)
    80201f08:	6145                	addi	sp,sp,48
    80201f0a:	8082                	ret

0000000080201f0c <kernel_init>:
    80201f0c:	1141                	addi	sp,sp,-16
    80201f0e:	e406                	sd	ra,8(sp)
    80201f10:	e022                	sd	s0,0(sp)
    80201f12:	0800                	addi	s0,sp,16
    80201f14:	47c5                	li	a5,17
    80201f16:	01b79593          	slli	a1,a5,0x1b
    80201f1a:	00022517          	auipc	a0,0x22
    80201f1e:	0e650513          	addi	a0,a0,230 # 80224000 <bss_end>
    80201f22:	f97ff0ef          	jal	80201eb8 <freerange>
    80201f26:	88000637          	lui	a2,0x88000
    80201f2a:	00022597          	auipc	a1,0x22
    80201f2e:	0d658593          	addi	a1,a1,214 # 80224000 <bss_end>
    80201f32:	00002517          	auipc	a0,0x2
    80201f36:	6f650513          	addi	a0,a0,1782 # 80204628 <rodata_start+0x628>
    80201f3a:	e31fe0ef          	jal	80200d6a <printk>
    80201f3e:	0001                	nop
    80201f40:	60a2                	ld	ra,8(sp)
    80201f42:	6402                	ld	s0,0(sp)
    80201f44:	0141                	addi	sp,sp,16
    80201f46:	8082                	ret

0000000080201f48 <kfree>:
    80201f48:	7179                	addi	sp,sp,-48
    80201f4a:	f406                	sd	ra,40(sp)
    80201f4c:	f022                	sd	s0,32(sp)
    80201f4e:	1800                	addi	s0,sp,48
    80201f50:	fca43c23          	sd	a0,-40(s0)
    80201f54:	fd843703          	ld	a4,-40(s0)
    80201f58:	6785                	lui	a5,0x1
    80201f5a:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80201f5c:	8ff9                	and	a5,a5,a4
    80201f5e:	ef99                	bnez	a5,80201f7c <kfree+0x34>
    80201f60:	fd843703          	ld	a4,-40(s0)
    80201f64:	00022797          	auipc	a5,0x22
    80201f68:	09c78793          	addi	a5,a5,156 # 80224000 <bss_end>
    80201f6c:	00f76863          	bltu	a4,a5,80201f7c <kfree+0x34>
    80201f70:	fd843703          	ld	a4,-40(s0)
    80201f74:	47c5                	li	a5,17
    80201f76:	07ee                	slli	a5,a5,0x1b
    80201f78:	00f76863          	bltu	a4,a5,80201f88 <kfree+0x40>
    80201f7c:	00002517          	auipc	a0,0x2
    80201f80:	6d450513          	addi	a0,a0,1748 # 80204650 <rodata_start+0x650>
    80201f84:	df0fe0ef          	jal	80200574 <panic>
    80201f88:	6605                	lui	a2,0x1
    80201f8a:	4585                	li	a1,1
    80201f8c:	fd843503          	ld	a0,-40(s0)
    80201f90:	cf6ff0ef          	jal	80201486 <memset>
    80201f94:	fd843783          	ld	a5,-40(s0)
    80201f98:	fef43423          	sd	a5,-24(s0)
    80201f9c:	00021797          	auipc	a5,0x21
    80201fa0:	11478793          	addi	a5,a5,276 # 802230b0 <kmem>
    80201fa4:	6398                	ld	a4,0(a5)
    80201fa6:	fe843783          	ld	a5,-24(s0)
    80201faa:	e398                	sd	a4,0(a5)
    80201fac:	00021797          	auipc	a5,0x21
    80201fb0:	10478793          	addi	a5,a5,260 # 802230b0 <kmem>
    80201fb4:	fe843703          	ld	a4,-24(s0)
    80201fb8:	e398                	sd	a4,0(a5)
    80201fba:	0001                	nop
    80201fbc:	70a2                	ld	ra,40(sp)
    80201fbe:	7402                	ld	s0,32(sp)
    80201fc0:	6145                	addi	sp,sp,48
    80201fc2:	8082                	ret

0000000080201fc4 <kalloc>:
    80201fc4:	1101                	addi	sp,sp,-32
    80201fc6:	ec06                	sd	ra,24(sp)
    80201fc8:	e822                	sd	s0,16(sp)
    80201fca:	1000                	addi	s0,sp,32
    80201fcc:	00021797          	auipc	a5,0x21
    80201fd0:	0e478793          	addi	a5,a5,228 # 802230b0 <kmem>
    80201fd4:	639c                	ld	a5,0(a5)
    80201fd6:	fef43423          	sd	a5,-24(s0)
    80201fda:	fe843783          	ld	a5,-24(s0)
    80201fde:	cf99                	beqz	a5,80201ffc <kalloc+0x38>
    80201fe0:	fe843783          	ld	a5,-24(s0)
    80201fe4:	6398                	ld	a4,0(a5)
    80201fe6:	00021797          	auipc	a5,0x21
    80201fea:	0ca78793          	addi	a5,a5,202 # 802230b0 <kmem>
    80201fee:	e398                	sd	a4,0(a5)
    80201ff0:	6605                	lui	a2,0x1
    80201ff2:	4595                	li	a1,5
    80201ff4:	fe843503          	ld	a0,-24(s0)
    80201ff8:	c8eff0ef          	jal	80201486 <memset>
    80201ffc:	fe843783          	ld	a5,-24(s0)
    80202000:	853e                	mv	a0,a5
    80202002:	60e2                	ld	ra,24(sp)
    80202004:	6442                	ld	s0,16(sp)
    80202006:	6105                	addi	sp,sp,32
    80202008:	8082                	ret

000000008020200a <w_satp>:
    8020200a:	1101                	addi	sp,sp,-32
    8020200c:	ec06                	sd	ra,24(sp)
    8020200e:	e822                	sd	s0,16(sp)
    80202010:	1000                	addi	s0,sp,32
    80202012:	fea43423          	sd	a0,-24(s0)
    80202016:	fe843783          	ld	a5,-24(s0)
    8020201a:	18079073          	csrw	satp,a5
    8020201e:	0001                	nop
    80202020:	60e2                	ld	ra,24(sp)
    80202022:	6442                	ld	s0,16(sp)
    80202024:	6105                	addi	sp,sp,32
    80202026:	8082                	ret

0000000080202028 <r_satp>:
    80202028:	1101                	addi	sp,sp,-32
    8020202a:	ec06                	sd	ra,24(sp)
    8020202c:	e822                	sd	s0,16(sp)
    8020202e:	1000                	addi	s0,sp,32
    80202030:	180027f3          	csrr	a5,satp
    80202034:	fef43423          	sd	a5,-24(s0)
    80202038:	fe843783          	ld	a5,-24(s0)
    8020203c:	853e                	mv	a0,a5
    8020203e:	60e2                	ld	ra,24(sp)
    80202040:	6442                	ld	s0,16(sp)
    80202042:	6105                	addi	sp,sp,32
    80202044:	8082                	ret

0000000080202046 <sfence_vma>:
    80202046:	1141                	addi	sp,sp,-16
    80202048:	e406                	sd	ra,8(sp)
    8020204a:	e022                	sd	s0,0(sp)
    8020204c:	0800                	addi	s0,sp,16
    8020204e:	12000073          	sfence.vma
    80202052:	0001                	nop
    80202054:	60a2                	ld	ra,8(sp)
    80202056:	6402                	ld	s0,0(sp)
    80202058:	0141                	addi	sp,sp,16
    8020205a:	8082                	ret

000000008020205c <mappages>:
    8020205c:	711d                	addi	sp,sp,-96
    8020205e:	ec86                	sd	ra,88(sp)
    80202060:	e8a2                	sd	s0,80(sp)
    80202062:	1080                	addi	s0,sp,96
    80202064:	fca43423          	sd	a0,-56(s0)
    80202068:	fcb43023          	sd	a1,-64(s0)
    8020206c:	fac43c23          	sd	a2,-72(s0)
    80202070:	fad43823          	sd	a3,-80(s0)
    80202074:	87ba                	mv	a5,a4
    80202076:	faf42623          	sw	a5,-84(s0)
    8020207a:	fc043703          	ld	a4,-64(s0)
    8020207e:	77fd                	lui	a5,0xfffff
    80202080:	8ff9                	and	a5,a5,a4
    80202082:	fef43423          	sd	a5,-24(s0)
    80202086:	fc043703          	ld	a4,-64(s0)
    8020208a:	fb843783          	ld	a5,-72(s0)
    8020208e:	97ba                	add	a5,a5,a4
    80202090:	fff78713          	addi	a4,a5,-1 # ffffffffffffefff <bss_end+0xffffffff7fddafff>
    80202094:	77fd                	lui	a5,0xfffff
    80202096:	8ff9                	and	a5,a5,a4
    80202098:	fef43023          	sd	a5,-32(s0)
    8020209c:	4605                	li	a2,1
    8020209e:	fe843583          	ld	a1,-24(s0)
    802020a2:	fc843503          	ld	a0,-56(s0)
    802020a6:	350000ef          	jal	802023f6 <walk>
    802020aa:	fca43c23          	sd	a0,-40(s0)
    802020ae:	fd843783          	ld	a5,-40(s0)
    802020b2:	eb89                	bnez	a5,802020c4 <mappages+0x68>
    802020b4:	00002517          	auipc	a0,0x2
    802020b8:	5a450513          	addi	a0,a0,1444 # 80204658 <rodata_start+0x658>
    802020bc:	caffe0ef          	jal	80200d6a <printk>
    802020c0:	57fd                	li	a5,-1
    802020c2:	a085                	j	80202122 <mappages+0xc6>
    802020c4:	fd843783          	ld	a5,-40(s0)
    802020c8:	639c                	ld	a5,0(a5)
    802020ca:	8b85                	andi	a5,a5,1
    802020cc:	cb89                	beqz	a5,802020de <mappages+0x82>
    802020ce:	00002517          	auipc	a0,0x2
    802020d2:	5a250513          	addi	a0,a0,1442 # 80204670 <rodata_start+0x670>
    802020d6:	c95fe0ef          	jal	80200d6a <printk>
    802020da:	57fd                	li	a5,-1
    802020dc:	a099                	j	80202122 <mappages+0xc6>
    802020de:	fb043783          	ld	a5,-80(s0)
    802020e2:	83b1                	srli	a5,a5,0xc
    802020e4:	00a79713          	slli	a4,a5,0xa
    802020e8:	fac42783          	lw	a5,-84(s0)
    802020ec:	8fd9                	or	a5,a5,a4
    802020ee:	0017e713          	ori	a4,a5,1
    802020f2:	fd843783          	ld	a5,-40(s0)
    802020f6:	e398                	sd	a4,0(a5)
    802020f8:	fe843703          	ld	a4,-24(s0)
    802020fc:	fe043783          	ld	a5,-32(s0)
    80202100:	00f70f63          	beq	a4,a5,8020211e <mappages+0xc2>
    80202104:	fe843703          	ld	a4,-24(s0)
    80202108:	6785                	lui	a5,0x1
    8020210a:	97ba                	add	a5,a5,a4
    8020210c:	fef43423          	sd	a5,-24(s0)
    80202110:	fb043703          	ld	a4,-80(s0)
    80202114:	6785                	lui	a5,0x1
    80202116:	97ba                	add	a5,a5,a4
    80202118:	faf43823          	sd	a5,-80(s0)
    8020211c:	b741                	j	8020209c <mappages+0x40>
    8020211e:	0001                	nop
    80202120:	4781                	li	a5,0
    80202122:	853e                	mv	a0,a5
    80202124:	60e6                	ld	ra,88(sp)
    80202126:	6446                	ld	s0,80(sp)
    80202128:	6125                	addi	sp,sp,96
    8020212a:	8082                	ret

000000008020212c <kvmmap>:
    8020212c:	7139                	addi	sp,sp,-64
    8020212e:	fc06                	sd	ra,56(sp)
    80202130:	f822                	sd	s0,48(sp)
    80202132:	0080                	addi	s0,sp,64
    80202134:	fea43423          	sd	a0,-24(s0)
    80202138:	feb43023          	sd	a1,-32(s0)
    8020213c:	fcc43c23          	sd	a2,-40(s0)
    80202140:	fcd43823          	sd	a3,-48(s0)
    80202144:	87ba                	mv	a5,a4
    80202146:	fcf42623          	sw	a5,-52(s0)
    8020214a:	fcc42783          	lw	a5,-52(s0)
    8020214e:	873e                	mv	a4,a5
    80202150:	fd843683          	ld	a3,-40(s0)
    80202154:	fd043603          	ld	a2,-48(s0)
    80202158:	fe043583          	ld	a1,-32(s0)
    8020215c:	fe843503          	ld	a0,-24(s0)
    80202160:	efdff0ef          	jal	8020205c <mappages>
    80202164:	87aa                	mv	a5,a0
    80202166:	c799                	beqz	a5,80202174 <kvmmap+0x48>
    80202168:	00002517          	auipc	a0,0x2
    8020216c:	51850513          	addi	a0,a0,1304 # 80204680 <rodata_start+0x680>
    80202170:	c04fe0ef          	jal	80200574 <panic>
    80202174:	0001                	nop
    80202176:	70e2                	ld	ra,56(sp)
    80202178:	7442                	ld	s0,48(sp)
    8020217a:	6121                	addi	sp,sp,64
    8020217c:	8082                	ret

000000008020217e <kvmmake>:
    8020217e:	1101                	addi	sp,sp,-32
    80202180:	ec06                	sd	ra,24(sp)
    80202182:	e822                	sd	s0,16(sp)
    80202184:	1000                	addi	s0,sp,32
    80202186:	e3fff0ef          	jal	80201fc4 <kalloc>
    8020218a:	fea43423          	sd	a0,-24(s0)
    8020218e:	6605                	lui	a2,0x1
    80202190:	4581                	li	a1,0
    80202192:	fe843503          	ld	a0,-24(s0)
    80202196:	af0ff0ef          	jal	80201486 <memset>
    8020219a:	00002717          	auipc	a4,0x2
    8020219e:	e6670713          	addi	a4,a4,-410 # 80204000 <rodata_start>
    802021a2:	bff00793          	li	a5,-1025
    802021a6:	07d6                	slli	a5,a5,0x15
    802021a8:	97ba                	add	a5,a5,a4
    802021aa:	4729                	li	a4,10
    802021ac:	86be                	mv	a3,a5
    802021ae:	40100793          	li	a5,1025
    802021b2:	01579613          	slli	a2,a5,0x15
    802021b6:	40100793          	li	a5,1025
    802021ba:	01579593          	slli	a1,a5,0x15
    802021be:	fe843503          	ld	a0,-24(s0)
    802021c2:	f6bff0ef          	jal	8020212c <kvmmap>
    802021c6:	00002597          	auipc	a1,0x2
    802021ca:	e3a58593          	addi	a1,a1,-454 # 80204000 <rodata_start>
    802021ce:	00002617          	auipc	a2,0x2
    802021d2:	e3260613          	addi	a2,a2,-462 # 80204000 <rodata_start>
    802021d6:	00002797          	auipc	a5,0x2
    802021da:	e2a78793          	addi	a5,a5,-470 # 80204000 <rodata_start>
    802021de:	4745                	li	a4,17
    802021e0:	076e                	slli	a4,a4,0x1b
    802021e2:	40f707b3          	sub	a5,a4,a5
    802021e6:	4719                	li	a4,6
    802021e8:	86be                	mv	a3,a5
    802021ea:	fe843503          	ld	a0,-24(s0)
    802021ee:	f3fff0ef          	jal	8020212c <kvmmap>
    802021f2:	00001797          	auipc	a5,0x1
    802021f6:	e0e78793          	addi	a5,a5,-498 # 80203000 <__alltraps>
    802021fa:	4729                	li	a4,10
    802021fc:	6685                	lui	a3,0x1
    802021fe:	863e                	mv	a2,a5
    80202200:	040007b7          	lui	a5,0x4000
    80202204:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80202206:	00c79593          	slli	a1,a5,0xc
    8020220a:	fe843503          	ld	a0,-24(s0)
    8020220e:	f1fff0ef          	jal	8020212c <kvmmap>
    80202212:	fe843783          	ld	a5,-24(s0)
    80202216:	853e                	mv	a0,a5
    80202218:	60e2                	ld	ra,24(sp)
    8020221a:	6442                	ld	s0,16(sp)
    8020221c:	6105                	addi	sp,sp,32
    8020221e:	8082                	ret

0000000080202220 <kvm_init>:
    80202220:	1141                	addi	sp,sp,-16
    80202222:	e406                	sd	ra,8(sp)
    80202224:	e022                	sd	s0,0(sp)
    80202226:	0800                	addi	s0,sp,16
    80202228:	f57ff0ef          	jal	8020217e <kvmmake>
    8020222c:	872a                	mv	a4,a0
    8020222e:	00021797          	auipc	a5,0x21
    80202232:	e8a78793          	addi	a5,a5,-374 # 802230b8 <kernle_pagetable>
    80202236:	e398                	sd	a4,0(a5)
    80202238:	00021797          	auipc	a5,0x21
    8020223c:	e8078793          	addi	a5,a5,-384 # 802230b8 <kernle_pagetable>
    80202240:	639c                	ld	a5,0(a5)
    80202242:	00c7d713          	srli	a4,a5,0xc
    80202246:	57fd                	li	a5,-1
    80202248:	17fe                	slli	a5,a5,0x3f
    8020224a:	8fd9                	or	a5,a5,a4
    8020224c:	853e                	mv	a0,a5
    8020224e:	dbdff0ef          	jal	8020200a <w_satp>
    80202252:	df5ff0ef          	jal	80202046 <sfence_vma>
    80202256:	dd3ff0ef          	jal	80202028 <r_satp>
    8020225a:	87aa                	mv	a5,a0
    8020225c:	85be                	mv	a1,a5
    8020225e:	00002517          	auipc	a0,0x2
    80202262:	42a50513          	addi	a0,a0,1066 # 80204688 <rodata_start+0x688>
    80202266:	b05fe0ef          	jal	80200d6a <printk>
    8020226a:	0001                	nop
    8020226c:	60a2                	ld	ra,8(sp)
    8020226e:	6402                	ld	s0,0(sp)
    80202270:	0141                	addi	sp,sp,16
    80202272:	8082                	ret

0000000080202274 <uvmunmap>:
    80202274:	715d                	addi	sp,sp,-80
    80202276:	e486                	sd	ra,72(sp)
    80202278:	e0a2                	sd	s0,64(sp)
    8020227a:	0880                	addi	s0,sp,80
    8020227c:	fca43423          	sd	a0,-56(s0)
    80202280:	fcb43023          	sd	a1,-64(s0)
    80202284:	fac43c23          	sd	a2,-72(s0)
    80202288:	87b6                	mv	a5,a3
    8020228a:	faf42a23          	sw	a5,-76(s0)
    8020228e:	fc043703          	ld	a4,-64(s0)
    80202292:	6785                	lui	a5,0x1
    80202294:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    80202296:	8ff9                	and	a5,a5,a4
    80202298:	c799                	beqz	a5,802022a6 <uvmunmap+0x32>
    8020229a:	00002517          	auipc	a0,0x2
    8020229e:	41650513          	addi	a0,a0,1046 # 802046b0 <rodata_start+0x6b0>
    802022a2:	ad2fe0ef          	jal	80200574 <panic>
    802022a6:	fc043783          	ld	a5,-64(s0)
    802022aa:	fef43423          	sd	a5,-24(s0)
    802022ae:	a885                	j	8020231e <uvmunmap+0xaa>
    802022b0:	4601                	li	a2,0
    802022b2:	fe843583          	ld	a1,-24(s0)
    802022b6:	fc843503          	ld	a0,-56(s0)
    802022ba:	13c000ef          	jal	802023f6 <walk>
    802022be:	fea43023          	sd	a0,-32(s0)
    802022c2:	fe043783          	ld	a5,-32(s0)
    802022c6:	c7a9                	beqz	a5,80202310 <uvmunmap+0x9c>
    802022c8:	fe043783          	ld	a5,-32(s0)
    802022cc:	639c                	ld	a5,0(a5)
    802022ce:	8b85                	andi	a5,a5,1
    802022d0:	c3a9                	beqz	a5,80202312 <uvmunmap+0x9e>
    802022d2:	fe043783          	ld	a5,-32(s0)
    802022d6:	639c                	ld	a5,0(a5)
    802022d8:	3ff7f713          	andi	a4,a5,1023
    802022dc:	4785                	li	a5,1
    802022de:	00f71863          	bne	a4,a5,802022ee <uvmunmap+0x7a>
    802022e2:	00002517          	auipc	a0,0x2
    802022e6:	3ee50513          	addi	a0,a0,1006 # 802046d0 <rodata_start+0x6d0>
    802022ea:	a8afe0ef          	jal	80200574 <panic>
    802022ee:	fb442783          	lw	a5,-76(s0)
    802022f2:	2781                	sext.w	a5,a5
    802022f4:	cf99                	beqz	a5,80202312 <uvmunmap+0x9e>
    802022f6:	fe043783          	ld	a5,-32(s0)
    802022fa:	639c                	ld	a5,0(a5)
    802022fc:	83a9                	srli	a5,a5,0xa
    802022fe:	07b2                	slli	a5,a5,0xc
    80202300:	fcf43c23          	sd	a5,-40(s0)
    80202304:	fd843783          	ld	a5,-40(s0)
    80202308:	853e                	mv	a0,a5
    8020230a:	c3fff0ef          	jal	80201f48 <kfree>
    8020230e:	a011                	j	80202312 <uvmunmap+0x9e>
    80202310:	0001                	nop
    80202312:	fe843703          	ld	a4,-24(s0)
    80202316:	6785                	lui	a5,0x1
    80202318:	97ba                	add	a5,a5,a4
    8020231a:	fef43423          	sd	a5,-24(s0)
    8020231e:	fb843783          	ld	a5,-72(s0)
    80202322:	00c79713          	slli	a4,a5,0xc
    80202326:	fc043783          	ld	a5,-64(s0)
    8020232a:	97ba                	add	a5,a5,a4
    8020232c:	fe843703          	ld	a4,-24(s0)
    80202330:	f8f760e3          	bltu	a4,a5,802022b0 <uvmunmap+0x3c>
    80202334:	0001                	nop
    80202336:	0001                	nop
    80202338:	60a6                	ld	ra,72(sp)
    8020233a:	6406                	ld	s0,64(sp)
    8020233c:	6161                	addi	sp,sp,80
    8020233e:	8082                	ret

0000000080202340 <uvmcreate>:
    80202340:	1101                	addi	sp,sp,-32
    80202342:	ec06                	sd	ra,24(sp)
    80202344:	e822                	sd	s0,16(sp)
    80202346:	1000                	addi	s0,sp,32
    80202348:	c7dff0ef          	jal	80201fc4 <kalloc>
    8020234c:	fea43423          	sd	a0,-24(s0)
    80202350:	fe843783          	ld	a5,-24(s0)
    80202354:	eb89                	bnez	a5,80202366 <uvmcreate+0x26>
    80202356:	00002517          	auipc	a0,0x2
    8020235a:	39250513          	addi	a0,a0,914 # 802046e8 <rodata_start+0x6e8>
    8020235e:	a0dfe0ef          	jal	80200d6a <printk>
    80202362:	4781                	li	a5,0
    80202364:	a881                	j	802023b4 <uvmcreate+0x74>
    80202366:	6605                	lui	a2,0x1
    80202368:	4581                	li	a1,0
    8020236a:	fe843503          	ld	a0,-24(s0)
    8020236e:	918ff0ef          	jal	80201486 <memset>
    80202372:	00001797          	auipc	a5,0x1
    80202376:	c8e78793          	addi	a5,a5,-882 # 80203000 <__alltraps>
    8020237a:	4729                	li	a4,10
    8020237c:	86be                	mv	a3,a5
    8020237e:	6605                	lui	a2,0x1
    80202380:	040007b7          	lui	a5,0x4000
    80202384:	17fd                	addi	a5,a5,-1 # 3ffffff <n+0x3ffffdf>
    80202386:	00c79593          	slli	a1,a5,0xc
    8020238a:	fe843503          	ld	a0,-24(s0)
    8020238e:	ccfff0ef          	jal	8020205c <mappages>
    80202392:	87aa                	mv	a5,a0
    80202394:	0007de63          	bgez	a5,802023b0 <uvmcreate+0x70>
    80202398:	fe843503          	ld	a0,-24(s0)
    8020239c:	badff0ef          	jal	80201f48 <kfree>
    802023a0:	00002517          	auipc	a0,0x2
    802023a4:	36850513          	addi	a0,a0,872 # 80204708 <rodata_start+0x708>
    802023a8:	9c3fe0ef          	jal	80200d6a <printk>
    802023ac:	4781                	li	a5,0
    802023ae:	a019                	j	802023b4 <uvmcreate+0x74>
    802023b0:	fe843783          	ld	a5,-24(s0)
    802023b4:	853e                	mv	a0,a5
    802023b6:	60e2                	ld	ra,24(sp)
    802023b8:	6442                	ld	s0,16(sp)
    802023ba:	6105                	addi	sp,sp,32
    802023bc:	8082                	ret

00000000802023be <uvmfree>:
    802023be:	1101                	addi	sp,sp,-32
    802023c0:	ec06                	sd	ra,24(sp)
    802023c2:	e822                	sd	s0,16(sp)
    802023c4:	1000                	addi	s0,sp,32
    802023c6:	fea43423          	sd	a0,-24(s0)
    802023ca:	feb43023          	sd	a1,-32(s0)
    802023ce:	fe043783          	ld	a5,-32(s0)
    802023d2:	cb89                	beqz	a5,802023e4 <uvmfree+0x26>
    802023d4:	4685                	li	a3,1
    802023d6:	fe043603          	ld	a2,-32(s0)
    802023da:	4581                	li	a1,0
    802023dc:	fe843503          	ld	a0,-24(s0)
    802023e0:	e95ff0ef          	jal	80202274 <uvmunmap>
    802023e4:	fe843503          	ld	a0,-24(s0)
    802023e8:	104000ef          	jal	802024ec <freewalk>
    802023ec:	0001                	nop
    802023ee:	60e2                	ld	ra,24(sp)
    802023f0:	6442                	ld	s0,16(sp)
    802023f2:	6105                	addi	sp,sp,32
    802023f4:	8082                	ret

00000000802023f6 <walk>:
    802023f6:	7139                	addi	sp,sp,-64
    802023f8:	fc06                	sd	ra,56(sp)
    802023fa:	f822                	sd	s0,48(sp)
    802023fc:	0080                	addi	s0,sp,64
    802023fe:	fca43c23          	sd	a0,-40(s0)
    80202402:	fcb43823          	sd	a1,-48(s0)
    80202406:	87b2                	mv	a5,a2
    80202408:	fcf42623          	sw	a5,-52(s0)
    8020240c:	fd043703          	ld	a4,-48(s0)
    80202410:	57fd                	li	a5,-1
    80202412:	83e9                	srli	a5,a5,0x1a
    80202414:	00e7f863          	bgeu	a5,a4,80202424 <walk+0x2e>
    80202418:	00002517          	auipc	a0,0x2
    8020241c:	31050513          	addi	a0,a0,784 # 80204728 <rodata_start+0x728>
    80202420:	954fe0ef          	jal	80200574 <panic>
    80202424:	4789                	li	a5,2
    80202426:	fef42623          	sw	a5,-20(s0)
    8020242a:	a871                	j	802024c6 <walk+0xd0>
    8020242c:	fec42783          	lw	a5,-20(s0)
    80202430:	873e                	mv	a4,a5
    80202432:	87ba                	mv	a5,a4
    80202434:	0037979b          	slliw	a5,a5,0x3
    80202438:	9fb9                	addw	a5,a5,a4
    8020243a:	2781                	sext.w	a5,a5
    8020243c:	27b1                	addiw	a5,a5,12
    8020243e:	2781                	sext.w	a5,a5
    80202440:	873e                	mv	a4,a5
    80202442:	fd043783          	ld	a5,-48(s0)
    80202446:	00e7d7b3          	srl	a5,a5,a4
    8020244a:	1ff7f793          	andi	a5,a5,511
    8020244e:	078e                	slli	a5,a5,0x3
    80202450:	fd843703          	ld	a4,-40(s0)
    80202454:	97ba                	add	a5,a5,a4
    80202456:	fef43023          	sd	a5,-32(s0)
    8020245a:	fe043783          	ld	a5,-32(s0)
    8020245e:	639c                	ld	a5,0(a5)
    80202460:	8b85                	andi	a5,a5,1
    80202462:	cb89                	beqz	a5,80202474 <walk+0x7e>
    80202464:	fe043783          	ld	a5,-32(s0)
    80202468:	639c                	ld	a5,0(a5)
    8020246a:	83a9                	srli	a5,a5,0xa
    8020246c:	07b2                	slli	a5,a5,0xc
    8020246e:	fcf43c23          	sd	a5,-40(s0)
    80202472:	a0a9                	j	802024bc <walk+0xc6>
    80202474:	fcc42783          	lw	a5,-52(s0)
    80202478:	2781                	sext.w	a5,a5
    8020247a:	cb81                	beqz	a5,8020248a <walk+0x94>
    8020247c:	b49ff0ef          	jal	80201fc4 <kalloc>
    80202480:	fca43c23          	sd	a0,-40(s0)
    80202484:	fd843783          	ld	a5,-40(s0)
    80202488:	eb99                	bnez	a5,8020249e <walk+0xa8>
    8020248a:	fd843583          	ld	a1,-40(s0)
    8020248e:	00002517          	auipc	a0,0x2
    80202492:	2a250513          	addi	a0,a0,674 # 80204730 <rodata_start+0x730>
    80202496:	8d5fe0ef          	jal	80200d6a <printk>
    8020249a:	4781                	li	a5,0
    8020249c:	a099                	j	802024e2 <walk+0xec>
    8020249e:	6605                	lui	a2,0x1
    802024a0:	4581                	li	a1,0
    802024a2:	fd843503          	ld	a0,-40(s0)
    802024a6:	fe1fe0ef          	jal	80201486 <memset>
    802024aa:	fd843783          	ld	a5,-40(s0)
    802024ae:	83b1                	srli	a5,a5,0xc
    802024b0:	07aa                	slli	a5,a5,0xa
    802024b2:	0017e713          	ori	a4,a5,1
    802024b6:	fe043783          	ld	a5,-32(s0)
    802024ba:	e398                	sd	a4,0(a5)
    802024bc:	fec42783          	lw	a5,-20(s0)
    802024c0:	37fd                	addiw	a5,a5,-1
    802024c2:	fef42623          	sw	a5,-20(s0)
    802024c6:	fec42783          	lw	a5,-20(s0)
    802024ca:	2781                	sext.w	a5,a5
    802024cc:	f6f040e3          	bgtz	a5,8020242c <walk+0x36>
    802024d0:	fd043783          	ld	a5,-48(s0)
    802024d4:	83b1                	srli	a5,a5,0xc
    802024d6:	1ff7f793          	andi	a5,a5,511
    802024da:	078e                	slli	a5,a5,0x3
    802024dc:	fd843703          	ld	a4,-40(s0)
    802024e0:	97ba                	add	a5,a5,a4
    802024e2:	853e                	mv	a0,a5
    802024e4:	70e2                	ld	ra,56(sp)
    802024e6:	7442                	ld	s0,48(sp)
    802024e8:	6121                	addi	sp,sp,64
    802024ea:	8082                	ret

00000000802024ec <freewalk>:
    802024ec:	7179                	addi	sp,sp,-48
    802024ee:	f406                	sd	ra,40(sp)
    802024f0:	f022                	sd	s0,32(sp)
    802024f2:	1800                	addi	s0,sp,48
    802024f4:	fca43c23          	sd	a0,-40(s0)
    802024f8:	fe042623          	sw	zero,-20(s0)
    802024fc:	a80d                	j	8020252e <freewalk+0x42>
    802024fe:	fec42783          	lw	a5,-20(s0)
    80202502:	078e                	slli	a5,a5,0x3
    80202504:	fd843703          	ld	a4,-40(s0)
    80202508:	97ba                	add	a5,a5,a4
    8020250a:	639c                	ld	a5,0(a5)
    8020250c:	fef43023          	sd	a5,-32(s0)
    80202510:	fe043783          	ld	a5,-32(s0)
    80202514:	8b85                	andi	a5,a5,1
    80202516:	c799                	beqz	a5,80202524 <freewalk+0x38>
    80202518:	00002517          	auipc	a0,0x2
    8020251c:	22850513          	addi	a0,a0,552 # 80204740 <rodata_start+0x740>
    80202520:	854fe0ef          	jal	80200574 <panic>
    80202524:	fec42783          	lw	a5,-20(s0)
    80202528:	2785                	addiw	a5,a5,1
    8020252a:	fef42623          	sw	a5,-20(s0)
    8020252e:	fec42783          	lw	a5,-20(s0)
    80202532:	0007871b          	sext.w	a4,a5
    80202536:	1ff00793          	li	a5,511
    8020253a:	fce7d2e3          	bge	a5,a4,802024fe <freewalk+0x12>
    8020253e:	fd843503          	ld	a0,-40(s0)
    80202542:	a07ff0ef          	jal	80201f48 <kfree>
    80202546:	0001                	nop
    80202548:	70a2                	ld	ra,40(sp)
    8020254a:	7402                	ld	s0,32(sp)
    8020254c:	6145                	addi	sp,sp,48
    8020254e:	8082                	ret

0000000080202550 <walk_addr>:
    80202550:	7179                	addi	sp,sp,-48
    80202552:	f406                	sd	ra,40(sp)
    80202554:	f022                	sd	s0,32(sp)
    80202556:	1800                	addi	s0,sp,48
    80202558:	fca43c23          	sd	a0,-40(s0)
    8020255c:	fcb43823          	sd	a1,-48(s0)
    80202560:	fd043703          	ld	a4,-48(s0)
    80202564:	4785                	li	a5,1
    80202566:	179a                	slli	a5,a5,0x26
    80202568:	00e7f463          	bgeu	a5,a4,80202570 <walk_addr+0x20>
    8020256c:	4781                	li	a5,0
    8020256e:	a0b1                	j	802025ba <walk_addr+0x6a>
    80202570:	4601                	li	a2,0
    80202572:	fd043583          	ld	a1,-48(s0)
    80202576:	fd843503          	ld	a0,-40(s0)
    8020257a:	e7dff0ef          	jal	802023f6 <walk>
    8020257e:	fea43423          	sd	a0,-24(s0)
    80202582:	fe843783          	ld	a5,-24(s0)
    80202586:	e399                	bnez	a5,8020258c <walk_addr+0x3c>
    80202588:	4781                	li	a5,0
    8020258a:	a805                	j	802025ba <walk_addr+0x6a>
    8020258c:	fe843783          	ld	a5,-24(s0)
    80202590:	639c                	ld	a5,0(a5)
    80202592:	8b85                	andi	a5,a5,1
    80202594:	e399                	bnez	a5,8020259a <walk_addr+0x4a>
    80202596:	4781                	li	a5,0
    80202598:	a00d                	j	802025ba <walk_addr+0x6a>
    8020259a:	fe843783          	ld	a5,-24(s0)
    8020259e:	639c                	ld	a5,0(a5)
    802025a0:	8bc1                	andi	a5,a5,16
    802025a2:	e399                	bnez	a5,802025a8 <walk_addr+0x58>
    802025a4:	4781                	li	a5,0
    802025a6:	a811                	j	802025ba <walk_addr+0x6a>
    802025a8:	fe843783          	ld	a5,-24(s0)
    802025ac:	639c                	ld	a5,0(a5)
    802025ae:	83a9                	srli	a5,a5,0xa
    802025b0:	07b2                	slli	a5,a5,0xc
    802025b2:	fef43023          	sd	a5,-32(s0)
    802025b6:	fe043783          	ld	a5,-32(s0)
    802025ba:	853e                	mv	a0,a5
    802025bc:	70a2                	ld	ra,40(sp)
    802025be:	7402                	ld	s0,32(sp)
    802025c0:	6145                	addi	sp,sp,48
    802025c2:	8082                	ret

00000000802025c4 <useraddr>:
    802025c4:	7179                	addi	sp,sp,-48
    802025c6:	f406                	sd	ra,40(sp)
    802025c8:	f022                	sd	s0,32(sp)
    802025ca:	1800                	addi	s0,sp,48
    802025cc:	fca43c23          	sd	a0,-40(s0)
    802025d0:	fcb43823          	sd	a1,-48(s0)
    802025d4:	fd043583          	ld	a1,-48(s0)
    802025d8:	fd843503          	ld	a0,-40(s0)
    802025dc:	f75ff0ef          	jal	80202550 <walk_addr>
    802025e0:	fea43423          	sd	a0,-24(s0)
    802025e4:	fe843783          	ld	a5,-24(s0)
    802025e8:	e399                	bnez	a5,802025ee <useraddr+0x2a>
    802025ea:	4781                	li	a5,0
    802025ec:	a809                	j	802025fe <useraddr+0x3a>
    802025ee:	fd043703          	ld	a4,-48(s0)
    802025f2:	6785                	lui	a5,0x1
    802025f4:	17fd                	addi	a5,a5,-1 # fff <n+0xfdf>
    802025f6:	8f7d                	and	a4,a4,a5
    802025f8:	fe843783          	ld	a5,-24(s0)
    802025fc:	8fd9                	or	a5,a5,a4
    802025fe:	853e                	mv	a0,a5
    80202600:	70a2                	ld	ra,40(sp)
    80202602:	7402                	ld	s0,32(sp)
    80202604:	6145                	addi	sp,sp,48
    80202606:	8082                	ret

0000000080202608 <copyout>:
    80202608:	715d                	addi	sp,sp,-80
    8020260a:	e486                	sd	ra,72(sp)
    8020260c:	e0a2                	sd	s0,64(sp)
    8020260e:	0880                	addi	s0,sp,80
    80202610:	fca43423          	sd	a0,-56(s0)
    80202614:	fcb43023          	sd	a1,-64(s0)
    80202618:	fac43c23          	sd	a2,-72(s0)
    8020261c:	fad43823          	sd	a3,-80(s0)
    80202620:	a859                	j	802026b6 <copyout+0xae>
    80202622:	fc043703          	ld	a4,-64(s0)
    80202626:	77fd                	lui	a5,0xfffff
    80202628:	8ff9                	and	a5,a5,a4
    8020262a:	fef43023          	sd	a5,-32(s0)
    8020262e:	fe043583          	ld	a1,-32(s0)
    80202632:	fc843503          	ld	a0,-56(s0)
    80202636:	f1bff0ef          	jal	80202550 <walk_addr>
    8020263a:	fca43c23          	sd	a0,-40(s0)
    8020263e:	fd843783          	ld	a5,-40(s0)
    80202642:	e399                	bnez	a5,80202648 <copyout+0x40>
    80202644:	57fd                	li	a5,-1
    80202646:	a8a5                	j	802026be <copyout+0xb6>
    80202648:	fe043703          	ld	a4,-32(s0)
    8020264c:	fc043783          	ld	a5,-64(s0)
    80202650:	8f1d                	sub	a4,a4,a5
    80202652:	6785                	lui	a5,0x1
    80202654:	97ba                	add	a5,a5,a4
    80202656:	fef43423          	sd	a5,-24(s0)
    8020265a:	fe843703          	ld	a4,-24(s0)
    8020265e:	fb043783          	ld	a5,-80(s0)
    80202662:	00e7f663          	bgeu	a5,a4,8020266e <copyout+0x66>
    80202666:	fb043783          	ld	a5,-80(s0)
    8020266a:	fef43423          	sd	a5,-24(s0)
    8020266e:	fc043703          	ld	a4,-64(s0)
    80202672:	fe043783          	ld	a5,-32(s0)
    80202676:	8f1d                	sub	a4,a4,a5
    80202678:	fd843783          	ld	a5,-40(s0)
    8020267c:	97ba                	add	a5,a5,a4
    8020267e:	fe843603          	ld	a2,-24(s0)
    80202682:	fb843583          	ld	a1,-72(s0)
    80202686:	853e                	mv	a0,a5
    80202688:	da5fe0ef          	jal	8020142c <memmove>
    8020268c:	fb043703          	ld	a4,-80(s0)
    80202690:	fe843783          	ld	a5,-24(s0)
    80202694:	40f707b3          	sub	a5,a4,a5
    80202698:	faf43823          	sd	a5,-80(s0)
    8020269c:	fb843703          	ld	a4,-72(s0)
    802026a0:	fe843783          	ld	a5,-24(s0)
    802026a4:	97ba                	add	a5,a5,a4
    802026a6:	faf43c23          	sd	a5,-72(s0)
    802026aa:	fe043703          	ld	a4,-32(s0)
    802026ae:	6785                	lui	a5,0x1
    802026b0:	97ba                	add	a5,a5,a4
    802026b2:	fcf43023          	sd	a5,-64(s0)
    802026b6:	fb043783          	ld	a5,-80(s0)
    802026ba:	f7a5                	bnez	a5,80202622 <copyout+0x1a>
    802026bc:	4781                	li	a5,0
    802026be:	853e                	mv	a0,a5
    802026c0:	60a6                	ld	ra,72(sp)
    802026c2:	6406                	ld	s0,64(sp)
    802026c4:	6161                	addi	sp,sp,80
    802026c6:	8082                	ret

00000000802026c8 <copyin>:
    802026c8:	715d                	addi	sp,sp,-80
    802026ca:	e486                	sd	ra,72(sp)
    802026cc:	e0a2                	sd	s0,64(sp)
    802026ce:	0880                	addi	s0,sp,80
    802026d0:	fca43423          	sd	a0,-56(s0)
    802026d4:	fcb43023          	sd	a1,-64(s0)
    802026d8:	fac43c23          	sd	a2,-72(s0)
    802026dc:	fad43823          	sd	a3,-80(s0)
    802026e0:	a869                	j	8020277a <copyin+0xb2>
    802026e2:	fb843703          	ld	a4,-72(s0)
    802026e6:	77fd                	lui	a5,0xfffff
    802026e8:	8ff9                	and	a5,a5,a4
    802026ea:	fef43023          	sd	a5,-32(s0)
    802026ee:	fe043583          	ld	a1,-32(s0)
    802026f2:	fc843503          	ld	a0,-56(s0)
    802026f6:	e5bff0ef          	jal	80202550 <walk_addr>
    802026fa:	fca43c23          	sd	a0,-40(s0)
    802026fe:	fc043c23          	sd	zero,-40(s0)
    80202702:	fd843783          	ld	a5,-40(s0)
    80202706:	c399                	beqz	a5,8020270c <copyin+0x44>
    80202708:	57fd                	li	a5,-1
    8020270a:	a8a5                	j	80202782 <copyin+0xba>
    8020270c:	fe043703          	ld	a4,-32(s0)
    80202710:	fb843783          	ld	a5,-72(s0)
    80202714:	8f1d                	sub	a4,a4,a5
    80202716:	6785                	lui	a5,0x1
    80202718:	97ba                	add	a5,a5,a4
    8020271a:	fef43423          	sd	a5,-24(s0)
    8020271e:	fe843703          	ld	a4,-24(s0)
    80202722:	fb043783          	ld	a5,-80(s0)
    80202726:	00e7f663          	bgeu	a5,a4,80202732 <copyin+0x6a>
    8020272a:	fb043783          	ld	a5,-80(s0)
    8020272e:	fef43423          	sd	a5,-24(s0)
    80202732:	fb843703          	ld	a4,-72(s0)
    80202736:	fe043783          	ld	a5,-32(s0)
    8020273a:	8f1d                	sub	a4,a4,a5
    8020273c:	fd843783          	ld	a5,-40(s0)
    80202740:	97ba                	add	a5,a5,a4
    80202742:	fe843603          	ld	a2,-24(s0)
    80202746:	85be                	mv	a1,a5
    80202748:	fc043503          	ld	a0,-64(s0)
    8020274c:	ce1fe0ef          	jal	8020142c <memmove>
    80202750:	fb043703          	ld	a4,-80(s0)
    80202754:	fe843783          	ld	a5,-24(s0)
    80202758:	40f707b3          	sub	a5,a4,a5
    8020275c:	faf43823          	sd	a5,-80(s0)
    80202760:	fc043703          	ld	a4,-64(s0)
    80202764:	fe843783          	ld	a5,-24(s0)
    80202768:	97ba                	add	a5,a5,a4
    8020276a:	fcf43023          	sd	a5,-64(s0)
    8020276e:	fe043703          	ld	a4,-32(s0)
    80202772:	6785                	lui	a5,0x1
    80202774:	97ba                	add	a5,a5,a4
    80202776:	faf43c23          	sd	a5,-72(s0)
    8020277a:	fb043783          	ld	a5,-80(s0)
    8020277e:	f3b5                	bnez	a5,802026e2 <copyin+0x1a>
    80202780:	4781                	li	a5,0
    80202782:	853e                	mv	a0,a5
    80202784:	60a6                	ld	ra,72(sp)
    80202786:	6406                	ld	s0,64(sp)
    80202788:	6161                	addi	sp,sp,80
    8020278a:	8082                	ret

000000008020278c <copyinstr>:
    8020278c:	711d                	addi	sp,sp,-96
    8020278e:	ec86                	sd	ra,88(sp)
    80202790:	e8a2                	sd	s0,80(sp)
    80202792:	1080                	addi	s0,sp,96
    80202794:	faa43c23          	sd	a0,-72(s0)
    80202798:	fab43823          	sd	a1,-80(s0)
    8020279c:	fac43423          	sd	a2,-88(s0)
    802027a0:	fad43023          	sd	a3,-96(s0)
    802027a4:	fe042223          	sw	zero,-28(s0)
    802027a8:	fe042023          	sw	zero,-32(s0)
    802027ac:	a8c9                	j	8020287e <copyinstr+0xf2>
    802027ae:	fa843703          	ld	a4,-88(s0)
    802027b2:	77fd                	lui	a5,0xfffff
    802027b4:	8ff9                	and	a5,a5,a4
    802027b6:	fcf43823          	sd	a5,-48(s0)
    802027ba:	fd043583          	ld	a1,-48(s0)
    802027be:	fb843503          	ld	a0,-72(s0)
    802027c2:	d8fff0ef          	jal	80202550 <walk_addr>
    802027c6:	fca43423          	sd	a0,-56(s0)
    802027ca:	fc843783          	ld	a5,-56(s0)
    802027ce:	e399                	bnez	a5,802027d4 <copyinstr+0x48>
    802027d0:	57fd                	li	a5,-1
    802027d2:	a87d                	j	80202890 <copyinstr+0x104>
    802027d4:	fd043703          	ld	a4,-48(s0)
    802027d8:	fa843783          	ld	a5,-88(s0)
    802027dc:	8f1d                	sub	a4,a4,a5
    802027de:	6785                	lui	a5,0x1
    802027e0:	97ba                	add	a5,a5,a4
    802027e2:	fef43423          	sd	a5,-24(s0)
    802027e6:	fe843703          	ld	a4,-24(s0)
    802027ea:	fa043783          	ld	a5,-96(s0)
    802027ee:	00e7f663          	bgeu	a5,a4,802027fa <copyinstr+0x6e>
    802027f2:	fa043783          	ld	a5,-96(s0)
    802027f6:	fef43423          	sd	a5,-24(s0)
    802027fa:	fa843703          	ld	a4,-88(s0)
    802027fe:	fd043783          	ld	a5,-48(s0)
    80202802:	8f1d                	sub	a4,a4,a5
    80202804:	fc843783          	ld	a5,-56(s0)
    80202808:	97ba                	add	a5,a5,a4
    8020280a:	fcf43c23          	sd	a5,-40(s0)
    8020280e:	a8b9                	j	8020286c <copyinstr+0xe0>
    80202810:	fd843783          	ld	a5,-40(s0)
    80202814:	0007c783          	lbu	a5,0(a5) # 1000 <n+0xfe0>
    80202818:	eb89                	bnez	a5,8020282a <copyinstr+0x9e>
    8020281a:	fb043783          	ld	a5,-80(s0)
    8020281e:	00078023          	sb	zero,0(a5)
    80202822:	4785                	li	a5,1
    80202824:	fef42223          	sw	a5,-28(s0)
    80202828:	a0a9                	j	80202872 <copyinstr+0xe6>
    8020282a:	fd843783          	ld	a5,-40(s0)
    8020282e:	0007c703          	lbu	a4,0(a5)
    80202832:	fb043783          	ld	a5,-80(s0)
    80202836:	00e78023          	sb	a4,0(a5)
    8020283a:	fe843783          	ld	a5,-24(s0)
    8020283e:	17fd                	addi	a5,a5,-1
    80202840:	fef43423          	sd	a5,-24(s0)
    80202844:	fa043783          	ld	a5,-96(s0)
    80202848:	17fd                	addi	a5,a5,-1
    8020284a:	faf43023          	sd	a5,-96(s0)
    8020284e:	fd843783          	ld	a5,-40(s0)
    80202852:	0785                	addi	a5,a5,1
    80202854:	fcf43c23          	sd	a5,-40(s0)
    80202858:	fb043783          	ld	a5,-80(s0)
    8020285c:	0785                	addi	a5,a5,1
    8020285e:	faf43823          	sd	a5,-80(s0)
    80202862:	fe042783          	lw	a5,-32(s0)
    80202866:	2785                	addiw	a5,a5,1
    80202868:	fef42023          	sw	a5,-32(s0)
    8020286c:	fe843783          	ld	a5,-24(s0)
    80202870:	f3c5                	bnez	a5,80202810 <copyinstr+0x84>
    80202872:	fd043703          	ld	a4,-48(s0)
    80202876:	6785                	lui	a5,0x1
    80202878:	97ba                	add	a5,a5,a4
    8020287a:	faf43423          	sd	a5,-88(s0)
    8020287e:	fe442783          	lw	a5,-28(s0)
    80202882:	2781                	sext.w	a5,a5
    80202884:	e781                	bnez	a5,8020288c <copyinstr+0x100>
    80202886:	fa043783          	ld	a5,-96(s0)
    8020288a:	f395                	bnez	a5,802027ae <copyinstr+0x22>
    8020288c:	fe042783          	lw	a5,-32(s0)
    80202890:	853e                	mv	a0,a5
    80202892:	60e6                	ld	ra,88(sp)
    80202894:	6446                	ld	s0,80(sp)
    80202896:	6125                	addi	sp,sp,96
    80202898:	8082                	ret
	...

0000000080203000 <__alltraps>:
    80203000:	14011173          	csrrw	sp,sscratch,sp
    80203004:	e406                	sd	ra,8(sp)
    80203006:	ec0e                	sd	gp,24(sp)
    80203008:	f416                	sd	t0,40(sp)
    8020300a:	f81a                	sd	t1,48(sp)
    8020300c:	fc1e                	sd	t2,56(sp)
    8020300e:	e0a2                	sd	s0,64(sp)
    80203010:	e4a6                	sd	s1,72(sp)
    80203012:	e8aa                	sd	a0,80(sp)
    80203014:	ecae                	sd	a1,88(sp)
    80203016:	f0b2                	sd	a2,96(sp)
    80203018:	f4b6                	sd	a3,104(sp)
    8020301a:	f8ba                	sd	a4,112(sp)
    8020301c:	fcbe                	sd	a5,120(sp)
    8020301e:	e142                	sd	a6,128(sp)
    80203020:	e546                	sd	a7,136(sp)
    80203022:	e94a                	sd	s2,144(sp)
    80203024:	ed4e                	sd	s3,152(sp)
    80203026:	f152                	sd	s4,160(sp)
    80203028:	f556                	sd	s5,168(sp)
    8020302a:	f95a                	sd	s6,176(sp)
    8020302c:	fd5e                	sd	s7,184(sp)
    8020302e:	e1e2                	sd	s8,192(sp)
    80203030:	e5e6                	sd	s9,200(sp)
    80203032:	e9ea                	sd	s10,208(sp)
    80203034:	edee                	sd	s11,216(sp)
    80203036:	f1f2                	sd	t3,224(sp)
    80203038:	f5f6                	sd	t4,232(sp)
    8020303a:	f9fa                	sd	t5,240(sp)
    8020303c:	fdfe                	sd	t6,248(sp)
    8020303e:	100022f3          	csrr	t0,sstatus
    80203042:	14102373          	csrr	t1,sepc
    80203046:	e216                	sd	t0,256(sp)
    80203048:	e61a                	sd	t1,264(sp)
    8020304a:	140023f3          	csrr	t2,sscratch
    8020304e:	e81e                	sd	t2,16(sp)
    80203050:	62d2                	ld	t0,272(sp)
    80203052:	7312                	ld	t1,288(sp)
    80203054:	6172                	ld	sp,280(sp)
    80203056:	18029073          	csrw	satp,t0
    8020305a:	12000073          	sfence.vma
    8020305e:	8302                	jr	t1

0000000080203060 <__restore>:
    80203060:	18059073          	csrw	satp,a1
    80203064:	12000073          	sfence.vma
    80203068:	14051073          	csrw	sscratch,a0
    8020306c:	812a                	mv	sp,a0
    8020306e:	6292                	ld	t0,256(sp)
    80203070:	6332                	ld	t1,264(sp)
    80203072:	10029073          	csrw	sstatus,t0
    80203076:	14131073          	csrw	sepc,t1
    8020307a:	60a2                	ld	ra,8(sp)
    8020307c:	61e2                	ld	gp,24(sp)
    8020307e:	72a2                	ld	t0,40(sp)
    80203080:	7342                	ld	t1,48(sp)
    80203082:	73e2                	ld	t2,56(sp)
    80203084:	6406                	ld	s0,64(sp)
    80203086:	64a6                	ld	s1,72(sp)
    80203088:	6546                	ld	a0,80(sp)
    8020308a:	65e6                	ld	a1,88(sp)
    8020308c:	7606                	ld	a2,96(sp)
    8020308e:	76a6                	ld	a3,104(sp)
    80203090:	7746                	ld	a4,112(sp)
    80203092:	77e6                	ld	a5,120(sp)
    80203094:	680a                	ld	a6,128(sp)
    80203096:	68aa                	ld	a7,136(sp)
    80203098:	694a                	ld	s2,144(sp)
    8020309a:	69ea                	ld	s3,152(sp)
    8020309c:	7a0a                	ld	s4,160(sp)
    8020309e:	7aaa                	ld	s5,168(sp)
    802030a0:	7b4a                	ld	s6,176(sp)
    802030a2:	7bea                	ld	s7,184(sp)
    802030a4:	6c0e                	ld	s8,192(sp)
    802030a6:	6cae                	ld	s9,200(sp)
    802030a8:	6d4e                	ld	s10,208(sp)
    802030aa:	6dee                	ld	s11,216(sp)
    802030ac:	7e0e                	ld	t3,224(sp)
    802030ae:	7eae                	ld	t4,232(sp)
    802030b0:	7f4e                	ld	t5,240(sp)
    802030b2:	7fee                	ld	t6,248(sp)
    802030b4:	6142                	ld	sp,16(sp)
    802030b6:	10200073          	sret
	...
