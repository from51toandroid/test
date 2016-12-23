.section .data
output:
  .asciz "Hello World\n"
length:
  .int .-output

.section .text
.global _start
_start:

  movl $4, %eax
  movl $1, %ebx
  movl $output, %ecx
  movl length, %edx
  int $0x80
  
  movl $1, %eax
  movl $0, %ebx
  int $0x80

