-- Employee Query Examples
-- This file contains various employee-related queries using subqueries

-- General query to view all employees
SELECT * FROM emp;

-- ========================================
-- Salary Comparison Queries
-- ========================================

-- Write a query to display employee details where emp earning sal more than 'ALLEN'
SELECT sal FROM emp
WHERE ename = 'ALLEN';

SELECT * FROM emp
WHERE SAL > 1600;

-- Write a query to display who's earning sal less than FORD sal
SELECT sal FROM emp
WHERE ENAME = 'FORD';

SELECT * FROM emp
WHERE SAL < 3000;

-- Write a query to display where emp earning same salary
SELECT sal FROM emp
GROUP BY SAL
HAVING COUNT(*) > 1;

SELECT * FROM emp
WHERE SAL IN (1250,3000);

-- Write a query to display employee earning highest salary
SELECT sal FROM emp
ORDER BY sal DESC;

SELECT ename FROM emp
WHERE sal = 5000;

-- Write a query to display employee earning lowest salary
SELECT sal FROM emp
ORDER BY sal ASC;

SELECT ename FROM emp
WHERE SAL = 800;

-- ========================================
-- Job and Designation Queries
-- ========================================

-- Write a query to display employee name, designation where emp working in designation same as 'MARTIN' designation
SELECT JOB FROM emp
WHERE ENAME = 'MARTIN';

SELECT * FROM emp
WHERE job = 'SALESMAN';

-- ========================================
-- Hire Date Queries
-- ========================================

-- Write a query to display employee details where emp hired in month same as 'JAMES'
SELECT MONTH(HIREDATE) FROM emp
WHERE ENAME = 'JAMES';

SELECT ename FROM emp
WHERE MONTH(HIREDATE) = 12;

-- Write a query to find 1st hired date
SELECT MIN(DATE(HIREDATE)) FROM emp;

-- Write a query to find last hired date
SELECT MAX(DATE(HIREDATE)) FROM emp;
