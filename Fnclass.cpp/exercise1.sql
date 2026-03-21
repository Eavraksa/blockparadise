CREATE TABLE tuition_invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,

    student_name VARCHAR(100) NOT NULL,

    department VARCHAR(50) NOT NULL,

    year_level INT NOT NULL,

    invoice_number VARCHAR(30) NOT NULL UNIQUE,

    invoice_date DATE NOT NULL,

    tuition_total DECIMAL(10,2) NOT NULL DEFAULT 0.00,

    paid_total DECIMAL(10,2),

    scholarship_total DECIMAL(10,2),

    semester VARCHAR(20)
);
SELECT *
FROM tuition_invoices
WHERE department = 'Computer Science';
SELECT student_name, tuition_total
FROM tuition_invoices
ORDER BY tuition_total DESC;
SELECT *
FROM tuition_invoices
WHERE tuition_total BETWEEN 1000 AND 2000;
SELECT *
FROM tuition_invoices
WHERE student_name LIKE 'A%';
SELECT 
    student_name,
    tuition_total,
    paid_total,
    scholarship_total,
    (tuition_total - paid_total - scholarship_total) AS balance_due
FROM tuition_invoices;
