-- Examples of DDL operations:

-- CREATE → Used to create new database objects.
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    budget DECIMAL(10,2) DEFAULT 0
);

-- ALTER → Used to modify existing database objects.
ALTER TABLE emp ADD email VARCHAR(100);
ALTER TABLE emp DROP COLUMN comm;

-- DROP → Used to delete a database object permanently.
DROP TABLE projects;

-- TRUNCATE → Removes all rows from a table but keeps the structure.
TRUNCATE TABLE bonus;

-- RENAME → Changes the name of a database object.
RENAME TABLE bonus TO employee_bonus;

-- Key Points:
-- DDL is structural (focuses on schema, not data).
-- It’s auto-committed (cannot be rolled back in most databases).
-- Used mainly by database administrators and developers to define & maintain schema.
