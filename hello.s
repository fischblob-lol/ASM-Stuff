.global _main
.text
_main:
mov x16, #4
mov x0,  #1 ; stdout
adrp x1, msg@PAGE ; pointer zum text
add x1, x1, msg@PAGEOFF
mov x2, #12 ; länge
svc #0

mov x0, #0  ; exit code 0, alles O.K
mov x16, #1 ; syscall: exit
svc #0      ; Stop
.data
msg:
        .ascii "Hello World\n"


