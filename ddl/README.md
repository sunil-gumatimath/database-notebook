# DDL (Data Definition Language): Schema Management

This directory contains scripts for defining and managing database schemas, including table creation, modification, and deletion.

## Contents:

- [`ddl/ddl_commands.sql`](ddl/ddl_commands.sql) — Demonstrates core DDL commands: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`.
- [`ddl/scott_table.sql`](ddl/scott_table.sql) — Definition for the classic SCOTT schema, including `EMP`, `DEPT`, `BONUS`, and `SALGRADE` tables with sample data.
- [`ddl/hr_schema.sql`](ddl/hr_schema.sql) — Definition for the enterprise-level HR schema, including tables like `EMPLOYEES`, `DEPARTMENTS`, `JOBS`, `LOCATIONS`, `COUNTRIES`, and `REGIONS`.

**Tip:** It is recommended to load either the `scott_table.sql` or `hr_schema.sql` script into your database before attempting the examples found in the `queries/` and `dql/` directories.
