# Aggregate Functions: Summarizing Data

This directory explores aggregate functions, which perform calculations across a set of rows to return a single summary value. It also covers related clauses like `GROUP BY`, `HAVING`, and `ORDER BY` that are crucial for effective data summarization.

## Contents:

- **Examples:**
  - [`functions/aggregate/examples/aggregate_functions.sql`](functions/aggregate/examples/aggregate_functions.sql) — Introduces core aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.
  - [`functions/aggregate/examples/group_by.sql`](functions/aggregate/examples/group_by.sql) — Demonstrates how to group rows using the `GROUP BY` clause for per-group aggregations.
  - [`functions/aggregate/examples/having.sql`](functions/aggregate/examples/having.sql) — Explains how to filter aggregated results using the `HAVING` clause.
  - [`functions/aggregate/examples/order_by.sql`](functions/aggregate/examples/order_by.sql) — Shows how to sort the final aggregated results using `ORDER BY`.
- **Assignments:**
  - [`functions/aggregate/assignments/aggregate_assignment.sql`](functions/aggregate/assignments/aggregate_assignment.sql) — Practice tasks to reinforce understanding of aggregate functions and clauses.

**Suggested Learning Order:** Start with `aggregate_functions.sql` to understand the functions themselves, then move to `group_by.sql`, `having.sql`, and `order_by.sql` to learn how to structure and refine aggregated results, and finally complete the `aggregate_assignment.sql` for practice.
