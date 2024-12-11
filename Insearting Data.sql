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

-- Creating a Default value columns for a table 
create table Default_Value_deatils(
	Name varchar(20) default 'Unnamed',
    age int 
);

insert into Default_Value_deatils(age)
values (20);

select * from Default_Value_deatils;

insert into Default_Value_deatils(Name,age)
values(Null,Null);
select * from Default_Value_deatils;

-- Creating a not null column with default value in the table

create table Not_Null_with_Default_value(
	Name varchar(20) not null default 'No Name',
    age int not null default 00
);

-- This will not work as we have Not null at the time of declaring the table  
insert into Not_Null_with_Default_value(Name,age)
values(Null,Null);

insert into Not_Null_with_Default_value()
values();

insert into Not_Null_with_Default_value(Name)
values('XYZ');

insert into Not_Null_with_Default_value(age)
values(15);

select * from Not_Null_with_Default_value;

create table Primary_Key_Table(
	Id int not null primary key,
    Name varchar(20) not null default 'No Name',
    Age int not null default 0
);

desc Primary_Key_Table;

insert into Primary_Key_Table(Id,Name,age)
values(1,'Subha',20);

insert into Primary_Key_Table(Id,Name,age)
values(2,'Nitesh',19),(3,'Unohana',25);

select * from Primary_Key_Table;

create table Auto_Incriment_Primary_Key_Table(
	Id int auto_increment,
    Name varchar(20) not null default 'No Name',
    Age int not null default 0,
    primary key(Id)
);

insert into Auto_Incriment_Primary_Key_Table(Name,age)
values('Andrews',24),('Oliver',21),('Peter',20),('Binks',26);

select * from Auto_Incriment_Primary_Key_Table;
desc Auto_Incriment_Primary_Key_Table;