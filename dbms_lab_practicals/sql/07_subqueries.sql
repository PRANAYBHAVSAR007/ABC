-- ============================================================
-- Practical 7: Solving Queries using Subqueries
-- ============================================================

-- Q1. Display last name and hire date of any employee in the same department as SCOTT (Exclude SCOTT).
SELECT emp_name, HIRE_DATE
FROM Employee
WHERE dept_no = (
    SELECT dept_no FROM Employee WHERE emp_name = 'SCOTT'
) AND emp_name <> 'SCOTT';

-- Q2. Give name of depositors having same branch city as SUNIL.
SELECT DISTINCT D.CNAME 
FROM DEPOSIT D 
JOIN BRANCH B ON D.BNAME = B.BNAME
WHERE B.CITY IN (
    SELECT DISTINCT B2.CITY 
    FROM DEPOSIT D2 
    JOIN BRANCH B2 ON D2.BNAME = B2.BNAME 
    WHERE D2.CNAME = 'SUNIL'
);

-- Q3. Give deposit details and loan details of customer in same city where PRAMOD is living.
SELECT D.CNAME, D.AMOUNT AS DEPOSIT_AMOUNT, B.AMOUNT AS LOAN_AMOUNT 
FROM DEPOSIT D
JOIN BORROW B ON D.CNAME = B.CNAME 
JOIN CUSTOMERS C ON D.CNAME = C.CNAME
WHERE C.CITY IN (
    SELECT CITY FROM CUSTOMERS WHERE CNAME = 'PRAMOD'
);

-- Q4. Employee numbers and names of all employees who earn more than average salary. Sort ascending.
SELECT emp_no, emp_name, emp_sal
FROM Employee 
WHERE emp_sal > (SELECT AVG(emp_sal) FROM Employee)
ORDER BY emp_sal ASC;

-- Q5. Names of depositors living in same city as ANIL and deposit amount > 2000.
SELECT D.CNAME, D.AMOUNT
FROM DEPOSIT D
JOIN CUSTOMERS C ON D.CNAME = C.CNAME
WHERE C.CITY IN (
    SELECT CITY FROM CUSTOMERS WHERE CNAME = 'ANIL'
) AND D.AMOUNT > 2000;

-- Q6. Display last name and salary of every employee who reports to FORD.
SELECT emp_name, emp_sal
FROM Employee
WHERE MANAGER_NO = (
    SELECT emp_no FROM Employee WHERE emp_name = 'FORD'
);

-- Q7. Display department number, employee name and job for employees in ACCOUNTING department.
SELECT E.dept_no, E.emp_name, J.job_title
FROM Employee E
JOIN EMP_JOB EJ ON E.emp_no = EJ.EMP_NO
JOIN Job J ON EJ.JOB_ID = J.job_id
WHERE E.dept_no = (
    SELECT DEPT_NO FROM DEPARTMENT WHERE DEPT_NAME = 'ACCOUNTING'
);

-- Q8. Name of branch having highest number of depositors.
SELECT BNAME
FROM DEPOSIT
GROUP BY BNAME
HAVING COUNT(*) = (
    SELECT MAX(CNT) FROM (
        SELECT COUNT(*) AS CNT FROM DEPOSIT GROUP BY BNAME
    )
);

-- Q9. Name of cities in which maximum number of branches are located.
SELECT CITY
FROM BRANCH
GROUP BY CITY
HAVING COUNT(*) = (
    SELECT MAX(CNT) FROM (
        SELECT COUNT(*) AS CNT FROM BRANCH GROUP BY CITY
    )
);

-- Q10. Name of customers living in same city where maximum depositors are located.
SELECT CNAME, CITY
FROM CUSTOMERS
WHERE CITY = (
    SELECT CITY FROM (
        SELECT C.CITY, COUNT(*) AS CNT
        FROM CUSTOMERS C
        JOIN DEPOSIT D ON C.CNAME = D.CNAME
        GROUP BY C.CITY
        ORDER BY CNT DESC
    ) WHERE ROWNUM = 1
);
