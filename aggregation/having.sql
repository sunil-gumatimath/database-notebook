-- HAVING

-- Having is a clause used to filter group records
-- Having executes group-by-group
-- it accepts multi-row functions

-- ORDER OF EXECUTION
-- 1. FROM
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT

-- Write a query to display the salary and number of employees who are earning the same salary (more than one employee).
SELECT COUNT(*),sal FROM emp
GROUP BY SAL
HAVING COUNT(*)>1;

-- Write a query to find employee names that are repeated (same name appears more than once).
SELECT COUNT(*),ename FROM emp
GROUP BY ENAME
HAVING COUNT(*)>1;

-- Write a query to display department numbers and the number of clerks in each department, but only show departments having at least 2 clerks.
SELECT COUNT(*),deptno FROM emp
WHERE JOB IN ('CLERK')
GROUP BY DEPTNO
HAVING COUNT(*) >= 2;

-- Write a query to display department numbers and the total salary of employees in each department, but only for departments having at least 4 employees.
SELECT deptno,SUM(sal) FROM emp
GROUP BY DEPTNO
HAVING COUNT(*)>=4;


-- Write a query to display each job title and the number of employees earning more than 1200 salary, but only include jobs where the total salary of such employees is greater than 3800.
SELECT COUNT(*),JOB FROM emp
WHERE sal>1200
GROUP BY JOB
HAVING SUM(SAL)>3800;

-- Write a query to display department numbers where exactly 2 managers are working, along with the count of managers.
SELECT COUNT(*),deptno FROM emp
WHERE job = 'MANAGER'
GROUP BY DEPTNO
HAVING COUNT(*)>=2;

-- Write a query to display each job and the maximum salary in that job, but only include jobs where the maximum salary is greater than 2600.
SELECT JOB,MAX(SAL) FROM emp
GROUP BY JOB
HAVING MAX(SAL)>2600;

-- Write a query to find all hire dates on which more than one employee was hired.
SELECT HIREDATE FROM emp
GROUP BY HIREDATE
HAVING COUNT(*)>1;

-- Write a query to display each department number and the average salary of employees in that department, but only include departments where the average salary is less than 3000.
SELECT deptno,AVG(Sal) FROM emp
GROUP BY DEPTNO
HAVING AVG(SAL)<3000;

-- Write a query to display department numbers where at least 3 employees have names containing the letters 'A' or 'S'.
SELECT deptno FROM emp
WHERE ename like '%A%' or ENAME like '%S%'
GROUP BY DEPTNO
HAVING COUNT(*)>=3;

-- Write a query to display each job along with the minimum and maximum salary for that job, but only include jobs where the minimum salary is greater than 1000 and the maximum salary is less than 5000.
SELECT MIN(SAL),MAX(SAL),JOB FROM emp
GROUP BY JOB
HAVING MIN(Sal) > 1000 and MAX(SAL)< 5000;
