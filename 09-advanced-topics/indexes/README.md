# Indexes

Speeding up reads at the cost of slower writes and extra storage.

## Contents

| File | Description |
| :--- | :--- |
| [`indexes-examples.sql`](indexes-examples.sql) | Basic examples of creating, viewing, and dropping indexes |

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| What an index is | A lookup structure that avoids full table scans |
| Creating | `CREATE INDEX` — single-column and composite |
| Managing | Viewing with `SHOW INDEX`, removing with `DROP INDEX` |
| Trade-offs | Faster `SELECT`, slower `INSERT`/`UPDATE`/`DELETE`, extra storage |

---

[← Advanced Topics](../README.md) · [10 · Practice →](../../10-practice/)
