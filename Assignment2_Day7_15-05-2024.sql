create database assignment2_15_05_2024;
create table customers2(
	customer_id int primary key,
    customer_name varchar(100),
    region varchar(50),
    email varchar(50)
    );
insert into customers2 values(101,'jimmy','hyderabad','jimmy@outlook.com'),
(102,'teddy','chennai','teddy@gmail.com'),
(103,'tom','chennai','tom@gmail.com'),
(104,'jerry','vishakapatnam','jerry@gmail.com'),
(105,'oggy','bangalore','oggy@gmail.com');
select * from customers2;
create table orders2(
	order_id int primary key,
	customer_id int,
	order_date date,
	total_amount decimal(10,2),
    foreign key(customer_id) references customers2(customer_id)
);
select * from orders2;
insert into orders2(order_id, order_date) values(001,'2024-05-16');
insert into orders2 values(002,102,'2023-03-30',200.00);
delete from orders2 where order_id=002;
insert into orders2 values(001,101,'2023-03-30',200.00),
(002,102,'2012-04-23',833.22);
select c.customer_id, c.customer_name, o.order_id from customers2 c
inner join orders2 o on c.customer_id=o.customer_id where c.region='chenni';
select c.customer_id, c.customer_name, o.order_id from customers2 c
left join orders2 o on c.customer_id=o.customer_id;