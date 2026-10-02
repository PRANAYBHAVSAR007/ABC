# Practical 7 — Process Creation using C

Requires a Linux/Unix environment because `fork()`, `getpid()`, `getppid()` and `unistd.h` are POSIX/Linux facilities.

Compile:
```bash
gcc -Wall -Wextra -std=c11 child_process.c -o child_process
gcc -Wall -Wextra -std=c11 sleep_demo.c -o sleep_demo
gcc -Wall -Wextra -std=c11 three_child_processes.c -o three_child_processes
```

Run:
```bash
./child_process
./sleep_demo
./three_child_processes
```
