-- ============================================================
-- Practical 5: Displaying data from Multiple Tables (Joins)
-- ============================================================

-- Setup Department & Emp_Job tables for joins
CREATE TABLE DEPARTMENT (
    DEPT_NO NUMBER(3),
    DEPT_NAME VARCHAR2(30),
    LOCATION VARCHAR2(30)
);

INSERT INTO DEPARTMENT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPARTMENT VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPARTMENT VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO DEPARTMENT VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE EMP_JOB (
    EMP_NO NUMBER(3),
    JOB_ID VARCHAR2(15)
);

INSERT INTO EMP_JOB VALUES (101, 'IT_PROG');
INSERT INTO EMP_JOB VALUES (102, 'FI_ACC');
INSERT INTO EMP_JOB VALUES (103, 'MK_MGR');
INSERT INTO EMP_JOB VALUES (104, 'LEC');
INSERT INTO EMP_JOB VALUES (105, 'FI_MGR');
INSERT INTO EMP_JOB VALUES (106, 'COMP_OP');

COMMIT;

-- Q1. Give details of customer ANIL.
SELECT * FROM CUSTOMERS WHERE cname = 'ANIL';

-- Q2. Give name of customer who are borrowers and depositors and having living city nagpur.
SELECT DISTINCT D.CNAME 
FROM DEPOSIT D 
JOIN BORROW B ON D.CNAME = B.CNAME 
JOIN CUSTOMERS C ON D.CNAME = C.CNAME 
WHERE C.CITY = 'NAGPUR';

-- Q3. Give city as their city name of customers having same living branch.
SELECT C.CNAME, C.CITY, B.BNAME, B.CITY AS BRANCH_CITY
FROM CUSTOMERS C
JOIN DEPOSIT D ON C.CNAME = D.CNAME
JOIN BRANCH B ON D.BNAME = B.BNAME
WHERE C.CITY = B.CITY;

-- Q4. Display last name, department number, and department name for all employees.
SELECT E.emp_name, E.dept_no, D.DEPT_NAME
FROM Employee E
JOIN DEPARTMENT D ON E.dept_no = D.DEPT_NO;

-- Q5. Unique listing of all jobs in department 30 with location.
SELECT DISTINCT J.job_title, D.LOCATION
FROM EMP_JOB EJ
JOIN Job J ON EJ.JOB_ID = J.job_id
JOIN Employee E ON EJ.EMP_NO = E.emp_no
JOIN DEPARTMENT D ON E.dept_no = D.DEPT_NO
WHERE E.dept_no = 30;

-- Q6. Display employee name, department number, and department name for employees working in NEW YORK.
SELECT E.emp_name, E.dept_no, D.DEPT_NAME
FROM Employee E
JOIN DEPARTMENT D ON E.dept_no = D.DEPT_NO
WHERE D.LOCATION = 'NEW YORK';

-- Q7. Employee name and number along with manager name and manager number.
ALTER TABLE Employee ADD MANAGER_NO NUMBER(3);
UPDATE Employee SET MANAGER_NO = 105 WHERE emp_no IN (101, 102, 106);
UPDATE Employee SET MANAGER_NO = 106 WHERE emp_no IN (103, 107);
UPDATE Employee SET MANAGER_NO = 107 WHERE emp_no = 104;

SELECT E.emp_name AS Employee, E.emp_no AS "Emp#", M.emp_name AS Manager, M.emp_no AS "Mgr#"
FROM Employee E
LEFT JOIN Employee M ON E.MANAGER_NO = M.emp_no;

-- Q8. Name and hire date of any employee hired after employee SCOTT.
SELECT E.emp_name, E.HIRE_DATE
FROM Employee E
WHERE E.HIRE_DATE > (SELECT HIRE_DATE FROM Employee WHERE emp_name = 'SCOTT');
