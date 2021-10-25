#include <inttypes.h> // uint64_t

uint64_t func(
    uint64_t a, uint64_t b, uint64_t c, uint64_t d,
    uint64_t e, uint64_t f, uint64_t g, uint64_t h)
{
    uint64_t x = a + b + c + d;
    uint64_t y = e + f + g + h;
    uint64_t z = x + y;
    return z;
}

int main(void)
{
    uint64_t a = 1L;
    uint64_t b = 2L;
    uint64_t c = 3L;
    uint64_t d = 4L;
    uint64_t e = 5L;
    uint64_t f = 6L;
    uint64_t g = 7L;
    uint64_t h = 8L;

    if (func(a, b, c, d, e, f, g, h) > 0) {
        return 0;
    } else {
        return 1;
    }
}
