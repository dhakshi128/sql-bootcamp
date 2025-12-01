INSERT INTO customers (customer_id, name, city, email, loyalty_status) VALUES
('C001', 'Alice Johnson', 'London', 'alice@aol.com', 'Silver'),
('C002', 'Bob Smith', 'New York', 'bob@gmail.com', 'Gold'),
('C003', 'Charlie Brown', 'London', 'charlie@aol.com', 'Bronze'),
('C004', 'Diana Prince', 'Paris', 'diana@gmail.com', 'Silver'),
('C005', 'Eve Adams', 'New York', 'eve@gmail.com', 'Gold');

INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date, rating) VALUES
('ORD001', 'C001', 'P101', 1, 1200.00, '2023-10-01', 5),
('ORD002', 'C002', 'P104', 2, 60.00, '2023-10-02', 4),
('ORD003', 'C001', 'P102', 1, 75.00, '2023-10-02', 5),
('ORD004', 'C003', 'P105', 1, 90.00, '2023-10-03', 3),
('ORD005', 'C004', 'P103', 3, 75.00, '2023-10-03', 4),
('ORD006', 'C002', 'P104', 5, 150.00, '2023-10-04', NULL),
('ORD007', 'C005', 'P105', 1, 90.00, '2023-10-04', 5);




