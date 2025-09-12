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

CREATE TABLE college(
    college_id INT PRIMARY KEY,
    college_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) DEFAULT 'unknow'
);

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    sname VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK(age >= 18),
    is_active BOOLEAN DEFAULT 0
    college_id INT,
    FOREIGN KEY (college_id) REFERENCES college(college_id)
);