-- Assignment

-- write a query to delete 1st letter from emp name
SELECT SUBSTRING(ename, 2) AS new_name FROM emp;

-- write a query to delete last letter from emp name
SELECT SUBSTRING(ename, 1, LENGTH(ename)-1) AS new_name
FROM emp;

-- write a query to reverse all employee
SELECT REVERSE(ename) FROM emp;

-- write a query to find 1st occurance 'A' index in emp name
SELECT LOCATE('A', ename) AS first_a_pos
FROM emp;


-- write a query to find no of vowels character in 'EDUCATION'
SELECT LENGTH('EDUCATION')
       - LENGTH(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE('EDUCATION','A','')
                                                ,'E','')
                                                ,'I','')
                                                ,'O','')
                                                ,'U','')) AS vowel_count;


-- write a query to find consonant character in 'EDUCATION'
SELECT LENGTH('EDUCATION')
       - (LENGTH('EDUCATION')
          - LENGTH(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE('EDUCATION','A','')
                                                        ,'E','')
                                                        ,'I','')
                                                        ,'O','')
                                                        ,'U','')))
       AS consonant_count;
