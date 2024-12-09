create database ID;

select database();

use ID;
select database();

create table Student_deatils(
    Name varchar(50),
    age int
);

insert into Student_deatils (Name,age)
values ('Sonam',20);

insert into Student_deatils(Name,age)
values ('Rahul',22);

insert into Student_deatils(age,Name)
values (21,'Ankur');

insert into Student_deatils(Name,age)
values ('Bob',22),
('Hinata',24),('Alex',20),('Kartik',20);

select * from Student_deatils;

insert into Student_deatils(Name)
values ('Sidharth');

select * from Student_deatils;

-- Creating a not null columns for a table 
create table Not_Null_deatils(
	Name varchar(20) not null,
    age int not null
);

insert into Not_Null_deatils (Name,age)
values ('Sonam',20);

select * from Not_Null_deatils;

desc Not_Null_deatils;

