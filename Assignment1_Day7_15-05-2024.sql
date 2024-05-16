create database assignment1_15_05_2024;
create table customers(
	cid int primary key,
    cname varchar(30),
    gender varchar(10),
    phone bigint,
    email varchar(30),
    city varchar(50)
);
insert into customers values(01,'jhon','male',9837465473,'john@gmail.com','Hyderabad'),
(02,'nick','male',7462548572,'nick@gmail.com','Chennai'),
(03,'pooja','female',8374536278,'pooja@gmail.com','Vishakapatnam'),
(04,'teddy','male',6574839564,'teddy@outlook.com','Noida'),
(05,'lilli','female',8564735485,'lilli@yahoo.com','Chennai');
select * from customers;
select cname,email from customers where city='chennai';