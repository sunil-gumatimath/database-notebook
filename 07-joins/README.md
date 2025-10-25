# Joins: Combining Data from Multiple Tables

This directory provides examples of how to combine rows from two or more tables based on related columns using various SQL JOIN types. Understanding joins is fundamental for querying complex datasets.

## Contents

- **INNER JOIN:** Retrieving rows where the join condition is met in both tables.
  - [`examples/inner-join.sql`](examples/inner-join.sql)
- **OUTER JOINs (LEFT, RIGHT, FULL OUTER):** Retrieving all rows from one table and matching rows from the other, or retrieving all rows from both tables.
  - [`examples/left-join.sql`](examples/left-join.sql)
  - [`examples/right-join.sql`](examples/right-join.sql)
  - [`examples/full-outer-join.sql`](examples/full-outer-join.sql)
- **CROSS JOIN:** Generating a Cartesian product of rows from both tables.
  - [`examples/cross-join.sql`](examples/cross-join.sql)
- **NATURAL JOIN:** Automatic join based on columns with the same name.
  - [`examples/natural-join.sql`](examples/natural-join.sql)
- **SELF JOIN:** Joining a table to itself to query hierarchical data or compare rows within the same table.
  - [`examples/self-join.sql`](examples/self-join.sql)
- **Practice Assignments:** AI-generated JOIN exercises.
  - [`assignments/joins-practice-01.sql`](assignments/joins-practice-01.sql)
  - [`assignments/joins-practice-02.sql`](assignments/joins-practice-02.sql)

## Key Concepts Covered

- Defining join conditions using `ON` clause.
- Using table aliases for clarity.
- Filtering joined results using `WHERE` and `ON` clauses.

**Prerequisites:** Ensure you have loaded the HR schema using [`../02-ddl/schemas/hr-schema.sql`](../02-ddl/schemas/hr-schema.sql) before executing the join examples, as they reference the EMPLOYEES and DEPARTMENTS tables.
