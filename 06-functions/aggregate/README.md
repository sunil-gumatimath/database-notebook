# Aggregate Functions: Summarizing Data

This directory explores aggregate functions, which perform calculations across a set of rows to return a single summary value. It also covers related clauses like `GROUP BY`, `HAVING`, and `ORDER BY` that are crucial for effective data summarization.

## Contents

- **Examples:**
  - [`examples/aggregate-functions.sql`](examples/aggregate-functions.sql) — Introduces core aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.
  - [`examples/group-by.sql`](examples/group-by.sql) — Demonstrates how to group rows using the `GROUP BY` clause for per-group aggregations.
  - [`examples/having.sql`](examples/having.sql) — Explains how to filter aggregated results using the `HAVING` clause.
  - [`examples/order-by.sql`](examples/order-by.sql) — Shows how to sort the final aggregated results using `ORDER BY`.
- **Assignments:**
  - [`assignments/aggregate-practice.sql`](assignments/aggregate-practice.sql) — Practice tasks to reinforce understanding of aggregate functions and clauses.

## Key Concepts Covered

- **Aggregate Functions:** `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` for data summarization.
- **GROUP BY:** Grouping rows for per-group calculations.
- **HAVING:** Filtering groups based on aggregate conditions.
- **ORDER BY:** Sorting aggregated results.

**Suggested Learning Order:** Start with `examples/aggregate-functions.sql` to understand the functions themselves, then move to `examples/group-by.sql`, `examples/having.sql`, and `examples/order-by.sql` to learn how to structure and refine aggregated results, and finally complete the `assignments/aggregate-practice.sql` for practice.
