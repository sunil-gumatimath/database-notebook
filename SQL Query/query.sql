SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;
SELECT * FROM bonus;


SELECT ename FROM emp
WHERE ENAME like 'A%';

-- sal colm
SELECT sal FROM emp;

-- write a query to calculate the annual salary of emp
SELECT (sal*12) AS year_sal from emp;

-- write a query to find half-term salary of emp
SELECT (sal*6) AS half_term FROM emp;

-- write a query to find quater salary
SELECT (sal*3) AS quater_salary from emp;

-- write a query to display emp name,salary with bonous of 1000
SELECT ename,sal + 1000 as bonous_sal FROM emp;

-- write a query to find salary with increment by 10%
SELECT sal+(sal*10/100) as increment FROM emp;

-- annual increment with 10%
SELECT (sal*12) + (sal * 12 * 10/100) as annual_increment FROM emp;
