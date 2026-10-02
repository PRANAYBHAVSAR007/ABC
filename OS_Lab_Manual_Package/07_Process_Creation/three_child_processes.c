#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(void)
{
    pid_t first, second;

    first = fork();
    if (first < 0) {
        perror("fork");
        return 1;
    }

    if (first == 0) {
        printf("Child 1: PID=%d, PPID=%d\n", (int)getpid(), (int)getppid());
        return 0;
    }

    second = fork();
    if (second < 0) {
        perror("fork");
        return 1;
    }

    if (second == 0) {
        printf("Child 2: PID=%d, PPID=%d\n", (int)getpid(), (int)getppid());
        return 0;
    }

    printf("Parent: PID=%d, Child PIDs=%d and %d\n",
           (int)getpid(), (int)first, (int)second);

    waitpid(first, NULL, 0);
    waitpid(second, NULL, 0);
    return 0;
}
