SELECT * FROM emp;

-- write a query to display ename hiredate where the emp hired in month oct, july, feb, dec, nov, april, sep, jan, aug, may, jun, march

SELECT ENAME,
       DATE_FORMAT(HIREDATE, '%d-%m-%Y') AS HIREDATE
FROM emp
WHERE MONTHNAME(HIREDATE) IN 
      ('January','February','March','April','May','June',
       'July','August','September','October','November','December');

-- write a query to display where emp hired in year 81, 82, 83, 84, 85

SELECT ENAME FROM emp
WHERE TO_CHAR(HIREDATE,'YYYY') IN ('1981','1982','1983','1984','1985');

SELECT ENAME
FROM emp
WHERE YEAR(STR_TO_DATE(LEFT(HIREDATE,19), '%Y-%m-%dT%H:%i:%s')) IN (1981,1982,1983,1984,1985);

-- write a query to display emp details where ename starts with vowels charcter (a, e, i, o, u)
SELECT * FROM emp
WHERE ENAME like 'A%' OR ENAME like 'E%' OR ENAME like 'I%' OR ENAME like 'O%' OR ENAME like 'U%';

SELECT * FROM emp
WHERE ename REGEXP '^[AEIOU]';

-- write a query to display emp details where ename starts with consolent charcter
SELECT * FROM emp
WHERE ename NOT LIKE 'A%' AND ename NOT LIKE 'E%' AND ename NOT LIKE 'I%' AND ename NOT LIKE 'O%' AND ename NOT LIKE 'U%';

SELECT * 
FROM emp
WHERE ENAME REGEXP '^[^AEIOU]';

-- write a query to display emp detials where sal is more than 800 and less than 5000 and working in dept no 10, 20, 40, 50, 60
SELECT * FROM emp
WHERE SAL BETWEEN 800 AND 5000 AND deptno in (10,20,40,50,60);

