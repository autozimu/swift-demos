#include <stdio.h>

#include "greet.h"

int getNum() {
    return 42;
}

void putNum(int n) {
    printf("number from Swift to C: %d\n", n);
}

char* getString() {
    return "string from C to Swift";
}

void putString(const char* s) {
    printf("%s\n", s);
}

void functionThatNeedsAPointer(int *i) {
    *i = 43;
}
