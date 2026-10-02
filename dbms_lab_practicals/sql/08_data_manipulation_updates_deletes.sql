-- ============================================================
-- Practical 8: Manipulating Data (Advanced UPDATE & DELETE)
-- ============================================================

-- Q1. Give 10% interest to all depositors.
UPDATE DEPOSIT SET AMOUNT = AMOUNT + (AMOUNT * 0.10);
COMMIT;

-- Q2. Give 10% interest to all depositors having branch VRCE.
UPDATE DEPOSIT SET AMOUNT = AMOUNT + (AMOUNT * 0.10) WHERE BNAME = 'VRCE';
COMMIT;

-- Q3. Give 10% interest to depositors living in Nagpur and branch city Bombay.
UPDATE DEPOSIT SET AMOUNT = AMOUNT + (AMOUNT * 0.10)
WHERE CNAME IN (
    SELECT D.CNAME
    FROM DEPOSIT D
    JOIN CUSTOMERS C ON D.CNAME = C.CNAME
    JOIN BRANCH B ON D.BNAME = B.BNAME
    WHERE C.CITY = 'NAGPUR' AND B.CITY = 'BOMBAY'
);
COMMIT;

-- Q4. Change department number of employees with job of employee 7788 to employee 7844's department.
UPDATE Employee
SET dept_no = (SELECT dept_no FROM Employee WHERE emp_no = 7844)
WHERE emp_no IN (SELECT emp_no FROM Employee WHERE emp_no = 7788);
COMMIT;

-- Q5. Transfer 10 Rs from account of ANIL to SUNIL if both have same branch.
UPDATE DEPOSIT
SET AMOUNT = AMOUNT - 10
WHERE CNAME = 'ANIL'
AND BNAME IN (SELECT BNAME FROM DEPOSIT WHERE CNAME = 'SUNIL');

UPDATE DEPOSIT
SET AMOUNT = AMOUNT + 10
WHERE CNAME = 'SUNIL'
AND BNAME IN (SELECT BNAME FROM DEPOSIT WHERE CNAME = 'ANIL');
COMMIT;

-- Q6. Give 100 Rs more to depositors if they have maximum deposit in their branch.
UPDATE DEPOSIT D
SET AMOUNT = AMOUNT + 100
WHERE AMOUNT = (
    SELECT MAX(D2.AMOUNT)
    FROM DEPOSIT D2
    WHERE D2.BNAME = D.BNAME
);
COMMIT;

-- Q7. Delete depositors of branches having number of customers between 1 to 3.
DELETE FROM DEPOSIT
WHERE BNAME IN (
    SELECT BNAME
    FROM DEPOSIT
    GROUP BY BNAME
    HAVING COUNT(*) BETWEEN 1 AND 3
);
COMMIT;

-- Q8. Delete deposit of VIJAY.
DELETE FROM DEPOSIT WHERE CNAME = 'VIJAY';
COMMIT;

-- Q9. Delete borrower of branches having average loan less than 1000.
DELETE FROM BORROW
WHERE BNAME IN (
    SELECT BNAME
    FROM BORROW
    GROUP BY BNAME
    HAVING AVG(AMOUNT) < 1000
);
COMMIT;
