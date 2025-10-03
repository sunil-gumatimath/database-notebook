# SQL Learning Repository

Quick links: See the full project index at [`INDEX.md`](INDEX.md).

### Table of Contents
- [Repository structure](#repository-structure)
  - [Core SQL concepts](#core-sql-concepts)
  - [Database structure (DDL)](#database-structure-ddl)
  - [Data operations](#data-operations)
  - [Functions and expressions](#functions-and-expressions)
  - [Query features](#query-features)
  - [Advanced features](#advanced-features)
  - [Practice and examples](#practice-and-examples)
- [How to use](#how-to-use)
  - [Quick start (MySQL example)](#quick-start-mysql-example)
- [Contributing](#contributing)
- [Conventions](#conventions)

This repository is a practical collection of SQL examples, queries, and schema snippets intended as a learning notebook or quick reference. Content is grouped by topics like DDL, DML, DQL, functions, and operators.

Use these files to learn, test, or adapt queries for small practice databases (e.g., MySQL, MariaDB, PostgreSQL, Oracle). Syntax notes are included where relevant. Many files are short notes with example statements rather than ready-to-run projects.

## Repository structure

### Core SQL concepts
- `basics/`
  - `data_types.sql` — Common SQL data types with `CREATE TABLE` examples
  - `constraints.sql` — Constraint examples (`NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `DEFAULT`)

### Database structure (DDL)
- `ddl/`
  - `ddl_commands.sql` — `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` operations
  - `scott_table.sql` — SCOTT schema tables (emp, dept, bonus, salgrade) with sample data
  - `hr_schema.sql` — HR schema tables (regions, countries, locations, departments, jobs, employees, job_history) with comprehensive sample data

### Data operations
- `dml/`
  - `dml_commands.sql` — `INSERT`, `UPDATE`, `DELETE` operations
- `dql/`
  - `dql_commands.sql` — `SELECT` statements with `WHERE`, `COUNT`, etc.
  - `select_alias.sql` — Column alias examples
  - `select_distinct.sql` — `DISTINCT` keyword usage

### Functions and expressions
- `functions/single_row/`
  - `examples/` — `character_functions.sql`, `number_functions.sql`, `date_functions.sql`, `general_functions.sql`
  - `assignments/` — `csrf_assignment.sql`
  - `notes/` — `single_row_function_overview.sql`
- `functions/aggregate/`
  - `examples/` — `aggregate_functions.sql`, `group_by.sql`, `having.sql`, `order_by.sql`
  - `assignments/` — `assignment.sql`

### Query features
- `operators/`
  - `examples/` — `operators_examples.sql`
  - `assignments/` — `operators_assignment.sql`
- `joins/` — Directory for JOIN-related examples and documentation
- `indexes/` — Directory for index-related examples and documentation

### Advanced features
- `transactions/` — Placeholder directory reserved for transaction management scripts (currently empty)
- `subqueries/` — Nested query examples and practice
  - `examples/` — `subquery.sql`
  - `assignments/` — `assignment_0.sql`, `assignment.sql`
  - `query/` — Additional subquery examples
    - `subquery_01.sql`, `subquery_02.sql` — Progressive subquery practice

### Practice and examples
- `queries/` — Practice query collections
  - `examples/` — `query_01.sql`, `query_02.sql`
  - `assignments/` — `assignment_01.sql`
- `tables/` — Directory for table-related documentation and reference material

## How to use

1. Choose a database: MySQL, PostgreSQL, Oracle, etc. Some syntax varies by engine.
2. Load sample schema: `ddl/scott_table.sql` (SCOTT schema) or `ddl/hr_schema.sql` (HR schema) into a test database.
3. Explore: Use [`INDEX.md`](INDEX.md) for direct links to examples and assignments, or browse the folders.

### Quick start (MySQL example)

1. Create a test database:
```bash
mysql -u root -p -e "CREATE DATABASE sql_notebook; USE sql_notebook;"
```
2. Load the sample tables:
```bash
# For SCOTT schema:
mysql -u root -p sql_notebook < ddl/scott_table.sql
# OR for HR schema:
mysql -u root -p sql_notebook < ddl/hr_schema.sql
```
3. Run practice queries from the `queries/` directory or experiment with the `dql/` examples.

## Contributing

Contributions are welcome! Ideas:
- Add examples for joins, indexes, transactions, and window functions
- Provide variants for PostgreSQL/SQLite/Oracle where syntax differs
- Add more complex query challenges

---

Repository maintained as a personal SQL learning notebook.

## Conventions

- Folders:
  - `examples/`: runnable and reference examples for a topic
  - `assignments/`: practice questions/tasks for a topic
  - `notes/`: brief topic notes or overviews
- Naming: use lowercase with underscores for file names; prefer descriptive names.
- SQL dialects: examples may mix MySQL and Oracle syntax; verify for your RDBMS.
- Adding new content: place it in the appropriate `examples/`, `assignments/`, or `notes/` subfolder and link it from the topic `README.md`. Also consider adding it to `INDEX.md`.
