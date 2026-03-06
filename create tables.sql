-- ATHLETICORE SPORTS ACADEMY DATABASE SCHEMA

-- 1. Create Parent Tables
CREATE TABLE coach (
    coach_id INT NOT NULL PRIMARY KEY,
    coach_name VARCHAR(100),
    speciality VARCHAR(100),
    mail VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(80)
);

CREATE TABLE student (
    student_id INT NOT NULL PRIMARY KEY,
    student_name VARCHAR(100),
    birth DATE,
    gender VARCHAR(10),
    mail VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(80)
);

CREATE TABLE sport (
    sport_id INT NOT NULL PRIMARY KEY,
    sport_name VARCHAR(100)
);

-- 2. Create Dependent Tables
CREATE TABLE program (
    program_id INT NOT NULL PRIMARY KEY,
    program_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    coach_id INT,
    sport_id INT,
    FOREIGN KEY (coach_id) REFERENCES coach(coach_id),
    FOREIGN KEY (sport_id) REFERENCES sport(sport_id)
);

CREATE TABLE enrollment (
    enrollment_id INT NOT NULL PRIMARY KEY,
    enrollment_date DATE,
    status VARCHAR(50),
    student_id INT,
    program_id INT,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (program_id) REFERENCES program(program_id)
);

CREATE TABLE payment (
    enrollment_id INT NOT NULL PRIMARY KEY,
    payment_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (enrollment_id) REFERENCES enrollment(enrollment_id)
);