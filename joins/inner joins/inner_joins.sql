-- List all employee first names and their department names.
-- (Hint: employees + departments)
SELECT e.first_name, d.department_name
FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id;

-- Display employee names and job titles.
-- (Hint: employees + jobs)
SELECT e.first_name, e.last_name, job_title
FROM employees e
    INNER JOIN jobs j ON e.job_id = j.job_id;

-- Show all departments located in the city 'Seattle'.
-- (Hint: departments + locations)
SELECT d.*
FROM departments d
    INNER JOIN locations l ON d.location_id = l.location_id
WHERE l.city = 'Seattle';

-- Find names of employees who work in the same department as 'Neena Kochhar'.
SELECT e.first_name, e.last_name
FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id IN (
    SELECT department_id
    FROM employees
    WHERE first_name = 'Neena'
        AND last_name = 'Kochhar'
);

-- Display job titles and average salary for each job.
-- (Hint: GROUP BY job_id)
SELECT j.job_title, AVG(e.salary)
FROM employees e
    INNER JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title;

-- List employee names, their department names, and city names.
-- (Hint: employees + departments + locations)
SELECT e.first_name, e.last_name, d.department_name, l.city
FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id
    INNER JOIN locations l ON d.location_id = l.location_id;

-- Display employee names and manager names.
-- (Hint: self join on employees)
SELECT e.first_name AS Employee_FirstName,
    e.last_name AS Employee_LastName,
    m.first_name AS Manager_FirstName,
    m.last_name AS Manager_LastName
FROM employees e
    INNER JOIN employees m ON e.manager_id = m.employee_id;

-- Show all employees who have worked in more than one department (use job_history).
SELECT e.employee_id, e.first_name, e.last_name
FROM employees e
    INNER JOIN job_history j ON e.employee_id = j.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name
HAVING COUNT(DISTINCT j.department_id) > 1;

-- Display country names and their corresponding region names.
SELECT c.country_name, r.region_name
FROM countries c
    INNER JOIN regions r ON c.region_id = r.region_id; 

-- List all employees along with their job title and department location (city).
-- (Hint: employees + jobs + departments + locations)
SELECT e.first_name, e.last_name, j.job_title, d.department_name, l.city
FROM employees e
    INNER JOIN jobs j ON e.job_id = j.job_id
    INNER JOIN departments d ON e.department_id = d.department_id
    INNER JOIN locations l ON d.location_id = l.location_id;

-- Find the names of employees and their managers’ job titles.
-- (Hint: self join on employees + jobs)
SELECT e.first_name AS Employee_FirstName,
    e.last_name AS Employee_LastName,
    m.first_name AS Manager_FirstName,
    m.last_name AS Manager_LastName,
    j.job_title AS Manager_JobTitle
FROM employees e
    INNER JOIN employees m ON e.manager_id = m.employee_id
    INNER JOIN jobs j ON m.job_id = j.job_id;

-- Display all departments along with the total number of employees in each department.
-- (Hint: employees + departments, use GROUP BY)
SELECT d.department_name, COUNT(e.employee_id) AS total_employees
FROM departments d
    INNER JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- List all employees who earn more than the average salary of their job title.
-- (Hint: employees + jobs, use JOIN and aggregate subquery)
SELECT e.first_name, e.last_name, e.salary, j.job_title
FROM employees e
    INNER JOIN jobs j ON e.job_id = j.job_id
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE job_id = e.job_id
);

-- Show all employees along with the countries of the locations where their department is based.
-- (Hint: employees + departments + locations + countries)
SELECT e.first_name, e.last_name, d.department_name, l.city, c.country_name
FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id
    INNER JOIN locations l ON d.location_id = l.location_id
    INNER JOIN countries c ON l.country_id = c.country_id;

-- Display all job titles along with the names of employees currently holding that job.
-- (Hint: employees + jobs, simple INNER JOIN)
SELECT j.job_title, e.first_name, e.last_name
FROM employees e
    INNER JOIN jobs j ON e.job_id = j.job_id;