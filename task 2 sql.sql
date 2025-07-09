use practice;

create table users (
user_id int unique auto_increment primary key,
username varchar(20) unique not null,
email_address varchar(30) unique not null,
password varchar (20) not null,
age int check(age>=13),
location varchar (20) default 'USA');

insert into users (username,email_address,password,age)
values ('Kalish','vairakrishnan88@gmail.com',2121,21);

insert into users (username,email_address,password,age)
values ('Ari','aristo23@gmail.com',2223,21);

insert into users (username,email_address,password,age)
values ('Vishnu','vishnuram06@gmail.com',7896,21);

select * from users

