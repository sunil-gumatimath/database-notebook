-- ============================================================================
-- Assignment - Subqueries
-- ============================================================================

-- Display all records from emp and dept tables
SELECT * FROM emp;
SELECT * FROM dept;

-- ============================================================================
-- Query 1: Display the name of SMITH's manager
-- ============================================================================
SELECT ename
FROM emp
WHERE empno = (
    SELECT mgr
    FROM emp
    WHERE ename = 'SMITH'
);

-- ============================================================================
-- Query 2: Display SMITH's work location
-- ============================================================================
SELECT loc
FROM dept
WHERE deptno = (
    SELECT deptno
    FROM emp
    WHERE ename = 'SMITH'
);

-- ============================================================================
-- Query 3: Display details of managers for employees SMITH, TURNER, and MARTIN
-- ============================================================================
SELECT *
FROM emp
WHERE empno IN (
    SELECT mgr
    FROM emp
    WHERE ename IN ('SMITH', 'TURNER', 'MARTIN')
);

-- ============================================================================
-- Query 4: Display all employees who are managers
-- ============================================================================
SELECT * 
FROM emp
WHERE empno IN (
    SELECT mgr FROM emp
);

-- “Write a query to count how many employees work in the department located in NEW YORK.”
SELECT COUNT(*)
FROM emp
WHERE deptno = (
    SELECT deptno
    FROM dept
    WHERE LOC ='NEW YORK'
);

