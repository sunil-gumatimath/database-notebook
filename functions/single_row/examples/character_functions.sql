-- ========================================
-- CHARACTER SINGLE ROW FUNCTIONS IN SQL
-- ========================================
-- These functions operate on character data and return a single result per row
-- Each function processes one row at a time and returns one output value

-- ========================================
-- 1. CASE CONVERSION FUNCTIONS
-- ========================================

-- UPPER() - Converts all characters to uppercase
SELECT UPPER('sql function') AS upper_case FROM dual;
SELECT UPPER('Hello World') AS upper_example FROM dual;

-- LOWER() - Converts all characters to lowercase
SELECT LOWER('SQL FUNCTION') AS lower_case FROM dual;
SELECT LOWER('Hello World') AS lower_example FROM dual;

-- INITCAP Alternative (MySQL doesn't have INITCAP)
-- Capitalizes first letter of each word
SELECT CONCAT(UPPER(LEFT('hello world', 1)), LOWER(SUBSTRING('hello world', 2))) AS initcap_word FROM dual;

-- ========================================
-- 2. SUBSTRING FUNCTIONS
-- ========================================

-- SUBSTR(string, start_position, length) - Extracts substring
SELECT SUBSTR('Tedz', 1, 3) AS substring_example FROM dual;
SELECT SUBSTR('DATABASE', 1, 4) AS db_example FROM dual;

-- Extract specific positions
SELECT SUBSTR('TED', 1, 2) AS first_two_letters FROM dual;    -- First 2 letters
SELECT SUBSTR('TED', 1, 1) AS first_letter FROM dual;         -- First letter only
SELECT SUBSTR('TED', 3, 1) AS last_letter FROM dual;          -- Last letter
SELECT SUBSTR('TED', 2, 2) AS middle_letters FROM dual;       -- Middle letters

-- ========================================
-- 3. POSITION FINDING FUNCTIONS
-- ========================================

-- INSTR(string, substring, start_position, occurrence) - Returns position of substring
SELECT INSTR('PUSHPA', 'P') AS first_p_position FROM dual;
SELECT INSTR('PUSHPA', 'P', 1, 2) AS second_p_position FROM dual;
SELECT INSTR('BANANA', 'AN') AS an_position FROM dual;

-- LOCATE(substring, string, start_position) - Alternative to INSTR (MySQL)
SELECT LOCATE('P', 'PUSHPA', 2) AS second_p FROM dual;
SELECT LOCATE('AN', 'BANANA', 2) AS an_position FROM dual;

-- ========================================
-- 4. STRING CONCATENATION
-- ========================================

-- CONCAT() - Joins two or more strings
SELECT CONCAT('Hi ', 'World') AS basic_concat FROM dual;
SELECT CONCAT('Hello ', 'World', '!') AS multi_concat FROM dual;

-- CONCAT with table data
SELECT CONCAT('Employee: ', ename) AS employee_greeting FROM emp;
SELECT CONCAT(ename, ' works in department ', deptno) AS employee_info FROM emp;

-- ========================================
-- 5. STRING REPLACEMENT
-- ========================================

-- REPLACE(string, old_substring, new_substring) - Replaces occurrences of substring
SELECT REPLACE('Bangalore', 'B', 'M') AS city_change FROM dual;
SELECT REPLACE('KUSHKA', 'K', 'P') AS letter_change FROM dual;
SELECT REPLACE('PUSHPA', 'PU', 'KU') AS word_change FROM dual;

-- Remove characters by replacing with empty string
SELECT REPLACE('PUSHPA', 'P', '') AS remove_p FROM dual;
SELECT REPLACE('BANANA', 'A', '') AS remove_a FROM dual;

-- ========================================
-- 6. STRING LENGTH AND COUNTING
-- ========================================

-- LENGTH() - Returns the length of string
SELECT LENGTH('Hello World') AS string_length FROM dual;
SELECT LENGTH('') AS empty_length FROM dual;

-- Count occurrences using LENGTH and REPLACE
SELECT LENGTH('PUSHPA') - LENGTH(REPLACE('PUSHPA', 'P', '')) AS p_count FROM dual;
SELECT LENGTH('BANANA') - LENGTH(REPLACE('BANANA', 'A', '')) AS a_count FROM dual;

-- ========================================
-- 7. STRING TRIMMING FUNCTIONS
-- ========================================

-- TRIM([LEADING | TRAILING | BOTH] [characters FROM] string)
SELECT TRIM(BOTH 'M' FROM 'MAMAM') AS trim_both FROM dual;      -- Remove M from both sides
SELECT TRIM(LEADING 'M' FROM 'MAMA') AS trim_leading FROM dual;  -- Remove M from left
SELECT TRIM(TRAILING 'A' FROM 'MANA') AS trim_trailing FROM dual; -- Remove A from right

-- TRIM without specifying direction (removes spaces by default)
SELECT TRIM('   Hello World   ') AS trim_spaces FROM dual;

-- ========================================
-- 8. STRING REVERSAL
-- ========================================

-- REVERSE() - Reverses the characters in a string
SELECT REVERSE('GADAG') AS city_reverse FROM dual;
SELECT REVERSE('TED') AS name_reverse FROM dual;
SELECT REVERSE('BANANA') AS palindrome_check FROM dual;

-- ========================================
-- PRACTICAL EXAMPLES WITH EMPLOYEE TABLE
-- ========================================

-- Case conversion with employee names
SELECT ename, UPPER(ename) AS upper_name, LOWER(ename) AS lower_name FROM emp;

-- Extract parts of employee names
SELECT ename,
       SUBSTR(ename, 1, LENGTH(ename)/2) AS first_half,
       SUBSTR(ename, FLOOR(LENGTH(ename)/2) + 1) AS second_half
FROM emp;

-- Find employees by name patterns
SELECT ename
FROM emp
WHERE SUBSTR(UPPER(ename), 1, 1) IN ('A', 'E', 'I', 'O', 'U'); -- Starts with vowel

SELECT ename
FROM emp
WHERE SUBSTR(UPPER(ename), 1, 1) NOT IN ('A', 'E', 'I', 'O', 'U'); -- Starts with consonant

-- Replace characters in employee names
SELECT ename, REPLACE(ename, 'A', '') AS name_without_a FROM emp;

-- Count specific characters in employee names
SELECT ename, LENGTH(ename) - LENGTH(REPLACE(ename, 'A', '')) AS a_count FROM emp;

-- Reverse employee names
SELECT ename, REVERSE(ename) AS reversed_name FROM emp;

-- ========================================
-- COMMON STRING MANIPULATION TASKS
-- ========================================

-- Extract domain from email (example)
SELECT SUBSTR('user@example.com', INSTR('user@example.com', '@') + 1) AS domain FROM dual;

-- Format phone numbers (example)
SELECT CONCAT('(', SUBSTR('1234567890', 1, 3), ') ', SUBSTR('1234567890', 4, 3), '-', SUBSTR('1234567890', 7)) AS formatted_phone FROM dual;

-- Create initials from full name (example)
SELECT CONCAT(SUBSTR('John Doe', 1, 1), SUBSTR('John Doe', INSTR('John Doe', ' ') + 1, 1)) AS initials FROM dual;

-- Clean up strings (remove extra spaces)
SELECT TRIM(REPLACE('  Hello   World  ', '  ', ' ')) AS cleaned_string FROM dual;


