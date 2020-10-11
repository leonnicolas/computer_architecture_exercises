global add

section .data

section .text

add:
    	mov	rax, rdi
	add	rax, rsi
	add	rax, rdx
	add	rax, rcx
	add	rax, r8
	add 	rax, r9
	pop 	rdi
	pop	rsi
	add	rax, rsi
	push	rsi
	push 	rdi
    	ret
