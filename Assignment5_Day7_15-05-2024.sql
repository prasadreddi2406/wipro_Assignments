use assignment2_15_05_2024;
start transaction;
insert into orders2(order_id,order_date,total_amount) values(007,'2023-12-12',356.22);
savepoint savepoint1;
select * from orders2;
insert into orders2(order_id,order_date,total_amount) values(008,'2022-03-23',274.98);
savepoint savepoint2;
insert into orders2(order_id,order_date,total_amount) values(009,'2019-12-30',127.43);
savepoint savepoint3;
rollback to savepoint2;
commit;