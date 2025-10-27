-- 1. Employees with Department Manager Info
-- employees + departments self-join through manager_id
SELECT 
    e1.first_name,
    e1.last_name,
    e2.first_name AS manager_first_name,
    e2.last_name AS manager_last_name 
FROM employees e1 
    INNER JOIN employees e2 ON e1.manager_id = e2.employee_id;

-- 2. Managers Who Work in the Same City as Their Department
-- employees + departments + locations
SELECT DISTINCT e.first_name,e.last_name FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id
    INNER JOIN locations l ON d.location_id = l.location_id
WHERE e.employee_id IN (
    SELECT manager_id FROM employees
);

-- 3. Employees Hired After Their Department Manager
-- employees SELF JOIN employees
SELECT 
    e1.first_name  AS employee_first_name,  
    e1.last_name   AS employee_last_name,
    e2.first_name  AS manager_first_name,
    e2.last_name   AS manager_last_name,
    e1.hire_date   AS employee_hire_date,
    e2.hire_date   AS manager_hire_date
FROM employees e1 JOIN employees e2 ON e1.manager_id = e2.employee_id
WHERE e1.hire_date >  e2.hire_date;

-- 4. Department with the Highest Average Salary
-- employees + departments + subquery join

-- 5. Employees Whose Job Title Changed Over Time
-- employees + job_history + jobs

-- 6. Employees Who Worked Under Multiple Managers
-- job_history SELF JOIN or join with employees

-- 7. Departments Located in the Same Country as "IT" Department
-- departments + locations + countries

-- 8. Countries with More Than 2 Departments
-- departments + locations + countries

-- 9. Employees Sharing the Same Job and Department
-- employees SELF JOIN

-- 10. Employees Who Worked in Multiple Countries
-- employees + job_history + departments + locations + countries

-- 11. Managers Without Any Subordinates
-- employees SELF JOIN

-- 12. Employees With Salary Greater Than Department Average
-- employees + departments

-- 13. Job Titles Not Currently Assigned to Any Employee
-- jobs LEFT JOIN employees

-- 14. Departments and Their Oldest Employee
-- employees + departments with aggregate + join

-- 15. Employees Working in Regions Starting with "A"
-- employees + departments + locations + countries + regions
