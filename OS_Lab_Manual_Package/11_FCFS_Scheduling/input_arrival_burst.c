#include <stdio.h>

int main(void)
{
    int n, i;
    int at[10], bt[10];

    printf("Enter Total Process: ");
    scanf("%d", &n);

    if (n < 1 || n > 10) return 1;

    for (i = 0; i < n; i++) {
        printf("Enter Arrival Time and Burst Time for Process Number %d: ",
               i + 1);
        scanf("%d %d", &at[i], &bt[i]);
    }
    return 0;
}
