;long decode2(long x, long y, long z)
;x in %rdi, y in %rsi, z in %rdx
;let result in %rax

decode2:
    subq $rdx, %rsi     ;y = y - z
    imulq %rsi, %rdi    ;x = x * y
    movq %rsi, %rax     ;result = y
    salq $63, %rax      ;result = result << 63
    sarq $63, %rax      ;result = result >> 63
    xorq %rdi, %rax     ;result = result ^ x
    ret                 ;return result