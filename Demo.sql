CREATE DATABASE IF NOT EXISTS Practice1 ;

USE Practice1;

CREATE TABLE Tb1(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(20),
    age INT NOT NULL
);

CREATE TABLE Tb2(
    First_Name VARCHAR(50),
    Last_Name VARCHAR(20)
);

DROP TABLE Tb3;

CREATE TABLE Tb3(
	id INT UNIQUE,
    -- FOREIGN KEY (id) REFERENCES id,
    name VARCHAR(50),
    DOJ DATE 
);

INSERT INTO Tb1 VALUES(1,"RAM","Pune",29);
INSERT INTO Tb1 VALUES(2,"SHAM","Delhi",21);
INSERT INTO Tb1 VALUES(3,"RAM","BBSR",26);
INSERT INTO Tb1 VALUES(4,"SHAM","Banglore",32);
INSERT INTO Tb1 VALUES(5,"RAM","Mumbai",24);
INSERT INTO Tb1 VALUES(6,"SHAM","Jaipur",30);

Desc Tb1;

SHOW TABLES;

Drop TABLE Tb2;

SELECT DATABASE();

INSERT INTO Tb3 VALUES(1,"RAM",'2020-12-3'),(2,"SHAM",'2021-10-28'),(3,"RAM",'2022-02-14'),(4,"SHAM",'2023-08-22'),
(5,"RAM",'2023-11-1'),(6,"SHAM",'2023-06-27');

SELECT * FROM Tb3;

CREATE TABLE IF NOT EXISTS People(
	First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    age INT NOT NULL
);

INSERT INTO People(First_Name , Last_Name , age)
VALUE("Axel","Andrews",20),("Tina","Belcher",30),("Linda","Belcher",45),("Philip","Frond",38);

SELECT * FROM People;

CREATE TABLE unique_cats3 (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
);

INSERT INTO unique_cats3 VALUES(1,'pluto',9);
INSERT INTO unique_cats3 (name,age) VALUES('pluto',5);

SELECT * FROM unique_cats3;

CREATE TABLE employees (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);

SELECT * FROM employees;
