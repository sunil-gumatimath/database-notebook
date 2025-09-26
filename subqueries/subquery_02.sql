SELECT * FROM emp;

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

-- Write a query to display employee name, designation where emp working in designation same as 'MARTIN' designation
SELECT JOB FROM emp
WHERE ENAME = 'MARTIN';

SELECT * FROM emp
WHERE job = 'SALESMAN';