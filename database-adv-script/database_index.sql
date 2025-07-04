-- =========================================
-- Airbnb Clone: Indexes for Optimization
-- =========================================

-- Index on User table
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_id ON User(user_id);

-- Indexes on Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Indexes on Property table
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_id ON Property(property_id);
