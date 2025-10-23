-- Employee Manager Queries
-- This file contains queries to find manager information for all employees

-- General query to view all employees
SELECT * FROM emp;

-- ========================================
-- Manager Queries (Alphabetically Ordered)
-- ========================================

-- ADAMS - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'ADAMS';
SELECT ename FROM emp WHERE mgr = 7788;

-- ALLEN - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'ALLEN';
SELECT ename FROM emp WHERE mgr = 7698;

-- BLAKE - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'BLAKE';
SELECT ename FROM emp WHERE mgr = 7839;

-- CLARK - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'CLARK';
SELECT ename FROM emp WHERE mgr = 7839;

-- FORD - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'FORD';
SELECT ename FROM emp WHERE mgr = 7566;

-- JAMES - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'JAMES';
SELECT ename FROM emp WHERE mgr = 7698;

-- JONES - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'JONES';
SELECT ename FROM emp WHERE mgr = 7839;

-- KING - Find manager information (Top level - no manager)
SELECT mgr FROM emp WHERE ENAME = 'KING';
SELECT ename FROM emp WHERE mgr IS NULL;

-- MARTIN - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'MARTIN';
SELECT ename FROM emp WHERE mgr = 7698;

-- MILLER - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'MILLER';
SELECT ename FROM emp WHERE mgr = 7782;

-- SCOTT - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'SCOTT';
SELECT ename FROM emp WHERE mgr = 7566;

-- SMITH - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'SMITH';
SELECT ename FROM emp WHERE EMPNO = 7902;

-- TURNER - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'TURNER';
SELECT ename FROM emp WHERE mgr = 7698;

-- WARD - Find manager information
SELECT mgr FROM emp WHERE ENAME = 'WARD';
SELECT ename FROM emp WHERE mgr = 7698;
