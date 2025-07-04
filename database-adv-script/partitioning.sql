-- =========================================
-- Partitioning Booking Table by start_date
-- =========================================

-- Drop table if it already exists
DROP TABLE IF EXISTS Booking CASCADE;

-- Create parent table
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    property_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status VARCHAR(20) NOT NULL
) PARTITION BY RANGE (start_date);

-- Create partitions
CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE Booking_2026 PARTITION OF Booking
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- Optional: Default partition for any date outside ranges
CREATE TABLE Booking_default PARTITION OF Booking DEFAULT;

-- =========================================
-- Test Query
-- =========================================

EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE start_date BETWEEN '2025-06-01' AND '2025-06-30';
