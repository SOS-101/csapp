void combine4(vec_ptr v, data_t * dest) {
    long i;
    long length = vec_length(v);
    data_t acc = IDENT;

    for (i = 0; i < length; i++) {
        if (i >= 0 && i < v -> len) {
            acc = acc OP v -> data[i];
        }
    }
    *dest = acc;
}
