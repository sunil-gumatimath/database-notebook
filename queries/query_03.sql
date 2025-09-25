SELECT * FROM emp;

-- Write a query to find manager name from 'SMITH'
SELECT mgr FROM emp
WHERE ename = 'SMITH';

SELECT ename FROM emp
WHERE EMPNO = 7902;

-- Write a query to find manager name for 'ALLEN'

SELECT mgr FROM emp
WHERE ENAME = 'ALLEN';

SELECT ename FROM emp
WHERE mgr = 7698;

-- Write a query to find manager name for 'WARD'
SELECT mgr FROM emp
WHERE ENAME = 'WARD';

SELECT ename FROM emp
WHERE mgr = 7698;

-- Write a query to find manager name for 'JONES'
SELECT mgr FROM emp
WHERE ENAME = 'JONES';

SELECT ename FROM emp
WHERE mgr = 7839;

-- Write a query to find manager for 'MARTIN'
SELECT mgr FROM emp
WHERE ENAME = 'MARTIN';

SELECT ename FROM emp
WHERE mgr = 7698;

-- Write a query to find manager for 'BLAKE'
SELECT mgr FROM emp
WHERE ENAME = 'BLAKE';

SELECT ename FROM emp
WHERE mgr = 7839;

-- Write a query to find manager for 'CLARK'
SELECT mgr FROM emp
WHERE ename = 'CLARK';

SELECT ename FROM emp
WHERE mgr = 7839;

-- Write a query to find manager for 'SCOTT'
SELECT mgr FROM emp
WHERE ENAME = 'SCOTT';

SELECT ename FROM emp
WHERE mgr = 7566;
