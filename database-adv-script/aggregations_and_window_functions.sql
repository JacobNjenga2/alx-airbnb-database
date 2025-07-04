-- ================================================
-- Airbnb Clone: Aggregations and Window Functions
-- ================================================

-- 🔷 Aggregation: Total number of bookings per user
-- ------------------------------------------------
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM
    User u
LEFT JOIN
    Booking b
ON
    u.user_id = b.user_id
GROUP BY
    u.user_id, u.first_name, u.last_name
ORDER BY
    total_bookings DESC;


-- ================================================
-- Window Function: Rank Properties by Bookings
-- ================================================

-- 🔷 Using ROW_NUMBER(): Assigns a unique sequential number
-- Even if multiple properties have the same booking count, each gets a unique rank.
-- --------------------------------------------------------
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS property_row_number
FROM
    Property p
LEFT JOIN
    Booking b
ON
    p.property_id = b.property_id
GROUP BY
    p.property_id, p.name
ORDER BY
    property_row_number;


-- 🔷 Using RANK(): Assigns the same rank to properties with equal booking counts
-- --------------------------------------------------------
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS property_rank
FROM
    Property p
LEFT JOIN
    Booking b
ON
    p.property_id = b.property_id
GROUP BY
    p.property_id, p.name
ORDER BY
    property_rank;

