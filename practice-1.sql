-- 1.Find the `name` and `city` of all 'Gold' or 'Silver' loyalty customers 
-- whose name contains the letter 'a' (case insensitive). Sort the results alphabetically by city.
select name,city from customers
where loyalty_status in ("Gold","Silver") and name like '%a%'
order by city;

-- --2. Calculate the total revenue and the number of orders, 
-- but **only** for orders placed on or before '2023-10-02'.

select count(order_id),sum(total_amount) from orders
where order_date<='2023-10-02';

-- 3.List the `loyalty_status` and the count of customers, but only include statuses that have more than 1 customer.
SELECT
loyalty_status, COUNT(customer_id) AS customer_count
FROM customers
GROUP BY loyalty_status
HAVING COUNT(customer_id) > 1;


