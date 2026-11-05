# E-commerce SQL Project

A small e-commerce database built with PostgreSQL: schema design,
sample data, and reporting queries.

## Schema
Tables: `categories`, `products`, `customers`, `orders`, `order_items`.

`order_items.unit_price` stores the price at the time of the order, so past
orders stay correct even if a product's price changes later.

## Setup
1. Install PostgreSQL and create a database named `ecommerce_db`
2. Run the files in order: `sql/01_schema.sql`, then `sql/02_seed.sql`
3. Try the queries in `sql/03_queries.sql`
Note:Soon will be another query file.(sql/04_advanced_queries.sql)

## Concepts Covered
- Primary keys, foreign keys, `UNIQUE`, `NOT NULL`, `CHECK`, indexes
- `JOIN` and `LEFT JOIN`
- `GROUP BY` and `HAVING`
- Subqueries
- CTEs and window functions (`RANK`)