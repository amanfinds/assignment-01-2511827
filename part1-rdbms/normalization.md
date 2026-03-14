## Anomaly Analysis

# Insert Anomaly
In the orders_flat dataset, product information can only be added if an order exists.

For example, if the company wants to add a new product such as a "Wireless Keyboard" to the system before any customer places an order, there is no place to store it. This is because product information (product_id, product_name, category, unit_price) only appears when an order is created.

This creates an insert anomaly since new products cannot be inserted independently.

# Update Anomaly
Customer information is repeated across multiple rows.

For example, the columns `customer_name`, `customer_email`, and `customer_city` appear every time the customer places an order. If a customer moves to another city, every row containing that customer's data must be updated.

If one row is missed, inconsistent data will exist in the database.

# Delete Anomaly
Deleting an order may remove important product or customer information.

For example, if a specific product appears in only one order and that order row is deleted, the database will lose the product details such as `product_name`, `category`, and `unit_price`.

This causes a delete anomaly because removing an order removes unrelated product information.  

## Normalization Justification

Keeping all data in one table may seem simpler, but it causes serious data management problems. In the orders_flat dataset, customer information, product details, order data, and sales representative information are all stored in a single table. This results in large amounts of duplicated data.

For instance, the same customer information such as customer_name, customer_email, and customer_city appears repeatedly for every order placed by that customer. If the customer's email or city changes, multiple rows must be updated. Missing even one update will lead to inconsistent records.

Similarly, product information like product_name, category, and unit_price is repeated every time the product appears in an order. This redundancy increases storage usage and increases the risk of errors.

Normalization addresses these issues by dividing the data into multiple related tables such as customers, products, sales_reps, orders, and order_items. Each table stores information about a single entity, which eliminates duplication and ensures consistency.

Primary keys uniquely identify each record, while foreign keys maintain relationships between tables. This structure prevents insert, update, and delete anomalies and improves overall data integrity.

Therefore, normalization is not over-engineering but a necessary practice for building reliable relational database systems.
