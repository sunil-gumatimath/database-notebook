-- An index is a database object used to speed up data retrieval (SELECT queries).
-- It works like an index in a book — instead of scanning every page, the database quickly jumps to the exact location.

-- syntex

CREATE INDEX index_name
ON table_name (column_name);

CREATE INDEX idx_employee_name
ON employees (first_name);

SHOW INDEXES FROM employees;

DROP INDEX idx_employee_name ON employees;

SHOW INDEXES FROM employees;