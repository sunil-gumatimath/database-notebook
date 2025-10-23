-- What is DML?

-- DML stands for Data Manipulation Language.
-- It deals with the data inside the database objects (like tables).
-- Unlike DDL (which changes structure), DML adds, updates, deletes, or retrieves the data.

-- INSERT → Add new records (rows).
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, deptno)
VALUES (8000, 'JOHNSON', 'ANALYST', 7566, '2023-01-15', 3500, 20);

-- UPDATE → Modify existing records.
UPDATE emp
SET sal = sal + 500
WHERE deptno = 20;

-- DELETE → Remove records.
DELETE FROM emp
WHERE empno = 8000;

-- SELECT → Retrieve data from the table (technically part of DQL, but often grouped with DML).
SELECT * FROM emp;
