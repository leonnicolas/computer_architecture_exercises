global my_strlen, my_strcpy, my_strcmp, my_strcat

section .data

section .text

my_strlen:
	mov rax, 0
	len_loop:
	mov dl, [rdi + rax]
	inc rax
	cmp dl, 0
	jz len_end
	jmp len_loop
	len_end:
	dec rax
	ret
	
my_strcpy:
	mov r9, 0
	cpy_loop: 
	mov dl, [rsi + r9]
	cmp dl, 0
	jz cpy_end
	mov [rdi + r9], dl
	inc r9
	jmp cpy_loop
	cpy_end:
	mov byte [rdi + r9], 0
	mov rax, rdi
	ret

my_strcmp:
	mov r9,0
	cmp_loop:
	cmp byte [rdi + r9], 0
	jz cmp_end_ge
	cmp byte [rsi + r9],0
	jz cmp_end_g
	mov dl, [rdi + r9]
	cmp byte dl, [rsi + r9]
	jg cmp_end_g
	cmp byte dl, [rsi + r9]
	jl cmp_end_l
	inc r9
	jmp cmp_loop
	cmp_end_g:
	mov rax, 1
	ret
	cmp_end_l:
	mov rax, -1
	ret
	cmp_end_ge:
	cmp byte [rsi+ r9], 0
	jnz cmp_end_l
	mov rax, 0
	ret

my_strcat:
	push rsi
	call my_strlen
	pop rsi
	mov r9, 0
	cat_loop:
	cmp byte [rsi + r9], 0
	jz cat_end
	mov byte dl,[rsi + r9]
	mov  [rdi + rax], dl
	inc r9 
	inc rax
	jmp cat_loop
	cat_end:
	mov byte [rdi + rax], 0
	mov rax, rdi
	ret
