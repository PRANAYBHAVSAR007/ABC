#include <stdio.h>
#include <unistd.h>

int main(void)
{
    printf("Message before sleep.\n");
    sleep(3);
    printf("Message after 3 seconds.\n");
    return 0;
}
