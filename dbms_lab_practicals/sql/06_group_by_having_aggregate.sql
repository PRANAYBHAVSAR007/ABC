-- ============================================================
-- Practical 6: Aggregating Data using Group functions
-- ============================================================

-- Q1. List total deposit of customer having account date after 1-jan-96.
SELECT SUM(AMOUNT) AS TOTAL_DEPOSIT FROM DEPOSIT WHERE ADATE > TO_DATE('01-JAN-1996', 'DD-MON-YYYY');

-- Q2. List total deposit of customers living in city Nagpur.
SELECT SUM(D.AMOUNT) AS TOTAL_DEPOSIT 
FROM DEPOSIT D
JOIN CUSTOMERS C ON D.CNAME = C.CNAME 
WHERE C.CITY = 'NAGPUR';

-- Q3. List maximum deposit of customers living in bombay.
SELECT MAX(D.AMOUNT) AS MAX_DEPOSIT 
FROM DEPOSIT D
JOIN CUSTOMERS C ON D.CNAME = C.CNAME 
WHERE C.CITY = 'BOMBAY';

-- Q4. Display highest, lowest, sum, and average salary of all employees (rounded).
SELECT 
    ROUND(MAX(emp_sal)) AS Maximum,
    ROUND(MIN(emp_sal)) AS Minimum,
    ROUND(SUM(emp_sal)) AS Sum,
    ROUND(AVG(emp_sal)) AS Average
FROM Employee;

-- Q5. Display difference between highest and lowest salaries.
SELECT MAX(emp_sal) - MIN(emp_sal) AS DIFFERENCE FROM Employee;

-- Q6. Total number of employees and count of employees hired in 1995, 1996, 1997, 1998.
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN EXTRACT(YEAR FROM HIRE_DATE) = 1995 THEN 1 ELSE 0 END) AS Hired_1995,
    SUM(CASE WHEN EXTRACT(YEAR FROM HIRE_DATE) = 1996 THEN 1 ELSE 0 END) AS Hired_1996,
    SUM(CASE WHEN EXTRACT(YEAR FROM HIRE_DATE) = 1997 THEN 1 ELSE 0 END) AS Hired_1997,
    SUM(CASE WHEN EXTRACT(YEAR FROM HIRE_DATE) = 1998 THEN 1 ELSE 0 END) AS Hired_1998
FROM Employee;

-- Q7. Average salaries for each department without displaying department numbers.
SELECT ROUND(AVG(emp_sal), 2) AS AVG_SALARY FROM Employee GROUP BY dept_no;

-- Q8. Total salary paid to each department.
SELECT dept_no, SUM(emp_sal) AS TOTAL_SALARY FROM Employee GROUP BY dept_no;

-- Q9. Average salaries > 2000 for each department without displaying department numbers.
SELECT ROUND(AVG(emp_sal), 2) AS AVG_SALARY FROM Employee GROUP BY dept_no HAVING AVG(emp_sal) > 2000;

-- Q10. Total salary exceeding 3000 for each department sorted by total salary.
SELECT dept_no, SUM(emp_sal) AS TOTAL_SALARY 
FROM Employee 
GROUP BY dept_no 
HAVING SUM(emp_sal) > 3000 
ORDER BY TOTAL_SALARY;

-- Q11. Branches in Bombay having sum of deposit > 5000.
SELECT B.BNAME, SUM(D.AMOUNT) AS TOTAL_DEPOSIT
FROM BRANCH B
JOIN DEPOSIT D ON B.BNAME = D.BNAME
WHERE B.CITY = 'BOMBAY'
GROUP BY B.BNAME
HAVING SUM(D.AMOUNT) > 5000;
