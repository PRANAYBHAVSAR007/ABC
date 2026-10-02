#include <stdio.h>

#define MAX_PROCESSES 100

int main(void)
{
    int n;
    int at[MAX_PROCESSES], bt[MAX_PROCESSES];
    int ct[MAX_PROCESSES], tat[MAX_PROCESSES], wt[MAX_PROCESSES];
    int i;
    double avg_tat = 0.0, avg_wt = 0.0;
    int current_time = 0;

    printf("Enter total number of processes: ");
    scanf("%d", &n);

    if (n <= 0 || n > MAX_PROCESSES) {
        printf("Invalid number of processes.\n");
        return 1;
    }

    for (i = 0; i < n; i++) {
        printf("Enter Arrival Time and Burst Time for Process %d: ", i + 1);
        scanf("%d %d", &at[i], &bt[i]);
        if (at[i] < 0 || bt[i] <= 0) {
            printf("Arrival time must be >= 0 and burst time must be > 0.\n");
            return 1;
        }
    }

    /* FCFS requires processing in arrival order. Stable bubble sort. */
    for (i = 0; i < n - 1; i++) {
        int j;
        for (j = 0; j < n - i - 1; j++) {
            if (at[j] > at[j + 1]) {
                int temp;
                temp = at[j]; at[j] = at[j + 1]; at[j + 1] = temp;
                temp = bt[j]; bt[j] = bt[j + 1]; bt[j + 1] = temp;
            }
        }
    }

    for (i = 0; i < n; i++) {
        if (current_time < at[i])
            current_time = at[i];

        current_time += bt[i];
        ct[i] = current_time;
        tat[i] = ct[i] - at[i];
        wt[i] = tat[i] - bt[i];

        avg_tat += tat[i];
        avg_wt += wt[i];
    }

    printf("\nProcess\tAT\tBT\tCT\tTAT\tWT\n");
    for (i = 0; i < n; i++)
        printf("P%d\t%d\t%d\t%d\t%d\t%d\n",
               i + 1, at[i], bt[i], ct[i], tat[i], wt[i]);

    avg_tat /= n;
    avg_wt /= n;
    printf("\nAverage Turnaround Time = %.2f\n", avg_tat);
    printf("Average Waiting Time    = %.2f\n", avg_wt);

    return 0;
}
