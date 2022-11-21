.file  "main.c"
  .intel_syntax noprefix
  .text
  .comm  fin,8,8                # Определеяем файл для ввода
  .comm  fout,8,8               # Определяем файл для вывода
  .globl  eps                   # Определяем эпсилон
  .section  .data
argc:                           # Ссылка на аргументы командной строки
   .space 4                     # Выделяем 4 байти
  .align 8
  .type  eps, @object
  .size  eps, 8
eps:
  .long  2696277389             # Передаем значение 0.000001 для эпсилона
  .long  1051772663
  .section  .rodata
.format_in:                     # Формат для чтения из файла
  .string  "r"
.format_out:                    # Формат для вывода в файл
  .string  "w"
  .text
  .globl  main
  .type  main, @function
main:
  push  rbp
  mov  rbp, rsp
  sub  rsp, 16
  mov       argc[rip], edi          # Число аргументов командной строки
  mov       r12, rdi
  mov       r13, rsi                # Адрес массива аргументов
  cmp       r12, 3                  # Проверяем, что число аргументов равно 3
  je        .ok                     # Если равно, то идем дальше
  mov       eax, 0
  jmp       .leave                   # Иначе выходим из программы
.ok:
  lea       rsi, .format_in[rip]     # Передаем формат открытия файла "r"
  mov       rdi, [r13+8]             # Передаем название файла "input.txt"
  call      fopen                   # Открываем файл
  mov       fin[rip], rax
  mov       rax, QWORD PTR -16[rbp]
  lea       rsi, .format_out[rip]   # Передаем формат открытия файла "w"
  mov       rdi, [r13+16]           # Передаем название файла "output.txt"
  call      fopen                   # Открываем файл
  mov       fout[rip], rax          # Сохраняем указатель на файл
  mov       rax, fin[rip]           # Передаем в rax укзатель на файл для ввода
  test      rax, rax                # Проверяем, что файл открылся корректно
  jne       .call_func             # Если все хорошо, то переходим к блоку call_print
  mov       eax, 0
  jmp  .leave                       # Иначе выходим из программы
.call_func:
  mov  eax, 0
  call  readCoords
  mov  eax, 0
.leave:                             # Выход из программы
  leave
  ret
  .size  main, .-main
  .ident  "GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
  .section  .note.GNU-stack,"",@progbits