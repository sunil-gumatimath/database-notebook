-- Assignment

SELECT * FROM emp;
SELECT * FROM dept;

-- Write a query to display 'SMITH' mgr name

SELECT ename 
FROM emp
WHERE empno = (
    SELECT mgr 
    FROM emp
    WHERE ename = 'SMITH'
);

-- Write a query to display SMITH location
SELECT loc
FROM dept
WHERE deptno=(
    SELECT deptno
    FROM emp
    WHERE ename = 'SMITH'
);

-- “Write a query to display the details of managers for employees ‘SMITH’, ‘TURNER’, and ‘MARTIN’.”
SELECT * 
FROM emp
WHERE empno in (
    SELECT mgr
    FROM emp
    WHERE ename in ('SMITH','TURNER','MARTIN')
);

