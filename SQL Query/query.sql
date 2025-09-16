SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;
SELECT * FROM bonus;


SELECT ename FROM emp
WHERE ENAME like 'A%';

-- this will calculate the annual salary of emp
SELECT sal*12 AS year_sal from emp;
