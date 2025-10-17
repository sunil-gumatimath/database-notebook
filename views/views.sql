-- What is a View?
-- A View is a virtual table based on the result of a SQL query.
-- It does not store data physically; it just displays data from one or more tables.
-- Helps simplify complex queries and restrict access to sensitive data.

-- Why use Views?
-- Simplify complex queries for users
-- Hide certain columns or sensitive data
-- Reuse queries without rewriting them

-- Create a view
CREATE VIEW emp_dept_view AS
SELECT e.first_name,e.last_name,d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- See view data
SELECT * FROM emp_dept_view;

-- Remove view
DROP VIEW emp_dept_view;

-- Command Summary
-- ------------------------------------------------------------------------
--  Command                Example                                          
--  ------------------------------------------------------------------------
--  Create a view          `CREATE VIEW view_name AS SELECT ...`            
--  Replace existing view  `CREATE OR REPLACE VIEW view_name AS SELECT ...` 
--  See view data          `SELECT * FROM view_name;`                       
--  Remove view            `DROP VIEW view_name;`
