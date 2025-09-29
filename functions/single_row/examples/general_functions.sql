/* ================================================
   SQL GENERAL SINGLE ROW FUNCTIONS EXAMPLES
   ================================================

   This file demonstrates various general single row functions
   commonly used in SQL databases like MySQL, PostgreSQL, etc.

   Functions covered:
   - IFNULL / ISNULL / NVL (NULL value replacement)
   - NULLIF (Return NULL if two expressions are equal)
   - COALESCE (Return first non-NULL value)
   - CASE (Conditional logic)
   - IF (Simple conditional function)
   ================================================ */

-- ================================================
-- 1. IFNULL / ISNULL / NVL FUNCTIONS
-- Purpose: Replace NULL values with specified value
-- ================================================

SELECT
    IFNULL(NULL, 'No Value')         AS ifnull_example,
    IFNULL('', 'Empty String')       AS ifnull_empty_string,
    IFNULL(100, 'Default')           AS ifnull_number;

-- ================================================
-- 2. NULLIF FUNCTION
-- Purpose: Return NULL if two expressions are equal
-- ================================================

SELECT
    NULLIF(10, 10)                   AS nullif_equal,
    NULLIF(10, 20)                   AS nullif_not_equal,
    NULLIF('Hello', 'Hello')         AS nullif_string_equal,
    NULLIF('Hello', 'World')         AS nullif_string_not_equal;

-- ================================================
-- 3. COALESCE FUNCTION
-- Purpose: Return first non-NULL value from list
-- ================================================

SELECT
    COALESCE(NULL, NULL, 'MySQL')    AS coalesce_example,
    COALESCE(NULL, 'PostgreSQL', 'MySQL') AS coalesce_with_null_first,
    COALESCE('Oracle', 'PostgreSQL', 'MySQL') AS coalesce_no_null,
    COALESCE(NULL, NULL, NULL, 'Default') AS coalesce_all_null;

-- ================================================
-- 4. CASE STATEMENT
-- Purpose: Conditional logic with multiple conditions
-- ================================================

SELECT
    CASE
        WHEN 85 >= 90 THEN 'A'
        WHEN 85 >= 75 THEN 'B'
        WHEN 85 >= 60 THEN 'C'
        ELSE 'F'
    END                              AS case_grade_system,
    CASE
        WHEN salary > 50000 THEN 'High'
        WHEN salary > 30000 THEN 'Medium'
        ELSE 'Low'
    END                              AS case_salary_category
FROM (
    SELECT 85 as score, 45000 as salary
) as temp_data;

-- ================================================
-- 5. IF FUNCTION
-- Purpose: Simple conditional logic (IF condition, true_value, false_value)
-- ================================================

SELECT
    IF(100 > 50, 'Yes', 'No')        AS if_simple_comparison,
    IF(LENGTH('Hello') > 3, 'Long', 'Short') AS if_string_length,
    IF(price > 100, 'Expensive', 'Affordable') AS if_price_check
FROM (
    SELECT 'Hello' as name, 150 as price
) as temp_data;

-- ================================================
-- COMBINED EXAMPLE: Practical Usage Scenario
-- ================================================

SELECT
    employee_id,
    first_name,
    last_name,
    COALESCE(department, 'No Department') as department,
    CASE
        WHEN salary > 100000 THEN 'Executive'
        WHEN salary > 75000 THEN 'Senior'
        WHEN salary > 50000 THEN 'Mid-level'
        ELSE 'Junior'
    END as position_level,
    IF(commission_pct IS NULL, 'No Commission', CONCAT(ROUND(commission_pct * 100, 2), '%')) as commission_status
FROM (
    SELECT
        1 as employee_id,
        'John' as first_name,
        'Doe' as last_name,
        NULL as department,
        80000 as salary,
        0.15 as commission_pct
) as employees;

-- ================================================
-- NOTES:
-- - IFNULL is MySQL/PostgreSQL syntax
-- - ISNULL is SQL Server syntax
-- - NVL is Oracle syntax
-- - COALESCE is ANSI standard and works across all databases
-- - CASE statements are more portable than IF functions
-- ================================================


