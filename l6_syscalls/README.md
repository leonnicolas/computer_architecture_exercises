# System Calls
Now we will write the same program as in exercise 5. This time we will not use __printf__, but the system call __write__ and we will not use the C runtime.

## Entry Point
The entry point is not main, but \_start. Specify it as global.

## Read the parameters from the command line
The number of arguments is the first thing on the stack and then the rest follows.

E.g. you can use 
```nasm
lea rsi, [rsp +8]
```
to copy the address. Then _rsi_ will hold _argv_.

## System Calls in nasm
This is how you call write:
```nasm
mov rax, 1	; systemcall for write
mov rdi, 1	; fd for stdout
mov rsi, msg	; the message, can be an address in a register
mov rdx, 99	; the length of msg
syscall		; call the system call
```
Keep in mind that the system call can mess up your registers, so save them on the stack.

## Compile and Link
You can use the function __my_str_len__ from exercise 3 to calculate the length. Just specify __my_str_len__ as extern and link both files together. So with the files _string.asm_ and _my_echo.asm_, do:
```
nasm -felf64 string.asm
nasm -felf64 my_echo.asm
ld -o echo string.o my_echo.o
```
## Exit
You can not just return 0 anymore. No we have to explicitly call exit with a system call. The system call number for exit in nasm is 60. You can set the exit code in _rdi_.
