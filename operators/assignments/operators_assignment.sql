-- employee table
SELECT * FROM emp;

-- Operators
-- Operators are the symbols used to perform some specific task

-- IN
-- write a query to display employees who work in deptno 10,30,50
SELECT * FROM emp
WHERE DEPTNO IN (10,30,50);

-- write a query to display employees who work as 'SALESMAN' or 'MANAGER'
SELECT * FROM emp
WHERE JOB IN ('SALESMAN','MANAGER');

-- NOT IN
-- not in is a multi-valued special operator where it excludes given values at RHS

-- write a query to display ename,job where emp not working in that job as 'SALESMAN' and 'MANAGER'
SELECT * FROM emp
WHERE JOB NOT IN ('SALESMAN','MANAGER');

-- write a query to display ename,job where emp not from deptno 10,50,30
SELECT ENAME, JOB FROM emp
WHERE DEPTNO NOT IN (10,50,30);

-- LIKE
-- like is a special operator used for pattern matching
-- '_' 1 character
-- '%' n characters

-- write a query to find ename where ename starts with 'M' character
SELECT * FROM emp
WHERE ENAME LIKE 'M%';

-- write a query to find ename where ename is 4 characters long
SELECT ename FROM emp
WHERE ENAME LIKE '____';

-- write a query to find ename ends with 'S'
SELECT ENAME FROM emp
WHERE ENAME LIKE '%S';

-- write a query to find  where ename  has 'O' character
SELECT ENAME FROM emp
WHERE ENAME LIKE '%O%';

-- write a query to display ename where ename 2nd letter is 'A'
SELECT ENAME FROM emp
WHERE ENAME LIKE '_A%';

-- write a query to display emp where ename last 2nd letter is 'A'
SELECT ENAME FROM emp
WHERE ENAME LIKE '%A_';

-- write a query to find ename where ename is 4 characters long
SELECT ENAME FROM emp
WHERE ENAME LIKE '____';

-- NOT LIKE
-- Write a query to find ename where ename does NOT start with 'M' character.
SELECT * FROM emp
WHERE ENAME NOT LIKE 'M%';

-- Write a query to find ename where ename is NOT 4 characters long.
SELECT ename FROM emp
WHERE ENAME NOT LIKE '____';

-- Write a query to find ename where ename does NOT end with 'S'.
SELECT ename FROM emp
WHERE ENAME NOT LIKE '%S';

-- Write a query to find ename where ename does NOT contain 'O' character.
SELECT ename FROM emp
WHERE ENAME NOT LIKE '%O%';

-- Write a query to display ename where 2nd letter is NOT 'A'.
SELECT ename FROM emp
WHERE ENAME NOT LIKE '_A%';

-- Write a query to display ename where last 2nd letter is NOT 'A'.
SELECT ename FROM emp
WHERE ENAME NOT LIKE '%A_';

-- Write a query to find ename where ename is NOT 4 characters long.
SELECT ename,SAL FROM emp
WHERE ENAME NOT LIKE '____';

-- BETWEEN
-- used to ranges

-- write a query to display emp details where sal is between 1250 and 3000
SELECT * FROM emp
WHERE SAL BETWEEN 1250 AND 3000;

-- write a query to find emp details where sal is between 251 and 2999
SELECT * FROM emp
WHERE SAL BETWEEN 251 AND 2999;

-- BETWEEN NOT
-- write a query to display emp details sal not more than 1250 and sal less than 3000
SELECT * FROM emp
WHERE SAL NOT BETWEEN 1250 AND 3000;

-- write a query to find emp details earning not between sal 250 to 3000
SELECT * FROM emp
WHERE SAL NOT BETWEEN  251 AND 2999;

-- IS
-- special operator which is used to check whether the column is null

-- write a query to display ename,sal,comm where emp not earning any commission
SELECT ename,sal,comm FROM emp
WHERE COMM IS NULL;

-- IS NOT
-- special operator which is used to check whether the column is not null

-- write a query to display ename,sal,comm where emp earning some commission
SELECT ename,sal,comm FROM emp
WHERE COMM IS NOT NULL;

-- CONCAT(||)
-- used to concat more than 1 argument

SELECT 'HI' || ename || 'I LOVE MY SAL' || sal FROM emp
WHERE SAL > 4000;


