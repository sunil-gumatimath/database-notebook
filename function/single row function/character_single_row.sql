SELECT * FROM emp;

-- character single row function
-- it is a type of single row function used to perform operations on characters

-- upper('args')
-- lower('args')
-- initcap('arg')  will not work in MYSQL
-- substr(string,start,length)
-- instr(string,substring)

-- Converts string to uppercase.
SELECT upper('sql function') as upper_case FROM dual;

-- Converts string to lowercase.
SELECT lower('SQL FUNCTION') as lower_case FROM dual;

-- SQL Server (capitalise first letter of each word)
SELECT CONCAT(UPPER(LEFT('hello world',1)), LOWER(SUBSTRING('hello world',2))) AS initcap_word;

-- substr
SELECT SUBSTR('Tedz', 1, 3);

-- write a query to extract first 2 letters from 'TED'
SELECT SUBSTR('TED',1,2) as first_two_letter;

-- write a query to extract 1st letter from TED
SELECT SUBSTR('TED',1,1) as first_letter;

-- write a query to extract last letter from 'TED'
SELECT SUBSTR('TED',3,1) as last_letter;

-- write a query to find first half of employee name
SELECT SUBSTR(ename,1,length(ename)/2) FROM emp;

-- write a query to find second half name of emp
SELECT SUBSTR(ename, FLOOR(length(ename)/2) + 1) AS second_half
FROM emp;

-- write a query to find where ename starts with conslant character
SELECT ename FROM emp
WHERE SUBSTR(ename,1,1) NOT IN ('A','E','I','O','U');

-- write a query to find where ename starts with vowels character
SELECT ename FROM emp
WHERE SUBSTR(ENAME,1,1) IN ('A','E','I','O','U');

-- REPLACE
-- replace character single row function used to replace the character from original string

-- replace Bangalore to Mangalore
SELECT REPLACE('Bangalore','B','M') as replaced_string;

-- 