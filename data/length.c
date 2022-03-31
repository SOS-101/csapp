#include <stdio.h>

float sum_elements(float a[], unsigned length);

int main(void) {
    
    float a[] = {2.1, 23.2};
    printf("%f",sum_elements(a, 0));
}

float sum_elements(float a[], unsigned length) {
    int i;
    float result = 0;

    for (i = 0; i <= length - 1; i++) 
        result += a[i];
    
    return result;
}
