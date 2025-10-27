# Views: Virtual Tables

This directory contains a brief overview of database views (virtual tables defined by a SELECT) for simplifying queries and controlling access.

## Contents

- [`views-examples.sql`](views-examples.sql) — Basic examples of creating, querying, and dropping views.

## Key Concepts Covered

- What is a View: Virtual table defined by a SELECT over base tables.
- Creation and Modification: CREATE VIEW, CREATE OR REPLACE VIEW, DROP VIEW.
- Updatability: Simple views may be updatable; complex views usually read-only.
- Materialized/Indexed Views: Persisted results (DB-specific).
- Use Cases: Simplification, security, and a consistent access layer.

## Simple example

```sql
-- Create a simple view
CREATE VIEW active_employees AS
SELECT employee_id, first_name, last_name
FROM employees
WHERE status = 'ACTIVE';

-- Query the view
SELECT * FROM active_employees;
```
