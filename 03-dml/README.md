# DML: Modifying Data

The SQL commands that change table contents: inserting, updating, and deleting rows.

## Contents

| File | Description |
| :--- | :--- |
| [`examples/dml-operations.sql`](examples/dml-operations.sql) | Fundamental DML operations: `INSERT` new rows, `UPDATE` existing rows, `DELETE` rows |

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| Inserting data | `INSERT` adds new rows to a table |
| Updating data | `UPDATE` changes existing rows — always pair with `WHERE` |
| Deleting data | `DELETE` removes rows — `WHERE` matters just as much |

## Prerequisites

> Sample tables must be loaded first — run either [`../02-ddl/schemas/scott-schema.sql`](../02-ddl/schemas/scott-schema.sql) or [`../02-ddl/schemas/hr-schema.sql`](../02-ddl/schemas/hr-schema.sql) before executing these examples.

---

[← Operators](../05-operators/) · [Index](../INDEX.md) · [06 · Single-Row Functions →](../06-functions/single-row/)
