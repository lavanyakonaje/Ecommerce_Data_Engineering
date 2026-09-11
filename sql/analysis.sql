-- ==========================================
-- E-Commerce Data Engineering Project
-- SQL Analysis
-- ==========================================

USE ecommerce;


-- 1. Total orders
SELECT COUNT(*) AS total_orders
FROM orders;


-- 2. Total sales
SELECT SUM(quantity * price) AS total_sales
FROM orders;


-- 3. Sales by city
SELECT city,
       SUM(quantity * price) AS total_sales
FROM orders
GROUP BY city
ORDER BY total_sales DESC;


-- 4. Best-selling products
SELECT product,
       SUM(quantity) AS total_quantity
FROM orders
GROUP BY product
ORDER BY total_quantity DESC;


-- 5. Highest-value order
SELECT order_id,
       product,
       quantity,
       price,
       (quantity * price) AS order_value
FROM orders
ORDER BY order_value DESC
LIMIT 1;


-- 6. Sales by product
SELECT product,
       SUM(quantity * price) AS total_sales
FROM orders
GROUP BY product
ORDER BY total_sales DESC;


-- 7. Sales by category
SELECT category,
       SUM(quantity * price) AS total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;


-- 8. Average order value
SELECT AVG(quantity * price) AS average_order_value
FROM orders;


-- 9. Unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM orders;


-- 10. Repeat customers
SELECT customer_id,
       COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- 11. Top customer by spending
SELECT customer_id,
       SUM(quantity * price) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;


-- 12. Sales by month
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(quantity * price) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;