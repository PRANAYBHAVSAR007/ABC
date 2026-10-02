-- ============================================================
-- Practical 9: Transaction Control (TCL) & Data Control (DCL)
-- ============================================================

-- ------------------------------------------------------------
-- Part A: TCL Commands (COMMIT, ROLLBACK, SAVEPOINT)
-- ------------------------------------------------------------

-- 1. Demonstrate COMMIT
UPDATE Employee SET emp_sal = emp_sal + 500 WHERE emp_no = 101;
COMMIT;

-- 2. Demonstrate ROLLBACK
UPDATE Employee SET emp_sal = emp_sal + 1000 WHERE emp_no = 102;
ROLLBACK;

-- 3. Demonstrate SAVEPOINT and ROLLBACK TO SAVEPOINT
UPDATE Employee SET emp_sal = emp_sal + 500 WHERE emp_no = 103;
SAVEPOINT S1;

UPDATE Employee SET emp_sal = emp_sal + 1000 WHERE emp_no = 104;

-- Rollback back to state before second update
ROLLBACK TO S1;
COMMIT;


-- ------------------------------------------------------------
-- Part B: DCL Commands (GRANT, REVOKE)
-- ------------------------------------------------------------

-- Note: DCL commands require Administrative privileges (e.g., SYS, SYSTEM, or DB Admin).

-- 1. Granting SELECT and INSERT privileges on Employee table to user 'student_user'
-- GRANT SELECT, INSERT ON Employee TO student_user;

-- 2. Revoking INSERT privilege from 'student_user'
-- REVOKE INSERT ON Employee FROM student_user;
