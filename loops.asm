; we are going to translate the following piece of code into assembly code:

; const base = 2;
; const exponent = 8;
; let result = 1;

; for (let counter = 0; counter < exponent; counter++) {
;   result *= base
; }

; assembly doesn't have for loops, but it has conditional jumps
mov rax, 8 ; exponent
mov rbx, 2 ; base
mov rcx, 1 ; result
mov rdx, 0 ; counter

.calculatePower
  mul rcx, rbx ; here we multiply by our base and store it into the result
  inc rdx ; increment the counter
  cmp rdx, rax ; compare the counter with our exponent
  jl .calculatePower ; jump to the beginning of the loop if the counter < exponent
  ; jl always goes after a comparison so it can be executed if needed
