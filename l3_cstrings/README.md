# C strings
Strings in C are terminated with a 0 character.

## Part 1
Write a function in nasm that takes an array of chars and puts a 0 character behind the first word and returns the number of bytes of the new string.

The signature of the function is:
```c
int64_t first_word(char* str);
```

### Compile and run
```bash 
nasm -f elf64 first_word.asm && gcc -Wall -Wextra -pedantic -o trimR wrapper.c first_word.o && ./trimR "one tow three"
```
