-- GROUP BY CLAUSE

-- GROUP BY is a clause used to group data based on one or more columns
-- It processes data row by row and organizes it into groups
-- GROUP BY execution returns data in the form of groups

-- ORDER OF EXECUTION:
-- 1. FROM     - Specifies the table(s) to query
-- 2. WHERE    - Filters records row by row
-- 3. GROUP BY - Groups records based on specified columns
-- 4. SELECT   - Displays the final result set

-- ========================================
-- GROUP BY ASSIGNMENT EXAMPLES
-- ========================================

-- Write a query to find number of employees working in each department
SELECT COUNT(*), DEPTNO
FROM emp
GROUP BY DEPTNO;

-- Write a query to group employees by salary
SELECT COUNT(*), SAL
FROM emp
GROUP BY SAL;

-- Write a query to find maximum salary in each department
SELECT MAX(SAL), DEPTNO
FROM emp
GROUP BY DEPTNO;

-- Write a query to find employees working in each job
SELECT COUNT(*), JOB
FROM emp
GROUP BY JOB;

-- Write a query to find total salary given to employees who are hired in each year
SELECT SUM(SAL), YEAR(HIREDATE)
FROM emp
GROUP BY YEAR(HIREDATE);


