# Joins: Combining Data from Multiple Tables

This directory provides examples of how to combine rows from two or more tables based on related columns using various SQL JOIN types. Understanding joins is fundamental for querying complex datasets.

## Planned Content:

- **INNER JOIN:** Retrieving rows where the join condition is met in both tables.
  - [`joins/inner_join.sql`](joins/inner_join.sql)
- **OUTER JOINs (LEFT, RIGHT, FULL OUTER):** Retrieving all rows from one table and matching rows from the other, or retrieving all rows from both tables.
  - [`joins/left_join.sql`](joins/left_join.sql)
  - [`joins/right_join.sql`](joins/right_join.sql)
  - [`joins/full_outer_join.sql`](joins/full_outer_join.sql)
- **CROSS JOIN:** Generating a Cartesian product of rows from both tables.
  - [`joins/cross_join.sql`](joins/cross_join.sql)
- **SELF JOIN:** Joining a table to itself to query hierarchical data or compare rows within the same table.
  - [`joins/self_join.sql`](joins/self_join.sql)

## Key Concepts Covered:

- Defining join conditions using `ON` clause.
- Using table aliases for clarity.
- Filtering joined results using `WHERE` and `ON` clauses.

**Status:** This directory is currently being populated with example SQL files.
