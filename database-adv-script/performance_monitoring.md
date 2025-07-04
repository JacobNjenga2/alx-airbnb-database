# Database Performance Monitoring Report – Airbnb Clone

## 📝 Queries Monitored
1. Bookings with user, property, and payment details
2. Properties & reviews (LEFT JOIN)
3. Bookings filtered by start_date

## 🔍 Tools Used
- EXPLAIN ANALYZE (PostgreSQL)
- SHOW PROFILE (MySQL)

## 🚦 Observations
### Query 1:
- High execution time (~500ms)
- Full table scan on `Booking.start_date`

### Query 2:
- LEFT JOIN on `Review` was fast
- Proper use of index on `Property.property_id`

### Query 3:
- Date range query on `Booking.start_date` not using index

## 🔧 Improvements Implemented
✅ Created index on `Booking.start_date`  
✅ Ensured `JOIN` conditions match indexed columns  
✅ Selected only required columns, not `SELECT *`

## 📈 Results
### Query 1:
- Before: ~500ms, full scan
- After: ~80ms, index used

### Query 3:
- Before: ~300ms
- After: ~50ms

## 📝 Recommendations
- Regularly run `EXPLAIN` on key queries
- Periodically analyze and optimize indexes
- Monitor slow query log and adjust schema if needed
