main:
    mov r0, #10

    bl fib_iter_a

mainend:
    b mainend

fib_iter_a:
    cmp r0, #0
    beq zero
    cmp r0, #1
    beq one

    mov r1, #0
    mov r2, #1
    mov r3, #0
    mov r12, #1

loop:
    cmp r12, r0
    bgt done
    add r3, r1, r2
    mov r1, r2
    mov r2, r3
    add r12, r12, #1
    b loop

zero:
    mov r3, #0
    b done

one:
    mov r3, #1
    b done

done:
    mov r0, r3
    bx lr
