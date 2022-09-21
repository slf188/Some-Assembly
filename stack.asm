; computers allocate memory in the stack
; the stack operates as Last in, First out
; the stack essentially does only two options:
; push
; pop
; the stack is like a tennis ball can
; we can implement the stack with the following code:

push rax
push rbx ; above rax
push rcx ; above rbx and rax
push rdx ; above rcx, rbx and rax

pop rdx ; rdx is at the top of the stack, we pop it off first
pop rcx
pop rbx
pop rax

; the stack is accessed through a special type of register called the stack pointer %rsp
; everytime we push or pop we increment or decrement respectively in the %rsp register

; THE MAIN PURPOSE OF THE STACK IS TO STORE THINGS FOR LATER
mov rax, 1
mov rbx, 2
mov rcx, 3
mov rdx, 4

; let's store the value of rax as 1 onto the stack before the update its value
push rax
add rax, rbx

; similarly we are going to do the same with rcx, we will save 3 now
push rcx
add rcx, rdx

; at this point, the values in our registers look like:
;
; rax: 3 (1+2)
; rbx: 2
; rcx: 7 (3+4)
; rdx: 4
;
; and our stack looks like:
;
; 3 <--- the top of the stack
; 1

; if it is the case we can pop those values off the stack if we wanted to
pop rcx ; rcx got pushed last so we remove it first!
pop rax
