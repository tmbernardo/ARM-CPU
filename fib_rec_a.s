
main:
    mov sp, #16384

    mov r0, #10

    bl fib_rec_a

mainend:
    b mainend

fib_rec_a:
    sub sp, sp, #4
    str r4, [sp]
    sub sp, sp, #4
    str r5, [sp]
    sub sp, sp, #4
    str lr, [sp]
    
    cmp r0, #0
    beq done
    cmp r0, #1
    beq done
        
rec:
    mov r4, r0
    sub r0, r0, #1
    bl fib_rec_a
    mov r5, r0
    sub r0, r4, #2
    bl fib_rec_a
    add r0, r0, r5
        
done:
    ldr lr, [sp]
    add sp, sp, #4
    ldr r5, [sp]
    add sp, sp, #4
    ldr r4, [sp]
    add sp, sp, #4
    bx lr
