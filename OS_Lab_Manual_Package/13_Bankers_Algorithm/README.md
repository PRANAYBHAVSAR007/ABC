# Practical 13 — Banker's Algorithm

`bankers.c` implements:
1. Input of processes/resources
2. Maximum matrix
3. Allocation matrix
4. Available resources
5. Need matrix (`Need = Max - Allocation`)
6. Safety algorithm
7. Safe sequence / unsafe-state result

Compile:
```bash
gcc -Wall -Wextra -std=c11 bankers.c -o bankers
```

Run:
```bash
./bankers
```
