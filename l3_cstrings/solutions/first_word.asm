global first_word

section .data

section .text

first_word:
	mov rax, 0
	l1:
	mov dl, [rdi + rax]
	inc rax
	cmp dl, 0
	jz end
	cmp dl, ' '
	jz end
	jmp l1
	end:
	mov  byte [rdi + rax], 0
	ret
	
