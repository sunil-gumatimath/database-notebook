# Sequences: Auto-incrementing Values

This directory contains a brief reference for SQL sequences used to generate unique, sequential numbers (commonly for primary keys).

## Key Concepts Covered

- What is a Sequence: Purpose and typical use for primary keys.
- Creation: CREATE SEQUENCE with START, INCREMENT, MIN/MAX, CYCLE, CACHE.
- Usage: Use NEXT VALUE FOR / NEXTVAL in INSERT statements.
- Management: ALTER SEQUENCE, RESTART/SETVAL, DROP SEQUENCE.
- Portability: Oracle NEXTVAL, PostgreSQL nextval(), SQL Server NEXT VALUE FOR; MySQL typically uses AUTO_INCREMENT.

## Simple example

```sql
-- Create a sequence
CREATE SEQUENCE employee_seq START WITH 1000 INCREMENT BY 1;

-- Use the sequence when inserting a row (syntax varies by DB)
-- PostgreSQL style:
INSERT INTO employees (employee_id, name)
VALUES (nextval('employee_seq'), 'Jane Doe');
```
