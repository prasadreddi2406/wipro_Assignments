use assignment2_15_05_2024;
START TRANSACTION;
insert into orders2(order_id,order_date,total_amount) values(006,'2023-09-21',656.98);
select * from orders2;
commit;
start transaction;
update orders2 set total_amount=500 where order_id=006;
rollback;