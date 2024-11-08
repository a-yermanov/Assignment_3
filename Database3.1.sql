CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    city VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    category VARCHAR(50),
    price NUMERIC(10, 2),
    stock_quantity INTEGER
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    order_date TIMESTAMP
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES orders(order_id),
    product_id INTEGER REFERENCES products(product_id),
    quantity INTEGER
);