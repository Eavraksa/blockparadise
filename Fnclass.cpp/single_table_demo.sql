-- Create the database named accounts_payable_db
CREATE DATABASE accounts_payable_db;
-- Select the database
USE accounts_payable_db;
-- Create Table: invoices
CREATE TABLE invoices(
invoice_id INT NOT NULL,
vendor_id INT NOT NULL,
invoice_number VARCHAR(20) NOT NULL,
invoice_date DATE NOT NULL,
invoice_total DECIMAL(12,2) NOT NULL DEFAULT 0.00,
payment_total DECIMAL(12,2) NOT NULL DEFAULT 0.00,
credit_total DECIMAL(12,2) NOT NULL DEFAULT 0.00,
term_id INT NOT NULL,
-- Primary Key
PRIMARY KEY(invoice_id)
);
-- Create table vendors

-- Use your database (change name if you use another one)
USE invoice_demo_db;

-- Optional: recreate fresh
DROP TABLE IF EXISTS vendors;

CREATE TABLE vendors (
  vendor_id INT NOT NULL,
  vendor_name VARCHAR(120) NOT NULL,
  vendor_city VARCHAR(60) NOT NULL,
  vendor_state CHAR(2) NOT NULL,
  vendor_zip_code VARCHAR(10) NOT NULL,
  vendor_contact_first_name VARCHAR(45) NOT NULL,
  vendor_contact_last_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (vendor_id)
) ;

-- Create new table "users"
CREATE TABLE users(
user_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender ENUM('M','F','Other') NULL,
email VARCHAR(120) NOT NULL UNIQUE,
phone VARCHAR(25) NULL,
city VARCHAR(60) NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

