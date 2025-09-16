-- What is DQL?

-- DQL stands for Data Query Language.
-- It is used to query (fetch/retrieve) the data stored in the database.
-- In SQL, only the SELECT statement is part of DQL.
-- So while DDL defines structure and DML manipulates data, DQL is all about reading data.

SELECT * FROM students;
SELECT * FROM college;

SELECT student_name,email FROM students;

SELECT * FROM students
WHERE age > 20;

SELECT DISTINCT name FROM students;

SELECT COUNT(*) FROM students
WHERE s_status = 'not active';
 
ALTER TABLE college
RENAME COLUMN college_name TO name;

ALTER TABLE students
RENAME COLUMN s_status TO status;