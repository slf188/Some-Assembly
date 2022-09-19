; registers are the variables in assembly language
; mov stands for move, mov moves the value on the right side into the register of the left side
mov rax, 5; // here we set the value of a register to 5
; the diff between a var and a register is, with variables you can create an unlimited number of them and name them however you want
; whereas registers are limited (i.e. we can't name them)

; at the end rbx will contain the value 3
mov rax, 3;
mov rbx, rax;
; this is the equivalent of writting the following in javascript:
; let a = 3;
; let b = a;
 
; here is another quick example:
mov rax, 3;
mov rbx, 5;
mov rax, rbx;
; in this case the value of rax is 5

; the equivalent in javascript would be:
; let a = 3;
; let b = 5;
; a = b;
