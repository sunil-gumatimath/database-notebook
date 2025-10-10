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

- 35 SQL files covering DDL, DML, DQL, functions, operators, and subqueries
- SCOTT schema: Simple schema with 14 employees and 4 departments
- HR schema: Enterprise-level schema with 107 employees across 27 departments
- Progressive learning from basics to advanced queries
- Practice assignments for each topic with consistent naming conventions
- Comprehensive function examples with 40+ character functions and 20+ date functions

**Database compatibility:** Primarily MySQL/MariaDB syntax with notes for Oracle and PostgreSQL.

## Repository Structure

### Core SQL Concepts

- **`basics/`** — Data types and constraints (2 files: data_types.sql, constraints.sql)
- **`ddl/`** — Schema creation and management (3 files: ddl_commands.sql, scott_table.sql, hr_schema.sql)
- **`dml/`** — Data manipulation (1 file: dml_commands.sql)
- **`dql/`** — Basic querying (3 files: dql_commands.sql, select_alias.sql, select_distinct.sql)

### Functions and Expressions

- **`functions/single_row/`** — Character, numeric, date, and general functions (5 files: 4 examples + 1 assignment + notes)
- **`functions/aggregate/`** — Aggregate functions, GROUP BY, HAVING, ORDER BY (5 files: 4 examples + 1 assignment)

### Query Features

- **`operators/`** — Filtering with IN, LIKE, BETWEEN, REGEXP (2 files: 1 example + 1 assignment)
- **`joins/`** — Table joins (structure ready, content pending)
- **`indexes/`** — Performance optimization (placeholder)
- **`subqueries/`** — Nested queries and advanced retrieval (8 files: 1 example + 4 assignments + 2 query files)
- **`transactions/`** — Transaction management (placeholder)

### Practice and Examples

- **`queries/`** — Query collections and assignments (3 files)
- **`gpt_assignment/`** — AI-generated subquery practice assignments using HR schema (3 files)
- **`tables/`** — Schema reference (placeholder)

## Sample Schemas

### SCOTT Schema ([`ddl/scott_table.sql`](ddl/scott_table.sql))

A classic, simple schema ideal for learning fundamental SQL concepts.

| Table      | Columns                                          | Records | Description                  |
| :--------- | :----------------------------------------------- | :------ | :--------------------------- |
| **`EMP`**      | `empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno` | 14      | Employee details             |
| **`DEPT`**     | `deptno`, `dname`, `loc`                         | 4       | Department information       |
| **`SALGRADE`** | `grade`, `losal`, `hisal`                        | 5       | Salary grade levels          |
| **`BONUS`**    | `ename`, `job`, `sal`, `comm`                    | 4       | Bonus records (can be empty) |

**Use for:** Basic queries, joins, subqueries, and aggregations.

### HR Schema ([`ddl/hr_schema.sql`](ddl/hr_schema.sql))

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

### Getting Started

1. Choose your database: MySQL, MariaDB, PostgreSQL, or Oracle
2. Load a schema: Start with SCOTT (simple) or HR (advanced)
3. Follow the learning path below
4. Practice with assignments in each folder

### Quick Start (MySQL/MariaDB)

```bash
# Create database
mysql -u root -p -e "CREATE DATABASE sql_practice;"

# Load SCOTT schema
mysql -u root -p sql_practice < ddl/scott_table.sql

# Connect and practice
mysql -u root -p sql_practice
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
2. Subqueries basics (start with examples/subquery.sql)
3. Load HR schema for complex queries
4. Multi-level subqueries (4 assignment files available)
5. Complete all assignments including GPT-generated practice

**Advanced (future):**

1. Joins, indexes, transactions
2. Window functions, stored procedures
3. Performance optimization

## Conventions

### File Organization

- **`examples/`** — Runnable code with comments
- **`assignments/`** — Practice exercises (numbered: assignment_01.sql, assignment_02.sql, etc.)
- **`notes/`** — Reference guides

### Naming Conventions

- **Files:** lowercase with underscores (e.g., `assignment_01.sql`, `character_functions.sql`)
- **Tables:** Uppercase (EMP, DEPT)
- **Keywords:** Uppercase (SELECT, FROM)
- **Numbering:** Leading zeros for consistency (01, 02, 03...)
- **Descriptive:** Clear, concise names indicating content purpose

### SQL Style

- Uppercase keywords
- Consistent indentation
- Semicolons at statement ends
- Comments with -- or /**/

### Database Compatibility

- Primary: MySQL/MariaDB
- Notes for Oracle/PostgreSQL differences
- Test in your RDBMS

### Query Execution Order

1. FROM — Source tables
2. WHERE — Filter rows
3. GROUP BY — Group rows
4. HAVING — Filter groups
5. SELECT — Choose columns
6. ORDER BY — Sort results
