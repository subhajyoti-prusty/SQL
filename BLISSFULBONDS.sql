CREATE DATABASE Blissfulbonds;

USE Blissfulbonds;

CREATE TABLE Employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT UNSIGNED
);

INSERT INTO Employee (id,name,salary)
VALUE(1,"ADAM",25000);

INSERT INTO Employee VALUE(2,"BOB",30000);
INSERT INTO Employee VALUE(3,"CAESY",40000);

SELECT * FROM Employee;
