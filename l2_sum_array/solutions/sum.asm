global sum

section .data

section .text

sum:
	mov rax, 0
	add rdi, 0
	jz end
	l1:
	add rax, [rsi + rdi*8 -8 ]
	dec rdi
	jnz l1
	end:
    	ret
