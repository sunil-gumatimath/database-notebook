# Project Index

A comprehensive index of SQL examples, assignments, and schema definitions within this repository.

## Core SQL Concepts

### Basics

- [01-fundamentals/data-types.sql](01-fundamentals/data-types.sql) — Guide to SQL data types with `CREATE TABLE` examples.
- [01-fundamentals/constraints.sql](01-fundamentals/constraints.sql) — Essential SQL constraints with practical examples.

### DDL (Data Definition Language)

- [02-ddl/ddl-operations.sql](02-ddl/ddl-operations.sql) — Core DDL operations for schema management.
- [02-ddl/schemas/scott-schema.sql](02-ddl/schemas/scott-schema.sql) — Classic SCOTT schema definition.
- [02-ddl/schemas/hr-schema.sql](02-ddl/schemas/hr-schema.sql) — Enterprise-level HR schema definition.

### DML (Data Manipulation Language)

- [03-dml/examples/dml-operations.sql](03-dml/examples/dml-operations.sql) — Row-level data manipulation operations.

### DQL (Data Query Language)

- [04-dql/examples/select-basics.sql](04-dql/examples/select-basics.sql) — Basic `SELECT` statements and querying fundamentals.
- [04-dql/examples/select-alias.sql](04-dql/examples/select-alias.sql) — Using column and table aliases in `SELECT` statements.
- [04-dql/examples/select-distinct.sql](04-dql/examples/select-distinct.sql) — Removing duplicate rows with `DISTINCT`.

## Functions and Expressions

### Single-Row Functions

- **Examples:**
  - [06-functions/single-row/examples/character-functions.sql](06-functions/single-row/examples/character-functions.sql) — String manipulation functions (40+ examples).
  - [06-functions/single-row/examples/number-functions.sql](06-functions/single-row/examples/number-functions.sql) — Numeric and mathematical functions.
  - [06-functions/single-row/examples/date-functions.sql](06-functions/single-row/examples/date-functions.sql) — Date and time handling functions (20+ examples).
  - [06-functions/single-row/examples/general-functions.sql](06-functions/single-row/examples/general-functions.sql) — Conditional logic and general utility functions.
- **Assignments:**
  - [06-functions/single-row/assignments/single-row-practice.sql](06-functions/single-row/assignments/single-row-practice.sql) — Practice exercises for single-row functions.
- **Notes:**
  - [06-functions/single-row/notes/quick-reference.sql](06-functions/single-row/notes/quick-reference.sql) — Quick reference guide for single-row functions.

### Aggregate Functions

- **Examples:**
  - [06-functions/aggregate/examples/aggregate-functions.sql](06-functions/aggregate/examples/aggregate-functions.sql) — Core aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).
  - [06-functions/aggregate/examples/group-by.sql](06-functions/aggregate/examples/group-by.sql) — Grouping data using `GROUP BY`.
  - [06-functions/aggregate/examples/having.sql](06-functions/aggregate/examples/having.sql) — Filtering grouped results with `HAVING`.
  - [06-functions/aggregate/examples/order-by.sql](06-functions/aggregate/examples/order-by.sql) — Sorting results with `ORDER BY`.
- **Assignments:**
  - [06-functions/aggregate/assignments/aggregate-practice.sql](06-functions/aggregate/assignments/aggregate-practice.sql) — Practice exercises for aggregate functions.

## Query Features

### Operators

- **Examples:**
  - [05-operators/examples/operators-demo.sql](05-operators/examples/operators-demo.sql) — Examples of various SQL operators (e.g., `IN`, `LIKE`, `BETWEEN`, `REGEXP`).
- **Assignments:**
  - [05-operators/assignments/operators-practice.sql](05-operators/assignments/operators-practice.sql) — Practice queries using different operators.

### Joins

- Comprehensive examples using the HR schema to combine data from multiple tables.
- **Examples:**
  - [07-joins/examples/inner-join.sql](07-joins/examples/inner-join.sql) — INNER JOIN examples.
  - [07-joins/examples/left-join.sql](07-joins/examples/left-join.sql) — LEFT JOIN examples.
  - [07-joins/examples/right-join.sql](07-joins/examples/right-join.sql) — RIGHT JOIN examples.
  - [07-joins/examples/cross-join.sql](07-joins/examples/cross-join.sql) — CROSS JOIN examples.
  - [07-joins/examples/full-outer-join.sql](07-joins/examples/full-outer-join.sql) — FULL OUTER JOIN examples.
  - [07-joins/examples/natural-join.sql](07-joins/examples/natural-join.sql) — NATURAL JOIN examples.
  - [07-joins/examples/self-join.sql](07-joins/examples/self-join.sql) — SELF JOIN examples.
- **Assignments:**
  - [07-joins/assignments/joins-practice-01.sql](07-joins/assignments/joins-practice-01.sql) — JOIN practice assignments set 1.
  - [07-joins/assignments/joins-practice-02.sql](07-joins/assignments/joins-practice-02.sql) — JOIN practice assignments set 2.

### Indexes

- **`09-advanced-topics/indexes/`** — Performance optimization strategies.
  - [09-advanced-topics/indexes/indexes-examples.sql](09-advanced-topics/indexes/indexes-examples.sql) — Database indexes concepts and examples.
  - [09-advanced-topics/indexes/README.md](09-advanced-topics/indexes/README.md) — Indexes overview and key concepts.

### Subqueries

- Explores nested queries and advanced retrieval techniques.
- **Examples:**
  - [08-subqueries/examples/subquery-basics.sql](08-subqueries/examples/subquery-basics.sql) — Subquery fundamentals.
  - [08-subqueries/examples/single-row-subqueries.sql](08-subqueries/examples/single-row-subqueries.sql) — Basic single-row subqueries.
  - [08-subqueries/examples/multi-row-subqueries.sql](08-subqueries/examples/multi-row-subqueries.sql) — Advanced subqueries with `IN`, `ANY`, `ALL` operators.
- **Assignments:**
  - [08-subqueries/assignments/scott-schema-practice-01.sql](08-subqueries/assignments/scott-schema-practice-01.sql) — SCOTT schema subquery exercises.
  - [08-subqueries/assignments/scott-schema-practice-02.sql](08-subqueries/assignments/scott-schema-practice-02.sql) — Additional SCOTT schema subqueries.
  - [08-subqueries/assignments/hr-schema-practice-01.sql](08-subqueries/assignments/hr-schema-practice-01.sql) — HR schema subqueries.
  - [08-subqueries/assignments/hr-schema-practice-02.sql](08-subqueries/assignments/hr-schema-practice-02.sql) — Advanced HR schema subqueries.

### Transactions

- **`09-advanced-topics/transactions/`** — Transaction management concepts (placeholder).
  - [09-advanced-topics/transactions/README.md](09-advanced-topics/transactions/README.md)

## Practice and Examples

### Queries

- **Examples:**
  - [queries/examples/query_01.sql](queries/examples/query_01.sql) — Basic `SELECT` query examples.
  - [queries/examples/query_02.sql](queries/examples/query_02.sql) — Advanced filtering and query techniques.
- **Assignments:**
  - [queries/assignments/assignment_01.sql](queries/assignments/assignment_01.sql) — Practice assignments involving calculated columns and aliasing.

### GPT Assignments

- AI-generated subquery practice assignments using the HR schema.
  - [10-practice/ai-generated-exercises/subqueries-set-01.sql](10-practice/ai-generated-exercises/subqueries-set-01.sql) — AI-generated practice set 1.
  - [10-practice/ai-generated-exercises/subqueries-set-02.sql](10-practice/ai-generated-exercises/subqueries-set-02.sql) — AI-generated practice set 2.
  - [10-practice/ai-generated-exercises/subqueries-set-03.sql](10-practice/ai-generated-exercises/subqueries-set-03.sql) — AI-generated practice set 3.

### Tables

- **`tables/`** — Schema reference.
  - [tables/README.md](tables/README.md)

### Sequences

- **`09-advanced-topics/sequences/`** — Sequence objects for auto-incrementing values.
  - [09-advanced-topics/sequences/README.md](09-advanced-topics/sequences/README.md) — Comprehensive guide to sequence creation, usage, and management.

### Views

- **`09-advanced-topics/views/`** — Database views for virtual tables.
  - [09-advanced-topics/views/views-examples.sql](09-advanced-topics/views/views-examples.sql) — Examples of creating, querying, and dropping views.
  - [09-advanced-topics/views/README.md](09-advanced-topics/views/README.md) — Views overview and key concepts.

## Sample Schemas

### SCOTT Schema

- [02-ddl/schemas/scott-schema.sql](02-ddl/schemas/scott-schema.sql) — Classic SCOTT schema definition.

### HR Schema

- [02-ddl/schemas/hr-schema.sql](02-ddl/schemas/hr-schema.sql) — Enterprise-level HR schema definition.

## Conventions

- **File Organization:** Numbered folders (01-10) for learning progression; `examples/`, `assignments/`, `notes/` subdirectories within concept folders.
- **Naming Conventions:** Files (lowercase-with-hyphens), Tables (UPPERCASE), Keywords (UPPERCASE).
- **SQL Style:** Uppercase keywords, consistent indentation, semicolons, comments.
- **Database Compatibility:** Primarily MySQL/MariaDB, with notes for Oracle/PostgreSQL.
- **Query Execution Order:** FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY.
