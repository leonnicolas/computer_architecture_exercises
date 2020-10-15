#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

int64_t fibo_it(int64_t n);
int64_t fibo_re(int64_t n);

int main(int argc, char* argv[]) {
if (argc != 2) {
	printf("Wrong number of parameters\n");
	exit(EXIT_SUCCESS);
}	
	int64_t n = atoi(argv[1]);
	int64_t f1 = fibo_it(n);
	int64_t f2 = fibo_re(n);
	printf("fibu_it(%ld) = %ld\n", n, f1);
	printf("fibu_re(%ld) = %ld\n", n, f2);
	exit(EXIT_SUCCESS);
}
