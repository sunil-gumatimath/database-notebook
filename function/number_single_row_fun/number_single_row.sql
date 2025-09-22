-- =============================================
-- NUMBER SINGLE ROW FUNCTIONS
-- =============================================

-- MOD: Get remainder value (dividend, divisor)
-- Used to get remainder value where 1st argument is dividend and 2nd argument is divisor
SELECT MOD(11,2) as result FROM dual;

-- SQRT: Get square root value
-- Used to get square root value from a given number
SELECT SQRT(100) as result FROM dual;

-- POWER: Get exponential value
-- Used to get exponential value
SELECT POWER(2,2) as result FROM dual;

-- ABS: Get absolute value
-- Used to get absolute value
SELECT ABS(-10) as result FROM dual;

-- ROUND: Round number to nearest value
-- Used to round the number to nearest value
SELECT ROUND(2511.25,-6) as result FROM dual;
SELECT ROUND(4321.599,-2) as result FROM dual;

-- TRUNC: Truncate number to specified decimal places
-- Used to truncate the number to lowest value
SELECT TRUNCATE(321.537,1) as result FROM dual;
