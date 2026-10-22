# Transactions

Keeping multi-step changes consistent: either every step lands, or none do.

## Key Concepts

| Concept | Summary |
| :--- | :--- |
| ACID | Atomicity, Consistency, Isolation, Durability |
| Control | `START TRANSACTION` / `BEGIN`, `COMMIT`, `ROLLBACK`, `SAVEPOINT` |
| Isolation Levels | `READ UNCOMMITTED`, `READ COMMITTED`, `REPEATABLE READ`, `SERIALIZABLE` |
| Best practices | Keep transactions short, avoid user interaction inside them, handle errors, choose isolation deliberately |
| Engine defaults | MySQL InnoDB · PostgreSQL uses MVCC · Oracle and SQL Server default to `READ COMMITTED` |

## Simple Example

```sql
START TRANSACTION;

UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;

COMMIT;
-- If any step fails, use ROLLBACK instead of COMMIT
```

---

[← Advanced Topics](../README.md) · [10 · Practice →](../../10-practice/)
