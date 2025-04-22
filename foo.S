.section .vectors
vector_table:
    .word 0xABC0
    .word reset_handler
    .zero 7

    .section .text
    .align 1
    .type reset_handler, %function
reset_handler:
    mov r1, #7
    mov r2, #3
    b truong

truong2:
    add r3, r1, r2
    sub r4, r1, r2
    b end

truong:
    mov r5, r3
    lsl r6, r5, #2
    b truong2

end:
    bl .