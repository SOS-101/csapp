#include <unistd.h>

int main(void) {
    write(1, "Hello world\n", 13);
    _exit(0);
}
