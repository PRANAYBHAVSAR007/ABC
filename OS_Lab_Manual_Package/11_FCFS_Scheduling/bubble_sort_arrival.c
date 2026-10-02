#include <stdio.h>

int main(void)
{
    int array[5], i, j, temp;

    printf("Enter 5 process arrival times: ");
    for (i = 0; i < 5; i++)
        scanf("%d", &array[i]);

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4 - i; j++) {
            if (array[j] > array[j + 1]) {
                temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }

    printf("After sorting:");
    for (i = 0; i < 5; i++)
        printf(" %d", array[i]);
    printf("\n");
    return 0;
}
