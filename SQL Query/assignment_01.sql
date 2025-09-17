SELECT * FROM emp;

-- write  a query to display emp details where emp earning salary more than 1000 and less then 2000
SELECT * FROM emp WHERE SAL > 1000 AND SAL < 2000;

-- write a query to display emp details where emp working in deptno in 20 30 50 60 80 90
SELECT * FROM emp WHERE DEPTNO = 20 OR DEPTNO = 30 OR DEPTNO = 50 OR DEPTNO = 60 OR DEPTNO = 80 or DEPTNO = 90;
