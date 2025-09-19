SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;
SELECT * FROM bonus;



-- sal column
SELECT sal FROM emp;

-- write a query to calculate the annual salary of emp
SELECT (sal*12) AS year_sal from emp;

-- write a query to find half-term salary of emp
SELECT (sal*6) AS half_term FROM emp;

-- write a query to find quarter salary
SELECT (sal*3) AS quarter_salary from emp;

-- write a query to display emp name,salary with bonus of 1000
SELECT ename,sal + 1000 as bonus_sal FROM emp;

-- write a query to find salary with increment by 10%
SELECT sal+(sal*10/100) as increment FROM emp;

-- annual increment with 10%
SELECT (sal*12) + (sal * 12 * 10/100) as annual_increment FROM emp;

-- write a query to display employee_name designation
SELECT ename,job FROM emp;

-- write a query to display employee_name and quarter_sal,half_term and annual_sal
SELECT ename , (sal*3) as quarter_sal, (sal*6) as half_term, (sal*12) as annual_sal FROM emp;

-- write a query to display emp_name,emp_designation,sal with bonus of 1000rs
SELECT ename,job,sal+1000 as bonus FROM emp;

-- write a query to display all details of employee along with annual salary
SELECT emp.*,sal*12 FROM emp;

-- write a query to alias/display employee as 'popstar'
SELECT ename as pop_star FROM emp;
