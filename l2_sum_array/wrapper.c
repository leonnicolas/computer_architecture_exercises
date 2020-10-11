#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

int64_t sum(int64_t len, int64_t arr[]);

int main(int argc, const char* argv[]){
	int64_t * arr = malloc((argc-1) * sizeof(int64_t));
	for (int i=1 ; i < argc;i++){
		arr[i-1] = atol(argv[i]);
	}
       	int64_t res = sum((int64_t)argc-1,arr);
	printf("sum([");
	for (int i=0 ; i < argc-1 ; i++){
		printf("%ld ",arr[i]);
	}
	printf("]) = %ld\n",res);
	exit(EXIT_SUCCESS);	
}
