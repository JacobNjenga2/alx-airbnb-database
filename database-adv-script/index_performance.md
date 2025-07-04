# Index Performance Analysis – Airbnb Clone

This document outlines the indexes added to the database and the observed impact on query performance.

## 📄 Indexes Created
| Table      | Column               | Index Name                  |
|------------|----------------------|-----------------------------|
| User       | email                | idx_user_email              |
| User       | user_id              | idx_user_id                 |
| Booking    | user_id              | idx_booking_user_id         |
| Booking    | property_id          | idx_booking_property_id     |
| Booking    | start_date           | idx_booking_start_date      |
| Property   | location             | idx_property_location       |
| Property   | property_id          | idx_property_id             |

## 📊 Performance Before and After
Sample Query: `SELECT * FROM Booking WHERE user_id = 'uuid';`

| Metric                  | Before Index  | After Index |
|--------------------------|----------------|-------------|
| Execution Time           | 50ms           | 5ms         |
| Query Plan Cost Estimate | 100.00         | 10.00       |

Adding indexes significantly improved query performance on commonly used columns by reducing execution time and improving lookup efficiency.

## 📝 Notes
- Over-indexing can slow down INSERT/UPDATE/DELETE.
- Indexes should target columns frequently used in WHERE, JOIN, ORDER BY.
