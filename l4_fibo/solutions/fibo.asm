global fibo_it, fibo_re

section .data

section .text

fibo_it:
	mov r8, 0
	mov rax, 1
	cmp rdi,0
	jnz end_if
	mov rax, 0
	ret
	end_if:
	cmp rdi,1
	jnz end_if2
	ret
	end_if2:
	sub rdi, 1	
	lf1:
	mov r9, rax
	add rax, r8
	mov r8, r9
	dec rdi
	jnz lf1	
	ret

fibo_re:
	cmp rdi, 0
	jnz end_if_re
	mov rax, 0
	ret
	end_if_re:
	cmp rdi, 1
	jnz end_if_re2
	mov rax, 1
	ret
	end_if_re2:
	push rdi
	sub rdi,1 
	call fibo_re
	pop rdi
	push rax
	sub rdi,2
	call fibo_re
	pop rdi
	add rax, rdi
	ret	
