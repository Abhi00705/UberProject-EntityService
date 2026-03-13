ALTER TABLE drivers
ADD COLUMN driver_approvel_status ENUM('APPROVED', 'DENIED', 'PENDING');

ALTER TABLE drivers
ADD COLUMN last_known_location_id BIGINT;

ALTER TABLE drivers
ADD COLUMN active_city VARCHAR(100);

ALTER TABLE drivers
ADD COLUMN rating DOUBLE;

ALTER TABLE drivers
ADD CONSTRAINT fk_driver_last_location
FOREIGN KEY (last_known_location_id)
REFERENCES exact_location(id);