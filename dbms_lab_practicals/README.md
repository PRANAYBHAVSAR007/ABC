# Database Management System Laboratory (03010504PC06)

This repository contains complete SQL and PL/SQL scripts for all **10 DBMS Lab Practicals** as specified in the Parul University B.Tech (AIDS) 3rd Semester curriculum.

---

## 📁 Directory Structure

```
dbms_lab_practicals/
├── README.md
├── sql/
│   ├── 01_ddl_dml_basic.sql                # Practical 1: DDL Table Creation & DML Inserts (DEPOSIT, BRANCH, CUSTOMERS, BORROW)
│   ├── 02_employee_job_queries.sql          # Practical 2: Employee & Job Tables, LIKE Predicates, NULL checks, ESCAPE chars
│   ├── 03_aggregate_table_manipulation.sql  # Practical 3: Aggregates, Table Copies (Supplier, Sup1, Sup2), DELETE, RENAME, DROP
│   ├── 04_single_row_functions_like.sql     # Practical 4: Single-row Functions (Date, String, Math), Sailors/Boats/Clients tables
│   ├── 05_joins_multiple_tables.sql         # Practical 5: Joins (INNER, LEFT, Self Join) across Employee, Dept, Jobs, Customer tables
│   ├── 06_group_by_having_aggregate.sql     # Practical 6: Group Functions (SUM, AVG, MIN, MAX, COUNT), GROUP BY & HAVING clauses
│   ├── 07_subqueries.sql                    # Practical 7: Single & Multi-row Subqueries, Nested SELECT, Inline views
│   ├── 08_data_manipulation_updates_deletes.sql # Practical 8: Advanced DML (UPDATES with interest, money transfers, conditional DELETES)
│   └── 09_tcl_dcl_commands.sql              # Practical 9: Transaction Control (COMMIT, ROLLBACK, SAVEPOINT) & DCL (GRANT, REVOKE)
└── plsql/
    └── 10_plsql_blocks.sql                 # Practical 10: PL/SQL Blocks (Math, Areas, Max of 3, Loops, Fibonacci)
```

---

## 🚀 How to Execute SQL & PL/SQL Scripts

### Option 1: Oracle Live SQL / Oracle Database (Recommended)
1. Go to [Oracle Live SQL](https://livesql.oracle.com/).
2. Log in with your Oracle account.
3. Open any `.sql` file from the `sql/` or `plsql/` folders.
4. Copy and paste the queries into the **SQL Worksheet** and click **Run**.

### Option 2: MySQL / PostgreSQL / SQLite
- For standard SQL queries (Practicals 1 through 9), you can execute them on MySQLWorkbench, phpMyAdmin, DB Fiddle, or any SQL IDE.
- *Note:* In MySQL, replace `VARCHAR2` with `VARCHAR`, `NUMBER(x,y)` with `DECIMAL(x,y)` or `INT`, `SYSDATE` with `CURRENT_DATE`, and `dual` table references if needed.

---

## 📋 Practicals Index

| Practical No. | Topic / Objective | Script File |
|---|---|---|
| **Practical 1** | DDL (CREATE) and DML (INSERT, SELECT) for Banking Schema | `sql/01_ddl_dml_basic.sql` |
| **Practical 2** | Employee & Job Tables, LIKE patterns, BETWEEN, NULL checks | `sql/02_employee_job_queries.sql` |
| **Practical 3** | Aggregates, Table Creation from Existing Tables, DELETE/DROP/UPDATE | `sql/03_aggregate_table_manipulation.sql` |
| **Practical 4** | Single-Row Functions (SYSDATE, ROUND, INITCAP, TO_CHAR), LIKE Queries | `sql/04_single_row_functions_like.sql` |
| **Practical 5** | Multiple Table Joins (INNER JOIN, LEFT JOIN, Self Join) | `sql/05_joins_multiple_tables.sql` |
| **Practical 6** | Data Aggregation using GROUP BY and HAVING clauses | `sql/06_group_by_having_aggregate.sql` |
| **Practical 7** | Subqueries (Single-row, Multi-row, Correlated, Inline Views) | `sql/07_subqueries.sql` |
| **Practical 8** | Complex Data Manipulations (UPDATE/DELETE with Subqueries) | `sql/08_data_manipulation_updates_deletes.sql` |
| **Practical 9** | TCL (COMMIT, ROLLBACK, SAVEPOINT) & DCL (GRANT, REVOKE) | `sql/09_tcl_dcl_commands.sql` |
| **Practical 10** | PL/SQL Blocks (Variables, If-Else, Loops, Math & Logic) | `plsql/10_plsql_blocks.sql` |
