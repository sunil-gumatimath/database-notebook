-- ============================================================
-- JOIN PRACTICE QUERIES - SET 02
-- ============================================================
-- Database: HR Schema
-- Topics: INNER JOIN, LEFT JOIN, RIGHT JOIN, Multi-table JOINs
-- Difficulty: Basic to Intermediate
-- Total Questions: 15
-- ============================================================

-- Prerequisites: Load HR schema first
-- mysql -u root -p sql_practice < ../../02-ddl/schemas/hr-schema.sql

-- ============================================================
-- SECTION 1: INNER JOIN BASICS (Questions 1-3)
-- ============================================================

-- Q1. Display employee first name, last name, and their department name.
--     (Use EMPLOYEES and DEPARTMENTS tables)



-- Q2. List all employees with their job titles.
--     Show: employee_id, first_name, last_name, job_title
--     (Use EMPLOYEES and JOBS tables)



-- Q3. Display employee name and the city where they work.
--     Show: first_name, last_name, city
--     (Use EMPLOYEES, DEPARTMENTS, and LOCATIONS tables)



-- ============================================================
-- SECTION 2: LEFT JOIN (Questions 4-6)
-- ============================================================

-- Q4. List ALL departments and their manager names (if they have one).
--     Show: department_name, manager first_name, manager last_name
--     Include departments without managers.
--     (Use DEPARTMENTS and EMPLOYEES tables)



-- Q5. Display ALL employees and their manager names.
--     Show: employee first_name, employee last_name, manager first_name, manager last_name
--     Include employees who don't have managers.
--     (Use EMPLOYEES table with SELF JOIN)



-- Q6. Show ALL countries and the number of locations in each country.
--     Include countries with zero locations.
--     Show: country_name, location_count
--     (Use COUNTRIES and LOCATIONS tables)



-- ============================================================
-- SECTION 3: MULTI-TABLE JOINS (Questions 7-10)
-- ============================================================

-- Q7. List employees with their department name, job title, and city.
--     Show: first_name, last_name, department_name, job_title, city
--     (Use EMPLOYEES, DEPARTMENTS, JOBS, LOCATIONS tables)



-- Q8. Display employee details with full location information.
--     Show: first_name, last_name, department_name, city, state_province, country_name
--     (Use EMPLOYEES, DEPARTMENTS, LOCATIONS, COUNTRIES tables)



-- Q9. List all employees in the 'Americas' region.
--     Show: first_name, last_name, department_name, country_name
--     (Use EMPLOYEES, DEPARTMENTS, LOCATIONS, COUNTRIES, REGIONS tables)



-- Q10. Display employees earning more than their job's minimum salary.
--      Show: first_name, last_name, salary, min_salary, job_title
--      Also show the difference between their salary and minimum salary.
--      (Use EMPLOYEES and JOBS tables)



-- ============================================================
-- SECTION 4: JOINS WITH AGGREGATIONS (Questions 11-13)
-- ============================================================

-- Q11. Show each department with the count of employees working in it.
--      Show: department_name, employee_count
--      Include departments with zero employees.
--      Order by employee_count descending.
--      (Use DEPARTMENTS and EMPLOYEES tables)



-- Q12. Display the average salary per job title.
--      Show: job_title, average_salary
--      Round average salary to 2 decimal places.
--      Order by average_salary descending.
--      (Use JOBS and EMPLOYEES tables)



-- Q13. List each country with the total number of employees working there.
--      Show: country_name, total_employees
--      Include only countries that have employees.
--      Order by total_employees descending.
--      (Use COUNTRIES, LOCATIONS, DEPARTMENTS, EMPLOYEES tables)



-- ============================================================
-- SECTION 5: ADVANCED JOINS (Questions 14-15)
-- ============================================================

-- Q14. Find employees who work in the same department as 'Steven King'.
--      Show: first_name, last_name, department_name
--      Exclude 'Steven King' from the results.
--      (Use EMPLOYEES and DEPARTMENTS tables with subquery or self join)



-- Q15. Display employees and their job history (if any).
--      Show: employee first_name, last_name, 
--            job_history job_title, start_date, end_date
--      Include employees who have no job history.
--      Order by employee_id and start_date.
--      (Use EMPLOYEES, JOB_HISTORY, JOBS tables)



-- ============================================================
-- BONUS CHALLENGE QUESTIONS
-- ============================================================

-- BONUS 1: List departments that have more than 5 employees,
--          along with their manager's name and location city.



-- BONUS 2: Find pairs of employees who work in the same department
--          and have the same job title.
--          Show: emp1_name, emp2_name, department_name, job_title
--          Make sure each pair appears only once (emp1_id < emp2_id).



-- ============================================================
-- END OF PRACTICE SET 02
-- ============================================================
