
ALTER TABLE drivers
ADD COLUMN is_avilable BOOLEAN;

-- =========================
-- Passenger table changes
-- =========================

-- Add rating column
ALTER TABLE passenger
ADD COLUMN rating DOUBLE;

-- Add last location reference
ALTER TABLE passenger
ADD COLUMN last_location_id BIGINT;

-- Add active booking reference
ALTER TABLE passenger
ADD COLUMN active_booking_id BIGINT;

-- Foreign key for last location
ALTER TABLE passenger
ADD CONSTRAINT fk_passenger_last_location
FOREIGN KEY (last_location_id)
REFERENCES exact_location(id);

-- Foreign key for active booking
ALTER TABLE passenger
ADD CONSTRAINT fk_passenger_active_booking
FOREIGN KEY (active_booking_id)
REFERENCES booking(id);

-- Add rating validation constraint
ALTER TABLE passenger
ADD CONSTRAINT chk_passenger_rating
CHECK (rating >= 0.0 AND rating <= 5.0);



-- =========================
-- Booking table changes
-- =========================

-- Add start location
ALTER TABLE booking
ADD COLUMN start_location_id BIGINT;

-- Add end location
ALTER TABLE booking
ADD COLUMN end_location_id BIGINT;

-- Foreign key for start location
ALTER TABLE booking
ADD CONSTRAINT fk_booking_start_location
FOREIGN KEY (start_location_id)
REFERENCES exact_location(id);

-- Foreign key for end location
ALTER TABLE booking
ADD CONSTRAINT fk_booking_end_location
FOREIGN KEY (end_location_id)
REFERENCES exact_location(id);