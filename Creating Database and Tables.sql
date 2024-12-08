CREATE DATABASE CDT;
CREATE DATABASE CDAT;

show databases;

DROP DATABASE CDAT;
show databases;

SELECT DATABASE();

USE CDT;
SELECT DATABASE();

create table Student_deatils(
	Regs_No int,
    Name varchar(50),
    Marks decimal,
    Date date
);

create table Faculity_deatils(
	Id int,
    Name varchar(50),
    Role text,
    Punch_In datetime,
    Punch_Out datetime
);

show tables;

show columns from Student_deatils;
show columns from Faculity_deatils;

desc Student_deatils;

