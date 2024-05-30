
CREATE table customer
(customer_id int,
customer_name varchar(50),
city varchar(50));
INSERT INTO customer values
(101, "john", "mumbai"),
(102, "alice","pune"),
(103, "bob", "bangalore");

CREATE table orders
(order_id int,
customer_id int,
amount int);
INSERT INTO orders values
(1, 101, 500),
(2, 102, 400),
(3, 103, 300),
(4, 101, 700);

SELECT customer_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM orders WHERE amount >= 500);
    
SELECT customer_name, city 
FROM customer c
WHERE EXISTS (
SELECT customer_id,amount FROM orders o
WHERE o.customer_id= c.customer_id 
AND amount > 400);