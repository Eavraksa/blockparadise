
SELECT * 
FROM tuition_invoices;
SELECT student_name, invoice_number, invoice_date, tuition_total
FROM tuition_invoices;

SELECT *
FROM tuition_invoices
WHERE tuition_total >= 1500
ORDER BY tuition_total DESC;
-- D5
SELECT invoice_number, student_name, invoice_date, tuition_total
FROM tuition_invoices
WHERE invoice_date BETWEEN '2026-02-01' AND '2026-02-28'
ORDER BY invoice_date ASC;

SELECT student_name, department, invoice_number, tuition_total
FROM tuition_invoices
WHERE department IN ('Computer Science', 'IT Engineering')
ORDER BY department, student_name;

SELECT invoice_number, student_name, tuition_total
FROM tuition_invoices
ORDER BY tuition_total DESC
LIMIT 5;

SELECT 
    invoice_number,
    student_name,
    tuition_total,
    paid_total,
    scholarship_total,
    (tuition_total - paid_total - scholarship_total) AS balance_due
FROM tuition_invoices
ORDER BY balance_due DESC;

SELECT 
    invoice_number,
    student_name,
    (tuition_total - paid_total - scholarship_total) AS balance_due,
    invoice_date
FROM tuition_invoices
WHERE (tuition_total - paid_total - scholarship_total) > 0
ORDER BY balance_due DESC;