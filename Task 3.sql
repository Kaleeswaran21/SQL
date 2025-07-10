use practice;

create table customers2(
c_id int,
c_name varchar(30),
c_city varchar(30));

create table orders2(
o_id int,
c_id int,
product varchar(30));

insert into customers2 values (1,'Alice','Newyork'),(2,'Bob','Chicago'),
(3,'Charlie','Miami');

insert into orders2 values (101,1,'Laptop'),(102,1,'Mouse'),
(103,2,'keyboard'),(104,4,'Monitor');

select * from customers2;

select * from orders2;

select customers2.c_id,customers2.c_name,orders2.product 
from customers2  inner join orders2  
on customers2.c_id = orders2.c_id;

select customers2.c_id,customers2.c_name,orders2.product 
from customers2  left  join orders2  
on customers2.c_id = orders2.c_id;

select customers2.c_id,customers2.c_name,orders2.product 
from customers2  right join orders2  
on customers2.c_id = orders2.c_id;