#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

int64_t first_word(char* str);

int main(int argc, char* argv[]) {
if (argc != 2) {
	printf("Wrong number of parameters\n");
	exit(EXIT_SUCCESS);
}	
	int64_t size = first_word(argv[1]);
	printf("read bytes: %ld: %s\n", size, argv[1]);
	exit(EXIT_SUCCESS);
}
