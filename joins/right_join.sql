-- List all employees and their department names, including departments that have no employees.
-- (employees + departments)
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- Show all departments and the employees working in them, including departments with no employees.
-- (departments + employees)
SELECT d.department_name, e.employee_id, e.first_name, e.last_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- Display all employees and their manager names, including managers who have no employees reporting to them.
-- (self join on employees)
SELECT e.employee_id, e.first_name, e.last_name, m.employee_id AS manager_id, m.first_name AS manager_first_name, m.last_name AS manager_last_name
FROM employees e
RIGHT JOIN employees m ON e.manager_id = m.employee_id;

-- List all departments and their locations (city), including locations that have no departments.
-- (departments + locations)
SELECT d.department_name, l.location_id, l.city
FROM departments d
RIGHT JOIN locations l ON d.location_id = l.location_id;

-- Show all jobs and the employees currently holding those jobs, including jobs that have no employees.
-- (jobs + employees)
SELECT j.job_title, e.employee_id, e.first_name, e.last_name
FROM employees e
RIGHT JOIN jobs j ON e.job_id = j.job_id;

-- Display all countries and the locations in them, including locations that don't belong to any country (if such exists).
-- (countries + locations)
SELECT c.country_name, l.location_id, l.city
FROM countries c
RIGHT JOIN locations l ON c.country_id = l.country_id;

-- List all locations and the departments based there, including departments that are not assigned to any location.
-- (locations + departments)
SELECT l.city, d.department_id, d.department_name
FROM locations l
RIGHT JOIN departments d ON l.location_id = d.location_id;

-- Show all departments and the total salary of employees, including departments with no employees.
-- (departments + employees with GROUP BY)
SELECT d.department_name, SUM(e.salary) AS total_salary, COUNT(e.employee_id) AS employee_count
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Display all employees and their job history (start date, end date), including job history entries that are not linked to any employee.
-- (employees + job_history)
SELECT e.employee_id, e.first_name, e.last_name, jh.start_date, jh.end_date, jh.job_id
FROM employees e
RIGHT JOIN job_history jh ON e.employee_id = jh.employee_id;

-- List all regions and the countries in them, including countries not assigned to any region.
-- (regions + countries)
SELECT r.region_name, c.country_id, c.country_name
FROM regions r
RIGHT JOIN countries c ON r.region_id = c.region_id;
