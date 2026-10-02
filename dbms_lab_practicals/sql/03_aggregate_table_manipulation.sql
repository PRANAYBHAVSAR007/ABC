-- ============================================================
-- Practical 3: Data Manipulation Commands & Aggregate Functions
-- ============================================================

-- Q1. List total deposit from deposit.
SELECT SUM(amount) AS Total_Deposit FROM DEPOSIT;

-- Q2. List total loan from karolbagh branch.
SELECT SUM(amount) AS Total_Loan FROM BORROW WHERE bname = 'KAROLBAGH';

-- Q3. Give maximum loan from branch vrce.
SELECT MAX(amount) AS Max_Loan FROM BORROW WHERE bname = 'VRCE';

-- Q4. Count total number of customers.
SELECT COUNT(*) AS Total_Customers FROM CUSTOMERS;

-- Q5. Count total number of customer's cities.
SELECT COUNT(DISTINCT city) AS Total_Cities FROM CUSTOMERS;

-- Q6. Create table supplier from employee with all the columns.
CREATE TABLE Supplier AS SELECT * FROM Employee;

-- Q7. Create table sup1 from employee with first two columns.
CREATE TABLE Sup1 AS SELECT emp_no, emp_name FROM Employee;

-- Q8. Create table sup2 from employee with no data.
CREATE TABLE Sup2 AS SELECT * FROM Employee WHERE 1 = 0;

-- Q9. Insert the data into sup2 from employee whose second character should be 'n' and string should be 5 characters long.
INSERT INTO Sup2 SELECT * FROM Employee WHERE emp_name LIKE '_n___';

-- Q10. Delete all the rows from sup1.
DELETE FROM Sup1;

-- Q11. Delete the detail of supplier whose sup_no (emp_no) is 103.
DELETE FROM Supplier WHERE emp_no = 103;

-- Q12. Rename the table sup2.
ALTER TABLE Sup2 RENAME TO Sup2_Renamed;

-- Q13. Destroy table sup1 with all the data.
DROP TABLE Sup1;

-- Q14. Update the value dept_no to 10 where second character of emp name is 'm'.
UPDATE Employee SET dept_no = 10 WHERE emp_name LIKE '_m%';

-- Q15. Update employee name where employee number = 103.
UPDATE Employee SET emp_name = 'Rakesh' WHERE emp_no = 103;

COMMIT;
