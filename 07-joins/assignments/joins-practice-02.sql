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
SELECT
    m.first_name,
    m.last_name
FROM
    departments d
JOIN
    employees m ON d.manager_id = m.employee_id -- Manager of the department
JOIN
    locations l_managed ON d.location_id = l_managed.location_id -- Location of the managed department
JOIN
    departments d_manager_works_in ON m.department_id = d_manager_works_in.department_id -- Department the manager works in
JOIN
    locations l_manager_works_in ON d_manager_works_in.location_id = l_manager_works_in.location_id -- Location of the department the manager works in
WHERE
    l_managed.city = l_manager_works_in.city;

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
SELECT d.department_id,d.department_name, AVG(e.salary) AS avg_salary FROM employees e INNER JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_id,d.department_name
ORDER BY avg_salary DESC
LIMIT 1;

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
