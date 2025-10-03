-- =============================================================================
-- EMPLOYEES DATABASE - SUBQUERY ASSIGNMENTS
-- =============================================================================

-- =============================================================================
-- TABLE OVERVIEWS
-- =============================================================================

-- Employees table
SELECT * FROM employees;

-- Departments table
SELECT * FROM departments;

-- Jobs table
SELECT * FROM jobs;

-- Locations table
SELECT * FROM locations;

-- Countries table
SELECT * FROM countries;

-- Regions table
SELECT * FROM regions;

-- Job History table
SELECT * FROM job_history;

-- =============================================================================
-- SUBQUERY EXERCISES
-- =============================================================================

-- 1. Write a query to find department name for the employee with first name 'Donald'
SELECT department_name
FROM departments
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE first_name = 'Donald'
);

-- 2. Write a query to find country name where the employee first name is 'Nancy'
SELECT country_name
FROM countries
WHERE country_id IN (
    SELECT country_id
    FROM locations
    WHERE location_id IN (
        SELECT location_id
        FROM departments
        WHERE department_id IN (
            SELECT department_id
            FROM employees
            WHERE first_name = 'Nancy'
        )
    )
);

-- 3. Write a query to find region name where the employee first name is 'Julia'
SELECT region_name
FROM regions
WHERE region_id IN (
    SELECT region_id
    FROM countries
    WHERE country_id IN (
        SELECT country_id
        FROM locations
        WHERE location_id IN (
            SELECT location_id
            FROM departments
            WHERE department_id IN (
                SELECT department_id
                FROM employees
                WHERE first_name = 'JULIA'
            )
        )
    )
);

-- 4. Write a query to find job title where the employee first name is 'Elizabeth'
SELECT job_title
FROM jobs
WHERE job_id IN (
    SELECT job_id
    FROM employees
    WHERE first_name = 'Elizabeth'
);

-- 5. Write a query to find max and min salary for the designation where employee first name is 'Alyssa'
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
WHERE job_id IN (
    SELECT job_id
    FROM employees
    WHERE first_name = 'Alyssa'
);

-- 6. Write a query to find employee details where employees are working in 'Administration' and 'Marketing' departments
SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name IN ('Administration', 'Marketing')
);

-- 7. Write a query to find employee details where employees are working in city 'Seattle' and 'Toronto'
SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments
    WHERE location_id IN (
        SELECT location_id FROM locations
        WHERE city IN ('Seattle','Toronto')
    )
);

-- 8. Write a query to find employee details where employees are working in country 'United Kingdom', 'India', 'Germany'
SELECT * FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments
    WHERE location_id IN (
        SELECT location_id FROM locations
        WHERE country_id IN (
            SELECT country_id FROM countries
            WHERE country_name IN ('United Kingdom','India','Germany')
        )
    )
);

-- 9. Write a query to find employee details where the region is 'Asia', 'Europe'
SELECT * FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments
    WHERE location_id IN (
        SELECT location_id FROM locations
        WHERE country_id IN (
            SELECT country_id FROM countries
            WHERE region_id IN (
                SELECT region_id FROM regions
                WHERE region_name IN ('Asia','Europe')
            )
        )
    )
);
