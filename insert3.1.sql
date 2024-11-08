INSERT INTO customers (city, state) VALUES 
('Almaty', 'Almaty region'),
('Astana', 'Akmola region'),
('Shymkent', 'Turkestan region'),
('Taraz', 'Zhambyl region');

INSERT INTO products (category, price, stock_quantity) VALUES 
('Electronics', 500.00, 100),
('Clothing', 50.00, 200),
('Books', 20.00, 300),
('Groceries', 150.00, 500);

INSERT INTO orders (customer_id, order_date) VALUES 
(1, '2024-11-01 10:00:00'),
(2, '2024-11-03 12:30:00'),
(3, '2024-11-05 14:15:00'),
(4, '2024-11-06 16:45:00');

INSERT INTO order_items (order_id, product_id, quantity) VALUES 
(1, 1, 2),
(1, 3, 1),
(2, 2, 3), 
(2, 4, 1), 
(3, 1, 1), 
(4, 2, 2); 
