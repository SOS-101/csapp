typedef struct {
    long offset;
    long type:32, symbol:32;
    long addend;
} Elf64_Rela;
