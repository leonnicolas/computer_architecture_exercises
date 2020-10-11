# Sum of array
Look at [jumps](http://unixwiz.net/techtips/x86-jumps.html).
You can insert labels in your code

```nasm
label:
;some code
```

and jump to them, even with conditions. You can write a for loop like that.

The c wrapper calls the function written in nasm to calculate the sum of an array.
Write a function in nasm with the following signiture:

```C
int64_t sum(int64_t len, int64_t arr[]);
```

## Compile and run
```bash
nasm -f elf64 sum.asm && gcc -Wall -pedantic -Wextra -o sum wrapper.c sum.o && ./sum 2 1 2 2 2 2
```
