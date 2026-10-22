# DDL: Schema Definition and Management

Scripts for defining and managing database structures — tables, schemas, and their lifecycle.

## Contents

| File | Description |
| :--- | :--- |
| [`ddl-operations.sql`](ddl-operations.sql) | Core DDL commands: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` |
| [`schemas/scott-schema.sql`](schemas/scott-schema.sql) | Classic SCOTT schema: `EMP`, `DEPT`, `BONUS`, `SALGRADE` with sample data |
| [`schemas/hr-schema.sql`](schemas/hr-schema.sql) | Enterprise HR schema: seven tables from `REGIONS` to `JOB_HISTORY` |

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| Table creation | `CREATE TABLE` with data types and constraints |
| Table modification | Changing structure with `ALTER TABLE` |
| Table deletion | `DROP` removes the table; `TRUNCATE` empties it |
| Schema management | Loading and reusing the sample schemas |

## Prerequisites

> Load `schemas/scott-schema.sql` or `schemas/hr-schema.sql` before running anything in [`04-dql/`](../04-dql/), [`05-operators/`](../05-operators/), [`06-functions/`](../06-functions/), or [`queries/`](../queries/) — those folders assume the sample tables exist.

---

[← Fundamentals](../01-fundamentals/) · [Index](../INDEX.md) · [04 · DQL →](../04-dql/)
