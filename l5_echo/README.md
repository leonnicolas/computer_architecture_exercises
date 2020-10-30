# My Echo
Write a program that acts similar than echo. To simplify you can end each input parameter with `\n`. That would be equivalent to the echo in power shell.

To make this more interesting, there is no wrapper program. You can still use __printf__. So you basically write a wrapper in nasm for the C function __printf__.

## C Runtime
In C all programs start at the main function. So the entry point should be __main__. You can call __printf__ when you declare it as __extern__
```nasm
global main
extern printf

section .data

section .text
	main:
	...
```

That every program starts at main is a C runtime specific thing. So you have to link it with some libraries, you also want to use __printf__, which is linked automatically by __gcc__. To do this just link the program with __gcc__. 

__Note:__ I had to pass _-no-pie_ to __gcc__

So use:
```bash
nasm -felf64 my_echo.asm && gcc -no-pie -o my_echo my_echo.o
```
to compile and link.

## Exit
Exiting out out of the program is easy. Your function should return 0, if everything went well.
```nasm
mov rax, 0
ret
```

How to do that without the C runtime will be discussed in the next exercise about system calls.
