/*
 * AGGREGATE FUNCTIONS IN SQL
 * Demonstrates common aggregate functions using emp table
 */

-- Display all records from emp table
SELECT * FROM emp;

-- ========================================
-- AGGREGATE FUNCTIONS DEMONSTRATION
-- ========================================

-- MAX() - Returns the highest salary value from emp table
SELECT MAX(sal) AS max_salary
FROM emp;

-- MIN() - Returns the lowest salary value from emp table
SELECT MIN(sal) AS min_salary
FROM emp;

-- SUM() - Returns the total of all salary values from emp table
SELECT SUM(sal) AS total_salary
FROM emp;

-- AVG() - Returns the average salary value from emp table
SELECT AVG(sal) AS avg_salary
FROM emp;

-- COUNT() - Returns the total number of rows in emp table
SELECT COUNT(*) AS total_employees
FROM emp;

-- COUNT(column) - Returns the number of non-null values in specified column
SELECT COUNT(comm) AS employees_with_commission
FROM emp;


