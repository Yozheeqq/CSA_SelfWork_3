.file  "functions.c"
  .intel_syntax noprefix
  .text
  .globl  findLength
  .type  findLength, @function
findLength:
  push  rbp
  mov  rbp, rsp
  sub  rsp, 32
  movsd  QWORD PTR -8[rbp], xmm0
  movsd  QWORD PTR -16[rbp], xmm1
  movsd  QWORD PTR -24[rbp], xmm2
  movsd  QWORD PTR -32[rbp], xmm3
  movsd  xmm0, QWORD PTR -8[rbp]
  movapd  xmm1, xmm0
  subsd  xmm1, QWORD PTR -24[rbp]
  movsd  xmm0, QWORD PTR -8[rbp]
  subsd  xmm0, QWORD PTR -24[rbp]
  mulsd  xmm1, xmm0
  movsd  xmm0, QWORD PTR -16[rbp]
  movapd  xmm2, xmm0
  subsd  xmm2, QWORD PTR -32[rbp]
  movsd  xmm0, QWORD PTR -16[rbp]
  subsd  xmm0, QWORD PTR -32[rbp]
  mulsd  xmm0, xmm2
  addsd  xmm0, xmm1
  call  sqrt@PLT
  leave
  ret
  .size  findLength, .-findLength
  .globl  check
  .type  check, @function
check:
  push  rbp
  mov  rbp, rsp
  sub  rsp, 80
  mov  QWORD PTR -72[rbp], rdi
  mov  QWORD PTR -80[rbp], rsi
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 8
  movsd  xmm2, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 8
  movsd  xmm1, QWORD PTR [rax]
  mov  rax, QWORD PTR -80[rbp]
  movsd  xmm0, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  mov  rax, QWORD PTR [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength
  movq  rax, xmm0
  mov  QWORD PTR -64[rbp], rax
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 8
  movsd  xmm2, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 8
  movsd  xmm1, QWORD PTR [rax]
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 16
  movsd  xmm0, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 16
  mov  rax, QWORD PTR [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength
  movq  rax, xmm0
  mov  QWORD PTR -56[rbp], rax
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 16
  movsd  xmm2, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 16
  movsd  xmm1, QWORD PTR [rax]
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 24
  movsd  xmm0, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 24
  mov  rax, QWORD PTR [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength
  movq  rax, xmm0
  mov  QWORD PTR -48[rbp], rax
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 24
  movsd  xmm2, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 24
  movsd  xmm1, QWORD PTR [rax]
  mov  rax, QWORD PTR -80[rbp]
  movsd  xmm0, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  mov  rax, QWORD PTR [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength
  movq  rax, xmm0
  mov  QWORD PTR -40[rbp], rax
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 16
  movsd  xmm2, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 16
  movsd  xmm1, QWORD PTR [rax]
  mov  rax, QWORD PTR -80[rbp]
  movsd  xmm0, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  mov  rax, QWORD PTR [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength
  movq  rax, xmm0
  mov  QWORD PTR -32[rbp], rax
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 24
  movsd  xmm2, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 24
  movsd  xmm1, QWORD PTR [rax]
  mov  rax, QWORD PTR -80[rbp]
  add  rax, 8
  movsd  xmm0, QWORD PTR [rax]
  mov  rax, QWORD PTR -72[rbp]
  add  rax, 8
  mov  rax, QWORD PTR [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength
  movq  rax, xmm0
  mov  QWORD PTR -24[rbp], rax
  movsd  xmm0, QWORD PTR -64[rbp]
  movapd  xmm1, xmm0
  mulsd  xmm1, QWORD PTR -48[rbp]
  movsd  xmm0, QWORD PTR -56[rbp]
  mulsd  xmm0, QWORD PTR -40[rbp]
  addsd  xmm0, xmm1
  movsd  QWORD PTR -16[rbp], xmm0
  movsd  xmm0, QWORD PTR -32[rbp]
  mulsd  xmm0, QWORD PTR -24[rbp]
  movsd  QWORD PTR -8[rbp], xmm0
  movsd  xmm0, QWORD PTR -16[rbp]
  movapd  xmm1, xmm0
  subsd  xmm1, QWORD PTR -8[rbp]
  movsd  xmm0, QWORD PTR eps[rip]
  comisd  xmm0, xmm1
  jbe  .L4
  movsd  xmm0, QWORD PTR -16[rbp]
  subsd  xmm0, QWORD PTR -8[rbp]
  movsd  xmm1, QWORD PTR eps[rip]
  movq  xmm2, QWORD PTR .LC0[rip]
  xorpd  xmm1, xmm2
  comisd  xmm0, xmm1
  jbe  .L4
  mov  eax, 1
  jmp  .L7
.L4:
  mov  eax, 0
.L7:
  and  eax, 1
  leave
  ret
  .size  check, .-check
  .section  .rodata
.LC1:
  .string  "%lf %lf"
.LC2:
  .string  "YES"
.LC3:
  .string  "NO"
  .text
  .globl  readCoords
  .type  readCoords, @function
readCoords:
  push  rbp
  mov  rbp, rsp
  sub  rsp, 80
  mov  rax, QWORD PTR fs:40
  mov  QWORD PTR -8[rbp], rax
  xor  eax, eax
  mov  rax, QWORD PTR fin[rip]
  lea  rcx, -48[rbp]
  lea  rdx, -80[rbp]
  lea  rsi, .LC1[rip]
  mov  rdi, rax
  mov  eax, 0
  call  __isoc99_fscanf@PLT
  mov  rax, QWORD PTR fin[rip]
  lea  rdx, -48[rbp]
  lea  rcx, 8[rdx]
  lea  rdx, -80[rbp]
  add  rdx, 8
  lea  rsi, .LC1[rip]
  mov  rdi, rax
  mov  eax, 0
  call  __isoc99_fscanf@PLT
  mov  rax, QWORD PTR fin[rip]
  lea  rdx, -48[rbp]
  lea  rcx, 16[rdx]
  lea  rdx, -80[rbp]
  add  rdx, 16
  lea  rsi, .LC1[rip]
  mov  rdi, rax
  mov  eax, 0
  call  __isoc99_fscanf@PLT
  mov  rax, QWORD PTR fin[rip]
  lea  rdx, -48[rbp]
  lea  rcx, 24[rdx]
  lea  rdx, -80[rbp]
  add  rdx, 24
  lea  rsi, .LC1[rip]
  mov  rdi, rax
  mov  eax, 0
  call  __isoc99_fscanf@PLT
  lea  rdx, -48[rbp]
  lea  rax, -80[rbp]
  mov  rsi, rdx
  mov  rdi, rax
  call  check
  test  al, al
  je  .L12
  mov  rax, QWORD PTR fout[rip]
  mov  rcx, rax
  mov  edx, 3
  mov  esi, 1
  lea  rdi, .LC2[rip]
  call  fwrite@PLT
  jmp  .L15
.L12:
  mov  rax, QWORD PTR fout[rip]
  mov  rcx, rax
  mov  edx, 2
  mov  esi, 1
  lea  rdi, .LC3[rip]
  call  fwrite@PLT
.L15:
  nop
  mov  rax, QWORD PTR -8[rbp]
  xor  rax, QWORD PTR fs:40
  je  .L14
  call  __stack_chk_fail@PLT
.L14:
  leave
  ret
  .size  readCoords, .-readCoords
  .section  .rodata
  .align 16
.LC0:
  .long  0
  .long  -2147483648
  .long  0
  .long  0
  .ident  "GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
  .section  .note.GNU-stack,"",@progbits
