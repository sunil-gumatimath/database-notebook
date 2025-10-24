-- 1. Employees with Department Manager Info

-- Display employee names, their department names, and the manager of that department.
-- → (employees + departments self-join through manager_id)

-- 🔹 2. Managers Who Work in the Same City as Their Department

-- List all managers whose department location city matches their work location.
-- → (employees + departments + locations)

-- 🔹 3. Employees Hired After Their Department Manager

-- Show employee names and their managers’ names for cases where the employee was hired after the manager.
-- → (employees SELF JOIN employees)

-- 🔹 4. Department with the Highest Average Salary

-- Find the department that has the highest average employee salary.
-- → (employees + departments + subquery join)

-- 🔹 5. Employees Whose Job Title Changed Over Time

-- List employees who have different job titles in job_history compared to their current job.
-- → (employees + job_history + jobs)

-- 🔹 6. Employees Who Worked Under Multiple Managers

-- Find employees who were managed by different managers in the past.
-- → (job_history SELF JOIN or join with employees)

-- 🔹 7. Departments Located in the Same Country as “IT” Department

-- Display all department names that are in the same country as the IT department.
-- → (departments + locations + countries)

-- 🔹 8. Countries with More Than 2 Departments

-- List all countries that have more than two departments.
-- → (departments + locations + countries)

-- 🔹 9. Employees Sharing the Same Job and Department

-- Display employees who share both the same job ID and department ID.
-- → (employees SELF JOIN)

-- 🔹 10. Employees Who Worked in Multiple Countries

-- List employees who have worked in departments located in different countries (based on job_history).
-- → (employees + job_history + departments + locations + countries)

-- 🔹 11. Managers Without Any Subordinates

-- Find all managers who don’t have any employees reporting to them.
-- → (employees SELF JOIN)

-- 🔹 12. Employees With Salary Greater Than Department Average

-- Show employee names, department names, and salaries for those who earn above their department’s average.
-- → (employees + departments)

-- 🔹 13. Job Titles Not Currently Assigned to Any Employee

-- List all job titles that no employee currently holds but exist in the jobs table.
-- → (jobs LEFT JOIN employees)

-- 🔹 14. Departments and Their Oldest Employee

-- Show each department’s name along with the employee who was hired earliest in that department.
-- → (employees + departments with aggregate + join)

-- 🔹 15. Employees Working in Regions Starting with “A”

-- List all employees whose departments are located in regions where the region name starts with ‘A’.
-- → (employees + departments + locations + countries + regions)