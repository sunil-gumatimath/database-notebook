-- ORDER BY Clause
-- =================

-- ORDER BY is a clause used to sort records in ascending or descending order
-- By default, ORDER BY sorts records in ascending order

-- Syntax:
-- SELECT column1, column2, ...
-- FROM table_name
-- ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...

-- Examples:

-- Write a query to display ename,sal and starts with consolent character and ename sort by desc
SELECT ename,sal
FROM emp
WHERE SUBSTR(ename,1,1) NOT IN ('A','E','I','O','U')
ORDER BY ename DESC;

-- Write a query to display employee details and sort job in asc order
SELECT * FROM emp
ORDER BY JOB ASC;



-- Notes:
-- - ASC: Ascending order (A-Z, 0-9, smallest to largest)
-- - DESC: Descending order (Z-A, 9-0, largest to smallest)
-- - NULL values are considered "smaller" than non-NULL values in ascending order
-- - ORDER BY clause is typically used at the end of a SELECT statement
