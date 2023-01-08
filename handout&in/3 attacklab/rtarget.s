
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	push   0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmp *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	push   $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	push   $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	push   $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	push   $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmp 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	push   $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmp 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	push   $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmp 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	push   $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmp 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	push   $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmp 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	push   $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmp 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	push   $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmp 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	push   $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmp 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	push   $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmp 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	push   $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmp 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	push   $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmp 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	push   $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmp 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	push   $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmp 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	push   $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmp 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	push   $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmp 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	push   $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmp 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	push   $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmp 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	push   $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmp 401020 <.plt>
  40124f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401250 <strcasecmp@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 bd 5d 00 00 	bnd jmp *0x5dbd(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <__errno_location@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 b5 5d 00 00 	bnd jmp *0x5db5(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <srandom@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 ad 5d 00 00 	bnd jmp *0x5dad(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <strncpy@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 a5 5d 00 00 	bnd jmp *0x5da5(%rip)        # 407030 <strncpy@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <strncmp@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 9d 5d 00 00 	bnd jmp *0x5d9d(%rip)        # 407038 <strncmp@GLIBC_2.2.5>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <strcpy@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 95 5d 00 00 	bnd jmp *0x5d95(%rip)        # 407040 <strcpy@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <puts@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 8d 5d 00 00 	bnd jmp *0x5d8d(%rip)        # 407048 <puts@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <write@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 85 5d 00 00 	bnd jmp *0x5d85(%rip)        # 407050 <write@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <mmap@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 7d 5d 00 00 	bnd jmp *0x5d7d(%rip)        # 407058 <mmap@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <memset@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 75 5d 00 00 	bnd jmp *0x5d75(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <alarm@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 6d 5d 00 00 	bnd jmp *0x5d6d(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <close@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 65 5d 00 00 	bnd jmp *0x5d65(%rip)        # 407070 <close@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <read@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 5d 5d 00 00 	bnd jmp *0x5d5d(%rip)        # 407078 <read@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <strcmp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 55 5d 00 00 	bnd jmp *0x5d55(%rip)        # 407080 <strcmp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <signal@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 4d 5d 00 00 	bnd jmp *0x5d4d(%rip)        # 407088 <signal@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <gethostbyname@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 45 5d 00 00 	bnd jmp *0x5d45(%rip)        # 407090 <gethostbyname@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <__memmove_chk@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 3d 5d 00 00 	bnd jmp *0x5d3d(%rip)        # 407098 <__memmove_chk@GLIBC_2.3.4>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <strtol@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 35 5d 00 00 	bnd jmp *0x5d35(%rip)        # 4070a0 <strtol@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <memcpy@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 2d 5d 00 00 	bnd jmp *0x5d2d(%rip)        # 4070a8 <memcpy@GLIBC_2.14>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <time@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 25 5d 00 00 	bnd jmp *0x5d25(%rip)        # 4070b0 <time@GLIBC_2.2.5>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <random@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 1d 5d 00 00 	bnd jmp *0x5d1d(%rip)        # 4070b8 <random@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <__isoc99_sscanf@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 15 5d 00 00 	bnd jmp *0x5d15(%rip)        # 4070c0 <__isoc99_sscanf@GLIBC_2.7>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <munmap@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 0d 5d 00 00 	bnd jmp *0x5d0d(%rip)        # 4070c8 <munmap@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__printf_chk@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 05 5d 00 00 	bnd jmp *0x5d05(%rip)        # 4070d0 <__printf_chk@GLIBC_2.3.4>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fopen@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 fd 5c 00 00 	bnd jmp *0x5cfd(%rip)        # 4070d8 <fopen@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <getopt@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 f5 5c 00 00 	bnd jmp *0x5cf5(%rip)        # 4070e0 <getopt@GLIBC_2.2.5>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <strtoul@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 ed 5c 00 00 	bnd jmp *0x5ced(%rip)        # 4070e8 <strtoul@GLIBC_2.2.5>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <gethostname@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 e5 5c 00 00 	bnd jmp *0x5ce5(%rip)        # 4070f0 <gethostname@GLIBC_2.2.5>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <exit@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 dd 5c 00 00 	bnd jmp *0x5cdd(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <connect@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 407100 <connect@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <__fprintf_chk@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 407108 <__fprintf_chk@GLIBC_2.3.4>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <getc@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 407110 <getc@GLIBC_2.2.5>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <__sprintf_chk@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 407118 <__sprintf_chk@GLIBC_2.3.4>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <socket@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 407120 <socket@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401470 <_start>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	31 ed                	xor    %ebp,%ebp
  401476:	49 89 d1             	mov    %rdx,%r9
  401479:	5e                   	pop    %rsi
  40147a:	48 89 e2             	mov    %rsp,%rdx
  40147d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401481:	50                   	push   %rax
  401482:	54                   	push   %rsp
  401483:	49 c7 c0 a0 39 40 00 	mov    $0x4039a0,%r8
  40148a:	48 c7 c1 30 39 40 00 	mov    $0x403930,%rcx
  401491:	48 c7 c7 99 17 40 00 	mov    $0x401799,%rdi
  401498:	ff 15 52 5b 00 00    	call   *0x5b52(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40149e:	f4                   	hlt    
  40149f:	90                   	nop

00000000004014a0 <_dl_relocate_static_pie>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	c3                   	ret    
  4014a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4014ac:	00 00 00 
  4014af:	90                   	nop

00000000004014b0 <deregister_tm_clones>:
  4014b0:	b8 b0 74 40 00       	mov    $0x4074b0,%eax
  4014b5:	48 3d b0 74 40 00    	cmp    $0x4074b0,%rax
  4014bb:	74 13                	je     4014d0 <deregister_tm_clones+0x20>
  4014bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c2:	48 85 c0             	test   %rax,%rax
  4014c5:	74 09                	je     4014d0 <deregister_tm_clones+0x20>
  4014c7:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  4014cc:	ff e0                	jmp    *%rax
  4014ce:	66 90                	xchg   %ax,%ax
  4014d0:	c3                   	ret    
  4014d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014e0 <register_tm_clones>:
  4014e0:	be b0 74 40 00       	mov    $0x4074b0,%esi
  4014e5:	48 81 ee b0 74 40 00 	sub    $0x4074b0,%rsi
  4014ec:	48 89 f0             	mov    %rsi,%rax
  4014ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4014f3:	48 c1 f8 03          	sar    $0x3,%rax
  4014f7:	48 01 c6             	add    %rax,%rsi
  4014fa:	48 d1 fe             	sar    %rsi
  4014fd:	74 11                	je     401510 <register_tm_clones+0x30>
  4014ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401504:	48 85 c0             	test   %rax,%rax
  401507:	74 07                	je     401510 <register_tm_clones+0x30>
  401509:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  40150e:	ff e0                	jmp    *%rax
  401510:	c3                   	ret    
  401511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <__do_global_dtors_aux>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	80 3d bd 5f 00 00 00 	cmpb   $0x0,0x5fbd(%rip)        # 4074e8 <completed.8060>
  40152b:	75 13                	jne    401540 <__do_global_dtors_aux+0x20>
  40152d:	55                   	push   %rbp
  40152e:	48 89 e5             	mov    %rsp,%rbp
  401531:	e8 7a ff ff ff       	call   4014b0 <deregister_tm_clones>
  401536:	c6 05 ab 5f 00 00 01 	movb   $0x1,0x5fab(%rip)        # 4074e8 <completed.8060>
  40153d:	5d                   	pop    %rbp
  40153e:	c3                   	ret    
  40153f:	90                   	nop
  401540:	c3                   	ret    
  401541:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <frame_dummy>:
  401550:	f3 0f 1e fa          	endbr64 
  401554:	eb 8a                	jmp    4014e0 <register_tm_clones>

0000000000401556 <usage>:
  401556:	50                   	push   %rax
  401557:	58                   	pop    %rax
  401558:	48 83 ec 08          	sub    $0x8,%rsp
  40155c:	48 89 fa             	mov    %rdi,%rdx
  40155f:	83 3d c2 5f 00 00 00 	cmpl   $0x0,0x5fc2(%rip)        # 407528 <is_checker>
  401566:	74 50                	je     4015b8 <usage+0x62>
  401568:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40156f:	bf 01 00 00 00       	mov    $0x1,%edi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 42 fe ff ff       	call   4013c0 <__printf_chk@plt>
  40157e:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401585:	e8 26 fd ff ff       	call   4012b0 <puts@plt>
  40158a:	48 8d 3d 3f 2c 00 00 	lea    0x2c3f(%rip),%rdi        # 4041d0 <_IO_stdin_used+0x1d0>
  401591:	e8 1a fd ff ff       	call   4012b0 <puts@plt>
  401596:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40159d:	e8 0e fd ff ff       	call   4012b0 <puts@plt>
  4015a2:	48 8d 3d 41 2c 00 00 	lea    0x2c41(%rip),%rdi        # 4041ea <_IO_stdin_used+0x1ea>
  4015a9:	e8 02 fd ff ff       	call   4012b0 <puts@plt>
  4015ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b3:	e8 58 fe ff ff       	call   401410 <exit@plt>
  4015b8:	48 8d 35 47 2c 00 00 	lea    0x2c47(%rip),%rsi        # 404206 <_IO_stdin_used+0x206>
  4015bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4015c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c9:	e8 f2 fd ff ff       	call   4013c0 <__printf_chk@plt>
  4015ce:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4015d5:	e8 d6 fc ff ff       	call   4012b0 <puts@plt>
  4015da:	48 8d 3d d7 2a 00 00 	lea    0x2ad7(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4015e1:	e8 ca fc ff ff       	call   4012b0 <puts@plt>
  4015e6:	48 8d 3d 37 2c 00 00 	lea    0x2c37(%rip),%rdi        # 404224 <_IO_stdin_used+0x224>
  4015ed:	e8 be fc ff ff       	call   4012b0 <puts@plt>
  4015f2:	eb ba                	jmp    4015ae <usage+0x58>

00000000004015f4 <initialize_target>:
  4015f4:	55                   	push   %rbp
  4015f5:	53                   	push   %rbx
  4015f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4015fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401602:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401609:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40160e:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401615:	89 f5                	mov    %esi,%ebp
  401617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40161e:	00 00 
  401620:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401627:	00 
  401628:	31 c0                	xor    %eax,%eax
  40162a:	89 3d e8 5e 00 00    	mov    %edi,0x5ee8(%rip)        # 407518 <check_level>
  401630:	8b 3d 1a 5b 00 00    	mov    0x5b1a(%rip),%edi        # 407150 <target_id>
  401636:	e8 c5 22 00 00       	call   403900 <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 b8 22 00 00       	call   403900 <gencookie>
  401648:	89 05 d2 5e 00 00    	mov    %eax,0x5ed2(%rip)        # 407520 <authkey>
  40164e:	8b 05 fc 5a 00 00    	mov    0x5afc(%rip),%eax        # 407150 <target_id>
  401654:	8d 78 01             	lea    0x1(%rax),%edi
  401657:	e8 14 fc ff ff       	call   401270 <srandom@plt>
  40165c:	e8 2f fd ff ff       	call   401390 <random@plt>
  401661:	48 89 c7             	mov    %rax,%rdi
  401664:	e8 9b 03 00 00       	call   401a04 <scramble>
  401669:	89 c3                	mov    %eax,%ebx
  40166b:	85 ed                	test   %ebp,%ebp
  40166d:	75 54                	jne    4016c3 <initialize_target+0xcf>
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	01 d8                	add    %ebx,%eax
  401676:	0f b7 c0             	movzwl %ax,%eax
  401679:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401680:	89 c0                	mov    %eax,%eax
  401682:	48 89 05 1f 5e 00 00 	mov    %rax,0x5e1f(%rip)        # 4074a8 <buf_offset>
  401689:	c6 05 b8 6a 00 00 72 	movb   $0x72,0x6ab8(%rip)        # 408148 <target_prefix>
  401690:	83 3d 09 5e 00 00 00 	cmpl   $0x0,0x5e09(%rip)        # 4074a0 <notify>
  401697:	74 09                	je     4016a2 <initialize_target+0xae>
  401699:	83 3d 88 5e 00 00 00 	cmpl   $0x0,0x5e88(%rip)        # 407528 <is_checker>
  4016a0:	74 3a                	je     4016dc <initialize_target+0xe8>
  4016a2:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4016a9:	00 
  4016aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016b1:	00 00 
  4016b3:	0f 85 db 00 00 00    	jne    401794 <initialize_target+0x1a0>
  4016b9:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4016c0:	5b                   	pop    %rbx
  4016c1:	5d                   	pop    %rbp
  4016c2:	c3                   	ret    
  4016c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c8:	e8 b3 fc ff ff       	call   401380 <time@plt>
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 9b fb ff ff       	call   401270 <srandom@plt>
  4016d5:	e8 b6 fc ff ff       	call   401390 <random@plt>
  4016da:	eb 98                	jmp    401674 <initialize_target+0x80>
  4016dc:	48 89 e7             	mov    %rsp,%rdi
  4016df:	be 00 01 00 00       	mov    $0x100,%esi
  4016e4:	e8 17 fd ff ff       	call   401400 <gethostname@plt>
  4016e9:	89 c5                	mov    %eax,%ebp
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 26                	jne    401715 <initialize_target+0x121>
  4016ef:	89 c3                	mov    %eax,%ebx
  4016f1:	48 63 c3             	movslq %ebx,%rax
  4016f4:	48 8d 15 85 5a 00 00 	lea    0x5a85(%rip),%rdx        # 407180 <host_table>
  4016fb:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4016ff:	48 85 ff             	test   %rdi,%rdi
  401702:	74 2c                	je     401730 <initialize_target+0x13c>
  401704:	48 89 e6             	mov    %rsp,%rsi
  401707:	e8 44 fb ff ff       	call   401250 <strcasecmp@plt>
  40170c:	85 c0                	test   %eax,%eax
  40170e:	74 1b                	je     40172b <initialize_target+0x137>
  401710:	83 c3 01             	add    $0x1,%ebx
  401713:	eb dc                	jmp    4016f1 <initialize_target+0xfd>
  401715:	48 8d 3d cc 29 00 00 	lea    0x29cc(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  40171c:	e8 8f fb ff ff       	call   4012b0 <puts@plt>
  401721:	bf 08 00 00 00       	mov    $0x8,%edi
  401726:	e8 e5 fc ff ff       	call   401410 <exit@plt>
  40172b:	bd 01 00 00 00       	mov    $0x1,%ebp
  401730:	85 ed                	test   %ebp,%ebp
  401732:	74 3d                	je     401771 <initialize_target+0x17d>
  401734:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40173b:	00 
  40173c:	e8 04 1f 00 00       	call   403645 <init_driver>
  401741:	85 c0                	test   %eax,%eax
  401743:	0f 89 59 ff ff ff    	jns    4016a2 <initialize_target+0xae>
  401749:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401750:	00 
  401751:	48 8d 35 08 2a 00 00 	lea    0x2a08(%rip),%rsi        # 404160 <_IO_stdin_used+0x160>
  401758:	bf 01 00 00 00       	mov    $0x1,%edi
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	e8 59 fc ff ff       	call   4013c0 <__printf_chk@plt>
  401767:	bf 08 00 00 00       	mov    $0x8,%edi
  40176c:	e8 9f fc ff ff       	call   401410 <exit@plt>
  401771:	48 89 e2             	mov    %rsp,%rdx
  401774:	48 8d 35 a5 29 00 00 	lea    0x29a5(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  40177b:	bf 01 00 00 00       	mov    $0x1,%edi
  401780:	b8 00 00 00 00       	mov    $0x0,%eax
  401785:	e8 36 fc ff ff       	call   4013c0 <__printf_chk@plt>
  40178a:	bf 08 00 00 00       	mov    $0x8,%edi
  40178f:	e8 7c fc ff ff       	call   401410 <exit@plt>
  401794:	e8 c4 11 00 00       	call   40295d <__stack_chk_fail>

0000000000401799 <main>:
  401799:	f3 0f 1e fa          	endbr64 
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 83 ec 60          	sub    $0x60,%rsp
  4017a9:	89 fd                	mov    %edi,%ebp
  4017ab:	48 89 f3             	mov    %rsi,%rbx
  4017ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017b5:	00 00 
  4017b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4017bc:	31 c0                	xor    %eax,%eax
  4017be:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  4017c5:	74 65 64 
  4017c8:	48 89 04 24          	mov    %rax,(%rsp)
  4017cc:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  4017d3:	79 
  4017d4:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  4017db:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  4017e0:	48 c7 c6 4c 28 40 00 	mov    $0x40284c,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 f2 27 40 00 	mov    $0x4027f2,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 a6 28 40 00 	mov    $0x4028a6,%rsi
  401809:	bf 04 00 00 00       	mov    $0x4,%edi
  40180e:	e8 1d fb ff ff       	call   401330 <signal@plt>
  401813:	83 3d 0e 5d 00 00 00 	cmpl   $0x0,0x5d0e(%rip)        # 407528 <is_checker>
  40181a:	75 26                	jne    401842 <main+0xa9>
  40181c:	4c 8d 25 24 2a 00 00 	lea    0x2a24(%rip),%r12        # 404247 <_IO_stdin_used+0x247>
  401823:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  40182a:	48 89 05 df 5c 00 00 	mov    %rax,0x5cdf(%rip)        # 407510 <infile>
  401831:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401837:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40183d:	e9 8d 00 00 00       	jmp    4018cf <main+0x136>
  401842:	48 c7 c6 00 29 40 00 	mov    $0x402900,%rsi
  401849:	bf 0e 00 00 00       	mov    $0xe,%edi
  40184e:	e8 dd fa ff ff       	call   401330 <signal@plt>
  401853:	bf 02 00 00 00       	mov    $0x2,%edi
  401858:	e8 93 fa ff ff       	call   4012f0 <alarm@plt>
  40185d:	4c 8d 25 d9 29 00 00 	lea    0x29d9(%rip),%r12        # 40423d <_IO_stdin_used+0x23d>
  401864:	eb bd                	jmp    401823 <main+0x8a>
  401866:	48 8b 3b             	mov    (%rbx),%rdi
  401869:	e8 e8 fc ff ff       	call   401556 <usage>
  40186e:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404314 <_IO_stdin_used+0x314>
  401875:	48 8b 3d 4c 5c 00 00 	mov    0x5c4c(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40187c:	e8 4f fb ff ff       	call   4013d0 <fopen@plt>
  401881:	48 89 05 88 5c 00 00 	mov    %rax,0x5c88(%rip)        # 407510 <infile>
  401888:	48 85 c0             	test   %rax,%rax
  40188b:	75 42                	jne    4018cf <main+0x136>
  40188d:	48 8b 0d 34 5c 00 00 	mov    0x5c34(%rip),%rcx        # 4074c8 <optarg@GLIBC_2.2.5>
  401894:	48 8d 15 b1 29 00 00 	lea    0x29b1(%rip),%rdx        # 40424c <_IO_stdin_used+0x24c>
  40189b:	be 01 00 00 00       	mov    $0x1,%esi
  4018a0:	48 8b 3d 39 5c 00 00 	mov    0x5c39(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4018a7:	e8 84 fb ff ff       	call   401430 <__fprintf_chk@plt>
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	e9 2c 01 00 00       	jmp    4019e2 <main+0x249>
  4018b6:	ba 10 00 00 00       	mov    $0x10,%edx
  4018bb:	be 00 00 00 00       	mov    $0x0,%esi
  4018c0:	48 8b 3d 01 5c 00 00 	mov    0x5c01(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  4018c7:	e8 24 fb ff ff       	call   4013f0 <strtoul@plt>
  4018cc:	41 89 c6             	mov    %eax,%r14d
  4018cf:	4c 89 e2             	mov    %r12,%rdx
  4018d2:	48 89 de             	mov    %rbx,%rsi
  4018d5:	89 ef                	mov    %ebp,%edi
  4018d7:	e8 04 fb ff ff       	call   4013e0 <getopt@plt>
  4018dc:	3c ff                	cmp    $0xff,%al
  4018de:	74 7b                	je     40195b <main+0x1c2>
  4018e0:	0f be c8             	movsbl %al,%ecx
  4018e3:	83 e8 61             	sub    $0x61,%eax
  4018e6:	3c 14                	cmp    $0x14,%al
  4018e8:	77 51                	ja     40193b <main+0x1a2>
  4018ea:	0f b6 c0             	movzbl %al,%eax
  4018ed:	48 8d 15 98 29 00 00 	lea    0x2998(%rip),%rdx        # 40428c <_IO_stdin_used+0x28c>
  4018f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4018f8:	48 01 d0             	add    %rdx,%rax
  4018fb:	3e ff e0             	notrack jmp *%rax
  4018fe:	ba 0a 00 00 00       	mov    $0xa,%edx
  401903:	be 00 00 00 00       	mov    $0x0,%esi
  401908:	48 8b 3d b9 5b 00 00 	mov    0x5bb9(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40190f:	e8 4c fa ff ff       	call   401360 <strtol@plt>
  401914:	41 89 c5             	mov    %eax,%r13d
  401917:	eb b6                	jmp    4018cf <main+0x136>
  401919:	c7 05 7d 5b 00 00 00 	movl   $0x0,0x5b7d(%rip)        # 4074a0 <notify>
  401920:	00 00 00 
  401923:	eb aa                	jmp    4018cf <main+0x136>
  401925:	48 89 e7             	mov    %rsp,%rdi
  401928:	ba 50 00 00 00       	mov    $0x50,%edx
  40192d:	48 8b 35 94 5b 00 00 	mov    0x5b94(%rip),%rsi        # 4074c8 <optarg@GLIBC_2.2.5>
  401934:	e8 47 f9 ff ff       	call   401280 <strncpy@plt>
  401939:	eb 94                	jmp    4018cf <main+0x136>
  40193b:	89 ca                	mov    %ecx,%edx
  40193d:	48 8d 35 25 29 00 00 	lea    0x2925(%rip),%rsi        # 404269 <_IO_stdin_used+0x269>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 6d fa ff ff       	call   4013c0 <__printf_chk@plt>
  401953:	48 8b 3b             	mov    (%rbx),%rdi
  401956:	e8 fb fb ff ff       	call   401556 <usage>
  40195b:	be 01 00 00 00       	mov    $0x1,%esi
  401960:	44 89 ef             	mov    %r13d,%edi
  401963:	e8 8c fc ff ff       	call   4015f4 <initialize_target>
  401968:	83 3d b9 5b 00 00 00 	cmpl   $0x0,0x5bb9(%rip)        # 407528 <is_checker>
  40196f:	74 3f                	je     4019b0 <main+0x217>
  401971:	44 39 35 a8 5b 00 00 	cmp    %r14d,0x5ba8(%rip)        # 407520 <authkey>
  401978:	75 13                	jne    40198d <main+0x1f4>
  40197a:	48 89 e7             	mov    %rsp,%rdi
  40197d:	48 8b 35 dc 57 00 00 	mov    0x57dc(%rip),%rsi        # 407160 <user_id>
  401984:	e8 97 f9 ff ff       	call   401320 <strcmp@plt>
  401989:	85 c0                	test   %eax,%eax
  40198b:	74 23                	je     4019b0 <main+0x217>
  40198d:	44 89 f2             	mov    %r14d,%edx
  401990:	48 8d 35 f1 27 00 00 	lea    0x27f1(%rip),%rsi        # 404188 <_IO_stdin_used+0x188>
  401997:	bf 01 00 00 00       	mov    $0x1,%edi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 1a fa ff ff       	call   4013c0 <__printf_chk@plt>
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 8b 0a 00 00       	call   40243b <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 da 0f 00 00       	call   4029b7 <launch>
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4019e7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019ee:	00 00 
  4019f0:	75 0d                	jne    4019ff <main+0x266>
  4019f2:	48 83 c4 60          	add    $0x60,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	5d                   	pop    %rbp
  4019f8:	41 5c                	pop    %r12
  4019fa:	41 5d                	pop    %r13
  4019fc:	41 5e                	pop    %r14
  4019fe:	c3                   	ret    
  4019ff:	e8 59 0f 00 00       	call   40295d <__stack_chk_fail>

0000000000401a04 <scramble>:
  401a04:	f3 0f 1e fa          	endbr64 
  401a08:	48 83 ec 38          	sub    $0x38,%rsp
  401a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a13:	00 00 
  401a15:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a1a:	31 c0                	xor    %eax,%eax
  401a1c:	83 f8 09             	cmp    $0x9,%eax
  401a1f:	77 12                	ja     401a33 <scramble+0x2f>
  401a21:	69 d0 cd a2 00 00    	imul   $0xa2cd,%eax,%edx
  401a27:	01 fa                	add    %edi,%edx
  401a29:	89 c1                	mov    %eax,%ecx
  401a2b:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401a2e:	83 c0 01             	add    $0x1,%eax
  401a31:	eb e9                	jmp    401a1c <scramble+0x18>
  401a33:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a37:	69 c0 e7 b3 00 00    	imul   $0xb3e7,%eax,%eax
  401a3d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a41:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a45:	69 c0 2e e4 00 00    	imul   $0xe42e,%eax,%eax
  401a4b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a4f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a53:	69 c0 45 80 00 00    	imul   $0x8045,%eax,%eax
  401a59:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a5d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a61:	69 c0 c1 bf 00 00    	imul   $0xbfc1,%eax,%eax
  401a67:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a6b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a6f:	69 c0 ae cc 00 00    	imul   $0xccae,%eax,%eax
  401a75:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a79:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a7d:	69 c0 69 b5 00 00    	imul   $0xb569,%eax,%eax
  401a83:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a87:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a8b:	69 c0 80 cb 00 00    	imul   $0xcb80,%eax,%eax
  401a91:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a95:	8b 04 24             	mov    (%rsp),%eax
  401a98:	69 c0 c2 e2 00 00    	imul   $0xe2c2,%eax,%eax
  401a9e:	89 04 24             	mov    %eax,(%rsp)
  401aa1:	8b 04 24             	mov    (%rsp),%eax
  401aa4:	69 c0 fa 9c 00 00    	imul   $0x9cfa,%eax,%eax
  401aaa:	89 04 24             	mov    %eax,(%rsp)
  401aad:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ab1:	69 c0 43 cb 00 00    	imul   $0xcb43,%eax,%eax
  401ab7:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401abb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401abf:	69 c0 28 43 00 00    	imul   $0x4328,%eax,%eax
  401ac5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ac9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401acd:	69 c0 e1 c0 00 00    	imul   $0xc0e1,%eax,%eax
  401ad3:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ad7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401adb:	69 c0 aa cb 00 00    	imul   $0xcbaa,%eax,%eax
  401ae1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ae5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ae9:	69 c0 54 5f 00 00    	imul   $0x5f54,%eax,%eax
  401aef:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401af3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401af7:	69 c0 7d ea 00 00    	imul   $0xea7d,%eax,%eax
  401afd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b01:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b05:	69 c0 49 4a 00 00    	imul   $0x4a49,%eax,%eax
  401b0b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b0f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b13:	69 c0 18 c6 00 00    	imul   $0xc618,%eax,%eax
  401b19:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b1d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b21:	69 c0 38 19 00 00    	imul   $0x1938,%eax,%eax
  401b27:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b2b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b2f:	69 c0 d2 8c 00 00    	imul   $0x8cd2,%eax,%eax
  401b35:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b39:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b3d:	69 c0 33 35 00 00    	imul   $0x3533,%eax,%eax
  401b43:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b47:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b4b:	69 c0 62 c6 00 00    	imul   $0xc662,%eax,%eax
  401b51:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b55:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b59:	69 c0 e2 04 00 00    	imul   $0x4e2,%eax,%eax
  401b5f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b63:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b67:	69 c0 47 70 00 00    	imul   $0x7047,%eax,%eax
  401b6d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b71:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b75:	69 c0 17 a5 00 00    	imul   $0xa517,%eax,%eax
  401b7b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b7f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b83:	69 c0 ba ee 00 00    	imul   $0xeeba,%eax,%eax
  401b89:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b8d:	8b 04 24             	mov    (%rsp),%eax
  401b90:	69 c0 50 73 00 00    	imul   $0x7350,%eax,%eax
  401b96:	89 04 24             	mov    %eax,(%rsp)
  401b99:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b9d:	69 c0 3e f2 00 00    	imul   $0xf23e,%eax,%eax
  401ba3:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ba7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bab:	69 c0 b7 7d 00 00    	imul   $0x7db7,%eax,%eax
  401bb1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bb5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bb9:	69 c0 dc 9c 00 00    	imul   $0x9cdc,%eax,%eax
  401bbf:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bc3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401bc7:	69 c0 64 65 00 00    	imul   $0x6564,%eax,%eax
  401bcd:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401bd1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401bd5:	69 c0 fe 02 00 00    	imul   $0x2fe,%eax,%eax
  401bdb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401bdf:	8b 04 24             	mov    (%rsp),%eax
  401be2:	69 c0 bd 25 00 00    	imul   $0x25bd,%eax,%eax
  401be8:	89 04 24             	mov    %eax,(%rsp)
  401beb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bef:	69 c0 25 de 00 00    	imul   $0xde25,%eax,%eax
  401bf5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bf9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bfd:	69 c0 74 0f 00 00    	imul   $0xf74,%eax,%eax
  401c03:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c07:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c0b:	69 c0 ef 17 00 00    	imul   $0x17ef,%eax,%eax
  401c11:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c15:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c19:	69 c0 78 c4 00 00    	imul   $0xc478,%eax,%eax
  401c1f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c23:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c27:	69 c0 43 2f 00 00    	imul   $0x2f43,%eax,%eax
  401c2d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c31:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c35:	69 c0 34 70 00 00    	imul   $0x7034,%eax,%eax
  401c3b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c3f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c43:	69 c0 fe b0 00 00    	imul   $0xb0fe,%eax,%eax
  401c49:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c4d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c51:	69 c0 cc ac 00 00    	imul   $0xaccc,%eax,%eax
  401c57:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c5b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c5f:	69 c0 a5 85 00 00    	imul   $0x85a5,%eax,%eax
  401c65:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c69:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c6d:	69 c0 9a d1 00 00    	imul   $0xd19a,%eax,%eax
  401c73:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c77:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c7b:	69 c0 4e 54 00 00    	imul   $0x544e,%eax,%eax
  401c81:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c85:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c89:	69 c0 cc 35 00 00    	imul   $0x35cc,%eax,%eax
  401c8f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c93:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c97:	69 c0 5d 2c 00 00    	imul   $0x2c5d,%eax,%eax
  401c9d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ca1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ca5:	69 c0 83 78 00 00    	imul   $0x7883,%eax,%eax
  401cab:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401caf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401cb3:	69 c0 de 4a 00 00    	imul   $0x4ade,%eax,%eax
  401cb9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401cbd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401cc1:	69 c0 72 f8 00 00    	imul   $0xf872,%eax,%eax
  401cc7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ccb:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401ccf:	69 c0 36 dd 00 00    	imul   $0xdd36,%eax,%eax
  401cd5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401cd9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401cdd:	69 c0 fa 93 00 00    	imul   $0x93fa,%eax,%eax
  401ce3:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ce7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ceb:	69 c0 8d 4c 00 00    	imul   $0x4c8d,%eax,%eax
  401cf1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401cf5:	8b 04 24             	mov    (%rsp),%eax
  401cf8:	69 c0 77 d3 00 00    	imul   $0xd377,%eax,%eax
  401cfe:	89 04 24             	mov    %eax,(%rsp)
  401d01:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d05:	69 c0 cd 21 00 00    	imul   $0x21cd,%eax,%eax
  401d0b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d0f:	8b 04 24             	mov    (%rsp),%eax
  401d12:	69 c0 5b 1b 00 00    	imul   $0x1b5b,%eax,%eax
  401d18:	89 04 24             	mov    %eax,(%rsp)
  401d1b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d1f:	69 c0 f6 58 00 00    	imul   $0x58f6,%eax,%eax
  401d25:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d29:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d2d:	69 c0 84 72 00 00    	imul   $0x7284,%eax,%eax
  401d33:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401d37:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401d3b:	69 c0 45 e8 00 00    	imul   $0xe845,%eax,%eax
  401d41:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401d45:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401d49:	69 c0 7f 56 00 00    	imul   $0x567f,%eax,%eax
  401d4f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401d53:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401d57:	69 c0 70 93 00 00    	imul   $0x9370,%eax,%eax
  401d5d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401d61:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d65:	69 c0 be 2d 00 00    	imul   $0x2dbe,%eax,%eax
  401d6b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d6f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d73:	69 c0 7b 27 00 00    	imul   $0x277b,%eax,%eax
  401d79:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d7d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d81:	69 c0 29 ef 00 00    	imul   $0xef29,%eax,%eax
  401d87:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d8b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401d8f:	69 c0 82 44 00 00    	imul   $0x4482,%eax,%eax
  401d95:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401d99:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d9d:	69 c0 5c 9b 00 00    	imul   $0x9b5c,%eax,%eax
  401da3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401da7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401dab:	69 c0 81 ef 00 00    	imul   $0xef81,%eax,%eax
  401db1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401db5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401db9:	69 c0 de 16 00 00    	imul   $0x16de,%eax,%eax
  401dbf:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401dc3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401dc7:	69 c0 ca 87 00 00    	imul   $0x87ca,%eax,%eax
  401dcd:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401dd1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401dd5:	69 c0 de b7 00 00    	imul   $0xb7de,%eax,%eax
  401ddb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ddf:	8b 04 24             	mov    (%rsp),%eax
  401de2:	69 c0 00 2e 00 00    	imul   $0x2e00,%eax,%eax
  401de8:	89 04 24             	mov    %eax,(%rsp)
  401deb:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401def:	69 c0 63 7c 00 00    	imul   $0x7c63,%eax,%eax
  401df5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401df9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401dfd:	69 c0 62 9b 00 00    	imul   $0x9b62,%eax,%eax
  401e03:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e07:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401e0b:	69 c0 92 65 00 00    	imul   $0x6592,%eax,%eax
  401e11:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e15:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401e19:	69 c0 07 33 00 00    	imul   $0x3307,%eax,%eax
  401e1f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401e23:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e27:	69 c0 3a c0 00 00    	imul   $0xc03a,%eax,%eax
  401e2d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e31:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e35:	69 c0 5c 48 00 00    	imul   $0x485c,%eax,%eax
  401e3b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e3f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401e43:	69 c0 45 86 00 00    	imul   $0x8645,%eax,%eax
  401e49:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e4d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401e51:	69 c0 3a 94 00 00    	imul   $0x943a,%eax,%eax
  401e57:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401e5b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e5f:	69 c0 31 e2 00 00    	imul   $0xe231,%eax,%eax
  401e65:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e69:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401e6d:	69 c0 09 5d 00 00    	imul   $0x5d09,%eax,%eax
  401e73:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401e77:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e7b:	69 c0 75 fa 00 00    	imul   $0xfa75,%eax,%eax
  401e81:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e85:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e89:	69 c0 e4 ac 00 00    	imul   $0xace4,%eax,%eax
  401e8f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e93:	8b 04 24             	mov    (%rsp),%eax
  401e96:	69 c0 98 88 00 00    	imul   $0x8898,%eax,%eax
  401e9c:	89 04 24             	mov    %eax,(%rsp)
  401e9f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ea3:	69 c0 a9 fb 00 00    	imul   $0xfba9,%eax,%eax
  401ea9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ead:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401eb1:	69 c0 46 de 00 00    	imul   $0xde46,%eax,%eax
  401eb7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ebb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ebf:	69 c0 b0 13 00 00    	imul   $0x13b0,%eax,%eax
  401ec5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ec9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ece:	ba 00 00 00 00       	mov    $0x0,%edx
  401ed3:	83 f8 09             	cmp    $0x9,%eax
  401ed6:	77 0c                	ja     401ee4 <scramble+0x4e0>
  401ed8:	89 c1                	mov    %eax,%ecx
  401eda:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401edd:	01 ca                	add    %ecx,%edx
  401edf:	83 c0 01             	add    $0x1,%eax
  401ee2:	eb ef                	jmp    401ed3 <scramble+0x4cf>
  401ee4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401ee9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401ef0:	00 00 
  401ef2:	75 07                	jne    401efb <scramble+0x4f7>
  401ef4:	89 d0                	mov    %edx,%eax
  401ef6:	48 83 c4 38          	add    $0x38,%rsp
  401efa:	c3                   	ret    
  401efb:	e8 5d 0a 00 00       	call   40295d <__stack_chk_fail>

0000000000401f00 <getbuf>:
  401f00:	f3 0f 1e fa          	endbr64 
  401f04:	48 83 ec 38          	sub    $0x38,%rsp
  401f08:	48 89 e7             	mov    %rsp,%rdi
  401f0b:	e8 69 05 00 00       	call   402479 <Gets>
  401f10:	b8 01 00 00 00       	mov    $0x1,%eax
  401f15:	48 83 c4 38          	add    $0x38,%rsp
  401f19:	c3                   	ret    

0000000000401f1a <touch1>:
  401f1a:	f3 0f 1e fa          	endbr64 
  401f1e:	50                   	push   %rax
  401f1f:	58                   	pop    %rax
  401f20:	48 83 ec 08          	sub    $0x8,%rsp
  401f24:	c7 05 ee 55 00 00 01 	movl   $0x1,0x55ee(%rip)        # 40751c <vlevel>
  401f2b:	00 00 00 
  401f2e:	48 8d 3d e1 23 00 00 	lea    0x23e1(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401f35:	e8 76 f3 ff ff       	call   4012b0 <puts@plt>
  401f3a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f3f:	e8 a7 07 00 00       	call   4026eb <validate>
  401f44:	bf 00 00 00 00       	mov    $0x0,%edi
  401f49:	e8 c2 f4 ff ff       	call   401410 <exit@plt>

0000000000401f4e <touch2>:
  401f4e:	f3 0f 1e fa          	endbr64 
  401f52:	50                   	push   %rax
  401f53:	58                   	pop    %rax
  401f54:	48 83 ec 08          	sub    $0x8,%rsp
  401f58:	89 fa                	mov    %edi,%edx
  401f5a:	c7 05 b8 55 00 00 02 	movl   $0x2,0x55b8(%rip)        # 40751c <vlevel>
  401f61:	00 00 00 
  401f64:	39 3d ba 55 00 00    	cmp    %edi,0x55ba(%rip)        # 407524 <cookie>
  401f6a:	74 2a                	je     401f96 <touch2+0x48>
  401f6c:	48 8d 35 ed 23 00 00 	lea    0x23ed(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  401f73:	bf 01 00 00 00       	mov    $0x1,%edi
  401f78:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7d:	e8 3e f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401f82:	bf 02 00 00 00       	mov    $0x2,%edi
  401f87:	e8 3a 08 00 00       	call   4027c6 <fail>
  401f8c:	bf 00 00 00 00       	mov    $0x0,%edi
  401f91:	e8 7a f4 ff ff       	call   401410 <exit@plt>
  401f96:	48 8d 35 9b 23 00 00 	lea    0x239b(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  401f9d:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa2:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa7:	e8 14 f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401fac:	bf 02 00 00 00       	mov    $0x2,%edi
  401fb1:	e8 35 07 00 00       	call   4026eb <validate>
  401fb6:	eb d4                	jmp    401f8c <touch2+0x3e>

0000000000401fb8 <hexmatch>:
  401fb8:	f3 0f 1e fa          	endbr64 
  401fbc:	41 55                	push   %r13
  401fbe:	41 54                	push   %r12
  401fc0:	55                   	push   %rbp
  401fc1:	53                   	push   %rbx
  401fc2:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  401fc9:	89 fd                	mov    %edi,%ebp
  401fcb:	48 89 f3             	mov    %rsi,%rbx
  401fce:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  401fd4:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  401fd9:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401fde:	31 c0                	xor    %eax,%eax
  401fe0:	e8 ab f3 ff ff       	call   401390 <random@plt>
  401fe5:	48 89 c1             	mov    %rax,%rcx
  401fe8:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401fef:	0a d7 a3 
  401ff2:	48 f7 ea             	imul   %rdx
  401ff5:	48 01 ca             	add    %rcx,%rdx
  401ff8:	48 c1 fa 06          	sar    $0x6,%rdx
  401ffc:	48 89 c8             	mov    %rcx,%rax
  401fff:	48 c1 f8 3f          	sar    $0x3f,%rax
  402003:	48 29 c2             	sub    %rax,%rdx
  402006:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  40200a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40200e:	48 c1 e0 02          	shl    $0x2,%rax
  402012:	48 29 c1             	sub    %rax,%rcx
  402015:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  402019:	41 89 e8             	mov    %ebp,%r8d
  40201c:	48 8d 0d 10 23 00 00 	lea    0x2310(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  402023:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40202a:	be 01 00 00 00       	mov    $0x1,%esi
  40202f:	4c 89 ef             	mov    %r13,%rdi
  402032:	b8 00 00 00 00       	mov    $0x0,%eax
  402037:	e8 14 f4 ff ff       	call   401450 <__sprintf_chk@plt>
  40203c:	ba 09 00 00 00       	mov    $0x9,%edx
  402041:	4c 89 ee             	mov    %r13,%rsi
  402044:	48 89 df             	mov    %rbx,%rdi
  402047:	e8 44 f2 ff ff       	call   401290 <strncmp@plt>
  40204c:	85 c0                	test   %eax,%eax
  40204e:	0f 94 c0             	sete   %al
  402051:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  402056:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  40205b:	75 11                	jne    40206e <hexmatch+0xb6>
  40205d:	0f b6 c0             	movzbl %al,%eax
  402060:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  402067:	5b                   	pop    %rbx
  402068:	5d                   	pop    %rbp
  402069:	41 5c                	pop    %r12
  40206b:	41 5d                	pop    %r13
  40206d:	c3                   	ret    
  40206e:	e8 ea 08 00 00       	call   40295d <__stack_chk_fail>

0000000000402073 <touch3>:
  402073:	f3 0f 1e fa          	endbr64 
  402077:	53                   	push   %rbx
  402078:	48 89 fb             	mov    %rdi,%rbx
  40207b:	c7 05 97 54 00 00 03 	movl   $0x3,0x5497(%rip)        # 40751c <vlevel>
  402082:	00 00 00 
  402085:	48 89 fe             	mov    %rdi,%rsi
  402088:	8b 3d 96 54 00 00    	mov    0x5496(%rip),%edi        # 407524 <cookie>
  40208e:	e8 25 ff ff ff       	call   401fb8 <hexmatch>
  402093:	85 c0                	test   %eax,%eax
  402095:	74 2d                	je     4020c4 <touch3+0x51>
  402097:	48 89 da             	mov    %rbx,%rdx
  40209a:	48 8d 35 e7 22 00 00 	lea    0x22e7(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  4020a1:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ab:	e8 10 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  4020b0:	bf 03 00 00 00       	mov    $0x3,%edi
  4020b5:	e8 31 06 00 00       	call   4026eb <validate>
  4020ba:	bf 00 00 00 00       	mov    $0x0,%edi
  4020bf:	e8 4c f3 ff ff       	call   401410 <exit@plt>
  4020c4:	48 89 da             	mov    %rbx,%rdx
  4020c7:	48 8d 35 e2 22 00 00 	lea    0x22e2(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  4020ce:	bf 01 00 00 00       	mov    $0x1,%edi
  4020d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d8:	e8 e3 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4020dd:	bf 03 00 00 00       	mov    $0x3,%edi
  4020e2:	e8 df 06 00 00       	call   4027c6 <fail>
  4020e7:	eb d1                	jmp    4020ba <touch3+0x47>

00000000004020e9 <test>:
  4020e9:	f3 0f 1e fa          	endbr64 
  4020ed:	48 83 ec 08          	sub    $0x8,%rsp
  4020f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4020f6:	e8 05 fe ff ff       	call   401f00 <getbuf>
  4020fb:	89 c2                	mov    %eax,%edx
  4020fd:	48 8d 35 d4 22 00 00 	lea    0x22d4(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  402104:	bf 01 00 00 00       	mov    $0x1,%edi
  402109:	b8 00 00 00 00       	mov    $0x0,%eax
  40210e:	e8 ad f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402113:	48 83 c4 08          	add    $0x8,%rsp
  402117:	c3                   	ret    

0000000000402118 <test2>:
  402118:	f3 0f 1e fa          	endbr64 
  40211c:	48 83 ec 08          	sub    $0x8,%rsp
  402120:	b8 00 00 00 00       	mov    $0x0,%eax
  402125:	e8 1d 00 00 00       	call   402147 <getbuf_withcanary>
  40212a:	89 c2                	mov    %eax,%edx
  40212c:	48 8d 35 cd 22 00 00 	lea    0x22cd(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  402133:	bf 01 00 00 00       	mov    $0x1,%edi
  402138:	b8 00 00 00 00       	mov    $0x0,%eax
  40213d:	e8 7e f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402142:	48 83 c4 08          	add    $0x8,%rsp
  402146:	c3                   	ret    

0000000000402147 <getbuf_withcanary>:
  402147:	f3 0f 1e fa          	endbr64 
  40214b:	55                   	push   %rbp
  40214c:	48 89 e5             	mov    %rsp,%rbp
  40214f:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  402156:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40215d:	00 00 
  40215f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402163:	31 c0                	xor    %eax,%eax
  402165:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  40216c:	00 00 00 
  40216f:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  402175:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  40217b:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402182:	48 89 c7             	mov    %rax,%rdi
  402185:	e8 ef 02 00 00       	call   402479 <Gets>
  40218a:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  402190:	48 63 d0             	movslq %eax,%rdx
  402193:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  40219a:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  4021a1:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  4021a8:	48 89 ce             	mov    %rcx,%rsi
  4021ab:	48 89 c7             	mov    %rax,%rdi
  4021ae:	e8 bd f1 ff ff       	call   401370 <memcpy@plt>
  4021b3:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  4021b9:	48 63 d0             	movslq %eax,%rdx
  4021bc:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  4021c3:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  4021ca:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  4021d1:	48 89 c6             	mov    %rax,%rsi
  4021d4:	48 89 cf             	mov    %rcx,%rdi
  4021d7:	e8 94 f1 ff ff       	call   401370 <memcpy@plt>
  4021dc:	b8 01 00 00 00       	mov    $0x1,%eax
  4021e1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4021e5:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4021ec:	00 00 
  4021ee:	74 05                	je     4021f5 <getbuf_withcanary+0xae>
  4021f0:	e8 68 07 00 00       	call   40295d <__stack_chk_fail>
  4021f5:	c9                   	leave  
  4021f6:	c3                   	ret    

00000000004021f7 <start_farm>:
  4021f7:	f3 0f 1e fa          	endbr64 
  4021fb:	b8 01 00 00 00       	mov    $0x1,%eax
  402200:	c3                   	ret    

0000000000402201 <getval_212>:
  402201:	f3 0f 1e fa          	endbr64 
  402205:	b8 2b 48 89 c7       	mov    $0xc789482b,%eax
  40220a:	c3                   	ret    

000000000040220b <getval_233>:
  40220b:	f3 0f 1e fa          	endbr64 
  40220f:	b8 58 90 94 c3       	mov    $0xc3949058,%eax
  402214:	c3                   	ret    

0000000000402215 <setval_127>:
  402215:	f3 0f 1e fa          	endbr64 
  402219:	c7 07 be 08 89 c7    	movl   $0xc78908be,(%rdi)
  40221f:	c3                   	ret    

0000000000402220 <addval_448>:
  402220:	f3 0f 1e fa          	endbr64 
  402224:	8d 87 48 89 c7 c7    	lea    -0x383876b8(%rdi),%eax
  40222a:	c3                   	ret    

000000000040222b <addval_132>:
  40222b:	f3 0f 1e fa          	endbr64 
  40222f:	8d 87 5e 58 91 90    	lea    -0x6f6ea7a2(%rdi),%eax
  402235:	c3                   	ret    

0000000000402236 <setval_278>:
  402236:	f3 0f 1e fa          	endbr64 
  40223a:	c7 07 58 90 90 90    	movl   $0x90909058,(%rdi)
  402240:	c3                   	ret    

0000000000402241 <addval_460>:
  402241:	f3 0f 1e fa          	endbr64 
  402245:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  40224b:	c3                   	ret    

000000000040224c <setval_161>:
  40224c:	f3 0f 1e fa          	endbr64 
  402250:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  402256:	c3                   	ret    

0000000000402257 <mid_farm>:
  402257:	f3 0f 1e fa          	endbr64 
  40225b:	b8 01 00 00 00       	mov    $0x1,%eax
  402260:	c3                   	ret    

0000000000402261 <add_xy>:
  402261:	f3 0f 1e fa          	endbr64 
  402265:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  402269:	c3                   	ret    

000000000040226a <getval_492>:
  40226a:	f3 0f 1e fa          	endbr64 
  40226e:	b8 09 c1 38 d2       	mov    $0xd238c109,%eax
  402273:	c3                   	ret    

0000000000402274 <setval_261>:
  402274:	f3 0f 1e fa          	endbr64 
  402278:	c7 07 a9 d6 90 90    	movl   $0x9090d6a9,(%rdi)
  40227e:	c3                   	ret    

000000000040227f <setval_347>:
  40227f:	f3 0f 1e fa          	endbr64 
  402283:	c7 07 8c 89 c1 c7    	movl   $0xc7c1898c,(%rdi)
  402289:	c3                   	ret    

000000000040228a <getval_400>:
  40228a:	f3 0f 1e fa          	endbr64 
  40228e:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  402293:	c3                   	ret    

0000000000402294 <getval_200>:
  402294:	f3 0f 1e fa          	endbr64 
  402298:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  40229d:	c3                   	ret    

000000000040229e <setval_445>:
  40229e:	f3 0f 1e fa          	endbr64 
  4022a2:	c7 07 89 c1 38 d2    	movl   $0xd238c189,(%rdi)
  4022a8:	c3                   	ret    

00000000004022a9 <setval_211>:
  4022a9:	f3 0f 1e fa          	endbr64 
  4022ad:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  4022b3:	c3                   	ret    

00000000004022b4 <setval_310>:
  4022b4:	f3 0f 1e fa          	endbr64 
  4022b8:	c7 07 89 ca 08 c0    	movl   $0xc008ca89,(%rdi)
  4022be:	c3                   	ret    

00000000004022bf <addval_108>:
  4022bf:	f3 0f 1e fa          	endbr64 
  4022c3:	8d 87 99 d6 90 90    	lea    -0x6f6f2967(%rdi),%eax
  4022c9:	c3                   	ret    

00000000004022ca <setval_201>:
  4022ca:	f3 0f 1e fa          	endbr64 
  4022ce:	c7 07 89 d6 18 db    	movl   $0xdb18d689,(%rdi)
  4022d4:	c3                   	ret    

00000000004022d5 <addval_232>:
  4022d5:	f3 0f 1e fa          	endbr64 
  4022d9:	8d 87 48 89 e0 c7    	lea    -0x381f76b8(%rdi),%eax
  4022df:	c3                   	ret    

00000000004022e0 <setval_296>:
  4022e0:	f3 0f 1e fa          	endbr64 
  4022e4:	c7 07 a9 ca 38 c9    	movl   $0xc938caa9,(%rdi)
  4022ea:	c3                   	ret    

00000000004022eb <getval_177>:
  4022eb:	f3 0f 1e fa          	endbr64 
  4022ef:	b8 00 c9 ca c3       	mov    $0xc3cac900,%eax
  4022f4:	c3                   	ret    

00000000004022f5 <getval_470>:
  4022f5:	f3 0f 1e fa          	endbr64 
  4022f9:	b8 89 d6 90 90       	mov    $0x9090d689,%eax
  4022fe:	c3                   	ret    

00000000004022ff <setval_415>:
  4022ff:	f3 0f 1e fa          	endbr64 
  402303:	c7 07 89 d6 94 c9    	movl   $0xc994d689,(%rdi)
  402309:	c3                   	ret    

000000000040230a <addval_359>:
  40230a:	f3 0f 1e fa          	endbr64 
  40230e:	8d 87 89 d6 18 d2    	lea    -0x2de72977(%rdi),%eax
  402314:	c3                   	ret    

0000000000402315 <setval_209>:
  402315:	f3 0f 1e fa          	endbr64 
  402319:	c7 07 89 c1 28 c9    	movl   $0xc928c189,(%rdi)
  40231f:	c3                   	ret    

0000000000402320 <addval_455>:
  402320:	f3 0f 1e fa          	endbr64 
  402324:	8d 87 89 c1 84 c0    	lea    -0x3f7b3e77(%rdi),%eax
  40232a:	c3                   	ret    

000000000040232b <getval_251>:
  40232b:	f3 0f 1e fa          	endbr64 
  40232f:	b8 c9 d6 c3 6d       	mov    $0x6dc3d6c9,%eax
  402334:	c3                   	ret    

0000000000402335 <addval_236>:
  402335:	f3 0f 1e fa          	endbr64 
  402339:	8d 87 4e 81 ca 90    	lea    -0x6f357eb2(%rdi),%eax
  40233f:	c3                   	ret    

0000000000402340 <setval_122>:
  402340:	f3 0f 1e fa          	endbr64 
  402344:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  40234a:	c3                   	ret    

000000000040234b <getval_340>:
  40234b:	f3 0f 1e fa          	endbr64 
  40234f:	b8 8d c1 08 c0       	mov    $0xc008c18d,%eax
  402354:	c3                   	ret    

0000000000402355 <addval_216>:
  402355:	f3 0f 1e fa          	endbr64 
  402359:	8d 87 89 c1 78 c0    	lea    -0x3f873e77(%rdi),%eax
  40235f:	c3                   	ret    

0000000000402360 <addval_141>:
  402360:	f3 0f 1e fa          	endbr64 
  402364:	8d 87 89 ca c4 c9    	lea    -0x363b3577(%rdi),%eax
  40236a:	c3                   	ret    

000000000040236b <addval_257>:
  40236b:	f3 0f 1e fa          	endbr64 
  40236f:	8d 87 89 ca 92 90    	lea    -0x6f6d3577(%rdi),%eax
  402375:	c3                   	ret    

0000000000402376 <addval_343>:
  402376:	f3 0f 1e fa          	endbr64 
  40237a:	8d 87 4a 89 e0 90    	lea    -0x6f1f76b6(%rdi),%eax
  402380:	c3                   	ret    

0000000000402381 <setval_366>:
  402381:	f3 0f 1e fa          	endbr64 
  402385:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  40238b:	c3                   	ret    

000000000040238c <setval_107>:
  40238c:	f3 0f 1e fa          	endbr64 
  402390:	c7 07 99 c1 90 c3    	movl   $0xc390c199,(%rdi)
  402396:	c3                   	ret    

0000000000402397 <getval_411>:
  402397:	f3 0f 1e fa          	endbr64 
  40239b:	b8 d5 4b c9 ca       	mov    $0xcac94bd5,%eax
  4023a0:	c3                   	ret    

00000000004023a1 <setval_240>:
  4023a1:	f3 0f 1e fa          	endbr64 
  4023a5:	c7 07 48 89 e0 90    	movl   $0x90e08948,(%rdi)
  4023ab:	c3                   	ret    

00000000004023ac <addval_185>:
  4023ac:	f3 0f 1e fa          	endbr64 
  4023b0:	8d 87 89 d6 20 c9    	lea    -0x36df2977(%rdi),%eax
  4023b6:	c3                   	ret    

00000000004023b7 <setval_468>:
  4023b7:	f3 0f 1e fa          	endbr64 
  4023bb:	c7 07 63 89 ca c3    	movl   $0xc3ca8963,(%rdi)
  4023c1:	c3                   	ret    

00000000004023c2 <end_farm>:
  4023c2:	f3 0f 1e fa          	endbr64 
  4023c6:	b8 01 00 00 00       	mov    $0x1,%eax
  4023cb:	c3                   	ret    

00000000004023cc <save_char>:
  4023cc:	8b 05 72 5d 00 00    	mov    0x5d72(%rip),%eax        # 408144 <gets_cnt>
  4023d2:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4023d7:	7f 4a                	jg     402423 <save_char+0x57>
  4023d9:	89 f9                	mov    %edi,%ecx
  4023db:	c0 e9 04             	shr    $0x4,%cl
  4023de:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4023e1:	4c 8d 05 88 23 00 00 	lea    0x2388(%rip),%r8        # 404770 <trans_char>
  4023e8:	83 e1 0f             	and    $0xf,%ecx
  4023eb:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4023f0:	48 8d 0d 49 51 00 00 	lea    0x5149(%rip),%rcx        # 407540 <gets_buf>
  4023f7:	48 63 f2             	movslq %edx,%rsi
  4023fa:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4023fe:	8d 72 01             	lea    0x1(%rdx),%esi
  402401:	83 e7 0f             	and    $0xf,%edi
  402404:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402409:	48 63 f6             	movslq %esi,%rsi
  40240c:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402410:	83 c2 02             	add    $0x2,%edx
  402413:	48 63 d2             	movslq %edx,%rdx
  402416:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  40241a:	83 c0 01             	add    $0x1,%eax
  40241d:	89 05 21 5d 00 00    	mov    %eax,0x5d21(%rip)        # 408144 <gets_cnt>
  402423:	c3                   	ret    

0000000000402424 <save_term>:
  402424:	8b 05 1a 5d 00 00    	mov    0x5d1a(%rip),%eax        # 408144 <gets_cnt>
  40242a:	8d 04 40             	lea    (%rax,%rax,2),%eax
  40242d:	48 98                	cltq   
  40242f:	48 8d 15 0a 51 00 00 	lea    0x510a(%rip),%rdx        # 407540 <gets_buf>
  402436:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40243a:	c3                   	ret    

000000000040243b <check_fail>:
  40243b:	f3 0f 1e fa          	endbr64 
  40243f:	50                   	push   %rax
  402440:	58                   	pop    %rax
  402441:	48 83 ec 08          	sub    $0x8,%rsp
  402445:	0f be 15 fc 5c 00 00 	movsbl 0x5cfc(%rip),%edx        # 408148 <target_prefix>
  40244c:	4c 8d 05 ed 50 00 00 	lea    0x50ed(%rip),%r8        # 407540 <gets_buf>
  402453:	8b 0d bf 50 00 00    	mov    0x50bf(%rip),%ecx        # 407518 <check_level>
  402459:	48 8d 35 ce 1f 00 00 	lea    0x1fce(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  402460:	bf 01 00 00 00       	mov    $0x1,%edi
  402465:	b8 00 00 00 00       	mov    $0x0,%eax
  40246a:	e8 51 ef ff ff       	call   4013c0 <__printf_chk@plt>
  40246f:	bf 01 00 00 00       	mov    $0x1,%edi
  402474:	e8 97 ef ff ff       	call   401410 <exit@plt>

0000000000402479 <Gets>:
  402479:	f3 0f 1e fa          	endbr64 
  40247d:	41 54                	push   %r12
  40247f:	55                   	push   %rbp
  402480:	53                   	push   %rbx
  402481:	49 89 fc             	mov    %rdi,%r12
  402484:	c7 05 b6 5c 00 00 00 	movl   $0x0,0x5cb6(%rip)        # 408144 <gets_cnt>
  40248b:	00 00 00 
  40248e:	48 89 fb             	mov    %rdi,%rbx
  402491:	48 8b 3d 78 50 00 00 	mov    0x5078(%rip),%rdi        # 407510 <infile>
  402498:	e8 a3 ef ff ff       	call   401440 <getc@plt>
  40249d:	83 f8 ff             	cmp    $0xffffffff,%eax
  4024a0:	74 18                	je     4024ba <Gets+0x41>
  4024a2:	83 f8 0a             	cmp    $0xa,%eax
  4024a5:	74 13                	je     4024ba <Gets+0x41>
  4024a7:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4024ab:	88 03                	mov    %al,(%rbx)
  4024ad:	0f b6 f8             	movzbl %al,%edi
  4024b0:	e8 17 ff ff ff       	call   4023cc <save_char>
  4024b5:	48 89 eb             	mov    %rbp,%rbx
  4024b8:	eb d7                	jmp    402491 <Gets+0x18>
  4024ba:	c6 03 00             	movb   $0x0,(%rbx)
  4024bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c2:	e8 5d ff ff ff       	call   402424 <save_term>
  4024c7:	4c 89 e0             	mov    %r12,%rax
  4024ca:	5b                   	pop    %rbx
  4024cb:	5d                   	pop    %rbp
  4024cc:	41 5c                	pop    %r12
  4024ce:	c3                   	ret    

00000000004024cf <notify_server>:
  4024cf:	f3 0f 1e fa          	endbr64 
  4024d3:	55                   	push   %rbp
  4024d4:	53                   	push   %rbx
  4024d5:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  4024dc:	ff 
  4024dd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4024e4:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4024e9:	4c 39 dc             	cmp    %r11,%rsp
  4024ec:	75 ef                	jne    4024dd <notify_server+0xe>
  4024ee:	48 83 ec 18          	sub    $0x18,%rsp
  4024f2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024f9:	00 00 
  4024fb:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402502:	00 
  402503:	31 c0                	xor    %eax,%eax
  402505:	83 3d 1c 50 00 00 00 	cmpl   $0x0,0x501c(%rip)        # 407528 <is_checker>
  40250c:	0f 85 b7 01 00 00    	jne    4026c9 <notify_server+0x1fa>
  402512:	89 fb                	mov    %edi,%ebx
  402514:	81 3d 26 5c 00 00 9c 	cmpl   $0x1f9c,0x5c26(%rip)        # 408144 <gets_cnt>
  40251b:	1f 00 00 
  40251e:	7f 18                	jg     402538 <notify_server+0x69>
  402520:	0f be 05 21 5c 00 00 	movsbl 0x5c21(%rip),%eax        # 408148 <target_prefix>
  402527:	83 3d 72 4f 00 00 00 	cmpl   $0x0,0x4f72(%rip)        # 4074a0 <notify>
  40252e:	74 23                	je     402553 <notify_server+0x84>
  402530:	8b 15 ea 4f 00 00    	mov    0x4fea(%rip),%edx        # 407520 <authkey>
  402536:	eb 20                	jmp    402558 <notify_server+0x89>
  402538:	48 8d 35 19 20 00 00 	lea    0x2019(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  40253f:	bf 01 00 00 00       	mov    $0x1,%edi
  402544:	e8 77 ee ff ff       	call   4013c0 <__printf_chk@plt>
  402549:	bf 01 00 00 00       	mov    $0x1,%edi
  40254e:	e8 bd ee ff ff       	call   401410 <exit@plt>
  402553:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402558:	85 db                	test   %ebx,%ebx
  40255a:	0f 84 9b 00 00 00    	je     4025fb <notify_server+0x12c>
  402560:	48 8d 2d e2 1e 00 00 	lea    0x1ee2(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  402567:	48 89 e7             	mov    %rsp,%rdi
  40256a:	48 8d 0d cf 4f 00 00 	lea    0x4fcf(%rip),%rcx        # 407540 <gets_buf>
  402571:	51                   	push   %rcx
  402572:	56                   	push   %rsi
  402573:	50                   	push   %rax
  402574:	52                   	push   %rdx
  402575:	49 89 e9             	mov    %rbp,%r9
  402578:	44 8b 05 d1 4b 00 00 	mov    0x4bd1(%rip),%r8d        # 407150 <target_id>
  40257f:	48 8d 0d c8 1e 00 00 	lea    0x1ec8(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402586:	ba 00 20 00 00       	mov    $0x2000,%edx
  40258b:	be 01 00 00 00       	mov    $0x1,%esi
  402590:	b8 00 00 00 00       	mov    $0x0,%eax
  402595:	e8 b6 ee ff ff       	call   401450 <__sprintf_chk@plt>
  40259a:	48 83 c4 20          	add    $0x20,%rsp
  40259e:	83 3d fb 4e 00 00 00 	cmpl   $0x0,0x4efb(%rip)        # 4074a0 <notify>
  4025a5:	0f 84 95 00 00 00    	je     402640 <notify_server+0x171>
  4025ab:	48 89 e1             	mov    %rsp,%rcx
  4025ae:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4025b5:	00 
  4025b6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4025bc:	48 8b 15 a5 4b 00 00 	mov    0x4ba5(%rip),%rdx        # 407168 <lab>
  4025c3:	48 8b 35 a6 4b 00 00 	mov    0x4ba6(%rip),%rsi        # 407170 <course>
  4025ca:	48 8b 3d 8f 4b 00 00 	mov    0x4b8f(%rip),%rdi        # 407160 <user_id>
  4025d1:	e8 7f 12 00 00       	call   403855 <driver_post>
  4025d6:	85 c0                	test   %eax,%eax
  4025d8:	78 2d                	js     402607 <notify_server+0x138>
  4025da:	85 db                	test   %ebx,%ebx
  4025dc:	74 51                	je     40262f <notify_server+0x160>
  4025de:	48 8d 3d a3 1f 00 00 	lea    0x1fa3(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  4025e5:	e8 c6 ec ff ff       	call   4012b0 <puts@plt>
  4025ea:	48 8d 3d 85 1e 00 00 	lea    0x1e85(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  4025f1:	e8 ba ec ff ff       	call   4012b0 <puts@plt>
  4025f6:	e9 ce 00 00 00       	jmp    4026c9 <notify_server+0x1fa>
  4025fb:	48 8d 2d 42 1e 00 00 	lea    0x1e42(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  402602:	e9 60 ff ff ff       	jmp    402567 <notify_server+0x98>
  402607:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  40260e:	00 
  40260f:	48 8d 35 54 1e 00 00 	lea    0x1e54(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  402616:	bf 01 00 00 00       	mov    $0x1,%edi
  40261b:	b8 00 00 00 00       	mov    $0x0,%eax
  402620:	e8 9b ed ff ff       	call   4013c0 <__printf_chk@plt>
  402625:	bf 01 00 00 00       	mov    $0x1,%edi
  40262a:	e8 e1 ed ff ff       	call   401410 <exit@plt>
  40262f:	48 8d 3d 4a 1e 00 00 	lea    0x1e4a(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  402636:	e8 75 ec ff ff       	call   4012b0 <puts@plt>
  40263b:	e9 89 00 00 00       	jmp    4026c9 <notify_server+0x1fa>
  402640:	48 89 ea             	mov    %rbp,%rdx
  402643:	48 8d 35 76 1f 00 00 	lea    0x1f76(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  40264a:	bf 01 00 00 00       	mov    $0x1,%edi
  40264f:	b8 00 00 00 00       	mov    $0x0,%eax
  402654:	e8 67 ed ff ff       	call   4013c0 <__printf_chk@plt>
  402659:	48 8b 15 00 4b 00 00 	mov    0x4b00(%rip),%rdx        # 407160 <user_id>
  402660:	48 8d 35 20 1e 00 00 	lea    0x1e20(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  402667:	bf 01 00 00 00       	mov    $0x1,%edi
  40266c:	b8 00 00 00 00       	mov    $0x0,%eax
  402671:	e8 4a ed ff ff       	call   4013c0 <__printf_chk@plt>
  402676:	48 8b 15 f3 4a 00 00 	mov    0x4af3(%rip),%rdx        # 407170 <course>
  40267d:	48 8d 35 10 1e 00 00 	lea    0x1e10(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  402684:	bf 01 00 00 00       	mov    $0x1,%edi
  402689:	b8 00 00 00 00       	mov    $0x0,%eax
  40268e:	e8 2d ed ff ff       	call   4013c0 <__printf_chk@plt>
  402693:	48 8b 15 ce 4a 00 00 	mov    0x4ace(%rip),%rdx        # 407168 <lab>
  40269a:	48 8d 35 ff 1d 00 00 	lea    0x1dff(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  4026a1:	bf 01 00 00 00       	mov    $0x1,%edi
  4026a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ab:	e8 10 ed ff ff       	call   4013c0 <__printf_chk@plt>
  4026b0:	48 89 e2             	mov    %rsp,%rdx
  4026b3:	48 8d 35 ef 1d 00 00 	lea    0x1def(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  4026ba:	bf 01 00 00 00       	mov    $0x1,%edi
  4026bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4026c4:	e8 f7 ec ff ff       	call   4013c0 <__printf_chk@plt>
  4026c9:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4026d0:	00 
  4026d1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4026d8:	00 00 
  4026da:	75 0a                	jne    4026e6 <notify_server+0x217>
  4026dc:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4026e3:	5b                   	pop    %rbx
  4026e4:	5d                   	pop    %rbp
  4026e5:	c3                   	ret    
  4026e6:	e8 72 02 00 00       	call   40295d <__stack_chk_fail>

00000000004026eb <validate>:
  4026eb:	f3 0f 1e fa          	endbr64 
  4026ef:	53                   	push   %rbx
  4026f0:	89 fb                	mov    %edi,%ebx
  4026f2:	83 3d 2f 4e 00 00 00 	cmpl   $0x0,0x4e2f(%rip)        # 407528 <is_checker>
  4026f9:	74 79                	je     402774 <validate+0x89>
  4026fb:	39 3d 1b 4e 00 00    	cmp    %edi,0x4e1b(%rip)        # 40751c <vlevel>
  402701:	75 39                	jne    40273c <validate+0x51>
  402703:	8b 15 0f 4e 00 00    	mov    0x4e0f(%rip),%edx        # 407518 <check_level>
  402709:	39 fa                	cmp    %edi,%edx
  40270b:	75 45                	jne    402752 <validate+0x67>
  40270d:	0f be 0d 34 5a 00 00 	movsbl 0x5a34(%rip),%ecx        # 408148 <target_prefix>
  402714:	4c 8d 0d 25 4e 00 00 	lea    0x4e25(%rip),%r9        # 407540 <gets_buf>
  40271b:	41 89 f8             	mov    %edi,%r8d
  40271e:	8b 15 fc 4d 00 00    	mov    0x4dfc(%rip),%edx        # 407520 <authkey>
  402724:	48 8d 35 e5 1e 00 00 	lea    0x1ee5(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  40272b:	bf 01 00 00 00       	mov    $0x1,%edi
  402730:	b8 00 00 00 00       	mov    $0x0,%eax
  402735:	e8 86 ec ff ff       	call   4013c0 <__printf_chk@plt>
  40273a:	5b                   	pop    %rbx
  40273b:	c3                   	ret    
  40273c:	48 8d 3d 72 1d 00 00 	lea    0x1d72(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402743:	e8 68 eb ff ff       	call   4012b0 <puts@plt>
  402748:	b8 00 00 00 00       	mov    $0x0,%eax
  40274d:	e8 e9 fc ff ff       	call   40243b <check_fail>
  402752:	89 f9                	mov    %edi,%ecx
  402754:	48 8d 35 8d 1e 00 00 	lea    0x1e8d(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  40275b:	bf 01 00 00 00       	mov    $0x1,%edi
  402760:	b8 00 00 00 00       	mov    $0x0,%eax
  402765:	e8 56 ec ff ff       	call   4013c0 <__printf_chk@plt>
  40276a:	b8 00 00 00 00       	mov    $0x0,%eax
  40276f:	e8 c7 fc ff ff       	call   40243b <check_fail>
  402774:	39 3d a2 4d 00 00    	cmp    %edi,0x4da2(%rip)        # 40751c <vlevel>
  40277a:	74 1a                	je     402796 <validate+0xab>
  40277c:	48 8d 3d 32 1d 00 00 	lea    0x1d32(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402783:	e8 28 eb ff ff       	call   4012b0 <puts@plt>
  402788:	89 de                	mov    %ebx,%esi
  40278a:	bf 00 00 00 00       	mov    $0x0,%edi
  40278f:	e8 3b fd ff ff       	call   4024cf <notify_server>
  402794:	eb a4                	jmp    40273a <validate+0x4f>
  402796:	0f be 0d ab 59 00 00 	movsbl 0x59ab(%rip),%ecx        # 408148 <target_prefix>
  40279d:	89 fa                	mov    %edi,%edx
  40279f:	48 8d 35 92 1e 00 00 	lea    0x1e92(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  4027a6:	bf 01 00 00 00       	mov    $0x1,%edi
  4027ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4027b0:	e8 0b ec ff ff       	call   4013c0 <__printf_chk@plt>
  4027b5:	89 de                	mov    %ebx,%esi
  4027b7:	bf 01 00 00 00       	mov    $0x1,%edi
  4027bc:	e8 0e fd ff ff       	call   4024cf <notify_server>
  4027c1:	e9 74 ff ff ff       	jmp    40273a <validate+0x4f>

00000000004027c6 <fail>:
  4027c6:	f3 0f 1e fa          	endbr64 
  4027ca:	48 83 ec 08          	sub    $0x8,%rsp
  4027ce:	83 3d 53 4d 00 00 00 	cmpl   $0x0,0x4d53(%rip)        # 407528 <is_checker>
  4027d5:	75 11                	jne    4027e8 <fail+0x22>
  4027d7:	89 fe                	mov    %edi,%esi
  4027d9:	bf 00 00 00 00       	mov    $0x0,%edi
  4027de:	e8 ec fc ff ff       	call   4024cf <notify_server>
  4027e3:	48 83 c4 08          	add    $0x8,%rsp
  4027e7:	c3                   	ret    
  4027e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4027ed:	e8 49 fc ff ff       	call   40243b <check_fail>

00000000004027f2 <bushandler>:
  4027f2:	f3 0f 1e fa          	endbr64 
  4027f6:	50                   	push   %rax
  4027f7:	58                   	pop    %rax
  4027f8:	48 83 ec 08          	sub    $0x8,%rsp
  4027fc:	83 3d 25 4d 00 00 00 	cmpl   $0x0,0x4d25(%rip)        # 407528 <is_checker>
  402803:	74 16                	je     40281b <bushandler+0x29>
  402805:	48 8d 3d c7 1c 00 00 	lea    0x1cc7(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  40280c:	e8 9f ea ff ff       	call   4012b0 <puts@plt>
  402811:	b8 00 00 00 00       	mov    $0x0,%eax
  402816:	e8 20 fc ff ff       	call   40243b <check_fail>
  40281b:	48 8d 3d 4e 1e 00 00 	lea    0x1e4e(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  402822:	e8 89 ea ff ff       	call   4012b0 <puts@plt>
  402827:	48 8d 3d af 1c 00 00 	lea    0x1caf(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  40282e:	e8 7d ea ff ff       	call   4012b0 <puts@plt>
  402833:	be 00 00 00 00       	mov    $0x0,%esi
  402838:	bf 00 00 00 00       	mov    $0x0,%edi
  40283d:	e8 8d fc ff ff       	call   4024cf <notify_server>
  402842:	bf 01 00 00 00       	mov    $0x1,%edi
  402847:	e8 c4 eb ff ff       	call   401410 <exit@plt>

000000000040284c <seghandler>:
  40284c:	f3 0f 1e fa          	endbr64 
  402850:	50                   	push   %rax
  402851:	58                   	pop    %rax
  402852:	48 83 ec 08          	sub    $0x8,%rsp
  402856:	83 3d cb 4c 00 00 00 	cmpl   $0x0,0x4ccb(%rip)        # 407528 <is_checker>
  40285d:	74 16                	je     402875 <seghandler+0x29>
  40285f:	48 8d 3d 8d 1c 00 00 	lea    0x1c8d(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  402866:	e8 45 ea ff ff       	call   4012b0 <puts@plt>
  40286b:	b8 00 00 00 00       	mov    $0x0,%eax
  402870:	e8 c6 fb ff ff       	call   40243b <check_fail>
  402875:	48 8d 3d 14 1e 00 00 	lea    0x1e14(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  40287c:	e8 2f ea ff ff       	call   4012b0 <puts@plt>
  402881:	48 8d 3d 55 1c 00 00 	lea    0x1c55(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402888:	e8 23 ea ff ff       	call   4012b0 <puts@plt>
  40288d:	be 00 00 00 00       	mov    $0x0,%esi
  402892:	bf 00 00 00 00       	mov    $0x0,%edi
  402897:	e8 33 fc ff ff       	call   4024cf <notify_server>
  40289c:	bf 01 00 00 00       	mov    $0x1,%edi
  4028a1:	e8 6a eb ff ff       	call   401410 <exit@plt>

00000000004028a6 <illegalhandler>:
  4028a6:	f3 0f 1e fa          	endbr64 
  4028aa:	50                   	push   %rax
  4028ab:	58                   	pop    %rax
  4028ac:	48 83 ec 08          	sub    $0x8,%rsp
  4028b0:	83 3d 71 4c 00 00 00 	cmpl   $0x0,0x4c71(%rip)        # 407528 <is_checker>
  4028b7:	74 16                	je     4028cf <illegalhandler+0x29>
  4028b9:	48 8d 3d 46 1c 00 00 	lea    0x1c46(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  4028c0:	e8 eb e9 ff ff       	call   4012b0 <puts@plt>
  4028c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4028ca:	e8 6c fb ff ff       	call   40243b <check_fail>
  4028cf:	48 8d 3d e2 1d 00 00 	lea    0x1de2(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  4028d6:	e8 d5 e9 ff ff       	call   4012b0 <puts@plt>
  4028db:	48 8d 3d fb 1b 00 00 	lea    0x1bfb(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4028e2:	e8 c9 e9 ff ff       	call   4012b0 <puts@plt>
  4028e7:	be 00 00 00 00       	mov    $0x0,%esi
  4028ec:	bf 00 00 00 00       	mov    $0x0,%edi
  4028f1:	e8 d9 fb ff ff       	call   4024cf <notify_server>
  4028f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4028fb:	e8 10 eb ff ff       	call   401410 <exit@plt>

0000000000402900 <sigalrmhandler>:
  402900:	f3 0f 1e fa          	endbr64 
  402904:	50                   	push   %rax
  402905:	58                   	pop    %rax
  402906:	48 83 ec 08          	sub    $0x8,%rsp
  40290a:	83 3d 17 4c 00 00 00 	cmpl   $0x0,0x4c17(%rip)        # 407528 <is_checker>
  402911:	74 16                	je     402929 <sigalrmhandler+0x29>
  402913:	48 8d 3d 00 1c 00 00 	lea    0x1c00(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  40291a:	e8 91 e9 ff ff       	call   4012b0 <puts@plt>
  40291f:	b8 00 00 00 00       	mov    $0x0,%eax
  402924:	e8 12 fb ff ff       	call   40243b <check_fail>
  402929:	ba 02 00 00 00       	mov    $0x2,%edx
  40292e:	48 8d 35 b3 1d 00 00 	lea    0x1db3(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  402935:	bf 01 00 00 00       	mov    $0x1,%edi
  40293a:	b8 00 00 00 00       	mov    $0x0,%eax
  40293f:	e8 7c ea ff ff       	call   4013c0 <__printf_chk@plt>
  402944:	be 00 00 00 00       	mov    $0x0,%esi
  402949:	bf 00 00 00 00       	mov    $0x0,%edi
  40294e:	e8 7c fb ff ff       	call   4024cf <notify_server>
  402953:	bf 01 00 00 00       	mov    $0x1,%edi
  402958:	e8 b3 ea ff ff       	call   401410 <exit@plt>

000000000040295d <__stack_chk_fail>:
  40295d:	f3 0f 1e fa          	endbr64 
  402961:	50                   	push   %rax
  402962:	58                   	pop    %rax
  402963:	48 83 ec 08          	sub    $0x8,%rsp
  402967:	83 3d ba 4b 00 00 00 	cmpl   $0x0,0x4bba(%rip)        # 407528 <is_checker>
  40296e:	74 16                	je     402986 <__stack_chk_fail+0x29>
  402970:	48 8d 3d ab 1b 00 00 	lea    0x1bab(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402977:	e8 34 e9 ff ff       	call   4012b0 <puts@plt>
  40297c:	b8 00 00 00 00       	mov    $0x0,%eax
  402981:	e8 b5 fa ff ff       	call   40243b <check_fail>
  402986:	48 8d 3d 93 1d 00 00 	lea    0x1d93(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  40298d:	e8 1e e9 ff ff       	call   4012b0 <puts@plt>
  402992:	48 8d 3d 44 1b 00 00 	lea    0x1b44(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402999:	e8 12 e9 ff ff       	call   4012b0 <puts@plt>
  40299e:	be 00 00 00 00       	mov    $0x0,%esi
  4029a3:	bf 00 00 00 00       	mov    $0x0,%edi
  4029a8:	e8 22 fb ff ff       	call   4024cf <notify_server>
  4029ad:	bf 01 00 00 00       	mov    $0x1,%edi
  4029b2:	e8 59 ea ff ff       	call   401410 <exit@plt>

00000000004029b7 <launch>:
  4029b7:	f3 0f 1e fa          	endbr64 
  4029bb:	55                   	push   %rbp
  4029bc:	48 89 e5             	mov    %rsp,%rbp
  4029bf:	53                   	push   %rbx
  4029c0:	48 83 ec 18          	sub    $0x18,%rsp
  4029c4:	48 89 fa             	mov    %rdi,%rdx
  4029c7:	89 f3                	mov    %esi,%ebx
  4029c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029d0:	00 00 
  4029d2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4029d6:	31 c0                	xor    %eax,%eax
  4029d8:	48 8d 47 17          	lea    0x17(%rdi),%rax
  4029dc:	48 89 c1             	mov    %rax,%rcx
  4029df:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4029e3:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4029e9:	48 89 e6             	mov    %rsp,%rsi
  4029ec:	48 29 c6             	sub    %rax,%rsi
  4029ef:	48 89 f0             	mov    %rsi,%rax
  4029f2:	48 39 c4             	cmp    %rax,%rsp
  4029f5:	74 12                	je     402a09 <launch+0x52>
  4029f7:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4029fe:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402a05:	00 00 
  402a07:	eb e9                	jmp    4029f2 <launch+0x3b>
  402a09:	48 89 c8             	mov    %rcx,%rax
  402a0c:	25 ff 0f 00 00       	and    $0xfff,%eax
  402a11:	48 29 c4             	sub    %rax,%rsp
  402a14:	48 85 c0             	test   %rax,%rax
  402a17:	74 06                	je     402a1f <launch+0x68>
  402a19:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402a1f:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402a24:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402a28:	be f4 00 00 00       	mov    $0xf4,%esi
  402a2d:	e8 ae e8 ff ff       	call   4012e0 <memset@plt>
  402a32:	48 8b 05 87 4a 00 00 	mov    0x4a87(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  402a39:	48 39 05 d0 4a 00 00 	cmp    %rax,0x4ad0(%rip)        # 407510 <infile>
  402a40:	74 42                	je     402a84 <launch+0xcd>
  402a42:	c7 05 d0 4a 00 00 00 	movl   $0x0,0x4ad0(%rip)        # 40751c <vlevel>
  402a49:	00 00 00 
  402a4c:	85 db                	test   %ebx,%ebx
  402a4e:	75 4c                	jne    402a9c <launch+0xe5>
  402a50:	b8 00 00 00 00       	mov    $0x0,%eax
  402a55:	e8 8f f6 ff ff       	call   4020e9 <test>
  402a5a:	83 3d c7 4a 00 00 00 	cmpl   $0x0,0x4ac7(%rip)        # 407528 <is_checker>
  402a61:	75 45                	jne    402aa8 <launch+0xf1>
  402a63:	48 8d 3d df 1a 00 00 	lea    0x1adf(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402a6a:	e8 41 e8 ff ff       	call   4012b0 <puts@plt>
  402a6f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402a73:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402a7a:	00 00 
  402a7c:	75 40                	jne    402abe <launch+0x107>
  402a7e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402a82:	c9                   	leave  
  402a83:	c3                   	ret    
  402a84:	48 8d 35 a6 1a 00 00 	lea    0x1aa6(%rip),%rsi        # 404531 <_IO_stdin_used+0x531>
  402a8b:	bf 01 00 00 00       	mov    $0x1,%edi
  402a90:	b8 00 00 00 00       	mov    $0x0,%eax
  402a95:	e8 26 e9 ff ff       	call   4013c0 <__printf_chk@plt>
  402a9a:	eb a6                	jmp    402a42 <launch+0x8b>
  402a9c:	b8 00 00 00 00       	mov    $0x0,%eax
  402aa1:	e8 72 f6 ff ff       	call   402118 <test2>
  402aa6:	eb b2                	jmp    402a5a <launch+0xa3>
  402aa8:	48 8d 3d 8f 1a 00 00 	lea    0x1a8f(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402aaf:	e8 fc e7 ff ff       	call   4012b0 <puts@plt>
  402ab4:	b8 00 00 00 00       	mov    $0x0,%eax
  402ab9:	e8 7d f9 ff ff       	call   40243b <check_fail>
  402abe:	e8 9a fe ff ff       	call   40295d <__stack_chk_fail>

0000000000402ac3 <stable_launch>:
  402ac3:	f3 0f 1e fa          	endbr64 
  402ac7:	55                   	push   %rbp
  402ac8:	53                   	push   %rbx
  402ac9:	48 83 ec 08          	sub    $0x8,%rsp
  402acd:	89 f5                	mov    %esi,%ebp
  402acf:	48 89 3d 32 4a 00 00 	mov    %rdi,0x4a32(%rip)        # 407508 <global_offset>
  402ad6:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402adc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402ae2:	b9 32 01 00 00       	mov    $0x132,%ecx
  402ae7:	ba 07 00 00 00       	mov    $0x7,%edx
  402aec:	be 00 00 10 00       	mov    $0x100000,%esi
  402af1:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402af6:	e8 d5 e7 ff ff       	call   4012d0 <mmap@plt>
  402afb:	48 89 c3             	mov    %rax,%rbx
  402afe:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402b04:	75 4a                	jne    402b50 <stable_launch+0x8d>
  402b06:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402b0d:	48 89 15 3c 56 00 00 	mov    %rdx,0x563c(%rip)        # 408150 <stack_top>
  402b14:	48 89 e0             	mov    %rsp,%rax
  402b17:	48 89 d4             	mov    %rdx,%rsp
  402b1a:	48 89 c2             	mov    %rax,%rdx
  402b1d:	48 89 15 dc 49 00 00 	mov    %rdx,0x49dc(%rip)        # 407500 <global_save_stack>
  402b24:	89 ee                	mov    %ebp,%esi
  402b26:	48 8b 3d db 49 00 00 	mov    0x49db(%rip),%rdi        # 407508 <global_offset>
  402b2d:	e8 85 fe ff ff       	call   4029b7 <launch>
  402b32:	48 8b 05 c7 49 00 00 	mov    0x49c7(%rip),%rax        # 407500 <global_save_stack>
  402b39:	48 89 c4             	mov    %rax,%rsp
  402b3c:	be 00 00 10 00       	mov    $0x100000,%esi
  402b41:	48 89 df             	mov    %rbx,%rdi
  402b44:	e8 67 e8 ff ff       	call   4013b0 <munmap@plt>
  402b49:	48 83 c4 08          	add    $0x8,%rsp
  402b4d:	5b                   	pop    %rbx
  402b4e:	5d                   	pop    %rbp
  402b4f:	c3                   	ret    
  402b50:	be 00 00 10 00       	mov    $0x100000,%esi
  402b55:	48 89 c7             	mov    %rax,%rdi
  402b58:	e8 53 e8 ff ff       	call   4013b0 <munmap@plt>
  402b5d:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402b62:	48 8d 15 df 1b 00 00 	lea    0x1bdf(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402b69:	be 01 00 00 00       	mov    $0x1,%esi
  402b6e:	48 8b 3d 6b 49 00 00 	mov    0x496b(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402b75:	b8 00 00 00 00       	mov    $0x0,%eax
  402b7a:	e8 b1 e8 ff ff       	call   401430 <__fprintf_chk@plt>
  402b7f:	bf 01 00 00 00       	mov    $0x1,%edi
  402b84:	e8 87 e8 ff ff       	call   401410 <exit@plt>

0000000000402b89 <rio_readinitb>:
  402b89:	89 37                	mov    %esi,(%rdi)
  402b8b:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402b92:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402b96:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402b9a:	c3                   	ret    

0000000000402b9b <sigalrm_handler>:
  402b9b:	f3 0f 1e fa          	endbr64 
  402b9f:	50                   	push   %rax
  402ba0:	58                   	pop    %rax
  402ba1:	48 83 ec 08          	sub    $0x8,%rsp
  402ba5:	b9 00 00 00 00       	mov    $0x0,%ecx
  402baa:	48 8d 15 cf 1b 00 00 	lea    0x1bcf(%rip),%rdx        # 404780 <trans_char+0x10>
  402bb1:	be 01 00 00 00       	mov    $0x1,%esi
  402bb6:	48 8b 3d 23 49 00 00 	mov    0x4923(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402bbd:	b8 00 00 00 00       	mov    $0x0,%eax
  402bc2:	e8 69 e8 ff ff       	call   401430 <__fprintf_chk@plt>
  402bc7:	bf 01 00 00 00       	mov    $0x1,%edi
  402bcc:	e8 3f e8 ff ff       	call   401410 <exit@plt>

0000000000402bd1 <rio_writen>:
  402bd1:	41 55                	push   %r13
  402bd3:	41 54                	push   %r12
  402bd5:	55                   	push   %rbp
  402bd6:	53                   	push   %rbx
  402bd7:	48 83 ec 08          	sub    $0x8,%rsp
  402bdb:	41 89 fc             	mov    %edi,%r12d
  402bde:	48 89 f5             	mov    %rsi,%rbp
  402be1:	49 89 d5             	mov    %rdx,%r13
  402be4:	48 89 d3             	mov    %rdx,%rbx
  402be7:	eb 06                	jmp    402bef <rio_writen+0x1e>
  402be9:	48 29 c3             	sub    %rax,%rbx
  402bec:	48 01 c5             	add    %rax,%rbp
  402bef:	48 85 db             	test   %rbx,%rbx
  402bf2:	74 24                	je     402c18 <rio_writen+0x47>
  402bf4:	48 89 da             	mov    %rbx,%rdx
  402bf7:	48 89 ee             	mov    %rbp,%rsi
  402bfa:	44 89 e7             	mov    %r12d,%edi
  402bfd:	e8 be e6 ff ff       	call   4012c0 <write@plt>
  402c02:	48 85 c0             	test   %rax,%rax
  402c05:	7f e2                	jg     402be9 <rio_writen+0x18>
  402c07:	e8 54 e6 ff ff       	call   401260 <__errno_location@plt>
  402c0c:	83 38 04             	cmpl   $0x4,(%rax)
  402c0f:	75 15                	jne    402c26 <rio_writen+0x55>
  402c11:	b8 00 00 00 00       	mov    $0x0,%eax
  402c16:	eb d1                	jmp    402be9 <rio_writen+0x18>
  402c18:	4c 89 e8             	mov    %r13,%rax
  402c1b:	48 83 c4 08          	add    $0x8,%rsp
  402c1f:	5b                   	pop    %rbx
  402c20:	5d                   	pop    %rbp
  402c21:	41 5c                	pop    %r12
  402c23:	41 5d                	pop    %r13
  402c25:	c3                   	ret    
  402c26:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402c2d:	eb ec                	jmp    402c1b <rio_writen+0x4a>

0000000000402c2f <rio_read>:
  402c2f:	41 55                	push   %r13
  402c31:	41 54                	push   %r12
  402c33:	55                   	push   %rbp
  402c34:	53                   	push   %rbx
  402c35:	48 83 ec 08          	sub    $0x8,%rsp
  402c39:	48 89 fb             	mov    %rdi,%rbx
  402c3c:	49 89 f5             	mov    %rsi,%r13
  402c3f:	49 89 d4             	mov    %rdx,%r12
  402c42:	eb 17                	jmp    402c5b <rio_read+0x2c>
  402c44:	e8 17 e6 ff ff       	call   401260 <__errno_location@plt>
  402c49:	83 38 04             	cmpl   $0x4,(%rax)
  402c4c:	74 0d                	je     402c5b <rio_read+0x2c>
  402c4e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402c55:	eb 54                	jmp    402cab <rio_read+0x7c>
  402c57:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402c5b:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402c5e:	85 ed                	test   %ebp,%ebp
  402c60:	7f 23                	jg     402c85 <rio_read+0x56>
  402c62:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402c66:	8b 3b                	mov    (%rbx),%edi
  402c68:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c6d:	48 89 ee             	mov    %rbp,%rsi
  402c70:	e8 9b e6 ff ff       	call   401310 <read@plt>
  402c75:	89 43 04             	mov    %eax,0x4(%rbx)
  402c78:	85 c0                	test   %eax,%eax
  402c7a:	78 c8                	js     402c44 <rio_read+0x15>
  402c7c:	75 d9                	jne    402c57 <rio_read+0x28>
  402c7e:	b8 00 00 00 00       	mov    $0x0,%eax
  402c83:	eb 26                	jmp    402cab <rio_read+0x7c>
  402c85:	89 e8                	mov    %ebp,%eax
  402c87:	4c 39 e0             	cmp    %r12,%rax
  402c8a:	72 03                	jb     402c8f <rio_read+0x60>
  402c8c:	44 89 e5             	mov    %r12d,%ebp
  402c8f:	4c 63 e5             	movslq %ebp,%r12
  402c92:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402c96:	4c 89 e2             	mov    %r12,%rdx
  402c99:	4c 89 ef             	mov    %r13,%rdi
  402c9c:	e8 cf e6 ff ff       	call   401370 <memcpy@plt>
  402ca1:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402ca5:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402ca8:	4c 89 e0             	mov    %r12,%rax
  402cab:	48 83 c4 08          	add    $0x8,%rsp
  402caf:	5b                   	pop    %rbx
  402cb0:	5d                   	pop    %rbp
  402cb1:	41 5c                	pop    %r12
  402cb3:	41 5d                	pop    %r13
  402cb5:	c3                   	ret    

0000000000402cb6 <rio_readlineb>:
  402cb6:	41 55                	push   %r13
  402cb8:	41 54                	push   %r12
  402cba:	55                   	push   %rbp
  402cbb:	53                   	push   %rbx
  402cbc:	48 83 ec 18          	sub    $0x18,%rsp
  402cc0:	49 89 fd             	mov    %rdi,%r13
  402cc3:	48 89 f5             	mov    %rsi,%rbp
  402cc6:	49 89 d4             	mov    %rdx,%r12
  402cc9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402cd0:	00 00 
  402cd2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402cd7:	31 c0                	xor    %eax,%eax
  402cd9:	bb 01 00 00 00       	mov    $0x1,%ebx
  402cde:	eb 18                	jmp    402cf8 <rio_readlineb+0x42>
  402ce0:	85 c0                	test   %eax,%eax
  402ce2:	75 65                	jne    402d49 <rio_readlineb+0x93>
  402ce4:	48 83 fb 01          	cmp    $0x1,%rbx
  402ce8:	75 3d                	jne    402d27 <rio_readlineb+0x71>
  402cea:	b8 00 00 00 00       	mov    $0x0,%eax
  402cef:	eb 3d                	jmp    402d2e <rio_readlineb+0x78>
  402cf1:	48 83 c3 01          	add    $0x1,%rbx
  402cf5:	48 89 d5             	mov    %rdx,%rbp
  402cf8:	4c 39 e3             	cmp    %r12,%rbx
  402cfb:	73 2a                	jae    402d27 <rio_readlineb+0x71>
  402cfd:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402d02:	ba 01 00 00 00       	mov    $0x1,%edx
  402d07:	4c 89 ef             	mov    %r13,%rdi
  402d0a:	e8 20 ff ff ff       	call   402c2f <rio_read>
  402d0f:	83 f8 01             	cmp    $0x1,%eax
  402d12:	75 cc                	jne    402ce0 <rio_readlineb+0x2a>
  402d14:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402d18:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402d1d:	88 45 00             	mov    %al,0x0(%rbp)
  402d20:	3c 0a                	cmp    $0xa,%al
  402d22:	75 cd                	jne    402cf1 <rio_readlineb+0x3b>
  402d24:	48 89 d5             	mov    %rdx,%rbp
  402d27:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402d2b:	48 89 d8             	mov    %rbx,%rax
  402d2e:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402d33:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d3a:	00 00 
  402d3c:	75 14                	jne    402d52 <rio_readlineb+0x9c>
  402d3e:	48 83 c4 18          	add    $0x18,%rsp
  402d42:	5b                   	pop    %rbx
  402d43:	5d                   	pop    %rbp
  402d44:	41 5c                	pop    %r12
  402d46:	41 5d                	pop    %r13
  402d48:	c3                   	ret    
  402d49:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402d50:	eb dc                	jmp    402d2e <rio_readlineb+0x78>
  402d52:	e8 06 fc ff ff       	call   40295d <__stack_chk_fail>

0000000000402d57 <urlencode>:
  402d57:	41 54                	push   %r12
  402d59:	55                   	push   %rbp
  402d5a:	53                   	push   %rbx
  402d5b:	48 83 ec 10          	sub    $0x10,%rsp
  402d5f:	48 89 fb             	mov    %rdi,%rbx
  402d62:	48 89 f5             	mov    %rsi,%rbp
  402d65:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d6c:	00 00 
  402d6e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402d73:	31 c0                	xor    %eax,%eax
  402d75:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402d7c:	f2 ae                	repnz scas %es:(%rdi),%al
  402d7e:	48 f7 d1             	not    %rcx
  402d81:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402d84:	eb 0f                	jmp    402d95 <urlencode+0x3e>
  402d86:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402d8a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402d8e:	48 83 c3 01          	add    $0x1,%rbx
  402d92:	44 89 e0             	mov    %r12d,%eax
  402d95:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402d99:	85 c0                	test   %eax,%eax
  402d9b:	0f 84 a8 00 00 00    	je     402e49 <urlencode+0xf2>
  402da1:	44 0f b6 03          	movzbl (%rbx),%r8d
  402da5:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402da9:	0f 94 c2             	sete   %dl
  402dac:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402db0:	0f 94 c0             	sete   %al
  402db3:	08 c2                	or     %al,%dl
  402db5:	75 cf                	jne    402d86 <urlencode+0x2f>
  402db7:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402dbb:	74 c9                	je     402d86 <urlencode+0x2f>
  402dbd:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402dc1:	74 c3                	je     402d86 <urlencode+0x2f>
  402dc3:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402dc7:	3c 09                	cmp    $0x9,%al
  402dc9:	76 bb                	jbe    402d86 <urlencode+0x2f>
  402dcb:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402dcf:	3c 19                	cmp    $0x19,%al
  402dd1:	76 b3                	jbe    402d86 <urlencode+0x2f>
  402dd3:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402dd7:	3c 19                	cmp    $0x19,%al
  402dd9:	76 ab                	jbe    402d86 <urlencode+0x2f>
  402ddb:	41 80 f8 20          	cmp    $0x20,%r8b
  402ddf:	74 56                	je     402e37 <urlencode+0xe0>
  402de1:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402de5:	3c 5f                	cmp    $0x5f,%al
  402de7:	0f 96 c2             	setbe  %dl
  402dea:	41 80 f8 09          	cmp    $0x9,%r8b
  402dee:	0f 94 c0             	sete   %al
  402df1:	08 c2                	or     %al,%dl
  402df3:	74 4f                	je     402e44 <urlencode+0xed>
  402df5:	48 89 e7             	mov    %rsp,%rdi
  402df8:	45 0f b6 c0          	movzbl %r8b,%r8d
  402dfc:	48 8d 0d 32 1a 00 00 	lea    0x1a32(%rip),%rcx        # 404835 <trans_char+0xc5>
  402e03:	ba 08 00 00 00       	mov    $0x8,%edx
  402e08:	be 01 00 00 00       	mov    $0x1,%esi
  402e0d:	b8 00 00 00 00       	mov    $0x0,%eax
  402e12:	e8 39 e6 ff ff       	call   401450 <__sprintf_chk@plt>
  402e17:	0f b6 04 24          	movzbl (%rsp),%eax
  402e1b:	88 45 00             	mov    %al,0x0(%rbp)
  402e1e:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402e23:	88 45 01             	mov    %al,0x1(%rbp)
  402e26:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402e2b:	88 45 02             	mov    %al,0x2(%rbp)
  402e2e:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402e32:	e9 57 ff ff ff       	jmp    402d8e <urlencode+0x37>
  402e37:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402e3b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402e3f:	e9 4a ff ff ff       	jmp    402d8e <urlencode+0x37>
  402e44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e49:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402e4e:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402e55:	00 00 
  402e57:	75 09                	jne    402e62 <urlencode+0x10b>
  402e59:	48 83 c4 10          	add    $0x10,%rsp
  402e5d:	5b                   	pop    %rbx
  402e5e:	5d                   	pop    %rbp
  402e5f:	41 5c                	pop    %r12
  402e61:	c3                   	ret    
  402e62:	e8 f6 fa ff ff       	call   40295d <__stack_chk_fail>

0000000000402e67 <submitr>:
  402e67:	f3 0f 1e fa          	endbr64 
  402e6b:	41 57                	push   %r15
  402e6d:	41 56                	push   %r14
  402e6f:	41 55                	push   %r13
  402e71:	41 54                	push   %r12
  402e73:	55                   	push   %rbp
  402e74:	53                   	push   %rbx
  402e75:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402e7c:	ff 
  402e7d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402e84:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402e89:	4c 39 dc             	cmp    %r11,%rsp
  402e8c:	75 ef                	jne    402e7d <submitr+0x16>
  402e8e:	48 83 ec 68          	sub    $0x68,%rsp
  402e92:	49 89 fc             	mov    %rdi,%r12
  402e95:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402e99:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402e9e:	49 89 cd             	mov    %rcx,%r13
  402ea1:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402ea6:	4d 89 ce             	mov    %r9,%r14
  402ea9:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402eb0:	00 
  402eb1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402eb8:	00 00 
  402eba:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402ec1:	00 
  402ec2:	31 c0                	xor    %eax,%eax
  402ec4:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402ecb:	00 
  402ecc:	ba 00 00 00 00       	mov    $0x0,%edx
  402ed1:	be 01 00 00 00       	mov    $0x1,%esi
  402ed6:	bf 02 00 00 00       	mov    $0x2,%edi
  402edb:	e8 80 e5 ff ff       	call   401460 <socket@plt>
  402ee0:	85 c0                	test   %eax,%eax
  402ee2:	0f 88 a5 02 00 00    	js     40318d <submitr+0x326>
  402ee8:	89 c3                	mov    %eax,%ebx
  402eea:	4c 89 e7             	mov    %r12,%rdi
  402eed:	e8 4e e4 ff ff       	call   401340 <gethostbyname@plt>
  402ef2:	48 85 c0             	test   %rax,%rax
  402ef5:	0f 84 de 02 00 00    	je     4031d9 <submitr+0x372>
  402efb:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402f00:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402f07:	00 00 
  402f09:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402f10:	00 00 
  402f12:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402f19:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402f1d:	48 8b 40 18          	mov    0x18(%rax),%rax
  402f21:	48 8b 30             	mov    (%rax),%rsi
  402f24:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402f29:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402f2e:	e8 1d e4 ff ff       	call   401350 <__memmove_chk@plt>
  402f33:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402f38:	66 c1 c6 08          	rol    $0x8,%si
  402f3c:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402f41:	ba 10 00 00 00       	mov    $0x10,%edx
  402f46:	4c 89 fe             	mov    %r15,%rsi
  402f49:	89 df                	mov    %ebx,%edi
  402f4b:	e8 d0 e4 ff ff       	call   401420 <connect@plt>
  402f50:	85 c0                	test   %eax,%eax
  402f52:	0f 88 f7 02 00 00    	js     40324f <submitr+0x3e8>
  402f58:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402f5f:	b8 00 00 00 00       	mov    $0x0,%eax
  402f64:	48 89 f1             	mov    %rsi,%rcx
  402f67:	4c 89 f7             	mov    %r14,%rdi
  402f6a:	f2 ae                	repnz scas %es:(%rdi),%al
  402f6c:	48 89 ca             	mov    %rcx,%rdx
  402f6f:	48 f7 d2             	not    %rdx
  402f72:	48 89 f1             	mov    %rsi,%rcx
  402f75:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402f7a:	f2 ae                	repnz scas %es:(%rdi),%al
  402f7c:	48 f7 d1             	not    %rcx
  402f7f:	49 89 c8             	mov    %rcx,%r8
  402f82:	48 89 f1             	mov    %rsi,%rcx
  402f85:	4c 89 ef             	mov    %r13,%rdi
  402f88:	f2 ae                	repnz scas %es:(%rdi),%al
  402f8a:	48 f7 d1             	not    %rcx
  402f8d:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402f92:	48 89 f1             	mov    %rsi,%rcx
  402f95:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402f9a:	f2 ae                	repnz scas %es:(%rdi),%al
  402f9c:	48 89 c8             	mov    %rcx,%rax
  402f9f:	48 f7 d0             	not    %rax
  402fa2:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402fa7:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402fac:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402fb3:	00 
  402fb4:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402fba:	0f 87 f7 02 00 00    	ja     4032b7 <submitr+0x450>
  402fc0:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402fc7:	00 
  402fc8:	b9 00 04 00 00       	mov    $0x400,%ecx
  402fcd:	b8 00 00 00 00       	mov    $0x0,%eax
  402fd2:	48 89 f7             	mov    %rsi,%rdi
  402fd5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402fd8:	4c 89 f7             	mov    %r14,%rdi
  402fdb:	e8 77 fd ff ff       	call   402d57 <urlencode>
  402fe0:	85 c0                	test   %eax,%eax
  402fe2:	0f 88 42 03 00 00    	js     40332a <submitr+0x4c3>
  402fe8:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402fef:	00 
  402ff0:	48 83 ec 08          	sub    $0x8,%rsp
  402ff4:	41 54                	push   %r12
  402ff6:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402ffd:	00 
  402ffe:	50                   	push   %rax
  402fff:	41 55                	push   %r13
  403001:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  403006:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  40300b:	48 8d 0d 96 17 00 00 	lea    0x1796(%rip),%rcx        # 4047a8 <trans_char+0x38>
  403012:	ba 00 20 00 00       	mov    $0x2000,%edx
  403017:	be 01 00 00 00       	mov    $0x1,%esi
  40301c:	4c 89 ff             	mov    %r15,%rdi
  40301f:	b8 00 00 00 00       	mov    $0x0,%eax
  403024:	e8 27 e4 ff ff       	call   401450 <__sprintf_chk@plt>
  403029:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403030:	b8 00 00 00 00       	mov    $0x0,%eax
  403035:	4c 89 ff             	mov    %r15,%rdi
  403038:	f2 ae                	repnz scas %es:(%rdi),%al
  40303a:	48 f7 d1             	not    %rcx
  40303d:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  403041:	48 83 c4 20          	add    $0x20,%rsp
  403045:	4c 89 fe             	mov    %r15,%rsi
  403048:	89 df                	mov    %ebx,%edi
  40304a:	e8 82 fb ff ff       	call   402bd1 <rio_writen>
  40304f:	48 85 c0             	test   %rax,%rax
  403052:	0f 88 5d 03 00 00    	js     4033b5 <submitr+0x54e>
  403058:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  40305d:	89 de                	mov    %ebx,%esi
  40305f:	4c 89 e7             	mov    %r12,%rdi
  403062:	e8 22 fb ff ff       	call   402b89 <rio_readinitb>
  403067:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40306e:	00 
  40306f:	ba 00 20 00 00       	mov    $0x2000,%edx
  403074:	4c 89 e7             	mov    %r12,%rdi
  403077:	e8 3a fc ff ff       	call   402cb6 <rio_readlineb>
  40307c:	48 85 c0             	test   %rax,%rax
  40307f:	0f 8e 9c 03 00 00    	jle    403421 <submitr+0x5ba>
  403085:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  40308a:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  403091:	00 
  403092:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  403099:	00 
  40309a:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  4030a1:	00 
  4030a2:	48 8d 35 93 17 00 00 	lea    0x1793(%rip),%rsi        # 40483c <trans_char+0xcc>
  4030a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4030ae:	e8 ed e2 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  4030b3:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4030ba:	00 
  4030bb:	b9 03 00 00 00       	mov    $0x3,%ecx
  4030c0:	48 8d 3d 8c 17 00 00 	lea    0x178c(%rip),%rdi        # 404853 <trans_char+0xe3>
  4030c7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4030c9:	0f 97 c0             	seta   %al
  4030cc:	1c 00                	sbb    $0x0,%al
  4030ce:	84 c0                	test   %al,%al
  4030d0:	0f 84 cb 03 00 00    	je     4034a1 <submitr+0x63a>
  4030d6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4030dd:	00 
  4030de:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4030e3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4030e8:	e8 c9 fb ff ff       	call   402cb6 <rio_readlineb>
  4030ed:	48 85 c0             	test   %rax,%rax
  4030f0:	7f c1                	jg     4030b3 <submitr+0x24c>
  4030f2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030f9:	3a 20 43 
  4030fc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403103:	20 75 6e 
  403106:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40310a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40310e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403115:	74 6f 20 
  403118:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40311f:	68 65 61 
  403122:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403126:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40312a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  403131:	66 72 6f 
  403134:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  40313b:	6f 6c 61 
  40313e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403142:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403146:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  40314d:	76 65 72 
  403150:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403154:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  403158:	89 df                	mov    %ebx,%edi
  40315a:	e8 a1 e1 ff ff       	call   401300 <close@plt>
  40315f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403164:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  40316b:	00 
  40316c:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  403173:	00 00 
  403175:	0f 85 96 04 00 00    	jne    403611 <submitr+0x7aa>
  40317b:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  403182:	5b                   	pop    %rbx
  403183:	5d                   	pop    %rbp
  403184:	41 5c                	pop    %r12
  403186:	41 5d                	pop    %r13
  403188:	41 5e                	pop    %r14
  40318a:	41 5f                	pop    %r15
  40318c:	c3                   	ret    
  40318d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403194:	3a 20 43 
  403197:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40319e:	20 75 6e 
  4031a1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031a5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031a9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031b0:	74 6f 20 
  4031b3:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4031ba:	65 20 73 
  4031bd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4031c1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031c5:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4031cc:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4031d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031d7:	eb 8b                	jmp    403164 <submitr+0x2fd>
  4031d9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4031e0:	3a 20 44 
  4031e3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4031ea:	20 75 6e 
  4031ed:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031f1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031f5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031fc:	74 6f 20 
  4031ff:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403206:	76 65 20 
  403209:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40320d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403211:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403218:	61 62 20 
  40321b:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  403222:	72 20 61 
  403225:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403229:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40322d:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  403234:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  40323a:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  40323e:	89 df                	mov    %ebx,%edi
  403240:	e8 bb e0 ff ff       	call   401300 <close@plt>
  403245:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40324a:	e9 15 ff ff ff       	jmp    403164 <submitr+0x2fd>
  40324f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403256:	3a 20 55 
  403259:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403260:	20 74 6f 
  403263:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403267:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40326b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403272:	65 63 74 
  403275:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  40327c:	68 65 20 
  40327f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403283:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403287:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40328e:	61 62 20 
  403291:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403295:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  40329c:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  4032a2:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4032a6:	89 df                	mov    %ebx,%edi
  4032a8:	e8 53 e0 ff ff       	call   401300 <close@plt>
  4032ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032b2:	e9 ad fe ff ff       	jmp    403164 <submitr+0x2fd>
  4032b7:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4032be:	3a 20 52 
  4032c1:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4032c8:	20 73 74 
  4032cb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032cf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032d3:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4032da:	74 6f 6f 
  4032dd:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4032e4:	65 2e 20 
  4032e7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032eb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032ef:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4032f6:	61 73 65 
  4032f9:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403300:	49 54 52 
  403303:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403307:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40330b:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403312:	55 46 00 
  403315:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403319:	89 df                	mov    %ebx,%edi
  40331b:	e8 e0 df ff ff       	call   401300 <close@plt>
  403320:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403325:	e9 3a fe ff ff       	jmp    403164 <submitr+0x2fd>
  40332a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403331:	3a 20 52 
  403334:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40333b:	20 73 74 
  40333e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403342:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403346:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40334d:	63 6f 6e 
  403350:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403357:	20 61 6e 
  40335a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40335e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403362:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403369:	67 61 6c 
  40336c:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  403373:	6e 70 72 
  403376:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40337a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40337e:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  403385:	6c 65 20 
  403388:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40338f:	63 74 65 
  403392:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403396:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40339a:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  4033a0:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  4033a4:	89 df                	mov    %ebx,%edi
  4033a6:	e8 55 df ff ff       	call   401300 <close@plt>
  4033ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033b0:	e9 af fd ff ff       	jmp    403164 <submitr+0x2fd>
  4033b5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4033bc:	3a 20 43 
  4033bf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4033c6:	20 75 6e 
  4033c9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033cd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4033d1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4033d8:	74 6f 20 
  4033db:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4033e2:	20 74 6f 
  4033e5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4033e9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4033ed:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4033f4:	41 75 74 
  4033f7:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4033fe:	73 65 72 
  403401:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403405:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403409:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  403410:	89 df                	mov    %ebx,%edi
  403412:	e8 e9 de ff ff       	call   401300 <close@plt>
  403417:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40341c:	e9 43 fd ff ff       	jmp    403164 <submitr+0x2fd>
  403421:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403428:	3a 20 43 
  40342b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403432:	20 75 6e 
  403435:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403439:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40343d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403444:	74 6f 20 
  403447:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  40344e:	66 69 72 
  403451:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403455:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403459:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403460:	61 64 65 
  403463:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  40346a:	6d 20 41 
  40346d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403471:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403475:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  40347c:	62 20 73 
  40347f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403483:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  40348a:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  403490:	89 df                	mov    %ebx,%edi
  403492:	e8 69 de ff ff       	call   401300 <close@plt>
  403497:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40349c:	e9 c3 fc ff ff       	jmp    403164 <submitr+0x2fd>
  4034a1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4034a8:	00 
  4034a9:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4034ae:	ba 00 20 00 00       	mov    $0x2000,%edx
  4034b3:	e8 fe f7 ff ff       	call   402cb6 <rio_readlineb>
  4034b8:	48 85 c0             	test   %rax,%rax
  4034bb:	0f 8e 96 00 00 00    	jle    403557 <submitr+0x6f0>
  4034c1:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4034c6:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4034cd:	0f 85 05 01 00 00    	jne    4035d8 <submitr+0x771>
  4034d3:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4034da:	00 
  4034db:	48 89 ef             	mov    %rbp,%rdi
  4034de:	e8 bd dd ff ff       	call   4012a0 <strcpy@plt>
  4034e3:	89 df                	mov    %ebx,%edi
  4034e5:	e8 16 de ff ff       	call   401300 <close@plt>
  4034ea:	b9 04 00 00 00       	mov    $0x4,%ecx
  4034ef:	48 8d 3d 57 13 00 00 	lea    0x1357(%rip),%rdi        # 40484d <trans_char+0xdd>
  4034f6:	48 89 ee             	mov    %rbp,%rsi
  4034f9:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4034fb:	0f 97 c0             	seta   %al
  4034fe:	1c 00                	sbb    $0x0,%al
  403500:	0f be c0             	movsbl %al,%eax
  403503:	85 c0                	test   %eax,%eax
  403505:	0f 84 59 fc ff ff    	je     403164 <submitr+0x2fd>
  40350b:	b9 05 00 00 00       	mov    $0x5,%ecx
  403510:	48 8d 3d 3a 13 00 00 	lea    0x133a(%rip),%rdi        # 404851 <trans_char+0xe1>
  403517:	48 89 ee             	mov    %rbp,%rsi
  40351a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40351c:	0f 97 c0             	seta   %al
  40351f:	1c 00                	sbb    $0x0,%al
  403521:	0f be c0             	movsbl %al,%eax
  403524:	85 c0                	test   %eax,%eax
  403526:	0f 84 38 fc ff ff    	je     403164 <submitr+0x2fd>
  40352c:	b9 03 00 00 00       	mov    $0x3,%ecx
  403531:	48 8d 3d 1e 13 00 00 	lea    0x131e(%rip),%rdi        # 404856 <trans_char+0xe6>
  403538:	48 89 ee             	mov    %rbp,%rsi
  40353b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40353d:	0f 97 c0             	seta   %al
  403540:	1c 00                	sbb    $0x0,%al
  403542:	0f be c0             	movsbl %al,%eax
  403545:	85 c0                	test   %eax,%eax
  403547:	0f 84 17 fc ff ff    	je     403164 <submitr+0x2fd>
  40354d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403552:	e9 0d fc ff ff       	jmp    403164 <submitr+0x2fd>
  403557:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40355e:	3a 20 43 
  403561:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403568:	20 75 6e 
  40356b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40356f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403573:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40357a:	74 6f 20 
  40357d:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403584:	73 74 61 
  403587:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40358b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40358f:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403596:	65 73 73 
  403599:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4035a0:	72 6f 6d 
  4035a3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4035a7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4035ab:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4035b2:	6c 61 62 
  4035b5:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4035bc:	65 72 00 
  4035bf:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4035c3:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4035c7:	89 df                	mov    %ebx,%edi
  4035c9:	e8 32 dd ff ff       	call   401300 <close@plt>
  4035ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035d3:	e9 8c fb ff ff       	jmp    403164 <submitr+0x2fd>
  4035d8:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4035df:	00 
  4035e0:	48 8d 0d 21 12 00 00 	lea    0x1221(%rip),%rcx        # 404808 <trans_char+0x98>
  4035e7:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4035ee:	be 01 00 00 00       	mov    $0x1,%esi
  4035f3:	48 89 ef             	mov    %rbp,%rdi
  4035f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4035fb:	e8 50 de ff ff       	call   401450 <__sprintf_chk@plt>
  403600:	89 df                	mov    %ebx,%edi
  403602:	e8 f9 dc ff ff       	call   401300 <close@plt>
  403607:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40360c:	e9 53 fb ff ff       	jmp    403164 <submitr+0x2fd>
  403611:	e8 47 f3 ff ff       	call   40295d <__stack_chk_fail>

0000000000403616 <init_timeout>:
  403616:	f3 0f 1e fa          	endbr64 
  40361a:	85 ff                	test   %edi,%edi
  40361c:	74 26                	je     403644 <init_timeout+0x2e>
  40361e:	53                   	push   %rbx
  40361f:	89 fb                	mov    %edi,%ebx
  403621:	78 1a                	js     40363d <init_timeout+0x27>
  403623:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402b9b <sigalrm_handler>
  40362a:	bf 0e 00 00 00       	mov    $0xe,%edi
  40362f:	e8 fc dc ff ff       	call   401330 <signal@plt>
  403634:	89 df                	mov    %ebx,%edi
  403636:	e8 b5 dc ff ff       	call   4012f0 <alarm@plt>
  40363b:	5b                   	pop    %rbx
  40363c:	c3                   	ret    
  40363d:	bb 00 00 00 00       	mov    $0x0,%ebx
  403642:	eb df                	jmp    403623 <init_timeout+0xd>
  403644:	c3                   	ret    

0000000000403645 <init_driver>:
  403645:	f3 0f 1e fa          	endbr64 
  403649:	41 54                	push   %r12
  40364b:	55                   	push   %rbp
  40364c:	53                   	push   %rbx
  40364d:	48 83 ec 20          	sub    $0x20,%rsp
  403651:	48 89 fd             	mov    %rdi,%rbp
  403654:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40365b:	00 00 
  40365d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403662:	31 c0                	xor    %eax,%eax
  403664:	be 01 00 00 00       	mov    $0x1,%esi
  403669:	bf 0d 00 00 00       	mov    $0xd,%edi
  40366e:	e8 bd dc ff ff       	call   401330 <signal@plt>
  403673:	be 01 00 00 00       	mov    $0x1,%esi
  403678:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40367d:	e8 ae dc ff ff       	call   401330 <signal@plt>
  403682:	be 01 00 00 00       	mov    $0x1,%esi
  403687:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40368c:	e8 9f dc ff ff       	call   401330 <signal@plt>
  403691:	ba 00 00 00 00       	mov    $0x0,%edx
  403696:	be 01 00 00 00       	mov    $0x1,%esi
  40369b:	bf 02 00 00 00       	mov    $0x2,%edi
  4036a0:	e8 bb dd ff ff       	call   401460 <socket@plt>
  4036a5:	85 c0                	test   %eax,%eax
  4036a7:	0f 88 9c 00 00 00    	js     403749 <init_driver+0x104>
  4036ad:	89 c3                	mov    %eax,%ebx
  4036af:	48 8d 3d a3 11 00 00 	lea    0x11a3(%rip),%rdi        # 404859 <trans_char+0xe9>
  4036b6:	e8 85 dc ff ff       	call   401340 <gethostbyname@plt>
  4036bb:	48 85 c0             	test   %rax,%rax
  4036be:	0f 84 d1 00 00 00    	je     403795 <init_driver+0x150>
  4036c4:	49 89 e4             	mov    %rsp,%r12
  4036c7:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4036ce:	00 
  4036cf:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4036d6:	00 00 
  4036d8:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4036de:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4036e2:	48 8b 40 18          	mov    0x18(%rax),%rax
  4036e6:	48 8b 30             	mov    (%rax),%rsi
  4036e9:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4036ee:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4036f3:	e8 58 dc ff ff       	call   401350 <__memmove_chk@plt>
  4036f8:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  4036ff:	ba 10 00 00 00       	mov    $0x10,%edx
  403704:	4c 89 e6             	mov    %r12,%rsi
  403707:	89 df                	mov    %ebx,%edi
  403709:	e8 12 dd ff ff       	call   401420 <connect@plt>
  40370e:	85 c0                	test   %eax,%eax
  403710:	0f 88 e7 00 00 00    	js     4037fd <init_driver+0x1b8>
  403716:	89 df                	mov    %ebx,%edi
  403718:	e8 e3 db ff ff       	call   401300 <close@plt>
  40371d:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403723:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403727:	b8 00 00 00 00       	mov    $0x0,%eax
  40372c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  403731:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403738:	00 00 
  40373a:	0f 85 10 01 00 00    	jne    403850 <init_driver+0x20b>
  403740:	48 83 c4 20          	add    $0x20,%rsp
  403744:	5b                   	pop    %rbx
  403745:	5d                   	pop    %rbp
  403746:	41 5c                	pop    %r12
  403748:	c3                   	ret    
  403749:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403750:	3a 20 43 
  403753:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40375a:	20 75 6e 
  40375d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403761:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403765:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40376c:	74 6f 20 
  40376f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403776:	65 20 73 
  403779:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40377d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403781:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403788:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40378e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403793:	eb 97                	jmp    40372c <init_driver+0xe7>
  403795:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40379c:	3a 20 44 
  40379f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4037a6:	20 75 6e 
  4037a9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4037ad:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4037b1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4037b8:	74 6f 20 
  4037bb:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4037c2:	76 65 20 
  4037c5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4037c9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4037cd:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4037d4:	72 20 61 
  4037d7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4037db:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4037e2:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4037e8:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4037ec:	89 df                	mov    %ebx,%edi
  4037ee:	e8 0d db ff ff       	call   401300 <close@plt>
  4037f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4037f8:	e9 2f ff ff ff       	jmp    40372c <init_driver+0xe7>
  4037fd:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403804:	3a 20 55 
  403807:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40380e:	20 74 6f 
  403811:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403815:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403819:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403820:	65 63 74 
  403823:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40382a:	65 72 76 
  40382d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403831:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403835:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  40383b:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  40383f:	89 df                	mov    %ebx,%edi
  403841:	e8 ba da ff ff       	call   401300 <close@plt>
  403846:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40384b:	e9 dc fe ff ff       	jmp    40372c <init_driver+0xe7>
  403850:	e8 08 f1 ff ff       	call   40295d <__stack_chk_fail>

0000000000403855 <driver_post>:
  403855:	f3 0f 1e fa          	endbr64 
  403859:	53                   	push   %rbx
  40385a:	4c 89 cb             	mov    %r9,%rbx
  40385d:	45 85 c0             	test   %r8d,%r8d
  403860:	75 18                	jne    40387a <driver_post+0x25>
  403862:	48 85 ff             	test   %rdi,%rdi
  403865:	74 05                	je     40386c <driver_post+0x17>
  403867:	80 3f 00             	cmpb   $0x0,(%rdi)
  40386a:	75 37                	jne    4038a3 <driver_post+0x4e>
  40386c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403871:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403875:	44 89 c0             	mov    %r8d,%eax
  403878:	5b                   	pop    %rbx
  403879:	c3                   	ret    
  40387a:	48 89 ca             	mov    %rcx,%rdx
  40387d:	48 8d 35 e5 0f 00 00 	lea    0xfe5(%rip),%rsi        # 404869 <trans_char+0xf9>
  403884:	bf 01 00 00 00       	mov    $0x1,%edi
  403889:	b8 00 00 00 00       	mov    $0x0,%eax
  40388e:	e8 2d db ff ff       	call   4013c0 <__printf_chk@plt>
  403893:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403898:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40389c:	b8 00 00 00 00       	mov    $0x0,%eax
  4038a1:	eb d5                	jmp    403878 <driver_post+0x23>
  4038a3:	48 83 ec 08          	sub    $0x8,%rsp
  4038a7:	41 51                	push   %r9
  4038a9:	49 89 c9             	mov    %rcx,%r9
  4038ac:	49 89 d0             	mov    %rdx,%r8
  4038af:	48 89 f9             	mov    %rdi,%rcx
  4038b2:	48 89 f2             	mov    %rsi,%rdx
  4038b5:	be 39 30 00 00       	mov    $0x3039,%esi
  4038ba:	48 8d 3d 98 0f 00 00 	lea    0xf98(%rip),%rdi        # 404859 <trans_char+0xe9>
  4038c1:	e8 a1 f5 ff ff       	call   402e67 <submitr>
  4038c6:	48 83 c4 10          	add    $0x10,%rsp
  4038ca:	eb ac                	jmp    403878 <driver_post+0x23>

00000000004038cc <check>:
  4038cc:	f3 0f 1e fa          	endbr64 
  4038d0:	89 f8                	mov    %edi,%eax
  4038d2:	c1 e8 1c             	shr    $0x1c,%eax
  4038d5:	74 1d                	je     4038f4 <check+0x28>
  4038d7:	b9 00 00 00 00       	mov    $0x0,%ecx
  4038dc:	83 f9 1f             	cmp    $0x1f,%ecx
  4038df:	7f 0d                	jg     4038ee <check+0x22>
  4038e1:	89 f8                	mov    %edi,%eax
  4038e3:	d3 e8                	shr    %cl,%eax
  4038e5:	3c 0a                	cmp    $0xa,%al
  4038e7:	74 11                	je     4038fa <check+0x2e>
  4038e9:	83 c1 08             	add    $0x8,%ecx
  4038ec:	eb ee                	jmp    4038dc <check+0x10>
  4038ee:	b8 01 00 00 00       	mov    $0x1,%eax
  4038f3:	c3                   	ret    
  4038f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4038f9:	c3                   	ret    
  4038fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4038ff:	c3                   	ret    

0000000000403900 <gencookie>:
  403900:	f3 0f 1e fa          	endbr64 
  403904:	53                   	push   %rbx
  403905:	83 c7 01             	add    $0x1,%edi
  403908:	e8 63 d9 ff ff       	call   401270 <srandom@plt>
  40390d:	e8 7e da ff ff       	call   401390 <random@plt>
  403912:	48 89 c7             	mov    %rax,%rdi
  403915:	89 c3                	mov    %eax,%ebx
  403917:	e8 b0 ff ff ff       	call   4038cc <check>
  40391c:	85 c0                	test   %eax,%eax
  40391e:	74 ed                	je     40390d <gencookie+0xd>
  403920:	89 d8                	mov    %ebx,%eax
  403922:	5b                   	pop    %rbx
  403923:	c3                   	ret    
  403924:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40392b:	00 00 00 
  40392e:	66 90                	xchg   %ax,%ax

0000000000403930 <__libc_csu_init>:
  403930:	f3 0f 1e fa          	endbr64 
  403934:	41 57                	push   %r15
  403936:	4c 8d 3d d3 34 00 00 	lea    0x34d3(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40393d:	41 56                	push   %r14
  40393f:	49 89 d6             	mov    %rdx,%r14
  403942:	41 55                	push   %r13
  403944:	49 89 f5             	mov    %rsi,%r13
  403947:	41 54                	push   %r12
  403949:	41 89 fc             	mov    %edi,%r12d
  40394c:	55                   	push   %rbp
  40394d:	48 8d 2d c4 34 00 00 	lea    0x34c4(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403954:	53                   	push   %rbx
  403955:	4c 29 fd             	sub    %r15,%rbp
  403958:	48 83 ec 08          	sub    $0x8,%rsp
  40395c:	e8 9f d6 ff ff       	call   401000 <_init>
  403961:	48 c1 fd 03          	sar    $0x3,%rbp
  403965:	74 1f                	je     403986 <__libc_csu_init+0x56>
  403967:	31 db                	xor    %ebx,%ebx
  403969:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403970:	4c 89 f2             	mov    %r14,%rdx
  403973:	4c 89 ee             	mov    %r13,%rsi
  403976:	44 89 e7             	mov    %r12d,%edi
  403979:	41 ff 14 df          	call   *(%r15,%rbx,8)
  40397d:	48 83 c3 01          	add    $0x1,%rbx
  403981:	48 39 dd             	cmp    %rbx,%rbp
  403984:	75 ea                	jne    403970 <__libc_csu_init+0x40>
  403986:	48 83 c4 08          	add    $0x8,%rsp
  40398a:	5b                   	pop    %rbx
  40398b:	5d                   	pop    %rbp
  40398c:	41 5c                	pop    %r12
  40398e:	41 5d                	pop    %r13
  403990:	41 5e                	pop    %r14
  403992:	41 5f                	pop    %r15
  403994:	c3                   	ret    
  403995:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40399c:	00 00 00 00 

00000000004039a0 <__libc_csu_fini>:
  4039a0:	f3 0f 1e fa          	endbr64 
  4039a4:	c3                   	ret    

Disassembly of section .fini:

00000000004039a8 <_fini>:
  4039a8:	f3 0f 1e fa          	endbr64 
  4039ac:	48 83 ec 08          	sub    $0x8,%rsp
  4039b0:	48 83 c4 08          	add    $0x8,%rsp
  4039b4:	c3                   	ret    
