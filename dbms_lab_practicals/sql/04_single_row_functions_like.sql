-- ============================================================
-- Practical 4: Single-row Functions & Advanced LIKE Queries
-- ============================================================

-- Schema Setup for Practical 4
CREATE TABLE Sailors (
    SailorID NUMBER PRIMARY KEY,
    Name VARCHAR2(30),
    Age NUMBER,
    Rating NUMBER,
    Experience NUMBER
);

INSERT INTO Sailors VALUES (1, 'John Johnson', 35, 4, 5);
INSERT INTO Sailors VALUES (2, 'Sarah Lee', 28, 5, 3);
INSERT INTO Sailors VALUES (3, 'Mike Brown', 45, 3, 10);
INSERT INTO Sailors VALUES (4, 'Laura White', 32, 4, 6);
INSERT INTO Sailors VALUES (5, 'David Clark', 27, 4, 4);

CREATE TABLE Boats (
    BoatID NUMBER PRIMARY KEY,
    BoatName VARCHAR2(30),
    Color VARCHAR2(20)
);

INSERT INTO Boats VALUES (1, 'Ocean Breeze', 'Blue');
INSERT INTO Boats VALUES (2, 'Sea Explorer', 'Green');
INSERT INTO Boats VALUES (3, 'Wave Rider', 'Red');
INSERT INTO Boats VALUES (4, 'SailMaster', 'White');
INSERT INTO Boats VALUES (5, 'Deep Sea Hunter', 'Black');

CREATE TABLE Clients (
    ClientID NUMBER PRIMARY KEY,
    Name VARCHAR2(255),
    Balance NUMBER(10,2),
    City VARCHAR2(100),
    Email VARCHAR2(255)
);

INSERT INTO Clients VALUES (1, 'SOPHIA', 5000, 'MUMBAI', 'sophia@email.com');
INSERT INTO Clients VALUES (2, 'ARJUN', 3000, 'DELHI', 'arjun@email.com');
INSERT INTO Clients VALUES (3, 'PRIYA', 7000, 'KOLKATA', 'priya@email.com');
INSERT INTO Clients VALUES (4, 'DEVANSH', 4500, 'MUMBAI', 'devansh@email.com');
INSERT INTO Clients VALUES (5, 'MIRA', 8000, 'BANGALORE', 'mira@email.com');

COMMIT;

-- Single-Row Function Queries
-- Q1. Write a query to display the current date. Label the column Date.
SELECT SYSDATE AS "Date" FROM dual;

-- Q2. Display employee number, job, salary, and salary increased by 15% (rounded). Label "New Salary".
SELECT emp_no, emp_sal, ROUND(emp_sal * 1.15) AS "New Salary" FROM Employee;

-- Q3. Add a column that subtracts the old salary from the new salary. Label "Increase".
SELECT emp_no, emp_sal, ROUND(emp_sal * 1.15) AS "New Salary", ROUND(emp_sal * 1.15) - emp_sal AS "Increase" FROM Employee;

-- Q4. Names with first letter capitalized, rest lowercase, length of names for names starting with J, A, or M. Sort by name.
SELECT INITCAP(emp_name) AS "Proper Name", LENGTH(emp_name) AS "Name Length" 
FROM Employee 
WHERE emp_name LIKE 'J%' OR emp_name LIKE 'A%' OR emp_name LIKE 'M%'
ORDER BY emp_name;

-- Q5. Display monthly earnings.
SELECT emp_name, emp_sal AS "Monthly Salary" FROM Employee;

-- Q6. Display name, hire date, months employed, and day of week.
ALTER TABLE Employee ADD HIRE_DATE DATE;
UPDATE Employee SET HIRE_DATE = TO_DATE('07-JUN-1994','DD-MON-YYYY') WHERE emp_no = 101;

SELECT emp_name, HIRE_DATE, MONTHS_BETWEEN(SYSDATE, HIRE_DATE) AS "Months Employed", TO_CHAR(HIRE_DATE, 'Day') AS "Day of Week"
FROM Employee;

-- Q7. Display hiredate in format 'Seventh of June 1994 12:00:00 AM'.
SELECT TO_CHAR(HIRE_DATE, 'DDth "of" Month YYYY HH:MI:SS AM') AS "Formatted Hiredate" FROM Employee;

-- Q8. Calculate annual compensation (sal + comm).
SELECT emp_name, (emp_sal + NVL(emp_comm, 0)) * 12 AS "Annual Compensation" FROM Employee;

-- LIKE Queries
-- 1. Customers starting with 'M'
SELECT * FROM CUSTOMERS WHERE cname LIKE 'M%';

-- 2. Customers ending with 'L'
SELECT * FROM CUSTOMERS WHERE cname LIKE '%L';

-- 3. Loan details whose branch starts with 'A'
SELECT * FROM BRANCH WHERE bname LIKE 'A%';

-- 4. Details of sailors whose name is minimum 6 characters long
SELECT * FROM Sailors WHERE LENGTH(Name) >= 6;

-- 5. Details of Employees whose name starts with 'S'
SELECT * FROM Employee WHERE emp_name LIKE 'S%';

-- 6. List details of boat ending with 'e'
SELECT * FROM Boats WHERE BoatName LIKE '%e';

-- 7. Details of clients having 'h' as 3rd character in name
SELECT * FROM CUSTOMERS WHERE cname LIKE '__h%';

-- 8. List Client Name, due balance and city whose loan/pin code starts with 4
SELECT * FROM BORROW WHERE loanno LIKE '4%';

-- 9. Customers whose city contains 'a' as second character
SELECT * FROM CUSTOMERS WHERE city LIKE '_a%';

-- 10. Clients names and city whose city has 'a' as second character
SELECT ClientID, Name, City FROM Clients WHERE City LIKE '_a%';
