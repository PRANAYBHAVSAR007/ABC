-- ============================================================
-- Practical 2: Employee and Job Tables & Query Execution
-- ============================================================

-- Create Job Table
CREATE TABLE Job (
    job_id VARCHAR2(15),
    job_title VARCHAR2(30),
    min_sal NUMBER(7,2),
    max_sal NUMBER(7,2)
);

-- Create Employee Table
CREATE TABLE Employee (
    emp_no NUMBER(3),
    emp_name VARCHAR2(30),
    emp_sal NUMBER(8,2),
    emp_comm NUMBER(6,1),
    dept_no NUMBER(3)
);

-- Populate Job Table
INSERT INTO Job VALUES ('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO Job VALUES ('MK_MGR', 'Marketing Manager', 9000, 15000);
INSERT INTO Job VALUES ('FI_MGR', 'Finance Manager', 8200, 12000);
INSERT INTO Job VALUES ('FI_ACC', 'Account', 4200, 9000);
INSERT INTO Job VALUES ('LEC', 'Lecturer', 6000, 17000);
INSERT INTO Job VALUES ('COMP_OP', 'Computer Operator', 1500, 3000);

-- Populate Employee Table
INSERT INTO Employee VALUES (101, 'Smith', 800, 20, 20);
INSERT INTO Employee VALUES (102, 'Snehal', 1600, 300, 25);
INSERT INTO Employee VALUES (103, 'Adama', 1100, 0, 20);
INSERT INTO Employee VALUES (104, 'Aman', 3000, 15, 20);
INSERT INTO Employee VALUES (105, 'Anita', 5000, 50000, 10);
INSERT INTO Employee VALUES (106, 'Sneha', 2450, 24500, 10);
INSERT INTO Employee VALUES (107, 'Anamika', 2975, 30, 10);

COMMIT;

-- Q1. Retrieve all data from employee, jobs and deposit.
SELECT * FROM Employee;
SELECT * FROM Job;
SELECT * FROM DEPOSIT;

-- Q2. Give details of account no. and deposited rupees of customers having account opened between dates 01-01-95 and 25-07-95.
SELECT ACTNO, AMOUNT FROM DEPOSIT WHERE ADATE BETWEEN TO_DATE('01-JAN-1995','DD-MON-YYYY') AND TO_DATE('25-JUL-1995','DD-MON-YYYY');

-- Q3. Display all jobs with minimum salary is greater than 4000.
SELECT * FROM Job WHERE min_sal > 4000;

-- Q4. Display name and salary of employee whose department no is 20. Give alias name to name of employee.
SELECT emp_name AS Employee_Name, emp_sal AS Salary FROM Employee WHERE dept_no = 20;

-- Q5. Display employee no, name and department details of those employee whose department lies in (10, 20).
SELECT emp_no, emp_name, dept_no FROM Employee WHERE dept_no IN (10, 20);

-- Q6. To study various options of LIKE predicate.
SELECT * FROM Employee WHERE emp_name LIKE 'A%';
SELECT * FROM Employee WHERE emp_name LIKE '%a';

-- Q7. Display all employee whose name start with 'A' and third character is 'a'.
SELECT * FROM Employee WHERE emp_name LIKE 'A_a%';

-- Q8. Display name, number and salary of those employees whose name is 5 characters long and first three characters are 'Ani'.
SELECT emp_name, emp_no, emp_sal FROM Employee WHERE emp_name LIKE 'Ani_';

-- Q9. Display the non-null values of employees and also employee name second character should be 'n' and string should be 5 character long.
SELECT emp_name, emp_no, emp_sal FROM Employee WHERE emp_name IS NOT NULL AND emp_name LIKE '_n___';

-- Q10. Display the null values of employee and also employee name's third character should be 'a'.
SELECT emp_name, emp_no, emp_sal FROM Employee WHERE emp_name IS NULL OR emp_name LIKE '__a%';

-- Q11. What will be output if you are giving LIKE predicate as '%\_%' ESCAPE '\'
SELECT emp_name FROM Employee WHERE emp_name LIKE '%\_%' ESCAPE '\';
