-- --Customer
-- INSERT INTO customer (customerId, name) VALUES (1, 'Bryan');
-- INSERT INTO customer (customerId, name) VALUES (2, 'Vanessa');
-- INSERT INTO customer (customerId, name) VALUES (3, 'John');
-- INSERT INTO customer (customerId, name) VALUES (4, 'Mary');
-- INSERT INTO customer (customerId, name) VALUES (5, 'Richard');
-- INSERT INTO customer (customerId, name) VALUES (6, 'Jack');
-- INSERT INTO customer (customerId, name) VALUES (7, 'Felina');
-- INSERT INTO customer (customerId, name) VALUES (8, 'Samson');

-- --Sales
-- INSERT INTO sales (salesId, customerId, date_of_sale) VALUES (1, 2 , '08-06-2018');
-- INSERT INTO sales (salesId, customerId, date_of_sale) VALUES (2, 3 , '08-06-2018');
-- INSERT INTO sales (salesId, customerId, date_of_sale) VALUES (3, 4 , '05-07-2018');
-- INSERT INTO sales (salesId, customerId, date_of_sale) VALUES (4, 2 , '04-08-2018');
-- INSERT INTO sales (salesId, customerId, date_of_sale) VALUES (5, 5 , '10-09-2018');
-- INSERT INTO sales (salesId, customerId, date_of_sale) VALUES (6, 6 , '23-10-2018');
-- INSERT INTO sales (salesId, customerId, date_of_sale) VALUES (7, 8 , '23-10-2018');

-- --Sales detail
-- INSERT INTO salesdetail (salesdetailId, salesId, productId, quantity) VALUES (1, 1, 1, 10);
-- INSERT INTO salesdetail (salesdetailId, salesId, productId, quantity) VALUES (2, 1, 2, 5);
-- INSERT INTO salesdetail (salesdetailId, salesId, productId, quantity) VALUES (3, 1, 3, 7);
-- INSERT INTO salesdetail (salesdetailId, salesId, productId, quantity) VALUES (4, 2, 4, 3);
-- INSERT INTO salesdetail (salesdetailId, salesId, productId, quantity) VALUES (5, 3, 4, 1);
-- INSERT INTO salesdetail (salesdetailId, salesId, productId, quantity) VALUES (6, 6, 1, 13);
-- INSERT INTO salesdetail (salesdetailId, salesId, productId, quantity) VALUES (7, 6, 2, 20);
-- INSERT INTO salesdetail (salesdetailId, salesId, productId, quantity) VALUES (8, 7, 2, 11);

-- --Products
-- INSERT INTO product (productId, product_name, price) VALUES (1, 'bread', 1.90);
-- INSERT INTO product (productId, product_name, price) VALUES (2, 'meat', 2.90);
-- INSERT INTO product (productId, product_name, price) VALUES (3, 'rice cooker', 29.90);
-- INSERT INTO product (productId, product_name, price) VALUES (4, 'fish', 4.00);

--JOINING of customer to sales
-- SELECT customer.customerId FROM customer
-- JOIN sales ON customer.customerId = sales.salesId
-- JOIN salesdetail ON sales.salesId = salesdetail.salesId
-- JOIN product ON product.productId = salesdetail.productId


--Do multiplication and adding a column
SELECT customer.name, product.product_name, salesdetail.quantity, 
salesdetail.quantity*product.price as TotalPrice FROM 

JOIN sales ON customer.customerId = sales.salesId
JOIN salesdetail ON sales.salesId = salesdetail.salesId
JOIN product ON product.productId = salesdetail.productId

WHERE customer.customerId=2








