-- 1. Get the total number of orders placed by each customer
SELECT customer_id, COUNT(order_id) AS total_orders FROM orders GROUP BY customer_id;

-- 2. Find total sales per product (quantity * price) and list the top 5 by sales
SELECT p.product_name, SUM(o.quantity * p.price) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 5;

-- 3. List customers who have ordered more than 2 items in total
SELECT customer_id, SUM(quantity) AS total_items_ordered
FROM orders
GROUP BY customer_id
HAVING total_items_ordered > 2;

-- 4. Retrieve the products that have never been ordered
SELECT p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;

-- 5. Find the average order value (total_amount) for each customer
SELECT customer_id, AVG(total_amount) AS avg_order_value
FROM orders
GROUP BY customer_id;
