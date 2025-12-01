select * from customers;
select * from orders;

-- select columns from table_name
-- 1.SELECT COMMAND
select name,city as customer_location from customers;

-- 2.DISTINCT (UNIQUE VALUES)
select count(distinct(city)) from customers;

-- 3.WHERE CLAUSE 
select order_id,total_amount from orders
where total_amount>75.00;

-- 4.WHERE WITH COMBINING CONDITION (AND /OR)
select name,city,loyalty_status from customers
where loyalty_status="Silver" and city="London";

-- 5. WHERE WITH IN
select order_id,rating from orders 
where rating in (5,4);

-- 6.WHERE WITH BETWEEN AND 
select order_id,rating from orders 
where rating between 3 and 5;

-- 7.WHERE WITH LIKE AND % OR _
select name,email from customers
where email like '%@aol.com';

-- 8.CHECKING NULL VALUES
select order_id,rating from orders
where rating is null; 

-- 9.HANDLING NULL VALUES
select order_id ,
coalesce( rating,0) as guarenteed_ratings
from orders;

-- 10.ORDER BY (SORTING VALUES)
select order_id,rating, total_amount from orders
order by rating desc,total_amount asc;

-- 11.AGGREGATE FUNCTIONS:
-- 	A. COUNT
select count(order_id) from orders;
-- B.SUM
select sum(total_amount) as total_sales from orders;
-- C.AVG, MAX ,MIN
select ceil(avg(total_amount)) as average_sales, max(total_amount) as maximum_sale from orders;
select min(order_date) as first_order, max(order_date) as latest_order from orders;

-- 12.JOIN TABLES
select c.customer_id,sum(total_amount) 
from customers c join orders o
on c.customer_id=o.customer_id
group by c.customer_id;

-- 13.CASE WHEN
SELECT
order_id, total_amount,
CASE
WHEN total_amount >= 500 THEN 'Tier 1: VIP'
WHEN total_amount >= 100 THEN 'Tier 2: Standard'
ELSE 'Tier 3: Low'
END AS order_tier
FROM orders;



