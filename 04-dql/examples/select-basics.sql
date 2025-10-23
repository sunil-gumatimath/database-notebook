-- What is DQL?

-- DQL stands for Data Query Language.
-- It is used to query (fetch/retrieve) the data stored in the database.
-- In SQL, only the SELECT statement is part of DQL.
-- So while DDL defines structure and DML manipulates data, DQL is all about reading data.

SELECT * FROM emp;
SELECT * FROM dept;

SELECT ename, sal FROM emp;

SELECT * FROM emp
WHERE sal > 2000;

SELECT COUNT(*) FROM emp
WHERE deptno = 20;

ALTER TABLE dept
ADD CONSTRAINT dept_name_unique UNIQUE (dname);

ALTER TABLE emp
ADD CONSTRAINT emp_email_unique UNIQUE (ename);
