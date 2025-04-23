# systick configuration registers
.equ systick_csr,   0xE000E010
.equ systick_rvr,   0xE000E014
.equ systick_cvr,   0xE000E018
.equ systick_calib, 0xE000E01C

.equ timout,        0x00FFFFFF

.section .vectors
vector_table:
    .word 0x20001000                //đỉnh của stack = SRAM base + 1000
    .word reset_handler

.org 0x3C
    .word systick_handler
    .zero 400

    .section .text
    .align 1
    .type reset_handler, %function
reset_handler:
    ldr r0, =systick_csr
    ldr r1, =systick_rvr
    ldr r2, =systick_cvr
    ldr r3, =timout

    str r3, [r1]        // giá trị đỉnh đếm ngược

    mov r3, #0x0
    str r3, [r2]        // ghi bất kỳ giá trị nào sẽ reset giá trị đang đếm ngược về 0

    mov r3, #0x7
    str r3, [r0]        // dùng processor clock, cho phép ngắt khi đếm đến 0, cho phép counter

    mov r5, #0

    b .

    .section .text
    .align 1
    .type systick_handler, %function
systick_handler:
    add r5, r5, #1
break_here:
    bx lr