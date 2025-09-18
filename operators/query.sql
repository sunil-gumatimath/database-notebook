-- employee table
SELECT * FROM emp;

-- Operators
-- Operators are the symbols used to perform some specific task

-- IN
-- write a query to display where emp work in deptno 10,30,50
SELECT * FROM emp
WHERE DEPTNO IN (10,30,50);

-- write a query to display where employee work in as 'SALESMAN' and 'MANAGER'
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

-- write a query to find ename where as 4 character
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

-- write a query to find ename where as 4 character
SELECT ENAME FROM emp
WHERE ENAME LIKE '____';

-- NOT LIKE

-- BETWEEN

-- BETWEEN NOT

-- IS

-- IS NOT

-- CONCAT
