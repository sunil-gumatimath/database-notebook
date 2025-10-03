-- Employees
SELECT * FROM employees;
-- Departments
SELECT * FROM departments;
-- Jobs
SELECT * FROM jobs;
-- Locations
SELECT * FROM locations;
-- Countries
SELECT * FROM countries;
-- Regions
SELECT * FROM regions;
-- Job History
SELECT * FROM job_history;

-- Write a query to find dept name for the employee 1st name id donald
SELECT department_name 
FROM departments
WHERE department_id = (
    SELECT department_id 
    FROM employees
    WHERE first_name = 'Donald'
);

-- write a query to find country-name where the employee first name is nancy
SELECT country_name
FROM countries
WHERE country_id = (
    SELECT country_id
    FROM locations
    WHERE location_id = (
        SELECT location_id
        FROM departments
        WHERE department_id = (
            SELECT department_id
            FROM employees
            WHERE first_name = 'Nancy'
        )
    )
);

-- write a query to find regin-name where the employee first_name is julia
SELECT region_name FROM regions
WHERE region_id IN (
    SELECT region_id FROM countries
    WHERE country_id IN (
        SELECT country_id FROM locations
        WHERE location_id IN (
            SELECT location_id FROM departments
            WHERE department_id IN (
                SELECT department_id FROM employees
                WHERE first_name = 'JULIA'
            )
        )
    )
);


-- write a query to find job-title where the employee firstname is elizabeth

-- write a query to find max,min salary given to a desigination where employee first_name is alysaa

-- write a query to find employee details where employee working in dept administration and markiting
