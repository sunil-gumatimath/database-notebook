-- Find the employee names who work in the same department as 'David Austin'.
-- (Hint: Use a subquery to get David Austin’s department_id.)


-- Display job titles of employees earning more than 8000.
SELECT job_title FROM jobs
WHERE job_id IN (
    SELECT job_id FROM job_history
    WHERE department_id IN (
        SELECT department_id FROM employees
        WHERE salary > (
            SELECT MAX(salary) FROM employees
        )
    )
);

-- Find the department names where the average salary is greater than 7000.


-- List employees whose salaries are equal to the minimum salary in their department.

-- Find the employee names who do not have a manager (manager_id is null).

-- Display employee names hired in the same month as 'Neena Kochhar'.

-- Find job titles that are not assigned to any employee currently.

-- Display the employee names who work in the same region as 'London'.
-- (Hint: Use locations → countries → regions → employees.)

-- Find employees whose salary is between the lowest and highest salary of the 'Sales' department.

-- Display department names that have more than 5 employees.