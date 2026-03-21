show databases;
CREATE DATABASE practice_db;
USE practice_db;

drop table users;
CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) ,
    gender VARCHAR(10) CHECK (gender IN ('M','F','Other')),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    salary DECIMAL(10,2),
    birth_date DATE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id)
) ENGINE=InnoDB;
show tables;
ALTER TABLE users
ADD is_active BOOLEAN,
ADD bio TEXT,
ADD last_login DATETIME;
ALTER TABLE users
CHANGE salary monthly_salary DECIMAL(10,2);
INSERT INTO users 
(first_name, last_name, email, phone, monthly_salary)
VALUES
('Dara', 'TOEM', 'dara.toem@example.com', '010-123-456', 550.00),

('Sok', 'Chan', 'sok.chan@example.com', '012-777-888', 420.50),

('Anna', NULL, 'anna@example.com', NULL, 300.00),

('Mina', 'Davis',  'mina.davis@example.com', '093-555-222', 800.75),

('John', 'Lee',  'john.lee@example.com', '088-999-111', 1000.00);
select * from users;