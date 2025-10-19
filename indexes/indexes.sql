-- Indexes in SQL
-- ===============

-- What is an Index?
-- =================

-- An index is a database object used to speed up data retrieval (SELECT queries).
-- It works like an index in a book — instead of scanning every page, the database quickly jumps to the exact location.
-- Indexes improve query performance but use extra storage and can slow down data modifications.

-- Why Use Indexes?
-- ================

-- Speed up SELECT queries
-- Improve performance on large tables
-- Useful for WHERE, JOIN, and ORDER BY operations

-- Creating Indexes
-- ================

-- Syntax:
CREATE INDEX index_name
ON table_name (column_name);

-- For composite indexes (multiple columns):
CREATE INDEX index_name ON table_name (column1, column2);

-- Example: Creating an Index
-- ==========================

CREATE INDEX idx_employee_name
ON employees (first_name);

-- Viewing Indexes
-- ===============

-- To view indexes on a table (MySQL syntax):
SHOW INDEXES FROM employees;

-- Note: Syntax may vary by database system.

-- Dropping Indexes
-- ================

-- Syntax:
DROP INDEX index_name ON table_name;

-- Example: Dropping an Index
-- ==========================

DROP INDEX idx_employee_name ON employees;

-- Verify the index is dropped
SHOW INDEXES FROM employees;

-- Command Summary
-- ===============

-- ------------------------------------------------------------------------
--  Command                Example
--  ------------------------------------------------------------------------
--  Create an index        CREATE INDEX index_name ON table_name (column);
--  View indexes           SHOW INDEXES FROM table_name;
--  Drop an index          DROP INDEX index_name ON table_name;
-- ------------------------------------------------------------------------
