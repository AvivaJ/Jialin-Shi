-- find all customers who never order anything

Create table If Not Exists Customers (Id int, Name varchar(255));
Create table If Not Exists Orders (Id int, CustomerId int);
Truncate table Customers;
insert into Customers (Id, Name) values ('1', 'Joe');
insert into Customers (Id, Name) values ('2', 'Henry');
insert into Customers (Id, Name) values ('3', 'Sam');
insert into Customers (Id, Name) values ('4', 'Max');
Truncate table Orders;
insert into Orders (Id, CustomerId) values ('1', '3');
insert into Orders (Id, CustomerId) values ('2', '1');
select * from Customers;
select * from Orders;



--解法1 
--      1. 先通过id来join，将order的id赋值到customer的id
--      2. 寻找赋值过后orderid 为null的customer
select c.Name
from Customers c
left join Orders o
    on c.id = o.CustomerId
where o.id is null
;



--解法1 
--      1.用select找出order中的customerid作为一个范围
--      2.where查看customers的id in／not in在这个范围里
--      3.select出不在范围里的客户名字
select c.Name
from Customers c
where c.id not in
(select CustomerId from Orders)
;
