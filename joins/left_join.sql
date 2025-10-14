-- List all employees and their department names, including employees who are not assigned to any department.
-- (employees + departments)
SELECT e.first_name, e.last_name, d.department_name 
FROM employees e 
    LEFT JOIN departments d ON e.department_id = d.department_id;

-- Show all departments and their employees, including departments that have no employees.
-- (departments + employees)
SELECT d.department_name,e.first_name,e.last_name 
FROM departments d 
    LEFT JOIN employees e ON d.department_id = e.department_id;

-- Display all employees and their manager names, including employees who don’t have a manager.
-- (self join on employees)
SELECT e.first_name AS emp_firstName,
       e.last_name AS emp_lastName,
       m.first_name AS manager_firstName,
       m.last_name AS manager_lastName
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;

-- List all departments and their locations (city), including departments where location information is missing.
-- (departments + locations)
SELECT d.department_name,l.city 
FROM departments d 
    LEFT JOIN locations l ON d.location_id = l.location_id;

-- Show all jobs and employees currently assigned to those jobs, including jobs that have no employees yet.
-- (jobs + employees)
SELECT j.job_title,e.first_name,e.last_name 
FROM jobs j 
    LEFT JOIN employees e ON j.job_id = e.job_id;

-- Display all countries and the locations in them, even if some countries have no locations.
-- (countries + locations)
SELECT c.country_name,l.city 
FROM countries c 
    LEFT JOIN locations l ON c.country_id = l.country_id;

-- List all locations and the departments based there, including locations that don’t have any departments.
-- (locations + departments)
SELECT l.city,d.department_name 
FROM locations l 
    LEFT JOIN departments d ON l.location_id = d.location_id;

-- Show all departments and the total salary of their employees. Include departments that have no employees.
-- (departments + employees with GROUP BY)
SELECT d.department_name,SUM(e.salary)
FROM departments d 
    LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Display all employees and their job history (start date, end date), including employees who never changed jobs.
-- (employees + job_history)
SELECT e.first_name,e.last_name,j.start_date,j.end_date 
FROM employees e 
    LEFT JOIN job_history j ON e.employee_id = j.employee_id;

-- List all regions and the countries in them, including regions that don’t have any countries.
-- (regions + countries)