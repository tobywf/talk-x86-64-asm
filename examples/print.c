#include <stdio.h>

int main(void)
{
    const char *string = NULL;
    printf("string: %s\n", string); // doesn't segfault
    printf("string: ");
    printf("%s\n", string); // segfault on -O1 and higher
    return 0;
}
