-- Departments 10 or 20 Employees
-- List all employees who belong to department 10 or department 20 using UNION.
SELECT first_name,last_name,department_id FROM employees
WHERE department_id = 10
UNION
SELECT first_name,last_name,department_id FROM employees
WHERE department_id = 20;


-- Employee First Names in Two Locations
-- Get all employees’ first names who work in locations 100 or 200 using UNION.

-- Distinct Job IDs from Employees and Job History
-- Find all distinct job_id values present in employees or job_history tables.

-- Employees With Specific Salaries
-- List employees earning > 10000 or < 5000 using a UNION.

-- First Names of Managers or Executives
-- Get first names of employees who are managers or have executive job titles using UNION.

-- Employee Names from Two Departments
-- Combine first and last names of employees from department 30 and department 40 using UNION.

-- Employee IDs in Two Locations
-- List employee IDs working in New York or Chicago using UNION.

-- Employees and Job History IDs
-- Get all employee IDs from employees table and job_history table using UNION.

-- Employees With High or Low Salary
-- List first names of employees earning > 12000 or < 4000 using UNION.

-- Department Names with Employees or Managers
-- List all department names that have employees or managers using UNION.

