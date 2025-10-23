# Joins: Combining Data from Multiple Tables

This directory provides examples of how to combine rows from two or more tables based on related columns using various SQL JOIN types. Understanding joins is fundamental for querying complex datasets.

## Contents

- **INNER JOIN:** Retrieving rows where the join condition is met in both tables.
  - [`joins/inner_join.sql`](joins/inner_join.sql)
- **OUTER JOINs (LEFT, RIGHT, FULL OUTER):** Retrieving all rows from one table and matching rows from the other, or retrieving all rows from both tables.
  - [`joins/left_join.sql`](joins/left_join.sql)
  - [`joins/right_join.sql`](joins/right_join.sql)
  - [`joins/full_outer_join.sql`](joins/full_outer_join.sql)
- **CROSS JOIN:** Generating a Cartesian product of rows from both tables.
  - [`joins/cross_join.sql`](joins/cross_join.sql)
- **NATURAL JOIN:** Automatic join based on columns with the same name.
  - [`joins/natural_join.sql`](joins/natural_join.sql)
- **SELF JOIN:** Joining a table to itself to query hierarchical data or compare rows within the same table.
  - [`joins/self_join.sql`](joins/self_join.sql)
- **Practice Assignments:** AI-generated JOIN exercises.
  - [`joins/gpt_assignment.joins.sql`](joins/gpt_assignment.joins.sql)

## Key Concepts Covered

- Defining join conditions using `ON` clause.
- Using table aliases for clarity.
- Filtering joined results using `WHERE` and `ON` clauses.

**Prerequisites:** Ensure you have loaded the HR schema using [`ddl/hr_schema.sql`](ddl/hr_schema.sql) before executing the join examples, as they reference the EMPLOYEES and DEPARTMENTS tables.
