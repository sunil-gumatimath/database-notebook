-- CREATE → Used to create new database objects.
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- ALTER → Used to modify existing database objects.
ALTER TABLE student ADD age INT;
ALTER TABLE student DROP COLUMN email;

-- DROP → Used to delete a database object permanently.
DROP TABLE student;

-- TRUNCATE → Removes all rows from a table but keeps the structure.
TRUNCATE TABLE student;

-- RENAME → Changes the name of a database object.
RENAME TABLE student TO learners;

-- Key Points:
-- DDL is structural (focuses on schema, not data).
-- It’s auto-committed (cannot be rolled back in most databases).
-- Used mainly by database administrators and developers to define & maintain schema.