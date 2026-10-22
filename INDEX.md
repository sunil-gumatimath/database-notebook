# Project Index

Every SQL file in this repository, grouped by topic and listed in learning order. For the recommended sequence, see [LEARNING_PATH.md](LEARNING_PATH.md).

## 01 · Fundamentals

| File | Description |
| :--- | :--- |
| [`01-fundamentals/data-types.sql`](01-fundamentals/data-types.sql) | Guide to SQL data types with `CREATE TABLE` examples |
| [`01-fundamentals/constraints.sql`](01-fundamentals/constraints.sql) | Essential constraints: `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `DEFAULT` |

## 02 · DDL

| File | Description |
| :--- | :--- |
| [`02-ddl/ddl-operations.sql`](02-ddl/ddl-operations.sql) | Core DDL commands: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` |
| [`02-ddl/schemas/scott-schema.sql`](02-ddl/schemas/scott-schema.sql) | Classic SCOTT schema definition |
| [`02-ddl/schemas/hr-schema.sql`](02-ddl/schemas/hr-schema.sql) | Enterprise-level HR schema definition |

## 03 · DML

| File | Description |
| :--- | :--- |
| [`03-dml/examples/dml-operations.sql`](03-dml/examples/dml-operations.sql) | Row-level data manipulation: `INSERT`, `UPDATE`, `DELETE` |

## 04 · DQL

| File | Description |
| :--- | :--- |
| [`04-dql/examples/select-basics.sql`](04-dql/examples/select-basics.sql) | Basic `SELECT` statements and querying fundamentals |
| [`04-dql/examples/select-alias.sql`](04-dql/examples/select-alias.sql) | Using column and table aliases in `SELECT` statements |
| [`04-dql/examples/select-distinct.sql`](04-dql/examples/select-distinct.sql) | Removing duplicate rows with `DISTINCT` |

## 05 · Operators

| File | Description |
| :--- | :--- |
| [`05-operators/examples/operators-demo.sql`](05-operators/examples/operators-demo.sql) | Comparison, logical, `IN`, `LIKE`, `BETWEEN`, and `REGEXP` operators |
| [`05-operators/assignments/operators-practice.sql`](05-operators/assignments/operators-practice.sql) | Practice queries using different operators |

## 06 · Functions — Single-Row

| File | Description |
| :--- | :--- |
| [`06-functions/single-row/notes/quick-reference.sql`](06-functions/single-row/notes/quick-reference.sql) | Quick reference guide for single-row functions |
| [`06-functions/single-row/examples/character-functions.sql`](06-functions/single-row/examples/character-functions.sql) | String manipulation functions (40+ examples) |
| [`06-functions/single-row/examples/number-functions.sql`](06-functions/single-row/examples/number-functions.sql) | Numeric and mathematical functions |
| [`06-functions/single-row/examples/date-functions.sql`](06-functions/single-row/examples/date-functions.sql) | Date and time handling functions (20+ examples) |
| [`06-functions/single-row/examples/general-functions.sql`](06-functions/single-row/examples/general-functions.sql) | Conditional logic and general utility functions |
| [`06-functions/single-row/assignments/single-row-practice.sql`](06-functions/single-row/assignments/single-row-practice.sql) | Practice exercises for single-row functions |

## 06 · Functions — Aggregate

| File | Description |
| :--- | :--- |
| [`06-functions/aggregate/examples/aggregate-functions.sql`](06-functions/aggregate/examples/aggregate-functions.sql) | Core aggregates: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` |
| [`06-functions/aggregate/examples/group-by.sql`](06-functions/aggregate/examples/group-by.sql) | Grouping data using `GROUP BY` |
| [`06-functions/aggregate/examples/having.sql`](06-functions/aggregate/examples/having.sql) | Filtering grouped results with `HAVING` |
| [`06-functions/aggregate/examples/order-by.sql`](06-functions/aggregate/examples/order-by.sql) | Sorting results with `ORDER BY` |
| [`06-functions/aggregate/assignments/aggregate-practice.sql`](06-functions/aggregate/assignments/aggregate-practice.sql) | Practice exercises for aggregate functions |

## 07 · Joins

| File | Description |
| :--- | :--- |
| [`07-joins/examples/inner-join.sql`](07-joins/examples/inner-join.sql) | INNER JOIN examples |
| [`07-joins/examples/left-join.sql`](07-joins/examples/left-join.sql) | LEFT JOIN examples |
| [`07-joins/examples/right-join.sql`](07-joins/examples/right-join.sql) | RIGHT JOIN examples |
| [`07-joins/examples/full-outer-join.sql`](07-joins/examples/full-outer-join.sql) | FULL OUTER JOIN examples |
| [`07-joins/examples/cross-join.sql`](07-joins/examples/cross-join.sql) | CROSS JOIN examples |
| [`07-joins/examples/natural-join.sql`](07-joins/examples/natural-join.sql) | NATURAL JOIN examples |
| [`07-joins/examples/self-join.sql`](07-joins/examples/self-join.sql) | SELF JOIN examples |
| [`07-joins/assignments/joins-practice-01.sql`](07-joins/assignments/joins-practice-01.sql) | JOIN practice assignments, set 1 |
| [`07-joins/assignments/joins-practice-02.sql`](07-joins/assignments/joins-practice-02.sql) | JOIN practice assignments, set 2 |

## 08 · Subqueries

| File | Description |
| :--- | :--- |
| [`08-subqueries/examples/subquery-basics.sql`](08-subqueries/examples/subquery-basics.sql) | Subquery fundamentals |
| [`08-subqueries/examples/single-row-subqueries.sql`](08-subqueries/examples/single-row-subqueries.sql) | Single-row subqueries |
| [`08-subqueries/examples/multi-row-subqueries.sql`](08-subqueries/examples/multi-row-subqueries.sql) | Multi-row subqueries with `IN`, `ANY`, `ALL` |
| [`08-subqueries/assignments/scott-schema-practice-01.sql`](08-subqueries/assignments/scott-schema-practice-01.sql) | SCOTT schema subquery exercises |
| [`08-subqueries/assignments/scott-schema-practice-02.sql`](08-subqueries/assignments/scott-schema-practice-02.sql) | Additional SCOTT schema subqueries |
| [`08-subqueries/assignments/hr-schema-practice-01.sql`](08-subqueries/assignments/hr-schema-practice-01.sql) | HR schema subqueries |
| [`08-subqueries/assignments/hr-schema-practice-02.sql`](08-subqueries/assignments/hr-schema-practice-02.sql) | Advanced HR schema subqueries |

## 09 · Advanced Topics

| File | Description |
| :--- | :--- |
| [`09-advanced-topics/indexes/indexes-examples.sql`](09-advanced-topics/indexes/indexes-examples.sql) | Creating, viewing, and dropping indexes |
| [`09-advanced-topics/indexes/README.md`](09-advanced-topics/indexes/README.md) | Indexes overview and key concepts |
| [`09-advanced-topics/views/views-examples.sql`](09-advanced-topics/views/views-examples.sql) | Creating, querying, and dropping views |
| [`09-advanced-topics/views/README.md`](09-advanced-topics/views/README.md) | Views overview and key concepts |
| [`09-advanced-topics/sequences/README.md`](09-advanced-topics/sequences/README.md) | Guide to sequence creation, usage, and management |
| [`09-advanced-topics/transactions/README.md`](09-advanced-topics/transactions/README.md) | Transaction control, ACID, and isolation levels |

## 10 · Practice

| File | Description |
| :--- | :--- |
| [`10-practice/ai-generated-exercises/subqueries-set-01.sql`](10-practice/ai-generated-exercises/subqueries-set-01.sql) | HR schema subquery practice, set 1 |
| [`10-practice/ai-generated-exercises/subqueries-set-02.sql`](10-practice/ai-generated-exercises/subqueries-set-02.sql) | HR schema subquery practice, set 2 |
| [`10-practice/ai-generated-exercises/subqueries-set-03.sql`](10-practice/ai-generated-exercises/subqueries-set-03.sql) | HR schema subquery practice, set 3 |

## Query Collections

| File | Description |
| :--- | :--- |
| [`queries/examples/query_01.sql`](queries/examples/query_01.sql) | Basic `SELECT` query examples |
| [`queries/examples/query_02.sql`](queries/examples/query_02.sql) | Advanced filtering and query techniques |
| [`queries/assignments/assignment_01.sql`](queries/assignments/assignment_01.sql) | Practice assignment: calculated columns and aliasing |

## Schema Reference

| File | Description |
| :--- | :--- |
| [`tables/README.md`](tables/README.md) | High-level overview of SCOTT and HR tables |
| [`02-ddl/schemas/scott-schema.sql`](02-ddl/schemas/scott-schema.sql) | SCOTT schema: full definitions and sample data |
| [`02-ddl/schemas/hr-schema.sql`](02-ddl/schemas/hr-schema.sql) | HR schema: full definitions and sample data |

## Conventions

| Convention | Rule |
| :--- | :--- |
| Folder numbering | `01` through `10`, mirroring the learning progression |
| Subfolders | `examples/`, `assignments/`, `notes/` inside topic folders |
| Naming | Files lowercase-with-hyphens · tables UPPERCASE · keywords UPPERCASE |
| Dialect | MySQL/MariaDB first; Oracle and PostgreSQL notes inline where relevant |
| Query execution order | `FROM` → `WHERE` → `GROUP BY` → `HAVING` → `SELECT` → `ORDER BY` |
