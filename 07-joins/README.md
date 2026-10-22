# Joins

Combining rows from two or more tables on related columns — the key to real-world queries. All examples use the HR schema.

## Contents

| Join type | File | What it does |
| :--- | :--- | :--- |
| INNER JOIN | [`examples/inner-join.sql`](examples/inner-join.sql) | Rows that match the condition in both tables |
| LEFT JOIN | [`examples/left-join.sql`](examples/left-join.sql) | All left rows plus matching right rows |
| RIGHT JOIN | [`examples/right-join.sql`](examples/right-join.sql) | All right rows plus matching left rows |
| FULL OUTER JOIN | [`examples/full-outer-join.sql`](examples/full-outer-join.sql) | All rows from both sides |
| CROSS JOIN | [`examples/cross-join.sql`](examples/cross-join.sql) | Cartesian product of both tables |
| NATURAL JOIN | [`examples/natural-join.sql`](examples/natural-join.sql) | Automatic join on same-named columns |
| SELF JOIN | [`examples/self-join.sql`](examples/self-join.sql) | A table joined to itself — hierarchies and comparisons |

## Assignments

| File | Description |
| :--- | :--- |
| [`assignments/joins-practice-01.sql`](assignments/joins-practice-01.sql) | JOIN practice assignments, set 1 |
| [`assignments/joins-practice-02.sql`](assignments/joins-practice-02.sql) | JOIN practice assignments, set 2 |

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| Join conditions | Defining matches with the `ON` clause |
| Table aliases | Short names for clearer multi-table queries |
| WHERE vs ON | Filtering rows after the join vs filtering the match |

## Prerequisites

> Load the HR schema first: [`../02-ddl/schemas/hr-schema.sql`](../02-ddl/schemas/hr-schema.sql) — the examples use `EMPLOYEES`, `DEPARTMENTS`, and related tables.

---

[← Aggregate Functions](../06-functions/aggregate/) · [Index](../INDEX.md) · [08 · Subqueries →](../08-subqueries/)
