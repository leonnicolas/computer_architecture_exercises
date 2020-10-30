global _start

extern my_strlen

section .data
	lf db `\n` 

section .text

_start:
	mov rdi, [rsp ]
	lea rsi, [rsp+8]; argv
main:
	dec rdi
	je end
	mov r8, 1
loop:
	push rdi		; get len of str
	push r9
	push r8
	push rsi
	mov rdi, [rsi + 8*r8 ]
	call my_strlen
	pop rsi
	pop r8
	push rsi		; prepare for syscall write
	push r8
	mov rdx, rax 		; pass return value from strlen
	mov rax, 1		; systemcall for write
	mov rdi, 1		; for stdout
	mov rsi,[rsi + 8*r8]
	syscall
	mov rax, 1;		; prepare for syscall write to print \n
	mov rdi,1
	mov rdx, 1
	mov rsi, lf
	syscall
	pop r8
	pop rsi
	pop r9
	pop rdi
	dec rdi
	je end
	inc r8
	jmp loop
end:
	mov rdi, 0		; exit
	mov rax, 60
	syscall
