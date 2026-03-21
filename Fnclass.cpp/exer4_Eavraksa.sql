-- Part A — Basic SELECT

SELECT * FROM invoices;

SELECT invoice_id, vendor_id, invoice_number, invoice_date, invoice_total
FROM invoices;

SELECT *
FROM invoices
WHERE vendor_id = 123;

-- Part B — Sorting with ORDER BY

SELECT invoice_number, invoice_date, invoice_total
FROM invoices
ORDER BY invoice_total DESC;

SELECT *
FROM invoices
ORDER BY vendor_id ASC, invoice_date DESC;

SELECT invoice_id, invoice_total
FROM invoices
ORDER BY invoice_total ASC;

-- Part C — Calculated Values

SELECT invoice_id,
       invoice_total,
       (credit_total + payment_total) AS total_credits
FROM invoices;

SELECT invoice_id,
       invoice_total,
       payment_total,
       credit_total,
       (invoice_total - payment_total - credit_total) AS balance_due
FROM invoices
ORDER BY balance_due DESC;

-- Part D — Filtering with WHERE

SELECT invoice_id, invoice_total
FROM invoices
WHERE invoice_total > 1000;

SELECT invoice_number, invoice_date, invoice_total
FROM invoices
WHERE invoice_date BETWEEN '2018-06-01' AND '2018-06-30'
ORDER BY invoice_date ASC;

SELECT invoice_id, terms_id, invoice_total
FROM invoices
WHERE terms_id IN (1, 3, 4);

-- Part E — LIMIT

SELECT invoice_id, invoice_number, invoice_total
FROM invoices
ORDER BY invoice_total DESC
LIMIT 5;

SELECT invoice_id, invoice_number
FROM invoices
ORDER BY invoice_id
LIMIT 5, 3;

-- Part F — Empty Result Set

SELECT invoice_number, invoice_date, invoice_total
FROM invoices
WHERE invoice_total > 50000;