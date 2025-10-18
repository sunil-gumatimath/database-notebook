# Views: Virtual Tables

This directory covers database views, which are virtual tables representing the result of a stored query. Views provide a way to simplify complex queries, restrict access to sensitive data, and present data in different ways without storing it physically.

## Contents

- [`views/views.sql`](views/views.sql) — Demonstrates how to create, query, and drop views, including practical examples using the HR schema.

## Key Concepts Covered

- **View Creation:** Syntax for creating views using `CREATE VIEW`.
- **View Usage:** Querying views like regular tables using `SELECT`.
- **View Management:** Dropping views with `DROP VIEW`.
- **Best Practices:** When to use views, performance considerations, and security implications.

**Prerequisite:** Ensure you have loaded the HR schema using [`ddl/hr_schema.sql`](../ddl/hr_schema.sql) before executing the view examples.
