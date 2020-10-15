# Fibonacci
Write two functions with the following signatures:
```c
int64_t fibo_it(int64_t n);
int64_t fibo_re(int64_t n);
```

__fibo_it__ should calculate the n _th_ fibonacci number iterativly and __fibo_re__ should do same, but recursivly.

Use __push__ and __pop__ and don't forget to save important registers on the stack. Use __call__ to call another function. Put the parameters in the registers according to the calling convention from exercise 1.  

## Compile and Run
```bash 
nasm -f elf64 fibo.asm && gcc -Wextra -pedantic -Wall -o fibo wrapper.c fibo.o && ./fibo 10
```
