#include <stdlib.h>
#include <stdio.h>
#include "functionPrototype.h"

int main(int argc, char** argv)
{
    if(argc == 3)
    {
        int x = atoi(argv[1]);
        int y = atoi(argv[2]);
        int z = function(x, y);

        printf("%d", z);
    }

    return 0;
}