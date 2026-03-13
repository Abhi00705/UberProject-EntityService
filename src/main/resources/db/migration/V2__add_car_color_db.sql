-- =========================
-- COLOR TABLE
-- =========================
CREATE TABLE color (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    name VARCHAR(50) NOT NULL UNIQUE
);


-- =========================
-- CAR TABLE
-- =========================
CREATE TABLE car (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    plate_number VARCHAR(50) NOT NULL UNIQUE,
    brand VARCHAR(100),
    model VARCHAR(100),
    car_type ENUM("XL", "SEDAN", "HATCHBACK", "COMPACT_SUV", "SUV"),
    color_id BIGINT,
    drivers_id BIGINT,

    CONSTRAINT fk_car_color
        FOREIGN KEY (color_id)
        REFERENCES color(id),

    CONSTRAINT fk_car_driver
        FOREIGN KEY (drivers_id)
        REFERENCES drivers(id)
);