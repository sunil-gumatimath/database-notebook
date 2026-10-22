# Schema Reference

A high-level overview of the tables behind every example in this repository. Full definitions and sample data live in [`../02-ddl/schemas/`](../02-ddl/schemas/).

## SCOTT Schema

Simple and classic — ideal for fundamentals. Defined in [`../02-ddl/schemas/scott-schema.sql`](../02-ddl/schemas/scott-schema.sql).

| Table | Description |
| :--- | :--- |
| `EMP` | Employee details |
| `DEPT` | Department information |
| `SALGRADE` | Salary grade levels |
| `BONUS` | Bonus records |

## HR Schema

Enterprise-level — built for advanced querying. Defined in [`../02-ddl/schemas/hr-schema.sql`](../02-ddl/schemas/hr-schema.sql).

| Table | Description |
| :--- | :--- |
| `REGIONS` | Geographic regions |
| `COUNTRIES` | Countries and their regions |
| `LOCATIONS` | Office locations |
| `DEPARTMENTS` | Company departments |
| `JOBS` | Job roles and salary ranges |
| `EMPLOYEES` | Employee details |
| `JOB_HISTORY` | Employee job history |

## Relationships

| Relationship | Meaning |
| :--- | :--- |
| `COUNTRIES` → `REGIONS` | Every country belongs to a region |
| `LOCATIONS` → `COUNTRIES` | Every location is in a country |
| `DEPARTMENTS` → `LOCATIONS` | Every department operates at a location |
| `EMPLOYEES` → `DEPARTMENTS` | Every employee belongs to a department |
| `EMPLOYEES` → `JOBS` | Every employee holds a job |
| `EMPLOYEES` → `EMPLOYEES` | Every employee reports to a manager (self-referencing key) |
| `JOB_HISTORY` → `EMPLOYEES` / `JOBS` / `DEPARTMENTS` | History rows record a past job and department per employee |

---

[← Home](../README.md) · [Index](../INDEX.md)
