-- 1. Retrieve all customer names and their cities
SELECT customer_name, city FROM customers;

-- 2. List all products that cost more than ₹3000
SELECT product_name, price FROM products WHERE price > 3000;

-- 3. Find all orders with status 'Pending'
SELECT * FROM orders WHERE delivery_status = 'Pending';
