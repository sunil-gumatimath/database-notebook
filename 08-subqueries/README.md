# Subqueries

Queries nested inside other queries — the step up from single-table thinking.

## Contents

| File | Description |
| :--- | :--- |
| [`examples/subquery-basics.sql`](examples/subquery-basics.sql) | Core subquery concepts and simple illustrative examples |
| [`examples/single-row-subqueries.sql`](examples/single-row-subqueries.sql) | Subqueries that return a single value |
| [`examples/multi-row-subqueries.sql`](examples/multi-row-subqueries.sql) | Multi-row subqueries with `IN`, `ANY`, `ALL` |
| [`assignments/scott-schema-practice-01.sql`](assignments/scott-schema-practice-01.sql) | SCOTT schema subquery exercises |
| [`assignments/scott-schema-practice-02.sql`](assignments/scott-schema-practice-02.sql) | Additional SCOTT schema subqueries |
| [`assignments/hr-schema-practice-01.sql`](assignments/hr-schema-practice-01.sql) | HR schema subqueries |
| [`assignments/hr-schema-practice-02.sql`](assignments/hr-schema-practice-02.sql) | Advanced HR schema subqueries |

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| Single-row | Compare against exactly one value |
| Multi-row | Compare against a set with `IN`, `ANY`, `ALL` |
| Correlated | Subquery that references the outer query |
| Placement | Subqueries in `WHERE`, `FROM`, `SELECT`, and `HAVING` |

## Suggested Order

`subquery-basics.sql` → `single-row-subqueries.sql` → `multi-row-subqueries.sql` → the assignments, starting with the SCOTT sets, then the HR sets.

---

[← Joins](../07-joins/) · [Index](../INDEX.md) · [09 · Advanced Topics →](../09-advanced-topics/)
