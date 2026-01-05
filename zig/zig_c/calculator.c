#include "calculator.h"

int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

int mul(int a, int b) {
    return a * b;
}

int div_int(int a, int b) {
    if (b == 0) return 0; // very naive error handling
    return a / b;
}
