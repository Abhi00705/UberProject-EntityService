-- =========================
-- EXACT LOCATION TABLE
-- =========================
CREATE TABLE exact_location (
    id BIGINT AUTO_INCREMENT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,

    longitude VARCHAR(100),
    latitude VARCHAR(100),

    CONSTRAINT pk_exact_location PRIMARY KEY (id)
);


-- =========================
-- NAMED LOCATION TABLE
-- =========================
CREATE TABLE named_location (
    id BIGINT AUTO_INCREMENT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,

    exact_location_id BIGINT,
    name VARCHAR(255),
    zip_code VARCHAR(50),
    city VARCHAR(100),
    country VARCHAR(100),
    state VARCHAR(100),

    CONSTRAINT pk_named_location PRIMARY KEY (id)
);

ALTER TABLE named_location
ADD CONSTRAINT fk_named_location_exact_location
FOREIGN KEY (exact_location_id)
REFERENCES exact_location (id);


-- =========================
-- OTP TABLE
-- =========================
CREATE TABLE otp (
    id BIGINT AUTO_INCREMENT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,

    code VARCHAR(20),
    send_to_number VARCHAR(20),

    CONSTRAINT pk_otp PRIMARY KEY (id)
);