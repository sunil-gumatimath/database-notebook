-- 11. Write a query to display city name for the country 'Australia', 'United States of America'
SELECT city FROM locations
WHERE country_id IN (
    SELECT country_id FROM countries
    WHERE country_name IN ('Australia','United States of America')
);

-- 