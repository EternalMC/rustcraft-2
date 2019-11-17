;;
;; strin copy
;;

.section .data

data: .byte "Some crazy long string to copy"

.equ  to, 0x80   ; = 128

.section .text
loop:
    lb x2, x1, data
    beq x0, x2, end
    sb x2, x1, to
    addi x1,x1,1
    jal x0, loop

end:
