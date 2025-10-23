# Subqueries: Nested Queries

This directory delves into subqueries (also known as inner queries or nested queries), which are queries embedded within other SQL statements. They are powerful tools for performing complex data retrieval and manipulation.

## Contents

- **Examples:**
  - [`examples/subquery-basics.sql`](examples/subquery-basics.sql) — Covers core subquery concepts and provides simple, illustrative examples.
  - [`examples/single-row-subqueries.sql`](examples/single-row-subqueries.sql) — Demonstrates basic single-row subqueries.
  - [`examples/multi-row-subqueries.sql`](examples/multi-row-subqueries.sql) — Explores advanced subqueries, including those using `IN`, `ANY`, and `ALL` operators.
- **Assignments:**
  - A collection of practice sets to reinforce subquery usage:
    - [`assignments/scott-schema-practice-01.sql`](assignments/scott-schema-practice-01.sql) — SCOTT schema subquery exercises.
    - [`assignments/scott-schema-practice-02.sql`](assignments/scott-schema-practice-02.sql) — Additional SCOTT schema subqueries.
    - [`assignments/hr-schema-practice-01.sql`](assignments/hr-schema-practice-01.sql) — HR schema subqueries.
    - [`assignments/hr-schema-practice-02.sql`](assignments/hr-schema-practice-02.sql) — Advanced HR schema subqueries.

## Key Concepts Covered

- **Single-Row Subqueries:** Subqueries that return a single value.
- **Multi-Row Subqueries:** Subqueries that return multiple values, used with `IN`, `ANY`, `ALL`.
- **Correlated Subqueries:** Subqueries that reference the outer query.
- **Subquery Usage:** In `WHERE`, `FROM`, `SELECT` clauses.

**Suggested Learning Order:** Start with the core concepts in `examples/subquery-basics.sql`, then explore `examples/single-row-subqueries.sql` and `examples/multi-row-subqueries.sql` for practical applications, and finally solidify your understanding by completing the assignments.
