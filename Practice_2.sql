-- Create a People table.
	-- first_name - 20 char limit
    -- last_name - 20 char limit
    -- age 
    -- First insert a single data.
    -- Second insert multiple datas at once.
    -- Third show the data .
    -- Forth delete the table and database.
    
create database Practice2;
show databases;

use Practice2;

create table People(
	first_name varchar(20),
    last_name varchar(20),
    age int
);

show tables;

insert into People (first_name,last_name,age)
value ('shikha','Behera',31);

insert into People (first_name,last_name,age)
values ('Nikhil','Ojha',24),('Hari','sahoo',27),
	   ('Rakesh','Das',22),('Jesika','Patel',29);
       
select * from People;

drop table people;

drop database Practice2;