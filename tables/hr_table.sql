-- =========================================
-- 1️⃣ CREATE HR DATABASE
-- =========================================
CREATE DATABASE IF NOT EXISTS hr CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE hr;

-- =========================================
-- 2️⃣ CREATE TABLES IF THEY DON'T EXIST
-- =========================================

-- REGIONS
CREATE TABLE IF NOT EXISTS regions (
  region_id INT NOT NULL PRIMARY KEY,
  region_name VARCHAR(25)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- COUNTRIES
CREATE TABLE IF NOT EXISTS countries (
  country_id CHAR(2) NOT NULL PRIMARY KEY,
  country_name VARCHAR(40),
  region_id INT,
  CONSTRAINT fk_countries_region FOREIGN KEY (region_id)
    REFERENCES regions(region_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- LOCATIONS
CREATE TABLE IF NOT EXISTS locations (
  location_id INT NOT NULL PRIMARY KEY,
  street_address VARCHAR(40),
  postal_code VARCHAR(12),
  city VARCHAR(30) NOT NULL,
  state_province VARCHAR(25),
  country_id CHAR(2),
  CONSTRAINT fk_locations_country FOREIGN KEY (country_id)
    REFERENCES countries(country_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- DEPARTMENTS
CREATE TABLE IF NOT EXISTS departments (
  department_id INT NOT NULL PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL,
  manager_id INT,
  location_id INT,
  CONSTRAINT fk_departments_location FOREIGN KEY (location_id)
    REFERENCES locations(location_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- JOBS
CREATE TABLE IF NOT EXISTS jobs (
  job_id VARCHAR(10) NOT NULL PRIMARY KEY,
  job_title VARCHAR(35) NOT NULL,
  min_salary DECIMAL(8,2),
  max_salary DECIMAL(8,2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- EMPLOYEES
CREATE TABLE IF NOT EXISTS employees (
  employee_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(25) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone_number VARCHAR(20),
  hire_date DATE NOT NULL,
  job_id VARCHAR(10) NOT NULL,
  salary DECIMAL(8,2),
  commission_pct DECIMAL(4,2),
  manager_id INT,
  department_id INT,
  CONSTRAINT fk_employees_department FOREIGN KEY (department_id)
    REFERENCES departments(department_id),
  CONSTRAINT fk_employees_job FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- JOB_HISTORY
CREATE TABLE IF NOT EXISTS job_history (
  employee_id INT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  job_id VARCHAR(10) NOT NULL,
  department_id INT,
  PRIMARY KEY (employee_id, start_date),
  CONSTRAINT fk_jobhistory_job FOREIGN KEY (job_id)
    REFERENCES jobs(job_id),
  CONSTRAINT fk_jobhistory_employee FOREIGN KEY (employee_id)
    REFERENCES employees(employee_id),
  CONSTRAINT fk_jobhistory_department FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================================
-- 4️⃣ INSERT SAMPLE DATA
-- =========================================

-- REGIONS
INSERT IGNORE INTO regions (region_id, region_name) VALUES
(1, 'Europe'),
(2, 'Americas'),
(3, 'Asia'),
(4, 'Middle East and Africa');

-- COUNTRIES
INSERT IGNORE INTO countries (country_id, country_name, region_id) VALUES
('US', 'United States', 2),
('CA', 'Canada', 2),
('BR', 'Brazil', 2),
('UK', 'United Kingdom', 1),
('DE', 'Germany', 1),
('IN', 'India', 3),
('JP', 'Japan', 3),
('AU', 'Australia', 3),
('AE', 'United Arab Emirates', 4),
('EG', 'Egypt', 4),
('IT', 'Italy', 1),
('FR', 'France', 1);

-- LOCATIONS
INSERT IGNORE INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1000, '1297 Via Cola di Rie', '00989', 'Rome', 'RM', 'IT'),
(1100, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo', 'JP'),
(1200, '2011 Interiors Blvd', '99236', 'Southlake', 'Texas', 'US'),
(1300, 'PO Box 6675', '98526', 'London', 'London', 'UK'),
(1400, '2014 Jabberwocky Rd', '26192', 'South San Francisco', 'California', 'US'),
(1500, '2011 Chenoweth Drive', '98199', 'Seattle', 'Washington', 'US'),
(1600, '2007 Zagora St', '00989', 'Paris', 'Ile-de-France', 'FR'),
(1700, '2004 Charade Rd', '98199', 'New York', 'New York', 'US'),
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
(2400, '8204 Arthur St', '98526', 'London', 'London', 'UK'),
(2500, '8205 Arthur St', '98526', 'London', 'London', 'UK'),
(2700, '8206 Arthur St', '98526', 'London', 'London', 'UK');

-- DEPARTMENTS
INSERT IGNORE INTO departments (department_id, department_name, manager_id, location_id) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1500),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', 121, 1500),
(60, 'IT', 103, 1400),
(70, 'Public Relations', 204, 2700),
(80, 'Sales', 145, 2500),
(90, 'Executive', 100, 1700),
(100, 'Finance', 108, 1700),
(110, 'Accounting', 205, 1700);

-- JOBS
INSERT IGNORE INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
('AD_PRES', 'President', 20000, 40000),
('AD_VP', 'Administration Vice President', 15000, 30000),
('AD_ASST', 'Administration Assistant', 3000, 6000),
('FI_MGR', 'Finance Manager', 8200, 20000),
('FI_ACCOUNT', 'Accountant', 4200, 9000),
('HR_REP', 'Human Resources Representative', 4000, 9000),
('IT_PROG', 'Programmer', 4000, 10000),
('MK_MAN', 'Marketing Manager', 9000, 20000),
('MK_REP', 'Marketing Representative', 4000, 9000),
('PR_REP', 'Public Relations Representative', 4500, 10500),
('SA_MAN', 'Sales Manager', 10000, 20000),
('SA_REP', 'Sales Representative', 6000, 12000),
('PU_MAN', 'Purchasing Manager', 8000, 15000),
('PU_CLERK', 'Purchasing Clerk', 2500, 5500),
('ST_MAN', 'Stock Manager', 5500, 8500),
('ST_CLERK', 'Stock Clerk', 2000, 5000);

-- EMPLOYEES
INSERT IGNORE INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17', 'AD_PRES', 24000, NULL, NULL, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21', 'AD_VP', 17000, NULL, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13', 'AD_VP', 17000, NULL, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000, NULL, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000, NULL, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '2005-06-25', 'IT_PROG', 4800, NULL, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '2002-08-17', 'FI_MGR', 12000, NULL, 101, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4566', '2005-09-28', 'FI_ACCOUNT', 8200, NULL, 108, 100),
(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '2002-12-07', 'PU_MAN', 11000, NULL, 100, 30),
(115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '2003-05-18', 'PU_CLERK', 3100, NULL, 114, 30),
(121, 'Adam', 'Fripp', 'AFRIPP', '515.127.4563', '2005-04-10', 'ST_MAN', 8200, NULL, 114, 50),
(145, 'John', 'Russell', 'JRUSSELL', '515.128.4561', '2001-06-07', 'SA_MAN', 14000, NULL, 100, 80),
(146, 'Karen', 'Partners', 'KPARTNER', '515.128.4562', '2002-06-07', 'SA_MAN', 13500, NULL, 100, 80),
(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '515.128.4563', '2003-06-07', 'SA_MAN', 12000, NULL, 100, 80),
(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '515.128.4564', '2004-06-07', 'SA_MAN', 11000, NULL, 100, 80),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4567', '2003-09-17', 'AD_ASST', 4400, NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.4568', '2004-02-17', 'MK_MAN', 13000, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '515.123.4569', '2005-08-17', 'MK_REP', 6000, 0.2, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.4560', '2003-06-17', 'HR_REP', 6500, NULL, 101, 40),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.4561', '2005-06-17', 'FI_ACCOUNT', 8300, NULL, 108, 110);

-- JOB_HISTORY (optional)
INSERT IGNORE INTO job_history (employee_id, start_date, end_date, job_id, department_id) VALUES
(101, '2000-01-01', '2005-09-20', 'AD_ASST', 10),
(102, '1999-01-01', '2001-01-12', 'AD_ASST', 10),
(110, '2003-01-01', '2005-09-27', 'FI_ACCOUNT', 100);

-- Self-referencing FK for manager
ALTER TABLE employees
  ADD CONSTRAINT fk_employees_manager FOREIGN KEY (manager_id)
    REFERENCES employees(employee_id);

-- =========================================
-- 5️⃣ QUERIES
-- =========================================
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM jobs;
SELECT * FROM countries;
SELECT * FROM regions;