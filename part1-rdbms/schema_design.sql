-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives table
CREATE TABLE sales_reps (
    sales_rep_id INT PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100),
    office_address VARCHAR(150)
);

-- Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    sales_rep_id INT NOT NULL,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- Order Items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Customers
INSERT INTO customers VALUES
(101,'Rahul Sharma','rahul@gmail.com','Mumbai'),
(102,'Priya Singh','priya@gmail.com','Delhi'),
(103,'Amit Patel','amit@gmail.com','Ahmedabad'),
(104,'Neha Gupta','neha@gmail.com','Pune'),
(105,'Ravi Kumar','ravi@gmail.com','Bangalore');

-- Insert Sales Reps
INSERT INTO sales_reps VALUES
(1,'Arjun Verma','arjun@company.com','Mumbai Office'),
(2,'Sanjay Mehta','sanjay@company.com','Delhi Office'),
(3,'Anita Roy','anita@company.com','Kolkata Office'),
(4,'Deepak Singh','deepak@company.com','Pune Office'),
(5,'Kiran Patel','kiran@company.com','Ahmedabad Office');

-- Insert Products
INSERT INTO products VALUES
(201,'Laptop','Electronics',60000),
(202,'Smartphone','Electronics',30000),
(203,'Headphones','Accessories',2000),
(204,'Keyboard','Accessories',1500),
(205,'Mouse','Accessories',800);

-- Insert Orders
INSERT INTO orders VALUES
(1,101,1,'2024-01-10'),
(2,102,2,'2024-01-12'),
(3,103,1,'2024-01-15'),
(4,104,3,'2024-01-18'),
(5,105,2,'2024-01-20');

-- Insert Order Items
INSERT INTO order_items VALUES
(1,1,201,1),
(2,1,203,2),
(3,2,202,1),
(4,3,204,1),
(5,4,205,3);
