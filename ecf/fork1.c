#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    fork();
    fork();
    printf("hello\n");
    exit(0);
}
