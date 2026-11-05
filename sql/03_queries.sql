--  ürünleri kategori adına göre sıralayan sorgu
SELECT p.name AS urun, c.name AS kategori, p.price
FROM products p
JOIN categories c ON c.id = p.category_id
ORDER BY p.price DESC;

--  siparis numaraları müsteri ismini toplam değerine göre yüksekten düşüğe doğru sıralayan sorgu
SELECT o.id AS siparis_no, c.full_name AS musteri,
       SUM(oi.quantity * oi.unit_price) AS toplam
FROM orders o
JOIN customers c ON c.id = o.customer_id
JOIN order_items oi ON oi.order_id = o.id
GROUP BY o.id, c.full_name
ORDER BY toplam DESC;

-- en az 2 siparis veren müsterileri group by dan sonra having kullanarak sıralayan sorgu
SELECT c.full_name, COUNT(o.id) AS siparis_sayisi
FROM customers c
JOIN orders o ON o.customer_id = c.id
GROUP BY c.full_name
HAVING COUNT(o.id) >= 2;