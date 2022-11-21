.file  "functions.c"
  .intel_syntax noprefix
  .text
  .globl  findLength
  .type  findLength, @function
findLength:                             # Функция для нахождения расстояния между двумя координатами
  push  rbp
  mov  rbp, rsp
  sub  rsp, 32                          # Выравниваем стэк
  movsd  [rbp-8], xmm0                  # Переменная х1
  movsd  [rbp-16], xmm1                 # Переменная у1
  movsd  [rbp-24], xmm2                 # Переменная х2
  movsd  [rbp-32], xmm3                 # Переменная у2
  movsd  xmm0, [rbp-8]                  # ---------
  movapd  xmm1, xmm0                    # х1 - х2
  subsd  xmm1, [rbp-24]                 # ---------
  movsd  xmm0, [rbp-8]                  # х1 - х2
  subsd  xmm0, [rbp-24]                 # ---------
  mulsd  xmm1, xmm0                     # (х1 - х2) * (х1 - х2)
  movsd  xmm0, [rbp-16]                 # ---------
  movapd  xmm2, xmm0                    # у1 - у2
  subsd  xmm2, [rbp-32]                 # ---------
  movsd  xmm0, [rbp-16]                 # у1 - у2
  subsd  xmm0, [rbp-32]                 # ---------
  mulsd  xmm0, xmm2                     # (у1 - у2) * (у1 - у2)
  addsd  xmm0, xmm1                     # Сложение двух умножений
  call  sqrt                            # Вызываем функцию sqrt для выражения
  leave
  ret
  .size  findLength, .-findLength
  .globl  check
  .type  check, @function
check:
  push  rbp
  mov  rbp, rsp
  sub  rsp, 80                          # Выравнивание стэка
  mov  [rbp-72], rdi                    # х[4]
  mov  [rbp-80], rsi                    # y[4]
  mov  rax, [rbp-80]                    # Передаем в функцию y[1]
  add  rax, 8                           # Выравнивание стэка
  movsd  xmm2, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[1]
  add  rax, 8                           # Выравнивание стэка
  movsd  xmm1, [rax]
  mov  rax, [rbp-80]                    # Передаем в функцию y[0]
  movsd  xmm0, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[0]
  mov  rax, [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength                      # Вызываем функцию, чтобы найти расстояние между координатами
  movq  rax, xmm0
  mov  [rbp-64], rax                    # Сохраняем значение переменной "a"
  mov  rax, [rbp-80]                    # Передаем в функцию y[1]
  add  rax, 8                           # Выравнивание стэка
  movsd  xmm2, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[1]
  add  rax, 8                           # Выравнивание стэка
  movsd  xmm1, [rax]
  mov  rax, [rbp-80]                    # Передаем в функцию y[2]
  add  rax, 16                          # Выравнивание стэка
  movsd  xmm0, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[2]
  add  rax, 16                          # Выравнивание стэка
  mov  rax, [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength                      # Вызываем функцию, чтобы найти расстояние между координатами
  movq  rax, xmm0
  mov  [rbp-56], rax                    # Сохраняем значение переменной "b"
  mov  rax, [rbp-80]                    # Передаем в функцию y[2]
  add  rax, 16                          # Выравнивание стэка
  movsd  xmm2, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[2]
  add  rax, 16                          # Выравнивание стэка
  movsd  xmm1, [rax]
  mov  rax, [rbp-80]                    # Передаем в функцию y[3]
  add  rax, 24                          # Выравнивание стэка
  movsd  xmm0, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[3]
  add  rax, 24                          # Выравнивание стэка
  mov  rax, [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength                      # Вызываем функцию, чтобы найти расстояние между координатами
  movq  rax, xmm0
  mov  [rbp-48], rax                    # Сохраняем значение переменной "c"
  mov  rax, [rbp-80]                    # Передаем в функцию y[3]
  add  rax, 24                          # Выравнивание стэка
  movsd  xmm2, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[3]
  add  rax, 24                          # Выравнивание стэка
  movsd  xmm1, [rax]
  mov  rax, [rbp-80]                    # Передаем в функцию y[0]
  movsd  xmm0, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[0]
  mov  rax, [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength                      # Вызываем функцию, чтобы найти расстояние между координатами
  movq  rax, xmm0
  mov  [rbp-40], rax                    # Сохраняем значение переменной "d"
  mov  rax, [rbp-80]                    # Передаем в функцию y[2]
  add  rax, 16                          # Выравнивание стэка
  movsd  xmm2, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[2]
  add  rax, 16                          # Выравнивание стэка
  movsd  xmm1, [rax]
  mov  rax, [rbp-80]                    # Передаем в функцию y[0]
  movsd  xmm0, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[0]
  mov  rax, [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength                      # Вызываем функцию, чтобы найти расстояние между координатами
  movq  rax, xmm0
  mov  [rbp-32], rax                    # Сохраняем значение переменной "d1"
  mov  rax, [rbp-80]                    # Передаем в функцию y[3]
  add  rax, 24                          # Выравнивание стэка
  movsd  xmm2, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[3]
  add  rax, 24                          # Выравнивание стэка
  movsd  xmm1, [rax]
  mov  rax, [rbp-80]                    # Передаем в функцию y[1]
  add  rax, 8                           # Выравнивание стэка
  movsd  xmm0, [rax]
  mov  rax, [rbp-72]                    # Передаем в функцию x[1]
  add  rax, 8                           # Выравнивание стэка
  mov  rax, [rax]
  movapd  xmm3, xmm2
  movapd  xmm2, xmm1
  movapd  xmm1, xmm0
  movq  xmm0, rax
  call  findLength                      # Вызываем функцию, чтобы найти расстояние между координатами
  movq  rax, xmm0
  mov  [rbp-24], rax                    # Сохраняем значение переменной "d2"
  movsd  xmm0, [rbp-64]                 # ------------
  movapd  xmm1, xmm0                    # a * c
  mulsd  xmm1, [rbp-48]                 # ------------
  movsd  xmm0, [rbp-56]                 # b * d
  mulsd  xmm0, [rbp-40]                 # ------------
  addsd  xmm0, xmm1                     # a * c + b * d
  movsd  [rbp-16], xmm0
  movsd  xmm0, [rbp-32]                 # ------------
  mulsd  xmm0, [rbp-24]                 # d1 * d2
  movsd  [rbp-8], xmm0                  # ------------
  movsd  xmm0, [rbp-16]                 # ------------
  movapd  xmm1, xmm0                    # sidemult - diagmult
  subsd  xmm1, [rbp-8]                  # ------------
  movsd  xmm0, eps[rip]                 # Записываем eps
  comisd  xmm0, xmm1                    # Проверяем, что eps больше
  jbe  .eax_zero
  movsd  xmm0, [rbp-16]
  subsd  xmm0, [rbp-8]                  # sidemult - diagmult
  movsd  xmm1, eps[rip]
  movq  xmm2, .LC0[rip]
    xorpd  xmm1, xmm2                   # -eps
    comisd  xmm0, xmm1                  # Проверяем, что -eps меньше
    jbe  .eax_zero
    mov  eax, 1
    jmp  .leave
  .eax_zero:
    mov  eax, 0
  .leave:
    and  eax, 1
    leave
    ret
    .size  check, .-check
    .section  .rodata
  .format_in:                           # Формат для чтения из файла
    .string  "%lf %lf"
  .yes:                                 # Строка для вывода
    .string  "YES"
  .no:                                  # Строка для вывода
    .string  "NO"
    .text
    .globl  readCoords
    .type  readCoords, @function
  readCoords:                           # Функция для чтения координат из файла
    push  rbp
    mov  rbp, rsp
    sub  rsp, 80                        # Выравниваем стэк
    mov  rax, QWORD PTR fs:40
    mov  [rbp-8], rax
    xor  eax, eax
    mov  rax, fin[rip]                  # Передаем файл для открытия
    lea  rcx, [rbp-48]                  # &y[0]
    lea  rdx, [rbp-80]                  # &x[0]
    lea  rsi, .format_in[rip]           # Передаем формат для открытия
    mov  rdi, rax
    mov  eax, 0
    call fscanf                         # Вызываем функцию fscanf
    mov  rax, fin[rip]                  # Передаем файл для открытия
    lea  rdx, [rbp-48]                  # &y[1]
    lea  rcx, 8[rdx]
    lea  rdx, [rbp-80]                  # &x[1]
    add  rdx, 8                         # Выравниваем стэк
    lea  rsi, .format_in[rip]           # Передаем формат для открытия
    mov  rdi, rax
    mov  eax, 0
    call fscanf                         # Вызываем функцию fscanf
    mov  rax, fin[rip]                  # Передаем файл для открытия
    lea  rdx, [rbp-48]                  # &y[2]
    lea  rcx, 16[rdx]
    lea  rdx, [rbp-80]                  # &x[2]
    add  rdx, 16                        # Выравниваем стэк
    lea  rsi, .format_in[rip]           # Передаем формат для открытия
    mov  rdi, rax
    mov  eax, 0
    call fscanf                         # Вызываем функцию fscanf
    mov  rax, fin[rip]                  # Передаем файл для открытия
    lea  rdx, [rbp-48]                  # &y[3]
    lea  rcx, 24[rdx]
    lea  rdx, [rbp-80]                  # &x[3]
    add  rdx, 24                        # Выравниваем стэк
    lea  rsi, .format_in[rip]           # Передаем формат для открытия
    mov  rdi, rax
    mov  eax, 0
    call fscanf                         # Вызываем функцию fscanf
    lea  rdx, [rbp-48]                  # Передаем в функцию check ссылку на массив "y"
    lea  rax, [rbp-80]                  # Передаем в функцию check ссылку на массив "x"
    mov  rsi, rdx
    mov  rdi, rax
    call  check                         # Вызываем функцию check
    test  al, al
    je  .write_no                       # Если вернулся false, то идем к write_no
    mov  rax, fout[rip]                 # Передааем файл для записи
    mov  rcx, rax
    mov  edx, 3
    mov  esi, 1
    lea  rdi, .yes[rip]                 # Передаем сообщение "YES" в файл
    call  fwrite                        # Записываем в файл
    jmp  .L15
  .write_no:                            # Функция, чтобы записать "NO" в файл
    mov  rax, fout[rip]                 # Передааем файл для записи
    mov  rcx, rax
    mov  edx, 2
    mov  esi, 1
    lea  rdi, .no[rip]                  # Передаем сообщение "NO" в файл
    call  fwrite                        # Записываем в файл
  .L15:
    nop
    mov  rax, [rbp-8]
    xor  rax, QWORD PTR fs:40
    je  .leave2
    call  __stack_chk_fail@PLT
  .leave2:                              # Выход из функции
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