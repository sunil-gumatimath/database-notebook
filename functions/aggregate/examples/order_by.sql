-- ORDER BY Clause Examples
-- ========================

-- ORDER BY is a clause used to sort records in ascending or descending order
-- By default, ORDER BY sorts records in ascending order

-- =============================================
-- BASIC ORDER BY EXAMPLES
-- =============================================

-- 1. Write a query to display employee details and sort job in asc order
SELECT * FROM emp
ORDER BY JOB ASC;

-- 2. Write a query to display employee and sort hiredate in asc order
SELECT * FROM emp
ORDER BY HIREDATE ASC;

-- 3. Write a query to display dept table details and sort location in desc
SELECT * FROM dept
ORDER BY loc DESC;

-- =============================================
-- ORDER BY WITH WHERE CLAUSE
-- =============================================

-- 4. Write a query to display ename,sal and starts with consonant character and ename sort by desc
SELECT ename,sal
FROM emp
WHERE SUBSTR(ename,1,1) NOT IN ('A','E','I','O','U')
ORDER BY ename DESC;

-- 5. Write a query to display employees hired in odd months and odd years, sorted by hire month ascending
SELECT ename, hiredate
FROM emp
WHERE MOD(MONTH(hiredate), 2) = 1   -- odd month (1,3,5,...,11)
  AND MOD(YEAR(hiredate), 2) = 1    -- odd year (1981, 1983, etc.)
ORDER BY MONTH(hiredate) ASC;

-- =============================================
-- ORDER BY WITH GROUP BY AND AGGREGATE FUNCTIONS
-- =============================================

-- 6. Write a query to display department number, maximum salary, and minimum salary, and sort the results by minimum salary in ascending order.
SELECT DEPTNO, MAX(SAL) as maximum_salary,MIN(SAL) as minimum_salary
FROM emp
GROUP BY deptno
ORDER BY MIN(sal) ASC;

-- 7. Write a query to find unique emp name and sort emp name asc order
SELECT ename
FROM emp
GROUP BY ENAME
HAVING COUNT(*) = 1
ORDER BY ENAME ASC;

-- 8. Write a query to find total salary given to each job and sort job in asc order
SELECT SUM(SAL),JOB
FROM emp
GROUP BY JOB
ORDER BY JOB ASC;

-- =============================================
-- NOTES
-- =============================================

-- ORDER BY Syntax:
-- SELECT column1, column2, ...
-- FROM table_name
-- ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...

-- Key Points:
-- - ASC: Ascending order (A-Z, 0-9, smallest to largest)
-- - DESC: Descending order (Z-A, 9-0, largest to smallest)
-- - NULL values are considered "smaller" than non-NULL values in ascending order
-- - ORDER BY clause is typically used at the end of a SELECT statement
-- - Can sort by column names, column positions, or expressions


