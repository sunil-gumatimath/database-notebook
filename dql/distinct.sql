-- Notes
-- DISTINCT applies to all selected columns together (not each individually).
-- Equivalent to GROUP BY (without aggregation), but usually DISTINCT is simpler.
SELECT DISTINCT name FROM students;