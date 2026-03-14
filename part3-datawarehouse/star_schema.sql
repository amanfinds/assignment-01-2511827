-- Dimension Table: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

-- Dimension Table: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(50)
);

-- Dimension Table: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table: Sales
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    revenue DECIMAL(12,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert Date Dimension
INSERT INTO dim_date VALUES
(1,'2023-01-15',1,2023),
(2,'2023-02-05',2,2023),
(3,'2023-02-20',2,2023),
(4,'2023-08-29',8,2023),
(5,'2023-12-12',12,2023);

-- Insert Store Dimension
INSERT INTO dim_store VALUES
(1,'Chennai Anna','Chennai'),
(2,'Delhi South','Delhi'),
(3,'Mumbai Central','Mumbai');

-- Insert Product Dimension
INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'Smartphone','Electronics'),
(3,'Headphones','Accessories'),
(4,'Tablet','Electronics');

-- Insert Fact Table
INSERT INTO fact_sales VALUES
(1,1,1,1,10,600000),
(2,2,1,2,20,600000),
(3,3,2,2,14,420000),
(4,4,1,1,3,180000),
(5,5,1,3,11,22000),
(6,2,3,4,5,150000),
(7,3,2,1,7,420000),
(8,1,3,2,9,270000),
(9,4,1,3,4,8000),
(10,5,2,4,6,180000);
