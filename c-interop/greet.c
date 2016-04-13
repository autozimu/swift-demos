#include <stdio.h>

#include "greet.h"

int getNum() {
    return 42;
}

void putNum(int n) {
    printf("get number from Swift: %d\n", n);
}

char* getString() {
    return "string from C";
}

void putString(const char* s) {
    printf("%s\n", s);
}

void functionThatNeedsAPointer(int *i) {
    *i = 43;
}
