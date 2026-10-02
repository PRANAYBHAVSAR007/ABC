#include <stdio.h>

#define MAX_PROCESSES 100

int main(void)
{
    int n, tq;
    int at[MAX_PROCESSES], bt[MAX_PROCESSES], rem[MAX_PROCESSES];
    int ct[MAX_PROCESSES], tat[MAX_PROCESSES], wt[MAX_PROCESSES];
    int done[MAX_PROCESSES] = {0};
    int completed = 0, time = 0;
    double avg_tat = 0.0, avg_wt = 0.0;

    printf("Enter total number of processes: ");
    scanf("%d", &n);

    if (n <= 0 || n > MAX_PROCESSES) {
        printf("Invalid number of processes.\n");
        return 1;
    }

    for (int i = 0; i < n; i++) {
        printf("Enter Arrival Time and Burst Time for Process %d: ", i + 1);
        scanf("%d %d", &at[i], &bt[i]);
        if (at[i] < 0 || bt[i] <= 0) {
            printf("Invalid process data.\n");
            return 1;
        }
        rem[i] = bt[i];
    }

    printf("Enter Time Quantum: ");
    scanf("%d", &tq);
    if (tq <= 0) {
        printf("Time quantum must be positive.\n");
        return 1;
    }

    /* Simple RR scan: repeatedly visit processes in input order.
       A process runs only when it has arrived and still has work. */
    while (completed < n) {
        int progress = 0;

        for (int i = 0; i < n; i++) {
            if (rem[i] > 0 && at[i] <= time) {
                int run = rem[i] < tq ? rem[i] : tq;
                rem[i] -= run;
                time += run;
                progress = 1;

                if (rem[i] == 0) {
                    ct[i] = time;
                    tat[i] = ct[i] - at[i];
                    wt[i] = tat[i] - bt[i];
                    completed++;
                }
            }
        }

        if (!progress) {
            int next = -1;
            for (int i = 0; i < n; i++) {
                if (rem[i] > 0 && (next == -1 || at[i] < at[next]))
                    next = i;
            }
            if (next != -1)
                time = at[next];
        }
    }

    printf("\nProcess\tAT\tBT\tCT\tTAT\tWT\n");
    for (int i = 0; i < n; i++) {
        printf("P%d\t%d\t%d\t%d\t%d\t%d\n",
               i + 1, at[i], bt[i], ct[i], tat[i], wt[i]);
        avg_tat += tat[i];
        avg_wt += wt[i];
    }

    avg_tat /= n;
    avg_wt /= n;
    printf("\nAverage Turnaround Time = %.2f\n", avg_tat);
    printf("Average Waiting Time    = %.2f\n", avg_wt);

    return 0;
}
