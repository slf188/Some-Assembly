; we will translate the following piece of code into assembly code:

; let result = addNumbers();
; result = doSomethingElse(result);

; function addNumbers() {
;   return 3 + 1;
; }

; function doSomethingElse(arg) {
;   return arg + 1;
; }


; In assembly, we don't have actual functions, but we can simulate them pretty well with the call and ret instructions
call .addNumbers
call .doSomethingElse
; when we call the call command what happens in our memory is we push another instruction into the stack

.addNumbers
  mov rax, 3
  add rax, 1
  ret
  ; ret is short for return
  ; ret will return us back to the next instruction after our original call
  ; so we have essentially popped our previous instruction off the stack and headed over the next function call
  
.doSomethingElse
  add rax, 1
  ret
  
