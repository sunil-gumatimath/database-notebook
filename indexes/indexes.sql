-- What is a View?
-- A View is a virtual table based on the result of a SQL query.
-- It does not store data physically; it just displays data from one or more tables.
-- Helps simplify complex queries and restrict access to sensitive data.

-- Why use Views?
-- Simplify complex queries for users
-- Hide certain columns or sensitive data
-- Reuse queries without rewriting them

CREATE VIEW emp_dept_view AS
SELECT e.first_name,e.last_name,d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

SELECT * FROM emp_dept_view;