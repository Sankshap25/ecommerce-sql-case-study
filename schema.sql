-- Table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Aman Verma', 'Delhi'),
(2, 'Neha Singh', 'Mumbai'),
(3, 'Rohit Mehra', 'Bangalore'),
(4, 'Simran Kaur', 'Chennai'),
(5, 'Rahul Jain', 'Kolkata');

-- Table: products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 55000.00),
(2, 'Mobile Phone', 'Electronics', 22000.00),
(3, 'Wireless Mouse', 'Accessories', 1500.00),
(4, 'Keyboard', 'Accessories', 2000.00),
(5, 'USB Cable', 'Accessories', 500.00);

-- Table: orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    delivery_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date, delivery_status) VALUES
(1, 1, 1, 1, 55000.00, '2024-12-01', 'Delivered'),
(2, 2, 2, 1, 22000.00, '2024-12-02', 'Pending'),
(3, 1, 3, 2, 3000.00, '2024-12-03', 'Delivered'),
(4, 3, 4, 1, 2000.00, '2024-12-04', 'Delivered'),
(5, 4, 5, 3, 1500.00, '2024-12-05', 'Pending');
