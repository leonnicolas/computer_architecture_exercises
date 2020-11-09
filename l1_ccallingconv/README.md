# 1 Calling Convention
Read about the [System V AMD64 calling convention](https://en.wikipedia.org/wiki/X86_calling_conventions#System_V_AMD64_ABI). Great, now you also know most of the registers you can use. They will be enough for now.

Read about the structure of a [nasm program](https://cs.lmu.edu/~ray/notes/nasmtutorial/). Keep in mind, that we will only write a single function. To be able to use it in the C wrapper that I wrote and is not your concern, you need to specify it as global:

```nasm
global add
section .data

section .text
;your awesome code
```

Write the following function in assembler:

```C
/*
 * The function takes to 64Bit integers, adds them and returns one 64Bit integer.
/*
int64_t add(int64_t a, int64_t);
```

## Compile and Run
If you called your .asm file add.asm 
```bash
nasm -f elf64 add.asm && gcc -o add wrapper.c add.o && ./add 1 2
```

## 1 Calling convention Part 2
That was too easy, write an add function that takes seven 64Bit integers. Now some parameters will be on the stack. You can get them by using the Stackpointer, or with pop. If you use pop, what is the first thing on the stack and why crashes your program when you don't push stuff back on the stack before returning? 
