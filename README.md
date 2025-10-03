# SQL Learning Repository

A comprehensive SQL learning resource with hands-on examples, practice queries, and schema definitions for mastering database operations.

Quick links: See the full project index at [`INDEX.md`](INDEX.md).

### Table of Contents
- [About](#about)
- [Repository structure](#repository-structure)
  - [Core SQL concepts](#core-sql-concepts)
  - [Database structure (DDL)](#database-structure-ddl)
  - [Data operations](#data-operations)
  - [Functions and expressions](#functions-and-expressions)
  - [Query features](#query-features)
  - [Advanced features](#advanced-features)
  - [Practice and examples](#practice-and-examples)
- [Sample schemas](#sample-schemas)
- [How to use](#how-to-use)
  - [Quick start (MySQL example)](#quick-start-mysql-example)
- [Contributing](#contributing)
- [Conventions](#conventions)

## About

This repository is a practical collection of SQL examples, queries, and schema snippets intended as a learning notebook or quick reference. Content is organized by SQL concepts (DDL, DML, DQL) and features (functions, operators, subqueries, etc.).

**What you'll find:**
- 30+ SQL files with examples and practice queries
- Two complete sample schemas (SCOTT and HR) with realistic data
- Progressive learning path from basics to advanced topics
- Real-world query patterns and problem-solving approaches
- Hands-on assignments for skill reinforcement

**Database compatibility:** Examples primarily use MySQL/MariaDB syntax with notes for Oracle and PostgreSQL where syntax differs.

## Repository structure

### Core SQL concepts
- **`basics/`** — Foundation concepts for database design
  - `data_types.sql` — Comprehensive data types guide: CHAR, VARCHAR, INT, DATE, TIMESTAMP, DECIMAL, BOOLEAN, TEXT, FLOAT, TIME with CREATE TABLE examples
  - `constraints.sql` — Essential constraints with practical examples: NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT

### Database structure (DDL)
- **`ddl/`** — Data Definition Language for schema management
  - `ddl_commands.sql` — Core DDL operations: CREATE, ALTER, DROP, TRUNCATE, RENAME with examples
  - `scott_table.sql` — Classic SCOTT schema (emp, dept, bonus, salgrade) with 14 employees and 4 departments
  - `hr_schema.sql` — Enterprise HR schema (regions, countries, locations, departments, jobs, employees, job_history) with 100+ employees across 27 departments

### Data operations
- **`dml/`** — Data Manipulation Language for modifying data
  - `dml_commands.sql` — INSERT, UPDATE, DELETE operations with practical examples
- **`dql/`** — Data Query Language for retrieving data
  - `dql_commands.sql` — SELECT statements with WHERE clauses, COUNT, and filtering techniques
  - `select_alias.sql` — Column and table aliasing for readable query results
  - `select_distinct.sql` — DISTINCT keyword for removing duplicate rows

### Functions and expressions
- **`functions/single_row/`** — Single-row functions (one result per row)
  - `examples/`
    - `character_functions.sql` — String manipulation: UPPER, LOWER, SUBSTR, CONCAT, REPLACE, TRIM, REVERSE, LENGTH, INSTR
    - `number_functions.sql` — Numeric operations: ROUND, TRUNC, MOD, SQRT, POWER, ABS
    - `date_functions.sql` — Date/time handling: CURDATE, NOW, DATE_ADD, DATEDIFF, LAST_DAY, DATE_FORMAT
    - `general_functions.sql` — Conditional logic: IFNULL, COALESCE, NULLIF, CASE, IF statements
  - `assignments/` — `single_row_assignment.sql` — Practice exercises for character, string, and function manipulation
  - `notes/` — `single_row_function_overview.sql` — Quick reference guide
- **`functions/aggregate/`** — Aggregate functions (one result per group)
  - `examples/`
    - `aggregate_functions.sql` — COUNT, SUM, AVG, MIN, MAX with employee data
    - `group_by.sql` — Grouping data by department, job, salary, and hire year
    - `having.sql` — Filtering grouped results with HAVING clause
    - `order_by.sql` — Sorting results in ascending/descending order
  - `assignments/` — `aggregate_assignment.sql` — Practice queries with aggregation and grouping

### Query features
- **`operators/`** — SQL operators for filtering and pattern matching
  - `examples/` — `operators_examples.sql` — IN, NOT IN, LIKE, BETWEEN, pattern matching with wildcards (%, _)
  - `assignments/` — `operators_assignment.sql` — Complex filtering exercises with multiple conditions
- **`joins/`** — JOIN operations for combining tables (placeholder for future content)
- **`indexes/`** — Index strategies for performance optimization (placeholder for future content)

### Advanced features
- **`subqueries/`** — Nested queries for complex data retrieval
  - `examples/` — `subquery.sql` — Subquery concepts, types (single-row, multi-row), and execution order
  - `assignments/`
    - `subquery_assignment_0.sql` — HR schema subqueries: nested queries across regions, countries, locations, departments, and employees
    - `subquery_assignment.sql` — SCOTT schema subqueries: manager relationships, location lookups, and salary comparisons
  - `query/`
    - `subquery_01.sql` — Basic single-row subqueries for manager and employee relationships
    - `subquery_02.sql` — Salary comparisons and hire date queries with subqueries
- **`transactions/`** — Transaction management and ACID properties (placeholder for future content)

### Practice and examples
- **`queries/`** — Comprehensive practice query collections
  - `examples/`
    - `query_01.sql` — Basic SELECT queries with WHERE, filtering, and simple conditions
    - `query_02.sql` — Advanced filtering with complex conditions, date/month filtering, pattern matching
  - `assignments/` — `query_assignment_01.sql` — Calculated columns, annual salary, bonuses, and aliasing exercises
- **`tables/`** — Table reference documentation and schema information

## Sample schemas

This repository includes two complete database schemas with sample data:

### SCOTT Schema (`ddl/scott_table.sql`)
Classic Oracle training schema with employee data:
- **EMP** (14 employees) — Employee information with job, salary, commission, manager, hire date
- **DEPT** (4 departments) — Department names and locations
- **SALGRADE** (5 grades) — Salary grade ranges
- **BONUS** (4 records) — Employee bonus information

Use for: Basic SQL practice, joins, subqueries, aggregations

### HR Schema (`ddl/hr_schema.sql`)
Enterprise-level HR database with organizational hierarchy:
- **REGIONS** (4 regions) — Global regions
- **COUNTRIES** (25 countries) — Country information by region
- **LOCATIONS** (23 locations) — Office locations with addresses
- **DEPARTMENTS** (27 departments) — Organizational departments
- **JOBS** (19 job titles) — Job definitions with salary ranges
- **EMPLOYEES** (107 employees) — Complete employee records with managers and departments
- **JOB_HISTORY** (10 records) — Employee job change history

Use for: Complex queries, nested subqueries, multi-table joins, hierarchical data

## How to use

### Getting started

1. **Choose your database system:** MySQL, MariaDB, PostgreSQL, Oracle (most examples use MySQL syntax)
2. **Load a sample schema:** Start with SCOTT (simpler) or HR (more complex) from `ddl/` directory
3. **Follow the learning path:** Progress from basics → DQL → functions → operators → subqueries
4. **Practice with assignments:** Each topic includes practice exercises to reinforce learning
5. **Use the index:** See [`INDEX.md`](INDEX.md) for quick navigation to all examples and assignments

### Quick start (MySQL/MariaDB)

```bash
# 1. Create a test database
mysql -u root -p -e "CREATE DATABASE sql_practice;"

# 2. Load the SCOTT schema (recommended for beginners)
mysql -u root -p sql_practice < ddl/scott_table.sql

# OR load the HR schema (for advanced practice)
mysql -u root -p sql_practice < ddl/hr_schema.sql

# 3. Connect and start practicing
mysql -u root -p sql_practice
```

### Suggested learning path

1. **Foundation** → `basics/` (data types, constraints)
2. **Schema creation** → `ddl/` (CREATE, ALTER, DROP)
3. **Data manipulation** → `dml/` (INSERT, UPDATE, DELETE)
4. **Querying basics** → `dql/` (SELECT, WHERE, DISTINCT)
5. **Operators** → `operators/` (IN, LIKE, BETWEEN)
6. **Single-row functions** → `functions/single_row/` (string, number, date functions)
7. **Aggregate functions** → `functions/aggregate/` (COUNT, SUM, GROUP BY, HAVING)
8. **Advanced queries** → `subqueries/` (nested queries)
9. **Practice integration** → `queries/` (comprehensive exercises)

## Contributing

Contributions are welcome! Here are some ways to improve this repository:

**Content additions:**
- JOIN examples (INNER, LEFT, RIGHT, FULL OUTER, CROSS, SELF)
- Index creation and optimization strategies
- Transaction management (BEGIN, COMMIT, ROLLBACK, savepoints)
- Window functions (ROW_NUMBER, RANK, DENSE_RANK, LEAD, LAG)
- Views and materialized views
- Stored procedures and functions
- Triggers and events

**Improvements:**
- Add PostgreSQL/SQLite/Oracle syntax alternatives
- More complex query challenges and real-world scenarios
- Performance optimization examples
- Query execution plan analysis

**How to contribute:**
1. Fork the repository
2. Create a new branch for your feature
3. Add examples following the existing structure (examples/, assignments/, notes/)
4. Update the relevant README.md files
5. Add entries to INDEX.md for easy navigation
6. Submit a pull request

---

**Note:** This repository is maintained as a personal SQL learning notebook but welcomes community contributions.

## Conventions

### File organization
- **`examples/`** — Runnable code examples with detailed comments and explanations
- **`assignments/`** — Practice exercises and problem sets for skill reinforcement
- **`notes/`** — Quick reference guides, syntax overviews, and concept summaries
- **`README.md`** — Topic overview with learning objectives and file descriptions

### Naming conventions
- **File names:** lowercase with underscores (e.g., `character_functions.sql`, `group_by.sql`)
- **Descriptive names:** Names should clearly indicate content (e.g., `subquery_01.sql` rather than `example1.sql`)
- **Table names:** Uppercase for schema tables (e.g., `EMP`, `DEPT`, `EMPLOYEES`)
- **Column names:** Lowercase or uppercase depending on schema convention

### SQL style
- **Keywords:** Uppercase for SQL keywords (SELECT, FROM, WHERE, GROUP BY)
- **Comments:** Use `--` for single-line comments, `/* */` for multi-line explanations
- **Indentation:** Consistent indentation for readability in complex queries
- **Semicolons:** End statements with `;` for compatibility

### Database compatibility
- **Primary dialect:** MySQL/MariaDB syntax
- **Oracle notes:** Included where syntax differs (e.g., `DUAL` table, `NVL` vs `IFNULL`)
- **PostgreSQL notes:** Mentioned for significant differences
- **Verification:** Always test queries in your specific RDBMS

### Adding new content
1. Place files in the appropriate subdirectory (`examples/`, `assignments/`, or `notes/`)
2. Update the topic's `README.md` with file description and learning objectives
3. Add entry to root `INDEX.md` for easy navigation
4. Follow existing format and commenting style
5. Test queries with both SCOTT and HR schemas where applicable

### Query execution order reference
Remember the SQL execution order when writing queries:
1. **FROM** — Identify source tables
2. **WHERE** — Filter individual rows
3. **GROUP BY** — Group rows
4. **HAVING** — Filter groups
5. **SELECT** — Choose columns
6. **ORDER BY** — Sort final results
