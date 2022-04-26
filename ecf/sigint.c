#include "csapp.h"

void sigint_hander(int sig) {
    printf("\n %d", sig);
    printf("\nCaught SIGINT!\n");
    exit(0);
}

int main(void) {
    if (signal(SIGINT, sigint_hander) == SIG_ERR)
        unix_error("signal error");

    pause();

    return 0;
}
