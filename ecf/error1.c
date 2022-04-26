#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

void unix_error(char *msg);
pid_t Fork(void);

int main(void) {
    pid_t pid;
    if ((pid = fork()) < 0) {
        fprintf(stderr, "fork error: %s\n", strerror(errno));
        exit(0);
    }

    if ((pid = fork()) < 0)
        unix_error("fork error");

    Fork();

    return 0;
}

void unix_error(char *msg) {
    fprintf(stderr, "%s, %s\n", msg, strerror(errno));
    exit(0);
}

pid_t Fork(void) {
    pid_t pid;

    if((pid = fork()) < 0)
        unix_error("Fork error");

    return pid;
}
