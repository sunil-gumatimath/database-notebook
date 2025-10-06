-- =================================================================
-- SUBQUERY ASSIGNMENTS
-- =================================================================

-- 11. Write a query to display city name for the country 'Australia', 'United States of America'
SELECT city FROM locations
WHERE country_id IN (
    SELECT country_id FROM countries
    WHERE country_name IN ('Australia','United States of America')
);


-- 12. Write a query to display dept names where the city is 'Roma','South San Francisco','Southlake','Seattle'
SELECT department_name FROM departments
WHERE location_id IN (
    SELECT location_id FROM locations
    WHERE city IN ('Roma','South San Francisco','Southlake','Seattle')
);



-- 13. Write a query to display employee details where job title is 'Accountant' and 'Programmer'
SELECT * FROM employees
WHERE job_id IN (
    SELECT job_id FROM jobs
    WHERE job_title IN ('Accountant','Programmer')
);



-- 14. Write a query to find job title for the employees who are working in region 'ASIA'
