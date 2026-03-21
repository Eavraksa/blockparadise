DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    invoice_id INTEGER PRIMARY KEY,
    vendor_id INTEGER,
    invoice_number TEXT,
    invoice_date TEXT,
    invoice_total REAL,
    payment_total REAL,
    credit_total REAL,
    terms_id INTEGER
);

INSERT INTO invoices VALUES
(1,101,'INV-001','2024-01-10',500,200,50,1),
(2,102,'INV-002','2024-01-15',800,800,0,2),
(3,103,'INV-003','2024-02-05',1200,500,100,1),
(4,101,'INV-004','2024-02-20',300,100,0,3);

SELECT * FROM invoices;