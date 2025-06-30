-- Insert sample users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest', NOW()),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '0987654321', 'host', NOW()),
  ('33333333-3333-3333-3333-333333333333', 'Admin', 'User', 'admin@example.com', 'hashed_admin', NULL, 'admin', NOW());

-- Insert properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
  ('aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Ocean View Apartment', 'A cozy apartment with sea view.', 'Miami, FL', 120.00, NOW(), NOW()),
  ('bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Rustic cabin in the mountains.', 'Aspen, CO', 200.00, NOW(), NOW());

-- Insert bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('book1111-book-book-book-bookbook0001', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-10', '2025-07-15', 600.00, 'confirmed', NOW());

-- Insert payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('pay11111-pay1-pay1-pay1-pay111111111', 'book1111-book-book-book-bookbook0001', 600.00, NOW(), 'credit_card');

-- Insert reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('rev11111-rev1-rev1-rev1-rev111111111', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Fantastic stay with a beautiful view!', NOW());

-- Insert messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('msg11111-msg1-msg1-msg1-msg111111111', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, is the Ocean View Apartment available in August?', NOW());
