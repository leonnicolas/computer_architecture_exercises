global main

extern printf

section .data
	fmt db `%s\n`

section .text

main:
	dec rdi
	jle end
	mov r8, 1
loop:
	push rdi
	push rsi
	mov rdi, fmt
	mov rsi, [rsi + 8*r8]
	push r8
	call printf
skip:
	pop r8
	pop rsi
	pop rdi
	dec rdi
	jle end
	inc r8
	jmp loop
end:
	mov rax,0 
	ret
