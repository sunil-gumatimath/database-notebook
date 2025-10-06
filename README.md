# SQL Learning Repository

A practical SQL learning resource with examples, queries, and schemas for mastering database operations.

**Quick links:** See the full project index at [`INDEX.md`](INDEX.md).

## Table of Contents
- [About](#about)
- [Repository Structure](#repository-structure)
- [Sample Schemas](#sample-schemas)
- [How to Use](#how-to-use)
- [Contributing](#contributing)
- [Conventions](#conventions)

## About

This repository provides hands-on SQL examples and practice queries organized by concepts. It includes two sample schemas (SCOTT and HR) for learning from basics to advanced topics.

**What you'll find:**
- 30+ SQL files covering DDL, DML, DQL, functions, operators, and subqueries
- SCOTT schema: Simple schema with 14 employees and 4 departments
- HR schema: Enterprise-level schema with 107 employees across 27 departments
- Progressive learning from basics to advanced queries
- Practice assignments for each topic with consistent naming conventions

**Database compatibility:** Primarily MySQL/MariaDB syntax with notes for Oracle and PostgreSQL.

## Repository Structure

### Core SQL Concepts
- **`basics/`** — Data types and constraints
- **`ddl/`** — Schema creation and management (CREATE, ALTER, DROP)
- **`dml/`** — Data manipulation (INSERT, UPDATE, DELETE)
- **`dql/`** — Basic querying (SELECT, WHERE, aliases, DISTINCT)

### Functions and Expressions
- **`functions/single_row/`** — Character, numeric, date, and general functions
- **`functions/aggregate/`** — Aggregate functions, GROUP BY, HAVING, ORDER BY

### Query Features
- **`operators/`** — Filtering with IN, LIKE, BETWEEN, REGEXP
- **`joins/`** — Table joins (placeholder for future content)
- **`indexes/`** — Performance optimization (placeholder)
- **`subqueries/`** — Nested queries and advanced retrieval
- **`transactions/`** — Transaction management (placeholder)

### Practice and Examples
- **`queries/`** — Query collections and assignments
- **`tables/`** — Schema reference

## Sample Schemas

### SCOTT Schema ([`ddl/scott_table.sql`](ddl/scott_table.sql))
Classic training schema for SQL fundamentals.

**Tables:**
- **EMP** (14 employees): empno, ename, job, mgr, hiredate, sal, comm, deptno
- **DEPT** (4 departments): deptno, dname, loc
- **SALGRADE** (5 grades): grade, losal, hisal
- **BONUS** (4 records): ename, job, sal, comm

**Use for:** Basic queries, joins, subqueries, aggregations.

### HR Schema ([`ddl/hr_schema.sql`](ddl/hr_schema.sql))
Enterprise HR database with organizational hierarchy.

**Tables:**
- **REGIONS** (4 regions): region_id, region_name
- **COUNTRIES** (25 countries): country_id, country_name, region_id
- **LOCATIONS** (23 locations): location_id, street_address, city, state_province, country_id
- **DEPARTMENTS** (27 departments): department_id, department_name, manager_id, location_id
- **JOBS** (19 jobs): job_id, job_title, min_salary, max_salary
- **EMPLOYEES** (107 employees): employee_id, first_name, last_name, email, phone, hire_date, job_id, salary, commission_pct, manager_id, department_id
- **JOB_HISTORY** (10 records): employee_id, start_date, end_date, job_id, department_id

**Use for:** Complex queries, multi-level subqueries, hierarchical data.

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
1. Advanced queries and operators
2. Subqueries basics
3. Load HR schema
4. Multi-level subqueries
5. Complete all assignments

**Advanced (future):**
1. Joins, indexes, transactions
2. Window functions, stored procedures
3. Performance optimization

## Contributing

Contributions welcome! Add examples for joins, indexes, transactions, window functions, or improve existing content.

**How to contribute:**
1. Fork the repository
2. Create a feature branch
3. Add content following the structure
4. Update README.md and INDEX.md
5. Submit a pull request

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
- Comments with -- or /* */

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
