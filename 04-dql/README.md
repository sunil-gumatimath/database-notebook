# DQL: Retrieving Data

The `SELECT` statement and everything needed to get data out of a database and make it readable.

## Contents

| File | Description |
| :--- | :--- |
| [`examples/select-basics.sql`](examples/select-basics.sql) | Basic `SELECT` statements, `WHERE` filtering, column projection, simple aggregation |
| [`examples/select-alias.sql`](examples/select-alias.sql) | Column and table aliases for clearer queries and output |
| [`examples/select-distinct.sql`](examples/select-distinct.sql) | Removing duplicate rows with `DISTINCT` |

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| Basic SELECT | Projecting columns and retrieving rows |
| Filtering | Conditions in the `WHERE` clause |
| Aliases | Renaming columns and tables for readability |
| Distinct values | Eliminating duplicate result rows |

## Suggested Order

`select-basics.sql` for fundamentals → `select-alias.sql` for readability → `select-distinct.sql` for handling duplicate data.

---

[← DDL](../02-ddl/) · [Index](../INDEX.md) · [05 · Operators →](../05-operators/)
