; we are going to try to replicate these js functions into assembly code
; const y = getSlopeIntercept(3, 5, 2);

; function getSlopeIntercept(m, x, b) {
;    return ( m * x ) + b;
; }

push 3 ; m
push 5 ; x
push 2 ; b

; the stack now looks like: (top) 2, 5, 3 (bottom)

call .getSlopeIntercept ; rax will contain our return value 17

.getSlopeIntercept:
  pop r8 ; b
  pop r9 ; x
  pop r10 ; m
  ; registers 8-10 are callee-owned
  
  mul r10, r9
  add r10, r8
  
  mov rax, r10
  
  ret
