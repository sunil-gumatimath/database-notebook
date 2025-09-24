-- Data Type in SQL (most used)

-- CHAR(size)
-- char is used to store numbers, alphabets , special characters
-- fixed length memory allocation
-- example
CREATE TABLE employee(
    USN CHAR(8),
    pan_card CHAR(12)
);

-- VARCHAR (size)
-- varchar is used to store numbers, alphabets , special characters
-- it can store up to 2000 bytes
-- no memory will be wasted
-- example
CREATE TABLE employee(
    ename VARCHAR(100),
    emp_location VARCHAR(100)
);

-- INT
-- SQL data type used to store numbers
-- example
CREATE TABLE employee(
    emp_id INT,
    emp_phone INT
);

-- DATE 
-- used to store the date
-- fixed size of 7 bytes
CREATE TABLE employee(
    emp_hiredate DATE
);

-- TIMESTAMP
-- used to store the date and time
CREATE TABLE employee(
    created_at TIMESTAMP
);

-- DECIMAL 
-- used to store the decimal numbers
CREATE TABLE employee(
    cost DECIMAL,
    height DECIMAL,
);

-- BOOLEAN or BOOL
-- used to store the TRUE or FALSE
CREATE TABLE employee(
    is_active BOOLEAN
);
-- TEXT
-- used to store large amounts of text data
-- variable length, no fixed size limit (up to DBMS max, e.g., 65KB in MySQL)
-- example
CREATE TABLE employee(
    emp_description TEXT
);

-- FLOAT
-- used to store approximate numeric values with floating decimal points
-- example
CREATE TABLE employee(
    salary FLOAT
);

-- TIME
-- used to store time of day
-- fixed size
-- example
CREATE TABLE employee(
    shift_start TIME
);