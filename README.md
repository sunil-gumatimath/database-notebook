# SQL Learning Repository

A practical SQL learning resource with examples, queries, and schemas for mastering database operations.

[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Oracle](https://img.shields.io/badge/Oracle-F80000?style=flat&logo=oracle&logoColor=white)](https://www.oracle.com/)

## About

A curated collection of SQL scripts, schemas, and exercises for learners at all levels. Every example, assignment, and practice set runs against one of two bundled sample schemas, so each topic builds on consistent data.

| | |
| :--- | :--- |
| **Schemas** | [SCOTT](02-ddl/schemas/scott-schema.sql) — 14 employees, 4 departments · [HR](02-ddl/schemas/hr-schema.sql) — 107 employees, 27 departments |
| **Coverage** | Fundamentals → DDL → DQL → operators → DML → functions → joins → subqueries → advanced topics |
| **Primary dialect** | MySQL/MariaDB, with inline dialect notes for Oracle and PostgreSQL where syntax differs |
| **Docs** | [Learning path](LEARNING_PATH.md) · [Project index](INDEX.md) · [Schema reference](tables/README.md) |

## Table of Contents

- [Quick Start](#quick-start)
- [Repository Structure](#repository-structure)
- [Sample Schemas](#sample-schemas)
- [How to Use](#how-to-use)
- [Conventions](#conventions)

## Quick Start

1. Create a database:

   ```bash
   mysql -u root -p -e "CREATE DATABASE sql_practice;"
   ```

2. Load one of the sample schemas:

   ```bash
   mysql -u root -p sql_practice < 02-ddl/schemas/scott-schema.sql   # simple: 4 tables
   mysql -u root -p sql_practice < 02-ddl/schemas/hr-schema.sql      # enterprise: 7 tables
   ```

3. Study the topics in the order given in [LEARNING_PATH.md](LEARNING_PATH.md), running each `.sql` file as you go.

> Prefer a GUI? Open the same `.sql` files with MySQL Workbench, DBeaver, or DataGrip and execute them against your database.

## Repository Structure

| Folder | Focus | SQL files |
| :--- | :--- | :--- |
| [`01-fundamentals/`](01-fundamentals/) | Data types and constraints | 2 |
| [`02-ddl/`](02-ddl/) | Schema creation and management | 3 |
| [`03-dml/`](03-dml/) | INSERT, UPDATE, DELETE | 1 |
| [`04-dql/`](04-dql/) | Basic SELECT querying | 3 |
| [`05-operators/`](05-operators/) | Filtering and logical operations | 2 |
| [`06-functions/`](06-functions/) | Single-row and aggregate functions | 11 |
| [`07-joins/`](07-joins/) | All major join types | 9 |
| [`08-subqueries/`](08-subqueries/) | Nested and correlated queries | 7 |
| [`09-advanced-topics/`](09-advanced-topics/) | Indexes, views, sequences, transactions | 2 |
| [`10-practice/`](10-practice/) | AI-generated subquery drills | 3 |
| [`queries/`](queries/) | Standalone query practice | 3 |

Every topic folder contains its own `README.md` with what the folder covers and a suggested order for its files.

## Sample Schemas

### SCOTT — [`02-ddl/schemas/scott-schema.sql`](02-ddl/schemas/scott-schema.sql)

A classic, simple schema ideal for learning fundamental SQL concepts.

| Table | Columns | Records | Description |
| :--- | :--- | :--- | :--- |
| `EMP` | `empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno` | 14 | Employee details |
| `DEPT` | `deptno`, `dname`, `loc` | 4 | Department information |
| `SALGRADE` | `grade`, `losal`, `hisal` | 5 | Salary grade levels |
| `BONUS` | `ename`, `job`, `sal`, `comm` | 4 | Bonus records (can be empty) |

**Use for:** basic queries, joins, subqueries, and aggregations.

### HR — [`02-ddl/schemas/hr-schema.sql`](02-ddl/schemas/hr-schema.sql)

A more complex, enterprise-level schema for practicing advanced queries.

| Table | Columns | Records | Description |
| :--- | :--- | :--- | :--- |
| `REGIONS` | `region_id`, `region_name` | 4 | Geographic regions |
| `COUNTRIES` | `country_id`, `country_name`, `region_id` | 25 | Countries and their regions |
| `LOCATIONS` | `location_id`, `street_address`, `city`, `state_province`, `country_id` | 23 | Office locations |
| `DEPARTMENTS` | `department_id`, `department_name`, `manager_id`, `location_id` | 27 | Company departments |
| `JOBS` | `job_id`, `job_title`, `min_salary`, `max_salary` | 19 | Job roles and salary ranges |
| `EMPLOYEES` | `employee_id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `job_id`, `salary`, `commission_pct`, `manager_id`, `department_id` | 107 | Employee details |
| `JOB_HISTORY` | `employee_id`, `start_date`, `end_date`, `job_id`, `department_id` | 10 | Employee job history |

**Use for:** complex queries, multi-level subqueries, hierarchical data, and advanced assignments.

## How to Use

- **Follow the [learning path](LEARNING_PATH.md)** — it sequences every folder from fundamentals to advanced topics.
- **Use the [project index](INDEX.md)** to jump straight to any example, assignment, or schema.
- **Read each folder's README first** — it explains the concepts and the suggested order of the files.
- **Practice both schemas** — solve an exercise on SCOTT, then re-solve it against HR for a harder dataset.
- **Watch for dialect notes** — files call out Oracle and PostgreSQL differences inline when the syntax varies.

## Conventions

| Convention | Rule |
| :--- | :--- |
| File names | lowercase-with-hyphens |
| Tables and SQL keywords | UPPERCASE |
| SQL style | Uppercase keywords, consistent indentation, semicolons, comments |
| Folder layout | `examples/` for demonstrations, `assignments/` for practice, `notes/` for references |
| Query execution order | `FROM` → `WHERE` → `GROUP BY` → `HAVING` → `SELECT` → `ORDER BY` |
