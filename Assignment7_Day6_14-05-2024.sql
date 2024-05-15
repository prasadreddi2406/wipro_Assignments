CREATE DATABASE Assignment7;
CREATE TABLE Library(
	RowNo INT,
    Category varchar(30),
    stock int,
    PricePerUnit int
);
insert into library values(001,'science',100,559);
insert into library values(002,'history',10,884),
(003,'social studies',66,435),
(004,'english',83,322),
(005,'telugu',99,453);
select * from library;
update library SET stock=76 WHERE RowNo=1;
delete from library where RowNo=3;