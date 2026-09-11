CREATE DATABASE PaymentTransactionDB;
USE PaymentTransactionDB;
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15)
);
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    payment_mode VARCHAR(20),
    payment_date DATE,
    payment_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO Customer VALUES
(101, 'Arun', 'arun@gmail.com', '9876543210'),
(102, 'Priya', 'priya@gmail.com', '9876543211'),
(103, 'Rahul', 'rahul@gmail.com', '9876543212'),
(104, 'Divya', 'divya@gmail.com', '9876543213'),
(105, 'Karthik', 'karthik@gmail.com', '9876543214');
INSERT INTO Payment VALUES
(1001, 101, 2500.00, 'UPI', '2026-09-01', 'Successful'),
(1002, 102, 1500.00, 'Credit Card', '2026-09-02', 'Successful'),
(1003, 103, 3200.00, 'Debit Card', '2026-09-03', 'Successful'),
(1004, 104, 1800.00, 'UPI', '2026-09-04', 'Successful'),
(1005, 105, 4500.00, 'Net Banking', '2026-09-05', 'Failed'),
(1006, 101, 1200.00, 'UPI', '2026-09-06', 'Successful'),
(1007, 102, 2700.00, 'Credit Card', '2026-09-07', 'Successful'),
(1008, 103, 3500.00, 'UPI', '2026-09-08', 'Successful');
SELECT
    c.customer_id,
    c.customer_name,
    p.payment_id,
    p.amount,
    p.payment_mode,
    p.payment_date,
    p.payment_status
FROM Customer c
JOIN Payment p
ON c.customer_id = p.customer_id
ORDER BY p.payment_id;




