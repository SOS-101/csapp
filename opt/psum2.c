void psum2(float a[], float p[], long n) {
    long i;
    p[0] = a[0];
    for (i = 1; i < n -1; i += 2) {
        float mid_val = p[i - 1] + a[i];
        p[i] = mid_val;
        p[i + 1] = mid_val + a[i + 1];
    }

    if (i < n)
        p[i] = p[i - 1] + a[i];
}

int main(int argc, char * argv[]) {
    long n = 100000000;
    float a[n];
    for (long i = 0; i < n; i++) 
       a[i] = n;

    float b[n];
    psum2(a, b, n);

    return 0;
} 

    
