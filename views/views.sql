-- Views in SQL
-- ============

-- What is a View?
-- ===============

-- A View is a virtual table based on the result of a SQL query.
-- It does not store data physically; it just displays data from one or more tables.
-- Views help simplify complex queries and restrict access to sensitive data.

-- Why Use Views?
-- ==============

-- Simplify complex queries for users
-- Hide certain columns or sensitive data
-- Reuse queries without rewriting them

-- Creating Views
-- ==============

-- Syntax:
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- To replace an existing view:
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Example: Creating a View
-- ========================

CREATE VIEW emp_dept_view AS
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Viewing Data from Views
-- =======================

SELECT * FROM emp_dept_view;

-- Dropping Views
-- ==============

-- Syntax:
DROP VIEW view_name;

-- Example: Dropping a View
-- ========================

DROP VIEW emp_dept_view;

-- Command Summary
-- ===============

-- ------------------------------------------------------------------------
--  Command                Example
--  ------------------------------------------------------------------------
--  Create a view          CREATE VIEW view_name AS SELECT ...
--  Replace existing view  CREATE OR REPLACE VIEW view_name AS SELECT ...
--  See view data          SELECT * FROM view_name;
--  Remove view            DROP VIEW view_name;
-- ------------------------------------------------------------------------
