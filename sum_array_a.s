main:
    mov sp, #16384

    sub sp, sp, #4
    mov r0, #1
    str r0, [sp]
    sub sp, sp, #4
    mov r0, #2
    str r0, [sp]
    sub sp, sp, #4
    mov r0, #3
    str r0, [sp]
    sub sp, sp, #4
    mov r0, #4
    str r0, [sp]
    sub sp, sp, #4
    mov r0, #5
    str r0, [sp]

    mov r0, sp
    mov r1, #5
    bl sum_array_a

mainend:
    b mainend

sum_array_a:
    mov r2, #0
    mov r3, #0

loop:
    cmp r2, r1
    beq done
    ldr r4, [r0]
    add r3, r3, r4
    add r2, r2, #1
    b loop

done:
    mov r0, r3
    bx lr
    

