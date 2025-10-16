-- Find the total number of employees.
SELECT COUNT(employee_id) 
FROM employees;

-- Find the average salary of all employees.
SELECT AVG(salary) 
FROM employees;

-- Find the highest and lowest salary.
SELECT MAX(salary),MIN(salary) 
FROM employees;

-- Count employees in each department.
SELECT COUNT(employee_id) 
FROM employees
GROUP BY department_id;

-- List departments having more than 3 employees.
SELECT d.department_name 
FROM employees e 
    INNER JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
    HAVING COUNT(e.employee_id) > 3;

-- Find the total salary paid by each department.
SELECT SUM(salary) FROM employees
GROUP BY department_id;

-- Find job titles with average salary > 10000.
SELECT j.job_title 
FROM jobs j 
    INNER JOIN employees e ON j.job_id = e.job_id
GROUP BY j.job_title
    HAVING AVG(e.salary) > 10000;

-- Find how many employees report to each manager.
SELECT manager_id, COUNT(employee_id) AS employees_reporting
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- Find total salary and employee count by job ID.
SELECT SUM(e.salary) AS total_salary,
        COUNT(e.employee_id) AS employee_count
     FROM employees e
GROUP BY e.job_id;

-- Find department name and number of employees (using NATURAL JOIN).
SELECT department_name , COUNT(employee_id) FROM employees NATURAL JOIN departments
GROUP BY department_name;