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
    bl find_max_a

mainend:
    b mainend

find_max_a:
    sub sp, sp, #4
    str r4, [sp]
    ldr r4, [r0]
        
    mov r2, #1
    mov r3, r4
    add r0, r0, #4

loop:
    cmp r2, r1
    beq done
    ldr r4, [r0]
    cmp r4, r3
    movgt r3, r4
    add r0, r0, #4
    add r2, r2, #1
    b loop

done:
    mov r0, r3
    ldr r4, [sp]
    add sp, sp, #4
    bx lr
