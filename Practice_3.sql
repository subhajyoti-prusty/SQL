--  Define a Employees table with the following fields:
	-- id : Number (auto incriment) and a primary key 
    -- first_name : text, mandatory
    -- middle_name : text, not mandatory
	-- last_name : text, mandatory
    -- age : number , mandatory
    -- current_status : text, mandatory and default value (employed)
    
create database Practice3;
show databases;

use Practice3;

create table Employees(
	id int auto_increment primary key,
    first_name varchar(20) not null,
	middle_name varchar(20),
    last_name varchar(20) not null,
    age int not null,
    current_status varchar(20) not null default 'employed'
);

insert into employees(first_name, last_name, age) values
('Doran', 'Kumar', 48);

insert into employees(first_name, middle_name, last_name, age) values
('Ranjit','kumar', 'das', 58);

select * from employees;
desc Employees;