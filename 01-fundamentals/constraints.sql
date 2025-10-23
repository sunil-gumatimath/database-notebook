-- NOT NULL
-- Ensures a column must always have a value.
-- Used very often in required fields (like name, email).

-- UNIQUE
-- Makes sure no duplicate values are inserted.
-- Common for email, phone number, username, etc.

-- PRIMARY KEY
-- Uniquely identifies each record in a table.
-- Almost every table has one.

-- FOREIGN KEY
-- Maintains relationships between tables.
-- Enforces referential integrity.

-- CHECK
-- Validates input values (e.g., age > 18, salary > 0).
-- Not as common as above but still important.

-- DEFAULT
-- Automatically assigns a value when none is provided.
-- Common for status fields (Active, Pending).

-- Example table demonstrating various constraints:
CREATE TABLE employee_projects(
    empno INT PRIMARY KEY,
    ename VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(7,2) CHECK(salary > 0),
    status VARCHAR(20) DEFAULT 'active',
    deptno INT,
    FOREIGN KEY (deptno) REFERENCES dept(deptno)
);
