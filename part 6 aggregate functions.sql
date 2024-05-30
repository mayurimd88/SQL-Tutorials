
CREATE TABLE payment (
customer varchar(10),
payment_type varchar(10),
amount int
);
insert into payment
values ("peter", "credit", 100),
("peter", "credit", 200),
("john", "debit", 500),
("john", "debit", 200);
select * from payment;

-- SUM
select sum(amount) as Totalamount
from payment
where customer="peter";

-- AVG
select customer, AVG(amount) as avg_amount
from payment
group by customer;

-- COUNT
/* SELECT count(*) TotalRows
FROM payment; */
SELECT payment_type, count(amount) 
FROM payment
GROUP BY payment_type;

-- MIN
select min(amount) from payment;

-- MAX
select max(amount) from payment;
