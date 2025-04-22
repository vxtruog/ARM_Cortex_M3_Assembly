.section .vectors
vector_table:
    .word 0x20001000                //đỉnh của stack = SRAM base + 1000
    .word reset_handler
    .zero 7

    .section .text
    .align 1
    .type reset_handler, %function
reset_handler:
    mov r1, #7
    mov r2, #3

    push {r1, r2}

    mov r1, #5
    mov r2, #5

    pop {r2, r1}
    bl .