# Operating System Lab Manual — Runnable Package

**University:** Parul University  
**Course:** Operating System  
**Course Code:** 03010503PC05  
**Semester:** 3rd Semester  
**Department:** Artificial Intelligence and Data Science  

This package is organized from the provided Operating System Lab Manual. The manual lists 13 practicals covering Linux commands, shell scripting, process creation, scheduling algorithms, and Banker's Algorithm.

## Folder Structure

```text
OS_Lab_Manual_Package/
├── 01_Basic_Linux_Commands/
├── 02_Shell_Programming_Basics/
├── 03_Sum_of_Digits/
├── 04_Date_Validation/
├── 05_Palindrome_String/
├── 06_Greeting_by_Time/
├── 07_Process_Creation/
├── 08_Command_Line_Arguments/
├── 09_For_Loop_Patterns/
├── 10_File_Existence/
├── 11_FCFS_Scheduling/
├── 12_Round_Robin_Scheduling/
├── 13_Bankers_Algorithm/
├── INDEX.md
└── README.md
```

## Requirements

### For shell scripts
Use a Linux terminal with Bash. Recommended:
- Ubuntu/Linux
- WSL on Windows
- A Linux virtual machine
- Git Bash for basic Bash scripts (some Linux-specific commands may differ)

Check Bash:
```bash
bash --version
```

### For C programs
Install GCC:
```bash
gcc --version
```

Compile a C file:
```bash
gcc -Wall -Wextra -std=c11 filename.c -o program
```

Run:
```bash
./program
```

## Windows Users

For the Linux/Bash practicals, WSL Ubuntu is recommended.

After installing WSL:
```bash
sudo apt update
sudo apt install build-essential
```

Then open Ubuntu/WSL and navigate to this package.

For simple `.sh` files:
```bash
bash filename.sh
```

## Online Compilers

### Shell/Bash
Use an online Bash terminal/compiler that supports Bash scripts. Paste the contents of the `.sh` file and run it.

### C
The C programs can generally be pasted into:
- OnlineGDB
- Programiz
- OneCompiler
- JDoodle

For Practical 7, programs using `fork()` require a Linux/POSIX environment and may not work in every online compiler.

## Practical-wise Run Guide

| Practical | Main file | Type | Run |
|---|---|---|---|
| 1 | `commands.sh` | Bash | `bash commands.sh` |
| 2 | `basics.sh` | Bash | `bash basics.sh` |
| 3 | `sum_of_digits.sh` | Bash | `bash sum_of_digits.sh` |
| 4 | `date_validation.sh` | Bash | `bash date_validation.sh` |
| 5 | `palindrome.sh` | Bash | `bash palindrome.sh` |
| 6 | `greeting.sh` | Bash | `bash greeting.sh` |
| 7 | `child_process.c` | C/Linux | compile, then `./child_process` |
| 8 | `biggest_three.sh` | Bash | `bash biggest_three.sh 5 6 7` |
| 9 | `pattern_star.sh` | Bash | `bash pattern_star.sh 5` |
| 10 | `file_check.sh` | Bash | `bash file_check.sh` |
| 11 | `fcfs.c` | C | compile, then `./fcfs` |
| 12 | `round_robin.c` | C | compile, then `./round_robin` |
| 13 | `bankers.c` | C | compile, then `./bankers` |

## Practical 1 — Basic Linux Commands

This is primarily a command-study practical. The included `commands.sh` demonstrates a few of the commands from the manual.

The manual covers commands such as:
```text
pwd
cd
cd ..
ls
cat
head
tail
mv
mkdir
cp
rmdir
gedit
man
echo
clear
whoami
wc
grep
free
|
```

Try individual commands directly in a Linux terminal.

Example:
```bash
pwd
ls -la
whoami
free
```

## Practical 2 — Shell Programming Basics

The folder demonstrates:
- Shebang
- Variables
- `echo`
- User interaction concepts
- Running a `.sh` file

Run:
```bash
bash basics.sh
```

## Practical 3 — Sum of Digits

Main program:
```bash
bash sum_of_digits.sh
```

Example:
```text
Enter a number: 342
Sum of digits = 9
```

The folder also contains the manual's number-printing and even/odd sets.

## Practical 4 — Date Validation

Run:
```bash
bash date_validation.sh
```

Example:
```text
Enter date (dd-mm-yyyy): 29-02-2028
Valid date: 29-02-2028
```

The folder also contains the manual's `case` and leap-year examples.

## Practical 5 — Palindrome

Run:
```bash
bash palindrome.sh
```

Example:
```text
Enter a string: abba
abba is a palindrome
```

## Practical 6 — Greeting

Run:
```bash
bash greeting.sh
```

The script reads the current system hour and prints:
- Good morning
- Good afternoon
- Good evening

## Practical 7 — Process Creation

This practical uses Linux/POSIX system calls such as `fork()`, `getpid()`, and `getppid()`.

Compile:
```bash
gcc -Wall -Wextra -std=c11 child_process.c -o child_process
```

Run:
```bash
./child_process
```

Other examples:
```bash
gcc -Wall -Wextra -std=c11 sleep_demo.c -o sleep_demo
./sleep_demo

gcc -Wall -Wextra -std=c11 three_child_processes.c -o three_child_processes
./three_child_processes
```

**Important:** Run these in Linux/WSL rather than standard Windows CMD/PowerShell.

## Practical 8 — Command Line Arguments

Example:
```bash
bash biggest_three.sh 5 6 7
```

Output:
```text
7 is largest number
```

Do not run the script without its required arguments.

## Practical 9 — Patterns

Star pattern:
```bash
bash pattern_star.sh 5
```

Number pattern:
```bash
bash pattern_numbers.sh 4
```

Mixed pattern:
```bash
bash pattern_mixed.sh
```

## Practical 10 — File/Directory Checking

Run:
```bash
bash file_check.sh
bash directory_check.sh
bash nonempty_file_check.sh
```

These scripts use Linux file-test conditions and `find`.

## Practical 11 — FCFS Scheduling

Compile:
```bash
gcc -Wall -Wextra -std=c11 fcfs.c -o fcfs
```

Run:
```bash
./fcfs
```

The complete program calculates:
- Arrival Time
- Burst Time
- Completion Time
- Turnaround Time
- Waiting Time
- Average Turnaround Time
- Average Waiting Time

FCFS processes jobs according to arrival order.

## Practical 12 — Round Robin Scheduling

Compile:
```bash
gcc -Wall -Wextra -std=c11 round_robin.c -o round_robin
```

Run:
```bash
./round_robin
```

Enter:
1. Number of processes
2. Arrival time and burst time
3. Time quantum

The program calculates completion, turnaround, waiting times, and averages.

## Practical 13 — Banker's Algorithm

Compile:
```bash
gcc -Wall -Wextra -std=c11 bankers.c -o bankers
```

Run:
```bash
./bankers
```

Enter:
1. Number of processes
2. Number of resource types
3. Maximum matrix
4. Allocation matrix
5. Available resources

The program calculates:
```text
Need = Maximum - Allocation
```

It then applies the safety algorithm and prints either:
- Safe state + safe sequence
- Not a safe state

## Code Portability Notes

The provided PDF contains some formatting/extraction inconsistencies in code snippets. For this runnable package, those snippets have been normalized into valid source files while keeping the practical objective and algorithm represented by the manual.

Examples of normalization include:
- Restoring broken `#include` lines
- Correcting spacing/formatting caused by PDF extraction
- Making C programs use standard `int main(void)`
- Adding basic input validation
- Completing the scheduling and Banker's Algorithm implementations so they can actually be executed

These changes are for execution/portability; the practical topics remain those listed in the supplied manual.

## Quick C Compilation

From a practical folder:

```bash
gcc -Wall -Wextra -std=c11 filename.c -o program
./program
```

## Quick Bash Execution

```bash
bash filename.sh
```

If you receive a permission error, you can also use:
```bash
chmod +x filename.sh
./filename.sh
```

## Recommended Workflow

1. Open the required practical folder.
2. Read its local `README.md`.
3. Run the main file.
4. Try the additional set files where present.
5. Keep the folder structure unchanged so the package remains easy to navigate.
