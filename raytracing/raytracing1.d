
raytracing.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <normalize>:
       0:	55                   	push   %rbp
       1:	48 89 e5             	mov    %rsp,%rbp
       4:	48 83 ec 20          	sub    $0x20,%rsp
       8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
       c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      10:	f2 0f 10 08          	movsd  (%rax),%xmm1
      14:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      18:	f2 0f 10 00          	movsd  (%rax),%xmm0
      1c:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
      20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      24:	48 83 c0 08          	add    $0x8,%rax
      28:	f2 0f 10 10          	movsd  (%rax),%xmm2
      2c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      30:	48 83 c0 08          	add    $0x8,%rax
      34:	f2 0f 10 00          	movsd  (%rax),%xmm0
      38:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
      3c:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      44:	48 83 c0 10          	add    $0x10,%rax
      48:	f2 0f 10 10          	movsd  (%rax),%xmm2
      4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      50:	48 83 c0 10          	add    $0x10,%rax
      54:	f2 0f 10 00          	movsd  (%rax),%xmm0
      58:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
      5c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
      60:	e8 00 00 00 00       	callq  65 <normalize+0x65>
      65:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
      6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      6e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      72:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
      76:	66 0f 2e 45 f8       	ucomisd -0x8(%rbp),%xmm0
      7b:	7a 24                	jp     a1 <normalize+0xa1>
      7d:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
      81:	66 0f 2e 45 f8       	ucomisd -0x8(%rbp),%xmm0
      86:	75 19                	jne    a1 <normalize+0xa1>
      88:	b9 00 00 00 00       	mov    $0x0,%ecx
      8d:	ba 0d 00 00 00       	mov    $0xd,%edx
      92:	be 00 00 00 00       	mov    $0x0,%esi
      97:	bf 00 00 00 00       	mov    $0x0,%edi
      9c:	e8 00 00 00 00       	callq  a1 <normalize+0xa1>
      a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      a5:	f2 0f 10 00          	movsd  (%rax),%xmm0
      a9:	f2 0f 5e 45 f8       	divsd  -0x8(%rbp),%xmm0
      ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      b2:	f2 0f 11 00          	movsd  %xmm0,(%rax)
      b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      ba:	48 83 c0 08          	add    $0x8,%rax
      be:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
      c2:	48 83 c2 08          	add    $0x8,%rdx
      c6:	f2 0f 10 02          	movsd  (%rdx),%xmm0
      ca:	f2 0f 5e 45 f8       	divsd  -0x8(%rbp),%xmm0
      cf:	f2 0f 11 00          	movsd  %xmm0,(%rax)
      d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      d7:	48 83 c0 10          	add    $0x10,%rax
      db:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
      df:	48 83 c2 10          	add    $0x10,%rdx
      e3:	f2 0f 10 02          	movsd  (%rdx),%xmm0
      e7:	f2 0f 5e 45 f8       	divsd  -0x8(%rbp),%xmm0
      ec:	f2 0f 11 00          	movsd  %xmm0,(%rax)
      f0:	c9                   	leaveq 
      f1:	c3                   	retq   

00000000000000f2 <length>:
      f2:	55                   	push   %rbp
      f3:	48 89 e5             	mov    %rsp,%rbp
      f6:	48 83 ec 10          	sub    $0x10,%rsp
      fa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     102:	f2 0f 10 08          	movsd  (%rax),%xmm1
     106:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     10a:	f2 0f 10 00          	movsd  (%rax),%xmm0
     10e:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     112:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     116:	48 83 c0 08          	add    $0x8,%rax
     11a:	f2 0f 10 10          	movsd  (%rax),%xmm2
     11e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     122:	48 83 c0 08          	add    $0x8,%rax
     126:	f2 0f 10 00          	movsd  (%rax),%xmm0
     12a:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     12e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
     132:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     136:	48 83 c0 10          	add    $0x10,%rax
     13a:	f2 0f 10 10          	movsd  (%rax),%xmm2
     13e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     142:	48 83 c0 10          	add    $0x10,%rax
     146:	f2 0f 10 00          	movsd  (%rax),%xmm0
     14a:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     14e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
     152:	e8 00 00 00 00       	callq  157 <length+0x65>
     157:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
     15c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     160:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     164:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
     169:	c9                   	leaveq 
     16a:	c3                   	retq   

000000000000016b <add_vector>:
     16b:	55                   	push   %rbp
     16c:	48 89 e5             	mov    %rsp,%rbp
     16f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     173:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
     177:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
     17b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     182:	eb 52                	jmp    1d6 <add_vector+0x6b>
     184:	8b 45 fc             	mov    -0x4(%rbp),%eax
     187:	48 98                	cltq   
     189:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     190:	00 
     191:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     195:	48 01 d0             	add    %rdx,%rax
     198:	8b 55 fc             	mov    -0x4(%rbp),%edx
     19b:	48 63 d2             	movslq %edx,%rdx
     19e:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
     1a5:	00 
     1a6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
     1aa:	48 01 ca             	add    %rcx,%rdx
     1ad:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
     1b1:	8b 55 fc             	mov    -0x4(%rbp),%edx
     1b4:	48 63 d2             	movslq %edx,%rdx
     1b7:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
     1be:	00 
     1bf:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     1c3:	48 01 ca             	add    %rcx,%rdx
     1c6:	f2 0f 10 02          	movsd  (%rdx),%xmm0
     1ca:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
     1ce:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     1d2:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     1d6:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
     1da:	7e a8                	jle    184 <add_vector+0x19>
     1dc:	5d                   	pop    %rbp
     1dd:	c3                   	retq   

00000000000001de <subtract_vector>:
     1de:	55                   	push   %rbp
     1df:	48 89 e5             	mov    %rsp,%rbp
     1e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     1e6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
     1ea:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     1ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     1f2:	f2 0f 10 00          	movsd  (%rax),%xmm0
     1f6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     1fa:	f2 0f 10 08          	movsd  (%rax),%xmm1
     1fe:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
     202:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     206:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     20a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     20e:	48 83 c0 08          	add    $0x8,%rax
     212:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     216:	48 83 c2 08          	add    $0x8,%rdx
     21a:	f2 0f 10 02          	movsd  (%rdx),%xmm0
     21e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     222:	48 83 c2 08          	add    $0x8,%rdx
     226:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
     22a:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
     22e:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     232:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     236:	48 83 c0 10          	add    $0x10,%rax
     23a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     23e:	48 83 c2 10          	add    $0x10,%rdx
     242:	f2 0f 10 02          	movsd  (%rdx),%xmm0
     246:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     24a:	48 83 c2 10          	add    $0x10,%rdx
     24e:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
     252:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
     256:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     25a:	5d                   	pop    %rbp
     25b:	c3                   	retq   

000000000000025c <multiply_vectors>:
     25c:	55                   	push   %rbp
     25d:	48 89 e5             	mov    %rsp,%rbp
     260:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     264:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
     268:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
     26c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     273:	eb 52                	jmp    2c7 <multiply_vectors+0x6b>
     275:	8b 45 fc             	mov    -0x4(%rbp),%eax
     278:	48 98                	cltq   
     27a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     281:	00 
     282:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     286:	48 01 d0             	add    %rdx,%rax
     289:	8b 55 fc             	mov    -0x4(%rbp),%edx
     28c:	48 63 d2             	movslq %edx,%rdx
     28f:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
     296:	00 
     297:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
     29b:	48 01 ca             	add    %rcx,%rdx
     29e:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
     2a2:	8b 55 fc             	mov    -0x4(%rbp),%edx
     2a5:	48 63 d2             	movslq %edx,%rdx
     2a8:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
     2af:	00 
     2b0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     2b4:	48 01 ca             	add    %rcx,%rdx
     2b7:	f2 0f 10 02          	movsd  (%rdx),%xmm0
     2bb:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     2bf:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     2c3:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     2c7:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
     2cb:	7e a8                	jle    275 <multiply_vectors+0x19>
     2cd:	5d                   	pop    %rbp
     2ce:	c3                   	retq   

00000000000002cf <multiply_vector>:
     2cf:	55                   	push   %rbp
     2d0:	48 89 e5             	mov    %rsp,%rbp
     2d3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     2d7:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
     2dc:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
     2e0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     2e7:	eb 3a                	jmp    323 <multiply_vector+0x54>
     2e9:	8b 45 fc             	mov    -0x4(%rbp),%eax
     2ec:	48 98                	cltq   
     2ee:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     2f5:	00 
     2f6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     2fa:	48 01 d0             	add    %rdx,%rax
     2fd:	8b 55 fc             	mov    -0x4(%rbp),%edx
     300:	48 63 d2             	movslq %edx,%rdx
     303:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
     30a:	00 
     30b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
     30f:	48 01 ca             	add    %rcx,%rdx
     312:	f2 0f 10 02          	movsd  (%rdx),%xmm0
     316:	f2 0f 59 45 e0       	mulsd  -0x20(%rbp),%xmm0
     31b:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     31f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     323:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
     327:	7e c0                	jle    2e9 <multiply_vector+0x1a>
     329:	5d                   	pop    %rbp
     32a:	c3                   	retq   

000000000000032b <cross_product>:
     32b:	55                   	push   %rbp
     32c:	48 89 e5             	mov    %rsp,%rbp
     32f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     333:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
     337:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     33b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     33f:	48 83 c0 08          	add    $0x8,%rax
     343:	f2 0f 10 08          	movsd  (%rax),%xmm1
     347:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     34b:	48 83 c0 10          	add    $0x10,%rax
     34f:	f2 0f 10 00          	movsd  (%rax),%xmm0
     353:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     357:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     35b:	48 83 c0 10          	add    $0x10,%rax
     35f:	f2 0f 10 10          	movsd  (%rax),%xmm2
     363:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     367:	48 83 c0 08          	add    $0x8,%rax
     36b:	f2 0f 10 08          	movsd  (%rax),%xmm1
     36f:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
     373:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
     377:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     37b:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     37f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     383:	48 8d 50 08          	lea    0x8(%rax),%rdx
     387:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     38b:	48 83 c0 10          	add    $0x10,%rax
     38f:	f2 0f 10 08          	movsd  (%rax),%xmm1
     393:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     397:	f2 0f 10 00          	movsd  (%rax),%xmm0
     39b:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     39f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     3a3:	f2 0f 10 10          	movsd  (%rax),%xmm2
     3a7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     3ab:	48 83 c0 10          	add    $0x10,%rax
     3af:	f2 0f 10 08          	movsd  (%rax),%xmm1
     3b3:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
     3b7:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
     3bb:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
     3bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     3c3:	48 8d 50 10          	lea    0x10(%rax),%rdx
     3c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     3cb:	f2 0f 10 08          	movsd  (%rax),%xmm1
     3cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     3d3:	48 83 c0 08          	add    $0x8,%rax
     3d7:	f2 0f 10 00          	movsd  (%rax),%xmm0
     3db:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     3df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     3e3:	48 83 c0 08          	add    $0x8,%rax
     3e7:	f2 0f 10 10          	movsd  (%rax),%xmm2
     3eb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     3ef:	f2 0f 10 08          	movsd  (%rax),%xmm1
     3f3:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
     3f7:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
     3fb:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
     3ff:	5d                   	pop    %rbp
     400:	c3                   	retq   

0000000000000401 <dot_product>:
     401:	55                   	push   %rbp
     402:	48 89 e5             	mov    %rsp,%rbp
     405:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     409:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
     40d:	b8 00 00 00 00       	mov    $0x0,%eax
     412:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     416:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     41a:	f2 0f 10 08          	movsd  (%rax),%xmm1
     41e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     422:	f2 0f 10 00          	movsd  (%rax),%xmm0
     426:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     42a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     42e:	48 83 c0 08          	add    $0x8,%rax
     432:	f2 0f 10 10          	movsd  (%rax),%xmm2
     436:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     43a:	48 83 c0 08          	add    $0x8,%rax
     43e:	f2 0f 10 00          	movsd  (%rax),%xmm0
     442:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     446:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
     44a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     44e:	48 83 c0 10          	add    $0x10,%rax
     452:	f2 0f 10 10          	movsd  (%rax),%xmm2
     456:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     45a:	48 83 c0 10          	add    $0x10,%rax
     45e:	f2 0f 10 00          	movsd  (%rax),%xmm0
     462:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     466:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
     46a:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
     46f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     473:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     477:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
     47c:	5d                   	pop    %rbp
     47d:	c3                   	retq   

000000000000047e <idx_stack_init>:
     47e:	55                   	push   %rbp
     47f:	48 89 e5             	mov    %rsp,%rbp
     482:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     486:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     48a:	c7 80 00 01 00 00 00 	movl   $0x0,0x100(%rax)
     491:	00 00 00 
     494:	5d                   	pop    %rbp
     495:	c3                   	retq   

0000000000000496 <idx_stack_push>:
     496:	55                   	push   %rbp
     497:	48 89 e5             	mov    %rsp,%rbp
     49a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     49e:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
     4a3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
     4a7:	b8 00 00 00 00       	mov    $0x0,%eax
     4ac:	ba 00 00 00 00       	mov    $0x0,%edx
     4b1:	48 89 c8             	mov    %rcx,%rax
     4b4:	48 89 f2             	mov    %rsi,%rdx
     4b7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     4bb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     4bf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     4c3:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     4c9:	83 f8 0f             	cmp    $0xf,%eax
     4cc:	7f 34                	jg     502 <idx_stack_push+0x6c>
     4ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     4d2:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     4d8:	8d 48 01             	lea    0x1(%rax),%ecx
     4db:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     4df:	89 8a 00 01 00 00    	mov    %ecx,0x100(%rdx)
     4e5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     4e9:	48 98                	cltq   
     4eb:	48 c1 e0 04          	shl    $0x4,%rax
     4ef:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
     4f3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     4f7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
     4fb:	48 89 01             	mov    %rax,(%rcx)
     4fe:	48 89 51 08          	mov    %rdx,0x8(%rcx)
     502:	5d                   	pop    %rbp
     503:	c3                   	retq   

0000000000000504 <idx_stack_empty>:
     504:	55                   	push   %rbp
     505:	48 89 e5             	mov    %rsp,%rbp
     508:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     50c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     510:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     516:	85 c0                	test   %eax,%eax
     518:	0f 94 c0             	sete   %al
     51b:	0f b6 c0             	movzbl %al,%eax
     51e:	5d                   	pop    %rbp
     51f:	c3                   	retq   

0000000000000520 <idx_stack_pop>:
     520:	55                   	push   %rbp
     521:	48 89 e5             	mov    %rsp,%rbp
     524:	41 55                	push   %r13
     526:	41 54                	push   %r12
     528:	53                   	push   %rbx
     529:	48 83 ec 10          	sub    $0x10,%rsp
     52d:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
     531:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     535:	48 89 c7             	mov    %rax,%rdi
     538:	e8 c7 ff ff ff       	callq  504 <idx_stack_empty>
     53d:	85 c0                	test   %eax,%eax
     53f:	75 38                	jne    579 <idx_stack_pop+0x59>
     541:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     545:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     54b:	8d 50 ff             	lea    -0x1(%rax),%edx
     54e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     552:	89 90 00 01 00 00    	mov    %edx,0x100(%rax)
     558:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     55c:	8b 90 00 01 00 00    	mov    0x100(%rax),%edx
     562:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     566:	48 63 d2             	movslq %edx,%rdx
     569:	48 c1 e2 04          	shl    $0x4,%rdx
     56d:	48 01 d0             	add    %rdx,%rax
     570:	4c 8b 20             	mov    (%rax),%r12
     573:	4c 8b 68 08          	mov    0x8(%rax),%r13
     577:	eb 10                	jmp    589 <idx_stack_pop+0x69>
     579:	49 bc 00 00 00 00 00 	movabs $0x3ff0000000000000,%r12
     580:	00 f0 3f 
     583:	41 bd 00 00 00 00    	mov    $0x0,%r13d
     589:	4c 89 e1             	mov    %r12,%rcx
     58c:	4c 89 eb             	mov    %r13,%rbx
     58f:	4c 89 e0             	mov    %r12,%rax
     592:	4c 89 ea             	mov    %r13,%rdx
     595:	48 89 d0             	mov    %rdx,%rax
     598:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
     59c:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
     5a1:	48 83 c4 10          	add    $0x10,%rsp
     5a5:	5b                   	pop    %rbx
     5a6:	41 5c                	pop    %r12
     5a8:	41 5d                	pop    %r13
     5aa:	5d                   	pop    %rbp
     5ab:	c3                   	retq   

00000000000005ac <idx_stack_top>:
     5ac:	55                   	push   %rbp
     5ad:	48 89 e5             	mov    %rsp,%rbp
     5b0:	41 55                	push   %r13
     5b2:	41 54                	push   %r12
     5b4:	53                   	push   %rbx
     5b5:	48 83 ec 10          	sub    $0x10,%rsp
     5b9:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
     5bd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     5c1:	48 89 c7             	mov    %rax,%rdi
     5c4:	e8 3b ff ff ff       	callq  504 <idx_stack_empty>
     5c9:	85 c0                	test   %eax,%eax
     5cb:	75 24                	jne    5f1 <idx_stack_top+0x45>
     5cd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     5d1:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     5d7:	8d 50 ff             	lea    -0x1(%rax),%edx
     5da:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     5de:	48 63 d2             	movslq %edx,%rdx
     5e1:	48 c1 e2 04          	shl    $0x4,%rdx
     5e5:	48 01 d0             	add    %rdx,%rax
     5e8:	4c 8b 20             	mov    (%rax),%r12
     5eb:	4c 8b 68 08          	mov    0x8(%rax),%r13
     5ef:	eb 10                	jmp    601 <idx_stack_top+0x55>
     5f1:	49 bc 00 00 00 00 00 	movabs $0x3ff0000000000000,%r12
     5f8:	00 f0 3f 
     5fb:	41 bd 00 00 00 00    	mov    $0x0,%r13d
     601:	4c 89 e1             	mov    %r12,%rcx
     604:	4c 89 eb             	mov    %r13,%rbx
     607:	4c 89 e0             	mov    %r12,%rax
     60a:	4c 89 ea             	mov    %r13,%rdx
     60d:	48 89 d0             	mov    %rdx,%rax
     610:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
     614:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
     619:	48 83 c4 10          	add    $0x10,%rsp
     61d:	5b                   	pop    %rbx
     61e:	41 5c                	pop    %r12
     620:	41 5d                	pop    %r13
     622:	5d                   	pop    %rbp
     623:	c3                   	retq   

0000000000000624 <raySphereIntersection>:
     624:	55                   	push   %rbp
     625:	48 89 e5             	mov    %rsp,%rbp
     628:	48 83 ec 70          	sub    $0x70,%rsp
     62c:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
     630:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
     634:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     638:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     63c:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
     640:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     644:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
     648:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     64c:	48 89 ce             	mov    %rcx,%rsi
     64f:	48 89 c7             	mov    %rax,%rdi
     652:	e8 87 fb ff ff       	callq  1de <subtract_vector>
     657:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     65b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     65f:	48 89 d6             	mov    %rdx,%rsi
     662:	48 89 c7             	mov    %rax,%rdi
     665:	e8 97 fd ff ff       	callq  401 <dot_product>
     66a:	f2 0f 11 45 90       	movsd  %xmm0,-0x70(%rbp)
     66f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     673:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     677:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
     67b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     67f:	48 89 d6             	mov    %rdx,%rsi
     682:	48 89 c7             	mov    %rax,%rdi
     685:	e8 77 fd ff ff       	callq  401 <dot_product>
     68a:	f2 0f 11 45 90       	movsd  %xmm0,-0x70(%rbp)
     68f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     693:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     697:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     69b:	f2 0f 10 48 18       	movsd  0x18(%rax),%xmm1
     6a0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6a4:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
     6a9:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     6ad:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
     6b2:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
     6b6:	66 0f 2e 45 c8       	ucomisd -0x38(%rbp),%xmm0
     6bb:	76 16                	jbe    6d3 <raySphereIntersection+0xaf>
     6bd:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
     6c2:	66 0f 2e 45 d8       	ucomisd -0x28(%rbp),%xmm0
     6c7:	76 0a                	jbe    6d3 <raySphereIntersection+0xaf>
     6c9:	b8 00 00 00 00       	mov    $0x0,%eax
     6ce:	e9 4a 01 00 00       	jmpq   81d <raySphereIntersection+0x1f9>
     6d3:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
     6d8:	f2 0f 59 45 c8       	mulsd  -0x38(%rbp),%xmm0
     6dd:	f2 0f 10 4d d0       	movsd  -0x30(%rbp),%xmm1
     6e2:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
     6e6:	66 0f 28 c1          	movapd %xmm1,%xmm0
     6ea:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
     6ee:	66 0f 5a d0          	cvtpd2ps %xmm0,%xmm2
     6f2:	f3 0f 11 55 c0       	movss  %xmm2,-0x40(%rbp)
     6f7:	f3 0f 10 45 c0       	movss  -0x40(%rbp),%xmm0
     6fc:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
     6ff:	66 0f 2e 45 d8       	ucomisd -0x28(%rbp),%xmm0
     704:	76 0a                	jbe    710 <raySphereIntersection+0xec>
     706:	b8 00 00 00 00       	mov    $0x0,%eax
     70b:	e9 0d 01 00 00       	jmpq   81d <raySphereIntersection+0x1f9>
     710:	f3 0f 10 45 c0       	movss  -0x40(%rbp),%xmm0
     715:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
     718:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
     71d:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
     721:	66 0f 28 c1          	movapd %xmm1,%xmm0
     725:	e8 00 00 00 00       	callq  72a <raySphereIntersection+0x106>
     72a:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
     72e:	66 0f 5a d8          	cvtpd2ps %xmm0,%xmm3
     732:	f3 0f 11 5d c4       	movss  %xmm3,-0x3c(%rbp)
     737:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
     73c:	66 0f 2e 45 d8       	ucomisd -0x28(%rbp),%xmm0
     741:	76 17                	jbe    75a <raySphereIntersection+0x136>
     743:	f3 0f 10 45 c4       	movss  -0x3c(%rbp),%xmm0
     748:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
     74b:	f2 0f 10 4d c8       	movsd  -0x38(%rbp),%xmm1
     750:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
     754:	66 0f 28 c1          	movapd %xmm1,%xmm0
     758:	eb 0d                	jmp    767 <raySphereIntersection+0x143>
     75a:	f3 0f 10 45 c4       	movss  -0x3c(%rbp),%xmm0
     75f:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
     762:	f2 0f 58 45 c8       	addsd  -0x38(%rbp),%xmm0
     767:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     76b:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     76f:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     773:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     777:	48 8b 00             	mov    (%rax),%rax
     77a:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     77e:	48 89 ce             	mov    %rcx,%rsi
     781:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     785:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
     78a:	48 89 d7             	mov    %rdx,%rdi
     78d:	e8 3d fb ff ff       	callq  2cf <multiply_vector>
     792:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
     796:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     79a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     79e:	48 89 ce             	mov    %rcx,%rsi
     7a1:	48 89 c7             	mov    %rax,%rdi
     7a4:	e8 c2 f9 ff ff       	callq  16b <add_vector>
     7a9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7ad:	48 8d 50 18          	lea    0x18(%rax),%rdx
     7b1:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
     7b5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7b9:	48 89 ce             	mov    %rcx,%rsi
     7bc:	48 89 c7             	mov    %rax,%rdi
     7bf:	e8 1a fa ff ff       	callq  1de <subtract_vector>
     7c4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7c8:	48 83 c0 18          	add    $0x18,%rax
     7cc:	48 89 c7             	mov    %rax,%rdi
     7cf:	e8 2c f8 ff ff       	callq  0 <normalize>
     7d4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7d8:	48 8d 50 18          	lea    0x18(%rax),%rdx
     7dc:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     7e0:	48 89 c6             	mov    %rax,%rsi
     7e3:	48 89 d7             	mov    %rdx,%rdi
     7e6:	e8 16 fc ff ff       	callq  401 <dot_product>
     7eb:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     7ef:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     7f3:	76 23                	jbe    818 <raySphereIntersection+0x1f4>
     7f5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7f9:	48 8d 50 18          	lea    0x18(%rax),%rdx
     7fd:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     801:	48 83 c0 18          	add    $0x18,%rax
     805:	48 89 d6             	mov    %rdx,%rsi
     808:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 810 <raySphereIntersection+0x1ec>
     80f:	00 
     810:	48 89 c7             	mov    %rax,%rdi
     813:	e8 b7 fa ff ff       	callq  2cf <multiply_vector>
     818:	b8 01 00 00 00       	mov    $0x1,%eax
     81d:	c9                   	leaveq 
     81e:	c3                   	retq   

000000000000081f <rayRectangularIntersection>:
     81f:	55                   	push   %rbp
     820:	48 89 e5             	mov    %rsp,%rbp
     823:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
     82a:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
     831:	48 89 b5 f0 fe ff ff 	mov    %rsi,-0x110(%rbp)
     838:	48 89 95 e8 fe ff ff 	mov    %rdx,-0x118(%rbp)
     83f:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
     846:	4c 89 85 d8 fe ff ff 	mov    %r8,-0x128(%rbp)
     84d:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     854:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
     85b:	48 8d 4a 18          	lea    0x18(%rdx),%rcx
     85f:	48 8d 95 20 ff ff ff 	lea    -0xe0(%rbp),%rdx
     866:	48 89 c6             	mov    %rax,%rsi
     869:	48 89 cf             	mov    %rcx,%rdi
     86c:	e8 6d f9 ff ff       	callq  1de <subtract_vector>
     871:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     878:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
     87f:	48 8d 4a 48          	lea    0x48(%rdx),%rcx
     883:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
     88a:	48 89 c6             	mov    %rax,%rsi
     88d:	48 89 cf             	mov    %rcx,%rdi
     890:	e8 49 f9 ff ff       	callq  1de <subtract_vector>
     895:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     89c:	48 8d 8d 40 ff ff ff 	lea    -0xc0(%rbp),%rcx
     8a3:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     8aa:	48 89 ce             	mov    %rcx,%rsi
     8ad:	48 89 c7             	mov    %rax,%rdi
     8b0:	e8 76 fa ff ff       	callq  32b <cross_product>
     8b5:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     8bc:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     8c3:	48 89 d6             	mov    %rdx,%rsi
     8c6:	48 89 c7             	mov    %rax,%rdi
     8c9:	e8 33 fb ff ff       	callq  401 <dot_product>
     8ce:	f2 0f 11 85 d0 fe ff 	movsd  %xmm0,-0x130(%rbp)
     8d5:	ff 
     8d6:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
     8dd:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
     8e4:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 8ec <rayRectangularIntersection+0xcd>
     8eb:	00 
     8ec:	66 0f 2e 85 00 ff ff 	ucomisd -0x100(%rbp),%xmm0
     8f3:	ff 
     8f4:	76 0a                	jbe    900 <rayRectangularIntersection+0xe1>
     8f6:	b8 00 00 00 00       	mov    $0x0,%eax
     8fb:	e9 0d 04 00 00       	jmpq   d0d <rayRectangularIntersection+0x4ee>
     900:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 908 <rayRectangularIntersection+0xe9>
     907:	00 
     908:	f2 0f 5e 85 00 ff ff 	divsd  -0x100(%rbp),%xmm0
     90f:	ff 
     910:	f2 0f 11 85 08 ff ff 	movsd  %xmm0,-0xf8(%rbp)
     917:	ff 
     918:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
     91f:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     923:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     92a:	48 89 ce             	mov    %rcx,%rsi
     92d:	48 89 c7             	mov    %rax,%rdi
     930:	e8 a9 f8 ff ff       	callq  1de <subtract_vector>
     935:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     93c:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     940:	48 89 d6             	mov    %rdx,%rsi
     943:	48 89 c7             	mov    %rax,%rdi
     946:	e8 b6 fa ff ff       	callq  401 <dot_product>
     94b:	f2 0f 59 85 08 ff ff 	mulsd  -0xf8(%rbp),%xmm0
     952:	ff 
     953:	f2 0f 11 85 10 ff ff 	movsd  %xmm0,-0xf0(%rbp)
     95a:	ff 
     95b:	f2 0f 10 85 10 ff ff 	movsd  -0xf0(%rbp),%xmm0
     962:	ff 
     963:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 96b <rayRectangularIntersection+0x14c>
     96a:	00 
     96b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     96f:	77 0e                	ja     97f <rayRectangularIntersection+0x160>
     971:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
     975:	66 0f 2e 85 10 ff ff 	ucomisd -0xf0(%rbp),%xmm0
     97c:	ff 
     97d:	76 0a                	jbe    989 <rayRectangularIntersection+0x16a>
     97f:	b8 00 00 00 00       	mov    $0x0,%eax
     984:	e9 84 03 00 00       	jmpq   d0d <rayRectangularIntersection+0x4ee>
     989:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     98d:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
     994:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     998:	48 89 ce             	mov    %rcx,%rsi
     99b:	48 89 c7             	mov    %rax,%rdi
     99e:	e8 88 f9 ff ff       	callq  32b <cross_product>
     9a3:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     9a7:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     9ae:	48 89 d6             	mov    %rdx,%rsi
     9b1:	48 89 c7             	mov    %rax,%rdi
     9b4:	e8 48 fa ff ff       	callq  401 <dot_product>
     9b9:	f2 0f 59 85 08 ff ff 	mulsd  -0xf8(%rbp),%xmm0
     9c0:	ff 
     9c1:	f2 0f 11 85 18 ff ff 	movsd  %xmm0,-0xe8(%rbp)
     9c8:	ff 
     9c9:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
     9d0:	ff 
     9d1:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 9d9 <rayRectangularIntersection+0x1ba>
     9d8:	00 
     9d9:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     9dd:	77 0e                	ja     9ed <rayRectangularIntersection+0x1ce>
     9df:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
     9e3:	66 0f 2e 85 18 ff ff 	ucomisd -0xe8(%rbp),%xmm0
     9ea:	ff 
     9eb:	76 0a                	jbe    9f7 <rayRectangularIntersection+0x1d8>
     9ed:	b8 00 00 00 00       	mov    $0x0,%eax
     9f2:	e9 16 03 00 00       	jmpq   d0d <rayRectangularIntersection+0x4ee>
     9f7:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     9fb:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     a02:	48 89 d6             	mov    %rdx,%rsi
     a05:	48 89 c7             	mov    %rax,%rdi
     a08:	e8 f4 f9 ff ff       	callq  401 <dot_product>
     a0d:	f2 0f 59 85 08 ff ff 	mulsd  -0xf8(%rbp),%xmm0
     a14:	ff 
     a15:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     a1c:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     a20:	f2 0f 10 85 10 ff ff 	movsd  -0xf0(%rbp),%xmm0
     a27:	ff 
     a28:	f2 0f 58 85 18 ff ff 	addsd  -0xe8(%rbp),%xmm0
     a2f:	ff 
     a30:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # a38 <rayRectangularIntersection+0x219>
     a37:	00 
     a38:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     a3c:	0f 86 bf 01 00 00    	jbe    c01 <rayRectangularIntersection+0x3e2>
     a42:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     a49:	48 8d 70 30          	lea    0x30(%rax),%rsi
     a4d:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     a54:	48 8d 48 48          	lea    0x48(%rax),%rcx
     a58:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
     a5c:	48 89 c2             	mov    %rax,%rdx
     a5f:	48 89 cf             	mov    %rcx,%rdi
     a62:	e8 77 f7 ff ff       	callq  1de <subtract_vector>
     a67:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     a6e:	48 8d 70 30          	lea    0x30(%rax),%rsi
     a72:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     a79:	48 8d 48 18          	lea    0x18(%rax),%rcx
     a7d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     a81:	48 89 c2             	mov    %rax,%rdx
     a84:	48 89 cf             	mov    %rcx,%rdi
     a87:	e8 52 f7 ff ff       	callq  1de <subtract_vector>
     a8c:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     a93:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
     a97:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     a9e:	48 89 ce             	mov    %rcx,%rsi
     aa1:	48 89 c7             	mov    %rax,%rdi
     aa4:	e8 82 f8 ff ff       	callq  32b <cross_product>
     aa9:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     ab0:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
     ab4:	48 89 d6             	mov    %rdx,%rsi
     ab7:	48 89 c7             	mov    %rax,%rdi
     aba:	e8 42 f9 ff ff       	callq  401 <dot_product>
     abf:	f2 0f 11 85 d0 fe ff 	movsd  %xmm0,-0x130(%rbp)
     ac6:	ff 
     ac7:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
     ace:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
     ad5:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # add <rayRectangularIntersection+0x2be>
     adc:	00 
     add:	66 0f 2e 85 00 ff ff 	ucomisd -0x100(%rbp),%xmm0
     ae4:	ff 
     ae5:	76 0a                	jbe    af1 <rayRectangularIntersection+0x2d2>
     ae7:	b8 00 00 00 00       	mov    $0x0,%eax
     aec:	e9 1c 02 00 00       	jmpq   d0d <rayRectangularIntersection+0x4ee>
     af1:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # af9 <rayRectangularIntersection+0x2da>
     af8:	00 
     af9:	f2 0f 5e 85 00 ff ff 	divsd  -0x100(%rbp),%xmm0
     b00:	ff 
     b01:	f2 0f 11 85 08 ff ff 	movsd  %xmm0,-0xf8(%rbp)
     b08:	ff 
     b09:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     b10:	48 8d 48 30          	lea    0x30(%rax),%rcx
     b14:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     b18:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     b1f:	48 89 ce             	mov    %rcx,%rsi
     b22:	48 89 c7             	mov    %rax,%rdi
     b25:	e8 b4 f6 ff ff       	callq  1de <subtract_vector>
     b2a:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     b31:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     b35:	48 89 d6             	mov    %rdx,%rsi
     b38:	48 89 c7             	mov    %rax,%rdi
     b3b:	e8 c1 f8 ff ff       	callq  401 <dot_product>
     b40:	f2 0f 59 85 08 ff ff 	mulsd  -0xf8(%rbp),%xmm0
     b47:	ff 
     b48:	f2 0f 11 85 10 ff ff 	movsd  %xmm0,-0xf0(%rbp)
     b4f:	ff 
     b50:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
     b54:	66 0f 2e 85 10 ff ff 	ucomisd -0xf0(%rbp),%xmm0
     b5b:	ff 
     b5c:	76 0a                	jbe    b68 <rayRectangularIntersection+0x349>
     b5e:	b8 00 00 00 00       	mov    $0x0,%eax
     b63:	e9 a5 01 00 00       	jmpq   d0d <rayRectangularIntersection+0x4ee>
     b68:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     b6c:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
     b70:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     b74:	48 89 ce             	mov    %rcx,%rsi
     b77:	48 89 c7             	mov    %rax,%rdi
     b7a:	e8 ac f7 ff ff       	callq  32b <cross_product>
     b7f:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     b83:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     b8a:	48 89 d6             	mov    %rdx,%rsi
     b8d:	48 89 c7             	mov    %rax,%rdi
     b90:	e8 6c f8 ff ff       	callq  401 <dot_product>
     b95:	f2 0f 59 85 08 ff ff 	mulsd  -0xf8(%rbp),%xmm0
     b9c:	ff 
     b9d:	f2 0f 11 85 18 ff ff 	movsd  %xmm0,-0xe8(%rbp)
     ba4:	ff 
     ba5:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
     ba9:	66 0f 2e 85 18 ff ff 	ucomisd -0xe8(%rbp),%xmm0
     bb0:	ff 
     bb1:	77 1e                	ja     bd1 <rayRectangularIntersection+0x3b2>
     bb3:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
     bba:	ff 
     bbb:	f2 0f 58 85 10 ff ff 	addsd  -0xf0(%rbp),%xmm0
     bc2:	ff 
     bc3:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # bcb <rayRectangularIntersection+0x3ac>
     bca:	00 
     bcb:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     bcf:	76 0a                	jbe    bdb <rayRectangularIntersection+0x3bc>
     bd1:	b8 00 00 00 00       	mov    $0x0,%eax
     bd6:	e9 32 01 00 00       	jmpq   d0d <rayRectangularIntersection+0x4ee>
     bdb:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     bdf:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     be3:	48 89 d6             	mov    %rdx,%rsi
     be6:	48 89 c7             	mov    %rax,%rdi
     be9:	e8 13 f8 ff ff       	callq  401 <dot_product>
     bee:	f2 0f 59 85 08 ff ff 	mulsd  -0xf8(%rbp),%xmm0
     bf5:	ff 
     bf6:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bfd:	f2 0f 11 00          	movsd  %xmm0,(%rax)
     c01:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c08:	f2 0f 10 08          	movsd  (%rax),%xmm1
     c0c:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # c14 <rayRectangularIntersection+0x3f5>
     c13:	00 
     c14:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     c18:	76 0a                	jbe    c24 <rayRectangularIntersection+0x405>
     c1a:	b8 00 00 00 00       	mov    $0x0,%eax
     c1f:	e9 e9 00 00 00       	jmpq   d0d <rayRectangularIntersection+0x4ee>
     c24:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     c2b:	48 8b 40 60          	mov    0x60(%rax),%rax
     c2f:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
     c36:	48 89 42 18          	mov    %rax,0x18(%rdx)
     c3a:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     c41:	48 8b 40 68          	mov    0x68(%rax),%rax
     c45:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
     c4c:	48 89 42 20          	mov    %rax,0x20(%rdx)
     c50:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     c57:	48 8b 40 70          	mov    0x70(%rax),%rax
     c5b:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
     c62:	48 89 42 28          	mov    %rax,0x28(%rdx)
     c66:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
     c6d:	48 8d 50 18          	lea    0x18(%rax),%rdx
     c71:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     c78:	48 89 c6             	mov    %rax,%rsi
     c7b:	48 89 d7             	mov    %rdx,%rdi
     c7e:	e8 7e f7 ff ff       	callq  401 <dot_product>
     c83:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     c87:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     c8b:	76 29                	jbe    cb6 <rayRectangularIntersection+0x497>
     c8d:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
     c94:	48 8d 50 18          	lea    0x18(%rax),%rdx
     c98:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
     c9f:	48 83 c0 18          	add    $0x18,%rax
     ca3:	48 89 d6             	mov    %rdx,%rsi
     ca6:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # cae <rayRectangularIntersection+0x48f>
     cad:	00 
     cae:	48 89 c7             	mov    %rax,%rdi
     cb1:	e8 19 f6 ff ff       	callq  2cf <multiply_vector>
     cb6:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
     cbd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     cc4:	48 8b 00             	mov    (%rax),%rax
     cc7:	48 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%rdx
     cce:	48 89 ce             	mov    %rcx,%rsi
     cd1:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
     cd8:	f2 0f 10 85 d0 fe ff 	movsd  -0x130(%rbp),%xmm0
     cdf:	ff 
     ce0:	48 89 d7             	mov    %rdx,%rdi
     ce3:	e8 e7 f5 ff ff       	callq  2cf <multiply_vector>
     ce8:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
     cef:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
     cf6:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     cfd:	48 89 ce             	mov    %rcx,%rsi
     d00:	48 89 c7             	mov    %rax,%rdi
     d03:	e8 63 f4 ff ff       	callq  16b <add_vector>
     d08:	b8 01 00 00 00       	mov    $0x1,%eax
     d0d:	c9                   	leaveq 
     d0e:	c3                   	retq   

0000000000000d0f <localColor>:
     d0f:	55                   	push   %rbp
     d10:	48 89 e5             	mov    %rsp,%rbp
     d13:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
     d1a:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
     d21:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
     d28:	f2 0f 11 85 48 ff ff 	movsd  %xmm0,-0xb8(%rbp)
     d2f:	ff 
     d30:	f2 0f 11 8d 40 ff ff 	movsd  %xmm1,-0xc0(%rbp)
     d37:	ff 
     d38:	48 89 95 38 ff ff ff 	mov    %rdx,-0xc8(%rbp)
     d3f:	48 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rax
     d46:	99 b9 3f 
     d49:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
     d50:	48 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rax
     d57:	99 b9 3f 
     d5a:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
     d61:	48 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rax
     d68:	99 b9 3f 
     d6b:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
     d72:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     d79:	48 8b 00             	mov    (%rax),%rax
     d7c:	48 89 45 80          	mov    %rax,-0x80(%rbp)
     d80:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     d87:	48 8b 40 08          	mov    0x8(%rax),%rax
     d8b:	48 89 45 88          	mov    %rax,-0x78(%rbp)
     d8f:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     d96:	48 8b 40 10          	mov    0x10(%rax),%rax
     d9a:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     d9e:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     da5:	48 8b 40 18          	mov    0x18(%rax),%rax
     da9:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
     dad:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     db1:	48 89 ce             	mov    %rcx,%rsi
     db4:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
     dbb:	f2 0f 10 85 30 ff ff 	movsd  -0xd0(%rbp),%xmm0
     dc2:	ff 
     dc3:	48 89 d7             	mov    %rdx,%rdi
     dc6:	e8 04 f5 ff ff       	callq  2cf <multiply_vector>
     dcb:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
     dcf:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
     dd6:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     dda:	48 89 ce             	mov    %rcx,%rsi
     ddd:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
     de4:	f2 0f 10 85 30 ff ff 	movsd  -0xd0(%rbp),%xmm0
     deb:	ff 
     dec:	48 89 d7             	mov    %rdx,%rdi
     def:	e8 db f4 ff ff       	callq  2cf <multiply_vector>
     df4:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     dfb:	48 8b 00             	mov    (%rax),%rax
     dfe:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     e02:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e09:	48 8b 40 08          	mov    0x8(%rax),%rax
     e0d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     e11:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e18:	48 8b 40 10          	mov    0x10(%rax),%rax
     e1c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     e20:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     e24:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
     e28:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     e2c:	48 89 ce             	mov    %rcx,%rsi
     e2f:	48 89 c7             	mov    %rax,%rdi
     e32:	e8 25 f4 ff ff       	callq  25c <multiply_vectors>
     e37:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e3e:	48 8b 00             	mov    (%rax),%rax
     e41:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     e45:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e4c:	48 8b 40 08          	mov    0x8(%rax),%rax
     e50:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     e54:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e5b:	48 8b 40 10          	mov    0x10(%rax),%rax
     e5f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
     e63:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     e6a:	48 8b 40 20          	mov    0x20(%rax),%rax
     e6e:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
     e72:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     e76:	48 89 ce             	mov    %rcx,%rsi
     e79:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
     e80:	f2 0f 10 85 30 ff ff 	movsd  -0xd0(%rbp),%xmm0
     e87:	ff 
     e88:	48 89 d7             	mov    %rdx,%rdi
     e8b:	e8 3f f4 ff ff       	callq  2cf <multiply_vector>
     e90:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
     e94:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
     e9b:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     e9f:	48 89 ce             	mov    %rcx,%rsi
     ea2:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
     ea9:	f2 0f 10 85 30 ff ff 	movsd  -0xd0(%rbp),%xmm0
     eb0:	ff 
     eb1:	48 89 d7             	mov    %rdx,%rdi
     eb4:	e8 16 f4 ff ff       	callq  2cf <multiply_vector>
     eb9:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     ec0:	48 8b 00             	mov    (%rax),%rax
     ec3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     ec7:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     ece:	48 8b 40 08          	mov    0x8(%rax),%rax
     ed2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     ed6:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     edd:	48 8b 40 10          	mov    0x10(%rax),%rax
     ee1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     ee5:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     eec:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
     ef0:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
     ef7:	48 89 ce             	mov    %rcx,%rsi
     efa:	48 89 c7             	mov    %rax,%rdi
     efd:	e8 5a f3 ff ff       	callq  25c <multiply_vectors>
     f02:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     f06:	48 8d 8d 60 ff ff ff 	lea    -0xa0(%rbp),%rcx
     f0d:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     f11:	48 89 ce             	mov    %rcx,%rsi
     f14:	48 89 c7             	mov    %rax,%rdi
     f17:	e8 4f f2 ff ff       	callq  16b <add_vector>
     f1c:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     f20:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
     f24:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     f28:	48 89 ce             	mov    %rcx,%rsi
     f2b:	48 89 c7             	mov    %rax,%rdi
     f2e:	e8 38 f2 ff ff       	callq  16b <add_vector>
     f33:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
     f3a:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
     f3e:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
     f45:	48 89 ce             	mov    %rcx,%rsi
     f48:	48 89 c7             	mov    %rax,%rdi
     f4b:	e8 1b f2 ff ff       	callq  16b <add_vector>
     f50:	c9                   	leaveq 
     f51:	c3                   	retq   

0000000000000f52 <compute_specular_diffuse>:
     f52:	55                   	push   %rbp
     f53:	48 89 e5             	mov    %rsp,%rbp
     f56:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
     f5d:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
     f64:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
     f6b:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
     f72:	48 89 8d 50 ff ff ff 	mov    %rcx,-0xb0(%rbp)
     f79:	4c 89 85 48 ff ff ff 	mov    %r8,-0xb8(%rbp)
     f80:	f2 0f 11 85 40 ff ff 	movsd  %xmm0,-0xc0(%rbp)
     f87:	ff 
     f88:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
     f8f:	48 8b 00             	mov    (%rax),%rax
     f92:	48 89 45 80          	mov    %rax,-0x80(%rbp)
     f96:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
     f9d:	48 8b 40 08          	mov    0x8(%rax),%rax
     fa1:	48 89 45 88          	mov    %rax,-0x78(%rbp)
     fa5:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
     fac:	48 8b 40 10          	mov    0x10(%rax),%rax
     fb0:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     fb4:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     fb8:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     fbc:	48 89 d6             	mov    %rdx,%rsi
     fbf:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # fc7 <compute_specular_diffuse+0x75>
     fc6:	00 
     fc7:	48 89 c7             	mov    %rax,%rdi
     fca:	e8 00 f3 ff ff       	callq  2cf <multiply_vector>
     fcf:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     fd3:	48 89 c7             	mov    %rax,%rdi
     fd6:	e8 25 f0 ff ff       	callq  0 <normalize>
     fdb:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     fe2:	48 8b 00             	mov    (%rax),%rax
     fe5:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     fe9:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     ff0:	48 8b 40 08          	mov    0x8(%rax),%rax
     ff4:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     ff8:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     fff:	48 8b 40 10          	mov    0x10(%rax),%rax
    1003:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1007:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    100b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    100f:	48 89 d6             	mov    %rdx,%rsi
    1012:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 101a <compute_specular_diffuse+0xc8>
    1019:	00 
    101a:	48 89 c7             	mov    %rax,%rdi
    101d:	e8 ad f2 ff ff       	callq  2cf <multiply_vector>
    1022:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    1026:	48 89 c7             	mov    %rax,%rdi
    1029:	e8 d2 ef ff ff       	callq  0 <normalize>
    102e:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1032:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1039:	48 89 d6             	mov    %rdx,%rsi
    103c:	48 89 c7             	mov    %rax,%rdi
    103f:	e8 bd f3 ff ff       	callq  401 <dot_product>
    1044:	f2 0f 11 85 38 ff ff 	movsd  %xmm0,-0xc8(%rbp)
    104b:	ff 
    104c:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    1053:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    105a:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    105e:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1065:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
    106c:	48 89 ce             	mov    %rcx,%rsi
    106f:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    1076:	f2 0f 10 85 38 ff ff 	movsd  -0xc8(%rbp),%xmm0
    107d:	ff 
    107e:	48 89 d7             	mov    %rdx,%rdi
    1081:	e8 49 f2 ff ff       	callq  2cf <multiply_vector>
    1086:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    108a:	48 b8 00 00 00 00 00 	movabs $0x4000000000000000,%rax
    1091:	00 00 40 
    1094:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    1098:	48 89 ce             	mov    %rcx,%rsi
    109b:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    10a2:	f2 0f 10 85 38 ff ff 	movsd  -0xc8(%rbp),%xmm0
    10a9:	ff 
    10aa:	48 89 d7             	mov    %rdx,%rdi
    10ad:	e8 1d f2 ff ff       	callq  2cf <multiply_vector>
    10b2:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    10b6:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    10ba:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    10be:	48 89 ce             	mov    %rcx,%rsi
    10c1:	48 89 c7             	mov    %rax,%rdi
    10c4:	e8 15 f1 ff ff       	callq  1de <subtract_vector>
    10c9:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    10cd:	48 89 c7             	mov    %rax,%rdi
    10d0:	e8 2b ef ff ff       	callq  0 <normalize>
    10d5:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    10d9:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    10e0:	48 89 d6             	mov    %rdx,%rsi
    10e3:	48 89 c7             	mov    %rax,%rdi
    10e6:	e8 16 f3 ff ff       	callq  401 <dot_product>
    10eb:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    10ef:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    10f3:	76 07                	jbe    10fc <compute_specular_diffuse+0x1aa>
    10f5:	b8 00 00 00 00       	mov    $0x0,%eax
    10fa:	eb 25                	jmp    1121 <compute_specular_diffuse+0x1cf>
    10fc:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1100:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1107:	48 89 d6             	mov    %rdx,%rsi
    110a:	48 89 c7             	mov    %rax,%rdi
    110d:	e8 ef f2 ff ff       	callq  401 <dot_product>
    1112:	f2 0f 11 85 38 ff ff 	movsd  %xmm0,-0xc8(%rbp)
    1119:	ff 
    111a:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    1121:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
    1128:	48 89 02             	mov    %rax,(%rdx)
    112b:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    112f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1133:	48 89 d6             	mov    %rdx,%rsi
    1136:	48 89 c7             	mov    %rax,%rdi
    1139:	e8 c3 f2 ff ff       	callq  401 <dot_product>
    113e:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1142:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    1146:	76 07                	jbe    114f <compute_specular_diffuse+0x1fd>
    1148:	b8 00 00 00 00       	mov    $0x0,%eax
    114d:	eb 22                	jmp    1171 <compute_specular_diffuse+0x21f>
    114f:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    1153:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1157:	48 89 d6             	mov    %rdx,%rsi
    115a:	48 89 c7             	mov    %rax,%rdi
    115d:	e8 9f f2 ff ff       	callq  401 <dot_product>
    1162:	f2 0f 11 85 38 ff ff 	movsd  %xmm0,-0xc8(%rbp)
    1169:	ff 
    116a:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    1171:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
    1178:	48 89 95 38 ff ff ff 	mov    %rdx,-0xc8(%rbp)
    117f:	f2 0f 10 8d 38 ff ff 	movsd  -0xc8(%rbp),%xmm1
    1186:	ff 
    1187:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    118e:	f2 0f 10 85 38 ff ff 	movsd  -0xc8(%rbp),%xmm0
    1195:	ff 
    1196:	e8 00 00 00 00       	callq  119b <compute_specular_diffuse+0x249>
    119b:	f2 0f 11 85 38 ff ff 	movsd  %xmm0,-0xc8(%rbp)
    11a2:	ff 
    11a3:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    11aa:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    11b1:	48 89 02             	mov    %rax,(%rdx)
    11b4:	c9                   	leaveq 
    11b5:	c3                   	retq   

00000000000011b6 <reflection>:
    11b6:	55                   	push   %rbp
    11b7:	48 89 e5             	mov    %rsp,%rbp
    11ba:	48 83 ec 18          	sub    $0x18,%rsp
    11be:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    11c2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    11c6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    11ca:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    11ce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    11d2:	48 89 d6             	mov    %rdx,%rsi
    11d5:	48 89 c7             	mov    %rax,%rdi
    11d8:	e8 24 f2 ff ff       	callq  401 <dot_product>
    11dd:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 11e5 <reflection+0x2f>
    11e4:	00 
    11e5:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    11e9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    11ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11f1:	48 89 d6             	mov    %rdx,%rsi
    11f4:	48 89 c7             	mov    %rax,%rdi
    11f7:	e8 d3 f0 ff ff       	callq  2cf <multiply_vector>
    11fc:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1200:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1204:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1208:	48 89 ce             	mov    %rcx,%rsi
    120b:	48 89 c7             	mov    %rax,%rdi
    120e:	e8 58 ef ff ff       	callq  16b <add_vector>
    1213:	c9                   	leaveq 
    1214:	c3                   	retq   

0000000000001215 <refraction>:
    1215:	55                   	push   %rbp
    1216:	48 89 e5             	mov    %rsp,%rbp
    1219:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    121d:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    1221:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    1225:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    1229:	f2 0f 11 45 a0       	movsd  %xmm0,-0x60(%rbp)
    122e:	f2 0f 11 4d 98       	movsd  %xmm1,-0x68(%rbp)
    1233:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    1238:	f2 0f 5e 45 98       	divsd  -0x68(%rbp),%xmm0
    123d:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
    1242:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    1246:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    124a:	48 89 d6             	mov    %rdx,%rsi
    124d:	48 89 c7             	mov    %rax,%rdi
    1250:	e8 ac f1 ff ff       	callq  401 <dot_product>
    1255:	f2 0f 11 45 90       	movsd  %xmm0,-0x70(%rbp)
    125a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    125e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1262:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    1267:	66 0f 28 c8          	movapd %xmm0,%xmm1
    126b:	f2 0f 59 4d c8       	mulsd  -0x38(%rbp),%xmm1
    1270:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
    1275:	f2 0f 59 45 d0       	mulsd  -0x30(%rbp),%xmm0
    127a:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # 1282 <refraction+0x6d>
    1281:	00 
    1282:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
    1286:	66 0f 28 c2          	movapd %xmm2,%xmm0
    128a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    128e:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 1296 <refraction+0x81>
    1295:	00 
    1296:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
    129a:	66 0f 28 c1          	movapd %xmm1,%xmm0
    129e:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
    12a3:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    12a7:	66 0f 2e 45 d8       	ucomisd -0x28(%rbp),%xmm0
    12ac:	77 0b                	ja     12b9 <refraction+0xa4>
    12ae:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    12b2:	66 0f 2e 45 98       	ucomisd -0x68(%rbp),%xmm0
    12b7:	72 2a                	jb     12e3 <refraction+0xce>
    12b9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    12bd:	48 8d 50 08          	lea    0x8(%rax),%rdx
    12c1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    12c5:	48 8d 48 10          	lea    0x10(%rax),%rcx
    12c9:	b8 00 00 00 00       	mov    $0x0,%eax
    12ce:	48 89 01             	mov    %rax,(%rcx)
    12d1:	48 8b 01             	mov    (%rcx),%rax
    12d4:	48 89 02             	mov    %rax,(%rdx)
    12d7:	48 8b 02             	mov    (%rdx),%rax
    12da:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    12de:	48 89 02             	mov    %rax,(%rdx)
    12e1:	eb 70                	jmp    1353 <refraction+0x13e>
    12e3:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
    12e7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    12eb:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    12ef:	48 89 ce             	mov    %rcx,%rsi
    12f2:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    12f6:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
    12fb:	48 89 d7             	mov    %rdx,%rdi
    12fe:	e8 cc ef ff ff       	callq  2cf <multiply_vector>
    1303:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    1308:	f2 0f 59 45 d0       	mulsd  -0x30(%rbp),%xmm0
    130d:	f2 0f 11 45 90       	movsd  %xmm0,-0x70(%rbp)
    1312:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1316:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    131a:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    131f:	e8 00 00 00 00       	callq  1324 <refraction+0x10f>
    1324:	f2 0f 58 45 90       	addsd  -0x70(%rbp),%xmm0
    1329:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    132d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1331:	48 89 d6             	mov    %rdx,%rsi
    1334:	48 89 c7             	mov    %rax,%rdi
    1337:	e8 93 ef ff ff       	callq  2cf <multiply_vector>
    133c:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    1340:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    1344:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1348:	48 89 ce             	mov    %rcx,%rsi
    134b:	48 89 c7             	mov    %rax,%rdi
    134e:	e8 8b ee ff ff       	callq  1de <subtract_vector>
    1353:	c9                   	leaveq 
    1354:	c3                   	retq   

0000000000001355 <fresnel>:
    1355:	55                   	push   %rbp
    1356:	48 89 e5             	mov    %rsp,%rbp
    1359:	48 83 ec 50          	sub    $0x50,%rsp
    135d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1361:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1365:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    1369:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    136e:	f2 0f 11 4d b8       	movsd  %xmm1,-0x48(%rbp)
    1373:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1377:	48 89 c7             	mov    %rax,%rdi
    137a:	e8 73 ed ff ff       	callq  f2 <length>
    137f:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 1387 <fresnel+0x32>
    1386:	00 
    1387:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    138b:	76 0f                	jbe    139c <fresnel+0x47>
    138d:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
    1394:	00 f0 3f 
    1397:	e9 f3 00 00 00       	jmpq   148f <fresnel+0x13a>
    139c:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    13a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13a4:	48 89 d6             	mov    %rdx,%rsi
    13a7:	48 89 c7             	mov    %rax,%rdi
    13aa:	e8 52 f0 ff ff       	callq  401 <dot_product>
    13af:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 13b7 <fresnel+0x62>
    13b6:	00 
    13b7:	66 0f 57 c1          	xorpd  %xmm1,%xmm0
    13bb:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    13c0:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    13c4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    13c8:	48 89 d6             	mov    %rdx,%rsi
    13cb:	48 89 c7             	mov    %rax,%rdi
    13ce:	e8 2e f0 ff ff       	callq  401 <dot_product>
    13d3:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 13db <fresnel+0x86>
    13da:	00 
    13db:	66 0f 57 c1          	xorpd  %xmm1,%xmm0
    13df:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    13e4:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
    13e9:	f2 0f 59 45 e0       	mulsd  -0x20(%rbp),%xmm0
    13ee:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
    13f3:	f2 0f 59 4d e8       	mulsd  -0x18(%rbp),%xmm1
    13f8:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    13fc:	f2 0f 10 4d c0       	movsd  -0x40(%rbp),%xmm1
    1401:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1405:	f2 0f 59 55 e0       	mulsd  -0x20(%rbp),%xmm2
    140a:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
    140f:	f2 0f 59 4d e8       	mulsd  -0x18(%rbp),%xmm1
    1414:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1418:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    141c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    1421:	f2 0f 10 45 b8       	movsd  -0x48(%rbp),%xmm0
    1426:	f2 0f 59 45 e0       	mulsd  -0x20(%rbp),%xmm0
    142b:	f2 0f 10 4d c0       	movsd  -0x40(%rbp),%xmm1
    1430:	f2 0f 59 4d e8       	mulsd  -0x18(%rbp),%xmm1
    1435:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    1439:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
    143e:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1442:	f2 0f 59 55 e0       	mulsd  -0x20(%rbp),%xmm2
    1447:	f2 0f 10 4d c0       	movsd  -0x40(%rbp),%xmm1
    144c:	f2 0f 59 4d e8       	mulsd  -0x18(%rbp),%xmm1
    1451:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1455:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1459:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    145e:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    1463:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1467:	f2 0f 59 4d f0       	mulsd  -0x10(%rbp),%xmm1
    146c:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    1471:	f2 0f 59 45 f8       	mulsd  -0x8(%rbp),%xmm0
    1476:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    147a:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 1482 <fresnel+0x12d>
    1481:	00 
    1482:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1486:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
    148b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    148f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1493:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
    1498:	c9                   	leaveq 
    1499:	c3                   	retq   

000000000000149a <ray_hit_object>:
    149a:	55                   	push   %rbp
    149b:	48 89 e5             	mov    %rsp,%rbp
    149e:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
    14a5:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
    14ac:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
    14b3:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
    14ba:	f2 0f 11 85 40 ff ff 	movsd  %xmm0,-0xc0(%rbp)
    14c1:	ff 
    14c2:	f2 0f 11 8d 38 ff ff 	movsd  %xmm1,-0xc8(%rbp)
    14c9:	ff 
    14ca:	48 89 8d 30 ff ff ff 	mov    %rcx,-0xd0(%rbp)
    14d1:	4c 89 85 28 ff ff ff 	mov    %r8,-0xd8(%rbp)
    14d8:	4c 89 8d 20 ff ff ff 	mov    %r9,-0xe0(%rbp)
    14df:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    14e6:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    14ed:	48 8b 45 10          	mov    0x10(%rbp),%rax
    14f1:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    14f8:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    14fc:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    1503:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
    150a:	48 89 ce             	mov    %rcx,%rsi
    150d:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
    1514:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
    151b:	ff 
    151c:	48 89 d7             	mov    %rdx,%rdi
    151f:	e8 ab ed ff ff       	callq  2cf <multiply_vector>
    1524:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    1528:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
    152f:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    1533:	48 89 ce             	mov    %rcx,%rsi
    1536:	48 89 c7             	mov    %rax,%rdi
    1539:	e8 2d ec ff ff       	callq  16b <add_vector>
    153e:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    1545:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    154c:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    1553:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    155a:	e9 a6 00 00 00       	jmpq   1605 <ray_hit_object+0x16b>
    155f:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    1566:	48 8d bd 38 ff ff ff 	lea    -0xc8(%rbp),%rdi
    156d:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    1571:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
    1578:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    157c:	49 89 f8             	mov    %rdi,%r8
    157f:	48 89 c7             	mov    %rax,%rdi
    1582:	e8 98 f2 ff ff       	callq  81f <rayRectangularIntersection>
    1587:	85 c0                	test   %eax,%eax
    1589:	74 65                	je     15f0 <ray_hit_object+0x156>
    158b:	f2 0f 10 8d 38 ff ff 	movsd  -0xc8(%rbp),%xmm1
    1592:	ff 
    1593:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
    159a:	ff 
    159b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    159f:	76 4f                	jbe    15f0 <ray_hit_object+0x156>
    15a1:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    15a8:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    15af:	48 89 10             	mov    %rdx,(%rax)
    15b2:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    15b9:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    15c0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    15c4:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    15c8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15cc:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    15d0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    15d4:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    15d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15dc:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    15e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15e4:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    15e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15ec:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    15f0:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    15f7:	48 8b 80 c0 00 00 00 	mov    0xc0(%rax),%rax
    15fe:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    1605:	48 83 bd 70 ff ff ff 	cmpq   $0x0,-0x90(%rbp)
    160c:	00 
    160d:	0f 85 4c ff ff ff    	jne    155f <ray_hit_object+0xc5>
    1613:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
    161a:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    1621:	e9 ae 00 00 00       	jmpq   16d4 <ray_hit_object+0x23a>
    1626:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    162d:	48 8d bd 38 ff ff ff 	lea    -0xc8(%rbp),%rdi
    1634:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    1638:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
    163f:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    1643:	49 89 f8             	mov    %rdi,%r8
    1646:	48 89 c7             	mov    %rax,%rdi
    1649:	e8 d6 ef ff ff       	callq  624 <raySphereIntersection>
    164e:	85 c0                	test   %eax,%eax
    1650:	74 70                	je     16c2 <ray_hit_object+0x228>
    1652:	f2 0f 10 8d 38 ff ff 	movsd  -0xc8(%rbp),%xmm1
    1659:	ff 
    165a:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
    1661:	ff 
    1662:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    1666:	76 5a                	jbe    16c2 <ray_hit_object+0x228>
    1668:	48 8b 45 10          	mov    0x10(%rbp),%rax
    166c:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    1673:	48 89 10             	mov    %rdx,(%rax)
    1676:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    167d:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1684:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    168b:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    1692:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1696:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    169a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    169e:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    16a2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16a6:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    16aa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16ae:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    16b2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    16b6:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    16ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16be:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    16c2:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    16c9:	48 8b 40 68          	mov    0x68(%rax),%rax
    16cd:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    16d4:	48 83 bd 78 ff ff ff 	cmpq   $0x0,-0x88(%rbp)
    16db:	00 
    16dc:	0f 85 44 ff ff ff    	jne    1626 <ray_hit_object+0x18c>
    16e2:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    16e9:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    16ed:	48 89 10             	mov    %rdx,(%rax)
    16f0:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    16f4:	48 89 50 08          	mov    %rdx,0x8(%rax)
    16f8:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    16fc:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1700:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    1704:	48 89 50 18          	mov    %rdx,0x18(%rax)
    1708:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    170c:	48 89 50 20          	mov    %rdx,0x20(%rax)
    1710:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    1714:	48 89 50 28          	mov    %rdx,0x28(%rax)
    1718:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    171f:	c9                   	leaveq 
    1720:	c3                   	retq   

0000000000001721 <rayConstruction>:
    1721:	55                   	push   %rbp
    1722:	48 89 e5             	mov    %rsp,%rbp
    1725:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
    172c:	48 89 bd 38 ff ff ff 	mov    %rdi,-0xc8(%rbp)
    1733:	48 89 b5 30 ff ff ff 	mov    %rsi,-0xd0(%rbp)
    173a:	48 89 95 28 ff ff ff 	mov    %rdx,-0xd8(%rbp)
    1741:	48 89 8d 20 ff ff ff 	mov    %rcx,-0xe0(%rbp)
    1748:	44 89 85 1c ff ff ff 	mov    %r8d,-0xe4(%rbp)
    174f:	44 89 8d 18 ff ff ff 	mov    %r9d,-0xe8(%rbp)
    1756:	48 b8 ec 51 b8 1e 85 	movabs $0xbf91eb851eb851ec,%rax
    175d:	eb 91 bf 
    1760:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    1767:	48 b8 ec 51 b8 1e 85 	movabs $0xbf91eb851eb851ec,%rax
    176e:	eb 91 bf 
    1771:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    1778:	48 b8 ec 51 b8 1e 85 	movabs $0x3f91eb851eb851ec,%rax
    177f:	eb 91 3f 
    1782:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    1789:	48 b8 ec 51 b8 1e 85 	movabs $0x3f91eb851eb851ec,%rax
    1790:	eb 91 3f 
    1793:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    179a:	48 b8 9a 99 99 99 99 	movabs $0x3fa999999999999a,%rax
    17a1:	99 a9 3f 
    17a4:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    17ab:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    17b2:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    17b9:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
    17c0:	ff 
    17c1:	66 0f 28 c8          	movapd %xmm0,%xmm1
    17c5:	f2 0f 5c 8d 40 ff ff 	subsd  -0xc0(%rbp),%xmm1
    17cc:	ff 
    17cd:	8b 85 1c ff ff ff    	mov    -0xe4(%rbp),%eax
    17d3:	48 85 c0             	test   %rax,%rax
    17d6:	78 07                	js     17df <rayConstruction+0xbe>
    17d8:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
    17dd:	eb 15                	jmp    17f4 <rayConstruction+0xd3>
    17df:	48 89 c2             	mov    %rax,%rdx
    17e2:	48 d1 ea             	shr    %rdx
    17e5:	83 e0 01             	and    $0x1,%eax
    17e8:	48 09 c2             	or     %rax,%rdx
    17eb:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    17f0:	f3 0f 58 c0          	addss  %xmm0,%xmm0
    17f4:	0f 14 c0             	unpcklps %xmm0,%xmm0
    17f7:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
    17fa:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    17fe:	8b 45 18             	mov    0x18(%rbp),%eax
    1801:	83 e8 01             	sub    $0x1,%eax
    1804:	89 c0                	mov    %eax,%eax
    1806:	48 85 c0             	test   %rax,%rax
    1809:	78 07                	js     1812 <rayConstruction+0xf1>
    180b:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1810:	eb 15                	jmp    1827 <rayConstruction+0x106>
    1812:	48 89 c2             	mov    %rax,%rdx
    1815:	48 d1 ea             	shr    %rdx
    1818:	83 e0 01             	and    $0x1,%eax
    181b:	48 09 c2             	or     %rax,%rdx
    181e:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    1823:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    1827:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    182b:	66 0f 28 c1          	movapd %xmm1,%xmm0
    182f:	f2 0f 58 85 40 ff ff 	addsd  -0xc0(%rbp),%xmm0
    1836:	ff 
    1837:	f2 0f 11 85 70 ff ff 	movsd  %xmm0,-0x90(%rbp)
    183e:	ff 
    183f:	f2 0f 10 85 48 ff ff 	movsd  -0xb8(%rbp),%xmm0
    1846:	ff 
    1847:	66 0f 28 c8          	movapd %xmm0,%xmm1
    184b:	f2 0f 5c 8d 58 ff ff 	subsd  -0xa8(%rbp),%xmm1
    1852:	ff 
    1853:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
    1859:	48 85 c0             	test   %rax,%rax
    185c:	78 07                	js     1865 <rayConstruction+0x144>
    185e:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
    1863:	eb 15                	jmp    187a <rayConstruction+0x159>
    1865:	48 89 c2             	mov    %rax,%rdx
    1868:	48 d1 ea             	shr    %rdx
    186b:	83 e0 01             	and    $0x1,%eax
    186e:	48 09 c2             	or     %rax,%rdx
    1871:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    1876:	f3 0f 58 c0          	addss  %xmm0,%xmm0
    187a:	0f 14 c0             	unpcklps %xmm0,%xmm0
    187d:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
    1880:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1884:	8b 45 20             	mov    0x20(%rbp),%eax
    1887:	83 e8 01             	sub    $0x1,%eax
    188a:	89 c0                	mov    %eax,%eax
    188c:	48 85 c0             	test   %rax,%rax
    188f:	78 07                	js     1898 <rayConstruction+0x177>
    1891:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1896:	eb 15                	jmp    18ad <rayConstruction+0x18c>
    1898:	48 89 c2             	mov    %rax,%rdx
    189b:	48 d1 ea             	shr    %rdx
    189e:	83 e0 01             	and    $0x1,%eax
    18a1:	48 09 c2             	or     %rax,%rdx
    18a4:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    18a9:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    18ad:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    18b1:	66 0f 28 c1          	movapd %xmm1,%xmm0
    18b5:	f2 0f 58 85 58 ff ff 	addsd  -0xa8(%rbp),%xmm0
    18bc:	ff 
    18bd:	f2 0f 11 85 78 ff ff 	movsd  %xmm0,-0x88(%rbp)
    18c4:	ff 
    18c5:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    18c9:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    18d0:	48 8b 95 30 ff ff ff 	mov    -0xd0(%rbp),%rdx
    18d7:	48 89 ce             	mov    %rcx,%rsi
    18da:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    18e1:	f2 0f 10 85 10 ff ff 	movsd  -0xf0(%rbp),%xmm0
    18e8:	ff 
    18e9:	48 89 d7             	mov    %rdx,%rdi
    18ec:	e8 de e9 ff ff       	callq  2cf <multiply_vector>
    18f1:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    18f5:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    18fc:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
    1903:	48 89 ce             	mov    %rcx,%rsi
    1906:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    190d:	f2 0f 10 85 10 ff ff 	movsd  -0xf0(%rbp),%xmm0
    1914:	ff 
    1915:	48 89 d7             	mov    %rdx,%rdi
    1918:	e8 b2 e9 ff ff       	callq  2cf <multiply_vector>
    191d:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    1921:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    1928:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
    192f:	48 89 ce             	mov    %rcx,%rsi
    1932:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    1939:	f2 0f 10 85 10 ff ff 	movsd  -0xf0(%rbp),%xmm0
    1940:	ff 
    1941:	48 89 d7             	mov    %rdx,%rdi
    1944:	e8 86 e9 ff ff       	callq  2cf <multiply_vector>
    1949:	48 8b 45 10          	mov    0x10(%rbp),%rax
    194d:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1951:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    1955:	48 89 ce             	mov    %rcx,%rsi
    1958:	48 89 c7             	mov    %rax,%rdi
    195b:	e8 0b e8 ff ff       	callq  16b <add_vector>
    1960:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1964:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    1968:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    196c:	48 89 ce             	mov    %rcx,%rsi
    196f:	48 89 c7             	mov    %rax,%rdi
    1972:	e8 f4 e7 ff ff       	callq  16b <add_vector>
    1977:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    197b:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    197f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1983:	48 89 ce             	mov    %rcx,%rsi
    1986:	48 89 c7             	mov    %rax,%rdi
    1989:	e8 dd e7 ff ff       	callq  16b <add_vector>
    198e:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
    1992:	48 8b 95 38 ff ff ff 	mov    -0xc8(%rbp),%rdx
    1999:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    199d:	48 89 ce             	mov    %rcx,%rsi
    19a0:	48 89 c7             	mov    %rax,%rdi
    19a3:	e8 36 e8 ff ff       	callq  1de <subtract_vector>
    19a8:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    19af:	48 89 c7             	mov    %rax,%rdi
    19b2:	e8 49 e6 ff ff       	callq  0 <normalize>
    19b7:	c9                   	leaveq 
    19b8:	c3                   	retq   

00000000000019b9 <calculateBasisVectors>:
    19b9:	55                   	push   %rbp
    19ba:	48 89 e5             	mov    %rsp,%rbp
    19bd:	48 83 ec 20          	sub    $0x20,%rsp
    19c1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    19c5:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    19c9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    19cd:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    19d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    19d5:	48 8b 40 18          	mov    0x18(%rax),%rax
    19d9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    19dd:	48 89 02             	mov    %rax,(%rdx)
    19e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19e4:	48 8d 50 08          	lea    0x8(%rax),%rdx
    19e8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    19ec:	48 8b 40 20          	mov    0x20(%rax),%rax
    19f0:	48 89 02             	mov    %rax,(%rdx)
    19f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19f7:	48 8d 50 10          	lea    0x10(%rax),%rdx
    19fb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    19ff:	48 8b 40 28          	mov    0x28(%rax),%rax
    1a03:	48 89 02             	mov    %rax,(%rdx)
    1a06:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a0a:	48 89 c7             	mov    %rax,%rdi
    1a0d:	e8 ee e5 ff ff       	callq  0 <normalize>
    1a12:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1a16:	48 8d 48 30          	lea    0x30(%rax),%rcx
    1a1a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1a1e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a22:	48 89 ce             	mov    %rcx,%rsi
    1a25:	48 89 c7             	mov    %rax,%rdi
    1a28:	e8 fe e8 ff ff       	callq  32b <cross_product>
    1a2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a31:	48 89 c7             	mov    %rax,%rdi
    1a34:	e8 c7 e5 ff ff       	callq  0 <normalize>
    1a39:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1a3d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1a41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a45:	48 89 ce             	mov    %rcx,%rsi
    1a48:	48 89 c7             	mov    %rax,%rdi
    1a4b:	e8 db e8 ff ff       	callq  32b <cross_product>
    1a50:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a54:	48 89 c7             	mov    %rax,%rdi
    1a57:	e8 a4 e5 ff ff       	callq  0 <normalize>
    1a5c:	c9                   	leaveq 
    1a5d:	c3                   	retq   

0000000000001a5e <protect_color_overflow>:
    1a5e:	55                   	push   %rbp
    1a5f:	48 89 e5             	mov    %rsp,%rbp
    1a62:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1a66:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1a6d:	eb 4b                	jmp    1aba <protect_color_overflow+0x5c>
    1a6f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1a72:	48 98                	cltq   
    1a74:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1a7b:	00 
    1a7c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a80:	48 01 d0             	add    %rdx,%rax
    1a83:	f2 0f 10 00          	movsd  (%rax),%xmm0
    1a87:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 1a8f <protect_color_overflow+0x31>
    1a8e:	00 
    1a8f:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    1a93:	76 21                	jbe    1ab6 <protect_color_overflow+0x58>
    1a95:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1a98:	48 98                	cltq   
    1a9a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1aa1:	00 
    1aa2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1aa6:	48 01 c2             	add    %rax,%rdx
    1aa9:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
    1ab0:	00 f0 3f 
    1ab3:	48 89 02             	mov    %rax,(%rdx)
    1ab6:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1aba:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
    1abe:	7e af                	jle    1a6f <protect_color_overflow+0x11>
    1ac0:	5d                   	pop    %rbp
    1ac1:	c3                   	retq   

0000000000001ac2 <ray_color>:
    1ac2:	55                   	push   %rbp
    1ac3:	48 89 e5             	mov    %rsp,%rbp
    1ac6:	48 81 ec 30 02 00 00 	sub    $0x230,%rsp
    1acd:	48 89 bd 58 fe ff ff 	mov    %rdi,-0x1a8(%rbp)
    1ad4:	f2 0f 11 85 50 fe ff 	movsd  %xmm0,-0x1b0(%rbp)
    1adb:	ff 
    1adc:	48 89 b5 48 fe ff ff 	mov    %rsi,-0x1b8(%rbp)
    1ae3:	48 89 95 40 fe ff ff 	mov    %rdx,-0x1c0(%rbp)
    1aea:	48 89 8d 38 fe ff ff 	mov    %rcx,-0x1c8(%rbp)
    1af1:	4c 89 85 30 fe ff ff 	mov    %r8,-0x1d0(%rbp)
    1af8:	4c 89 8d 28 fe ff ff 	mov    %r9,-0x1d8(%rbp)
    1aff:	48 c7 85 68 fe ff ff 	movq   $0x0,-0x198(%rbp)
    1b06:	00 00 00 00 
    1b0a:	48 c7 85 70 fe ff ff 	movq   $0x0,-0x190(%rbp)
    1b11:	00 00 00 00 
    1b15:	48 c7 85 78 fe ff ff 	movq   $0x0,-0x188(%rbp)
    1b1c:	00 00 00 00 
    1b20:	48 c7 85 80 fe ff ff 	movq   $0x0,-0x180(%rbp)
    1b27:	00 00 00 00 
    1b2b:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
    1b2f:	75 36                	jne    1b67 <ray_color+0xa5>
    1b31:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    1b35:	b8 00 00 00 00       	mov    $0x0,%eax
    1b3a:	48 89 02             	mov    %rax,(%rdx)
    1b3d:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1b41:	48 8d 50 08          	lea    0x8(%rax),%rdx
    1b45:	b8 00 00 00 00       	mov    $0x0,%eax
    1b4a:	48 89 02             	mov    %rax,(%rdx)
    1b4d:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1b51:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1b55:	b8 00 00 00 00       	mov    $0x0,%eax
    1b5a:	48 89 02             	mov    %rax,(%rdx)
    1b5d:	b8 00 00 00 00       	mov    $0x0,%eax
    1b62:	e9 35 07 00 00       	jmpq   229c <ray_color+0x7da>
    1b67:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
    1b6b:	4c 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%r9
    1b72:	4c 8d 9d 68 fe ff ff 	lea    -0x198(%rbp),%r11
    1b79:	48 8b 8d 38 fe ff ff 	mov    -0x1c8(%rbp),%rcx
    1b80:	48 ba 00 00 00 a2 94 	movabs $0x426d1a94a2000000,%rdx
    1b87:	1a 6d 42 
    1b8a:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    1b91:	4c 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%r10
    1b98:	48 8b b5 58 fe ff ff 	mov    -0x1a8(%rbp),%rsi
    1b9f:	4c 8d 85 78 fe ff ff 	lea    -0x188(%rbp),%r8
    1ba6:	4c 89 04 24          	mov    %r8,(%rsp)
    1baa:	4d 89 d8             	mov    %r11,%r8
    1bad:	48 89 95 e8 fd ff ff 	mov    %rdx,-0x218(%rbp)
    1bb4:	f2 0f 10 8d e8 fd ff 	movsd  -0x218(%rbp),%xmm1
    1bbb:	ff 
    1bbc:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    1bc3:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    1bca:	ff 
    1bcb:	4c 89 d2             	mov    %r10,%rdx
    1bce:	e8 c7 f8 ff ff       	callq  149a <ray_hit_object>
    1bd3:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1bda:	48 85 c0             	test   %rax,%rax
    1bdd:	75 16                	jne    1bf5 <ray_color+0x133>
    1bdf:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1be6:	48 85 c0             	test   %rax,%rax
    1be9:	75 0a                	jne    1bf5 <ray_color+0x133>
    1beb:	b8 00 00 00 00       	mov    $0x0,%eax
    1bf0:	e9 a7 06 00 00       	jmpq   229c <ray_color+0x7da>
    1bf5:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1bfc:	48 85 c0             	test   %rax,%rax
    1bff:	74 69                	je     1c6a <ray_color+0x1a8>
    1c01:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1c08:	48 8b 50 78          	mov    0x78(%rax),%rdx
    1c0c:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
    1c10:	48 8b 90 80 00 00 00 	mov    0x80(%rax),%rdx
    1c17:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    1c1b:	48 8b 90 88 00 00 00 	mov    0x88(%rax),%rdx
    1c22:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
    1c26:	48 8b 90 90 00 00 00 	mov    0x90(%rax),%rdx
    1c2d:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    1c31:	48 8b 90 98 00 00 00 	mov    0x98(%rax),%rdx
    1c38:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    1c3c:	48 8b 90 a0 00 00 00 	mov    0xa0(%rax),%rdx
    1c43:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1c47:	48 8b 90 a8 00 00 00 	mov    0xa8(%rax),%rdx
    1c4e:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1c52:	48 8b 90 b0 00 00 00 	mov    0xb0(%rax),%rdx
    1c59:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1c5d:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    1c64:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1c68:	eb 4f                	jmp    1cb9 <ray_color+0x1f7>
    1c6a:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1c71:	48 8b 50 20          	mov    0x20(%rax),%rdx
    1c75:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
    1c79:	48 8b 50 28          	mov    0x28(%rax),%rdx
    1c7d:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    1c81:	48 8b 50 30          	mov    0x30(%rax),%rdx
    1c85:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
    1c89:	48 8b 50 38          	mov    0x38(%rax),%rdx
    1c8d:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    1c91:	48 8b 50 40          	mov    0x40(%rax),%rdx
    1c95:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    1c99:	48 8b 50 48          	mov    0x48(%rax),%rdx
    1c9d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1ca1:	48 8b 50 50          	mov    0x50(%rax),%rdx
    1ca5:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1ca9:	48 8b 50 58          	mov    0x58(%rax),%rdx
    1cad:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1cb1:	48 8b 40 60          	mov    0x60(%rax),%rax
    1cb5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1cb9:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1cc0:	48 85 c0             	test   %rax,%rax
    1cc3:	74 09                	je     1cce <ray_color+0x20c>
    1cc5:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1ccc:	eb 07                	jmp    1cd5 <ray_color+0x213>
    1cce:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1cd5:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    1cdc:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    1ce0:	b8 00 00 00 00       	mov    $0x0,%eax
    1ce5:	48 89 02             	mov    %rax,(%rdx)
    1ce8:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1cec:	48 8d 50 08          	lea    0x8(%rax),%rdx
    1cf0:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf5:	48 89 02             	mov    %rax,(%rdx)
    1cf8:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1cfc:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1d00:	b8 00 00 00 00       	mov    $0x0,%eax
    1d05:	48 89 02             	mov    %rax,(%rdx)
    1d08:	48 8b 85 28 fe ff ff 	mov    -0x1d8(%rbp),%rax
    1d0f:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    1d16:	e9 7c 01 00 00       	jmpq   1e97 <ray_color+0x3d5>
    1d1b:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    1d22:	48 8d 48 18          	lea    0x18(%rax),%rcx
    1d26:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
    1d2d:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    1d31:	48 89 ce             	mov    %rcx,%rsi
    1d34:	48 89 c7             	mov    %rax,%rdi
    1d37:	e8 a2 e4 ff ff       	callq  1de <subtract_vector>
    1d3c:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    1d43:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    1d4a:	48 89 d6             	mov    %rdx,%rsi
    1d4d:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 1d55 <ray_color+0x293>
    1d54:	00 
    1d55:	48 89 c7             	mov    %rax,%rdi
    1d58:	e8 72 e5 ff ff       	callq  2cf <multiply_vector>
    1d5d:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    1d64:	48 89 c7             	mov    %rax,%rdi
    1d67:	e8 94 e2 ff ff       	callq  0 <normalize>
    1d6c:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    1d73:	48 89 c7             	mov    %rax,%rdi
    1d76:	e8 77 e3 ff ff       	callq  f2 <length>
    1d7b:	f2 0f 11 85 e8 fd ff 	movsd  %xmm0,-0x218(%rbp)
    1d82:	ff 
    1d83:	48 8b 85 e8 fd ff ff 	mov    -0x218(%rbp),%rax
    1d8a:	48 8d bd f0 fd ff ff 	lea    -0x210(%rbp),%rdi
    1d91:	4c 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%r9
    1d98:	4c 8d 9d 70 fe ff ff 	lea    -0x190(%rbp),%r11
    1d9f:	48 8b 8d 38 fe ff ff 	mov    -0x1c8(%rbp),%rcx
    1da6:	48 ba f1 68 e3 88 b5 	movabs $0x3ee4f8b588e368f1,%rdx
    1dad:	f8 e4 3e 
    1db0:	4c 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%r10
    1db7:	48 8d 75 80          	lea    -0x80(%rbp),%rsi
    1dbb:	4c 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%r8
    1dc2:	4c 89 04 24          	mov    %r8,(%rsp)
    1dc6:	4d 89 d8             	mov    %r11,%r8
    1dc9:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    1dd0:	f2 0f 10 8d e8 fd ff 	movsd  -0x218(%rbp),%xmm1
    1dd7:	ff 
    1dd8:	48 89 95 e8 fd ff ff 	mov    %rdx,-0x218(%rbp)
    1ddf:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    1de6:	ff 
    1de7:	4c 89 d2             	mov    %r10,%rdx
    1dea:	e8 ab f6 ff ff       	callq  149a <ray_hit_object>
    1def:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    1df6:	48 85 c0             	test   %rax,%rax
    1df9:	75 0c                	jne    1e07 <ray_color+0x345>
    1dfb:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    1e02:	48 85 c0             	test   %rax,%rax
    1e05:	74 02                	je     1e09 <ray_color+0x347>
    1e07:	eb 7c                	jmp    1e85 <ray_color+0x3c3>
    1e09:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1e0d:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    1e11:	4c 8d 42 18          	lea    0x18(%rdx),%r8
    1e15:	48 8d 8d c0 fe ff ff 	lea    -0x140(%rbp),%rcx
    1e1c:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1e23:	48 8d b5 90 fe ff ff 	lea    -0x170(%rbp),%rsi
    1e2a:	48 8d bd 88 fe ff ff 	lea    -0x178(%rbp),%rdi
    1e31:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    1e38:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    1e3f:	ff 
    1e40:	e8 0d f1 ff ff       	callq  f52 <compute_specular_diffuse>
    1e45:	48 8b 8d 90 fe ff ff 	mov    -0x170(%rbp),%rcx
    1e4c:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    1e53:	48 8b b5 98 fe ff ff 	mov    -0x168(%rbp),%rsi
    1e5a:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    1e5e:	48 89 8d e8 fd ff ff 	mov    %rcx,-0x218(%rbp)
    1e65:	f2 0f 10 8d e8 fd ff 	movsd  -0x218(%rbp),%xmm1
    1e6c:	ff 
    1e6d:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    1e74:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    1e7b:	ff 
    1e7c:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    1e80:	e8 8a ee ff ff       	callq  d0f <localColor>
    1e85:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    1e8c:	48 8b 40 38          	mov    0x38(%rax),%rax
    1e90:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    1e97:	48 83 bd 98 fe ff ff 	cmpq   $0x0,-0x168(%rbp)
    1e9e:	00 
    1e9f:	0f 85 76 fe ff ff    	jne    1d1b <ray_color+0x259>
    1ea5:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    1ea9:	48 8d 50 18          	lea    0x18(%rax),%rdx
    1ead:	48 8b 8d 48 fe ff ff 	mov    -0x1b8(%rbp),%rcx
    1eb4:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    1ebb:	48 89 ce             	mov    %rcx,%rsi
    1ebe:	48 89 c7             	mov    %rax,%rdi
    1ec1:	e8 f0 f2 ff ff       	callq  11b6 <reflection>
    1ec6:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    1ecd:	48 89 c7             	mov    %rax,%rdi
    1ed0:	e8 d7 e6 ff ff       	callq  5ac <idx_stack_top>
    1ed5:	f2 0f 11 85 e8 fd ff 	movsd  %xmm0,-0x218(%rbp)
    1edc:	ff 
    1edd:	48 8b 8d e8 fd ff ff 	mov    -0x218(%rbp),%rcx
    1ee4:	48 89 c6             	mov    %rax,%rsi
    1ee7:	b8 00 00 00 00       	mov    $0x0,%eax
    1eec:	ba 00 00 00 00       	mov    $0x0,%edx
    1ef1:	48 89 c8             	mov    %rcx,%rax
    1ef4:	48 89 f2             	mov    %rsi,%rdx
    1ef7:	48 89 85 b0 fe ff ff 	mov    %rax,-0x150(%rbp)
    1efe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1f02:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    1f09:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    1f10:	48 89 c7             	mov    %rax,%rdi
    1f13:	e8 94 e6 ff ff       	callq  5ac <idx_stack_top>
    1f18:	f2 0f 11 85 e8 fd ff 	movsd  %xmm0,-0x218(%rbp)
    1f1f:	ff 
    1f20:	48 8b 8d e8 fd ff ff 	mov    -0x218(%rbp),%rcx
    1f27:	48 89 c6             	mov    %rax,%rsi
    1f2a:	b8 00 00 00 00       	mov    $0x0,%eax
    1f2f:	ba 00 00 00 00       	mov    $0x0,%edx
    1f34:	48 89 c8             	mov    %rcx,%rax
    1f37:	48 89 f2             	mov    %rsi,%rdx
    1f3a:	48 89 d0             	mov    %rdx,%rax
    1f3d:	48 3b 85 a8 fe ff ff 	cmp    -0x158(%rbp),%rax
    1f44:	75 49                	jne    1f8f <ray_color+0x4cd>
    1f46:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    1f4d:	48 89 c7             	mov    %rax,%rdi
    1f50:	e8 cb e5 ff ff       	callq  520 <idx_stack_pop>
    1f55:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    1f5c:	48 89 c7             	mov    %rax,%rdi
    1f5f:	e8 48 e6 ff ff       	callq  5ac <idx_stack_top>
    1f64:	f2 0f 11 85 e8 fd ff 	movsd  %xmm0,-0x218(%rbp)
    1f6b:	ff 
    1f6c:	48 8b 8d e8 fd ff ff 	mov    -0x218(%rbp),%rcx
    1f73:	48 89 c6             	mov    %rax,%rsi
    1f76:	b8 00 00 00 00       	mov    $0x0,%eax
    1f7b:	ba 00 00 00 00       	mov    $0x0,%edx
    1f80:	48 89 c8             	mov    %rcx,%rax
    1f83:	48 89 f2             	mov    %rsi,%rdx
    1f86:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    1f8d:	eb 48                	jmp    1fd7 <ray_color+0x515>
    1f8f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1f93:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    1f9a:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    1fa1:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    1fa8:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    1faf:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
    1fb6:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    1fbd:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    1fc4:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    1fcb:	ff 
    1fcc:	48 89 ce             	mov    %rcx,%rsi
    1fcf:	48 89 d7             	mov    %rdx,%rdi
    1fd2:	e8 bf e4 ff ff       	callq  496 <idx_stack_push>
    1fd7:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    1fde:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
    1fe5:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    1fe9:	48 8d 79 18          	lea    0x18(%rcx),%rdi
    1fed:	48 8b b5 48 fe ff ff 	mov    -0x1b8(%rbp),%rsi
    1ff4:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
    1ffb:	48 89 95 e8 fd ff ff 	mov    %rdx,-0x218(%rbp)
    2002:	f2 0f 10 8d e8 fd ff 	movsd  -0x218(%rbp),%xmm1
    2009:	ff 
    200a:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    2011:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    2018:	ff 
    2019:	48 89 fa             	mov    %rdi,%rdx
    201c:	48 89 cf             	mov    %rcx,%rdi
    201f:	e8 f1 f1 ff ff       	callq  1215 <refraction>
    2024:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    2029:	66 0f 2e 05 00 00 00 	ucomisd 0x0(%rip),%xmm0        # 2031 <ray_color+0x56f>
    2030:	00 
    2031:	76 5e                	jbe    2091 <ray_color+0x5cf>
    2033:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    203a:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
    2041:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    2045:	48 8d 79 18          	lea    0x18(%rcx),%rdi
    2049:	48 8d b5 20 ff ff ff 	lea    -0xe0(%rbp),%rsi
    2050:	48 8b 8d 48 fe ff ff 	mov    -0x1b8(%rbp),%rcx
    2057:	48 89 95 e8 fd ff ff 	mov    %rdx,-0x218(%rbp)
    205e:	f2 0f 10 8d e8 fd ff 	movsd  -0x218(%rbp),%xmm1
    2065:	ff 
    2066:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    206d:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    2074:	ff 
    2075:	48 89 fa             	mov    %rdi,%rdx
    2078:	48 89 cf             	mov    %rcx,%rdi
    207b:	e8 d5 f2 ff ff       	callq  1355 <fresnel>
    2080:	f2 0f 11 85 e8 fd ff 	movsd  %xmm0,-0x218(%rbp)
    2087:	ff 
    2088:	48 8b 85 e8 fd ff ff 	mov    -0x218(%rbp),%rax
    208f:	eb 0a                	jmp    209b <ray_color+0x5d9>
    2091:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
    2098:	00 f0 3f 
    209b:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
    20a2:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    20a7:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    20ab:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    20af:	0f 86 db 00 00 00    	jbe    2190 <ray_color+0x6ce>
    20b5:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    20bc:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
    20c2:	89 85 64 fe ff ff    	mov    %eax,-0x19c(%rbp)
    20c8:	8b 45 18             	mov    0x18(%rbp),%eax
    20cb:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
    20cf:	4c 8b 8d 28 fe ff ff 	mov    -0x1d8(%rbp),%r9
    20d6:	4c 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%r10
    20dd:	48 8b 8d 38 fe ff ff 	mov    -0x1c8(%rbp),%rcx
    20e4:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    20eb:	48 8d b5 00 ff ff ff 	lea    -0x100(%rbp),%rsi
    20f2:	48 b8 f1 68 e3 88 b5 	movabs $0x3ee4f8b588e368f1,%rax
    20f9:	f8 e4 3e 
    20fc:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
    2100:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    2105:	4c 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%r8
    210c:	4c 89 04 24          	mov    %r8,(%rsp)
    2110:	4d 89 d0             	mov    %r10,%r8
    2113:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    211a:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    2121:	ff 
    2122:	e8 9b f9 ff ff       	callq  1ac2 <ray_color>
    2127:	85 c0                	test   %eax,%eax
    2129:	74 52                	je     217d <ray_color+0x6bb>
    212b:	f2 0f 10 4d c8       	movsd  -0x38(%rbp),%xmm1
    2130:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 2138 <ray_color+0x676>
    2137:	00 
    2138:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    213c:	f2 0f 59 85 b8 fe ff 	mulsd  -0x148(%rbp),%xmm0
    2143:	ff 
    2144:	f2 0f 10 4d e0       	movsd  -0x20(%rbp),%xmm1
    2149:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    214d:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
    2154:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    215b:	48 89 d6             	mov    %rdx,%rsi
    215e:	48 89 c7             	mov    %rax,%rdi
    2161:	e8 69 e1 ff ff       	callq  2cf <multiply_vector>
    2166:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    216d:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    2171:	48 89 c6             	mov    %rax,%rsi
    2174:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    2178:	e8 ee df ff ff       	callq  16b <add_vector>
    217d:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    2184:	8b 95 64 fe ff ff    	mov    -0x19c(%rbp),%edx
    218a:	89 90 00 01 00 00    	mov    %edx,0x100(%rax)
    2190:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    2197:	48 89 c7             	mov    %rax,%rdi
    219a:	e8 53 df ff ff       	callq  f2 <length>
    219f:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    21a3:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    21a7:	0f 86 e1 00 00 00    	jbe    228e <ray_color+0x7cc>
    21ad:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    21b2:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    21b6:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    21ba:	0f 86 ce 00 00 00    	jbe    228e <ray_color+0x7cc>
    21c0:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    21c5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    21c9:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    21cd:	0f 86 bb 00 00 00    	jbe    228e <ray_color+0x7cc>
    21d3:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    21da:	48 89 c7             	mov    %rax,%rdi
    21dd:	e8 1e de ff ff       	callq  0 <normalize>
    21e2:	8b 45 18             	mov    0x18(%rbp),%eax
    21e5:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
    21e9:	4c 8b 8d 28 fe ff ff 	mov    -0x1d8(%rbp),%r9
    21f0:	4c 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%r10
    21f7:	48 8b 8d 38 fe ff ff 	mov    -0x1c8(%rbp),%rcx
    21fe:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    2205:	48 8d b5 20 ff ff ff 	lea    -0xe0(%rbp),%rsi
    220c:	48 b8 f1 68 e3 88 b5 	movabs $0x3ee4f8b588e368f1,%rax
    2213:	f8 e4 3e 
    2216:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
    221a:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    221f:	4c 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%r8
    2226:	4c 89 04 24          	mov    %r8,(%rsp)
    222a:	4d 89 d0             	mov    %r10,%r8
    222d:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    2234:	f2 0f 10 85 e8 fd ff 	movsd  -0x218(%rbp),%xmm0
    223b:	ff 
    223c:	e8 81 f8 ff ff       	callq  1ac2 <ray_color>
    2241:	85 c0                	test   %eax,%eax
    2243:	74 49                	je     228e <ray_color+0x7cc>
    2245:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 224d <ray_color+0x78b>
    224c:	00 
    224d:	f2 0f 5c 85 b8 fe ff 	subsd  -0x148(%rbp),%xmm0
    2254:	ff 
    2255:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
    225a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    225e:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    2265:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    226c:	48 89 d6             	mov    %rdx,%rsi
    226f:	48 89 c7             	mov    %rax,%rdi
    2272:	e8 58 e0 ff ff       	callq  2cf <multiply_vector>
    2277:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    227e:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    2282:	48 89 c6             	mov    %rax,%rsi
    2285:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    2289:	e8 dd de ff ff       	callq  16b <add_vector>
    228e:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    2292:	e8 c7 f7 ff ff       	callq  1a5e <protect_color_overflow>
    2297:	b8 01 00 00 00       	mov    $0x1,%eax
    229c:	c9                   	leaveq 
    229d:	c3                   	retq   

000000000000229e <raytracing>:
    229e:	55                   	push   %rbp
    229f:	48 89 e5             	mov    %rsp,%rbp
    22a2:	48 81 ec 30 02 00 00 	sub    $0x230,%rsp
    22a9:	48 89 bd 18 fe ff ff 	mov    %rdi,-0x1e8(%rbp)
    22b0:	48 89 b5 10 fe ff ff 	mov    %rsi,-0x1f0(%rbp)
    22b7:	48 89 95 08 fe ff ff 	mov    %rdx,-0x1f8(%rbp)
    22be:	48 89 8d 00 fe ff ff 	mov    %rcx,-0x200(%rbp)
    22c5:	4c 89 85 f8 fd ff ff 	mov    %r8,-0x208(%rbp)
    22cc:	4c 89 8d f0 fd ff ff 	mov    %r9,-0x210(%rbp)
    22d3:	b8 00 00 00 00       	mov    $0x0,%eax
    22d8:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
    22df:	b8 00 00 00 00       	mov    $0x0,%eax
    22e4:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
    22eb:	b8 00 00 00 00       	mov    $0x0,%eax
    22f0:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    22f7:	48 8b 8d f0 fd ff ff 	mov    -0x210(%rbp),%rcx
    22fe:	48 8d 95 90 fe ff ff 	lea    -0x170(%rbp),%rdx
    2305:	48 8d b5 70 fe ff ff 	lea    -0x190(%rbp),%rsi
    230c:	48 8d 85 50 fe ff ff 	lea    -0x1b0(%rbp),%rax
    2313:	48 89 c7             	mov    %rax,%rdi
    2316:	e8 9e f6 ff ff       	callq  19b9 <calculateBasisVectors>
    231b:	c7 85 34 fe ff ff 02 	movl   $0x2,-0x1cc(%rbp)
    2322:	00 00 00 
    2325:	c7 85 28 fe ff ff 00 	movl   $0x0,-0x1d8(%rbp)
    232c:	00 00 00 
    232f:	e9 0f 03 00 00       	jmpq   2643 <raytracing+0x3a5>
    2334:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
    233b:	00 00 00 
    233e:	e9 ea 02 00 00       	jmpq   262d <raytracing+0x38f>
    2343:	b8 00 00 00 00       	mov    $0x0,%eax
    2348:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    234f:	b8 00 00 00 00       	mov    $0x0,%eax
    2354:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    235b:	b8 00 00 00 00       	mov    $0x0,%eax
    2360:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    2367:	c7 85 30 fe ff ff 00 	movl   $0x0,-0x1d0(%rbp)
    236e:	00 00 00 
    2371:	e9 a3 02 00 00       	jmpq   2619 <raytracing+0x37b>
    2376:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    237d:	48 89 c7             	mov    %rax,%rdi
    2380:	e8 f9 e0 ff ff       	callq  47e <idx_stack_init>
    2385:	8b 45 18             	mov    0x18(%rbp),%eax
    2388:	0f af 85 34 fe ff ff 	imul   -0x1cc(%rbp),%eax
    238f:	41 89 c0             	mov    %eax,%r8d
    2392:	8b 45 10             	mov    0x10(%rbp),%eax
    2395:	0f af 85 34 fe ff ff 	imul   -0x1cc(%rbp),%eax
    239c:	89 c7                	mov    %eax,%edi
    239e:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    23a4:	0f af 85 34 fe ff ff 	imul   -0x1cc(%rbp),%eax
    23ab:	89 c1                	mov    %eax,%ecx
    23ad:	8b 85 30 fe ff ff    	mov    -0x1d0(%rbp),%eax
    23b3:	99                   	cltd   
    23b4:	f7 bd 34 fe ff ff    	idivl  -0x1cc(%rbp)
    23ba:	89 d0                	mov    %edx,%eax
    23bc:	01 c8                	add    %ecx,%eax
    23be:	41 89 c1             	mov    %eax,%r9d
    23c1:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    23c7:	0f af 85 34 fe ff ff 	imul   -0x1cc(%rbp),%eax
    23ce:	89 c1                	mov    %eax,%ecx
    23d0:	8b 85 30 fe ff ff    	mov    -0x1d0(%rbp),%eax
    23d6:	99                   	cltd   
    23d7:	f7 bd 34 fe ff ff    	idivl  -0x1cc(%rbp)
    23dd:	01 c8                	add    %ecx,%eax
    23df:	41 89 c2             	mov    %eax,%r10d
    23e2:	48 8d 8d 90 fe ff ff 	lea    -0x170(%rbp),%rcx
    23e9:	48 8d 95 70 fe ff ff 	lea    -0x190(%rbp),%rdx
    23f0:	48 8d b5 50 fe ff ff 	lea    -0x1b0(%rbp),%rsi
    23f7:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
    23fe:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
    2403:	89 7c 24 08          	mov    %edi,0x8(%rsp)
    2407:	48 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%rdi
    240e:	48 89 3c 24          	mov    %rdi,(%rsp)
    2412:	45 89 d0             	mov    %r10d,%r8d
    2415:	48 89 c7             	mov    %rax,%rdi
    2418:	e8 04 f3 ff ff       	callq  1721 <rayConstruction>
    241d:	48 8b 85 f0 fd ff ff 	mov    -0x210(%rbp),%rax
    2424:	4c 8b 8d f8 fd ff ff 	mov    -0x208(%rbp),%r9
    242b:	4c 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%r8
    2432:	48 8b 8d 08 fe ff ff 	mov    -0x1f8(%rbp),%rcx
    2439:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
    2440:	48 8d b5 b0 fe ff ff 	lea    -0x150(%rbp),%rsi
    2447:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%rsp)
    244e:	00 
    244f:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
    2456:	48 89 3c 24          	mov    %rdi,(%rsp)
    245a:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    245e:	48 89 c7             	mov    %rax,%rdi
    2461:	e8 5c f6 ff ff       	callq  1ac2 <ray_color>
    2466:	85 c0                	test   %eax,%eax
    2468:	74 56                	je     24c0 <raytracing+0x222>
    246a:	f2 0f 10 85 d0 fe ff 	movsd  -0x130(%rbp),%xmm0
    2471:	ff 
    2472:	f2 0f 10 8d 38 fe ff 	movsd  -0x1c8(%rbp),%xmm1
    2479:	ff 
    247a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    247e:	f2 0f 11 85 38 fe ff 	movsd  %xmm0,-0x1c8(%rbp)
    2485:	ff 
    2486:	f2 0f 10 85 d8 fe ff 	movsd  -0x128(%rbp),%xmm0
    248d:	ff 
    248e:	f2 0f 10 8d 40 fe ff 	movsd  -0x1c0(%rbp),%xmm1
    2495:	ff 
    2496:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    249a:	f2 0f 11 85 40 fe ff 	movsd  %xmm0,-0x1c0(%rbp)
    24a1:	ff 
    24a2:	f2 0f 10 85 e0 fe ff 	movsd  -0x120(%rbp),%xmm0
    24a9:	ff 
    24aa:	f2 0f 10 8d 48 fe ff 	movsd  -0x1b8(%rbp),%xmm1
    24b1:	ff 
    24b2:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    24b6:	f2 0f 11 85 48 fe ff 	movsd  %xmm0,-0x1b8(%rbp)
    24bd:	ff 
    24be:	eb 65                	jmp    2525 <raytracing+0x287>
    24c0:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    24c7:	f2 0f 10 00          	movsd  (%rax),%xmm0
    24cb:	f2 0f 10 8d 38 fe ff 	movsd  -0x1c8(%rbp),%xmm1
    24d2:	ff 
    24d3:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    24d7:	f2 0f 11 85 38 fe ff 	movsd  %xmm0,-0x1c8(%rbp)
    24de:	ff 
    24df:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    24e6:	48 83 c0 08          	add    $0x8,%rax
    24ea:	f2 0f 10 00          	movsd  (%rax),%xmm0
    24ee:	f2 0f 10 8d 40 fe ff 	movsd  -0x1c0(%rbp),%xmm1
    24f5:	ff 
    24f6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    24fa:	f2 0f 11 85 40 fe ff 	movsd  %xmm0,-0x1c0(%rbp)
    2501:	ff 
    2502:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    2509:	48 83 c0 10          	add    $0x10,%rax
    250d:	f2 0f 10 00          	movsd  (%rax),%xmm0
    2511:	f2 0f 10 8d 48 fe ff 	movsd  -0x1b8(%rbp),%xmm1
    2518:	ff 
    2519:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    251d:	f2 0f 11 85 48 fe ff 	movsd  %xmm0,-0x1b8(%rbp)
    2524:	ff 
    2525:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    252b:	0f af 45 10          	imul   0x10(%rbp),%eax
    252f:	89 c2                	mov    %eax,%edx
    2531:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    2537:	01 c2                	add    %eax,%edx
    2539:	89 d0                	mov    %edx,%eax
    253b:	01 c0                	add    %eax,%eax
    253d:	01 d0                	add    %edx,%eax
    253f:	48 63 d0             	movslq %eax,%rdx
    2542:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    2549:	48 01 c2             	add    %rax,%rdx
    254c:	f2 0f 10 8d 38 fe ff 	movsd  -0x1c8(%rbp),%xmm1
    2553:	ff 
    2554:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 255c <raytracing+0x2be>
    255b:	00 
    255c:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2560:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 2568 <raytracing+0x2ca>
    2567:	00 
    2568:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    256c:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    2570:	88 02                	mov    %al,(%rdx)
    2572:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    2578:	0f af 45 10          	imul   0x10(%rbp),%eax
    257c:	89 c2                	mov    %eax,%edx
    257e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    2584:	01 c2                	add    %eax,%edx
    2586:	89 d0                	mov    %edx,%eax
    2588:	01 c0                	add    %eax,%eax
    258a:	01 d0                	add    %edx,%eax
    258c:	48 98                	cltq   
    258e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2592:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    2599:	48 01 c2             	add    %rax,%rdx
    259c:	f2 0f 10 8d 40 fe ff 	movsd  -0x1c0(%rbp),%xmm1
    25a3:	ff 
    25a4:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 25ac <raytracing+0x30e>
    25ab:	00 
    25ac:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    25b0:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 25b8 <raytracing+0x31a>
    25b7:	00 
    25b8:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    25bc:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    25c0:	88 02                	mov    %al,(%rdx)
    25c2:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    25c8:	0f af 45 10          	imul   0x10(%rbp),%eax
    25cc:	89 c2                	mov    %eax,%edx
    25ce:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    25d4:	01 c2                	add    %eax,%edx
    25d6:	89 d0                	mov    %edx,%eax
    25d8:	01 c0                	add    %eax,%eax
    25da:	01 d0                	add    %edx,%eax
    25dc:	48 98                	cltq   
    25de:	48 8d 50 02          	lea    0x2(%rax),%rdx
    25e2:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    25e9:	48 01 c2             	add    %rax,%rdx
    25ec:	f2 0f 10 8d 48 fe ff 	movsd  -0x1b8(%rbp),%xmm1
    25f3:	ff 
    25f4:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 25fc <raytracing+0x35e>
    25fb:	00 
    25fc:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2600:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 2608 <raytracing+0x36a>
    2607:	00 
    2608:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    260c:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    2610:	88 02                	mov    %al,(%rdx)
    2612:	83 85 30 fe ff ff 01 	addl   $0x1,-0x1d0(%rbp)
    2619:	83 bd 30 fe ff ff 03 	cmpl   $0x3,-0x1d0(%rbp)
    2620:	0f 8e 50 fd ff ff    	jle    2376 <raytracing+0xd8>
    2626:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
    262d:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    2633:	3b 45 10             	cmp    0x10(%rbp),%eax
    2636:	0f 8c 07 fd ff ff    	jl     2343 <raytracing+0xa5>
    263c:	83 85 28 fe ff ff 01 	addl   $0x1,-0x1d8(%rbp)
    2643:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    2649:	3b 45 18             	cmp    0x18(%rbp),%eax
    264c:	0f 8c e2 fc ff ff    	jl     2334 <raytracing+0x96>
    2652:	c9                   	leaveq 
    2653:	c3                   	retq   
