# Views

Virtual tables defined by a `SELECT` — for simplifying queries, controlling access, and keeping a consistent access layer.

## Contents

| File | Description |
| :--- | :--- |
| [`views-examples.sql`](views-examples.sql) | Basic examples of creating, querying, and dropping views |

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| What a view is | A named `SELECT` that behaves like a table |
| Creating and modifying | `CREATE VIEW`, `CREATE OR REPLACE VIEW`, `DROP VIEW` |
| Updatability | Simple views may be updatable; complex views are usually read-only |
| Materialized views | Persisted results — DB-specific feature |

## Simple Example

```sql
-- Create a simple view
CREATE VIEW active_employees AS
SELECT employee_id, first_name, last_name
FROM employees
WHERE status = 'ACTIVE';

-- Query the view
SELECT * FROM active_employees;
```

---

[← Advanced Topics](../README.md) · [10 · Practice →](../../10-practice/)
