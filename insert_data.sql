INSERT INTO customers VALUES
(1,'Rahul','rahul@gmail.com','9876543210','Hyderabad'),
(2,'Priya','priya@gmail.com','9876543211','Bengaluru'),
(3,'Arjun','arjun@gmail.com','9876543212','Chennai'),
(4,'Sneha','sneha@gmail.com','9876543213','Mumbai'),
(5,'Kiran','kiran@gmail.com','9876543214','Delhi');

INSERT INTO categories VALUES
(1,'Electronics'),
(2,'Fashion'),
(3,'Books'),
(4,'Home Appliances');

INSERT INTO products VALUES
(101,'Laptop',1,65000,20),
(102,'Smartphone',1,30000,35),
(103,'T-Shirt',2,800,100),
(104,'Novel',3,500,50),
(105,'Microwave',4,12000,15);

INSERT INTO orders VALUES
(1001,1,'2026-08-01',65800),
(1002,2,'2026-08-02',30000),
(1003,3,'2026-08-03',13000);

INSERT INTO order_items VALUES
(1,1001,101,1,65000),
(2,1001,103,1,800),
(3,1002,102,1,30000),
(4,1003,105,1,12000),
(5,1003,104,2,1000);

INSERT INTO payments VALUES
(1,1001,'UPI','Completed'),
(2,1002,'Credit Card','Completed'),
(3,1003,'Cash on Delivery','Pending');

--Display all customers

SELECT * FROM customers;

--Display products costing more than  ₹10,000

SELECT *
FROM products
WHERE price > 10000;

--Display orders sorted by latest date

SELECT *
FROM orders
ORDER BY order_date DESC;

--Display products with stock greater than 20

SELECT *
FROM products
WHERE stock > 20;

--Display the most expensive product

SELECT *
FROM products
ORDER BY price DESC
LIMIT 1;