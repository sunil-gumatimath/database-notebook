-- Display employee details along with their department name using NATURAL JOIN.
SELECT * FROM employees NATURAL JOIN departments;

-- List all employees with their job titles using NATURAL JOIN between employees and jobs.
SELECT first_name,last_name,job_title FROM employees  NATURAL JOIN jobs;

-- Find all employees who work in locations present in the locations table using NATURAL JOIN.
SELECT first_name,last_name,city FROM employees NATURAL JOIN departments NATURAL JOIN locations;

-- Show department name and manager name using NATURAL JOIN on departments and employees tables.
SELECT department_name,first_name,last_name FROM departments NATURAL JOIN employees;

-- Write a query to display employee name, job title, and department name using NATURAL JOIN on all related tables.
SELECT first_name,last_name,job_title,department_name FROM employees NATURAL JOIN jobs NATURAL JOIN departments; 

-- Retrieve details of employees who have job history records using NATURAL JOIN on employees and job_history.

-- List all employees and their country names using NATURAL JOIN across employees, departments, locations, and countries.

-- Find departments that have at least one employee using NATURAL JOIN.

-- Show job titles and corresponding department names using NATURAL JOIN between jobs and departments.

-- Write a query to display all columns from employees and departments using NATURAL JOIN — and explain the result.