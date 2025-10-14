-- List all possible combinations of employees and departments.
-- (employees × departments)
SELECT e.*,d.* FROM employees e CROSS JOIN departments d;

-- Display every employee with every job title, even if the employee doesn’t hold that job.
-- (employees × jobs)
SELECT e.*,j.* FROM employees e CROSS JOIN jobs j;

-- Show all combinations of departments and locations, even if a department is not assigned to a location.
-- (departments × locations)
SELECT d.*,l.* FROM departments d CROSS JOIN locations l;

-- List every employee with every manager in the company.
-- (employees × employees self join as CROSS JOIN)
SELECT e.first_name,e.last_name,m.first_name,m.last_name 
FROM employees e CROSS JOIN employees m;

-- Display all countries combined with all regions.
-- (countries × regions)
SELECT c.country_name,r.region_name FROM countries c CROSS JOIN regions r;

-- Show every department with every employee who has ever worked in job history.
-- (departments × job_history)
SELECT d.department_name,j.employee_id FROM departments d CROSS JOIN job_history j;

-- List all employees with every city from the locations table.
-- (employees × locations)
SELECT e.*,l.city FROM employees e CROSS JOIN locations l;

-- Display every job with every country in the database.
-- (jobs × countries)

-- Show all combinations of regions and job titles.
-- (regions × jobs)

-- List all employees with every department and location combination.
-- (employees × departments × locations)