-- Indexes in SQL
-- =================

-- An index is a database object used to speed up data retrieval (SELECT queries).
-- It works like an index in a book — instead of scanning every page, the database quickly jumps to the exact location.
-- Indexes can significantly improve query performance, especially for large tables and complex queries.
-- However, they come with trade-offs: they consume additional storage space and can slow down INSERT, UPDATE, and DELETE operations.

-- Syntax for Creating an Index
-- =============================

-- Basic syntax to create an index:
CREATE INDEX index_name
ON table_name (column_name);

-- You can also create composite indexes on multiple columns:
-- CREATE INDEX index_name ON table_name (column1, column2);

-- Example: Creating an Index
-- ==========================

-- Create an index named 'idx_employee_name' on the 'first_name' column of the 'employees' table
CREATE INDEX idx_employee_name
ON employees (first_name);

-- Viewing Indexes
-- ===============

-- To view all indexes on a table (MySQL syntax):
SHOW INDEXES FROM employees;

-- Note: The exact syntax for viewing indexes may vary by database system.
-- In PostgreSQL, you might use: \di (in psql) or SELECT * FROM pg_indexes;
-- In SQL Server: SELECT * FROM sys.indexes;

-- Dropping an Index
-- ==================

-- Syntax to drop an index:
DROP INDEX idx_employee_name ON employees;

-- Example: Dropping the Index
-- ===========================

-- Drop the previously created index
DROP INDEX idx_employee_name ON employees;

-- Verify the index has been dropped
SHOW INDEXES FROM employees;

-- Additional Notes
-- ================

-- Best Practices:
-- - Create indexes on columns frequently used in WHERE clauses, JOIN conditions, or ORDER BY clauses.
-- - Avoid over-indexing, as each index requires maintenance during data modifications.
-- - Consider the selectivity of the column: indexes are most effective on columns with high cardinality (many unique values).
-- - Monitor index usage and performance to ensure they provide the expected benefits.
