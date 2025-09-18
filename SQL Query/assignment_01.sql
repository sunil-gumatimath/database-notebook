SELECT * FROM emp;

-- write  a query to display emp details where emp earning salary more than 1000 and less then 2000
SELECT * FROM emp WHERE SAL > 1000 AND SAL < 2000;

-- write a query to display emp details where emp working in deptno in 20 30 50 60 80 90
SELECT * FROM emp 
WHERE DEPTNO = 20 OR DEPTNO = 30 OR DEPTNO = 50 OR DEPTNO = 60 OR DEPTNO = 80 or DEPTNO = 90;

-- write a query to display emp details where emp name is 'SMITH', 'KING', 'MANOJ','MARTIN','RAKSHIT'
SELECT * FROM emp
WHERE ENAME = 'SMITH' or ENAME = 'KING' or ENAME = 'MANOJ' or ENAME = 'MARTIN' OR ENAME = 'RAKSHIT';

-- write a query to display emp details where emp earning more than 1500 and working in deptno 10,20,30,60,90
SELECT * FROM emp
WHERE sal > 1500 AND DEPTNO = 10 or DEPTNO = 20 or DEPTNO = 30 or DEPTNO = 60 or DEPTNO = 90; 

-- write a query to display emp name. emp sal where annual salary more than 15000
SELECT ENAME,SAL FROM emp
WHERE (SAL*12) > 15000;

-- write a query to display emp details where employee working deptno 10,20,30 and employee name 'JONES' 'JAMES' 'SMITH' 'ADAM'
SELECT * FROM emp
WHERE deptno = 10 OR deptno = 20 OR deptno = 30 AND ename = 'JONES' OR ename = 'JAMES' OR ename = 'SMITH' OR ename = 'ADAM';

-- write a query to display emp details except CLERK
SELECT * FROM emp
WHERE job != 'CLERK';

-- write a query to display emp details except deptno 30
SELECT * from emp
where deptno != 30;

-- write aquery to display emp details except SALESMAN and PRESIDENT
SELECT * FROM emp
WHERE JOB != 'SALESMAN' and JOB != 'PRESIDENT';

-- write a query to display emp details except 'SMITH','TURNER','MARTIN','BLAKE'
SELECT * FROM emp
WHERE ename != 'SMITH'AND ename != 'MARTIN' and ename != 'BLAKE' and ename != 'TURNER';