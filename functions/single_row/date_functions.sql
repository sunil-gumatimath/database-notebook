| Function                                | Description                                                           | Example                                                    | Result                |
| --------------------------------------- | --------------------------------------------------------------------- | ---------------------------------------------------------- | --------------------- |
| **CURDATE()**                           | Returns current date (no time)                                        | `SELECT CURDATE();`                                        | `2025-09-22`          |
| **CURRENT\_DATE()**                     | Same as `CURDATE()`                                                   | `SELECT CURRENT_DATE();`                                   | `2025-09-22`          |
| **NOW()**                               | Returns current date & time                                           | `SELECT NOW();`                                            | `2025-09-22 23:15:30` |
| **SYSDATE()**                           | Same as `NOW()` in MySQL                                              | `SELECT SYSDATE();`                                        | `2025-09-22 23:15:30` |
| **CURRENT\_TIMESTAMP()**                | Same as `NOW()`                                                       | `SELECT CURRENT_TIMESTAMP();`                              | `2025-09-22 23:15:30` |
| **ADDDATE(date, n)**                    | Adds `n` days to date                                                 | `SELECT ADDDATE('2025-09-22', 10);`                        | `2025-10-02`          |
| **DATE\_ADD(date, INTERVAL expr unit)** | Adds interval to date                                                 | `SELECT DATE_ADD('2025-09-22', INTERVAL 3 MONTH);`         | `2025-12-22`          |
| **DATEDIFF(d1, d2)**                    | Returns difference in days (`d1 - d2`)                                | `SELECT DATEDIFF('2025-09-22','2025-09-01');`              | `21`                  |
| **TIMESTAMPDIFF(unit, d1, d2)**         | Difference in years, months, days                                     | `SELECT TIMESTAMPDIFF(MONTH, '2025-03-22', '2025-09-22');` | `6`                   |
| **LAST\_DAY(date)**                     | Returns last day of month                                             | `SELECT LAST_DAY('2025-09-22');`                           | `2025-09-30`          |
| **DAYNAME(date)**                       | Returns weekday name                                                  | `SELECT DAYNAME('2025-09-22');`                            | `Monday`              |
| **DAYOFWEEK(date)**                     | Returns weekday number (1=Sunday, 7=Saturday)                         | `SELECT DAYOFWEEK('2025-09-22');`                          | `2`                   |
| **DATE\_FORMAT(date, format)**          | Format date in custom way                                             | `SELECT DATE_FORMAT(NOW(), '%d-%M-%Y');`                   | `22-September-2025`   |
| **TRUNCATE(date, unit)**                | MySQL doesn’t have `TRUNC` for dates, but you can use `DATE_FORMAT()` | `SELECT DATE_FORMAT(NOW(), '%Y-%m-01');`                   | `2025-09-01`          |


SELECT
    CURDATE() AS today,
    NOW() AS current_datetime,
    DATE_ADD(CURDATE(), INTERVAL 6 MONTH) AS after_6_months,
    TIMESTAMPDIFF(MONTH, '2025-01-01', CURDATE()) AS months_passed,
    LAST_DAY(CURDATE()) AS last_day_month,
    DATE_FORMAT(NOW(), '%Y-%m-01') AS first_day_month,
    DAYNAME(CURDATE()) AS today_name;

today       | current_datetime     | after_6_months | months_passed | last_day_month | first_day_month | today_name
--------------------------------------------------------------------------------------------------------------
2025-09-22  | 2025-09-22 23:20:00  | 2026-03-22     | 8             | 2025-09-30     | 2025-09-01      | Monday
