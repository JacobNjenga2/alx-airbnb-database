# Query Optimization Report – Airbnb Clone

## 📝 Initial Query
Joined Booking, User, Property, and Payment tables to retrieve all columns.  
Observed performance was slow, especially on large datasets, due to:
- Selecting all columns (`SELECT *`)
- LEFT JOIN where INNER JOIN sufficed
- No WHERE filters or pagination

## 🚀 Analysis
Using `EXPLAIN ANALYZE`, the query showed:
- Sequential scans on large tables
- High cost estimates
- Unused indexes

## 🔧 Refactor Actions
- Selected only required columns
- Replaced `LEFT JOIN` with `INNER JOIN` where appropriate
- Added concatenated `user_name`
- Ensured `JOIN` conditions utilize indexed columns

## 📊 Outcome
After refactoring, execution time reduced significantly, and query plan showed use of indexes and lower cost.

## Recommendations
- Always use only required columns
- Use `INNER JOIN` where possible
- Add `WHERE` and pagination for even better performance
- Regularly run `EXPLAIN` to identify bottlenecks
