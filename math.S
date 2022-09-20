; the add instruction adds the value on the right side to the contents of the register on the left side
mov rax, 3;
add rax, 1;
; in this case the value of rax would be 4

; the equivalent in javascript would be:
; let a = 3;
; a += 1;

; just like the mov instruction, add can use the contents of a second register to operate on the first register:
mov rax, 3;
mov rbx, 1;
add rax, rbx;

; this is the equivalent in javascript:
; let a = 3;
; let b = 1;
; a = a + b;

; sub aka substraction works the same way as addition does:
mov rax, 3;
mov rbx, 1;
sub rax, rbx;

; the equivalent in javascript would be:
; let a = 3;
; let b = 1;
; a = a - b;

; mul, multiplication also works the same as the operations above:
mov rax, 2;
mov rbx, 3;
mul rax, rbx;

; the equivalent in javascript would be:
; let a = 2;
; let b = 3;
; a = a * b;

; now we are going to try to replicate the slope equation here
; m is the slope
; b is the intercept
; to get any point on the straight line you plug in x into the equation you will get the y coordinate
; we will try to do y = 2x + 4, where x is 3
mov rax, 2
mov rbx, 3
mov rcx, 4

mul rax, rbx
add rax, rcx	
