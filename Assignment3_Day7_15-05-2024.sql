create database assignment3_15_05_2024;
use assignment2_15_05_2024;
select customer_id, customer_name from customers2
where customer_id in(
	select customer_id
    from orders2
    group by customer_id
    having avg(total_amount)>(select avg(total_amount) from orders2)
);
use assignment3_15_05_2024;
create table suppliers2(
	supplier_id int,
    supplier_name varchar(100)
);
insert into suppliers2 values(111,'john'),(222,'david');
select * from suppliers2;
select customer_id, customer_name from customers2
union select suppliers2;
drop table suppliers2;