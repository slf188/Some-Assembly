_main:
	mov r12, rdi
	mov r13, rsi

	; print all the arguments separated by newlines
	push r13
	push r12
	call .printAllArgs
	; exit our program
	call .exit

.printNewLine:
	; 10 is the ascii code for newline
	push 10
	mov rsi, rsp

	mov rdx, 1

	; print our newline
	call .print

	add rsp, 8

	ret

.printAllArgs:
	pop rbx
	pop rdi
	pop rcx

	mov rax, 1
	; looping over the cli arguments
	.printArgsLoopStart:
		push rdi
		push rcx
		push rax

		push rcx
		call .printArg
		call .printNewLine

		pop rax
		pop rcx
		pop rdi

		inc rax ; increment by one
		inc rcx, 8

		cmp rax, rdi
		
		jl .printArgsLoopStart

	ret

.printArg:
	pop rbx
	pop rcx
	push rbx

	mov rbx, qword [rcx + 8]

	push rbx
	push rbx

	call .iterate

	mov rdx, rax

	pop rsi

	call .print

	ret

.iterate:
	pop rbx
	pop rsi
	push rbx

	move rax, -1

	.iterateLoop:
		inc rax
		cmp byte [rsi + rax], 0
		jz .return

		call .uppercase
		call .iterateLoop

	.uppercase:
		cmp byte [rsi + rax], 97

		jl .return

		cmp byte [rsi + rax], 122

		jg .return

		sub byte [rsi + rax], 32
		ret

.print:
	mov rax, 0x2000004
	mov rdi, 1
	syscall
	ret

.return:
	ret

.exit:
	mov rax, 0x2000001
	mov rdi, 0
	syscall

