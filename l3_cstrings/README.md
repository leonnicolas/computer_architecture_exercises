# C strings
Strings in C are terminated with a 0 character.

## Tasks

Implement the functions with the following signatures:

```c
size_t my_strlen(const char* str);
char *my_strcat(char *dest, const char *src);
int my_strcmp(const char * s1, const char * s2);
char *my_strcpy(char *dest, const char *src);
The signature of the function is:
```

### Compile and run
```bash 
nasm -f elf64 string.asm && gcc -Wall -Wextra -pedantic -o str wrapper.c string.o && ./str hallo du 
```
