# Partitioning Performance Report – Airbnb Clone

## 📝 Context
The `Booking` table had millions of records and was slow to query, especially when filtering by date ranges.

We partitioned the `Booking` table by `start_date` using RANGE partitioning.

## 📊 Observations

### Before Partitioning
Sample Query:
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2025-06-01' AND '2025-06-30';
