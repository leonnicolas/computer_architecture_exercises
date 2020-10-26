#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

size_t my_strlen(const char* str);
char *my_strcat(char *dest, const char *src);
int my_strcmp(const char * s1, const char * s2);
char *my_strcpy(char *dest, const char *src);

int main(int argc, char* argv[]) {
if (argc != 3) {
	printf("Wrong number of parameters\n");
	exit(EXIT_SUCCESS);
}	
	size_t size = my_strlen(argv[1]);
	printf("strlen(\"%s\") = %ld\n",argv[1],my_strlen(argv[1]));
	printf("strlen(\"%s\") = %ld\n",argv[2],my_strlen(argv[2]));
	char * str = malloc(my_strlen(argv[1]) + my_strlen(argv[2])+1);
	str = my_strcpy(str, argv[1]);
	printf("strcpy(str, \"%s\") = %s\n", argv[1], str);
	str = my_strcat(str, argv[2]);
	printf("strcat(\"%s\",\"%s\") = \"%s\"\n", argv[1],argv[2],str);
	printf("strcmp(\"%s\",\"%s\") = %d\n", argv[1], argv[2], my_strcmp(argv[1],argv[2]));
	exit(EXIT_SUCCESS);
}
