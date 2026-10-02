# Data Structure and Algorithms Laboratory — C++ Practical Package

**Course:** Data Structure and Algorithms Laboratory  
**Course Code:** 03010503PC02  
**Program:** Artificial Intelligence and Data Science  
**Semester:** 3rd Semester  
**Academic Year:** 2026–2027

This package contains the C++ source files for all **12 practicals** listed in the supplied DSA Lab Manual.

## Folder Structure

```text
DSA_Lab_Manual_Package/
│
├── README.md
│
├── 01_Stack/
│   └── stack.cpp
│
├── 02_Infix_to_Postfix/
│   └── infix_to_postfix.cpp
│
├── 03_Postfix_Evaluation/
│   └── postfix_evaluation.cpp
│
├── 04_Tower_of_Hanoi/
│   └── tower_of_hanoi.cpp
│
├── 05_Queue/
│   └── queue.cpp
│
├── 06_Singly_Linked_List/
│   └── singly_linked_list.cpp
│
├── 07_Doubly_Linked_List/
│   └── doubly_linked_list.cpp
│
├── 08_Searching/
│   └── searching.cpp
│
├── 09_Sorting/
│   └── sorting.cpp
│
├── 10_BST_Operations/
│   └── bst_operations.cpp
│
├── 11_BST_Traversals/
│   └── bst_traversals.cpp
│
└── 12_Graph_BFS_DFS/
    └── graph_bfs_dfs.cpp
```

## Requirements

### On Windows / Linux / macOS

You only need a C++ compiler supporting **C++11 or later**.

Recommended options:

- **Windows:** MinGW-w64 / g++
- **Linux:** g++
- **macOS:** clang++ or g++
- **IDE:** Visual Studio Code, Code::Blocks, Dev-C++, Visual Studio, or another C++ IDE

No external libraries, datasets, or input files are required.

The programs use standard C++ headers only.

---

# How to Run a Practical on Your Computer

Open a terminal/Command Prompt and go inside the practical's folder.

For example:

```bash
cd 01_Stack
```

Compile:

```bash
g++ stack.cpp -std=c++11 -o stack
```

Run on Windows:

```bash
stack.exe
```

Run on Linux/macOS:

```bash
./stack
```

You can use the same pattern for every practical:

```bash
g++ filename.cpp -std=c++11 -o program
```

Then run the generated program.

> If your compiler already uses C++11 or newer by default, the `-std=c++11` option may be omitted.

---

# How to Run Online

You can paste any `.cpp` file into an online C++ compiler such as:

- OnlineGDB
- Programiz C++ Online Compiler
- OneCompiler
- JDoodle

Choose **C++**, paste the complete contents of one `.cpp` file, and click **Run**.

For programs that ask for input, enter the requested values in the compiler's input/console area.

No additional files need to be uploaded.

---

# Practical-wise Instructions

## Practical 1 — Stack

**File:** `01_Stack/stack.cpp`

Implements:

- Push
- Pop
- Peek
- Traverse
- Search

Run:

```bash
g++ stack.cpp -std=c++11 -o stack
```

The current program uses sample values `10`, `20`, and `30` in `main()`.

---

## Practical 2 — Infix to Postfix

**File:** `02_Infix_to_Postfix/infix_to_postfix.cpp`

Enter an infix expression when prompted.

Example:

```text
(A+B)*C
```

The program prints the postfix expression.

Compile:

```bash
g++ infix_to_postfix.cpp -std=c++11 -o infix_to_postfix
```

### Important

The supplied lab program treats operands as individual alphanumeric characters, so expressions such as `A+B*C` or `(A+B)*C` are suitable.

---

## Practical 3 — Postfix Evaluation

**File:** `03_Postfix_Evaluation/postfix_evaluation.cpp`

Enter a postfix expression.

Example:

```text
23*54*+
```

Compile:

```bash
g++ postfix_evaluation.cpp -std=c++11 -o postfix_evaluation
```

### Important

The lab implementation evaluates single-digit operands. It supports:

```text
+
-
*
/
```

Use valid postfix expressions and avoid division by zero.

---

## Practical 4 — Tower of Hanoi Using Stack

**File:** `04_Tower_of_Hanoi/tower_of_hanoi.cpp`

Enter the number of disks.

Example:

```text
3
```

Compile:

```bash
g++ tower_of_hanoi.cpp -std=c++11 -o tower_of_hanoi
```

### Important

The number of moves is:

```text
2^n - 1
```

Therefore, keep `n` reasonably small when testing because the output grows rapidly.

---

## Practical 5 — Queue

**File:** `05_Queue/queue.cpp`

Implements:

- Enqueue
- Dequeue
- Traverse
- Search

Compile:

```bash
g++ queue.cpp -std=c++11 -o queue
```

The program asks for the queue size and then demonstrates the operations using sample values.

---

## Practical 6 — Singly Linked List

**File:** `06_Singly_Linked_List/singly_linked_list.cpp`

Implements:

- Creation/insertion at end
- Deletion by value
- Traversal
- Search
- Reverse

Compile:

```bash
g++ singly_linked_list.cpp -std=c++11 -o singly_linked_list
```

The demonstration values are defined in `main()`.

---

## Practical 7 — Doubly Linked List

**File:** `07_Doubly_Linked_List/doubly_linked_list.cpp`

Implements:

- Creation
- Insertion at beginning/end
- Deletion at beginning/end
- Traversal
- Search
- Reverse

Compile:

```bash
g++ doubly_linked_list.cpp -std=c++11 -o doubly_linked_list
```

---

## Practical 8 — Binary Search and Interpolation Search

**File:** `08_Searching/searching.cpp`

The program asks for:

1. Array size
2. Sorted array elements
3. Search key

Compile:

```bash
g++ searching.cpp -std=c++11 -o searching
```

### Important

The array **must be sorted** before using either search algorithm.

Example input:

```text
Enter size of array: 6
Enter 6 sorted elements:
10 20 30 40 50 60
Enter element to search (key): 40
```

---

## Practical 9 — Sorting Algorithms

**File:** `09_Sorting/sorting.cpp`

Implements:

1. Bubble Sort
2. Insertion Sort
3. Selection Sort
4. Quick Sort
5. Merge Sort

The same original array is copied before each algorithm so every algorithm receives the same input.

Compile:

```bash
g++ sorting.cpp -std=c++11 -o sorting
```

Example:

```text
Enter size of array: 6
Enter 6 elements:
50 20 10 40 30 60
```

---

## Practical 10 — Binary Search Tree Operations

**File:** `10_BST_Operations/bst_operations.cpp`

Implements:

- BST creation
- Insertion
- Deletion
- Inorder traversal for verification

Compile:

```bash
g++ bst_operations.cpp -std=c++11 -o bst_operations
```

The program demonstrates deletion of:

```text
20
30
50
```

---

## Practical 11 — BST Traversals

**File:** `11_BST_Traversals/bst_traversals.cpp`

Implements:

- Inorder
- Preorder
- Postorder

Compile:

```bash
g++ bst_traversals.cpp -std=c++11 -o bst_traversals
```

The program creates the BST using the values shown in the lab manual and displays all three traversals.

---

## Practical 12 — Graph, Adjacency List, Adjacency Matrix, BFS and DFS

**File:** `12_Graph_BFS_DFS/graph_bfs_dfs.cpp`

Implements:

- Adjacency List
- Adjacency Matrix
- BFS
- DFS

Compile:

```bash
g++ graph_bfs_dfs.cpp -std=c++11 -o graph_bfs_dfs
```

The graph is the same basic 5-vertex undirected graph demonstrated in the lab manual.

---

# Quick Compilation Table

| Practical | File | Compile Command |
|---|---|---|
| 1 | `stack.cpp` | `g++ stack.cpp -std=c++11 -o stack` |
| 2 | `infix_to_postfix.cpp` | `g++ infix_to_postfix.cpp -std=c++11 -o infix_to_postfix` |
| 3 | `postfix_evaluation.cpp` | `g++ postfix_evaluation.cpp -std=c++11 -o postfix_evaluation` |
| 4 | `tower_of_hanoi.cpp` | `g++ tower_of_hanoi.cpp -std=c++11 -o tower_of_hanoi` |
| 5 | `queue.cpp` | `g++ queue.cpp -std=c++11 -o queue` |
| 6 | `singly_linked_list.cpp` | `g++ singly_linked_list.cpp -std=c++11 -o singly_linked_list` |
| 7 | `doubly_linked_list.cpp` | `g++ doubly_linked_list.cpp -std=c++11 -o doubly_linked_list` |
| 8 | `searching.cpp` | `g++ searching.cpp -std=c++11 -o searching` |
| 9 | `sorting.cpp` | `g++ sorting.cpp -std=c++11 -o sorting` |
| 10 | `bst_operations.cpp` | `g++ bst_operations.cpp -std=c++11 -o bst_operations` |
| 11 | `bst_traversals.cpp` | `g++ bst_traversals.cpp -std=c++11 -o bst_traversals` |
| 12 | `graph_bfs_dfs.cpp` | `g++ graph_bfs_dfs.cpp -std=c++11 -o graph_bfs_dfs` |

---

# Notes About the Provided Lab Manual

The source code in the PDF contains some formatting/extraction issues caused by the document layout, such as split preprocessor/include lines and a queue constructor written as `Queue(intsize)`.

For this package, those formatting issues have been normalized so that each source file can be compiled directly. The practical topics, operations, and demonstration logic are kept aligned with the supplied manual.

A few small safety/portability fixes were also made where necessary for direct compilation, such as using dynamic arrays in places where the manual uses variable-length arrays.

No external dependencies are required.

---

# Recommended Workflow for Lab Submission

1. Open the required practical folder.
2. Open the `.cpp` file.
3. Compile it using the command in this README.
4. Run it.
5. Test the expected operations/input.
6. If your teacher requires different sample values, edit only the values/input section in `main()`.
7. Keep the `.cpp` file together with your practical record/screenshots as required.

