#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

int64_t add(int64_t a, int64_t);

int main(int argc, const char* argv[]){
	if (argc != 3){
		printf("Wrong number of arguments. Expected: %d, given: %d\n", 3, argc - 1);
		exit(EXIT_FAILURE);
	}
	int64_t a = atoi(argv[1]);
	int64_t b = atoi(argv[2]);
       	int64_t ret = add(a,b);
	printf("a + b = %d + %d = %d\n",a,b,ret);
	exit(EXIT_SUCCESS);	
}
