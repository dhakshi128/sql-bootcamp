use dh_da;
drop table if exists customers;

-- --creating the customer table 
create table customers(
customer_id varchar(10) primary key,
name varchar(100) not null,
city varchar (50),
email varchar(100) unique,
loyalty_status varchar(20)
);
-- creating orders table
drop table if exists orders;
create table orders(
order_id varchar(10) primary key,
customer_id varchar(10),
product_id varchar(10),
quantity integer not null,
total_amount decimal(10,2) not null,
order_date date,
rating integer,

foreign key(customer_id) references customers(customer_id));
