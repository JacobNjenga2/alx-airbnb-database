-- Initial Complex Query
-- This query joins all tables and fetches all columns (not efficient yet).

-- =========================================
-- Initial Complex Query
-- =========================================

-- =========================================
-- Initial Complex Query with WHERE
-- =========================================

SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.name AS property_name,
    pay.payment_id,
    pay.amount,
    pay.payment_date
FROM
    Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id
WHERE
    b.start_date >= '2025-01-01'
AND
    u.role = 'guest';


-- Analyze with EXPLAIN

-- =========================================
-- Analyze Query Performance
-- =========================================

EXPLAIN ANALYZE
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.name AS property_name,
    pay.payment_id,
    pay.amount,
    pay.payment_date
FROM
    Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id;

-- =========================================
-- Optimized Query
-- =========================================

SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    p.name AS property_name,
    pay.amount
FROM
    Booking b
INNER JOIN User u ON b.user_id = u.user_id
INNER JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id;