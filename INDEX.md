# Project Index

A comprehensive index of SQL examples, assignments, and schema definitions within this repository.

## Core SQL Concepts

### Basics

- [basics/data_types.sql](basics/data_types.sql) — Guide to SQL data types with `CREATE TABLE` examples.
- [basics/constraints.sql](basics/constraints.sql) — Essential SQL constraints with practical examples.

### DDL (Data Definition Language)

- [ddl/ddl_commands.sql](ddl/ddl_commands.sql) — Core DDL operations for schema management.
- [ddl/scott_table.sql](ddl/scott_table.sql) — Classic SCOTT schema definition.
- [ddl/hr_schema.sql](ddl/hr_schema.sql) — Enterprise-level HR schema definition.

### DML (Data Manipulation Language)

- [dml/dml_commands.sql](dml/dml_commands.sql) — Row-level data manipulation operations.

### DQL (Data Query Language)

- [dql/dql_commands.sql](dql/dql_commands.sql) — Basic `SELECT` statements and querying fundamentals.
- [dql/select_alias.sql](dql/select_alias.sql) — Using column and table aliases in `SELECT` statements.
- [dql/select_distinct.sql](dql/select_distinct.sql) — Removing duplicate rows with `DISTINCT`.

## Functions and Expressions

### Single-Row Functions

- **Examples:**
  - [functions/single_row/examples/character_functions.sql](functions/single_row/examples/character_functions.sql) — String manipulation functions (40+ examples).
  - [functions/single_row/examples/number_functions.sql](functions/single_row/examples/number_functions.sql) — Numeric and mathematical functions.
  - [functions/single_row/examples/date_functions.sql](functions/single_row/examples/date_functions.sql) — Date and time handling functions (20+ examples).
  - [functions/single_row/examples/general_functions.sql](functions/single_row/examples/general_functions.sql) — Conditional logic and general utility functions.
- **Assignments:**
  - [functions/single_row/assignments/single_row_assignment.sql](functions/single_row/assignments/single_row_assignment.sql) — Practice exercises for single-row functions.
- **Notes:**
  - [functions/single_row/notes/overview.sql](functions/single_row/notes/overview.sql) — Quick reference guide for single-row functions.

### Aggregate Functions

- **Examples:**
  - [functions/aggregate/examples/aggregate_functions.sql](functions/aggregate/examples/aggregate_functions.sql) — Core aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).
  - [functions/aggregate/examples/group_by.sql](functions/aggregate/examples/group_by.sql) — Grouping data using `GROUP BY`.
  - [functions/aggregate/examples/having.sql](functions/aggregate/examples/having.sql) — Filtering grouped results with `HAVING`.
  - [functions/aggregate/examples/order_by.sql](functions/aggregate/examples/order_by.sql) — Sorting results with `ORDER BY`.
- **Assignments:**
  - [functions/aggregate/assignments/aggregate_assignment.sql](functions/aggregate/assignments/aggregate_assignment.sql) — Practice exercises for aggregate functions.

## Query Features

### Operators

- **Examples:**
  - [operators/examples/operators_examples.sql](operators/examples/operators_examples.sql) — Examples of various SQL operators (e.g., `IN`, `LIKE`, `BETWEEN`, `REGEXP`).
- **Assignments:**
  - [operators/assignments/operators_assignment.sql](operators/assignments/operators_assignment.sql) — Practice queries using different operators.

### Joins

- Comprehensive examples using the HR schema to combine data from multiple tables.
  - [joins/inner_join.sql](joins/inner_join.sql) — INNER JOIN examples.
  - [joins/left_join.sql](joins/left_join.sql) — LEFT JOIN examples.
  - [joins/right_join.sql](joins/right_join.sql) — RIGHT JOIN examples.
  - [joins/cross_join.sql](joins/cross_join.sql) — CROSS JOIN examples.
  - [joins/full_outer_join.sql](joins/full_outer_join.sql) — FULL OUTER JOIN examples.

### Indexes

- **`indexes/`** — Performance optimization strategies (placeholder).
  - [indexes/README.md](indexes/README.md)

### Subqueries

- Explores nested queries and advanced retrieval techniques.
- **Examples:**
  - [subqueries/examples/subquery.sql](subqueries/examples/subquery.sql) — Subquery fundamentals.
- **Assignments:**
  - [subqueries/assignments/assignment_01.sql](subqueries/assignments/assignment_01.sql) — SCOTT schema subquery exercises.
  - [subqueries/assignments/assignment_02.sql](subqueries/assignments/assignment_02.sql) — Additional SCOTT schema subqueries.
  - [subqueries/assignments/assignment_04.sql](subqueries/assignments/assignment_04.sql) — HR schema subqueries.
  - [subqueries/assignments/assignment_05.sql](subqueries/assignments/assignment_05.sql) — Advanced HR schema subqueries.
- **Query:**
  - [subqueries/query/subquery_01.sql](subqueries/query/subquery_01.sql) — Basic single-row subqueries.
  - [subqueries/query/subquery_02.sql](subqueries/query/subquery_02.sql) — Advanced subqueries with `IN`, `ANY`, `ALL` operators.

### Transactions

- **`transactions/`** — Transaction management concepts (placeholder).
  - [transactions/README.md](transactions/README.md)

## Practice and Examples

### Queries

- **Examples:**
  - [queries/examples/query_01.sql](queries/examples/query_01.sql) — Basic `SELECT` query examples.
  - [queries/examples/query_02.sql](queries/examples/query_02.sql) — Advanced filtering and query techniques.
- **Assignments:**
  - [queries/assignments/assignment_01.sql](queries/assignments/assignment_01.sql) — Practice assignments involving calculated columns and aliasing.

### GPT Assignments

- AI-generated subquery practice assignments using the HR schema.
  - [gpt_assignment/gpt_assignment_01.sql](gpt_assignment/gpt_assignment_01.sql) — AI-generated practice set 1.
  - [gpt_assignment/gpt_assignment_1.sql](gpt_assignment/gpt_assignment_1.sql) — AI-generated practice set 2.
  - [gpt_assignment/gpt_assignment_02.sql](gpt_assignment/gpt_assignment_02.sql) — AI-generated practice set 3.

### Tables

- **`tables/`** — Schema reference (placeholder).
  - [tables/README.md](tables/README.md)

## Sample Schemas

### SCOTT Schema

- [ddl/scott_table.sql](ddl/scott_table.sql) — Classic SCOTT schema definition.

### HR Schema

- [ddl/hr_schema.sql](ddl/hr_schema.sql) — Enterprise-level HR schema definition.

## Conventions

- **File Organization:** `examples/`, `assignments/`, `notes/` subdirectories within concept folders.
- **Naming Conventions:** Files (lowercase_with_underscores), Tables (UPPERCASE), Keywords (UPPERCASE).
- **SQL Style:** Uppercase keywords, consistent indentation, semicolons, comments.
- **Database Compatibility:** Primarily MySQL/MariaDB, with notes for Oracle/PostgreSQL.
- **Query Execution Order:** FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY.
