-- Display employee names along with their manager names.
-- Display employee names along with their manager names.
SELECT 
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;


-- List employees who have the same manager.

-- Show all managers and the number of employees they manage.

-- Display employees whose salary is higher than their manager’s salary.

-- List employees who joined before their manager.

-- Show all employees along with their manager’s job ID.

-- Display the manager-employee pairs working in the same department.

-- List all employees who don’t have a manager (top-level managers).

-- Find employees who earn more than their manager.

-- Show employees whose job title matches their manager’s job title.