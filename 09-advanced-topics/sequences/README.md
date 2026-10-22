# Sequences

Auto-incrementing values for primary keys — and how each major database implements them.

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| What a sequence is | A generator of unique, sequential numbers |
| Creation | `CREATE SEQUENCE` with `START`, `INCREMENT`, `MIN/MAX`, `CYCLE`, `CACHE` |
| Usage | `NEXT VALUE FOR` / `NEXTVAL` in `INSERT` statements |
| Management | `ALTER SEQUENCE`, restart / setval, `DROP SEQUENCE` |
| Portability | Oracle `NEXTVAL` · PostgreSQL `nextval()` · SQL Server `NEXT VALUE FOR` · MySQL typically uses `AUTO_INCREMENT` |

## Simple Example

```sql
-- Create a sequence
CREATE SEQUENCE employee_seq START WITH 1000 INCREMENT BY 1;

-- Use the sequence when inserting a row (syntax varies by DB)
-- PostgreSQL style:
INSERT INTO employees (employee_id, name)
VALUES (nextval('employee_seq'), 'Jane Doe');
```

---

[← Advanced Topics](../README.md) · [10 · Practice →](../../10-practice/)
