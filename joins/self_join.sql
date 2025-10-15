-- Display employee names along with their manager names.
-- Display employee names along with their manager names.
SELECT 
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name
FROM employees e
    JOIN employees m ON e.manager_id = m.employee_id;

-- List employees who have the same manager.
SELECT e1.*,e2.* 
FROM employees e1 
    JOIN employees e2 ON e1.manager_id = e2.manager_id
    AND e1.employee_id <> e2.employee_id;

-- Show all managers and the number of employees they manage.
SELECT e1.manager_id,COUNT(e1.employee_id) 
FROM employees e1 JOIN employees e2 ON e1.manager_id = e2.employee_id
GROUP BY e1.manager_id;

-- Display employees whose salary is higher than their manager’s salary.
SELECT 
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name
FROM employees e
JOIN employees m 
    ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;

-- List employees who joined before their manager.
SELECT
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name
FROM employees e JOIN employees m ON e.manager_id = m.employee_id
WHERE e.hire_date < m.hire_date;

-- Show all employees along with their manager’s job ID.
SELECT 
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.job_id AS manager_job_id
FROM employees e JOIN employees m ON e.manager_id = m.employee_id;

-- Display the manager-employee pairs working in the same department.
SELECT 
    m.first_name as managerFirstName,
    m.last_name as managerLastName,
    e.first_name as employeeFirstName,
    e.last_name as employeeLastName
FROM employees e 
JOIN employees m 
    ON e.manager_id = m.employee_id
WHERE e.department_id = m.department_id;

-- Find employees who earn more than their manager.
SELECT e.first_name,e.last_name FROM employees e JOIN employees m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;

-- Show employees whose job title matches their manager’s job title.