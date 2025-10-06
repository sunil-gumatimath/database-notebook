-- Find the department names where the city is 'Seattle'.
-- (Hint: Use departments, locations.)
SELECT department_name FROM departments
WHERE location_id IN (
    SELECT location_id FROM locations
    WHERE city IN ('Seattle')
);

-- Display the employee names who work in the 'IT' department.
-- (Hint: Use employees, departments.)
SELECT first_name FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments
    WHERE department_name IN ('IT')
);

-- Find the job titles of employees who are working in the region 'Europe'.
-- (Hint: Follow region → country → location → department → employee → job.)


-- Display the employee names who are earning more than the average salary of all employees.


-- Find the employees who have the same job_id as 'Steven King'.

-- Display the department name where the maximum salary employee works.

-- Find the employee names whose manager is working in department 90.

-- Display the job titles of employees working in countries where region name is 'Americas'.

-- Find the employee names who were hired before the earliest hired employee in department 60.

-- Display the department names that have at least one employee earning more than 10,000.