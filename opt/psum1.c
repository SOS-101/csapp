void psum1(float a[], float p[], long n) {
    long i;
    p[0] = a[0];
    for (i = 1; i < n; i++) 
        p[i] = p[i - 1] + a[i];
}

int main(int argc, char * argv[]) {
    long n = 1000000;
    float a[n];
    for (long i = 0; i < n; i++) 
       a[i] = n;

    float b[n];
    psum1(a, b, n);

    return 0;
} 

    
