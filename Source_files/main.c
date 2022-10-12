#include <stdlib.h>
#include <stdio.h>
#include "functionPrototype.h"

#define ARGUMENT_NUMBER_MESSAGE "Only two arguments should be passed on the command line!\r\n"

int main(int argc, char** argv)
{
    if(argc == 3)
    {
        int x = atoi(argv[1]);
        int y = atoi(argv[2]);
        int z = function(x, y);

        printf("%d\r\n", z);
    }
    else
    {
        printf(ARGUMENT_NUMBER_MESSAGE);
    }

    return 0;
}