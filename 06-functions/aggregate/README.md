# Aggregate Functions

Functions that collapse many rows into a single summary value, plus the clauses that group and filter them.

## Contents

| File | Description |
| :--- | :--- |
| [`examples/aggregate-functions.sql`](examples/aggregate-functions.sql) | Core aggregates: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` |
| [`examples/group-by.sql`](examples/group-by.sql) | Per-group calculations with `GROUP BY` |
| [`examples/having.sql`](examples/having.sql) | Filtering grouped results with `HAVING` |
| [`examples/order-by.sql`](examples/order-by.sql) | Sorting final results with `ORDER BY` |
| [`assignments/aggregate-practice.sql`](assignments/aggregate-practice.sql) | Practice exercises for aggregates and clauses |

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| Aggregates | Summarizing a set of rows into one value |
| GROUP BY | Partitioning rows into groups for per-group results |
| HAVING | Filtering groups — `WHERE` filters rows, `HAVING` filters groups |
| ORDER BY | Sorting the final result set |

## Suggested Order

`aggregate-functions.sql` → `group-by.sql` → `having.sql` → `order-by.sql` → `aggregate-practice.sql`.

---

[← Single-Row Functions](../single-row/) · [Index](../../INDEX.md) · [07 · Joins →](../../07-joins/)
