-- Write a query to find number of employees working in deptno 30
SELECT COUNT(*) FROM emp
WHERE DEPTNO = 30;

-- Write a query to find maximum salary given to the employee where emp job is 'salesman'
SELECT MAX(sal) FROM emp
WHERE JOB = 'SALESMAN';

-- Write a query to find minimum salary given to emp where emp hiredate in 81
SELECT MIN(sal) FROM emp
WHERE YEAR(HIREDATE) = 1981;

-- Write a query to find total salary to emp where emp working as 'manager'
SELECT SUM(sal) FROM emp
WHERE JOB = 'MANAGER';

-- Write a query to find number of employees where ename starts with vowel characters
SELECT COUNT(*) FROM emp
WHERE SUBSTR(ENAME, 1, 1) IN ('A', 'E', 'I', 'O', 'U');

-- Write a query to display average salary given to employees working in deptno 10 and 30
SELECT AVG(sal) FROM emp
WHERE DEPTNO IN (10, 30);

-- Write a query to display max(sal) and ename
SELECT ename, MAX(sal) FROM emp;  -- error not a single-group function (SELECT function)

-- Write a query to display maximum salary where maximum salary is more than 3000
SELECT MAX(sal) FROM emp
WHERE MAX(SAL) > 3000; -- error group function is not allowed here (WHERE function)

-- Note: Multi row functions are not allowed in where clause

-- Write a query to find max sal, min sal, total sal, avg sal for employees
SELECT MAX(sal), MIN(sal), SUM(sal), AVG(sal) FROM emp;
