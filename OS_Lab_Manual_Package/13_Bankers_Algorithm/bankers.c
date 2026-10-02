#include <stdio.h>

#define MAX_P 10
#define MAX_R 10

int main(void)
{
    int max[MAX_P][MAX_R], alloc[MAX_P][MAX_R], need[MAX_P][MAX_R];
    int avail[MAX_R], work[MAX_R], finish[MAX_P] = {0};
    int safe_seq[MAX_P];
    int p, r, i, j, count = 0;

    printf("Enter the no of processes: ");
    scanf("%d", &p);
    if (p <= 0 || p > MAX_P) return 1;

    printf("Enter the no of resources: ");
    scanf("%d", &r);
    if (r <= 0 || r > MAX_R) return 1;

    printf("\nEnter the Max Matrix for each process:\n");
    for (i = 0; i < p; i++) {
        printf("For process %d: ", i + 1);
        for (j = 0; j < r; j++)
            scanf("%d", &max[i][j]);
    }

    printf("\nEnter the Allocation for each process:\n");
    for (i = 0; i < p; i++) {
        printf("For process %d: ", i + 1);
        for (j = 0; j < r; j++)
            scanf("%d", &alloc[i][j]);
    }

    printf("\nEnter the Available Resources: ");
    for (j = 0; j < r; j++)
        scanf("%d", &avail[j]);

    for (i = 0; i < p; i++)
        for (j = 0; j < r; j++)
            need[i][j] = max[i][j] - alloc[i][j];

    printf("\nNeed Matrix:\n");
    for (i = 0; i < p; i++) {
        printf("P%d: ", i + 1);
        for (j = 0; j < r; j++)
            printf("%d ", need[i][j]);
        printf("\n");
    }

    for (j = 0; j < r; j++)
        work[j] = avail[j];

    while (count < p) {
        int found = 0;

        for (i = 0; i < p; i++) {
            if (finish[i])
                continue;

            int can_finish = 1;
            for (j = 0; j < r; j++) {
                if (need[i][j] > work[j]) {
                    can_finish = 0;
                    break;
                }
            }

            if (can_finish) {
                for (j = 0; j < r; j++)
                    work[j] += alloc[i][j];

                finish[i] = 1;
                safe_seq[count++] = i;
                found = 1;
            }
        }

        if (!found)
            break;
    }

    if (count == p) {
        printf("\nSystem is in a SAFE state.\n");
        printf("Safe Sequence: ");
        for (i = 0; i < p; i++) {
            printf("P%d", safe_seq[i] + 1);
            if (i < p - 1)
                printf(" -> ");
        }
        printf("\n");
    } else {
        printf("\nSystem is NOT in a safe state.\n");
    }

    return 0;
}
