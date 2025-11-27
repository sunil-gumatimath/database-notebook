# SQL Learning Repository

[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white)](https://www.oracle.com/)

A practical SQL learning resource with examples, queries, and schemas for mastering database operations.

## Project Overview

A curated collection of SQL scripts, schemas, and exercises designed for learners at all levels.
The repository includes:

- Sample schemas (SCOTT & HR) for hands‑on practice.
- Organized folders covering core concepts, functions, operators, subqueries, and more.
- Ready‑to‑run assignment files to reinforce each topic.

**Repository:** [database-notebook](https://github.com/sunil-gumatimath/database-notebook)
**Quick links:** See the full project index at [`INDEX.md`](INDEX.md).

## Table of Contents

- [About](#about)
- [Repository Structure](#repository-structure)
- [Sample Schemas](#sample-schemas)
- [How to Use](#how-to-use)
- [Conventions](#conventions)

## About

This repository provides hands-on SQL examples and practice queries organized by concepts. It includes two sample schemas (SCOTT and HR) for learning from basics to advanced topics.

**What you'll find:**

- A comprehensive collection of SQL files covering DDL, DML, DQL, various functions, operators, subqueries, and all major JOIN types (INNER, LEFT, RIGHT, CROSS, FULL OUTER).
- SCOTT schema: Simple schema with 14 employees and 4 departments
- HR schema: Enterprise-level schema with 107 employees across 27 departments
- Progressive learning from basics to advanced queries
- Practice assignments for each topic with consistent naming conventions
- Comprehensive function examples with 40+ character functions and 20+ date functions

## Database Compatibility

This repository is primarily designed for **MySQL/MariaDB**. While many scripts are standard SQL and may work on other RDBMS like PostgreSQL or Oracle, specific syntax or features might require adjustments. Notes for Oracle and PostgreSQL differences are included within individual SQL files where applicable.

[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)

## Repository Structure

### Core SQL Concepts

- **`01-fundamentals/`** — Data types and constraints (2 files: `data-types.sql`, `constraints.sql`)
- **`02-ddl/`** — Schema creation and management (schemas subfolder: `scott-schema.sql`, `hr-schema.sql`)
- **`03-dml/`** — Data manipulation (1 file: `dml-operations.sql`)
- **`04-dql/`** — Basic querying (3 files: `select-basics.sql`, `select-alias.sql`, `select-distinct.sql`)

### Functions and Expressions

- **`06-functions/single-row/`** — Character, numeric, date, and general functions (5 files: `README.md`, `assignments/`, `examples/`, `notes/`)
- **`06-functions/aggregate/`** — Aggregate functions, GROUP BY, HAVING, ORDER BY (3 files: `README.md`, `assignments/`, `examples/`)

### Query Features

- **`05-operators/`** — Filtering with IN, LIKE, BETWEEN, REGEXP (3 files: `README.md`, `assignments/`, `examples/`)
- **`07-joins/`** — Examples of INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN, FULL OUTER JOIN, NATURAL JOIN, and SELF JOIN operations using the HR schema to combine data from multiple tables. (9 files with hyphenated names)
- **`08-subqueries/`** — Explores nested queries and advanced retrieval techniques (`README.md`, `assignments/`, `examples/`)
- **`09-advanced-topics/indexes/`** — Performance optimization (2 files: `indexes-examples.sql`, `README.md`)
- **`09-advanced-topics/transactions/`** — Transaction management concepts (1 file: `README.md`)
- **`09-advanced-topics/sequences/`** — Sequence objects for auto-incrementing values (1 file: `README.md` with comprehensive guide on sequence creation, usage, and management)
- **`09-advanced-topics/views/`** — Database views for virtual tables (2 files: `views-examples.sql`, `README.md`)

### Practice and Examples

- **`10-practice/ai-generated-exercises/`** — AI-generated subquery practice assignments using HR schema (3 files: `subqueries-set-01.sql`, `subqueries-set-02.sql`, `subqueries-set-03.sql`)
- **`queries/`** — Query collections and assignments (3 files: `README.md`, `assignments/`, `examples/`)
- **`tables/`** — Schema reference (1 file: `README.md`)

## Sample Schemas

### SCOTT Schema ([`02-ddl/schemas/scott-schema.sql`](02-ddl/schemas/scott-schema.sql))

A classic, simple schema ideal for learning fundamental SQL concepts.

| Table      | Columns                                          | Records | Description                  |
| :--------- | :----------------------------------------------- | :------ | :--------------------------- |
| **`EMP`**      | `empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno` | 14      | Employee details             |
| **`DEPT`**     | `deptno`, `dname`, `loc`                         | 4       | Department information       |
| **`SALGRADE`** | `grade`, `losal`, `hisal`                        | 5       | Salary grade levels          |
| **`BONUS`**    | `ename`, `job`, `sal`, `comm`                    | 4       | Bonus records (can be empty) |

**Use for:** Basic queries, joins, subqueries, and aggregations.

### HR Schema ([`02-ddl/schemas/hr-schema.sql`](02-ddl/schemas/hr-schema.sql))

A more complex, enterprise-level schema for practicing advanced queries.

| Table           | Columns                                                              | Records | Description                             |
| :-------------- | :------------------------------------------------------------------- | :------ | :-------------------------------------- |
| **`REGIONS`**       | `region_id`, `region_name`                                           | 4       | Geographic regions                      |
| **`COUNTRIES`**     | `country_id`, `country_name`, `region_id`                            | 25      | Country details and their regions       |
| **`LOCATIONS`**     | `location_id`, `street_address`, `city`, `state_province`, `country_id` | 23      | Office locations                        |
| **`DEPARTMENTS`**   | `department_id`, `department_name`, `manager_id`, `location_id`      | 27      | Company departments                     |
| **`JOBS`**          | `job_id`, `job_title`, `min_salary`, `max_salary`                    | 19      | Job roles and salary ranges             |
| **`EMPLOYEES`**     | `employee_id`, `first_name`, `last_name`, `email`, `hire_date`, `job_id`, `salary`, `manager_id`, `department_id` | 107     | Employee details                        |
| **`JOB_HISTORY`**   | `employee_id`, `start_date`, `end_date`, `job_id`, `department_id`   | 10      | Employee job history                    |

**Use for:** Complex queries, multi-level subqueries, hierarchical data, and advanced assignments.

## How to Use

### Getting Started (MySQL/MariaDB)

This repository is primarily designed for MySQL/MariaDB. To get started, you can set up a local database and load one of the provided schemas.

1. **Create a database:**

   ```bash
   mysql -u root -p -e "CREATE DATABASE sql_practice;"
   ```

2. **Load a schema:**
   - For basic practice:

     ```bash
     mysql -u root -p sql_practice < 02-ddl/schemas/scott-schema.sql
     ```

   - For advanced practice (requires HR schema setup):

     ```bash
     mysql -u root -p sql_practice < 02-ddl/schemas/hr-schema.sql
     ```

3. **Connect and practice:**

   ```bash
   mysql -u root -p sql_practice
   ```

   Once connected, you can start querying, for example:

   ```sql
   mysql> SELECT * FROM emp;
   ```

### Suggested Learning Path

**Beginner (4-6 weeks):**

1. Basics → Data types and constraints
2. DDL → Schema creation
3. DQL → Basic SELECT queries
4. Operators → Filtering patterns
5. DML → Data manipulation
6. Single-row functions → String, number, date functions
7. Aggregate functions → GROUP BY, HAVING
8. Complete assignments

**Intermediate (2-3 weeks):**

1. Advanced operators and filtering patterns
2. Subqueries basics (start with 08-subqueries/examples/subquery-basics.sql)
3. Joins → Combining table data (inner joins using HR schema)
4. Load HR schema for complex queries
5. Multi-level subqueries (4 assignment files available)
6. Complete all assignments including GPT-generated practice

**Advanced:**

1. [x] Outer joins, full joins, cross joins
2. [x] Indexes, transactions
3. Window functions, stored procedures
4. Performance optimization

## Query Execution Order

1. FROM — Source tables
2. WHERE — Filter rows
3. GROUP BY — Group rows
4. HAVING — Filter groups
5. SELECT — Choose columns
6. ORDER BY — Sort results
