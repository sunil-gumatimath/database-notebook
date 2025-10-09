-- Find employee names who work in the same department as 'Neena Kochhar'.
SELECT first_name,last_name FROM employees
WHERE department_id = (
    SELECT department_id FROM employees
    WHERE first_name = 'Neena' AND last_name = 'Kochhar'
);

-- Display job titles of employees who earn less than 5000.
SELECT job_title FROM jobs
WHERE job_id IN (
    SELECT job_id FROM job_history
    WHERE employee_id IN (
        SELECT employee_id FROM employees
        WHERE salary < 5000
    )
);

-- Find department names that have at least one employee earning more than 12,000.


-- List employees whose salary is equal to the maximum salary in their department.

-- Find employee names who report to the same manager as 'Steven King'.

-- Display employees who were hired after the employee 'Lex De Haan'.

-- Find job titles that are currently assigned to employees in department 60.

-- Display department names where the total salary of employees exceeds 40,000.

-- Find employees whose job is the same as 'IT Programmer'.

-- Display employee names who work in the same location as 'Seattle'.