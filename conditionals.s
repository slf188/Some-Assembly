; for comparing there is a command called cmp
; cmp is used to compare two values, and the result of that comparison gets stored into the eflags register
mov rax, 3
mov rbx, 1

cmp rax, rbx ; this comparison will get stored into eflags
; jl is a command that stands for 'jump if less than'
; jl will get triggered if eflags says that indeed rax < rbx
; once jl gets triggered we wil therefore execute and jump to the specified label
; if rax >= rbx, jl will do nothing
jl .jumpHere
add rbx, 1 ; in this case the jump won't be executed so this line is the next line

.jumpHere
  ; execute some code
  
; here is another example:
mov rax, 2
mov rbx, 4

cmp rax, rbx
jl .jumpHere ; this will get executed because rax is less than rbx
add rbx, 1

.jumpHere 
  ; execute some code
