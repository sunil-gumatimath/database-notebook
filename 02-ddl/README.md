# DDL (Data Definition Language): Schema Management

This directory contains scripts for defining and managing database schemas, including table creation, modification, and deletion.

## Contents

- [`ddl-operations.sql`](ddl-operations.sql) — Demonstrates core DDL commands: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`.
- [`schemas/scott-schema.sql`](schemas/scott-schema.sql) — Definition for the classic SCOTT schema, including `EMP`, `DEPT`, `BONUS`, and `SALGRADE` tables with sample data.
- [`schemas/hr-schema.sql`](schemas/hr-schema.sql) — Definition for the enterprise-level HR schema, including tables like `EMPLOYEES`, `DEPARTMENTS`, `JOBS`, `LOCATIONS`, `COUNTRIES`, and `REGIONS`.

## Key Concepts Covered

- **Table Creation:** Using `CREATE TABLE` with data types and constraints.
- **Table Modification:** Altering table structure with `ALTER TABLE`.
- **Table Deletion:** Removing tables and data with `DROP` and `TRUNCATE`.
- **Schema Management:** Working with database schemas and objects.

**Tip:** It is recommended to load either the `schemas/scott-schema.sql` or `schemas/hr-schema.sql` script into your database before attempting the examples found in the `queries/` and `04-dql/` directories.
