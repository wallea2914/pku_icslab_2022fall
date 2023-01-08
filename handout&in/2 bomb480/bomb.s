
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ba 5e 00 00    	push   0x5eba(%rip)        # 6ee0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 bb 5e 00 00 	bnd jmp *0x5ebb(%rip)        # 6ee8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <.plt>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <.plt>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <.plt>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <.plt>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <.plt>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <.plt>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <.plt>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <.plt>
    11ff:	90                   	nop

Disassembly of section .plt.got:

0000000000001200 <__cxa_finalize@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 ed 5d 00 00 	bnd jmp *0x5ded(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001210 <getenv@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 6ef0 <getenv@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <free@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 6ef8 <free@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <strcasecmp@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 6f00 <strcasecmp@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <__errno_location@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 6f08 <__errno_location@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <strcpy@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 6f10 <strcpy@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <puts@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 6f18 <puts@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <write@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 6f20 <write@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <__stack_chk_fail@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 6f28 <__stack_chk_fail@GLIBC_2.4>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <alarm@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 6f30 <alarm@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <close@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 6f38 <close@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <read@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 6f40 <read@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <fgets@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 6f48 <fgets@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <signal@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 6f50 <signal@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <gethostbyname@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 6f58 <gethostbyname@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__memmove_chk@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 6f60 <__memmove_chk@GLIBC_2.3.4>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <memcpy@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 6f68 <memcpy@GLIBC_2.14>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <malloc@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 6f70 <malloc@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fflush@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 6f78 <fflush@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__isoc99_sscanf@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 6f80 <__isoc99_sscanf@GLIBC_2.7>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__printf_chk@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 6f88 <__printf_chk@GLIBC_2.3.4>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <fopen@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 6f90 <fopen@GLIBC_2.2.5>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <gethostname@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 6f98 <gethostname@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <exit@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 6fa0 <exit@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <connect@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 6fa8 <connect@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <__fprintf_chk@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 6fb0 <__fprintf_chk@GLIBC_2.3.4>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <sleep@plt>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 6fb8 <sleep@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__ctype_b_loc@plt>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 6fc0 <__ctype_b_loc@GLIBC_2.3>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <__sprintf_chk@plt>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 6fc8 <__sprintf_chk@GLIBC_2.3.4>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <socket@plt>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 6fd0 <socket@GLIBC_2.2.5>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013e0 <_start>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	31 ed                	xor    %ebp,%ebp
    13e6:	49 89 d1             	mov    %rdx,%r9
    13e9:	5e                   	pop    %rsi
    13ea:	48 89 e2             	mov    %rsp,%rdx
    13ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13f1:	50                   	push   %rax
    13f2:	54                   	push   %rsp
    13f3:	4c 8d 05 c6 1e 00 00 	lea    0x1ec6(%rip),%r8        # 32c0 <__libc_csu_fini>
    13fa:	48 8d 0d 4f 1e 00 00 	lea    0x1e4f(%rip),%rcx        # 3250 <__libc_csu_init>
    1401:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 14c9 <main>
    1408:	ff 15 d2 5b 00 00    	call   *0x5bd2(%rip)        # 6fe0 <__libc_start_main@GLIBC_2.2.5>
    140e:	f4                   	hlt    
    140f:	90                   	nop

0000000000001410 <deregister_tm_clones>:
    1410:	48 8d 3d 49 70 00 00 	lea    0x7049(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1417:	48 8d 05 42 70 00 00 	lea    0x7042(%rip),%rax        # 8460 <stdout@GLIBC_2.2.5>
    141e:	48 39 f8             	cmp    %rdi,%rax
    1421:	74 15                	je     1438 <deregister_tm_clones+0x28>
    1423:	48 8b 05 ae 5b 00 00 	mov    0x5bae(%rip),%rax        # 6fd8 <_ITM_deregisterTMCloneTable>
    142a:	48 85 c0             	test   %rax,%rax
    142d:	74 09                	je     1438 <deregister_tm_clones+0x28>
    142f:	ff e0                	jmp    *%rax
    1431:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <register_tm_clones>:
    1440:	48 8d 3d 19 70 00 00 	lea    0x7019(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1447:	48 8d 35 12 70 00 00 	lea    0x7012(%rip),%rsi        # 8460 <stdout@GLIBC_2.2.5>
    144e:	48 29 fe             	sub    %rdi,%rsi
    1451:	48 89 f0             	mov    %rsi,%rax
    1454:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1458:	48 c1 f8 03          	sar    $0x3,%rax
    145c:	48 01 c6             	add    %rax,%rsi
    145f:	48 d1 fe             	sar    %rsi
    1462:	74 14                	je     1478 <register_tm_clones+0x38>
    1464:	48 8b 05 85 5b 00 00 	mov    0x5b85(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable>
    146b:	48 85 c0             	test   %rax,%rax
    146e:	74 08                	je     1478 <register_tm_clones+0x38>
    1470:	ff e0                	jmp    *%rax
    1472:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <__do_global_dtors_aux>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	80 3d fd 6f 00 00 00 	cmpb   $0x0,0x6ffd(%rip)        # 8488 <completed.8060>
    148b:	75 2b                	jne    14b8 <__do_global_dtors_aux+0x38>
    148d:	55                   	push   %rbp
    148e:	48 83 3d 62 5b 00 00 	cmpq   $0x0,0x5b62(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    1495:	00 
    1496:	48 89 e5             	mov    %rsp,%rbp
    1499:	74 0c                	je     14a7 <__do_global_dtors_aux+0x27>
    149b:	48 8b 3d 66 5b 00 00 	mov    0x5b66(%rip),%rdi        # 7008 <__dso_handle>
    14a2:	e8 59 fd ff ff       	call   1200 <__cxa_finalize@plt>
    14a7:	e8 64 ff ff ff       	call   1410 <deregister_tm_clones>
    14ac:	c6 05 d5 6f 00 00 01 	movb   $0x1,0x6fd5(%rip)        # 8488 <completed.8060>
    14b3:	5d                   	pop    %rbp
    14b4:	c3                   	ret    
    14b5:	0f 1f 00             	nopl   (%rax)
    14b8:	c3                   	ret    
    14b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014c0 <frame_dummy>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	e9 77 ff ff ff       	jmp    1440 <register_tm_clones>

00000000000014c9 <main>:
    14c9:	f3 0f 1e fa          	endbr64 
    14cd:	53                   	push   %rbx
    14ce:	83 ff 01             	cmp    $0x1,%edi
    14d1:	74 51                	je     1524 <main+0x5b>
    14d3:	48 89 f3             	mov    %rsi,%rbx
    14d6:	83 ff 02             	cmp    $0x2,%edi
    14d9:	75 7b                	jne    1556 <main+0x8d>
    14db:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14df:	48 8d 35 10 32 00 00 	lea    0x3210(%rip),%rsi        # 46f6 <transition_table+0x3d6>
    14e6:	e8 65 fe ff ff       	call   1350 <fopen@plt>
    14eb:	48 89 05 9e 6f 00 00 	mov    %rax,0x6f9e(%rip)        # 8490 <infile>
    14f2:	48 85 c0             	test   %rax,%rax
    14f5:	74 3d                	je     1534 <main+0x6b>
    14f7:	e8 be 08 00 00       	call   1dba <initialize_bomb>
    14fc:	48 89 c3             	mov    %rax,%rbx
    14ff:	81 38 11 fa 22 20    	cmpl   $0x2022fa11,(%rax)
    1505:	74 72                	je     1579 <main+0xb0>
    1507:	48 8d 35 7a 2b 00 00 	lea    0x2b7a(%rip),%rsi        # 4088 <_IO_stdin_used+0x88>
    150e:	bf 01 00 00 00       	mov    $0x1,%edi
    1513:	b8 00 00 00 00       	mov    $0x0,%eax
    1518:	e8 23 fe ff ff       	call   1340 <__printf_chk@plt>
    151d:	b8 00 00 00 00       	mov    $0x0,%eax
    1522:	5b                   	pop    %rbx
    1523:	c3                   	ret    
    1524:	48 8b 05 45 6f 00 00 	mov    0x6f45(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    152b:	48 89 05 5e 6f 00 00 	mov    %rax,0x6f5e(%rip)        # 8490 <infile>
    1532:	eb c3                	jmp    14f7 <main+0x2e>
    1534:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1538:	48 8b 13             	mov    (%rbx),%rdx
    153b:	48 8d 35 c2 2a 00 00 	lea    0x2ac2(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    1542:	bf 01 00 00 00       	mov    $0x1,%edi
    1547:	e8 f4 fd ff ff       	call   1340 <__printf_chk@plt>
    154c:	bf 08 00 00 00       	mov    $0x8,%edi
    1551:	e8 1a fe ff ff       	call   1370 <exit@plt>
    1556:	48 8b 16             	mov    (%rsi),%rdx
    1559:	48 8d 35 c1 2a 00 00 	lea    0x2ac1(%rip),%rsi        # 4021 <_IO_stdin_used+0x21>
    1560:	bf 01 00 00 00       	mov    $0x1,%edi
    1565:	b8 00 00 00 00       	mov    $0x0,%eax
    156a:	e8 d1 fd ff ff       	call   1340 <__printf_chk@plt>
    156f:	bf 08 00 00 00       	mov    $0x8,%edi
    1574:	e8 f7 fd ff ff       	call   1370 <exit@plt>
    1579:	48 8d 3d 48 2b 00 00 	lea    0x2b48(%rip),%rdi        # 40c8 <_IO_stdin_used+0xc8>
    1580:	e8 db fc ff ff       	call   1260 <puts@plt>
    1585:	48 8d 3d 7c 2b 00 00 	lea    0x2b7c(%rip),%rdi        # 4108 <_IO_stdin_used+0x108>
    158c:	e8 cf fc ff ff       	call   1260 <puts@plt>
    1591:	e8 dd 0c 00 00       	call   2273 <read_line>
    1596:	48 89 c7             	mov    %rax,%rdi
    1599:	e8 0f 02 00 00       	call   17ad <phase_1>
    159e:	48 89 df             	mov    %rbx,%rdi
    15a1:	e8 18 0e 00 00       	call   23be <phase_defused>
    15a6:	48 8d 3d 9b 2b 00 00 	lea    0x2b9b(%rip),%rdi        # 4148 <_IO_stdin_used+0x148>
    15ad:	e8 ae fc ff ff       	call   1260 <puts@plt>
    15b2:	e8 bc 0c 00 00       	call   2273 <read_line>
    15b7:	48 89 c7             	mov    %rax,%rdi
    15ba:	e8 12 02 00 00       	call   17d1 <phase_2>
    15bf:	48 89 df             	mov    %rbx,%rdi
    15c2:	e8 f7 0d 00 00       	call   23be <phase_defused>
    15c7:	48 8d 3d 6d 2a 00 00 	lea    0x2a6d(%rip),%rdi        # 403b <_IO_stdin_used+0x3b>
    15ce:	e8 8d fc ff ff       	call   1260 <puts@plt>
    15d3:	e8 9b 0c 00 00       	call   2273 <read_line>
    15d8:	48 89 c7             	mov    %rax,%rdi
    15db:	e8 62 02 00 00       	call   1842 <phase_3>
    15e0:	48 89 df             	mov    %rbx,%rdi
    15e3:	e8 d6 0d 00 00       	call   23be <phase_defused>
    15e8:	48 8d 3d 69 2a 00 00 	lea    0x2a69(%rip),%rdi        # 4058 <_IO_stdin_used+0x58>
    15ef:	e8 6c fc ff ff       	call   1260 <puts@plt>
    15f4:	e8 7a 0c 00 00       	call   2273 <read_line>
    15f9:	48 89 c7             	mov    %rax,%rdi
    15fc:	e8 5e 03 00 00       	call   195f <phase_4>
    1601:	48 89 df             	mov    %rbx,%rdi
    1604:	e8 b5 0d 00 00       	call   23be <phase_defused>
    1609:	48 8d 3d 68 2b 00 00 	lea    0x2b68(%rip),%rdi        # 4178 <_IO_stdin_used+0x178>
    1610:	e8 4b fc ff ff       	call   1260 <puts@plt>
    1615:	e8 59 0c 00 00       	call   2273 <read_line>
    161a:	48 89 c7             	mov    %rax,%rdi
    161d:	e8 c1 03 00 00       	call   19e3 <phase_5>
    1622:	48 89 df             	mov    %rbx,%rdi
    1625:	e8 94 0d 00 00       	call   23be <phase_defused>
    162a:	48 8d 3d 36 2a 00 00 	lea    0x2a36(%rip),%rdi        # 4067 <_IO_stdin_used+0x67>
    1631:	e8 2a fc ff ff       	call   1260 <puts@plt>
    1636:	e8 38 0c 00 00       	call   2273 <read_line>
    163b:	48 89 c7             	mov    %rax,%rdi
    163e:	e8 31 04 00 00       	call   1a74 <phase_6>
    1643:	48 89 df             	mov    %rbx,%rdi
    1646:	e8 73 0d 00 00       	call   23be <phase_defused>
    164b:	48 89 df             	mov    %rbx,%rdi
    164e:	e8 cd fb ff ff       	call   1220 <free@plt>
    1653:	e9 c5 fe ff ff       	jmp    151d <main+0x54>

0000000000001658 <abracadabra>:
    1658:	f3 0f 1e fa          	endbr64 
    165c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    1663:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    166a:	00 00 
    166c:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    1673:	00 
    1674:	31 c0                	xor    %eax,%eax
    1676:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    167b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1680:	48 83 ec 08          	sub    $0x8,%rsp
    1684:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
    1689:	50                   	push   %rax
    168a:	48 8d 44 24 2c       	lea    0x2c(%rsp),%rax
    168f:	50                   	push   %rax
    1690:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
    1695:	50                   	push   %rax
    1696:	4c 8d 4c 24 34       	lea    0x34(%rsp),%r9
    169b:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    16a0:	48 8d 35 f5 2a 00 00 	lea    0x2af5(%rip),%rsi        # 419c <_IO_stdin_used+0x19c>
    16a7:	48 8d 3d 6a 6e 00 00 	lea    0x6e6a(%rip),%rdi        # 8518 <input_strings+0x78>
    16ae:	b8 00 00 00 00       	mov    $0x0,%eax
    16b3:	e8 78 fc ff ff       	call   1330 <__isoc99_sscanf@plt>
    16b8:	48 83 c4 20          	add    $0x20,%rsp
    16bc:	83 f8 07             	cmp    $0x7,%eax
    16bf:	74 20                	je     16e1 <abracadabra+0x89>
    16c1:	b8 00 00 00 00       	mov    $0x0,%eax
    16c6:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    16cd:	00 
    16ce:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    16d5:	00 00 
    16d7:	75 2b                	jne    1704 <abracadabra+0xac>
    16d9:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    16e0:	c3                   	ret    
    16e1:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    16e6:	48 8d 35 cb 2a 00 00 	lea    0x2acb(%rip),%rsi        # 41b8 <_IO_stdin_used+0x1b8>
    16ed:	e8 77 06 00 00       	call   1d69 <strings_not_equal>
    16f2:	85 c0                	test   %eax,%eax
    16f4:	74 07                	je     16fd <abracadabra+0xa5>
    16f6:	b8 00 00 00 00       	mov    $0x0,%eax
    16fb:	eb c9                	jmp    16c6 <abracadabra+0x6e>
    16fd:	b8 01 00 00 00       	mov    $0x1,%eax
    1702:	eb c2                	jmp    16c6 <abracadabra+0x6e>
    1704:	e8 77 fb ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001709 <alohomora>:
    1709:	f3 0f 1e fa          	endbr64 
    170d:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1714:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    171b:	00 00 
    171d:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1724:	00 
    1725:	31 c0                	xor    %eax,%eax
    1727:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    172c:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1731:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1736:	48 8d 35 6b 2a 00 00 	lea    0x2a6b(%rip),%rsi        # 41a8 <_IO_stdin_used+0x1a8>
    173d:	48 8d 3d c4 6e 00 00 	lea    0x6ec4(%rip),%rdi        # 8608 <input_strings+0x168>
    1744:	e8 e7 fb ff ff       	call   1330 <__isoc99_sscanf@plt>
    1749:	83 f8 03             	cmp    $0x3,%eax
    174c:	74 20                	je     176e <alohomora+0x65>
    174e:	b8 00 00 00 00       	mov    $0x0,%eax
    1753:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
    175a:	00 
    175b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1762:	00 00 
    1764:	75 42                	jne    17a8 <alohomora+0x9f>
    1766:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    176d:	c3                   	ret    
    176e:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1773:	0f b6 02             	movzbl (%rdx),%eax
    1776:	84 c0                	test   %al,%al
    1778:	74 0b                	je     1785 <alohomora+0x7c>
    177a:	83 c0 02             	add    $0x2,%eax
    177d:	88 02                	mov    %al,(%rdx)
    177f:	48 83 c2 01          	add    $0x1,%rdx
    1783:	eb ee                	jmp    1773 <alohomora+0x6a>
    1785:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    178a:	48 8d 35 47 2a 00 00 	lea    0x2a47(%rip),%rsi        # 41d8 <_IO_stdin_used+0x1d8>
    1791:	e8 d3 05 00 00       	call   1d69 <strings_not_equal>
    1796:	85 c0                	test   %eax,%eax
    1798:	74 07                	je     17a1 <alohomora+0x98>
    179a:	b8 00 00 00 00       	mov    $0x0,%eax
    179f:	eb b2                	jmp    1753 <alohomora+0x4a>
    17a1:	b8 01 00 00 00       	mov    $0x1,%eax
    17a6:	eb ab                	jmp    1753 <alohomora+0x4a>
    17a8:	e8 d3 fa ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000017ad <phase_1>:
    17ad:	f3 0f 1e fa          	endbr64 
    17b1:	48 83 ec 08          	sub    $0x8,%rsp
    17b5:	48 8d 35 44 2a 00 00 	lea    0x2a44(%rip),%rsi        # 4200 <_IO_stdin_used+0x200>
    17bc:	e8 a8 05 00 00       	call   1d69 <strings_not_equal>
    17c1:	85 c0                	test   %eax,%eax
    17c3:	75 05                	jne    17ca <phase_1+0x1d>
    17c5:	48 83 c4 08          	add    $0x8,%rsp
    17c9:	c3                   	ret    
    17ca:	e8 71 09 00 00       	call   2140 <explode_bomb>
    17cf:	eb f4                	jmp    17c5 <phase_1+0x18>

00000000000017d1 <phase_2>:
    17d1:	f3 0f 1e fa          	endbr64 
    17d5:	53                   	push   %rbx
    17d6:	48 83 ec 20          	sub    $0x20,%rsp
    17da:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17e1:	00 00 
    17e3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    17e8:	31 c0                	xor    %eax,%eax
    17ea:	48 89 e6             	mov    %rsp,%rsi
    17ed:	e8 3c 0a 00 00       	call   222e <read_six_numbers>
    17f2:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    17f6:	75 07                	jne    17ff <phase_2+0x2e>
    17f8:	bb 01 00 00 00       	mov    $0x1,%ebx
    17fd:	eb 0f                	jmp    180e <phase_2+0x3d>
    17ff:	e8 3c 09 00 00       	call   2140 <explode_bomb>
    1804:	eb f2                	jmp    17f8 <phase_2+0x27>
    1806:	e8 35 09 00 00       	call   2140 <explode_bomb>
    180b:	83 c3 01             	add    $0x1,%ebx
    180e:	83 fb 05             	cmp    $0x5,%ebx
    1811:	7f 14                	jg     1827 <phase_2+0x56>
    1813:	48 63 d3             	movslq %ebx,%rdx
    1816:	8d 43 ff             	lea    -0x1(%rbx),%eax
    1819:	48 98                	cltq   
    181b:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    181e:	01 c0                	add    %eax,%eax
    1820:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    1823:	74 e6                	je     180b <phase_2+0x3a>
    1825:	eb df                	jmp    1806 <phase_2+0x35>
    1827:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    182c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1833:	00 00 
    1835:	75 06                	jne    183d <phase_2+0x6c>
    1837:	48 83 c4 20          	add    $0x20,%rsp
    183b:	5b                   	pop    %rbx
    183c:	c3                   	ret    
    183d:	e8 3e fa ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001842 <phase_3>:
    1842:	f3 0f 1e fa          	endbr64 
    1846:	48 83 ec 18          	sub    $0x18,%rsp
    184a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1851:	00 00 
    1853:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1858:	31 c0                	xor    %eax,%eax
    185a:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    185f:	48 89 e2             	mov    %rsp,%rdx
    1862:	48 8d 35 ef 2d 00 00 	lea    0x2def(%rip),%rsi        # 4658 <transition_table+0x338>
    1869:	e8 c2 fa ff ff       	call   1330 <__isoc99_sscanf@plt>
    186e:	83 f8 01             	cmp    $0x1,%eax
    1871:	7e 1f                	jle    1892 <phase_3+0x50>
    1873:	8b 04 24             	mov    (%rsp),%eax
    1876:	83 f8 07             	cmp    $0x7,%eax
    1879:	0f 87 8a 00 00 00    	ja     1909 <phase_3+0xc7>
    187f:	89 c0                	mov    %eax,%eax
    1881:	48 8d 15 58 2a 00 00 	lea    0x2a58(%rip),%rdx        # 42e0 <_IO_stdin_used+0x2e0>
    1888:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    188c:	48 01 d0             	add    %rdx,%rax
    188f:	3e ff e0             	notrack jmp *%rax
    1892:	e8 a9 08 00 00       	call   2140 <explode_bomb>
    1897:	eb da                	jmp    1873 <phase_3+0x31>
    1899:	8b 44 24 04          	mov    0x4(%rsp),%eax
    189d:	05 8c 00 00 00       	add    $0x8c,%eax
    18a2:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    18a7:	75 6f                	jne    1918 <phase_3+0xd6>
    18a9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    18ae:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    18b5:	00 00 
    18b7:	75 66                	jne    191f <phase_3+0xdd>
    18b9:	48 83 c4 18          	add    $0x18,%rsp
    18bd:	c3                   	ret    
    18be:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18c2:	05 b2 01 00 00       	add    $0x1b2,%eax
    18c7:	eb d9                	jmp    18a2 <phase_3+0x60>
    18c9:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18cd:	83 c0 78             	add    $0x78,%eax
    18d0:	eb d0                	jmp    18a2 <phase_3+0x60>
    18d2:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18d6:	05 64 02 00 00       	add    $0x264,%eax
    18db:	eb c5                	jmp    18a2 <phase_3+0x60>
    18dd:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18e1:	05 d8 01 00 00       	add    $0x1d8,%eax
    18e6:	eb ba                	jmp    18a2 <phase_3+0x60>
    18e8:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18ec:	05 2a 02 00 00       	add    $0x22a,%eax
    18f1:	eb af                	jmp    18a2 <phase_3+0x60>
    18f3:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18f7:	05 fa 00 00 00       	add    $0xfa,%eax
    18fc:	eb a4                	jmp    18a2 <phase_3+0x60>
    18fe:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1902:	05 21 03 00 00       	add    $0x321,%eax
    1907:	eb 99                	jmp    18a2 <phase_3+0x60>
    1909:	e8 32 08 00 00       	call   2140 <explode_bomb>
    190e:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    1913:	e8 58 fa ff ff       	call   1370 <exit@plt>
    1918:	e8 23 08 00 00       	call   2140 <explode_bomb>
    191d:	eb 8a                	jmp    18a9 <phase_3+0x67>
    191f:	e8 5c f9 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001924 <func4>:
    1924:	f3 0f 1e fa          	endbr64 
    1928:	85 ff                	test   %edi,%edi
    192a:	7e 29                	jle    1955 <func4+0x31>
    192c:	55                   	push   %rbp
    192d:	53                   	push   %rbx
    192e:	48 83 ec 08          	sub    $0x8,%rsp
    1932:	89 fb                	mov    %edi,%ebx
    1934:	83 ff 01             	cmp    $0x1,%edi
    1937:	74 22                	je     195b <func4+0x37>
    1939:	8d 7f ff             	lea    -0x1(%rdi),%edi
    193c:	e8 e3 ff ff ff       	call   1924 <func4>
    1941:	8d 2c 00             	lea    (%rax,%rax,1),%ebp
    1944:	8d 7b fe             	lea    -0x2(%rbx),%edi
    1947:	e8 d8 ff ff ff       	call   1924 <func4>
    194c:	01 e8                	add    %ebp,%eax
    194e:	48 83 c4 08          	add    $0x8,%rsp
    1952:	5b                   	pop    %rbx
    1953:	5d                   	pop    %rbp
    1954:	c3                   	ret    
    1955:	b8 00 00 00 00       	mov    $0x0,%eax
    195a:	c3                   	ret    
    195b:	89 f8                	mov    %edi,%eax
    195d:	eb ef                	jmp    194e <func4+0x2a>

000000000000195f <phase_4>:
    195f:	f3 0f 1e fa          	endbr64 
    1963:	55                   	push   %rbp
    1964:	53                   	push   %rbx
    1965:	48 83 ec 18          	sub    $0x18,%rsp
    1969:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1970:	00 00 
    1972:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1977:	31 c0                	xor    %eax,%eax
    1979:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    197e:	48 89 e2             	mov    %rsp,%rdx
    1981:	48 8d 35 d0 2c 00 00 	lea    0x2cd0(%rip),%rsi        # 4658 <transition_table+0x338>
    1988:	e8 a3 f9 ff ff       	call   1330 <__isoc99_sscanf@plt>
    198d:	83 f8 02             	cmp    $0x2,%eax
    1990:	75 06                	jne    1998 <phase_4+0x39>
    1992:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    1996:	74 05                	je     199d <phase_4+0x3e>
    1998:	e8 a3 07 00 00       	call   2140 <explode_bomb>
    199d:	bd 00 00 00 00       	mov    $0x0,%ebp
    19a2:	bb 00 00 00 00       	mov    $0x0,%ebx
    19a7:	39 1c 24             	cmp    %ebx,(%rsp)
    19aa:	7e 0e                	jle    19ba <phase_4+0x5b>
    19ac:	89 df                	mov    %ebx,%edi
    19ae:	e8 71 ff ff ff       	call   1924 <func4>
    19b3:	01 c5                	add    %eax,%ebp
    19b5:	83 c3 01             	add    $0x1,%ebx
    19b8:	eb ed                	jmp    19a7 <phase_4+0x48>
    19ba:	39 6c 24 04          	cmp    %ebp,0x4(%rsp)
    19be:	75 17                	jne    19d7 <phase_4+0x78>
    19c0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    19c5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    19cc:	00 00 
    19ce:	75 0e                	jne    19de <phase_4+0x7f>
    19d0:	48 83 c4 18          	add    $0x18,%rsp
    19d4:	5b                   	pop    %rbx
    19d5:	5d                   	pop    %rbp
    19d6:	c3                   	ret    
    19d7:	e8 64 07 00 00       	call   2140 <explode_bomb>
    19dc:	eb e2                	jmp    19c0 <phase_4+0x61>
    19de:	e8 9d f8 ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000019e3 <phase_5>:
    19e3:	f3 0f 1e fa          	endbr64 
    19e7:	53                   	push   %rbx
    19e8:	48 83 ec 10          	sub    $0x10,%rsp
    19ec:	48 89 fb             	mov    %rdi,%rbx
    19ef:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19f6:	00 00 
    19f8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    19fd:	31 c0                	xor    %eax,%eax
    19ff:	e8 4d 03 00 00       	call   1d51 <string_length>
    1a04:	83 f8 06             	cmp    $0x6,%eax
    1a07:	75 28                	jne    1a31 <phase_5+0x4e>
    1a09:	b8 00 00 00 00       	mov    $0x0,%eax
    1a0e:	83 f8 05             	cmp    $0x5,%eax
    1a11:	7f 25                	jg     1a38 <phase_5+0x55>
    1a13:	48 63 c8             	movslq %eax,%rcx
    1a16:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
    1a1a:	83 e2 0f             	and    $0xf,%edx
    1a1d:	48 8d 35 dc 28 00 00 	lea    0x28dc(%rip),%rsi        # 4300 <array.3501>
    1a24:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx
    1a28:	88 54 0c 01          	mov    %dl,0x1(%rsp,%rcx,1)
    1a2c:	83 c0 01             	add    $0x1,%eax
    1a2f:	eb dd                	jmp    1a0e <phase_5+0x2b>
    1a31:	e8 0a 07 00 00       	call   2140 <explode_bomb>
    1a36:	eb d1                	jmp    1a09 <phase_5+0x26>
    1a38:	c6 44 24 07 00       	movb   $0x0,0x7(%rsp)
    1a3d:	48 8d 7c 24 01       	lea    0x1(%rsp),%rdi
    1a42:	48 8d 35 68 27 00 00 	lea    0x2768(%rip),%rsi        # 41b1 <_IO_stdin_used+0x1b1>
    1a49:	e8 1b 03 00 00       	call   1d69 <strings_not_equal>
    1a4e:	85 c0                	test   %eax,%eax
    1a50:	75 16                	jne    1a68 <phase_5+0x85>
    1a52:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1a57:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1a5e:	00 00 
    1a60:	75 0d                	jne    1a6f <phase_5+0x8c>
    1a62:	48 83 c4 10          	add    $0x10,%rsp
    1a66:	5b                   	pop    %rbx
    1a67:	c3                   	ret    
    1a68:	e8 d3 06 00 00       	call   2140 <explode_bomb>
    1a6d:	eb e3                	jmp    1a52 <phase_5+0x6f>
    1a6f:	e8 0c f8 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001a74 <phase_6>:
    1a74:	f3 0f 1e fa          	endbr64 
    1a78:	41 54                	push   %r12
    1a7a:	55                   	push   %rbp
    1a7b:	53                   	push   %rbx
    1a7c:	48 83 ec 60          	sub    $0x60,%rsp
    1a80:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a87:	00 00 
    1a89:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1a8e:	31 c0                	xor    %eax,%eax
    1a90:	48 89 e6             	mov    %rsp,%rsi
    1a93:	e8 96 07 00 00       	call   222e <read_six_numbers>
    1a98:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a9d:	eb 27                	jmp    1ac6 <phase_6+0x52>
    1a9f:	e8 9c 06 00 00       	call   2140 <explode_bomb>
    1aa4:	eb 33                	jmp    1ad9 <phase_6+0x65>
    1aa6:	83 c3 01             	add    $0x1,%ebx
    1aa9:	83 fb 05             	cmp    $0x5,%ebx
    1aac:	7f 15                	jg     1ac3 <phase_6+0x4f>
    1aae:	48 63 c5             	movslq %ebp,%rax
    1ab1:	48 63 d3             	movslq %ebx,%rdx
    1ab4:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1ab7:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    1aba:	75 ea                	jne    1aa6 <phase_6+0x32>
    1abc:	e8 7f 06 00 00       	call   2140 <explode_bomb>
    1ac1:	eb e3                	jmp    1aa6 <phase_6+0x32>
    1ac3:	44 89 e5             	mov    %r12d,%ebp
    1ac6:	83 fd 05             	cmp    $0x5,%ebp
    1ac9:	7f 17                	jg     1ae2 <phase_6+0x6e>
    1acb:	48 63 c5             	movslq %ebp,%rax
    1ace:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1ad1:	83 e8 01             	sub    $0x1,%eax
    1ad4:	83 f8 05             	cmp    $0x5,%eax
    1ad7:	77 c6                	ja     1a9f <phase_6+0x2b>
    1ad9:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    1add:	44 89 e3             	mov    %r12d,%ebx
    1ae0:	eb c7                	jmp    1aa9 <phase_6+0x35>
    1ae2:	be 00 00 00 00       	mov    $0x0,%esi
    1ae7:	eb 08                	jmp    1af1 <phase_6+0x7d>
    1ae9:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    1aee:	83 c6 01             	add    $0x1,%esi
    1af1:	83 fe 05             	cmp    $0x5,%esi
    1af4:	7f 1d                	jg     1b13 <phase_6+0x9f>
    1af6:	b8 01 00 00 00       	mov    $0x1,%eax
    1afb:	48 8d 15 4e 65 00 00 	lea    0x654e(%rip),%rdx        # 8050 <node1>
    1b02:	48 63 ce             	movslq %esi,%rcx
    1b05:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    1b08:	7e df                	jle    1ae9 <phase_6+0x75>
    1b0a:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1b0e:	83 c0 01             	add    $0x1,%eax
    1b11:	eb ef                	jmp    1b02 <phase_6+0x8e>
    1b13:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1b18:	48 89 d9             	mov    %rbx,%rcx
    1b1b:	b8 01 00 00 00       	mov    $0x1,%eax
    1b20:	eb 12                	jmp    1b34 <phase_6+0xc0>
    1b22:	48 63 d0             	movslq %eax,%rdx
    1b25:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    1b2a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    1b2e:	83 c0 01             	add    $0x1,%eax
    1b31:	48 89 d1             	mov    %rdx,%rcx
    1b34:	83 f8 05             	cmp    $0x5,%eax
    1b37:	7e e9                	jle    1b22 <phase_6+0xae>
    1b39:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1b40:	00 
    1b41:	bd 00 00 00 00       	mov    $0x0,%ebp
    1b46:	eb 07                	jmp    1b4f <phase_6+0xdb>
    1b48:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1b4c:	83 c5 01             	add    $0x1,%ebp
    1b4f:	83 fd 04             	cmp    $0x4,%ebp
    1b52:	7f 11                	jg     1b65 <phase_6+0xf1>
    1b54:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1b58:	8b 00                	mov    (%rax),%eax
    1b5a:	39 03                	cmp    %eax,(%rbx)
    1b5c:	7d ea                	jge    1b48 <phase_6+0xd4>
    1b5e:	e8 dd 05 00 00       	call   2140 <explode_bomb>
    1b63:	eb e3                	jmp    1b48 <phase_6+0xd4>
    1b65:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1b6a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b71:	00 00 
    1b73:	75 09                	jne    1b7e <phase_6+0x10a>
    1b75:	48 83 c4 60          	add    $0x60,%rsp
    1b79:	5b                   	pop    %rbx
    1b7a:	5d                   	pop    %rbp
    1b7b:	41 5c                	pop    %r12
    1b7d:	c3                   	ret    
    1b7e:	e8 fd f6 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001b83 <emulate_fsm>:
    1b83:	f3 0f 1e fa          	endbr64 
    1b87:	55                   	push   %rbp
    1b88:	53                   	push   %rbx
    1b89:	48 83 ec 08          	sub    $0x8,%rsp
    1b8d:	89 fd                	mov    %edi,%ebp
    1b8f:	48 89 f3             	mov    %rsi,%rbx
    1b92:	eb 27                	jmp    1bbb <emulate_fsm+0x38>
    1b94:	0f be 03             	movsbl (%rbx),%eax
    1b97:	83 e8 30             	sub    $0x30,%eax
    1b9a:	48 63 ed             	movslq %ebp,%rbp
    1b9d:	48 98                	cltq   
    1b9f:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
    1ba6:	00 
    1ba7:	48 29 c7             	sub    %rax,%rdi
    1baa:	48 01 ef             	add    %rbp,%rdi
    1bad:	48 8d 05 6c 27 00 00 	lea    0x276c(%rip),%rax        # 4320 <transition_table>
    1bb4:	8b 2c b8             	mov    (%rax,%rdi,4),%ebp
    1bb7:	48 83 c3 01          	add    $0x1,%rbx
    1bbb:	0f b6 03             	movzbl (%rbx),%eax
    1bbe:	84 c0                	test   %al,%al
    1bc0:	74 0e                	je     1bd0 <emulate_fsm+0x4d>
    1bc2:	83 e8 30             	sub    $0x30,%eax
    1bc5:	3c 01                	cmp    $0x1,%al
    1bc7:	76 cb                	jbe    1b94 <emulate_fsm+0x11>
    1bc9:	e8 72 05 00 00       	call   2140 <explode_bomb>
    1bce:	eb c4                	jmp    1b94 <emulate_fsm+0x11>
    1bd0:	89 e8                	mov    %ebp,%eax
    1bd2:	48 83 c4 08          	add    $0x8,%rsp
    1bd6:	5b                   	pop    %rbx
    1bd7:	5d                   	pop    %rbp
    1bd8:	c3                   	ret    

0000000000001bd9 <check_synchronizing_sequence>:
    1bd9:	f3 0f 1e fa          	endbr64 
    1bdd:	41 54                	push   %r12
    1bdf:	55                   	push   %rbp
    1be0:	53                   	push   %rbx
    1be1:	48 89 fd             	mov    %rdi,%rbp
    1be4:	48 89 fe             	mov    %rdi,%rsi
    1be7:	bf 00 00 00 00       	mov    $0x0,%edi
    1bec:	e8 92 ff ff ff       	call   1b83 <emulate_fsm>
    1bf1:	41 89 c4             	mov    %eax,%r12d
    1bf4:	bb 01 00 00 00       	mov    $0x1,%ebx
    1bf9:	83 fb 06             	cmp    $0x6,%ebx
    1bfc:	7f 14                	jg     1c12 <check_synchronizing_sequence+0x39>
    1bfe:	48 89 ee             	mov    %rbp,%rsi
    1c01:	89 df                	mov    %ebx,%edi
    1c03:	e8 7b ff ff ff       	call   1b83 <emulate_fsm>
    1c08:	44 39 e0             	cmp    %r12d,%eax
    1c0b:	75 0f                	jne    1c1c <check_synchronizing_sequence+0x43>
    1c0d:	83 c3 01             	add    $0x1,%ebx
    1c10:	eb e7                	jmp    1bf9 <check_synchronizing_sequence+0x20>
    1c12:	b8 00 00 00 00       	mov    $0x0,%eax
    1c17:	5b                   	pop    %rbx
    1c18:	5d                   	pop    %rbp
    1c19:	41 5c                	pop    %r12
    1c1b:	c3                   	ret    
    1c1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1c21:	eb f4                	jmp    1c17 <check_synchronizing_sequence+0x3e>

0000000000001c23 <secret_phase>:
    1c23:	f3 0f 1e fa          	endbr64 
    1c27:	55                   	push   %rbp
    1c28:	53                   	push   %rbx
    1c29:	48 83 ec 18          	sub    $0x18,%rsp
    1c2d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c34:	00 00 
    1c36:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1c3b:	31 c0                	xor    %eax,%eax
    1c3d:	e8 31 06 00 00       	call   2273 <read_line>
    1c42:	48 89 c5             	mov    %rax,%rbp
    1c45:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c4a:	eb 08                	jmp    1c54 <secret_phase+0x31>
    1c4c:	e8 ef 04 00 00       	call   2140 <explode_bomb>
    1c51:	83 c3 01             	add    $0x1,%ebx
    1c54:	48 63 c3             	movslq %ebx,%rax
    1c57:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1c5c:	74 07                	je     1c65 <secret_phase+0x42>
    1c5e:	83 fb 10             	cmp    $0x10,%ebx
    1c61:	7e ee                	jle    1c51 <secret_phase+0x2e>
    1c63:	eb e7                	jmp    1c4c <secret_phase+0x29>
    1c65:	48 89 ef             	mov    %rbp,%rdi
    1c68:	e8 6c ff ff ff       	call   1bd9 <check_synchronizing_sequence>
    1c6d:	85 c0                	test   %eax,%eax
    1c6f:	75 45                	jne    1cb6 <secret_phase+0x93>
    1c71:	48 8d 3d b0 25 00 00 	lea    0x25b0(%rip),%rdi        # 4228 <_IO_stdin_used+0x228>
    1c78:	e8 e3 f5 ff ff       	call   1260 <puts@plt>
    1c7d:	48 8d 3d d4 25 00 00 	lea    0x25d4(%rip),%rdi        # 4258 <_IO_stdin_used+0x258>
    1c84:	e8 d7 f5 ff ff       	call   1260 <puts@plt>
    1c89:	48 8d 3d 20 26 00 00 	lea    0x2620(%rip),%rdi        # 42b0 <_IO_stdin_used+0x2b0>
    1c90:	e8 cb f5 ff ff       	call   1260 <puts@plt>
    1c95:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1c9a:	e8 1f 07 00 00       	call   23be <phase_defused>
    1c9f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1ca4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1cab:	00 00 
    1cad:	75 0e                	jne    1cbd <secret_phase+0x9a>
    1caf:	48 83 c4 18          	add    $0x18,%rsp
    1cb3:	5b                   	pop    %rbx
    1cb4:	5d                   	pop    %rbp
    1cb5:	c3                   	ret    
    1cb6:	e8 85 04 00 00       	call   2140 <explode_bomb>
    1cbb:	eb b4                	jmp    1c71 <secret_phase+0x4e>
    1cbd:	e8 be f5 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001cc2 <sig_handler>:
    1cc2:	f3 0f 1e fa          	endbr64 
    1cc6:	50                   	push   %rax
    1cc7:	58                   	pop    %rax
    1cc8:	48 83 ec 08          	sub    $0x8,%rsp
    1ccc:	48 8d 3d 85 26 00 00 	lea    0x2685(%rip),%rdi        # 4358 <transition_table+0x38>
    1cd3:	e8 88 f5 ff ff       	call   1260 <puts@plt>
    1cd8:	bf 03 00 00 00       	mov    $0x3,%edi
    1cdd:	e8 be f6 ff ff       	call   13a0 <sleep@plt>
    1ce2:	48 8d 35 e8 28 00 00 	lea    0x28e8(%rip),%rsi        # 45d1 <transition_table+0x2b1>
    1ce9:	bf 01 00 00 00       	mov    $0x1,%edi
    1cee:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf3:	e8 48 f6 ff ff       	call   1340 <__printf_chk@plt>
    1cf8:	48 8b 3d 61 67 00 00 	mov    0x6761(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1cff:	e8 1c f6 ff ff       	call   1320 <fflush@plt>
    1d04:	bf 01 00 00 00       	mov    $0x1,%edi
    1d09:	e8 92 f6 ff ff       	call   13a0 <sleep@plt>
    1d0e:	48 8d 3d c4 28 00 00 	lea    0x28c4(%rip),%rdi        # 45d9 <transition_table+0x2b9>
    1d15:	e8 46 f5 ff ff       	call   1260 <puts@plt>
    1d1a:	bf 10 00 00 00       	mov    $0x10,%edi
    1d1f:	e8 4c f6 ff ff       	call   1370 <exit@plt>

0000000000001d24 <invalid_phase>:
    1d24:	f3 0f 1e fa          	endbr64 
    1d28:	50                   	push   %rax
    1d29:	58                   	pop    %rax
    1d2a:	48 83 ec 08          	sub    $0x8,%rsp
    1d2e:	48 89 fa             	mov    %rdi,%rdx
    1d31:	48 8d 35 a9 28 00 00 	lea    0x28a9(%rip),%rsi        # 45e1 <transition_table+0x2c1>
    1d38:	bf 01 00 00 00       	mov    $0x1,%edi
    1d3d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d42:	e8 f9 f5 ff ff       	call   1340 <__printf_chk@plt>
    1d47:	bf 08 00 00 00       	mov    $0x8,%edi
    1d4c:	e8 1f f6 ff ff       	call   1370 <exit@plt>

0000000000001d51 <string_length>:
    1d51:	f3 0f 1e fa          	endbr64 
    1d55:	b8 00 00 00 00       	mov    $0x0,%eax
    1d5a:	80 3f 00             	cmpb   $0x0,(%rdi)
    1d5d:	74 09                	je     1d68 <string_length+0x17>
    1d5f:	48 83 c7 01          	add    $0x1,%rdi
    1d63:	83 c0 01             	add    $0x1,%eax
    1d66:	eb f2                	jmp    1d5a <string_length+0x9>
    1d68:	c3                   	ret    

0000000000001d69 <strings_not_equal>:
    1d69:	f3 0f 1e fa          	endbr64 
    1d6d:	41 54                	push   %r12
    1d6f:	55                   	push   %rbp
    1d70:	53                   	push   %rbx
    1d71:	48 89 fb             	mov    %rdi,%rbx
    1d74:	48 89 f5             	mov    %rsi,%rbp
    1d77:	e8 d5 ff ff ff       	call   1d51 <string_length>
    1d7c:	41 89 c4             	mov    %eax,%r12d
    1d7f:	48 89 ef             	mov    %rbp,%rdi
    1d82:	e8 ca ff ff ff       	call   1d51 <string_length>
    1d87:	41 39 c4             	cmp    %eax,%r12d
    1d8a:	75 1d                	jne    1da9 <strings_not_equal+0x40>
    1d8c:	0f b6 03             	movzbl (%rbx),%eax
    1d8f:	84 c0                	test   %al,%al
    1d91:	74 0f                	je     1da2 <strings_not_equal+0x39>
    1d93:	38 45 00             	cmp    %al,0x0(%rbp)
    1d96:	75 1b                	jne    1db3 <strings_not_equal+0x4a>
    1d98:	48 83 c3 01          	add    $0x1,%rbx
    1d9c:	48 83 c5 01          	add    $0x1,%rbp
    1da0:	eb ea                	jmp    1d8c <strings_not_equal+0x23>
    1da2:	b8 00 00 00 00       	mov    $0x0,%eax
    1da7:	eb 05                	jmp    1dae <strings_not_equal+0x45>
    1da9:	b8 01 00 00 00       	mov    $0x1,%eax
    1dae:	5b                   	pop    %rbx
    1daf:	5d                   	pop    %rbp
    1db0:	41 5c                	pop    %r12
    1db2:	c3                   	ret    
    1db3:	b8 01 00 00 00       	mov    $0x1,%eax
    1db8:	eb f4                	jmp    1dae <strings_not_equal+0x45>

0000000000001dba <initialize_bomb>:
    1dba:	f3 0f 1e fa          	endbr64 
    1dbe:	55                   	push   %rbp
    1dbf:	53                   	push   %rbx
    1dc0:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1dc7:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1dcc:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1dd3:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1dd8:	48 83 ec 58          	sub    $0x58,%rsp
    1ddc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1de3:	00 00 
    1de5:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1dec:	00 
    1ded:	31 c0                	xor    %eax,%eax
    1def:	48 8d 35 cc fe ff ff 	lea    -0x134(%rip),%rsi        # 1cc2 <sig_handler>
    1df6:	bf 02 00 00 00       	mov    $0x2,%edi
    1dfb:	e8 d0 f4 ff ff       	call   12d0 <signal@plt>
    1e00:	48 89 e7             	mov    %rsp,%rdi
    1e03:	be 40 00 00 00       	mov    $0x40,%esi
    1e08:	e8 53 f5 ff ff       	call   1360 <gethostname@plt>
    1e0d:	85 c0                	test   %eax,%eax
    1e0f:	75 06                	jne    1e17 <initialize_bomb+0x5d>
    1e11:	89 c5                	mov    %eax,%ebp
    1e13:	89 c3                	mov    %eax,%ebx
    1e15:	eb 19                	jmp    1e30 <initialize_bomb+0x76>
    1e17:	48 8d 3d 72 25 00 00 	lea    0x2572(%rip),%rdi        # 4390 <transition_table+0x70>
    1e1e:	e8 3d f4 ff ff       	call   1260 <puts@plt>
    1e23:	bf 08 00 00 00       	mov    $0x8,%edi
    1e28:	e8 43 f5 ff ff       	call   1370 <exit@plt>
    1e2d:	83 c3 01             	add    $0x1,%ebx
    1e30:	48 63 c3             	movslq %ebx,%rax
    1e33:	48 8d 15 66 62 00 00 	lea    0x6266(%rip),%rdx        # 80a0 <host_table>
    1e3a:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    1e3e:	48 85 ff             	test   %rdi,%rdi
    1e41:	74 11                	je     1e54 <initialize_bomb+0x9a>
    1e43:	48 89 e6             	mov    %rsp,%rsi
    1e46:	e8 e5 f3 ff ff       	call   1230 <strcasecmp@plt>
    1e4b:	85 c0                	test   %eax,%eax
    1e4d:	75 de                	jne    1e2d <initialize_bomb+0x73>
    1e4f:	bd 01 00 00 00       	mov    $0x1,%ebp
    1e54:	85 ed                	test   %ebp,%ebp
    1e56:	74 3b                	je     1e93 <initialize_bomb+0xd9>
    1e58:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1e5d:	e8 60 11 00 00       	call   2fc2 <init_driver>
    1e62:	85 c0                	test   %eax,%eax
    1e64:	78 43                	js     1ea9 <initialize_bomb+0xef>
    1e66:	bf 04 00 00 00       	mov    $0x4,%edi
    1e6b:	e8 a0 f4 ff ff       	call   1310 <malloc@plt>
    1e70:	c7 00 11 fa 22 20    	movl   $0x2022fa11,(%rax)
    1e76:	48 8b 8c 24 48 20 00 	mov    0x2048(%rsp),%rcx
    1e7d:	00 
    1e7e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1e85:	00 00 
    1e87:	75 45                	jne    1ece <initialize_bomb+0x114>
    1e89:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1e90:	5b                   	pop    %rbx
    1e91:	5d                   	pop    %rbp
    1e92:	c3                   	ret    
    1e93:	48 8d 3d 2e 25 00 00 	lea    0x252e(%rip),%rdi        # 43c8 <transition_table+0xa8>
    1e9a:	e8 c1 f3 ff ff       	call   1260 <puts@plt>
    1e9f:	bf 08 00 00 00       	mov    $0x8,%edi
    1ea4:	e8 c7 f4 ff ff       	call   1370 <exit@plt>
    1ea9:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1eae:	48 8d 35 3d 27 00 00 	lea    0x273d(%rip),%rsi        # 45f2 <transition_table+0x2d2>
    1eb5:	bf 01 00 00 00       	mov    $0x1,%edi
    1eba:	b8 00 00 00 00       	mov    $0x0,%eax
    1ebf:	e8 7c f4 ff ff       	call   1340 <__printf_chk@plt>
    1ec4:	bf 08 00 00 00       	mov    $0x8,%edi
    1ec9:	e8 a2 f4 ff ff       	call   1370 <exit@plt>
    1ece:	e8 ad f3 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001ed3 <initialize_bomb_solve>:
    1ed3:	f3 0f 1e fa          	endbr64 
    1ed7:	c3                   	ret    

0000000000001ed8 <blank_line>:
    1ed8:	f3 0f 1e fa          	endbr64 
    1edc:	55                   	push   %rbp
    1edd:	53                   	push   %rbx
    1ede:	48 83 ec 08          	sub    $0x8,%rsp
    1ee2:	48 89 fd             	mov    %rdi,%rbp
    1ee5:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1ee9:	84 db                	test   %bl,%bl
    1eeb:	74 1e                	je     1f0b <blank_line+0x33>
    1eed:	e8 be f4 ff ff       	call   13b0 <__ctype_b_loc@plt>
    1ef2:	48 8b 00             	mov    (%rax),%rax
    1ef5:	48 83 c5 01          	add    $0x1,%rbp
    1ef9:	48 0f be db          	movsbq %bl,%rbx
    1efd:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1f02:	75 e1                	jne    1ee5 <blank_line+0xd>
    1f04:	b8 00 00 00 00       	mov    $0x0,%eax
    1f09:	eb 05                	jmp    1f10 <blank_line+0x38>
    1f0b:	b8 01 00 00 00       	mov    $0x1,%eax
    1f10:	48 83 c4 08          	add    $0x8,%rsp
    1f14:	5b                   	pop    %rbx
    1f15:	5d                   	pop    %rbp
    1f16:	c3                   	ret    

0000000000001f17 <skip>:
    1f17:	f3 0f 1e fa          	endbr64 
    1f1b:	53                   	push   %rbx
    1f1c:	48 63 15 69 65 00 00 	movslq 0x6569(%rip),%rdx        # 848c <num_input_strings>
    1f23:	48 89 d0             	mov    %rdx,%rax
    1f26:	48 c1 e0 04          	shl    $0x4,%rax
    1f2a:	48 29 d0             	sub    %rdx,%rax
    1f2d:	48 8d 15 6c 65 00 00 	lea    0x656c(%rip),%rdx        # 84a0 <input_strings>
    1f34:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    1f38:	48 8b 15 51 65 00 00 	mov    0x6551(%rip),%rdx        # 8490 <infile>
    1f3f:	be 78 00 00 00       	mov    $0x78,%esi
    1f44:	e8 77 f3 ff ff       	call   12c0 <fgets@plt>
    1f49:	48 89 c3             	mov    %rax,%rbx
    1f4c:	48 85 c0             	test   %rax,%rax
    1f4f:	74 0c                	je     1f5d <skip+0x46>
    1f51:	48 89 c7             	mov    %rax,%rdi
    1f54:	e8 7f ff ff ff       	call   1ed8 <blank_line>
    1f59:	85 c0                	test   %eax,%eax
    1f5b:	75 bf                	jne    1f1c <skip+0x5>
    1f5d:	48 89 d8             	mov    %rbx,%rax
    1f60:	5b                   	pop    %rbx
    1f61:	c3                   	ret    

0000000000001f62 <send_msg>:
    1f62:	f3 0f 1e fa          	endbr64 
    1f66:	41 55                	push   %r13
    1f68:	41 54                	push   %r12
    1f6a:	55                   	push   %rbp
    1f6b:	53                   	push   %rbx
    1f6c:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1f73:	ff 
    1f74:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1f7b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1f80:	4c 39 dc             	cmp    %r11,%rsp
    1f83:	75 ef                	jne    1f74 <send_msg+0x12>
    1f85:	48 83 ec 58          	sub    $0x58,%rsp
    1f89:	89 fa                	mov    %edi,%edx
    1f8b:	49 89 f4             	mov    %rsi,%r12
    1f8e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f95:	00 00 
    1f97:	48 89 84 24 48 40 00 	mov    %rax,0x4048(%rsp)
    1f9e:	00 
    1f9f:	31 c0                	xor    %eax,%eax
    1fa1:	8b 35 e5 64 00 00    	mov    0x64e5(%rip),%esi        # 848c <num_input_strings>
    1fa7:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1faa:	48 98                	cltq   
    1fac:	48 89 c1             	mov    %rax,%rcx
    1faf:	48 c1 e1 04          	shl    $0x4,%rcx
    1fb3:	48 29 c1             	sub    %rax,%rcx
    1fb6:	48 89 c8             	mov    %rcx,%rax
    1fb9:	48 8d 0d e0 64 00 00 	lea    0x64e0(%rip),%rcx        # 84a0 <input_strings>
    1fc0:	4c 8d 04 c1          	lea    (%rcx,%rax,8),%r8
    1fc4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1fcb:	b8 00 00 00 00       	mov    $0x0,%eax
    1fd0:	4c 89 c7             	mov    %r8,%rdi
    1fd3:	f2 ae                	repnz scas %es:(%rdi),%al
    1fd5:	48 89 c8             	mov    %rcx,%rax
    1fd8:	48 f7 d0             	not    %rax
    1fdb:	48 83 c0 63          	add    $0x63,%rax
    1fdf:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1fe5:	0f 87 b3 00 00 00    	ja     209e <send_msg+0x13c>
    1feb:	85 d2                	test   %edx,%edx
    1fed:	0f 84 cb 00 00 00    	je     20be <send_msg+0x15c>
    1ff3:	48 8d 05 1b 26 00 00 	lea    0x261b(%rip),%rax        # 4615 <transition_table+0x2f5>
    1ffa:	48 8d 5c 24 40       	lea    0x40(%rsp),%rbx
    1fff:	48 83 ec 08          	sub    $0x8,%rsp
    2003:	41 50                	push   %r8
    2005:	56                   	push   %rsi
    2006:	50                   	push   %rax
    2007:	4c 8d 0d 32 58 00 00 	lea    0x5832(%rip),%r9        # 7840 <authkey>
    200e:	44 8b 05 2b 60 00 00 	mov    0x602b(%rip),%r8d        # 8040 <bomb_id>
    2015:	48 8d 0d 01 26 00 00 	lea    0x2601(%rip),%rcx        # 461d <transition_table+0x2fd>
    201c:	ba 00 20 00 00       	mov    $0x2000,%edx
    2021:	be 01 00 00 00       	mov    $0x1,%esi
    2026:	48 89 df             	mov    %rbx,%rdi
    2029:	b8 00 00 00 00       	mov    $0x0,%eax
    202e:	e8 8d f3 ff ff       	call   13c0 <__sprintf_chk@plt>
    2033:	48 83 c4 20          	add    $0x20,%rsp
    2037:	4c 8d 8c 24 40 20 00 	lea    0x2040(%rsp),%r9
    203e:	00 
    203f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    2045:	48 89 d9             	mov    %rbx,%rcx
    2048:	48 8d 15 f1 4f 00 00 	lea    0x4ff1(%rip),%rdx        # 7040 <lab>
    204f:	48 8d 35 ea 53 00 00 	lea    0x53ea(%rip),%rsi        # 7440 <course>
    2056:	48 8d 3d e3 5b 00 00 	lea    0x5be3(%rip),%rdi        # 7c40 <userid>
    205d:	e8 70 11 00 00       	call   31d2 <driver_post>
    2062:	89 c5                	mov    %eax,%ebp
    2064:	48 89 e7             	mov    %rsp,%rdi
    2067:	be 40 00 00 00       	mov    $0x40,%esi
    206c:	e8 ef f2 ff ff       	call   1360 <gethostname@plt>
    2071:	41 89 c5             	mov    %eax,%r13d
    2074:	85 c0                	test   %eax,%eax
    2076:	75 52                	jne    20ca <send_msg+0x168>
    2078:	89 c3                	mov    %eax,%ebx
    207a:	48 63 c3             	movslq %ebx,%rax
    207d:	48 8d 15 1c 60 00 00 	lea    0x601c(%rip),%rdx        # 80a0 <host_table>
    2084:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    2088:	48 85 ff             	test   %rdi,%rdi
    208b:	74 59                	je     20e6 <send_msg+0x184>
    208d:	48 89 e6             	mov    %rsp,%rsi
    2090:	e8 9b f1 ff ff       	call   1230 <strcasecmp@plt>
    2095:	85 c0                	test   %eax,%eax
    2097:	74 47                	je     20e0 <send_msg+0x17e>
    2099:	83 c3 01             	add    $0x1,%ebx
    209c:	eb dc                	jmp    207a <send_msg+0x118>
    209e:	48 8d 35 5b 23 00 00 	lea    0x235b(%rip),%rsi        # 4400 <transition_table+0xe0>
    20a5:	bf 01 00 00 00       	mov    $0x1,%edi
    20aa:	b8 00 00 00 00       	mov    $0x0,%eax
    20af:	e8 8c f2 ff ff       	call   1340 <__printf_chk@plt>
    20b4:	bf 08 00 00 00       	mov    $0x8,%edi
    20b9:	e8 b2 f2 ff ff       	call   1370 <exit@plt>
    20be:	48 8d 05 47 25 00 00 	lea    0x2547(%rip),%rax        # 460c <transition_table+0x2ec>
    20c5:	e9 30 ff ff ff       	jmp    1ffa <send_msg+0x98>
    20ca:	48 8d 3d 57 23 00 00 	lea    0x2357(%rip),%rdi        # 4428 <transition_table+0x108>
    20d1:	e8 8a f1 ff ff       	call   1260 <puts@plt>
    20d6:	bf 08 00 00 00       	mov    $0x8,%edi
    20db:	e8 90 f2 ff ff       	call   1370 <exit@plt>
    20e0:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    20e6:	41 83 fd 01          	cmp    $0x1,%r13d
    20ea:	74 25                	je     2111 <send_msg+0x1af>
    20ec:	85 ed                	test   %ebp,%ebp
    20ee:	78 34                	js     2124 <send_msg+0x1c2>
    20f0:	48 8b 84 24 48 40 00 	mov    0x4048(%rsp),%rax
    20f7:	00 
    20f8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    20ff:	00 00 
    2101:	75 38                	jne    213b <send_msg+0x1d9>
    2103:	48 81 c4 58 40 00 00 	add    $0x4058,%rsp
    210a:	5b                   	pop    %rbx
    210b:	5d                   	pop    %rbp
    210c:	41 5c                	pop    %r12
    210e:	41 5d                	pop    %r13
    2110:	c3                   	ret    
    2111:	48 63 db             	movslq %ebx,%rbx
    2114:	48 8d 05 e5 25 00 00 	lea    0x25e5(%rip),%rax        # 4700 <secret_tokens>
    211b:	8b 04 98             	mov    (%rax,%rbx,4),%eax
    211e:	41 89 04 24          	mov    %eax,(%r12)
    2122:	eb c8                	jmp    20ec <send_msg+0x18a>
    2124:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
    212b:	00 
    212c:	e8 2f f1 ff ff       	call   1260 <puts@plt>
    2131:	bf 00 00 00 00       	mov    $0x0,%edi
    2136:	e8 35 f2 ff ff       	call   1370 <exit@plt>
    213b:	e8 40 f1 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002140 <explode_bomb>:
    2140:	f3 0f 1e fa          	endbr64 
    2144:	55                   	push   %rbp
    2145:	53                   	push   %rbx
    2146:	48 83 ec 68          	sub    $0x68,%rsp
    214a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2151:	00 00 
    2153:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2158:	31 c0                	xor    %eax,%eax
    215a:	48 8d 3d cb 24 00 00 	lea    0x24cb(%rip),%rdi        # 462c <transition_table+0x30c>
    2161:	e8 fa f0 ff ff       	call   1260 <puts@plt>
    2166:	48 8d 3d c8 24 00 00 	lea    0x24c8(%rip),%rdi        # 4635 <transition_table+0x315>
    216d:	e8 ee f0 ff ff       	call   1260 <puts@plt>
    2172:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2177:	be 40 00 00 00       	mov    $0x40,%esi
    217c:	e8 df f1 ff ff       	call   1360 <gethostname@plt>
    2181:	85 c0                	test   %eax,%eax
    2183:	75 2a                	jne    21af <explode_bomb+0x6f>
    2185:	89 c5                	mov    %eax,%ebp
    2187:	89 c3                	mov    %eax,%ebx
    2189:	48 63 c3             	movslq %ebx,%rax
    218c:	48 8d 15 0d 5f 00 00 	lea    0x5f0d(%rip),%rdx        # 80a0 <host_table>
    2193:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    2197:	48 85 ff             	test   %rdi,%rdi
    219a:	74 2e                	je     21ca <explode_bomb+0x8a>
    219c:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    21a1:	e8 8a f0 ff ff       	call   1230 <strcasecmp@plt>
    21a6:	85 c0                	test   %eax,%eax
    21a8:	74 1b                	je     21c5 <explode_bomb+0x85>
    21aa:	83 c3 01             	add    $0x1,%ebx
    21ad:	eb da                	jmp    2189 <explode_bomb+0x49>
    21af:	48 8d 3d 72 22 00 00 	lea    0x2272(%rip),%rdi        # 4428 <transition_table+0x108>
    21b6:	e8 a5 f0 ff ff       	call   1260 <puts@plt>
    21bb:	bf 08 00 00 00       	mov    $0x8,%edi
    21c0:	e8 ab f1 ff ff       	call   1370 <exit@plt>
    21c5:	bd 01 00 00 00       	mov    $0x1,%ebp
    21ca:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    21d1:	00 
    21d2:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
    21d7:	bf 00 00 00 00       	mov    $0x0,%edi
    21dc:	e8 81 fd ff ff       	call   1f62 <send_msg>
    21e1:	48 63 db             	movslq %ebx,%rbx
    21e4:	48 8d 05 15 25 00 00 	lea    0x2515(%rip),%rax        # 4700 <secret_tokens>
    21eb:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    21ef:	39 0c 98             	cmp    %ecx,(%rax,%rbx,4)
    21f2:	75 04                	jne    21f8 <explode_bomb+0xb8>
    21f4:	85 ed                	test   %ebp,%ebp
    21f6:	75 20                	jne    2218 <explode_bomb+0xd8>
    21f8:	48 8d 35 51 22 00 00 	lea    0x2251(%rip),%rsi        # 4450 <transition_table+0x130>
    21ff:	bf 01 00 00 00       	mov    $0x1,%edi
    2204:	b8 00 00 00 00       	mov    $0x0,%eax
    2209:	e8 32 f1 ff ff       	call   1340 <__printf_chk@plt>
    220e:	bf 08 00 00 00       	mov    $0x8,%edi
    2213:	e8 58 f1 ff ff       	call   1370 <exit@plt>
    2218:	48 8d 3d 79 22 00 00 	lea    0x2279(%rip),%rdi        # 4498 <transition_table+0x178>
    221f:	e8 3c f0 ff ff       	call   1260 <puts@plt>
    2224:	bf 08 00 00 00       	mov    $0x8,%edi
    2229:	e8 42 f1 ff ff       	call   1370 <exit@plt>

000000000000222e <read_six_numbers>:
    222e:	f3 0f 1e fa          	endbr64 
    2232:	48 83 ec 08          	sub    $0x8,%rsp
    2236:	48 89 f2             	mov    %rsi,%rdx
    2239:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    223d:	48 8d 46 14          	lea    0x14(%rsi),%rax
    2241:	50                   	push   %rax
    2242:	48 8d 46 10          	lea    0x10(%rsi),%rax
    2246:	50                   	push   %rax
    2247:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    224b:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    224f:	48 8d 35 f6 23 00 00 	lea    0x23f6(%rip),%rsi        # 464c <transition_table+0x32c>
    2256:	b8 00 00 00 00       	mov    $0x0,%eax
    225b:	e8 d0 f0 ff ff       	call   1330 <__isoc99_sscanf@plt>
    2260:	48 83 c4 10          	add    $0x10,%rsp
    2264:	83 f8 05             	cmp    $0x5,%eax
    2267:	7e 05                	jle    226e <read_six_numbers+0x40>
    2269:	48 83 c4 08          	add    $0x8,%rsp
    226d:	c3                   	ret    
    226e:	e8 cd fe ff ff       	call   2140 <explode_bomb>

0000000000002273 <read_line>:
    2273:	f3 0f 1e fa          	endbr64 
    2277:	48 83 ec 08          	sub    $0x8,%rsp
    227b:	b8 00 00 00 00       	mov    $0x0,%eax
    2280:	e8 92 fc ff ff       	call   1f17 <skip>
    2285:	48 85 c0             	test   %rax,%rax
    2288:	74 72                	je     22fc <read_line+0x89>
    228a:	8b 15 fc 61 00 00    	mov    0x61fc(%rip),%edx        # 848c <num_input_strings>
    2290:	48 63 ca             	movslq %edx,%rcx
    2293:	48 89 c8             	mov    %rcx,%rax
    2296:	48 c1 e0 04          	shl    $0x4,%rax
    229a:	48 29 c8             	sub    %rcx,%rax
    229d:	48 8d 0d fc 61 00 00 	lea    0x61fc(%rip),%rcx        # 84a0 <input_strings>
    22a4:	48 8d 34 c1          	lea    (%rcx,%rax,8),%rsi
    22a8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    22af:	b8 00 00 00 00       	mov    $0x0,%eax
    22b4:	48 89 f7             	mov    %rsi,%rdi
    22b7:	f2 ae                	repnz scas %es:(%rdi),%al
    22b9:	48 f7 d1             	not    %rcx
    22bc:	48 83 e9 01          	sub    $0x1,%rcx
    22c0:	83 f9 76             	cmp    $0x76,%ecx
    22c3:	0f 8f ab 00 00 00    	jg     2374 <read_line+0x101>
    22c9:	83 e9 01             	sub    $0x1,%ecx
    22cc:	48 63 c9             	movslq %ecx,%rcx
    22cf:	48 63 fa             	movslq %edx,%rdi
    22d2:	48 89 f8             	mov    %rdi,%rax
    22d5:	48 c1 e0 04          	shl    $0x4,%rax
    22d9:	48 29 f8             	sub    %rdi,%rax
    22dc:	48 8d 3d bd 61 00 00 	lea    0x61bd(%rip),%rdi        # 84a0 <input_strings>
    22e3:	48 8d 04 c7          	lea    (%rdi,%rax,8),%rax
    22e7:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    22eb:	83 c2 01             	add    $0x1,%edx
    22ee:	89 15 98 61 00 00    	mov    %edx,0x6198(%rip)        # 848c <num_input_strings>
    22f4:	48 89 f0             	mov    %rsi,%rax
    22f7:	48 83 c4 08          	add    $0x8,%rsp
    22fb:	c3                   	ret    
    22fc:	48 8b 05 6d 61 00 00 	mov    0x616d(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    2303:	48 39 05 86 61 00 00 	cmp    %rax,0x6186(%rip)        # 8490 <infile>
    230a:	74 1b                	je     2327 <read_line+0xb4>
    230c:	48 8d 3d 69 23 00 00 	lea    0x2369(%rip),%rdi        # 467c <transition_table+0x35c>
    2313:	e8 f8 ee ff ff       	call   1210 <getenv@plt>
    2318:	48 85 c0             	test   %rax,%rax
    231b:	74 20                	je     233d <read_line+0xca>
    231d:	bf 00 00 00 00       	mov    $0x0,%edi
    2322:	e8 49 f0 ff ff       	call   1370 <exit@plt>
    2327:	48 8d 3d 30 23 00 00 	lea    0x2330(%rip),%rdi        # 465e <transition_table+0x33e>
    232e:	e8 2d ef ff ff       	call   1260 <puts@plt>
    2333:	bf 08 00 00 00       	mov    $0x8,%edi
    2338:	e8 33 f0 ff ff       	call   1370 <exit@plt>
    233d:	48 8b 05 2c 61 00 00 	mov    0x612c(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    2344:	48 89 05 45 61 00 00 	mov    %rax,0x6145(%rip)        # 8490 <infile>
    234b:	b8 00 00 00 00       	mov    $0x0,%eax
    2350:	e8 c2 fb ff ff       	call   1f17 <skip>
    2355:	48 85 c0             	test   %rax,%rax
    2358:	0f 85 2c ff ff ff    	jne    228a <read_line+0x17>
    235e:	48 8d 3d f9 22 00 00 	lea    0x22f9(%rip),%rdi        # 465e <transition_table+0x33e>
    2365:	e8 f6 ee ff ff       	call   1260 <puts@plt>
    236a:	bf 00 00 00 00       	mov    $0x0,%edi
    236f:	e8 fc ef ff ff       	call   1370 <exit@plt>
    2374:	48 8d 3d 0c 23 00 00 	lea    0x230c(%rip),%rdi        # 4687 <transition_table+0x367>
    237b:	e8 e0 ee ff ff       	call   1260 <puts@plt>
    2380:	8b 05 06 61 00 00    	mov    0x6106(%rip),%eax        # 848c <num_input_strings>
    2386:	8d 50 01             	lea    0x1(%rax),%edx
    2389:	89 15 fd 60 00 00    	mov    %edx,0x60fd(%rip)        # 848c <num_input_strings>
    238f:	48 98                	cltq   
    2391:	48 6b c0 78          	imul   $0x78,%rax,%rax
    2395:	48 8d 15 04 61 00 00 	lea    0x6104(%rip),%rdx        # 84a0 <input_strings>
    239c:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    23a3:	75 6e 63 
    23a6:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    23ad:	2a 2a 00 
    23b0:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    23b4:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    23b9:	e8 82 fd ff ff       	call   2140 <explode_bomb>

00000000000023be <phase_defused>:
    23be:	f3 0f 1e fa          	endbr64 
    23c2:	41 54                	push   %r12
    23c4:	55                   	push   %rbp
    23c5:	53                   	push   %rbx
    23c6:	48 83 ec 50          	sub    $0x50,%rsp
    23ca:	49 89 fc             	mov    %rdi,%r12
    23cd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    23d4:	00 00 
    23d6:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    23db:	31 c0                	xor    %eax,%eax
    23dd:	48 89 e7             	mov    %rsp,%rdi
    23e0:	be 40 00 00 00       	mov    $0x40,%esi
    23e5:	e8 76 ef ff ff       	call   1360 <gethostname@plt>
    23ea:	85 c0                	test   %eax,%eax
    23ec:	75 06                	jne    23f4 <phase_defused+0x36>
    23ee:	89 c5                	mov    %eax,%ebp
    23f0:	89 c3                	mov    %eax,%ebx
    23f2:	eb 19                	jmp    240d <phase_defused+0x4f>
    23f4:	48 8d 3d 2d 20 00 00 	lea    0x202d(%rip),%rdi        # 4428 <transition_table+0x108>
    23fb:	e8 60 ee ff ff       	call   1260 <puts@plt>
    2400:	bf 08 00 00 00       	mov    $0x8,%edi
    2405:	e8 66 ef ff ff       	call   1370 <exit@plt>
    240a:	83 c3 01             	add    $0x1,%ebx
    240d:	48 63 c3             	movslq %ebx,%rax
    2410:	48 8d 15 89 5c 00 00 	lea    0x5c89(%rip),%rdx        # 80a0 <host_table>
    2417:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    241b:	48 85 ff             	test   %rdi,%rdi
    241e:	74 11                	je     2431 <phase_defused+0x73>
    2420:	48 89 e6             	mov    %rsp,%rsi
    2423:	e8 08 ee ff ff       	call   1230 <strcasecmp@plt>
    2428:	85 c0                	test   %eax,%eax
    242a:	75 de                	jne    240a <phase_defused+0x4c>
    242c:	bd 01 00 00 00       	mov    $0x1,%ebp
    2431:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
    2438:	00 
    2439:	4c 89 e6             	mov    %r12,%rsi
    243c:	bf 01 00 00 00       	mov    $0x1,%edi
    2441:	e8 1c fb ff ff       	call   1f62 <send_msg>
    2446:	48 63 db             	movslq %ebx,%rbx
    2449:	48 8d 05 b0 22 00 00 	lea    0x22b0(%rip),%rax        # 4700 <secret_tokens>
    2450:	8b 04 98             	mov    (%rax,%rbx,4),%eax
    2453:	41 39 04 24          	cmp    %eax,(%r12)
    2457:	75 2a                	jne    2483 <phase_defused+0xc5>
    2459:	85 ed                	test   %ebp,%ebp
    245b:	74 26                	je     2483 <phase_defused+0xc5>
    245d:	83 3d 28 60 00 00 06 	cmpl   $0x6,0x6028(%rip)        # 848c <num_input_strings>
    2464:	74 3d                	je     24a3 <phase_defused+0xe5>
    2466:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    246b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2472:	00 00 
    2474:	0f 85 87 00 00 00    	jne    2501 <phase_defused+0x143>
    247a:	48 83 c4 50          	add    $0x50,%rsp
    247e:	5b                   	pop    %rbx
    247f:	5d                   	pop    %rbp
    2480:	41 5c                	pop    %r12
    2482:	c3                   	ret    
    2483:	48 8d 35 c6 1f 00 00 	lea    0x1fc6(%rip),%rsi        # 4450 <transition_table+0x130>
    248a:	bf 01 00 00 00       	mov    $0x1,%edi
    248f:	b8 00 00 00 00       	mov    $0x0,%eax
    2494:	e8 a7 ee ff ff       	call   1340 <__printf_chk@plt>
    2499:	bf 08 00 00 00       	mov    $0x8,%edi
    249e:	e8 cd ee ff ff       	call   1370 <exit@plt>
    24a3:	e8 b0 f1 ff ff       	call   1658 <abracadabra>
    24a8:	85 c0                	test   %eax,%eax
    24aa:	75 1a                	jne    24c6 <phase_defused+0x108>
    24ac:	48 8d 3d ad 20 00 00 	lea    0x20ad(%rip),%rdi        # 4560 <transition_table+0x240>
    24b3:	e8 a8 ed ff ff       	call   1260 <puts@plt>
    24b8:	48 8d 3d d1 20 00 00 	lea    0x20d1(%rip),%rdi        # 4590 <transition_table+0x270>
    24bf:	e8 9c ed ff ff       	call   1260 <puts@plt>
    24c4:	eb a0                	jmp    2466 <phase_defused+0xa8>
    24c6:	e8 3e f2 ff ff       	call   1709 <alohomora>
    24cb:	85 c0                	test   %eax,%eax
    24cd:	74 24                	je     24f3 <phase_defused+0x135>
    24cf:	48 8d 3d ea 1f 00 00 	lea    0x1fea(%rip),%rdi        # 44c0 <transition_table+0x1a0>
    24d6:	e8 85 ed ff ff       	call   1260 <puts@plt>
    24db:	48 8d 3d 06 20 00 00 	lea    0x2006(%rip),%rdi        # 44e8 <transition_table+0x1c8>
    24e2:	e8 79 ed ff ff       	call   1260 <puts@plt>
    24e7:	b8 00 00 00 00       	mov    $0x0,%eax
    24ec:	e8 32 f7 ff ff       	call   1c23 <secret_phase>
    24f1:	eb b9                	jmp    24ac <phase_defused+0xee>
    24f3:	48 8d 3d 26 20 00 00 	lea    0x2026(%rip),%rdi        # 4520 <transition_table+0x200>
    24fa:	e8 61 ed ff ff       	call   1260 <puts@plt>
    24ff:	eb ab                	jmp    24ac <phase_defused+0xee>
    2501:	e8 7a ed ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002506 <rio_readinitb>:
    2506:	89 37                	mov    %esi,(%rdi)
    2508:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    250f:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2513:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2517:	c3                   	ret    

0000000000002518 <sigalrm_handler>:
    2518:	f3 0f 1e fa          	endbr64 
    251c:	50                   	push   %rax
    251d:	58                   	pop    %rax
    251e:	48 83 ec 08          	sub    $0x8,%rsp
    2522:	b9 00 00 00 00       	mov    $0x0,%ecx
    2527:	48 8d 15 f2 21 00 00 	lea    0x21f2(%rip),%rdx        # 4720 <secret_tokens+0x20>
    252e:	be 01 00 00 00       	mov    $0x1,%esi
    2533:	48 8b 3d 46 5f 00 00 	mov    0x5f46(%rip),%rdi        # 8480 <stderr@GLIBC_2.2.5>
    253a:	b8 00 00 00 00       	mov    $0x0,%eax
    253f:	e8 4c ee ff ff       	call   1390 <__fprintf_chk@plt>
    2544:	bf 01 00 00 00       	mov    $0x1,%edi
    2549:	e8 22 ee ff ff       	call   1370 <exit@plt>

000000000000254e <rio_writen>:
    254e:	41 55                	push   %r13
    2550:	41 54                	push   %r12
    2552:	55                   	push   %rbp
    2553:	53                   	push   %rbx
    2554:	48 83 ec 08          	sub    $0x8,%rsp
    2558:	41 89 fc             	mov    %edi,%r12d
    255b:	48 89 f5             	mov    %rsi,%rbp
    255e:	49 89 d5             	mov    %rdx,%r13
    2561:	48 89 d3             	mov    %rdx,%rbx
    2564:	eb 06                	jmp    256c <rio_writen+0x1e>
    2566:	48 29 c3             	sub    %rax,%rbx
    2569:	48 01 c5             	add    %rax,%rbp
    256c:	48 85 db             	test   %rbx,%rbx
    256f:	74 24                	je     2595 <rio_writen+0x47>
    2571:	48 89 da             	mov    %rbx,%rdx
    2574:	48 89 ee             	mov    %rbp,%rsi
    2577:	44 89 e7             	mov    %r12d,%edi
    257a:	e8 f1 ec ff ff       	call   1270 <write@plt>
    257f:	48 85 c0             	test   %rax,%rax
    2582:	7f e2                	jg     2566 <rio_writen+0x18>
    2584:	e8 b7 ec ff ff       	call   1240 <__errno_location@plt>
    2589:	83 38 04             	cmpl   $0x4,(%rax)
    258c:	75 15                	jne    25a3 <rio_writen+0x55>
    258e:	b8 00 00 00 00       	mov    $0x0,%eax
    2593:	eb d1                	jmp    2566 <rio_writen+0x18>
    2595:	4c 89 e8             	mov    %r13,%rax
    2598:	48 83 c4 08          	add    $0x8,%rsp
    259c:	5b                   	pop    %rbx
    259d:	5d                   	pop    %rbp
    259e:	41 5c                	pop    %r12
    25a0:	41 5d                	pop    %r13
    25a2:	c3                   	ret    
    25a3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    25aa:	eb ec                	jmp    2598 <rio_writen+0x4a>

00000000000025ac <rio_read>:
    25ac:	41 55                	push   %r13
    25ae:	41 54                	push   %r12
    25b0:	55                   	push   %rbp
    25b1:	53                   	push   %rbx
    25b2:	48 83 ec 08          	sub    $0x8,%rsp
    25b6:	48 89 fb             	mov    %rdi,%rbx
    25b9:	49 89 f5             	mov    %rsi,%r13
    25bc:	49 89 d4             	mov    %rdx,%r12
    25bf:	eb 17                	jmp    25d8 <rio_read+0x2c>
    25c1:	e8 7a ec ff ff       	call   1240 <__errno_location@plt>
    25c6:	83 38 04             	cmpl   $0x4,(%rax)
    25c9:	74 0d                	je     25d8 <rio_read+0x2c>
    25cb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    25d2:	eb 54                	jmp    2628 <rio_read+0x7c>
    25d4:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    25d8:	8b 6b 04             	mov    0x4(%rbx),%ebp
    25db:	85 ed                	test   %ebp,%ebp
    25dd:	7f 23                	jg     2602 <rio_read+0x56>
    25df:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    25e3:	8b 3b                	mov    (%rbx),%edi
    25e5:	ba 00 20 00 00       	mov    $0x2000,%edx
    25ea:	48 89 ee             	mov    %rbp,%rsi
    25ed:	e8 be ec ff ff       	call   12b0 <read@plt>
    25f2:	89 43 04             	mov    %eax,0x4(%rbx)
    25f5:	85 c0                	test   %eax,%eax
    25f7:	78 c8                	js     25c1 <rio_read+0x15>
    25f9:	75 d9                	jne    25d4 <rio_read+0x28>
    25fb:	b8 00 00 00 00       	mov    $0x0,%eax
    2600:	eb 26                	jmp    2628 <rio_read+0x7c>
    2602:	89 e8                	mov    %ebp,%eax
    2604:	4c 39 e0             	cmp    %r12,%rax
    2607:	72 03                	jb     260c <rio_read+0x60>
    2609:	44 89 e5             	mov    %r12d,%ebp
    260c:	4c 63 e5             	movslq %ebp,%r12
    260f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    2613:	4c 89 e2             	mov    %r12,%rdx
    2616:	4c 89 ef             	mov    %r13,%rdi
    2619:	e8 e2 ec ff ff       	call   1300 <memcpy@plt>
    261e:	4c 01 63 08          	add    %r12,0x8(%rbx)
    2622:	29 6b 04             	sub    %ebp,0x4(%rbx)
    2625:	4c 89 e0             	mov    %r12,%rax
    2628:	48 83 c4 08          	add    $0x8,%rsp
    262c:	5b                   	pop    %rbx
    262d:	5d                   	pop    %rbp
    262e:	41 5c                	pop    %r12
    2630:	41 5d                	pop    %r13
    2632:	c3                   	ret    

0000000000002633 <rio_readlineb>:
    2633:	41 55                	push   %r13
    2635:	41 54                	push   %r12
    2637:	55                   	push   %rbp
    2638:	53                   	push   %rbx
    2639:	48 83 ec 18          	sub    $0x18,%rsp
    263d:	49 89 fd             	mov    %rdi,%r13
    2640:	48 89 f5             	mov    %rsi,%rbp
    2643:	49 89 d4             	mov    %rdx,%r12
    2646:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    264d:	00 00 
    264f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2654:	31 c0                	xor    %eax,%eax
    2656:	bb 01 00 00 00       	mov    $0x1,%ebx
    265b:	eb 18                	jmp    2675 <rio_readlineb+0x42>
    265d:	85 c0                	test   %eax,%eax
    265f:	75 65                	jne    26c6 <rio_readlineb+0x93>
    2661:	48 83 fb 01          	cmp    $0x1,%rbx
    2665:	75 3d                	jne    26a4 <rio_readlineb+0x71>
    2667:	b8 00 00 00 00       	mov    $0x0,%eax
    266c:	eb 3d                	jmp    26ab <rio_readlineb+0x78>
    266e:	48 83 c3 01          	add    $0x1,%rbx
    2672:	48 89 d5             	mov    %rdx,%rbp
    2675:	4c 39 e3             	cmp    %r12,%rbx
    2678:	73 2a                	jae    26a4 <rio_readlineb+0x71>
    267a:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    267f:	ba 01 00 00 00       	mov    $0x1,%edx
    2684:	4c 89 ef             	mov    %r13,%rdi
    2687:	e8 20 ff ff ff       	call   25ac <rio_read>
    268c:	83 f8 01             	cmp    $0x1,%eax
    268f:	75 cc                	jne    265d <rio_readlineb+0x2a>
    2691:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    2695:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    269a:	88 45 00             	mov    %al,0x0(%rbp)
    269d:	3c 0a                	cmp    $0xa,%al
    269f:	75 cd                	jne    266e <rio_readlineb+0x3b>
    26a1:	48 89 d5             	mov    %rdx,%rbp
    26a4:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    26a8:	48 89 d8             	mov    %rbx,%rax
    26ab:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    26b0:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    26b7:	00 00 
    26b9:	75 14                	jne    26cf <rio_readlineb+0x9c>
    26bb:	48 83 c4 18          	add    $0x18,%rsp
    26bf:	5b                   	pop    %rbx
    26c0:	5d                   	pop    %rbp
    26c1:	41 5c                	pop    %r12
    26c3:	41 5d                	pop    %r13
    26c5:	c3                   	ret    
    26c6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    26cd:	eb dc                	jmp    26ab <rio_readlineb+0x78>
    26cf:	e8 ac eb ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000026d4 <urlencode>:
    26d4:	41 54                	push   %r12
    26d6:	55                   	push   %rbp
    26d7:	53                   	push   %rbx
    26d8:	48 83 ec 10          	sub    $0x10,%rsp
    26dc:	48 89 fb             	mov    %rdi,%rbx
    26df:	48 89 f5             	mov    %rsi,%rbp
    26e2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    26e9:	00 00 
    26eb:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    26f0:	31 c0                	xor    %eax,%eax
    26f2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    26f9:	f2 ae                	repnz scas %es:(%rdi),%al
    26fb:	48 f7 d1             	not    %rcx
    26fe:	8d 41 ff             	lea    -0x1(%rcx),%eax
    2701:	eb 0f                	jmp    2712 <urlencode+0x3e>
    2703:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2707:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    270b:	48 83 c3 01          	add    $0x1,%rbx
    270f:	44 89 e0             	mov    %r12d,%eax
    2712:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2716:	85 c0                	test   %eax,%eax
    2718:	0f 84 a8 00 00 00    	je     27c6 <urlencode+0xf2>
    271e:	44 0f b6 03          	movzbl (%rbx),%r8d
    2722:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2726:	0f 94 c2             	sete   %dl
    2729:	41 80 f8 2d          	cmp    $0x2d,%r8b
    272d:	0f 94 c0             	sete   %al
    2730:	08 c2                	or     %al,%dl
    2732:	75 cf                	jne    2703 <urlencode+0x2f>
    2734:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2738:	74 c9                	je     2703 <urlencode+0x2f>
    273a:	41 80 f8 5f          	cmp    $0x5f,%r8b
    273e:	74 c3                	je     2703 <urlencode+0x2f>
    2740:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2744:	3c 09                	cmp    $0x9,%al
    2746:	76 bb                	jbe    2703 <urlencode+0x2f>
    2748:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    274c:	3c 19                	cmp    $0x19,%al
    274e:	76 b3                	jbe    2703 <urlencode+0x2f>
    2750:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2754:	3c 19                	cmp    $0x19,%al
    2756:	76 ab                	jbe    2703 <urlencode+0x2f>
    2758:	41 80 f8 20          	cmp    $0x20,%r8b
    275c:	74 56                	je     27b4 <urlencode+0xe0>
    275e:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2762:	3c 5f                	cmp    $0x5f,%al
    2764:	0f 96 c2             	setbe  %dl
    2767:	41 80 f8 09          	cmp    $0x9,%r8b
    276b:	0f 94 c0             	sete   %al
    276e:	08 c2                	or     %al,%dl
    2770:	74 4f                	je     27c1 <urlencode+0xed>
    2772:	48 89 e7             	mov    %rsp,%rdi
    2775:	45 0f b6 c0          	movzbl %r8b,%r8d
    2779:	48 8d 0d 55 20 00 00 	lea    0x2055(%rip),%rcx        # 47d5 <secret_tokens+0xd5>
    2780:	ba 08 00 00 00       	mov    $0x8,%edx
    2785:	be 01 00 00 00       	mov    $0x1,%esi
    278a:	b8 00 00 00 00       	mov    $0x0,%eax
    278f:	e8 2c ec ff ff       	call   13c0 <__sprintf_chk@plt>
    2794:	0f b6 04 24          	movzbl (%rsp),%eax
    2798:	88 45 00             	mov    %al,0x0(%rbp)
    279b:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    27a0:	88 45 01             	mov    %al,0x1(%rbp)
    27a3:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    27a8:	88 45 02             	mov    %al,0x2(%rbp)
    27ab:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    27af:	e9 57 ff ff ff       	jmp    270b <urlencode+0x37>
    27b4:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    27b8:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    27bc:	e9 4a ff ff ff       	jmp    270b <urlencode+0x37>
    27c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27c6:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    27cb:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    27d2:	00 00 
    27d4:	75 09                	jne    27df <urlencode+0x10b>
    27d6:	48 83 c4 10          	add    $0x10,%rsp
    27da:	5b                   	pop    %rbx
    27db:	5d                   	pop    %rbp
    27dc:	41 5c                	pop    %r12
    27de:	c3                   	ret    
    27df:	e8 9c ea ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000027e4 <submitr>:
    27e4:	f3 0f 1e fa          	endbr64 
    27e8:	41 57                	push   %r15
    27ea:	41 56                	push   %r14
    27ec:	41 55                	push   %r13
    27ee:	41 54                	push   %r12
    27f0:	55                   	push   %rbp
    27f1:	53                   	push   %rbx
    27f2:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    27f9:	ff 
    27fa:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2801:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2806:	4c 39 dc             	cmp    %r11,%rsp
    2809:	75 ef                	jne    27fa <submitr+0x16>
    280b:	48 83 ec 68          	sub    $0x68,%rsp
    280f:	49 89 fc             	mov    %rdi,%r12
    2812:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
    2816:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    281b:	49 89 cd             	mov    %rcx,%r13
    281e:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2823:	4d 89 ce             	mov    %r9,%r14
    2826:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    282d:	00 
    282e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2835:	00 00 
    2837:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    283e:	00 
    283f:	31 c0                	xor    %eax,%eax
    2841:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2848:	00 
    2849:	ba 00 00 00 00       	mov    $0x0,%edx
    284e:	be 01 00 00 00       	mov    $0x1,%esi
    2853:	bf 02 00 00 00       	mov    $0x2,%edi
    2858:	e8 73 eb ff ff       	call   13d0 <socket@plt>
    285d:	85 c0                	test   %eax,%eax
    285f:	0f 88 a5 02 00 00    	js     2b0a <submitr+0x326>
    2865:	89 c3                	mov    %eax,%ebx
    2867:	4c 89 e7             	mov    %r12,%rdi
    286a:	e8 71 ea ff ff       	call   12e0 <gethostbyname@plt>
    286f:	48 85 c0             	test   %rax,%rax
    2872:	0f 84 de 02 00 00    	je     2b56 <submitr+0x372>
    2878:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    287d:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    2884:	00 00 
    2886:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    288d:	00 00 
    288f:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2896:	48 63 50 14          	movslq 0x14(%rax),%rdx
    289a:	48 8b 40 18          	mov    0x18(%rax),%rax
    289e:	48 8b 30             	mov    (%rax),%rsi
    28a1:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    28a6:	b9 0c 00 00 00       	mov    $0xc,%ecx
    28ab:	e8 40 ea ff ff       	call   12f0 <__memmove_chk@plt>
    28b0:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
    28b5:	66 c1 c6 08          	rol    $0x8,%si
    28b9:	66 89 74 24 32       	mov    %si,0x32(%rsp)
    28be:	ba 10 00 00 00       	mov    $0x10,%edx
    28c3:	4c 89 fe             	mov    %r15,%rsi
    28c6:	89 df                	mov    %ebx,%edi
    28c8:	e8 b3 ea ff ff       	call   1380 <connect@plt>
    28cd:	85 c0                	test   %eax,%eax
    28cf:	0f 88 f7 02 00 00    	js     2bcc <submitr+0x3e8>
    28d5:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    28dc:	b8 00 00 00 00       	mov    $0x0,%eax
    28e1:	48 89 f1             	mov    %rsi,%rcx
    28e4:	4c 89 f7             	mov    %r14,%rdi
    28e7:	f2 ae                	repnz scas %es:(%rdi),%al
    28e9:	48 89 ca             	mov    %rcx,%rdx
    28ec:	48 f7 d2             	not    %rdx
    28ef:	48 89 f1             	mov    %rsi,%rcx
    28f2:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    28f7:	f2 ae                	repnz scas %es:(%rdi),%al
    28f9:	48 f7 d1             	not    %rcx
    28fc:	49 89 c8             	mov    %rcx,%r8
    28ff:	48 89 f1             	mov    %rsi,%rcx
    2902:	4c 89 ef             	mov    %r13,%rdi
    2905:	f2 ae                	repnz scas %es:(%rdi),%al
    2907:	48 f7 d1             	not    %rcx
    290a:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    290f:	48 89 f1             	mov    %rsi,%rcx
    2912:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2917:	f2 ae                	repnz scas %es:(%rdi),%al
    2919:	48 89 c8             	mov    %rcx,%rax
    291c:	48 f7 d0             	not    %rax
    291f:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    2924:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    2929:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    2930:	00 
    2931:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2937:	0f 87 f7 02 00 00    	ja     2c34 <submitr+0x450>
    293d:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    2944:	00 
    2945:	b9 00 04 00 00       	mov    $0x400,%ecx
    294a:	b8 00 00 00 00       	mov    $0x0,%eax
    294f:	48 89 f7             	mov    %rsi,%rdi
    2952:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2955:	4c 89 f7             	mov    %r14,%rdi
    2958:	e8 77 fd ff ff       	call   26d4 <urlencode>
    295d:	85 c0                	test   %eax,%eax
    295f:	0f 88 42 03 00 00    	js     2ca7 <submitr+0x4c3>
    2965:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    296c:	00 
    296d:	48 83 ec 08          	sub    $0x8,%rsp
    2971:	41 54                	push   %r12
    2973:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    297a:	00 
    297b:	50                   	push   %rax
    297c:	41 55                	push   %r13
    297e:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    2983:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2988:	48 8d 0d b9 1d 00 00 	lea    0x1db9(%rip),%rcx        # 4748 <secret_tokens+0x48>
    298f:	ba 00 20 00 00       	mov    $0x2000,%edx
    2994:	be 01 00 00 00       	mov    $0x1,%esi
    2999:	4c 89 ff             	mov    %r15,%rdi
    299c:	b8 00 00 00 00       	mov    $0x0,%eax
    29a1:	e8 1a ea ff ff       	call   13c0 <__sprintf_chk@plt>
    29a6:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    29ad:	b8 00 00 00 00       	mov    $0x0,%eax
    29b2:	4c 89 ff             	mov    %r15,%rdi
    29b5:	f2 ae                	repnz scas %es:(%rdi),%al
    29b7:	48 f7 d1             	not    %rcx
    29ba:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
    29be:	48 83 c4 20          	add    $0x20,%rsp
    29c2:	4c 89 fe             	mov    %r15,%rsi
    29c5:	89 df                	mov    %ebx,%edi
    29c7:	e8 82 fb ff ff       	call   254e <rio_writen>
    29cc:	48 85 c0             	test   %rax,%rax
    29cf:	0f 88 5d 03 00 00    	js     2d32 <submitr+0x54e>
    29d5:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    29da:	89 de                	mov    %ebx,%esi
    29dc:	4c 89 e7             	mov    %r12,%rdi
    29df:	e8 22 fb ff ff       	call   2506 <rio_readinitb>
    29e4:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    29eb:	00 
    29ec:	ba 00 20 00 00       	mov    $0x2000,%edx
    29f1:	4c 89 e7             	mov    %r12,%rdi
    29f4:	e8 3a fc ff ff       	call   2633 <rio_readlineb>
    29f9:	48 85 c0             	test   %rax,%rax
    29fc:	0f 8e 9c 03 00 00    	jle    2d9e <submitr+0x5ba>
    2a02:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    2a07:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2a0e:	00 
    2a0f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2a16:	00 
    2a17:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2a1e:	00 
    2a1f:	48 8d 35 b6 1d 00 00 	lea    0x1db6(%rip),%rsi        # 47dc <secret_tokens+0xdc>
    2a26:	b8 00 00 00 00       	mov    $0x0,%eax
    2a2b:	e8 00 e9 ff ff       	call   1330 <__isoc99_sscanf@plt>
    2a30:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2a37:	00 
    2a38:	b9 03 00 00 00       	mov    $0x3,%ecx
    2a3d:	48 8d 3d af 1d 00 00 	lea    0x1daf(%rip),%rdi        # 47f3 <secret_tokens+0xf3>
    2a44:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2a46:	0f 97 c0             	seta   %al
    2a49:	1c 00                	sbb    $0x0,%al
    2a4b:	84 c0                	test   %al,%al
    2a4d:	0f 84 cb 03 00 00    	je     2e1e <submitr+0x63a>
    2a53:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2a5a:	00 
    2a5b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2a60:	ba 00 20 00 00       	mov    $0x2000,%edx
    2a65:	e8 c9 fb ff ff       	call   2633 <rio_readlineb>
    2a6a:	48 85 c0             	test   %rax,%rax
    2a6d:	7f c1                	jg     2a30 <submitr+0x24c>
    2a6f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a76:	3a 20 43 
    2a79:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a80:	20 75 6e 
    2a83:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a87:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a8b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a92:	74 6f 20 
    2a95:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2a9c:	68 65 61 
    2a9f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2aa3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2aa7:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2aae:	66 72 6f 
    2ab1:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    2ab8:	6f 6c 61 
    2abb:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2abf:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2ac3:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    2aca:	76 65 72 
    2acd:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2ad1:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    2ad5:	89 df                	mov    %ebx,%edi
    2ad7:	e8 c4 e7 ff ff       	call   12a0 <close@plt>
    2adc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ae1:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    2ae8:	00 
    2ae9:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    2af0:	00 00 
    2af2:	0f 85 96 04 00 00    	jne    2f8e <submitr+0x7aa>
    2af8:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2aff:	5b                   	pop    %rbx
    2b00:	5d                   	pop    %rbp
    2b01:	41 5c                	pop    %r12
    2b03:	41 5d                	pop    %r13
    2b05:	41 5e                	pop    %r14
    2b07:	41 5f                	pop    %r15
    2b09:	c3                   	ret    
    2b0a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b11:	3a 20 43 
    2b14:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b1b:	20 75 6e 
    2b1e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b22:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b26:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b2d:	74 6f 20 
    2b30:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2b37:	65 20 73 
    2b3a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b3e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b42:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2b49:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2b4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b54:	eb 8b                	jmp    2ae1 <submitr+0x2fd>
    2b56:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2b5d:	3a 20 44 
    2b60:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2b67:	20 75 6e 
    2b6a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b6e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b72:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b79:	74 6f 20 
    2b7c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2b83:	76 65 20 
    2b86:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b8a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b8e:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2b95:	61 62 20 
    2b98:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    2b9f:	72 20 61 
    2ba2:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2ba6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2baa:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    2bb1:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    2bb7:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    2bbb:	89 df                	mov    %ebx,%edi
    2bbd:	e8 de e6 ff ff       	call   12a0 <close@plt>
    2bc2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bc7:	e9 15 ff ff ff       	jmp    2ae1 <submitr+0x2fd>
    2bcc:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2bd3:	3a 20 55 
    2bd6:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2bdd:	20 74 6f 
    2be0:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2be4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2be8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2bef:	65 63 74 
    2bf2:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2bf9:	68 65 20 
    2bfc:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c00:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c04:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2c0b:	61 62 20 
    2c0e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c12:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    2c19:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2c1f:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2c23:	89 df                	mov    %ebx,%edi
    2c25:	e8 76 e6 ff ff       	call   12a0 <close@plt>
    2c2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c2f:	e9 ad fe ff ff       	jmp    2ae1 <submitr+0x2fd>
    2c34:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2c3b:	3a 20 52 
    2c3e:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2c45:	20 73 74 
    2c48:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c4c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c50:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2c57:	74 6f 6f 
    2c5a:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2c61:	65 2e 20 
    2c64:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c68:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c6c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2c73:	61 73 65 
    2c76:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2c7d:	49 54 52 
    2c80:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c84:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c88:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2c8f:	55 46 00 
    2c92:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c96:	89 df                	mov    %ebx,%edi
    2c98:	e8 03 e6 ff ff       	call   12a0 <close@plt>
    2c9d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ca2:	e9 3a fe ff ff       	jmp    2ae1 <submitr+0x2fd>
    2ca7:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2cae:	3a 20 52 
    2cb1:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2cb8:	20 73 74 
    2cbb:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2cbf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2cc3:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2cca:	63 6f 6e 
    2ccd:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2cd4:	20 61 6e 
    2cd7:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2cdb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2cdf:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2ce6:	67 61 6c 
    2ce9:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2cf0:	6e 70 72 
    2cf3:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2cf7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2cfb:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2d02:	6c 65 20 
    2d05:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2d0c:	63 74 65 
    2d0f:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2d13:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2d17:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2d1d:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2d21:	89 df                	mov    %ebx,%edi
    2d23:	e8 78 e5 ff ff       	call   12a0 <close@plt>
    2d28:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d2d:	e9 af fd ff ff       	jmp    2ae1 <submitr+0x2fd>
    2d32:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d39:	3a 20 43 
    2d3c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d43:	20 75 6e 
    2d46:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d4a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d4e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d55:	74 6f 20 
    2d58:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2d5f:	20 74 6f 
    2d62:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d66:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d6a:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2d71:	41 75 74 
    2d74:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2d7b:	73 65 72 
    2d7e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d82:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d86:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2d8d:	89 df                	mov    %ebx,%edi
    2d8f:	e8 0c e5 ff ff       	call   12a0 <close@plt>
    2d94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d99:	e9 43 fd ff ff       	jmp    2ae1 <submitr+0x2fd>
    2d9e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2da5:	3a 20 43 
    2da8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2daf:	20 75 6e 
    2db2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2db6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2dba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2dc1:	74 6f 20 
    2dc4:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2dcb:	66 69 72 
    2dce:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2dd2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2dd6:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2ddd:	61 64 65 
    2de0:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    2de7:	6d 20 41 
    2dea:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2dee:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2df2:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    2df9:	62 20 73 
    2dfc:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2e00:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2e07:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2e0d:	89 df                	mov    %ebx,%edi
    2e0f:	e8 8c e4 ff ff       	call   12a0 <close@plt>
    2e14:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e19:	e9 c3 fc ff ff       	jmp    2ae1 <submitr+0x2fd>
    2e1e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2e25:	00 
    2e26:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2e2b:	ba 00 20 00 00       	mov    $0x2000,%edx
    2e30:	e8 fe f7 ff ff       	call   2633 <rio_readlineb>
    2e35:	48 85 c0             	test   %rax,%rax
    2e38:	0f 8e 96 00 00 00    	jle    2ed4 <submitr+0x6f0>
    2e3e:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2e43:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2e4a:	0f 85 05 01 00 00    	jne    2f55 <submitr+0x771>
    2e50:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2e57:	00 
    2e58:	48 89 ef             	mov    %rbp,%rdi
    2e5b:	e8 f0 e3 ff ff       	call   1250 <strcpy@plt>
    2e60:	89 df                	mov    %ebx,%edi
    2e62:	e8 39 e4 ff ff       	call   12a0 <close@plt>
    2e67:	b9 04 00 00 00       	mov    $0x4,%ecx
    2e6c:	48 8d 3d 7a 19 00 00 	lea    0x197a(%rip),%rdi        # 47ed <secret_tokens+0xed>
    2e73:	48 89 ee             	mov    %rbp,%rsi
    2e76:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2e78:	0f 97 c0             	seta   %al
    2e7b:	1c 00                	sbb    $0x0,%al
    2e7d:	0f be c0             	movsbl %al,%eax
    2e80:	85 c0                	test   %eax,%eax
    2e82:	0f 84 59 fc ff ff    	je     2ae1 <submitr+0x2fd>
    2e88:	b9 05 00 00 00       	mov    $0x5,%ecx
    2e8d:	48 8d 3d 5d 19 00 00 	lea    0x195d(%rip),%rdi        # 47f1 <secret_tokens+0xf1>
    2e94:	48 89 ee             	mov    %rbp,%rsi
    2e97:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2e99:	0f 97 c0             	seta   %al
    2e9c:	1c 00                	sbb    $0x0,%al
    2e9e:	0f be c0             	movsbl %al,%eax
    2ea1:	85 c0                	test   %eax,%eax
    2ea3:	0f 84 38 fc ff ff    	je     2ae1 <submitr+0x2fd>
    2ea9:	b9 03 00 00 00       	mov    $0x3,%ecx
    2eae:	48 8d 3d 41 19 00 00 	lea    0x1941(%rip),%rdi        # 47f6 <secret_tokens+0xf6>
    2eb5:	48 89 ee             	mov    %rbp,%rsi
    2eb8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2eba:	0f 97 c0             	seta   %al
    2ebd:	1c 00                	sbb    $0x0,%al
    2ebf:	0f be c0             	movsbl %al,%eax
    2ec2:	85 c0                	test   %eax,%eax
    2ec4:	0f 84 17 fc ff ff    	je     2ae1 <submitr+0x2fd>
    2eca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ecf:	e9 0d fc ff ff       	jmp    2ae1 <submitr+0x2fd>
    2ed4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2edb:	3a 20 43 
    2ede:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ee5:	20 75 6e 
    2ee8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2eec:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ef0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ef7:	74 6f 20 
    2efa:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2f01:	73 74 61 
    2f04:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2f08:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2f0c:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2f13:	65 73 73 
    2f16:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2f1d:	72 6f 6d 
    2f20:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2f24:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2f28:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2f2f:	6c 61 62 
    2f32:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2f39:	65 72 00 
    2f3c:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2f40:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2f44:	89 df                	mov    %ebx,%edi
    2f46:	e8 55 e3 ff ff       	call   12a0 <close@plt>
    2f4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f50:	e9 8c fb ff ff       	jmp    2ae1 <submitr+0x2fd>
    2f55:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2f5c:	00 
    2f5d:	48 8d 0d 44 18 00 00 	lea    0x1844(%rip),%rcx        # 47a8 <secret_tokens+0xa8>
    2f64:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2f6b:	be 01 00 00 00       	mov    $0x1,%esi
    2f70:	48 89 ef             	mov    %rbp,%rdi
    2f73:	b8 00 00 00 00       	mov    $0x0,%eax
    2f78:	e8 43 e4 ff ff       	call   13c0 <__sprintf_chk@plt>
    2f7d:	89 df                	mov    %ebx,%edi
    2f7f:	e8 1c e3 ff ff       	call   12a0 <close@plt>
    2f84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f89:	e9 53 fb ff ff       	jmp    2ae1 <submitr+0x2fd>
    2f8e:	e8 ed e2 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002f93 <init_timeout>:
    2f93:	f3 0f 1e fa          	endbr64 
    2f97:	85 ff                	test   %edi,%edi
    2f99:	74 26                	je     2fc1 <init_timeout+0x2e>
    2f9b:	53                   	push   %rbx
    2f9c:	89 fb                	mov    %edi,%ebx
    2f9e:	78 1a                	js     2fba <init_timeout+0x27>
    2fa0:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 2518 <sigalrm_handler>
    2fa7:	bf 0e 00 00 00       	mov    $0xe,%edi
    2fac:	e8 1f e3 ff ff       	call   12d0 <signal@plt>
    2fb1:	89 df                	mov    %ebx,%edi
    2fb3:	e8 d8 e2 ff ff       	call   1290 <alarm@plt>
    2fb8:	5b                   	pop    %rbx
    2fb9:	c3                   	ret    
    2fba:	bb 00 00 00 00       	mov    $0x0,%ebx
    2fbf:	eb df                	jmp    2fa0 <init_timeout+0xd>
    2fc1:	c3                   	ret    

0000000000002fc2 <init_driver>:
    2fc2:	f3 0f 1e fa          	endbr64 
    2fc6:	41 54                	push   %r12
    2fc8:	55                   	push   %rbp
    2fc9:	53                   	push   %rbx
    2fca:	48 83 ec 20          	sub    $0x20,%rsp
    2fce:	48 89 fd             	mov    %rdi,%rbp
    2fd1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2fd8:	00 00 
    2fda:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2fdf:	31 c0                	xor    %eax,%eax
    2fe1:	be 01 00 00 00       	mov    $0x1,%esi
    2fe6:	bf 0d 00 00 00       	mov    $0xd,%edi
    2feb:	e8 e0 e2 ff ff       	call   12d0 <signal@plt>
    2ff0:	be 01 00 00 00       	mov    $0x1,%esi
    2ff5:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2ffa:	e8 d1 e2 ff ff       	call   12d0 <signal@plt>
    2fff:	be 01 00 00 00       	mov    $0x1,%esi
    3004:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3009:	e8 c2 e2 ff ff       	call   12d0 <signal@plt>
    300e:	ba 00 00 00 00       	mov    $0x0,%edx
    3013:	be 01 00 00 00       	mov    $0x1,%esi
    3018:	bf 02 00 00 00       	mov    $0x2,%edi
    301d:	e8 ae e3 ff ff       	call   13d0 <socket@plt>
    3022:	85 c0                	test   %eax,%eax
    3024:	0f 88 9c 00 00 00    	js     30c6 <init_driver+0x104>
    302a:	89 c3                	mov    %eax,%ebx
    302c:	48 8d 3d c6 17 00 00 	lea    0x17c6(%rip),%rdi        # 47f9 <secret_tokens+0xf9>
    3033:	e8 a8 e2 ff ff       	call   12e0 <gethostbyname@plt>
    3038:	48 85 c0             	test   %rax,%rax
    303b:	0f 84 d1 00 00 00    	je     3112 <init_driver+0x150>
    3041:	49 89 e4             	mov    %rsp,%r12
    3044:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    304b:	00 
    304c:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    3053:	00 00 
    3055:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    305b:	48 63 50 14          	movslq 0x14(%rax),%rdx
    305f:	48 8b 40 18          	mov    0x18(%rax),%rax
    3063:	48 8b 30             	mov    (%rax),%rsi
    3066:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    306b:	b9 0c 00 00 00       	mov    $0xc,%ecx
    3070:	e8 7b e2 ff ff       	call   12f0 <__memmove_chk@plt>
    3075:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
    307c:	ba 10 00 00 00       	mov    $0x10,%edx
    3081:	4c 89 e6             	mov    %r12,%rsi
    3084:	89 df                	mov    %ebx,%edi
    3086:	e8 f5 e2 ff ff       	call   1380 <connect@plt>
    308b:	85 c0                	test   %eax,%eax
    308d:	0f 88 e7 00 00 00    	js     317a <init_driver+0x1b8>
    3093:	89 df                	mov    %ebx,%edi
    3095:	e8 06 e2 ff ff       	call   12a0 <close@plt>
    309a:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    30a0:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    30a4:	b8 00 00 00 00       	mov    $0x0,%eax
    30a9:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    30ae:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    30b5:	00 00 
    30b7:	0f 85 10 01 00 00    	jne    31cd <init_driver+0x20b>
    30bd:	48 83 c4 20          	add    $0x20,%rsp
    30c1:	5b                   	pop    %rbx
    30c2:	5d                   	pop    %rbp
    30c3:	41 5c                	pop    %r12
    30c5:	c3                   	ret    
    30c6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    30cd:	3a 20 43 
    30d0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    30d7:	20 75 6e 
    30da:	48 89 45 00          	mov    %rax,0x0(%rbp)
    30de:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    30e2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    30e9:	74 6f 20 
    30ec:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    30f3:	65 20 73 
    30f6:	48 89 45 10          	mov    %rax,0x10(%rbp)
    30fa:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    30fe:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3105:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    310b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3110:	eb 97                	jmp    30a9 <init_driver+0xe7>
    3112:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3119:	3a 20 44 
    311c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3123:	20 75 6e 
    3126:	48 89 45 00          	mov    %rax,0x0(%rbp)
    312a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    312e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3135:	74 6f 20 
    3138:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    313f:	76 65 20 
    3142:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3146:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    314a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    3151:	72 20 61 
    3154:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3158:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    315f:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    3165:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    3169:	89 df                	mov    %ebx,%edi
    316b:	e8 30 e1 ff ff       	call   12a0 <close@plt>
    3170:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3175:	e9 2f ff ff ff       	jmp    30a9 <init_driver+0xe7>
    317a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3181:	3a 20 55 
    3184:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    318b:	20 74 6f 
    318e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3192:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3196:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    319d:	65 63 74 
    31a0:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    31a7:	65 72 76 
    31aa:	48 89 45 10          	mov    %rax,0x10(%rbp)
    31ae:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    31b2:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    31b8:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    31bc:	89 df                	mov    %ebx,%edi
    31be:	e8 dd e0 ff ff       	call   12a0 <close@plt>
    31c3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    31c8:	e9 dc fe ff ff       	jmp    30a9 <init_driver+0xe7>
    31cd:	e8 ae e0 ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000031d2 <driver_post>:
    31d2:	f3 0f 1e fa          	endbr64 
    31d6:	53                   	push   %rbx
    31d7:	4c 89 cb             	mov    %r9,%rbx
    31da:	45 85 c0             	test   %r8d,%r8d
    31dd:	75 18                	jne    31f7 <driver_post+0x25>
    31df:	48 85 ff             	test   %rdi,%rdi
    31e2:	74 05                	je     31e9 <driver_post+0x17>
    31e4:	80 3f 00             	cmpb   $0x0,(%rdi)
    31e7:	75 37                	jne    3220 <driver_post+0x4e>
    31e9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    31ee:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    31f2:	44 89 c0             	mov    %r8d,%eax
    31f5:	5b                   	pop    %rbx
    31f6:	c3                   	ret    
    31f7:	48 89 ca             	mov    %rcx,%rdx
    31fa:	48 8d 35 08 16 00 00 	lea    0x1608(%rip),%rsi        # 4809 <secret_tokens+0x109>
    3201:	bf 01 00 00 00       	mov    $0x1,%edi
    3206:	b8 00 00 00 00       	mov    $0x0,%eax
    320b:	e8 30 e1 ff ff       	call   1340 <__printf_chk@plt>
    3210:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3215:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3219:	b8 00 00 00 00       	mov    $0x0,%eax
    321e:	eb d5                	jmp    31f5 <driver_post+0x23>
    3220:	48 83 ec 08          	sub    $0x8,%rsp
    3224:	41 51                	push   %r9
    3226:	49 89 c9             	mov    %rcx,%r9
    3229:	49 89 d0             	mov    %rdx,%r8
    322c:	48 89 f9             	mov    %rdi,%rcx
    322f:	48 89 f2             	mov    %rsi,%rdx
    3232:	be 39 30 00 00       	mov    $0x3039,%esi
    3237:	48 8d 3d bb 15 00 00 	lea    0x15bb(%rip),%rdi        # 47f9 <secret_tokens+0xf9>
    323e:	e8 a1 f5 ff ff       	call   27e4 <submitr>
    3243:	48 83 c4 10          	add    $0x10,%rsp
    3247:	eb ac                	jmp    31f5 <driver_post+0x23>
    3249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003250 <__libc_csu_init>:
    3250:	f3 0f 1e fa          	endbr64 
    3254:	41 57                	push   %r15
    3256:	4c 8d 3d 6b 3a 00 00 	lea    0x3a6b(%rip),%r15        # 6cc8 <__frame_dummy_init_array_entry>
    325d:	41 56                	push   %r14
    325f:	49 89 d6             	mov    %rdx,%r14
    3262:	41 55                	push   %r13
    3264:	49 89 f5             	mov    %rsi,%r13
    3267:	41 54                	push   %r12
    3269:	41 89 fc             	mov    %edi,%r12d
    326c:	55                   	push   %rbp
    326d:	48 8d 2d 5c 3a 00 00 	lea    0x3a5c(%rip),%rbp        # 6cd0 <__do_global_dtors_aux_fini_array_entry>
    3274:	53                   	push   %rbx
    3275:	4c 29 fd             	sub    %r15,%rbp
    3278:	48 83 ec 08          	sub    $0x8,%rsp
    327c:	e8 7f dd ff ff       	call   1000 <_init>
    3281:	48 c1 fd 03          	sar    $0x3,%rbp
    3285:	74 1f                	je     32a6 <__libc_csu_init+0x56>
    3287:	31 db                	xor    %ebx,%ebx
    3289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3290:	4c 89 f2             	mov    %r14,%rdx
    3293:	4c 89 ee             	mov    %r13,%rsi
    3296:	44 89 e7             	mov    %r12d,%edi
    3299:	41 ff 14 df          	call   *(%r15,%rbx,8)
    329d:	48 83 c3 01          	add    $0x1,%rbx
    32a1:	48 39 dd             	cmp    %rbx,%rbp
    32a4:	75 ea                	jne    3290 <__libc_csu_init+0x40>
    32a6:	48 83 c4 08          	add    $0x8,%rsp
    32aa:	5b                   	pop    %rbx
    32ab:	5d                   	pop    %rbp
    32ac:	41 5c                	pop    %r12
    32ae:	41 5d                	pop    %r13
    32b0:	41 5e                	pop    %r14
    32b2:	41 5f                	pop    %r15
    32b4:	c3                   	ret    
    32b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    32bc:	00 00 00 00 

00000000000032c0 <__libc_csu_fini>:
    32c0:	f3 0f 1e fa          	endbr64 
    32c4:	c3                   	ret    

Disassembly of section .fini:

00000000000032c8 <_fini>:
    32c8:	f3 0f 1e fa          	endbr64 
    32cc:	48 83 ec 08          	sub    $0x8,%rsp
    32d0:	48 83 c4 08          	add    $0x8,%rsp
    32d4:	c3                   	ret    
