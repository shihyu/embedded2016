
raytracing.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <normalize>:
       0:	55                   	push   %rbp
       1:	48 89 e5             	mov    %rsp,%rbp
       4:	48 83 ec 20          	sub    $0x20,%rsp
       8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
       c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      10:	c5 fb 10 08          	vmovsd (%rax),%xmm1
      14:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      18:	c5 fb 10 00          	vmovsd (%rax),%xmm0
      1c:	c5 f3 59 c8          	vmulsd %xmm0,%xmm1,%xmm1
      20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      24:	48 83 c0 08          	add    $0x8,%rax
      28:	c5 fb 10 10          	vmovsd (%rax),%xmm2
      2c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      30:	48 83 c0 08          	add    $0x8,%rax
      34:	c5 fb 10 00          	vmovsd (%rax),%xmm0
      38:	c5 eb 59 c0          	vmulsd %xmm0,%xmm2,%xmm0
      3c:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
      40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      44:	48 83 c0 10          	add    $0x10,%rax
      48:	c5 fb 10 10          	vmovsd (%rax),%xmm2
      4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      50:	48 83 c0 10          	add    $0x10,%rax
      54:	c5 fb 10 00          	vmovsd (%rax),%xmm0
      58:	c5 eb 59 c0          	vmulsd %xmm0,%xmm2,%xmm0
      5c:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
      60:	e8 00 00 00 00       	callq  65 <normalize+0x65>
      65:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
      6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      6e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      72:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
      76:	c5 f9 2e 45 f8       	vucomisd -0x8(%rbp),%xmm0
      7b:	7a 24                	jp     a1 <normalize+0xa1>
      7d:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
      81:	c5 f9 2e 45 f8       	vucomisd -0x8(%rbp),%xmm0
      86:	75 19                	jne    a1 <normalize+0xa1>
      88:	b9 00 00 00 00       	mov    $0x0,%ecx
      8d:	ba 0d 00 00 00       	mov    $0xd,%edx
      92:	be 00 00 00 00       	mov    $0x0,%esi
      97:	bf 00 00 00 00       	mov    $0x0,%edi
      9c:	e8 00 00 00 00       	callq  a1 <normalize+0xa1>
      a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      a5:	c5 fb 10 00          	vmovsd (%rax),%xmm0
      a9:	c5 fb 5e 45 f8       	vdivsd -0x8(%rbp),%xmm0,%xmm0
      ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      b2:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
      b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      ba:	48 83 c0 08          	add    $0x8,%rax
      be:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
      c2:	48 83 c2 08          	add    $0x8,%rdx
      c6:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
      ca:	c5 fb 5e 45 f8       	vdivsd -0x8(%rbp),%xmm0,%xmm0
      cf:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
      d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      d7:	48 83 c0 10          	add    $0x10,%rax
      db:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
      df:	48 83 c2 10          	add    $0x10,%rdx
      e3:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
      e7:	c5 fb 5e 45 f8       	vdivsd -0x8(%rbp),%xmm0,%xmm0
      ec:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
      f0:	c9                   	leaveq 
      f1:	c3                   	retq   

00000000000000f2 <length>:
      f2:	55                   	push   %rbp
      f3:	48 89 e5             	mov    %rsp,%rbp
      f6:	48 83 ec 10          	sub    $0x10,%rsp
      fa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     102:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     106:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     10a:	c5 fb 10 00          	vmovsd (%rax),%xmm0
     10e:	c5 f3 59 c8          	vmulsd %xmm0,%xmm1,%xmm1
     112:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     116:	48 83 c0 08          	add    $0x8,%rax
     11a:	c5 fb 10 10          	vmovsd (%rax),%xmm2
     11e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     122:	48 83 c0 08          	add    $0x8,%rax
     126:	c5 fb 10 00          	vmovsd (%rax),%xmm0
     12a:	c5 eb 59 c0          	vmulsd %xmm0,%xmm2,%xmm0
     12e:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
     132:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     136:	48 83 c0 10          	add    $0x10,%rax
     13a:	c5 fb 10 10          	vmovsd (%rax),%xmm2
     13e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     142:	48 83 c0 10          	add    $0x10,%rax
     146:	c5 fb 10 00          	vmovsd (%rax),%xmm0
     14a:	c5 eb 59 c0          	vmulsd %xmm0,%xmm2,%xmm0
     14e:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
     152:	e8 00 00 00 00       	callq  157 <length+0x65>
     157:	c5 fb 11 45 f0       	vmovsd %xmm0,-0x10(%rbp)
     15c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     160:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     164:	c5 fb 10 45 f0       	vmovsd -0x10(%rbp),%xmm0
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
     1ad:	c5 fb 10 0a          	vmovsd (%rdx),%xmm1
     1b1:	8b 55 fc             	mov    -0x4(%rbp),%edx
     1b4:	48 63 d2             	movslq %edx,%rdx
     1b7:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
     1be:	00 
     1bf:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     1c3:	48 01 ca             	add    %rcx,%rdx
     1c6:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
     1ca:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
     1ce:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
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
     1f2:	c5 fb 10 00          	vmovsd (%rax),%xmm0
     1f6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     1fa:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     1fe:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
     202:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     206:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
     20a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     20e:	48 83 c0 08          	add    $0x8,%rax
     212:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     216:	48 83 c2 08          	add    $0x8,%rdx
     21a:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
     21e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     222:	48 83 c2 08          	add    $0x8,%rdx
     226:	c5 fb 10 0a          	vmovsd (%rdx),%xmm1
     22a:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
     22e:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
     232:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     236:	48 83 c0 10          	add    $0x10,%rax
     23a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     23e:	48 83 c2 10          	add    $0x10,%rdx
     242:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
     246:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     24a:	48 83 c2 10          	add    $0x10,%rdx
     24e:	c5 fb 10 0a          	vmovsd (%rdx),%xmm1
     252:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
     256:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
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
     29e:	c5 fb 10 0a          	vmovsd (%rdx),%xmm1
     2a2:	8b 55 fc             	mov    -0x4(%rbp),%edx
     2a5:	48 63 d2             	movslq %edx,%rdx
     2a8:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
     2af:	00 
     2b0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     2b4:	48 01 ca             	add    %rcx,%rdx
     2b7:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
     2bb:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
     2bf:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
     2c3:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     2c7:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
     2cb:	7e a8                	jle    275 <multiply_vectors+0x19>
     2cd:	5d                   	pop    %rbp
     2ce:	c3                   	retq   

00000000000002cf <multiply_vector>:
     2cf:	55                   	push   %rbp
     2d0:	48 89 e5             	mov    %rsp,%rbp
     2d3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     2d7:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
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
     312:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
     316:	c5 fb 59 45 e0       	vmulsd -0x20(%rbp),%xmm0,%xmm0
     31b:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
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
     343:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     347:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     34b:	48 83 c0 10          	add    $0x10,%rax
     34f:	c5 fb 10 00          	vmovsd (%rax),%xmm0
     353:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
     357:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     35b:	48 83 c0 10          	add    $0x10,%rax
     35f:	c5 fb 10 10          	vmovsd (%rax),%xmm2
     363:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     367:	48 83 c0 08          	add    $0x8,%rax
     36b:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     36f:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
     373:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
     377:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     37b:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
     37f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     383:	48 8d 50 08          	lea    0x8(%rax),%rdx
     387:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     38b:	48 83 c0 10          	add    $0x10,%rax
     38f:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     393:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     397:	c5 fb 10 00          	vmovsd (%rax),%xmm0
     39b:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
     39f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     3a3:	c5 fb 10 10          	vmovsd (%rax),%xmm2
     3a7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     3ab:	48 83 c0 10          	add    $0x10,%rax
     3af:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     3b3:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
     3b7:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
     3bb:	c5 fb 11 02          	vmovsd %xmm0,(%rdx)
     3bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     3c3:	48 8d 50 10          	lea    0x10(%rax),%rdx
     3c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     3cb:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     3cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     3d3:	48 83 c0 08          	add    $0x8,%rax
     3d7:	c5 fb 10 00          	vmovsd (%rax),%xmm0
     3db:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
     3df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     3e3:	48 83 c0 08          	add    $0x8,%rax
     3e7:	c5 fb 10 10          	vmovsd (%rax),%xmm2
     3eb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     3ef:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     3f3:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
     3f7:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
     3fb:	c5 fb 11 02          	vmovsd %xmm0,(%rdx)
     3ff:	5d                   	pop    %rbp
     400:	c3                   	retq   

0000000000000401 <dot_product>:
     401:	55                   	push   %rbp
     402:	48 89 e5             	mov    %rsp,%rbp
     405:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
     409:	48 83 ec 60          	sub    $0x60,%rsp
     40d:	48 89 7c 24 98       	mov    %rdi,-0x68(%rsp)
     412:	48 89 74 24 90       	mov    %rsi,-0x70(%rsp)
     417:	b8 00 00 00 00       	mov    $0x0,%eax
     41c:	48 89 44 24 a0       	mov    %rax,-0x60(%rsp)
     421:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
     426:	48 89 44 24 a8       	mov    %rax,-0x58(%rsp)
     42b:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
     430:	c5 fd 10 00          	vmovupd (%rax),%ymm0
     434:	c5 fd 28 d0          	vmovapd %ymm0,%ymm2
     438:	48 8b 44 24 90       	mov    -0x70(%rsp),%rax
     43d:	48 89 44 24 b0       	mov    %rax,-0x50(%rsp)
     442:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
     447:	c5 fd 10 00          	vmovupd (%rax),%ymm0
     44b:	c5 fd 28 d8          	vmovapd %ymm0,%ymm3
     44f:	c5 fd 29 14 24       	vmovapd %ymm2,(%rsp)
     454:	c5 fd 29 5c 24 20    	vmovapd %ymm3,0x20(%rsp)
     45a:	c5 fd 28 44 24 20    	vmovapd 0x20(%rsp),%ymm0
     460:	c5 fd 28 0c 24       	vmovapd (%rsp),%ymm1
     465:	c5 f5 59 c0          	vmulpd %ymm0,%ymm1,%ymm0
     469:	c5 fd 29 44 24 c0    	vmovapd %ymm0,-0x40(%rsp)
     46f:	c5 fd 28 44 24 c0    	vmovapd -0x40(%rsp),%ymm0
     475:	48 8d 44 24 e0       	lea    -0x20(%rsp),%rax
     47a:	48 89 44 24 b8       	mov    %rax,-0x48(%rsp)
     47f:	c5 fd 29 44 24 40    	vmovapd %ymm0,0x40(%rsp)
     485:	48 8b 44 24 b8       	mov    -0x48(%rsp),%rax
     48a:	c5 fd 28 44 24 40    	vmovapd 0x40(%rsp),%ymm0
     490:	c5 fd 29 00          	vmovapd %ymm0,(%rax)
     494:	c5 fb 10 4c 24 c0    	vmovsd -0x40(%rsp),%xmm1
     49a:	c5 fb 10 44 24 c8    	vmovsd -0x38(%rsp),%xmm0
     4a0:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
     4a4:	c5 fb 10 4c 24 d0    	vmovsd -0x30(%rsp),%xmm1
     4aa:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
     4ae:	c5 fb 11 44 24 a0    	vmovsd %xmm0,-0x60(%rsp)
     4b4:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
     4b9:	48 89 44 24 88       	mov    %rax,-0x78(%rsp)
     4be:	c5 fb 10 44 24 88    	vmovsd -0x78(%rsp),%xmm0
     4c4:	c9                   	leaveq 
     4c5:	c3                   	retq   

00000000000004c6 <idx_stack_init>:
     4c6:	55                   	push   %rbp
     4c7:	48 89 e5             	mov    %rsp,%rbp
     4ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     4ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     4d2:	c7 80 00 01 00 00 00 	movl   $0x0,0x100(%rax)
     4d9:	00 00 00 
     4dc:	5d                   	pop    %rbp
     4dd:	c3                   	retq   

00000000000004de <idx_stack_push>:
     4de:	55                   	push   %rbp
     4df:	48 89 e5             	mov    %rsp,%rbp
     4e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     4e6:	c5 fb 11 45 f0       	vmovsd %xmm0,-0x10(%rbp)
     4eb:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
     4ef:	b8 00 00 00 00       	mov    $0x0,%eax
     4f4:	ba 00 00 00 00       	mov    $0x0,%edx
     4f9:	48 89 c8             	mov    %rcx,%rax
     4fc:	48 89 f2             	mov    %rsi,%rdx
     4ff:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     503:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     507:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     50b:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     511:	83 f8 0f             	cmp    $0xf,%eax
     514:	7f 34                	jg     54a <idx_stack_push+0x6c>
     516:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     51a:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     520:	8d 48 01             	lea    0x1(%rax),%ecx
     523:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     527:	89 8a 00 01 00 00    	mov    %ecx,0x100(%rdx)
     52d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     531:	48 98                	cltq   
     533:	48 c1 e0 04          	shl    $0x4,%rax
     537:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
     53b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     53f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
     543:	48 89 01             	mov    %rax,(%rcx)
     546:	48 89 51 08          	mov    %rdx,0x8(%rcx)
     54a:	5d                   	pop    %rbp
     54b:	c3                   	retq   

000000000000054c <idx_stack_empty>:
     54c:	55                   	push   %rbp
     54d:	48 89 e5             	mov    %rsp,%rbp
     550:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     554:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     558:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     55e:	85 c0                	test   %eax,%eax
     560:	0f 94 c0             	sete   %al
     563:	0f b6 c0             	movzbl %al,%eax
     566:	5d                   	pop    %rbp
     567:	c3                   	retq   

0000000000000568 <idx_stack_pop>:
     568:	55                   	push   %rbp
     569:	48 89 e5             	mov    %rsp,%rbp
     56c:	41 55                	push   %r13
     56e:	41 54                	push   %r12
     570:	53                   	push   %rbx
     571:	48 83 ec 10          	sub    $0x10,%rsp
     575:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
     579:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     57d:	48 89 c7             	mov    %rax,%rdi
     580:	e8 c7 ff ff ff       	callq  54c <idx_stack_empty>
     585:	85 c0                	test   %eax,%eax
     587:	75 38                	jne    5c1 <idx_stack_pop+0x59>
     589:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     58d:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     593:	8d 50 ff             	lea    -0x1(%rax),%edx
     596:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     59a:	89 90 00 01 00 00    	mov    %edx,0x100(%rax)
     5a0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     5a4:	8b 90 00 01 00 00    	mov    0x100(%rax),%edx
     5aa:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     5ae:	48 63 d2             	movslq %edx,%rdx
     5b1:	48 c1 e2 04          	shl    $0x4,%rdx
     5b5:	48 01 d0             	add    %rdx,%rax
     5b8:	4c 8b 20             	mov    (%rax),%r12
     5bb:	4c 8b 68 08          	mov    0x8(%rax),%r13
     5bf:	eb 10                	jmp    5d1 <idx_stack_pop+0x69>
     5c1:	49 bc 00 00 00 00 00 	movabs $0x3ff0000000000000,%r12
     5c8:	00 f0 3f 
     5cb:	41 bd 00 00 00 00    	mov    $0x0,%r13d
     5d1:	4c 89 e1             	mov    %r12,%rcx
     5d4:	4c 89 eb             	mov    %r13,%rbx
     5d7:	4c 89 e0             	mov    %r12,%rax
     5da:	4c 89 ea             	mov    %r13,%rdx
     5dd:	48 89 d0             	mov    %rdx,%rax
     5e0:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
     5e4:	c5 fb 10 45 d8       	vmovsd -0x28(%rbp),%xmm0
     5e9:	48 83 c4 10          	add    $0x10,%rsp
     5ed:	5b                   	pop    %rbx
     5ee:	41 5c                	pop    %r12
     5f0:	41 5d                	pop    %r13
     5f2:	5d                   	pop    %rbp
     5f3:	c3                   	retq   

00000000000005f4 <idx_stack_top>:
     5f4:	55                   	push   %rbp
     5f5:	48 89 e5             	mov    %rsp,%rbp
     5f8:	41 55                	push   %r13
     5fa:	41 54                	push   %r12
     5fc:	53                   	push   %rbx
     5fd:	48 83 ec 10          	sub    $0x10,%rsp
     601:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
     605:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     609:	48 89 c7             	mov    %rax,%rdi
     60c:	e8 3b ff ff ff       	callq  54c <idx_stack_empty>
     611:	85 c0                	test   %eax,%eax
     613:	75 24                	jne    639 <idx_stack_top+0x45>
     615:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     619:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
     61f:	8d 50 ff             	lea    -0x1(%rax),%edx
     622:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     626:	48 63 d2             	movslq %edx,%rdx
     629:	48 c1 e2 04          	shl    $0x4,%rdx
     62d:	48 01 d0             	add    %rdx,%rax
     630:	4c 8b 20             	mov    (%rax),%r12
     633:	4c 8b 68 08          	mov    0x8(%rax),%r13
     637:	eb 10                	jmp    649 <idx_stack_top+0x55>
     639:	49 bc 00 00 00 00 00 	movabs $0x3ff0000000000000,%r12
     640:	00 f0 3f 
     643:	41 bd 00 00 00 00    	mov    $0x0,%r13d
     649:	4c 89 e1             	mov    %r12,%rcx
     64c:	4c 89 eb             	mov    %r13,%rbx
     64f:	4c 89 e0             	mov    %r12,%rax
     652:	4c 89 ea             	mov    %r13,%rdx
     655:	48 89 d0             	mov    %rdx,%rax
     658:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
     65c:	c5 fb 10 45 d8       	vmovsd -0x28(%rbp),%xmm0
     661:	48 83 c4 10          	add    $0x10,%rsp
     665:	5b                   	pop    %rbx
     666:	41 5c                	pop    %r12
     668:	41 5d                	pop    %r13
     66a:	5d                   	pop    %rbp
     66b:	c3                   	retq   

000000000000066c <raySphereIntersection>:
     66c:	55                   	push   %rbp
     66d:	48 89 e5             	mov    %rsp,%rbp
     670:	48 83 ec 70          	sub    $0x70,%rsp
     674:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
     678:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
     67c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     680:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     684:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
     688:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     68c:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
     690:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     694:	48 89 ce             	mov    %rcx,%rsi
     697:	48 89 c7             	mov    %rax,%rdi
     69a:	e8 3f fb ff ff       	callq  1de <subtract_vector>
     69f:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     6a3:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     6a7:	48 89 d6             	mov    %rdx,%rsi
     6aa:	48 89 c7             	mov    %rax,%rdi
     6ad:	e8 4f fd ff ff       	callq  401 <dot_product>
     6b2:	c5 fb 11 45 90       	vmovsd %xmm0,-0x70(%rbp)
     6b7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     6bb:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     6bf:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
     6c3:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     6c7:	48 89 d6             	mov    %rdx,%rsi
     6ca:	48 89 c7             	mov    %rax,%rdi
     6cd:	e8 2f fd ff ff       	callq  401 <dot_product>
     6d2:	c5 fb 11 45 90       	vmovsd %xmm0,-0x70(%rbp)
     6d7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     6db:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     6df:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6e3:	c5 fb 10 48 18       	vmovsd 0x18(%rax),%xmm1
     6e8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6ec:	c5 fb 10 40 18       	vmovsd 0x18(%rax),%xmm0
     6f1:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
     6f5:	c5 fb 11 45 d8       	vmovsd %xmm0,-0x28(%rbp)
     6fa:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     6fe:	c5 f9 2e 45 c8       	vucomisd -0x38(%rbp),%xmm0
     703:	76 16                	jbe    71b <raySphereIntersection+0xaf>
     705:	c5 fb 10 45 d0       	vmovsd -0x30(%rbp),%xmm0
     70a:	c5 f9 2e 45 d8       	vucomisd -0x28(%rbp),%xmm0
     70f:	76 0a                	jbe    71b <raySphereIntersection+0xaf>
     711:	b8 00 00 00 00       	mov    $0x0,%eax
     716:	e9 42 01 00 00       	jmpq   85d <raySphereIntersection+0x1f1>
     71b:	c5 fb 10 45 c8       	vmovsd -0x38(%rbp),%xmm0
     720:	c5 fb 59 45 c8       	vmulsd -0x38(%rbp),%xmm0,%xmm0
     725:	c5 fb 10 4d d0       	vmovsd -0x30(%rbp),%xmm1
     72a:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
     72e:	c5 fb 12 d0          	vmovddup %xmm0,%xmm2
     732:	c5 f9 5a d2          	vcvtpd2ps %xmm2,%xmm2
     736:	c5 fa 11 55 c0       	vmovss %xmm2,-0x40(%rbp)
     73b:	c5 fa 10 45 c0       	vmovss -0x40(%rbp),%xmm0
     740:	c5 f8 5a c0          	vcvtps2pd %xmm0,%xmm0
     744:	c5 f9 2e 45 d8       	vucomisd -0x28(%rbp),%xmm0
     749:	76 0a                	jbe    755 <raySphereIntersection+0xe9>
     74b:	b8 00 00 00 00       	mov    $0x0,%eax
     750:	e9 08 01 00 00       	jmpq   85d <raySphereIntersection+0x1f1>
     755:	c5 fa 10 45 c0       	vmovss -0x40(%rbp),%xmm0
     75a:	c5 f8 5a c0          	vcvtps2pd %xmm0,%xmm0
     75e:	c5 fb 10 4d d8       	vmovsd -0x28(%rbp),%xmm1
     763:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
     767:	e8 00 00 00 00       	callq  76c <raySphereIntersection+0x100>
     76c:	c5 fb 12 d8          	vmovddup %xmm0,%xmm3
     770:	c5 f9 5a db          	vcvtpd2ps %xmm3,%xmm3
     774:	c5 fa 11 5d c4       	vmovss %xmm3,-0x3c(%rbp)
     779:	c5 fb 10 45 d0       	vmovsd -0x30(%rbp),%xmm0
     77e:	c5 f9 2e 45 d8       	vucomisd -0x28(%rbp),%xmm0
     783:	76 14                	jbe    799 <raySphereIntersection+0x12d>
     785:	c5 fa 10 45 c4       	vmovss -0x3c(%rbp),%xmm0
     78a:	c5 f8 5a c0          	vcvtps2pd %xmm0,%xmm0
     78e:	c5 fb 10 4d c8       	vmovsd -0x38(%rbp),%xmm1
     793:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
     797:	eb 0e                	jmp    7a7 <raySphereIntersection+0x13b>
     799:	c5 fa 10 45 c4       	vmovss -0x3c(%rbp),%xmm0
     79e:	c5 f8 5a c0          	vcvtps2pd %xmm0,%xmm0
     7a2:	c5 fb 58 45 c8       	vaddsd -0x38(%rbp),%xmm0,%xmm0
     7a7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     7ab:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
     7af:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     7b3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     7b7:	48 8b 00             	mov    (%rax),%rax
     7ba:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     7be:	48 89 ce             	mov    %rcx,%rsi
     7c1:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     7c5:	c5 fb 10 45 90       	vmovsd -0x70(%rbp),%xmm0
     7ca:	48 89 d7             	mov    %rdx,%rdi
     7cd:	e8 fd fa ff ff       	callq  2cf <multiply_vector>
     7d2:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
     7d6:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     7da:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     7de:	48 89 ce             	mov    %rcx,%rsi
     7e1:	48 89 c7             	mov    %rax,%rdi
     7e4:	e8 82 f9 ff ff       	callq  16b <add_vector>
     7e9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7ed:	48 8d 50 18          	lea    0x18(%rax),%rdx
     7f1:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
     7f5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7f9:	48 89 ce             	mov    %rcx,%rsi
     7fc:	48 89 c7             	mov    %rax,%rdi
     7ff:	e8 da f9 ff ff       	callq  1de <subtract_vector>
     804:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     808:	48 83 c0 18          	add    $0x18,%rax
     80c:	48 89 c7             	mov    %rax,%rdi
     80f:	e8 ec f7 ff ff       	callq  0 <normalize>
     814:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     818:	48 8d 50 18          	lea    0x18(%rax),%rdx
     81c:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     820:	48 89 c6             	mov    %rax,%rsi
     823:	48 89 d7             	mov    %rdx,%rdi
     826:	e8 d6 fb ff ff       	callq  401 <dot_product>
     82b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     82f:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
     833:	76 23                	jbe    858 <raySphereIntersection+0x1ec>
     835:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     839:	48 8d 50 18          	lea    0x18(%rax),%rdx
     83d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     841:	48 83 c0 18          	add    $0x18,%rax
     845:	48 89 d6             	mov    %rdx,%rsi
     848:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 850 <raySphereIntersection+0x1e4>
     84f:	00 
     850:	48 89 c7             	mov    %rax,%rdi
     853:	e8 77 fa ff ff       	callq  2cf <multiply_vector>
     858:	b8 01 00 00 00       	mov    $0x1,%eax
     85d:	c9                   	leaveq 
     85e:	c3                   	retq   

000000000000085f <rayRectangularIntersection>:
     85f:	55                   	push   %rbp
     860:	48 89 e5             	mov    %rsp,%rbp
     863:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
     86a:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
     871:	48 89 b5 f0 fe ff ff 	mov    %rsi,-0x110(%rbp)
     878:	48 89 95 e8 fe ff ff 	mov    %rdx,-0x118(%rbp)
     87f:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
     886:	4c 89 85 d8 fe ff ff 	mov    %r8,-0x128(%rbp)
     88d:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     894:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
     89b:	48 8d 4a 18          	lea    0x18(%rdx),%rcx
     89f:	48 8d 95 20 ff ff ff 	lea    -0xe0(%rbp),%rdx
     8a6:	48 89 c6             	mov    %rax,%rsi
     8a9:	48 89 cf             	mov    %rcx,%rdi
     8ac:	e8 2d f9 ff ff       	callq  1de <subtract_vector>
     8b1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     8b8:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
     8bf:	48 8d 4a 48          	lea    0x48(%rdx),%rcx
     8c3:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
     8ca:	48 89 c6             	mov    %rax,%rsi
     8cd:	48 89 cf             	mov    %rcx,%rdi
     8d0:	e8 09 f9 ff ff       	callq  1de <subtract_vector>
     8d5:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     8dc:	48 8d 8d 40 ff ff ff 	lea    -0xc0(%rbp),%rcx
     8e3:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     8ea:	48 89 ce             	mov    %rcx,%rsi
     8ed:	48 89 c7             	mov    %rax,%rdi
     8f0:	e8 36 fa ff ff       	callq  32b <cross_product>
     8f5:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     8fc:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     903:	48 89 d6             	mov    %rdx,%rsi
     906:	48 89 c7             	mov    %rax,%rdi
     909:	e8 f3 fa ff ff       	callq  401 <dot_product>
     90e:	c5 fb 11 85 d0 fe ff 	vmovsd %xmm0,-0x130(%rbp)
     915:	ff 
     916:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
     91d:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
     924:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 92c <rayRectangularIntersection+0xcd>
     92b:	00 
     92c:	c5 f9 2e 85 00 ff ff 	vucomisd -0x100(%rbp),%xmm0
     933:	ff 
     934:	76 0a                	jbe    940 <rayRectangularIntersection+0xe1>
     936:	b8 00 00 00 00       	mov    $0x0,%eax
     93b:	e9 0d 04 00 00       	jmpq   d4d <rayRectangularIntersection+0x4ee>
     940:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 948 <rayRectangularIntersection+0xe9>
     947:	00 
     948:	c5 fb 5e 85 00 ff ff 	vdivsd -0x100(%rbp),%xmm0,%xmm0
     94f:	ff 
     950:	c5 fb 11 85 08 ff ff 	vmovsd %xmm0,-0xf8(%rbp)
     957:	ff 
     958:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
     95f:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     963:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     96a:	48 89 ce             	mov    %rcx,%rsi
     96d:	48 89 c7             	mov    %rax,%rdi
     970:	e8 69 f8 ff ff       	callq  1de <subtract_vector>
     975:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     97c:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     980:	48 89 d6             	mov    %rdx,%rsi
     983:	48 89 c7             	mov    %rax,%rdi
     986:	e8 76 fa ff ff       	callq  401 <dot_product>
     98b:	c5 fb 59 85 08 ff ff 	vmulsd -0xf8(%rbp),%xmm0,%xmm0
     992:	ff 
     993:	c5 fb 11 85 10 ff ff 	vmovsd %xmm0,-0xf0(%rbp)
     99a:	ff 
     99b:	c5 fb 10 85 10 ff ff 	vmovsd -0xf0(%rbp),%xmm0
     9a2:	ff 
     9a3:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 9ab <rayRectangularIntersection+0x14c>
     9aa:	00 
     9ab:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
     9af:	77 0e                	ja     9bf <rayRectangularIntersection+0x160>
     9b1:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     9b5:	c5 f9 2e 85 10 ff ff 	vucomisd -0xf0(%rbp),%xmm0
     9bc:	ff 
     9bd:	76 0a                	jbe    9c9 <rayRectangularIntersection+0x16a>
     9bf:	b8 00 00 00 00       	mov    $0x0,%eax
     9c4:	e9 84 03 00 00       	jmpq   d4d <rayRectangularIntersection+0x4ee>
     9c9:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     9cd:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
     9d4:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     9d8:	48 89 ce             	mov    %rcx,%rsi
     9db:	48 89 c7             	mov    %rax,%rdi
     9de:	e8 48 f9 ff ff       	callq  32b <cross_product>
     9e3:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     9e7:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     9ee:	48 89 d6             	mov    %rdx,%rsi
     9f1:	48 89 c7             	mov    %rax,%rdi
     9f4:	e8 08 fa ff ff       	callq  401 <dot_product>
     9f9:	c5 fb 59 85 08 ff ff 	vmulsd -0xf8(%rbp),%xmm0,%xmm0
     a00:	ff 
     a01:	c5 fb 11 85 18 ff ff 	vmovsd %xmm0,-0xe8(%rbp)
     a08:	ff 
     a09:	c5 fb 10 85 18 ff ff 	vmovsd -0xe8(%rbp),%xmm0
     a10:	ff 
     a11:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # a19 <rayRectangularIntersection+0x1ba>
     a18:	00 
     a19:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
     a1d:	77 0e                	ja     a2d <rayRectangularIntersection+0x1ce>
     a1f:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     a23:	c5 f9 2e 85 18 ff ff 	vucomisd -0xe8(%rbp),%xmm0
     a2a:	ff 
     a2b:	76 0a                	jbe    a37 <rayRectangularIntersection+0x1d8>
     a2d:	b8 00 00 00 00       	mov    $0x0,%eax
     a32:	e9 16 03 00 00       	jmpq   d4d <rayRectangularIntersection+0x4ee>
     a37:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     a3b:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     a42:	48 89 d6             	mov    %rdx,%rsi
     a45:	48 89 c7             	mov    %rax,%rdi
     a48:	e8 b4 f9 ff ff       	callq  401 <dot_product>
     a4d:	c5 fb 59 85 08 ff ff 	vmulsd -0xf8(%rbp),%xmm0,%xmm0
     a54:	ff 
     a55:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     a5c:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
     a60:	c5 fb 10 85 10 ff ff 	vmovsd -0xf0(%rbp),%xmm0
     a67:	ff 
     a68:	c5 fb 58 85 18 ff ff 	vaddsd -0xe8(%rbp),%xmm0,%xmm0
     a6f:	ff 
     a70:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # a78 <rayRectangularIntersection+0x219>
     a77:	00 
     a78:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
     a7c:	0f 86 bf 01 00 00    	jbe    c41 <rayRectangularIntersection+0x3e2>
     a82:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     a89:	48 8d 70 30          	lea    0x30(%rax),%rsi
     a8d:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     a94:	48 8d 48 48          	lea    0x48(%rax),%rcx
     a98:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
     a9c:	48 89 c2             	mov    %rax,%rdx
     a9f:	48 89 cf             	mov    %rcx,%rdi
     aa2:	e8 37 f7 ff ff       	callq  1de <subtract_vector>
     aa7:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     aae:	48 8d 70 30          	lea    0x30(%rax),%rsi
     ab2:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     ab9:	48 8d 48 18          	lea    0x18(%rax),%rcx
     abd:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     ac1:	48 89 c2             	mov    %rax,%rdx
     ac4:	48 89 cf             	mov    %rcx,%rdi
     ac7:	e8 12 f7 ff ff       	callq  1de <subtract_vector>
     acc:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     ad3:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
     ad7:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     ade:	48 89 ce             	mov    %rcx,%rsi
     ae1:	48 89 c7             	mov    %rax,%rdi
     ae4:	e8 42 f8 ff ff       	callq  32b <cross_product>
     ae9:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     af0:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
     af4:	48 89 d6             	mov    %rdx,%rsi
     af7:	48 89 c7             	mov    %rax,%rdi
     afa:	e8 02 f9 ff ff       	callq  401 <dot_product>
     aff:	c5 fb 11 85 d0 fe ff 	vmovsd %xmm0,-0x130(%rbp)
     b06:	ff 
     b07:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
     b0e:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
     b15:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # b1d <rayRectangularIntersection+0x2be>
     b1c:	00 
     b1d:	c5 f9 2e 85 00 ff ff 	vucomisd -0x100(%rbp),%xmm0
     b24:	ff 
     b25:	76 0a                	jbe    b31 <rayRectangularIntersection+0x2d2>
     b27:	b8 00 00 00 00       	mov    $0x0,%eax
     b2c:	e9 1c 02 00 00       	jmpq   d4d <rayRectangularIntersection+0x4ee>
     b31:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # b39 <rayRectangularIntersection+0x2da>
     b38:	00 
     b39:	c5 fb 5e 85 00 ff ff 	vdivsd -0x100(%rbp),%xmm0,%xmm0
     b40:	ff 
     b41:	c5 fb 11 85 08 ff ff 	vmovsd %xmm0,-0xf8(%rbp)
     b48:	ff 
     b49:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     b50:	48 8d 48 30          	lea    0x30(%rax),%rcx
     b54:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     b58:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     b5f:	48 89 ce             	mov    %rcx,%rsi
     b62:	48 89 c7             	mov    %rax,%rdi
     b65:	e8 74 f6 ff ff       	callq  1de <subtract_vector>
     b6a:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     b71:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     b75:	48 89 d6             	mov    %rdx,%rsi
     b78:	48 89 c7             	mov    %rax,%rdi
     b7b:	e8 81 f8 ff ff       	callq  401 <dot_product>
     b80:	c5 fb 59 85 08 ff ff 	vmulsd -0xf8(%rbp),%xmm0,%xmm0
     b87:	ff 
     b88:	c5 fb 11 85 10 ff ff 	vmovsd %xmm0,-0xf0(%rbp)
     b8f:	ff 
     b90:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     b94:	c5 f9 2e 85 10 ff ff 	vucomisd -0xf0(%rbp),%xmm0
     b9b:	ff 
     b9c:	76 0a                	jbe    ba8 <rayRectangularIntersection+0x349>
     b9e:	b8 00 00 00 00       	mov    $0x0,%eax
     ba3:	e9 a5 01 00 00       	jmpq   d4d <rayRectangularIntersection+0x4ee>
     ba8:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     bac:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
     bb0:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     bb4:	48 89 ce             	mov    %rcx,%rsi
     bb7:	48 89 c7             	mov    %rax,%rdi
     bba:	e8 6c f7 ff ff       	callq  32b <cross_product>
     bbf:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     bc3:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     bca:	48 89 d6             	mov    %rdx,%rsi
     bcd:	48 89 c7             	mov    %rax,%rdi
     bd0:	e8 2c f8 ff ff       	callq  401 <dot_product>
     bd5:	c5 fb 59 85 08 ff ff 	vmulsd -0xf8(%rbp),%xmm0,%xmm0
     bdc:	ff 
     bdd:	c5 fb 11 85 18 ff ff 	vmovsd %xmm0,-0xe8(%rbp)
     be4:	ff 
     be5:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     be9:	c5 f9 2e 85 18 ff ff 	vucomisd -0xe8(%rbp),%xmm0
     bf0:	ff 
     bf1:	77 1e                	ja     c11 <rayRectangularIntersection+0x3b2>
     bf3:	c5 fb 10 85 18 ff ff 	vmovsd -0xe8(%rbp),%xmm0
     bfa:	ff 
     bfb:	c5 fb 58 85 10 ff ff 	vaddsd -0xf0(%rbp),%xmm0,%xmm0
     c02:	ff 
     c03:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # c0b <rayRectangularIntersection+0x3ac>
     c0a:	00 
     c0b:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
     c0f:	76 0a                	jbe    c1b <rayRectangularIntersection+0x3bc>
     c11:	b8 00 00 00 00       	mov    $0x0,%eax
     c16:	e9 32 01 00 00       	jmpq   d4d <rayRectangularIntersection+0x4ee>
     c1b:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     c1f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     c23:	48 89 d6             	mov    %rdx,%rsi
     c26:	48 89 c7             	mov    %rax,%rdi
     c29:	e8 d3 f7 ff ff       	callq  401 <dot_product>
     c2e:	c5 fb 59 85 08 ff ff 	vmulsd -0xf8(%rbp),%xmm0,%xmm0
     c35:	ff 
     c36:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c3d:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
     c41:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c48:	c5 fb 10 08          	vmovsd (%rax),%xmm1
     c4c:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # c54 <rayRectangularIntersection+0x3f5>
     c53:	00 
     c54:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
     c58:	76 0a                	jbe    c64 <rayRectangularIntersection+0x405>
     c5a:	b8 00 00 00 00       	mov    $0x0,%eax
     c5f:	e9 e9 00 00 00       	jmpq   d4d <rayRectangularIntersection+0x4ee>
     c64:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     c6b:	48 8b 40 60          	mov    0x60(%rax),%rax
     c6f:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
     c76:	48 89 42 18          	mov    %rax,0x18(%rdx)
     c7a:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     c81:	48 8b 40 68          	mov    0x68(%rax),%rax
     c85:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
     c8c:	48 89 42 20          	mov    %rax,0x20(%rdx)
     c90:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     c97:	48 8b 40 70          	mov    0x70(%rax),%rax
     c9b:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
     ca2:	48 89 42 28          	mov    %rax,0x28(%rdx)
     ca6:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
     cad:	48 8d 50 18          	lea    0x18(%rax),%rdx
     cb1:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     cb8:	48 89 c6             	mov    %rax,%rsi
     cbb:	48 89 d7             	mov    %rdx,%rdi
     cbe:	e8 3e f7 ff ff       	callq  401 <dot_product>
     cc3:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     cc7:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
     ccb:	76 29                	jbe    cf6 <rayRectangularIntersection+0x497>
     ccd:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
     cd4:	48 8d 50 18          	lea    0x18(%rax),%rdx
     cd8:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
     cdf:	48 83 c0 18          	add    $0x18,%rax
     ce3:	48 89 d6             	mov    %rdx,%rsi
     ce6:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # cee <rayRectangularIntersection+0x48f>
     ced:	00 
     cee:	48 89 c7             	mov    %rax,%rdi
     cf1:	e8 d9 f5 ff ff       	callq  2cf <multiply_vector>
     cf6:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
     cfd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     d04:	48 8b 00             	mov    (%rax),%rax
     d07:	48 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%rdx
     d0e:	48 89 ce             	mov    %rcx,%rsi
     d11:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
     d18:	c5 fb 10 85 d0 fe ff 	vmovsd -0x130(%rbp),%xmm0
     d1f:	ff 
     d20:	48 89 d7             	mov    %rdx,%rdi
     d23:	e8 a7 f5 ff ff       	callq  2cf <multiply_vector>
     d28:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
     d2f:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
     d36:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     d3d:	48 89 ce             	mov    %rcx,%rsi
     d40:	48 89 c7             	mov    %rax,%rdi
     d43:	e8 23 f4 ff ff       	callq  16b <add_vector>
     d48:	b8 01 00 00 00       	mov    $0x1,%eax
     d4d:	c9                   	leaveq 
     d4e:	c3                   	retq   

0000000000000d4f <localColor>:
     d4f:	55                   	push   %rbp
     d50:	48 89 e5             	mov    %rsp,%rbp
     d53:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
     d5a:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
     d61:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
     d68:	c5 fb 11 85 48 ff ff 	vmovsd %xmm0,-0xb8(%rbp)
     d6f:	ff 
     d70:	c5 fb 11 8d 40 ff ff 	vmovsd %xmm1,-0xc0(%rbp)
     d77:	ff 
     d78:	48 89 95 38 ff ff ff 	mov    %rdx,-0xc8(%rbp)
     d7f:	48 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rax
     d86:	99 b9 3f 
     d89:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
     d90:	48 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rax
     d97:	99 b9 3f 
     d9a:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
     da1:	48 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rax
     da8:	99 b9 3f 
     dab:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
     db2:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     db9:	48 8b 00             	mov    (%rax),%rax
     dbc:	48 89 45 80          	mov    %rax,-0x80(%rbp)
     dc0:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     dc7:	48 8b 40 08          	mov    0x8(%rax),%rax
     dcb:	48 89 45 88          	mov    %rax,-0x78(%rbp)
     dcf:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     dd6:	48 8b 40 10          	mov    0x10(%rax),%rax
     dda:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     dde:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     de5:	48 8b 40 18          	mov    0x18(%rax),%rax
     de9:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
     ded:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     df1:	48 89 ce             	mov    %rcx,%rsi
     df4:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
     dfb:	c5 fb 10 85 30 ff ff 	vmovsd -0xd0(%rbp),%xmm0
     e02:	ff 
     e03:	48 89 d7             	mov    %rdx,%rdi
     e06:	e8 c4 f4 ff ff       	callq  2cf <multiply_vector>
     e0b:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
     e0f:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
     e16:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     e1a:	48 89 ce             	mov    %rcx,%rsi
     e1d:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
     e24:	c5 fb 10 85 30 ff ff 	vmovsd -0xd0(%rbp),%xmm0
     e2b:	ff 
     e2c:	48 89 d7             	mov    %rdx,%rdi
     e2f:	e8 9b f4 ff ff       	callq  2cf <multiply_vector>
     e34:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e3b:	48 8b 00             	mov    (%rax),%rax
     e3e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     e42:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e49:	48 8b 40 08          	mov    0x8(%rax),%rax
     e4d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     e51:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e58:	48 8b 40 10          	mov    0x10(%rax),%rax
     e5c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     e60:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     e64:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
     e68:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     e6c:	48 89 ce             	mov    %rcx,%rsi
     e6f:	48 89 c7             	mov    %rax,%rdi
     e72:	e8 e5 f3 ff ff       	callq  25c <multiply_vectors>
     e77:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e7e:	48 8b 00             	mov    (%rax),%rax
     e81:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     e85:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e8c:	48 8b 40 08          	mov    0x8(%rax),%rax
     e90:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     e94:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
     e9b:	48 8b 40 10          	mov    0x10(%rax),%rax
     e9f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
     ea3:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     eaa:	48 8b 40 20          	mov    0x20(%rax),%rax
     eae:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
     eb2:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     eb6:	48 89 ce             	mov    %rcx,%rsi
     eb9:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
     ec0:	c5 fb 10 85 30 ff ff 	vmovsd -0xd0(%rbp),%xmm0
     ec7:	ff 
     ec8:	48 89 d7             	mov    %rdx,%rdi
     ecb:	e8 ff f3 ff ff       	callq  2cf <multiply_vector>
     ed0:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
     ed4:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
     edb:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
     edf:	48 89 ce             	mov    %rcx,%rsi
     ee2:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
     ee9:	c5 fb 10 85 30 ff ff 	vmovsd -0xd0(%rbp),%xmm0
     ef0:	ff 
     ef1:	48 89 d7             	mov    %rdx,%rdi
     ef4:	e8 d6 f3 ff ff       	callq  2cf <multiply_vector>
     ef9:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     f00:	48 8b 00             	mov    (%rax),%rax
     f03:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     f07:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     f0e:	48 8b 40 08          	mov    0x8(%rax),%rax
     f12:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     f16:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
     f1d:	48 8b 40 10          	mov    0x10(%rax),%rax
     f21:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     f25:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
     f2c:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
     f30:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
     f37:	48 89 ce             	mov    %rcx,%rsi
     f3a:	48 89 c7             	mov    %rax,%rdi
     f3d:	e8 1a f3 ff ff       	callq  25c <multiply_vectors>
     f42:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     f46:	48 8d 8d 60 ff ff ff 	lea    -0xa0(%rbp),%rcx
     f4d:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     f51:	48 89 ce             	mov    %rcx,%rsi
     f54:	48 89 c7             	mov    %rax,%rdi
     f57:	e8 0f f2 ff ff       	callq  16b <add_vector>
     f5c:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     f60:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
     f64:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     f68:	48 89 ce             	mov    %rcx,%rsi
     f6b:	48 89 c7             	mov    %rax,%rdi
     f6e:	e8 f8 f1 ff ff       	callq  16b <add_vector>
     f73:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
     f7a:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
     f7e:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
     f85:	48 89 ce             	mov    %rcx,%rsi
     f88:	48 89 c7             	mov    %rax,%rdi
     f8b:	e8 db f1 ff ff       	callq  16b <add_vector>
     f90:	c9                   	leaveq 
     f91:	c3                   	retq   

0000000000000f92 <compute_specular_diffuse>:
     f92:	55                   	push   %rbp
     f93:	48 89 e5             	mov    %rsp,%rbp
     f96:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
     f9d:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
     fa4:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
     fab:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
     fb2:	48 89 8d 50 ff ff ff 	mov    %rcx,-0xb0(%rbp)
     fb9:	4c 89 85 48 ff ff ff 	mov    %r8,-0xb8(%rbp)
     fc0:	c5 fb 11 85 40 ff ff 	vmovsd %xmm0,-0xc0(%rbp)
     fc7:	ff 
     fc8:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
     fcf:	48 8b 00             	mov    (%rax),%rax
     fd2:	48 89 45 80          	mov    %rax,-0x80(%rbp)
     fd6:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
     fdd:	48 8b 40 08          	mov    0x8(%rax),%rax
     fe1:	48 89 45 88          	mov    %rax,-0x78(%rbp)
     fe5:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
     fec:	48 8b 40 10          	mov    0x10(%rax),%rax
     ff0:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     ff4:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
     ff8:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     ffc:	48 89 d6             	mov    %rdx,%rsi
     fff:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 1007 <compute_specular_diffuse+0x75>
    1006:	00 
    1007:	48 89 c7             	mov    %rax,%rdi
    100a:	e8 c0 f2 ff ff       	callq  2cf <multiply_vector>
    100f:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    1013:	48 89 c7             	mov    %rax,%rdi
    1016:	e8 e5 ef ff ff       	callq  0 <normalize>
    101b:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    1022:	48 8b 00             	mov    (%rax),%rax
    1025:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    1029:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    1030:	48 8b 40 08          	mov    0x8(%rax),%rax
    1034:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    1038:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    103f:	48 8b 40 10          	mov    0x10(%rax),%rax
    1043:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1047:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    104b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    104f:	48 89 d6             	mov    %rdx,%rsi
    1052:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 105a <compute_specular_diffuse+0xc8>
    1059:	00 
    105a:	48 89 c7             	mov    %rax,%rdi
    105d:	e8 6d f2 ff ff       	callq  2cf <multiply_vector>
    1062:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    1066:	48 89 c7             	mov    %rax,%rdi
    1069:	e8 92 ef ff ff       	callq  0 <normalize>
    106e:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1072:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1079:	48 89 d6             	mov    %rdx,%rsi
    107c:	48 89 c7             	mov    %rax,%rdi
    107f:	e8 7d f3 ff ff       	callq  401 <dot_product>
    1084:	c5 fb 11 85 38 ff ff 	vmovsd %xmm0,-0xc8(%rbp)
    108b:	ff 
    108c:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    1093:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    109a:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    109e:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    10a5:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
    10ac:	48 89 ce             	mov    %rcx,%rsi
    10af:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    10b6:	c5 fb 10 85 38 ff ff 	vmovsd -0xc8(%rbp),%xmm0
    10bd:	ff 
    10be:	48 89 d7             	mov    %rdx,%rdi
    10c1:	e8 09 f2 ff ff       	callq  2cf <multiply_vector>
    10c6:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    10ca:	48 b8 00 00 00 00 00 	movabs $0x4000000000000000,%rax
    10d1:	00 00 40 
    10d4:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    10d8:	48 89 ce             	mov    %rcx,%rsi
    10db:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    10e2:	c5 fb 10 85 38 ff ff 	vmovsd -0xc8(%rbp),%xmm0
    10e9:	ff 
    10ea:	48 89 d7             	mov    %rdx,%rdi
    10ed:	e8 dd f1 ff ff       	callq  2cf <multiply_vector>
    10f2:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    10f6:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    10fa:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    10fe:	48 89 ce             	mov    %rcx,%rsi
    1101:	48 89 c7             	mov    %rax,%rdi
    1104:	e8 d5 f0 ff ff       	callq  1de <subtract_vector>
    1109:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    110d:	48 89 c7             	mov    %rax,%rdi
    1110:	e8 eb ee ff ff       	callq  0 <normalize>
    1115:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1119:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1120:	48 89 d6             	mov    %rdx,%rsi
    1123:	48 89 c7             	mov    %rax,%rdi
    1126:	e8 d6 f2 ff ff       	callq  401 <dot_product>
    112b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    112f:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
    1133:	76 07                	jbe    113c <compute_specular_diffuse+0x1aa>
    1135:	b8 00 00 00 00       	mov    $0x0,%eax
    113a:	eb 25                	jmp    1161 <compute_specular_diffuse+0x1cf>
    113c:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1140:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1147:	48 89 d6             	mov    %rdx,%rsi
    114a:	48 89 c7             	mov    %rax,%rdi
    114d:	e8 af f2 ff ff       	callq  401 <dot_product>
    1152:	c5 fb 11 85 38 ff ff 	vmovsd %xmm0,-0xc8(%rbp)
    1159:	ff 
    115a:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    1161:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
    1168:	48 89 02             	mov    %rax,(%rdx)
    116b:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    116f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1173:	48 89 d6             	mov    %rdx,%rsi
    1176:	48 89 c7             	mov    %rax,%rdi
    1179:	e8 83 f2 ff ff       	callq  401 <dot_product>
    117e:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1182:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
    1186:	76 07                	jbe    118f <compute_specular_diffuse+0x1fd>
    1188:	b8 00 00 00 00       	mov    $0x0,%eax
    118d:	eb 22                	jmp    11b1 <compute_specular_diffuse+0x21f>
    118f:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    1193:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1197:	48 89 d6             	mov    %rdx,%rsi
    119a:	48 89 c7             	mov    %rax,%rdi
    119d:	e8 5f f2 ff ff       	callq  401 <dot_product>
    11a2:	c5 fb 11 85 38 ff ff 	vmovsd %xmm0,-0xc8(%rbp)
    11a9:	ff 
    11aa:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    11b1:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
    11b8:	48 89 95 38 ff ff ff 	mov    %rdx,-0xc8(%rbp)
    11bf:	c5 fb 10 8d 38 ff ff 	vmovsd -0xc8(%rbp),%xmm1
    11c6:	ff 
    11c7:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    11ce:	c5 fb 10 85 38 ff ff 	vmovsd -0xc8(%rbp),%xmm0
    11d5:	ff 
    11d6:	e8 00 00 00 00       	callq  11db <compute_specular_diffuse+0x249>
    11db:	c5 fb 11 85 38 ff ff 	vmovsd %xmm0,-0xc8(%rbp)
    11e2:	ff 
    11e3:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    11ea:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    11f1:	48 89 02             	mov    %rax,(%rdx)
    11f4:	c9                   	leaveq 
    11f5:	c3                   	retq   

00000000000011f6 <reflection>:
    11f6:	55                   	push   %rbp
    11f7:	48 89 e5             	mov    %rsp,%rbp
    11fa:	48 83 ec 20          	sub    $0x20,%rsp
    11fe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1202:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1206:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    120a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    120e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1212:	48 89 d6             	mov    %rdx,%rsi
    1215:	48 89 c7             	mov    %rax,%rdi
    1218:	e8 e4 f1 ff ff       	callq  401 <dot_product>
    121d:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 1225 <reflection+0x2f>
    1224:	00 
    1225:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    1229:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    122d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1231:	48 89 d6             	mov    %rdx,%rsi
    1234:	48 89 c7             	mov    %rax,%rdi
    1237:	e8 93 f0 ff ff       	callq  2cf <multiply_vector>
    123c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1240:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1244:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1248:	48 89 ce             	mov    %rcx,%rsi
    124b:	48 89 c7             	mov    %rax,%rdi
    124e:	e8 18 ef ff ff       	callq  16b <add_vector>
    1253:	c9                   	leaveq 
    1254:	c3                   	retq   

0000000000001255 <refraction>:
    1255:	55                   	push   %rbp
    1256:	48 89 e5             	mov    %rsp,%rbp
    1259:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    125d:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    1261:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    1265:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    1269:	c5 fb 11 45 a0       	vmovsd %xmm0,-0x60(%rbp)
    126e:	c5 fb 11 4d 98       	vmovsd %xmm1,-0x68(%rbp)
    1273:	c5 fb 10 45 a0       	vmovsd -0x60(%rbp),%xmm0
    1278:	c5 fb 5e 45 98       	vdivsd -0x68(%rbp),%xmm0,%xmm0
    127d:	c5 fb 11 45 c8       	vmovsd %xmm0,-0x38(%rbp)
    1282:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    1286:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    128a:	48 89 d6             	mov    %rdx,%rsi
    128d:	48 89 c7             	mov    %rax,%rdi
    1290:	e8 6c f1 ff ff       	callq  401 <dot_product>
    1295:	c5 fb 11 45 90       	vmovsd %xmm0,-0x70(%rbp)
    129a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    129e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    12a2:	c5 fb 10 45 c8       	vmovsd -0x38(%rbp),%xmm0
    12a7:	c5 fb 59 4d c8       	vmulsd -0x38(%rbp),%xmm0,%xmm1
    12ac:	c5 fb 10 45 d0       	vmovsd -0x30(%rbp),%xmm0
    12b1:	c5 fb 59 45 d0       	vmulsd -0x30(%rbp),%xmm0,%xmm0
    12b6:	c5 fb 10 15 00 00 00 	vmovsd 0x0(%rip),%xmm2        # 12be <refraction+0x69>
    12bd:	00 
    12be:	c5 eb 5c c0          	vsubsd %xmm0,%xmm2,%xmm0
    12c2:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    12c6:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 12ce <refraction+0x79>
    12cd:	00 
    12ce:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
    12d2:	c5 fb 11 45 d8       	vmovsd %xmm0,-0x28(%rbp)
    12d7:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    12db:	c5 f9 2e 45 d8       	vucomisd -0x28(%rbp),%xmm0
    12e0:	77 0b                	ja     12ed <refraction+0x98>
    12e2:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    12e6:	c5 f9 2e 45 98       	vucomisd -0x68(%rbp),%xmm0
    12eb:	72 2a                	jb     1317 <refraction+0xc2>
    12ed:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    12f1:	48 8d 50 08          	lea    0x8(%rax),%rdx
    12f5:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    12f9:	48 8d 48 10          	lea    0x10(%rax),%rcx
    12fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1302:	48 89 01             	mov    %rax,(%rcx)
    1305:	48 8b 01             	mov    (%rcx),%rax
    1308:	48 89 02             	mov    %rax,(%rdx)
    130b:	48 8b 02             	mov    (%rdx),%rax
    130e:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    1312:	48 89 02             	mov    %rax,(%rdx)
    1315:	eb 70                	jmp    1387 <refraction+0x132>
    1317:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
    131b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    131f:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    1323:	48 89 ce             	mov    %rcx,%rsi
    1326:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    132a:	c5 fb 10 45 90       	vmovsd -0x70(%rbp),%xmm0
    132f:	48 89 d7             	mov    %rdx,%rdi
    1332:	e8 98 ef ff ff       	callq  2cf <multiply_vector>
    1337:	c5 fb 10 45 c8       	vmovsd -0x38(%rbp),%xmm0
    133c:	c5 fb 59 5d d0       	vmulsd -0x30(%rbp),%xmm0,%xmm3
    1341:	c5 fb 11 5d 90       	vmovsd %xmm3,-0x70(%rbp)
    1346:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    134a:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    134e:	c5 fb 10 45 88       	vmovsd -0x78(%rbp),%xmm0
    1353:	e8 00 00 00 00       	callq  1358 <refraction+0x103>
    1358:	c5 fb 58 45 90       	vaddsd -0x70(%rbp),%xmm0,%xmm0
    135d:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1361:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1365:	48 89 d6             	mov    %rdx,%rsi
    1368:	48 89 c7             	mov    %rax,%rdi
    136b:	e8 5f ef ff ff       	callq  2cf <multiply_vector>
    1370:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    1374:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    1378:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    137c:	48 89 ce             	mov    %rcx,%rsi
    137f:	48 89 c7             	mov    %rax,%rdi
    1382:	e8 57 ee ff ff       	callq  1de <subtract_vector>
    1387:	c9                   	leaveq 
    1388:	c3                   	retq   

0000000000001389 <fresnel>:
    1389:	55                   	push   %rbp
    138a:	48 89 e5             	mov    %rsp,%rbp
    138d:	48 83 ec 50          	sub    $0x50,%rsp
    1391:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1395:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1399:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    139d:	c5 fb 11 45 c0       	vmovsd %xmm0,-0x40(%rbp)
    13a2:	c5 fb 11 4d b8       	vmovsd %xmm1,-0x48(%rbp)
    13a7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    13ab:	48 89 c7             	mov    %rax,%rdi
    13ae:	e8 3f ed ff ff       	callq  f2 <length>
    13b3:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 13bb <fresnel+0x32>
    13ba:	00 
    13bb:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
    13bf:	76 0f                	jbe    13d0 <fresnel+0x47>
    13c1:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
    13c8:	00 f0 3f 
    13cb:	e9 e7 00 00 00       	jmpq   14b7 <fresnel+0x12e>
    13d0:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    13d4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13d8:	48 89 d6             	mov    %rdx,%rsi
    13db:	48 89 c7             	mov    %rax,%rdi
    13de:	e8 1e f0 ff ff       	callq  401 <dot_product>
    13e3:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 13eb <fresnel+0x62>
    13ea:	00 
    13eb:	c5 f9 57 c1          	vxorpd %xmm1,%xmm0,%xmm0
    13ef:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
    13f4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    13f8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    13fc:	48 89 d6             	mov    %rdx,%rsi
    13ff:	48 89 c7             	mov    %rax,%rdi
    1402:	e8 fa ef ff ff       	callq  401 <dot_product>
    1407:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 140f <fresnel+0x86>
    140e:	00 
    140f:	c5 f9 57 c1          	vxorpd %xmm1,%xmm0,%xmm0
    1413:	c5 fb 11 45 e8       	vmovsd %xmm0,-0x18(%rbp)
    1418:	c5 fb 10 45 c0       	vmovsd -0x40(%rbp),%xmm0
    141d:	c5 fb 59 45 e0       	vmulsd -0x20(%rbp),%xmm0,%xmm0
    1422:	c5 fb 10 4d b8       	vmovsd -0x48(%rbp),%xmm1
    1427:	c5 f3 59 4d e8       	vmulsd -0x18(%rbp),%xmm1,%xmm1
    142c:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
    1430:	c5 fb 10 4d c0       	vmovsd -0x40(%rbp),%xmm1
    1435:	c5 f3 59 55 e0       	vmulsd -0x20(%rbp),%xmm1,%xmm2
    143a:	c5 fb 10 4d b8       	vmovsd -0x48(%rbp),%xmm1
    143f:	c5 f3 59 4d e8       	vmulsd -0x18(%rbp),%xmm1,%xmm1
    1444:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
    1448:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    144c:	c5 fb 11 45 f0       	vmovsd %xmm0,-0x10(%rbp)
    1451:	c5 fb 10 45 b8       	vmovsd -0x48(%rbp),%xmm0
    1456:	c5 fb 59 45 e0       	vmulsd -0x20(%rbp),%xmm0,%xmm0
    145b:	c5 fb 10 4d c0       	vmovsd -0x40(%rbp),%xmm1
    1460:	c5 f3 59 4d e8       	vmulsd -0x18(%rbp),%xmm1,%xmm1
    1465:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
    1469:	c5 fb 10 4d b8       	vmovsd -0x48(%rbp),%xmm1
    146e:	c5 f3 59 55 e0       	vmulsd -0x20(%rbp),%xmm1,%xmm2
    1473:	c5 fb 10 4d c0       	vmovsd -0x40(%rbp),%xmm1
    1478:	c5 f3 59 4d e8       	vmulsd -0x18(%rbp),%xmm1,%xmm1
    147d:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
    1481:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    1485:	c5 fb 11 45 f8       	vmovsd %xmm0,-0x8(%rbp)
    148a:	c5 fb 10 45 f0       	vmovsd -0x10(%rbp),%xmm0
    148f:	c5 fb 59 4d f0       	vmulsd -0x10(%rbp),%xmm0,%xmm1
    1494:	c5 fb 10 45 f8       	vmovsd -0x8(%rbp),%xmm0
    1499:	c5 fb 59 45 f8       	vmulsd -0x8(%rbp),%xmm0,%xmm0
    149e:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    14a2:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 14aa <fresnel+0x121>
    14a9:	00 
    14aa:	c5 fb 5e d9          	vdivsd %xmm1,%xmm0,%xmm3
    14ae:	c5 fb 11 5d b0       	vmovsd %xmm3,-0x50(%rbp)
    14b3:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    14b7:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    14bb:	c5 fb 10 45 b0       	vmovsd -0x50(%rbp),%xmm0
    14c0:	c9                   	leaveq 
    14c1:	c3                   	retq   

00000000000014c2 <ray_hit_object>:
    14c2:	55                   	push   %rbp
    14c3:	48 89 e5             	mov    %rsp,%rbp
    14c6:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
    14cd:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
    14d4:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
    14db:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
    14e2:	c5 fb 11 85 40 ff ff 	vmovsd %xmm0,-0xc0(%rbp)
    14e9:	ff 
    14ea:	c5 fb 11 8d 38 ff ff 	vmovsd %xmm1,-0xc8(%rbp)
    14f1:	ff 
    14f2:	48 89 8d 30 ff ff ff 	mov    %rcx,-0xd0(%rbp)
    14f9:	4c 89 85 28 ff ff ff 	mov    %r8,-0xd8(%rbp)
    1500:	4c 89 8d 20 ff ff ff 	mov    %r9,-0xe0(%rbp)
    1507:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    150e:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1515:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1519:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1520:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    1524:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    152b:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
    1532:	48 89 ce             	mov    %rcx,%rsi
    1535:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
    153c:	c5 fb 10 85 18 ff ff 	vmovsd -0xe8(%rbp),%xmm0
    1543:	ff 
    1544:	48 89 d7             	mov    %rdx,%rdi
    1547:	e8 83 ed ff ff       	callq  2cf <multiply_vector>
    154c:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    1550:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
    1557:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    155b:	48 89 ce             	mov    %rcx,%rsi
    155e:	48 89 c7             	mov    %rax,%rdi
    1561:	e8 05 ec ff ff       	callq  16b <add_vector>
    1566:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    156d:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    1574:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    157b:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    1582:	e9 a6 00 00 00       	jmpq   162d <ray_hit_object+0x16b>
    1587:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    158e:	48 8d bd 38 ff ff ff 	lea    -0xc8(%rbp),%rdi
    1595:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    1599:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
    15a0:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    15a4:	49 89 f8             	mov    %rdi,%r8
    15a7:	48 89 c7             	mov    %rax,%rdi
    15aa:	e8 b0 f2 ff ff       	callq  85f <rayRectangularIntersection>
    15af:	85 c0                	test   %eax,%eax
    15b1:	74 65                	je     1618 <ray_hit_object+0x156>
    15b3:	c5 fb 10 8d 38 ff ff 	vmovsd -0xc8(%rbp),%xmm1
    15ba:	ff 
    15bb:	c5 fb 10 85 68 ff ff 	vmovsd -0x98(%rbp),%xmm0
    15c2:	ff 
    15c3:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    15c7:	76 4f                	jbe    1618 <ray_hit_object+0x156>
    15c9:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    15d0:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    15d7:	48 89 10             	mov    %rdx,(%rax)
    15da:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    15e1:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    15e8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    15ec:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    15f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15f4:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    15f8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    15fc:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1600:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1604:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    1608:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    160c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1610:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1614:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1618:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    161f:	48 8b 80 c0 00 00 00 	mov    0xc0(%rax),%rax
    1626:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    162d:	48 83 bd 70 ff ff ff 	cmpq   $0x0,-0x90(%rbp)
    1634:	00 
    1635:	0f 85 4c ff ff ff    	jne    1587 <ray_hit_object+0xc5>
    163b:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
    1642:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    1649:	e9 ae 00 00 00       	jmpq   16fc <ray_hit_object+0x23a>
    164e:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    1655:	48 8d bd 38 ff ff ff 	lea    -0xc8(%rbp),%rdi
    165c:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    1660:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
    1667:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    166b:	49 89 f8             	mov    %rdi,%r8
    166e:	48 89 c7             	mov    %rax,%rdi
    1671:	e8 f6 ef ff ff       	callq  66c <raySphereIntersection>
    1676:	85 c0                	test   %eax,%eax
    1678:	74 70                	je     16ea <ray_hit_object+0x228>
    167a:	c5 fb 10 8d 38 ff ff 	vmovsd -0xc8(%rbp),%xmm1
    1681:	ff 
    1682:	c5 fb 10 85 68 ff ff 	vmovsd -0x98(%rbp),%xmm0
    1689:	ff 
    168a:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    168e:	76 5a                	jbe    16ea <ray_hit_object+0x228>
    1690:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1694:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    169b:	48 89 10             	mov    %rdx,(%rax)
    169e:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    16a5:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    16ac:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    16b3:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    16ba:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    16be:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    16c2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16c6:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    16ca:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16ce:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    16d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16d6:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    16da:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    16de:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    16e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16e6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    16ea:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    16f1:	48 8b 40 68          	mov    0x68(%rax),%rax
    16f5:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    16fc:	48 83 bd 78 ff ff ff 	cmpq   $0x0,-0x88(%rbp)
    1703:	00 
    1704:	0f 85 44 ff ff ff    	jne    164e <ray_hit_object+0x18c>
    170a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    1711:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    1715:	48 89 10             	mov    %rdx,(%rax)
    1718:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    171c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1720:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    1724:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1728:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    172c:	48 89 50 18          	mov    %rdx,0x18(%rax)
    1730:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    1734:	48 89 50 20          	mov    %rdx,0x20(%rax)
    1738:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    173c:	48 89 50 28          	mov    %rdx,0x28(%rax)
    1740:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    1747:	c9                   	leaveq 
    1748:	c3                   	retq   

0000000000001749 <rayConstruction>:
    1749:	55                   	push   %rbp
    174a:	48 89 e5             	mov    %rsp,%rbp
    174d:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
    1754:	48 89 bd 38 ff ff ff 	mov    %rdi,-0xc8(%rbp)
    175b:	48 89 b5 30 ff ff ff 	mov    %rsi,-0xd0(%rbp)
    1762:	48 89 95 28 ff ff ff 	mov    %rdx,-0xd8(%rbp)
    1769:	48 89 8d 20 ff ff ff 	mov    %rcx,-0xe0(%rbp)
    1770:	44 89 85 1c ff ff ff 	mov    %r8d,-0xe4(%rbp)
    1777:	44 89 8d 18 ff ff ff 	mov    %r9d,-0xe8(%rbp)
    177e:	48 b8 ec 51 b8 1e 85 	movabs $0xbf91eb851eb851ec,%rax
    1785:	eb 91 bf 
    1788:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    178f:	48 b8 ec 51 b8 1e 85 	movabs $0xbf91eb851eb851ec,%rax
    1796:	eb 91 bf 
    1799:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    17a0:	48 b8 ec 51 b8 1e 85 	movabs $0x3f91eb851eb851ec,%rax
    17a7:	eb 91 3f 
    17aa:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    17b1:	48 b8 ec 51 b8 1e 85 	movabs $0x3f91eb851eb851ec,%rax
    17b8:	eb 91 3f 
    17bb:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    17c2:	48 b8 9a 99 99 99 99 	movabs $0x3fa999999999999a,%rax
    17c9:	99 a9 3f 
    17cc:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    17d3:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    17da:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    17e1:	c5 fb 10 85 50 ff ff 	vmovsd -0xb0(%rbp),%xmm0
    17e8:	ff 
    17e9:	c5 fb 5c 8d 40 ff ff 	vsubsd -0xc0(%rbp),%xmm0,%xmm1
    17f0:	ff 
    17f1:	8b 85 1c ff ff ff    	mov    -0xe4(%rbp),%eax
    17f7:	48 85 c0             	test   %rax,%rax
    17fa:	78 07                	js     1803 <rayConstruction+0xba>
    17fc:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
    1801:	eb 15                	jmp    1818 <rayConstruction+0xcf>
    1803:	48 89 c2             	mov    %rax,%rdx
    1806:	48 d1 ea             	shr    %rdx
    1809:	83 e0 01             	and    $0x1,%eax
    180c:	48 09 c2             	or     %rax,%rdx
    180f:	c4 e1 fa 2a c2       	vcvtsi2ss %rdx,%xmm0,%xmm0
    1814:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
    1818:	c5 f8 14 c0          	vunpcklps %xmm0,%xmm0,%xmm0
    181c:	c5 f8 5a c0          	vcvtps2pd %xmm0,%xmm0
    1820:	c5 f3 59 c8          	vmulsd %xmm0,%xmm1,%xmm1
    1824:	8b 45 18             	mov    0x18(%rbp),%eax
    1827:	83 e8 01             	sub    $0x1,%eax
    182a:	89 c0                	mov    %eax,%eax
    182c:	48 85 c0             	test   %rax,%rax
    182f:	78 07                	js     1838 <rayConstruction+0xef>
    1831:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    1836:	eb 15                	jmp    184d <rayConstruction+0x104>
    1838:	48 89 c2             	mov    %rax,%rdx
    183b:	48 d1 ea             	shr    %rdx
    183e:	83 e0 01             	and    $0x1,%eax
    1841:	48 09 c2             	or     %rax,%rdx
    1844:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    1849:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    184d:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
    1851:	c5 fb 58 85 40 ff ff 	vaddsd -0xc0(%rbp),%xmm0,%xmm0
    1858:	ff 
    1859:	c5 fb 11 85 70 ff ff 	vmovsd %xmm0,-0x90(%rbp)
    1860:	ff 
    1861:	c5 fb 10 85 48 ff ff 	vmovsd -0xb8(%rbp),%xmm0
    1868:	ff 
    1869:	c5 fb 5c 8d 58 ff ff 	vsubsd -0xa8(%rbp),%xmm0,%xmm1
    1870:	ff 
    1871:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
    1877:	48 85 c0             	test   %rax,%rax
    187a:	78 07                	js     1883 <rayConstruction+0x13a>
    187c:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
    1881:	eb 15                	jmp    1898 <rayConstruction+0x14f>
    1883:	48 89 c2             	mov    %rax,%rdx
    1886:	48 d1 ea             	shr    %rdx
    1889:	83 e0 01             	and    $0x1,%eax
    188c:	48 09 c2             	or     %rax,%rdx
    188f:	c4 e1 fa 2a c2       	vcvtsi2ss %rdx,%xmm0,%xmm0
    1894:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
    1898:	c5 f8 14 c0          	vunpcklps %xmm0,%xmm0,%xmm0
    189c:	c5 f8 5a c0          	vcvtps2pd %xmm0,%xmm0
    18a0:	c5 f3 59 c8          	vmulsd %xmm0,%xmm1,%xmm1
    18a4:	8b 45 20             	mov    0x20(%rbp),%eax
    18a7:	83 e8 01             	sub    $0x1,%eax
    18aa:	89 c0                	mov    %eax,%eax
    18ac:	48 85 c0             	test   %rax,%rax
    18af:	78 07                	js     18b8 <rayConstruction+0x16f>
    18b1:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    18b6:	eb 15                	jmp    18cd <rayConstruction+0x184>
    18b8:	48 89 c2             	mov    %rax,%rdx
    18bb:	48 d1 ea             	shr    %rdx
    18be:	83 e0 01             	and    $0x1,%eax
    18c1:	48 09 c2             	or     %rax,%rdx
    18c4:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    18c9:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    18cd:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
    18d1:	c5 fb 58 85 58 ff ff 	vaddsd -0xa8(%rbp),%xmm0,%xmm0
    18d8:	ff 
    18d9:	c5 fb 11 85 78 ff ff 	vmovsd %xmm0,-0x88(%rbp)
    18e0:	ff 
    18e1:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    18e5:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    18ec:	48 8b 95 30 ff ff ff 	mov    -0xd0(%rbp),%rdx
    18f3:	48 89 ce             	mov    %rcx,%rsi
    18f6:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    18fd:	c5 fb 10 85 10 ff ff 	vmovsd -0xf0(%rbp),%xmm0
    1904:	ff 
    1905:	48 89 d7             	mov    %rdx,%rdi
    1908:	e8 c2 e9 ff ff       	callq  2cf <multiply_vector>
    190d:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    1911:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1918:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
    191f:	48 89 ce             	mov    %rcx,%rsi
    1922:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    1929:	c5 fb 10 85 10 ff ff 	vmovsd -0xf0(%rbp),%xmm0
    1930:	ff 
    1931:	48 89 d7             	mov    %rdx,%rdi
    1934:	e8 96 e9 ff ff       	callq  2cf <multiply_vector>
    1939:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    193d:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    1944:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
    194b:	48 89 ce             	mov    %rcx,%rsi
    194e:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    1955:	c5 fb 10 85 10 ff ff 	vmovsd -0xf0(%rbp),%xmm0
    195c:	ff 
    195d:	48 89 d7             	mov    %rdx,%rdi
    1960:	e8 6a e9 ff ff       	callq  2cf <multiply_vector>
    1965:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1969:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    196d:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    1971:	48 89 ce             	mov    %rcx,%rsi
    1974:	48 89 c7             	mov    %rax,%rdi
    1977:	e8 ef e7 ff ff       	callq  16b <add_vector>
    197c:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1980:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    1984:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1988:	48 89 ce             	mov    %rcx,%rsi
    198b:	48 89 c7             	mov    %rax,%rdi
    198e:	e8 d8 e7 ff ff       	callq  16b <add_vector>
    1993:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1997:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    199b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    199f:	48 89 ce             	mov    %rcx,%rsi
    19a2:	48 89 c7             	mov    %rax,%rdi
    19a5:	e8 c1 e7 ff ff       	callq  16b <add_vector>
    19aa:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
    19ae:	48 8b 95 38 ff ff ff 	mov    -0xc8(%rbp),%rdx
    19b5:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    19b9:	48 89 ce             	mov    %rcx,%rsi
    19bc:	48 89 c7             	mov    %rax,%rdi
    19bf:	e8 1a e8 ff ff       	callq  1de <subtract_vector>
    19c4:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    19cb:	48 89 c7             	mov    %rax,%rdi
    19ce:	e8 2d e6 ff ff       	callq  0 <normalize>
    19d3:	c9                   	leaveq 
    19d4:	c3                   	retq   

00000000000019d5 <calculateBasisVectors>:
    19d5:	55                   	push   %rbp
    19d6:	48 89 e5             	mov    %rsp,%rbp
    19d9:	48 83 ec 20          	sub    $0x20,%rsp
    19dd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    19e1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    19e5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    19e9:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    19ed:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    19f1:	48 8b 40 18          	mov    0x18(%rax),%rax
    19f5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    19f9:	48 89 02             	mov    %rax,(%rdx)
    19fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a00:	48 8d 50 08          	lea    0x8(%rax),%rdx
    1a04:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1a08:	48 8b 40 20          	mov    0x20(%rax),%rax
    1a0c:	48 89 02             	mov    %rax,(%rdx)
    1a0f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a13:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1a17:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1a1b:	48 8b 40 28          	mov    0x28(%rax),%rax
    1a1f:	48 89 02             	mov    %rax,(%rdx)
    1a22:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a26:	48 89 c7             	mov    %rax,%rdi
    1a29:	e8 d2 e5 ff ff       	callq  0 <normalize>
    1a2e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1a32:	48 8d 48 30          	lea    0x30(%rax),%rcx
    1a36:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1a3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a3e:	48 89 ce             	mov    %rcx,%rsi
    1a41:	48 89 c7             	mov    %rax,%rdi
    1a44:	e8 e2 e8 ff ff       	callq  32b <cross_product>
    1a49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a4d:	48 89 c7             	mov    %rax,%rdi
    1a50:	e8 ab e5 ff ff       	callq  0 <normalize>
    1a55:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1a59:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1a5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a61:	48 89 ce             	mov    %rcx,%rsi
    1a64:	48 89 c7             	mov    %rax,%rdi
    1a67:	e8 bf e8 ff ff       	callq  32b <cross_product>
    1a6c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a70:	48 89 c7             	mov    %rax,%rdi
    1a73:	e8 88 e5 ff ff       	callq  0 <normalize>
    1a78:	c9                   	leaveq 
    1a79:	c3                   	retq   

0000000000001a7a <protect_color_overflow>:
    1a7a:	55                   	push   %rbp
    1a7b:	48 89 e5             	mov    %rsp,%rbp
    1a7e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1a82:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1a89:	eb 4b                	jmp    1ad6 <protect_color_overflow+0x5c>
    1a8b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1a8e:	48 98                	cltq   
    1a90:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1a97:	00 
    1a98:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a9c:	48 01 d0             	add    %rdx,%rax
    1a9f:	c5 fb 10 00          	vmovsd (%rax),%xmm0
    1aa3:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 1aab <protect_color_overflow+0x31>
    1aaa:	00 
    1aab:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    1aaf:	76 21                	jbe    1ad2 <protect_color_overflow+0x58>
    1ab1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1ab4:	48 98                	cltq   
    1ab6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1abd:	00 
    1abe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ac2:	48 01 c2             	add    %rax,%rdx
    1ac5:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
    1acc:	00 f0 3f 
    1acf:	48 89 02             	mov    %rax,(%rdx)
    1ad2:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1ad6:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
    1ada:	7e af                	jle    1a8b <protect_color_overflow+0x11>
    1adc:	5d                   	pop    %rbp
    1add:	c3                   	retq   

0000000000001ade <ray_color>:
    1ade:	55                   	push   %rbp
    1adf:	48 89 e5             	mov    %rsp,%rbp
    1ae2:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    1ae6:	48 81 ec 40 02 00 00 	sub    $0x240,%rsp
    1aed:	48 89 bc 24 98 00 00 	mov    %rdi,0x98(%rsp)
    1af4:	00 
    1af5:	c5 fb 11 84 24 90 00 	vmovsd %xmm0,0x90(%rsp)
    1afc:	00 00 
    1afe:	48 89 b4 24 88 00 00 	mov    %rsi,0x88(%rsp)
    1b05:	00 
    1b06:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
    1b0d:	00 
    1b0e:	48 89 4c 24 78       	mov    %rcx,0x78(%rsp)
    1b13:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
    1b18:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
    1b1d:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1b24:	00 00 00 00 00 
    1b29:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1b30:	00 00 00 00 00 
    1b35:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    1b3c:	00 00 00 00 00 
    1b41:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1b48:	00 00 00 00 00 
    1b4d:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
    1b51:	75 36                	jne    1b89 <ray_color+0xab>
    1b53:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    1b57:	b8 00 00 00 00       	mov    $0x0,%eax
    1b5c:	48 89 02             	mov    %rax,(%rdx)
    1b5f:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1b63:	48 8d 50 08          	lea    0x8(%rax),%rdx
    1b67:	b8 00 00 00 00       	mov    $0x0,%eax
    1b6c:	48 89 02             	mov    %rax,(%rdx)
    1b6f:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1b73:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1b77:	b8 00 00 00 00       	mov    $0x0,%eax
    1b7c:	48 89 02             	mov    %rax,(%rdx)
    1b7f:	b8 00 00 00 00       	mov    $0x0,%eax
    1b84:	e9 c1 07 00 00       	jmpq   234a <ray_color+0x86c>
    1b89:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
    1b90:	00 
    1b91:	4c 8b 4c 24 70       	mov    0x70(%rsp),%r9
    1b96:	4c 8d 9c 24 a8 00 00 	lea    0xa8(%rsp),%r11
    1b9d:	00 
    1b9e:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
    1ba3:	48 ba 00 00 00 a2 94 	movabs $0x426d1a94a2000000,%rdx
    1baa:	1a 6d 42 
    1bad:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    1bb4:	00 
    1bb5:	4c 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10
    1bbc:	00 
    1bbd:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    1bc4:	00 
    1bc5:	4c 8d 84 24 b8 00 00 	lea    0xb8(%rsp),%r8
    1bcc:	00 
    1bcd:	4c 89 04 24          	mov    %r8,(%rsp)
    1bd1:	4d 89 d8             	mov    %r11,%r8
    1bd4:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1bd9:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
    1bdf:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1be4:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    1bea:	4c 89 d2             	mov    %r10,%rdx
    1bed:	e8 d0 f8 ff ff       	callq  14c2 <ray_hit_object>
    1bf2:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    1bf9:	00 
    1bfa:	48 85 c0             	test   %rax,%rax
    1bfd:	75 17                	jne    1c16 <ray_color+0x138>
    1bff:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    1c06:	00 
    1c07:	48 85 c0             	test   %rax,%rax
    1c0a:	75 0a                	jne    1c16 <ray_color+0x138>
    1c0c:	b8 00 00 00 00       	mov    $0x0,%eax
    1c11:	e9 34 07 00 00       	jmpq   234a <ray_color+0x86c>
    1c16:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    1c1d:	00 
    1c1e:	48 85 c0             	test   %rax,%rax
    1c21:	0f 84 8e 00 00 00    	je     1cb5 <ray_color+0x1d7>
    1c27:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    1c2e:	00 
    1c2f:	48 8b 50 78          	mov    0x78(%rax),%rdx
    1c33:	48 89 94 24 f0 01 00 	mov    %rdx,0x1f0(%rsp)
    1c3a:	00 
    1c3b:	48 8b 90 80 00 00 00 	mov    0x80(%rax),%rdx
    1c42:	48 89 94 24 f8 01 00 	mov    %rdx,0x1f8(%rsp)
    1c49:	00 
    1c4a:	48 8b 90 88 00 00 00 	mov    0x88(%rax),%rdx
    1c51:	48 89 94 24 00 02 00 	mov    %rdx,0x200(%rsp)
    1c58:	00 
    1c59:	48 8b 90 90 00 00 00 	mov    0x90(%rax),%rdx
    1c60:	48 89 94 24 08 02 00 	mov    %rdx,0x208(%rsp)
    1c67:	00 
    1c68:	48 8b 90 98 00 00 00 	mov    0x98(%rax),%rdx
    1c6f:	48 89 94 24 10 02 00 	mov    %rdx,0x210(%rsp)
    1c76:	00 
    1c77:	48 8b 90 a0 00 00 00 	mov    0xa0(%rax),%rdx
    1c7e:	48 89 94 24 18 02 00 	mov    %rdx,0x218(%rsp)
    1c85:	00 
    1c86:	48 8b 90 a8 00 00 00 	mov    0xa8(%rax),%rdx
    1c8d:	48 89 94 24 20 02 00 	mov    %rdx,0x220(%rsp)
    1c94:	00 
    1c95:	48 8b 90 b0 00 00 00 	mov    0xb0(%rax),%rdx
    1c9c:	48 89 94 24 28 02 00 	mov    %rdx,0x228(%rsp)
    1ca3:	00 
    1ca4:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    1cab:	48 89 84 24 30 02 00 	mov    %rax,0x230(%rsp)
    1cb2:	00 
    1cb3:	eb 74                	jmp    1d29 <ray_color+0x24b>
    1cb5:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    1cbc:	00 
    1cbd:	48 8b 50 20          	mov    0x20(%rax),%rdx
    1cc1:	48 89 94 24 f0 01 00 	mov    %rdx,0x1f0(%rsp)
    1cc8:	00 
    1cc9:	48 8b 50 28          	mov    0x28(%rax),%rdx
    1ccd:	48 89 94 24 f8 01 00 	mov    %rdx,0x1f8(%rsp)
    1cd4:	00 
    1cd5:	48 8b 50 30          	mov    0x30(%rax),%rdx
    1cd9:	48 89 94 24 00 02 00 	mov    %rdx,0x200(%rsp)
    1ce0:	00 
    1ce1:	48 8b 50 38          	mov    0x38(%rax),%rdx
    1ce5:	48 89 94 24 08 02 00 	mov    %rdx,0x208(%rsp)
    1cec:	00 
    1ced:	48 8b 50 40          	mov    0x40(%rax),%rdx
    1cf1:	48 89 94 24 10 02 00 	mov    %rdx,0x210(%rsp)
    1cf8:	00 
    1cf9:	48 8b 50 48          	mov    0x48(%rax),%rdx
    1cfd:	48 89 94 24 18 02 00 	mov    %rdx,0x218(%rsp)
    1d04:	00 
    1d05:	48 8b 50 50          	mov    0x50(%rax),%rdx
    1d09:	48 89 94 24 20 02 00 	mov    %rdx,0x220(%rsp)
    1d10:	00 
    1d11:	48 8b 50 58          	mov    0x58(%rax),%rdx
    1d15:	48 89 94 24 28 02 00 	mov    %rdx,0x228(%rsp)
    1d1c:	00 
    1d1d:	48 8b 40 60          	mov    0x60(%rax),%rax
    1d21:	48 89 84 24 30 02 00 	mov    %rax,0x230(%rsp)
    1d28:	00 
    1d29:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    1d30:	00 
    1d31:	48 85 c0             	test   %rax,%rax
    1d34:	74 0a                	je     1d40 <ray_color+0x262>
    1d36:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    1d3d:	00 
    1d3e:	eb 08                	jmp    1d48 <ray_color+0x26a>
    1d40:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    1d47:	00 
    1d48:	48 89 84 24 e8 00 00 	mov    %rax,0xe8(%rsp)
    1d4f:	00 
    1d50:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    1d54:	b8 00 00 00 00       	mov    $0x0,%eax
    1d59:	48 89 02             	mov    %rax,(%rdx)
    1d5c:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1d60:	48 8d 50 08          	lea    0x8(%rax),%rdx
    1d64:	b8 00 00 00 00       	mov    $0x0,%eax
    1d69:	48 89 02             	mov    %rax,(%rdx)
    1d6c:	48 8b 45 10          	mov    0x10(%rbp),%rax
    1d70:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1d74:	b8 00 00 00 00       	mov    $0x0,%eax
    1d79:	48 89 02             	mov    %rax,(%rdx)
    1d7c:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1d81:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
    1d88:	00 
    1d89:	e9 89 01 00 00       	jmpq   1f17 <ray_color+0x439>
    1d8e:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
    1d95:	00 
    1d96:	48 8d 48 18          	lea    0x18(%rax),%rcx
    1d9a:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
    1da1:	00 
    1da2:	48 8d 84 24 c0 01 00 	lea    0x1c0(%rsp),%rax
    1da9:	00 
    1daa:	48 89 ce             	mov    %rcx,%rsi
    1dad:	48 89 c7             	mov    %rax,%rdi
    1db0:	e8 29 e4 ff ff       	callq  1de <subtract_vector>
    1db5:	48 8d 94 24 20 01 00 	lea    0x120(%rsp),%rdx
    1dbc:	00 
    1dbd:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
    1dc4:	00 
    1dc5:	48 89 d6             	mov    %rdx,%rsi
    1dc8:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 1dd0 <ray_color+0x2f2>
    1dcf:	00 
    1dd0:	48 89 c7             	mov    %rax,%rdi
    1dd3:	e8 f7 e4 ff ff       	callq  2cf <multiply_vector>
    1dd8:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
    1ddf:	00 
    1de0:	48 89 c7             	mov    %rax,%rdi
    1de3:	e8 18 e2 ff ff       	callq  0 <normalize>
    1de8:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
    1def:	00 
    1df0:	48 89 c7             	mov    %rax,%rdi
    1df3:	e8 fa e2 ff ff       	callq  f2 <length>
    1df8:	c5 fb 11 44 24 18    	vmovsd %xmm0,0x18(%rsp)
    1dfe:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1e03:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1e08:	4c 8b 4c 24 70       	mov    0x70(%rsp),%r9
    1e0d:	4c 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%r11
    1e14:	00 
    1e15:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
    1e1a:	48 ba f1 68 e3 88 b5 	movabs $0x3ee4f8b588e368f1,%rdx
    1e21:	f8 e4 3e 
    1e24:	4c 8d 94 24 20 01 00 	lea    0x120(%rsp),%r10
    1e2b:	00 
    1e2c:	48 8d b4 24 c0 01 00 	lea    0x1c0(%rsp),%rsi
    1e33:	00 
    1e34:	4c 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%r8
    1e3b:	00 
    1e3c:	4c 89 04 24          	mov    %r8,(%rsp)
    1e40:	4d 89 d8             	mov    %r11,%r8
    1e43:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1e48:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
    1e4e:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1e53:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    1e59:	4c 89 d2             	mov    %r10,%rdx
    1e5c:	e8 61 f6 ff ff       	callq  14c2 <ray_hit_object>
    1e61:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
    1e68:	00 
    1e69:	48 85 c0             	test   %rax,%rax
    1e6c:	75 0d                	jne    1e7b <ray_color+0x39d>
    1e6e:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    1e75:	00 
    1e76:	48 85 c0             	test   %rax,%rax
    1e79:	74 05                	je     1e80 <ray_color+0x3a2>
    1e7b:	e9 83 00 00 00       	jmpq   1f03 <ray_color+0x425>
    1e80:	48 8b 84 24 30 02 00 	mov    0x230(%rsp),%rax
    1e87:	00 
    1e88:	48 8d 94 24 c0 01 00 	lea    0x1c0(%rsp),%rdx
    1e8f:	00 
    1e90:	4c 8d 42 18          	lea    0x18(%rdx),%r8
    1e94:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
    1e9b:	00 
    1e9c:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    1ea3:	00 
    1ea4:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
    1eab:	00 
    1eac:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
    1eb3:	00 
    1eb4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1eb9:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    1ebf:	e8 ce f0 ff ff       	callq  f92 <compute_specular_diffuse>
    1ec4:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
    1ecb:	00 
    1ecc:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
    1ed3:	00 
    1ed4:	48 8b b4 24 d8 00 00 	mov    0xd8(%rsp),%rsi
    1edb:	00 
    1edc:	48 8d 94 24 f0 01 00 	lea    0x1f0(%rsp),%rdx
    1ee3:	00 
    1ee4:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    1ee9:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
    1eef:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1ef4:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    1efa:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    1efe:	e8 4c ee ff ff       	callq  d4f <localColor>
    1f03:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
    1f0a:	00 
    1f0b:	48 8b 40 38          	mov    0x38(%rax),%rax
    1f0f:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
    1f16:	00 
    1f17:	48 83 bc 24 d8 00 00 	cmpq   $0x0,0xd8(%rsp)
    1f1e:	00 00 
    1f20:	0f 85 68 fe ff ff    	jne    1d8e <ray_color+0x2b0>
    1f26:	48 8d 84 24 c0 01 00 	lea    0x1c0(%rsp),%rax
    1f2d:	00 
    1f2e:	48 8d 50 18          	lea    0x18(%rax),%rdx
    1f32:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
    1f39:	00 
    1f3a:	48 8d 84 24 40 01 00 	lea    0x140(%rsp),%rax
    1f41:	00 
    1f42:	48 89 ce             	mov    %rcx,%rsi
    1f45:	48 89 c7             	mov    %rax,%rdi
    1f48:	e8 a9 f2 ff ff       	callq  11f6 <reflection>
    1f4d:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    1f54:	00 
    1f55:	48 89 c7             	mov    %rax,%rdi
    1f58:	e8 97 e6 ff ff       	callq  5f4 <idx_stack_top>
    1f5d:	c5 fb 11 44 24 18    	vmovsd %xmm0,0x18(%rsp)
    1f63:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    1f68:	48 89 c6             	mov    %rax,%rsi
    1f6b:	b8 00 00 00 00       	mov    $0x0,%eax
    1f70:	ba 00 00 00 00       	mov    $0x0,%edx
    1f75:	48 89 c8             	mov    %rcx,%rax
    1f78:	48 89 f2             	mov    %rsi,%rdx
    1f7b:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
    1f82:	00 
    1f83:	48 8b 84 24 28 02 00 	mov    0x228(%rsp),%rax
    1f8a:	00 
    1f8b:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
    1f92:	00 
    1f93:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    1f9a:	00 
    1f9b:	48 89 c7             	mov    %rax,%rdi
    1f9e:	e8 51 e6 ff ff       	callq  5f4 <idx_stack_top>
    1fa3:	c5 fb 11 44 24 18    	vmovsd %xmm0,0x18(%rsp)
    1fa9:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    1fae:	48 89 c6             	mov    %rax,%rsi
    1fb1:	b8 00 00 00 00       	mov    $0x0,%eax
    1fb6:	ba 00 00 00 00       	mov    $0x0,%edx
    1fbb:	48 89 c8             	mov    %rcx,%rax
    1fbe:	48 89 f2             	mov    %rsi,%rdx
    1fc1:	48 89 d0             	mov    %rdx,%rax
    1fc4:	48 3b 84 24 e8 00 00 	cmp    0xe8(%rsp),%rax
    1fcb:	00 
    1fcc:	75 48                	jne    2016 <ray_color+0x538>
    1fce:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    1fd5:	00 
    1fd6:	48 89 c7             	mov    %rax,%rdi
    1fd9:	e8 8a e5 ff ff       	callq  568 <idx_stack_pop>
    1fde:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    1fe5:	00 
    1fe6:	48 89 c7             	mov    %rax,%rdi
    1fe9:	e8 06 e6 ff ff       	callq  5f4 <idx_stack_top>
    1fee:	c5 fb 11 44 24 18    	vmovsd %xmm0,0x18(%rsp)
    1ff4:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    1ff9:	48 89 c6             	mov    %rax,%rsi
    1ffc:	b8 00 00 00 00       	mov    $0x0,%eax
    2001:	ba 00 00 00 00       	mov    $0x0,%edx
    2006:	48 89 c8             	mov    %rcx,%rax
    2009:	48 89 f2             	mov    %rsi,%rdx
    200c:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
    2013:	00 
    2014:	eb 4e                	jmp    2064 <ray_color+0x586>
    2016:	48 8b 84 24 28 02 00 	mov    0x228(%rsp),%rax
    201d:	00 
    201e:	48 89 84 24 a0 01 00 	mov    %rax,0x1a0(%rsp)
    2025:	00 
    2026:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
    202d:	00 
    202e:	48 89 84 24 a8 01 00 	mov    %rax,0x1a8(%rsp)
    2035:	00 
    2036:	48 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%rax
    203d:	00 
    203e:	48 8b 8c 24 a8 01 00 	mov    0x1a8(%rsp),%rcx
    2045:	00 
    2046:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    204d:	00 
    204e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2053:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    2059:	48 89 ce             	mov    %rcx,%rsi
    205c:	48 89 d7             	mov    %rdx,%rdi
    205f:	e8 7a e4 ff ff       	callq  4de <idx_stack_push>
    2064:	48 8b 94 24 e0 00 00 	mov    0xe0(%rsp),%rdx
    206b:	00 
    206c:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
    2073:	00 
    2074:	48 8d 8c 24 c0 01 00 	lea    0x1c0(%rsp),%rcx
    207b:	00 
    207c:	48 8d 79 18          	lea    0x18(%rcx),%rdi
    2080:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
    2087:	00 
    2088:	48 8d 8c 24 60 01 00 	lea    0x160(%rsp),%rcx
    208f:	00 
    2090:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    2095:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
    209b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    20a0:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    20a6:	48 89 fa             	mov    %rdi,%rdx
    20a9:	48 89 cf             	mov    %rcx,%rdi
    20ac:	e8 a4 f1 ff ff       	callq  1255 <refraction>
    20b1:	c5 fb 10 84 24 18 02 	vmovsd 0x218(%rsp),%xmm0
    20b8:	00 00 
    20ba:	c5 f9 2e 05 00 00 00 	vucomisd 0x0(%rip),%xmm0        # 20c2 <ray_color+0x5e4>
    20c1:	00 
    20c2:	76 5a                	jbe    211e <ray_color+0x640>
    20c4:	48 8b 94 24 e0 00 00 	mov    0xe0(%rsp),%rdx
    20cb:	00 
    20cc:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
    20d3:	00 
    20d4:	48 8d 8c 24 c0 01 00 	lea    0x1c0(%rsp),%rcx
    20db:	00 
    20dc:	48 8d 79 18          	lea    0x18(%rcx),%rdi
    20e0:	48 8d b4 24 60 01 00 	lea    0x160(%rsp),%rsi
    20e7:	00 
    20e8:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
    20ef:	00 
    20f0:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    20f5:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
    20fb:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2100:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    2106:	48 89 fa             	mov    %rdi,%rdx
    2109:	48 89 cf             	mov    %rcx,%rdi
    210c:	e8 78 f2 ff ff       	callq  1389 <fresnel>
    2111:	c5 fb 11 44 24 18    	vmovsd %xmm0,0x18(%rsp)
    2117:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    211c:	eb 0a                	jmp    2128 <ray_color+0x64a>
    211e:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
    2125:	00 f0 3f 
    2128:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
    212f:	00 
    2130:	c5 fb 10 84 24 20 02 	vmovsd 0x220(%rsp),%xmm0
    2137:	00 00 
    2139:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    213d:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    2141:	0f 86 e8 00 00 00    	jbe    222f <ray_color+0x751>
    2147:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    214e:	00 
    214f:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
    2155:	89 84 24 a4 00 00 00 	mov    %eax,0xa4(%rsp)
    215c:	8b 45 18             	mov    0x18(%rbp),%eax
    215f:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
    2163:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
    2168:	4c 8b 54 24 70       	mov    0x70(%rsp),%r10
    216d:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
    2172:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    2179:	00 
    217a:	48 8d b4 24 40 01 00 	lea    0x140(%rsp),%rsi
    2181:	00 
    2182:	48 b8 f1 68 e3 88 b5 	movabs $0x3ee4f8b588e368f1,%rax
    2189:	f8 e4 3e 
    218c:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
    2193:	00 
    2194:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    2199:	4c 8d 84 24 80 01 00 	lea    0x180(%rsp),%r8
    21a0:	00 
    21a1:	4c 89 04 24          	mov    %r8,(%rsp)
    21a5:	4d 89 d0             	mov    %r10,%r8
    21a8:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    21ad:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    21b3:	e8 26 f9 ff ff       	callq  1ade <ray_color>
    21b8:	85 c0                	test   %eax,%eax
    21ba:	74 5e                	je     221a <ray_color+0x73c>
    21bc:	c5 fb 10 8c 24 08 02 	vmovsd 0x208(%rsp),%xmm1
    21c3:	00 00 
    21c5:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 21cd <ray_color+0x6ef>
    21cc:	00 
    21cd:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
    21d1:	c5 fb 59 84 24 f8 00 	vmulsd 0xf8(%rsp),%xmm0,%xmm0
    21d8:	00 00 
    21da:	c5 fb 10 8c 24 20 02 	vmovsd 0x220(%rsp),%xmm1
    21e1:	00 00 
    21e3:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    21e7:	48 8d 94 24 80 01 00 	lea    0x180(%rsp),%rdx
    21ee:	00 
    21ef:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
    21f6:	00 
    21f7:	48 89 d6             	mov    %rdx,%rsi
    21fa:	48 89 c7             	mov    %rax,%rdi
    21fd:	e8 cd e0 ff ff       	callq  2cf <multiply_vector>
    2202:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
    2209:	00 
    220a:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    220e:	48 89 c6             	mov    %rax,%rsi
    2211:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    2215:	e8 51 df ff ff       	callq  16b <add_vector>
    221a:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    2221:	00 
    2222:	8b 94 24 a4 00 00 00 	mov    0xa4(%rsp),%edx
    2229:	89 90 00 01 00 00    	mov    %edx,0x100(%rax)
    222f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
    2236:	00 
    2237:	48 89 c7             	mov    %rax,%rdi
    223a:	e8 b3 de ff ff       	callq  f2 <length>
    223f:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    2243:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    2247:	0f 86 ef 00 00 00    	jbe    233c <ray_color+0x85e>
    224d:	c5 fb 10 84 24 18 02 	vmovsd 0x218(%rsp),%xmm0
    2254:	00 00 
    2256:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    225a:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    225e:	0f 86 d8 00 00 00    	jbe    233c <ray_color+0x85e>
    2264:	c5 fb 10 84 24 28 02 	vmovsd 0x228(%rsp),%xmm0
    226b:	00 00 
    226d:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    2271:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    2275:	0f 86 c1 00 00 00    	jbe    233c <ray_color+0x85e>
    227b:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
    2282:	00 
    2283:	48 89 c7             	mov    %rax,%rdi
    2286:	e8 75 dd ff ff       	callq  0 <normalize>
    228b:	8b 45 18             	mov    0x18(%rbp),%eax
    228e:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
    2292:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
    2297:	4c 8b 54 24 70       	mov    0x70(%rsp),%r10
    229c:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
    22a1:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    22a8:	00 
    22a9:	48 8d b4 24 60 01 00 	lea    0x160(%rsp),%rsi
    22b0:	00 
    22b1:	48 b8 f1 68 e3 88 b5 	movabs $0x3ee4f8b588e368f1,%rax
    22b8:	f8 e4 3e 
    22bb:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
    22c2:	00 
    22c3:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    22c8:	4c 8d 84 24 a0 01 00 	lea    0x1a0(%rsp),%r8
    22cf:	00 
    22d0:	4c 89 04 24          	mov    %r8,(%rsp)
    22d4:	4d 89 d0             	mov    %r10,%r8
    22d7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    22dc:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    22e2:	e8 f7 f7 ff ff       	callq  1ade <ray_color>
    22e7:	85 c0                	test   %eax,%eax
    22e9:	74 51                	je     233c <ray_color+0x85e>
    22eb:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 22f3 <ray_color+0x815>
    22f2:	00 
    22f3:	c5 fb 5c 84 24 f8 00 	vsubsd 0xf8(%rsp),%xmm0,%xmm0
    22fa:	00 00 
    22fc:	c5 fb 10 8c 24 18 02 	vmovsd 0x218(%rsp),%xmm1
    2303:	00 00 
    2305:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    2309:	48 8d 94 24 a0 01 00 	lea    0x1a0(%rsp),%rdx
    2310:	00 
    2311:	48 8d 84 24 a0 01 00 	lea    0x1a0(%rsp),%rax
    2318:	00 
    2319:	48 89 d6             	mov    %rdx,%rsi
    231c:	48 89 c7             	mov    %rax,%rdi
    231f:	e8 ab df ff ff       	callq  2cf <multiply_vector>
    2324:	48 8d 84 24 a0 01 00 	lea    0x1a0(%rsp),%rax
    232b:	00 
    232c:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    2330:	48 89 c6             	mov    %rax,%rsi
    2333:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    2337:	e8 2f de ff ff       	callq  16b <add_vector>
    233c:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    2340:	e8 35 f7 ff ff       	callq  1a7a <protect_color_overflow>
    2345:	b8 01 00 00 00       	mov    $0x1,%eax
    234a:	c9                   	leaveq 
    234b:	c3                   	retq   

000000000000234c <raytracing>:
    234c:	55                   	push   %rbp
    234d:	48 89 e5             	mov    %rsp,%rbp
    2350:	48 81 ec 30 02 00 00 	sub    $0x230,%rsp
    2357:	48 89 bd 18 fe ff ff 	mov    %rdi,-0x1e8(%rbp)
    235e:	48 89 b5 10 fe ff ff 	mov    %rsi,-0x1f0(%rbp)
    2365:	48 89 95 08 fe ff ff 	mov    %rdx,-0x1f8(%rbp)
    236c:	48 89 8d 00 fe ff ff 	mov    %rcx,-0x200(%rbp)
    2373:	4c 89 85 f8 fd ff ff 	mov    %r8,-0x208(%rbp)
    237a:	4c 89 8d f0 fd ff ff 	mov    %r9,-0x210(%rbp)
    2381:	b8 00 00 00 00       	mov    $0x0,%eax
    2386:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
    238d:	b8 00 00 00 00       	mov    $0x0,%eax
    2392:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
    2399:	b8 00 00 00 00       	mov    $0x0,%eax
    239e:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    23a5:	48 8b 8d f0 fd ff ff 	mov    -0x210(%rbp),%rcx
    23ac:	48 8d 95 90 fe ff ff 	lea    -0x170(%rbp),%rdx
    23b3:	48 8d b5 70 fe ff ff 	lea    -0x190(%rbp),%rsi
    23ba:	48 8d 85 50 fe ff ff 	lea    -0x1b0(%rbp),%rax
    23c1:	48 89 c7             	mov    %rax,%rdi
    23c4:	e8 0c f6 ff ff       	callq  19d5 <calculateBasisVectors>
    23c9:	c7 85 34 fe ff ff 02 	movl   $0x2,-0x1cc(%rbp)
    23d0:	00 00 00 
    23d3:	c7 85 28 fe ff ff 00 	movl   $0x0,-0x1d8(%rbp)
    23da:	00 00 00 
    23dd:	e9 0f 03 00 00       	jmpq   26f1 <raytracing+0x3a5>
    23e2:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
    23e9:	00 00 00 
    23ec:	e9 ea 02 00 00       	jmpq   26db <raytracing+0x38f>
    23f1:	b8 00 00 00 00       	mov    $0x0,%eax
    23f6:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    23fd:	b8 00 00 00 00       	mov    $0x0,%eax
    2402:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    2409:	b8 00 00 00 00       	mov    $0x0,%eax
    240e:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    2415:	c7 85 30 fe ff ff 00 	movl   $0x0,-0x1d0(%rbp)
    241c:	00 00 00 
    241f:	e9 a3 02 00 00       	jmpq   26c7 <raytracing+0x37b>
    2424:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    242b:	48 89 c7             	mov    %rax,%rdi
    242e:	e8 93 e0 ff ff       	callq  4c6 <idx_stack_init>
    2433:	8b 45 18             	mov    0x18(%rbp),%eax
    2436:	0f af 85 34 fe ff ff 	imul   -0x1cc(%rbp),%eax
    243d:	41 89 c0             	mov    %eax,%r8d
    2440:	8b 45 10             	mov    0x10(%rbp),%eax
    2443:	0f af 85 34 fe ff ff 	imul   -0x1cc(%rbp),%eax
    244a:	89 c7                	mov    %eax,%edi
    244c:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    2452:	0f af 85 34 fe ff ff 	imul   -0x1cc(%rbp),%eax
    2459:	89 c1                	mov    %eax,%ecx
    245b:	8b 85 30 fe ff ff    	mov    -0x1d0(%rbp),%eax
    2461:	99                   	cltd   
    2462:	f7 bd 34 fe ff ff    	idivl  -0x1cc(%rbp)
    2468:	89 d0                	mov    %edx,%eax
    246a:	01 c8                	add    %ecx,%eax
    246c:	41 89 c1             	mov    %eax,%r9d
    246f:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    2475:	0f af 85 34 fe ff ff 	imul   -0x1cc(%rbp),%eax
    247c:	89 c1                	mov    %eax,%ecx
    247e:	8b 85 30 fe ff ff    	mov    -0x1d0(%rbp),%eax
    2484:	99                   	cltd   
    2485:	f7 bd 34 fe ff ff    	idivl  -0x1cc(%rbp)
    248b:	01 c8                	add    %ecx,%eax
    248d:	41 89 c2             	mov    %eax,%r10d
    2490:	48 8d 8d 90 fe ff ff 	lea    -0x170(%rbp),%rcx
    2497:	48 8d 95 70 fe ff ff 	lea    -0x190(%rbp),%rdx
    249e:	48 8d b5 50 fe ff ff 	lea    -0x1b0(%rbp),%rsi
    24a5:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
    24ac:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
    24b1:	89 7c 24 08          	mov    %edi,0x8(%rsp)
    24b5:	48 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%rdi
    24bc:	48 89 3c 24          	mov    %rdi,(%rsp)
    24c0:	45 89 d0             	mov    %r10d,%r8d
    24c3:	48 89 c7             	mov    %rax,%rdi
    24c6:	e8 7e f2 ff ff       	callq  1749 <rayConstruction>
    24cb:	48 8b 85 f0 fd ff ff 	mov    -0x210(%rbp),%rax
    24d2:	4c 8b 8d f8 fd ff ff 	mov    -0x208(%rbp),%r9
    24d9:	4c 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%r8
    24e0:	48 8b 8d 08 fe ff ff 	mov    -0x1f8(%rbp),%rcx
    24e7:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
    24ee:	48 8d b5 b0 fe ff ff 	lea    -0x150(%rbp),%rsi
    24f5:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%rsp)
    24fc:	00 
    24fd:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
    2504:	48 89 3c 24          	mov    %rdi,(%rsp)
    2508:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    250c:	48 89 c7             	mov    %rax,%rdi
    250f:	e8 ca f5 ff ff       	callq  1ade <ray_color>
    2514:	85 c0                	test   %eax,%eax
    2516:	74 56                	je     256e <raytracing+0x222>
    2518:	c5 fb 10 85 d0 fe ff 	vmovsd -0x130(%rbp),%xmm0
    251f:	ff 
    2520:	c5 fb 10 8d 38 fe ff 	vmovsd -0x1c8(%rbp),%xmm1
    2527:	ff 
    2528:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    252c:	c5 fb 11 85 38 fe ff 	vmovsd %xmm0,-0x1c8(%rbp)
    2533:	ff 
    2534:	c5 fb 10 85 d8 fe ff 	vmovsd -0x128(%rbp),%xmm0
    253b:	ff 
    253c:	c5 fb 10 8d 40 fe ff 	vmovsd -0x1c0(%rbp),%xmm1
    2543:	ff 
    2544:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    2548:	c5 fb 11 85 40 fe ff 	vmovsd %xmm0,-0x1c0(%rbp)
    254f:	ff 
    2550:	c5 fb 10 85 e0 fe ff 	vmovsd -0x120(%rbp),%xmm0
    2557:	ff 
    2558:	c5 fb 10 8d 48 fe ff 	vmovsd -0x1b8(%rbp),%xmm1
    255f:	ff 
    2560:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    2564:	c5 fb 11 85 48 fe ff 	vmovsd %xmm0,-0x1b8(%rbp)
    256b:	ff 
    256c:	eb 65                	jmp    25d3 <raytracing+0x287>
    256e:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    2575:	c5 fb 10 00          	vmovsd (%rax),%xmm0
    2579:	c5 fb 10 8d 38 fe ff 	vmovsd -0x1c8(%rbp),%xmm1
    2580:	ff 
    2581:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    2585:	c5 fb 11 85 38 fe ff 	vmovsd %xmm0,-0x1c8(%rbp)
    258c:	ff 
    258d:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    2594:	48 83 c0 08          	add    $0x8,%rax
    2598:	c5 fb 10 00          	vmovsd (%rax),%xmm0
    259c:	c5 fb 10 8d 40 fe ff 	vmovsd -0x1c0(%rbp),%xmm1
    25a3:	ff 
    25a4:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    25a8:	c5 fb 11 85 40 fe ff 	vmovsd %xmm0,-0x1c0(%rbp)
    25af:	ff 
    25b0:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    25b7:	48 83 c0 10          	add    $0x10,%rax
    25bb:	c5 fb 10 00          	vmovsd (%rax),%xmm0
    25bf:	c5 fb 10 8d 48 fe ff 	vmovsd -0x1b8(%rbp),%xmm1
    25c6:	ff 
    25c7:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    25cb:	c5 fb 11 85 48 fe ff 	vmovsd %xmm0,-0x1b8(%rbp)
    25d2:	ff 
    25d3:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    25d9:	0f af 45 10          	imul   0x10(%rbp),%eax
    25dd:	89 c2                	mov    %eax,%edx
    25df:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    25e5:	01 c2                	add    %eax,%edx
    25e7:	89 d0                	mov    %edx,%eax
    25e9:	01 c0                	add    %eax,%eax
    25eb:	01 d0                	add    %edx,%eax
    25ed:	48 63 d0             	movslq %eax,%rdx
    25f0:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    25f7:	48 01 c2             	add    %rax,%rdx
    25fa:	c5 fb 10 8d 38 fe ff 	vmovsd -0x1c8(%rbp),%xmm1
    2601:	ff 
    2602:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 260a <raytracing+0x2be>
    2609:	00 
    260a:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    260e:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 2616 <raytracing+0x2ca>
    2615:	00 
    2616:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    261a:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
    261e:	88 02                	mov    %al,(%rdx)
    2620:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    2626:	0f af 45 10          	imul   0x10(%rbp),%eax
    262a:	89 c2                	mov    %eax,%edx
    262c:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    2632:	01 c2                	add    %eax,%edx
    2634:	89 d0                	mov    %edx,%eax
    2636:	01 c0                	add    %eax,%eax
    2638:	01 d0                	add    %edx,%eax
    263a:	48 98                	cltq   
    263c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2640:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    2647:	48 01 c2             	add    %rax,%rdx
    264a:	c5 fb 10 8d 40 fe ff 	vmovsd -0x1c0(%rbp),%xmm1
    2651:	ff 
    2652:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 265a <raytracing+0x30e>
    2659:	00 
    265a:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    265e:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 2666 <raytracing+0x31a>
    2665:	00 
    2666:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    266a:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
    266e:	88 02                	mov    %al,(%rdx)
    2670:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    2676:	0f af 45 10          	imul   0x10(%rbp),%eax
    267a:	89 c2                	mov    %eax,%edx
    267c:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    2682:	01 c2                	add    %eax,%edx
    2684:	89 d0                	mov    %edx,%eax
    2686:	01 c0                	add    %eax,%eax
    2688:	01 d0                	add    %edx,%eax
    268a:	48 98                	cltq   
    268c:	48 8d 50 02          	lea    0x2(%rax),%rdx
    2690:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    2697:	48 01 c2             	add    %rax,%rdx
    269a:	c5 fb 10 8d 48 fe ff 	vmovsd -0x1b8(%rbp),%xmm1
    26a1:	ff 
    26a2:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 26aa <raytracing+0x35e>
    26a9:	00 
    26aa:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    26ae:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 26b6 <raytracing+0x36a>
    26b5:	00 
    26b6:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    26ba:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
    26be:	88 02                	mov    %al,(%rdx)
    26c0:	83 85 30 fe ff ff 01 	addl   $0x1,-0x1d0(%rbp)
    26c7:	83 bd 30 fe ff ff 03 	cmpl   $0x3,-0x1d0(%rbp)
    26ce:	0f 8e 50 fd ff ff    	jle    2424 <raytracing+0xd8>
    26d4:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
    26db:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    26e1:	3b 45 10             	cmp    0x10(%rbp),%eax
    26e4:	0f 8c 07 fd ff ff    	jl     23f1 <raytracing+0xa5>
    26ea:	83 85 28 fe ff ff 01 	addl   $0x1,-0x1d8(%rbp)
    26f1:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    26f7:	3b 45 18             	cmp    0x18(%rbp),%eax
    26fa:	0f 8c e2 fc ff ff    	jl     23e2 <raytracing+0x96>
    2700:	c9                   	leaveq 
    2701:	c3                   	retq   
