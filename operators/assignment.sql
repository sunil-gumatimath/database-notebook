SELECT * FROM emp;

-- write a query to display ename hiredate where the emp hired in month oct, july, feb, dec, nov, april, sep, jan, aug, may, jun, march

SELECT ENAME,
       DATE_FORMAT(HIREDATE, '%d-%m-%Y') AS HIREDATE
FROM emp
WHERE MONTHNAME(HIREDATE) IN 
      ('January','February','March','April','May','June',
       'July','August','September','October','November','December');
