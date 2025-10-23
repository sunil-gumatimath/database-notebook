-- Find employee names who work in the same department as 'Neena Kochhar'.
SELECT first_name,last_name FROM employees
WHERE department_id = (
    SELECT department_id FROM employees
    WHERE first_name = 'Neena' AND last_name = 'Kochhar'
);

-- Display job titles of employees who earn less than 5000.
SELECT job_title 
FROM jobs 
WHERE job_id IN (
    SELECT job_id FROM employees
    WHERE salary < 5000
);


-- Find department names that have at least one employee earning more than 12,000.
SELECT department_name FROM departments
WHERE department_id IN (
    SELECT department_id FROM employees
    WHERE salary > 12000
);

-- List employees whose salary is equal to the maximum salary in their department.
SELECT first_name,last_name FROM employees e 
WHERE salary = (
    SELECT MAX(salary) FROM employees
    WHERE department_id = e.department_id
);

-- Find employee names who report to the same manager as 'Steven King'.
SELECT first_name, last_name 
FROM employees
WHERE manager_id = (
    SELECT manager_id 
    FROM employees
    WHERE first_name = 'Steven' AND last_name = 'King'
)
AND first_name <> 'Steven' AND last_name <> 'King';


-- Display employees who were hired after the employee 'Lex De Haan'.
SELECT first_name, last_name 
FROM employees
WHERE hire_date > (
    SELECT hire_date FROM employees
    WHERE first_name = 'Lex' AND last_name = 'De Haan'
);

-- Find job titles that are currently assigned to employees in department 60.
SELECT DISTINCT job_title FROM jobs
WHERE job_id IN (
    SELECT job_id FROM employees
    WHERE department_id = 60
);

-- Display department names where the total salary of employees exceeds 40,000.
SELECT department_name 
FROM departments
WHERE department_id IN (
    SELECT department_id 
    FROM employees
    GROUP BY department_id
    HAVING SUM(salary) > 40000
);


-- Find employees whose job is the same as 'Programmer'.
SELECT first_name, last_name 
FROM employees
WHERE job_id IN (
    SELECT job_id 
    FROM jobs
    WHERE job_title = 'Programmer'
);



-- Display employee names who work in the same location as 'Seattle'.
SELECT first_name, last_name 
FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments
    WHERE location_id IN (
        SELECT location_id FROM locations
        WHERE city = 'Seattle'
    )
);
