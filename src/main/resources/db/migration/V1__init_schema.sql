-- Flyway Migration: V1__init_schema.sql
-- Generated from JPA Entities: BaseClass, Passenger, Drivers, Booking, Review

-- -----------------------------------------------
-- Table: passenger
-- -----------------------------------------------
CREATE TABLE passenger (
    id            BIGINT          NOT NULL AUTO_INCREMENT,
    created_at    TIMESTAMP       NOT NULL,
    updated_at    TIMESTAMP       NOT NULL,
    name          VARCHAR(255)    NOT NULL,
    phone_number  VARCHAR(255)    NOT NULL,
    email_id      VARCHAR(255)    NOT NULL,
    password      VARCHAR(255)    NOT NULL,
    PRIMARY KEY (id)
);

-- -----------------------------------------------
-- Table: drivers
-- -----------------------------------------------
CREATE TABLE drivers (
    id              BIGINT          NOT NULL AUTO_INCREMENT,
    created_at      TIMESTAMP       NOT NULL,
    updated_at      TIMESTAMP       NOT NULL,
    name            VARCHAR(255)    NOT NULL,
    phone_number    VARCHAR(255)    NOT NULL,
    license_number  VARCHAR(255),
    PRIMARY KEY (id)
);

-- -----------------------------------------------
-- Table: booking
-- -----------------------------------------------
CREATE TABLE booking (
    id              BIGINT          NOT NULL AUTO_INCREMENT,
    created_at      TIMESTAMP       NOT NULL,
    updated_at      TIMESTAMP       NOT NULL,
    distance        BIGINT,
    booking_status  ENUM('SCHEDULE','IN_RIDE','CANCEL','COMPLETED'),    -- Enum: SCHEDULE | IN_RIDE | CANCEL | COMPLETED
    start_time      DATETIME,
    end_time        DATETIME,
    passenger_id    BIGINT,
    drivers_id      BIGINT,
    PRIMARY KEY (id),
    CONSTRAINT fk_booking_passenger FOREIGN KEY (passenger_id) REFERENCES passenger (id),
    CONSTRAINT fk_booking_drivers   FOREIGN KEY (drivers_id)   REFERENCES drivers (id)
);

-- -----------------------------------------------
-- Table: review
-- -----------------------------------------------
CREATE TABLE review (
    id          BIGINT          NOT NULL AUTO_INCREMENT,
    created_at  TIMESTAMP       NOT NULL,
    updated_at  TIMESTAMP       NOT NULL,
    review      VARCHAR(255),
    rating      INT,
    booking_id  BIGINT          UNIQUE,  -- OneToOne relationship
    PRIMARY KEY (id),
    CONSTRAINT fk_review_booking FOREIGN KEY (booking_id) REFERENCES booking (id)
);