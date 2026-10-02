#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

int main(void)
{
    pid_t pid;

    printf("I am the original process with PID %d and PPID %d.\n",
           (int)getpid(), (int)getppid());

    pid = fork();

    if (pid < 0) {
        perror("fork");
        return 1;
    }

    if (pid != 0) {
        printf("I am the parent with PID %d and PPID %d.\n",
               (int)getpid(), (int)getppid());
        printf("My child's PID is %d\n", (int)pid);
    } else {
        sleep(4);
        printf("I am the child with PID %d and PPID %d.\n",
               (int)getpid(), (int)getppid());
    }

    printf("PID %d terminates.\n", (int)getpid());
    return 0;
}
