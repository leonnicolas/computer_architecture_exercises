#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

int64_t add(int64_t, int64_t, int64_t, int64_t, int64_t, int64_t, int64_t);

int main(int argc, const char* argv[]){
	if (argc != 8){
		printf("Wrong number of arguments. Expected: %d, given: %d\n", 7, argc - 1);
		exit(EXIT_FAILURE);
	}
	int64_t a = atoi(argv[1]);
	int64_t b = atoi(argv[2]);
	int64_t c = atoi(argv[3]);
	int64_t d = atoi(argv[4]);
	int64_t e = atoi(argv[5]);
	int64_t f = atoi(argv[6]);
	int64_t g = atoi(argv[7]);
       	int64_t ret = add(a,b,c,d,e,f,g);
	printf("sum = %d\n",ret);
	exit(EXIT_SUCCESS);	
}
