-- HAVING

-- Having is a clause used to filter group records 
-- Having execute group-by-group
-- it accepts multi-row function

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
HAVING COUNT(*)=2;

