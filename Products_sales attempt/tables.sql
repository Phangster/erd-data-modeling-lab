CREATE TABLE IF NOT EXISTS customer (
    id SERIAL PRIMARY KEY,
    customerId INTEGER,
    name TEXT
);
CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    salesId INTEGER,
    customerId INTEGER,
    date_of_sale TEXT
);
CREATE TABLE IF NOT EXISTS salesdetail (
    id SERIAL PRIMARY KEY,
    salesdetailId INTEGER,
    salesId INTEGER,
    productId INTEGER,
    quantity INTEGER
);
CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    productId INTEGER,
    product_name TEXT,
    price INTEGER
);
