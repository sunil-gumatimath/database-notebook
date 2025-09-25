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

-- Write a query to find manager for 'KING'
SELECT mgr FROM emp
WHERE ENAME = 'KING';

SELECT ename FROM emp
WHERE mgr IS NULL;

-- Write a query to find manager for 'TURNER'
SELECT mgr FROM emp
WHERE ENAME = 'TURNER';

SELECT ename FROM emp
WHERE mgr = 7698;

-- Write a query to find manager for 'ADAMS'
SELECT mgr FROM emp
WHERE ENAME = 'ADAMS';

SELECT ename FROM emp
WHERE mgr = 7788;

-- Write a query to find manager for 'JAMES'
SELECT mgr FROM emp
WHERE ENAME = 'JAMES';

SELECT ename FROM emp
WHERE mgr = 7698;

-- Write a query to find manager for 'FORD'
SELECT mgr FROM emp
WHERE ENAME = 'FORD';

SELECT ename FROM emp
WHERE mgr = 7566;

-- Write a query to find manager for 'MILLER'
SELECT mgr FROM emp
WHERE ENAME = 'MILLER';

SELECT ename FROM emp
WHERE mgr = 7782;
