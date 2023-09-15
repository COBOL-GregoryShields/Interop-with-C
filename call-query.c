#include <stdio.h>

extern int Query(char * Data, size_t * Length);

int main(int argc, char * argv [])
{
    char buffer[1024];
    size_t size = sizeof(buffer);

    if (Query(buffer, &size) == 0)
    {
        printf ("failed to call Query\n");
    }
    else
    {
        char * ptr = buffer;
        while (size-- > 0) putchar(*ptr++);
        putchar ('\n');
    }
}

