-- employee table
SELECT * FROM emp;

-- write a query to display all the details of employee where employee name is SMITH
SELECT * FROM emp WHERE ename = 'SMITH';

-- write a query to display emp details where emp working in deptno 20
SELECT * FROM emp WHERE DEPTNO = '20';

-- write a query to display ename,salary where emp_eearning less then 2000
SELECT ename,sal FROM emp WHERE SAL < 2000;

-- write a query to display ename,desigination where desigination is 'SALESMAN'
SELECT ename,job FROM emp WHERE job = 'SALESMAN';

-- write query to display all the details of employee where emp working in deptno 10 and 30
SELECT * FROM emp WHERE DEPTNO = 10 OR DEPTNO = 30;

-- write a query to display employee details where employee working designation as 'SALESMAN','CLERK'
SELECT * FROM emp WHERE JOB = 'SALESMAN' or JOB = 'CLERK';

-- write a query to display all the employee details where emp name is 'SMITH' and 'TURNER'
SELECT * FROM emp WHERE ENAME = 'SMITH' or ENAME = 'TURNER';
