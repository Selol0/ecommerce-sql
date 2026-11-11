-- left join ile hic sipariş vermemiş müşterileri sıralayan sorgu
SELECT c.full_name, c.email
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
WHERE o.id IS NULL;
-- alt sorguyla ortalama fiyatın üstünde olan ürünleri sıralayan sorgu
SELECT name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products)
ORDER BY price DESC;
-- musterinlerin harcadigi paraya gore fazladan aza siralanisi
WITH customer_totals AS (
    SELECT c.full_name,
           SUM(oi.quantity * oi.unit_price) AS total_spent
    FROM customers c
    JOIN orders o ON o.customer_id = c.id
    JOIN order_items oi ON oi.order_id = o.id
    GROUP BY c.full_name
)
SELECT full_name, total_spent,
       RANK() OVER (ORDER BY total_spent DESC) AS siralama
FROM customer_totals;