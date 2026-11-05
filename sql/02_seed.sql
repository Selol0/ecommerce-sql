INSERT INTO categories (name) VALUES
('Elektronik'), ('Kitap'), ('Giyim');

INSERT INTO products (name, category_id, price, stock) VALUES
('Kulaklık', 1, 850.00, 50),
('Klavye', 1, 1200.00, 30),
('Roman Kitabı', 2, 150.00, 100),
('Yazılım Kitabı', 2, 320.00, 40),
('Tişört', 3, 250.00, 80);

INSERT INTO customers (full_name, email, city) VALUES
('Ayşe Yılmaz', 'ayse@example.com', 'Antalya'),
('Mehmet Kaya', 'mehmet@example.com', 'İzmir'),
('Elif Demir', 'elif@example.com', 'Antalya'),
('Can Öz', 'can@example.com', 'Ankara');

INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2026-10-01', 'delivered'),
(1, '2026-10-15', 'shipped'),
(2, '2026-10-20', 'delivered'),
(3, '2026-10-25', 'pending');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 850.00),
(1, 3, 2, 150.00),
(2, 4, 1, 320.00),
(3, 2, 1, 1200.00),
(3, 5, 3, 250.00),
(4, 3, 1, 150.00);