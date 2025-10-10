-- List all employee first names and their department names.
-- (Hint: employees + departments)
SELECT e.first_name,d.department_name 
FROM employees e INNER JOIN departments d 
ON e.department_id = d.department_id;

-- Display employee names and job titles.
-- (Hint: employees + jobs)
SELECT e.first_name,e.last_name , job_title 
FROM employees e INNER JOIN jobs j 
ON e.job_id = j.job_id;

-- Show all departments located in the city 'Seattle'.
-- (Hint: departments + locations)

-- Find names of employees who work in the same department as 'Neena Kochhar'.

-- Display job titles and average salary for each job.
-- (Hint: GROUP BY job_id)

-- List employee names, their department names, and city names.
-- (Hint: employees + departments + locations)

-- Display employee names and manager names.
-- (Hint: self join on employees)

-- Show all employees who have worked in more than one department (use job_history).

-- Find department names where no employees are working.

-- Display country names and their corresponding region names.