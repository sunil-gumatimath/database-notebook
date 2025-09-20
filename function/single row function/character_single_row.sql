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

