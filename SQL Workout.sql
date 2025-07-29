create database sqltask;
use sqltask;

create table students(stu_id int,name varchar(20),age int);

create table Employees(emp_id int,emp_name varchar(20),salary decimal(10,2),
department varchar(20));

create table products(product_id int,product_name varchar(20),price decimal(10,2));

create table books(book_id int,tittle varchar(10),author varchar(20),published_year int);

create table orders(order_id int,customer_id int,order_date int,total_amount int);
						---------
                        
insert into students values (1,'JOHN',20);

insert into Employees values(101,'Alice',50000,'HR');

insert into products values(1,'Pen',10);

insert into books values(01,'SQL Basics','Tom Smith',2020);

insert into orders values(1001,201,2024-01-01,1500);
						---------
                        
update students set name ="Johnny" where stu_id=1;

update Employees set salary =60000 where emp_id = 101;

update products set price =15 where product_id=1;

update books set published_year =2021 where book_id = 1;

update orders set total_amount =2000 where order_id = 1001;
						---------
					
alter table students add column email varchar(20);

alter table Employees rename column emp_name to employee_name;

alter table products add stock_quantity int;

alter table books modify column tittle varchar(150);

alter table Employees drop column department;
						----------
                        
Drop table students;

Drop table employees;

Drop table products;

Drop table Books;

Drop table orders;
					-------------
                    
Delete from students where id =1;

Delete from employees where department="HR";

Delete from products where id =1;

Delete from Books where title='SQL Basics';

Delete from Orders where order_date <'2024-01-01';
					--------------
                    
truncate table students	;

truncate table employees;

truncate table products;

truncate table books;

truncate table orders;
					-------------
                    
create table users (username varchar(20)not null);

alter table employees modify column emp_name varchar(20) not null;

create table students (roll_no int not null); 

alter table customers modify Email varchar(20) not null;

alter table contact add column (phone_number int not null);
					-------------
                    
create table accounts (account_number int unique);

alter table users add column (email varchar(30) unique);

alter table products add column product_code int unique;

create table voters (voter_id int unique);

alter table employee add column (national_id int unique);
					-------------
                    
create table customers(customers_id int auto_increment primary key);

alter table orders modify column (order_id int primary key); 

create table departments (dept_id int primary key);

create table vehicles (registration_number int primary key); 

alter table employees modify emp_id int primary key;
				-----------
create table orders(order_id int,customer_id int,price decimal(10,2),
foreign key (customer_id) references customers(customers_id));

Create table payments(payment_id int,order_id int,payment_time int,
foreign key (order_id) references orders(orders_id));

create table comments(user_id int,post_id int,
foreign key (post_id) references posts (post_id));
				------------
alter table products modify column price int check ( price > 0);

alter table users add column age int check (age >= 18);

create table marks (stu_id int,marks int,check(mark 0 to 100));

alter table orders add column Quantity int check (Quantity >=1);

alter table employees modify column salary int check (salary >=10000);
					---------
alter table users  add column status varchar(10) default 'Active';

create table posts (created_at varchar(20) default 'currentdate');

alter table products modify column stock_quantity int default '0';

alter table users add column role varchar(10) default 'User';
				------------
                
select * from employees where department ="HR" and salary > 50000;

alter table students add column marks varchar(10);

select * from students where marks='Grade A' or marks > 90;

alter table orders add column status varchar(30);

alter table orders add column (amount decimal(10,2), pay_method varchar(20));
select * from orders where status ='Pending' and (amount > 1000 or pay_method ='UPI');

select * from orders where  not pay_method ='Credit card';

select * from products where not price between 100 and 500;
				-----------
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e INNER JOIN departments d ON e.dept_id = d.dept_id;

SELECT c.cust_id, c.cust_name, o.order_id, o.order_date
FROM customers c LEFT JOIN orders o ON c.cust_id = o.cust_id;

SELECT p.p_id, p.p_name, o.order_id, o.order_date
FROM orders o RIGHT JOIN products p ON o.p_id = p.p_id;

SELECT s.stu_id, s.stu_name, l.user_id, l.user_name
FROM students s LEFT JOIN libraryusers l ON s.stu_id = l.user_id
UNION
SELECT s.stu_id, s.stu_name, l.user_id, l.user_name
FROM students s RIGHT JOIN libraryusers l ON s.stu_id = l.user_id;                


