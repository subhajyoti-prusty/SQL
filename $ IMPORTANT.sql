CREATE DATABASE T_DB;

DROP DATABASE T_DB;

CREATE SCHEMA T_DB;

DROP SCHEMA T_DB;

CREATE DATABASE IF NOT EXISTS T_DB;

USE T_DB;

CREATE TABLE FirstTable (
	ID INT,
    NAME VARCHAR(40),
    DOB DATE,
    CITY VARCHAR(40),
    COUNTRY VARCHAR(20)
);

INSERT INTO FirstTable(ID,NAME,DOB,CITY,COUNTRY)
VALUES(1,'SUBHA','2004-11-12','BHUBANESWAR','INDIA');

INSERT INTO FirstTable
VALUES(2,'SOUM','2000-08-19','PUNE','INDIA'),
(3,'ALEX','2003-12-08','DELHI','INDIA'),
(4,'RIDHI','2002-01-24','MUMBAI','INDIA');

CREATE TABLE SecondTable (
	ID INT PRIMARY KEY,
    NAME VARCHAR(40),
    AGE INT,
    CITY VARCHAR(40)
);

INSERT INTO SecondTable(ID,NAME,AGE,CITY)
VALUES(1,'SUBHA',20,'BHUBANESWAR');

INSERT INTO SecondTable
VALUES(2,'SOUM','21','PUNE'),
(3,'ALEX','20','DELHI'),
(4,'RIDHI','24','MUMBAI');

CREATE TABLE StudentInfo (
	ID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(40) NOT NULL,
    AGE INT NOT NULL CHECK(AGE >= 18),
    GENDER VARCHAR(1) NOT NULL,
    PHONE VARCHAR(10) NOT NULL UNIQUE,
    CITY VARCHAR(40) DEFAULT 'BBSR'
);

INSERT INTO StudentInfo
VALUES(1,'KSHIK',21,'M','7789410242','PURI');

INSERT INTO StudentInfo (ID,NAME,AGE,GENDER,PHONE)
VALUES(2,'AMLAN',20,'M','8456279140');

INSERT INTO StudentInfo
VALUES(3,'NIDHI',21,'F','7566923400','BBSR'),
(4,'LANA',18,'F','9584156894','KHORDHA');


SELECT * FROM FirstTable;

SELECT ID AS "Student Id", NAME AS Name, AGE AS Age, GENDER AS G, PHONE FROM StudentInfo;

SELECT NAME,AGE,GENDER FROM StudentInfo WHERE ID >= 2;
SELECT * FROM StudentInfo WHERE ID >= 2;

SELECT NAME,AGE,GENDER FROM StudentInfo WHERE (GENDER = "F" OR AGE = 21) AND ID >= 0 ;

SELECT NAME,AGE,GENDER FROM StudentInfo WHERE NOT AGE = 20 ;

SELECT NAME,AGE,GENDER FROM StudentInfo WHERE AGE IN (20,21);
SELECT NAME,AGE,GENDER FROM StudentInfo WHERE AGE NOT IN (20,21);

SELECT NAME,AGE,GENDER FROM StudentInfo WHERE AGE BETWEEN 20 AND 21;
SELECT NAME,AGE,GENDER FROM StudentInfo WHERE NAME BETWEEN "A" AND "L";

SELECT NAME,AGE,GENDER FROM StudentInfo ORDER BY NAME;
SELECT ID, NAME, AGE, GENDER FROM StudentInfo ORDER BY ID DESC;

SELECT DISTINCT GENDER FROM StudentInfo;

UPDATE StudentInfo 
	SET PHONE = 123456789, NAME = "AMLANA"
	WHERE ID = 2;
    
SELECT ID AS "Student Id", NAME AS Name, AGE AS Age, GENDER AS G, PHONE, CITY FROM StudentInfo;

-- DELETE FROM StudentInfo;
DELETE FROM StudentInfo WHERE ID = 4;

COMMIT;

SELECT * FROM StudentInfo;
UPDATE StudentInfo 
	SET PHONE = 987654321, NAME = "AMLAN"
	WHERE ID = 2;
    
ROLLBACK;

--  FOREIGN KEY
CREATE TABLE Employee_City(
	C_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    City_Name VARCHAR(40)
);

INSERT INTO Employee_City(City_Name)
	VALUES("Bhubaneswar"),
    ("Pune"),
    ("Delhi"),
    ("Bengaluru"),
    ("Mumbai"),
    ("Gangtok")
    ;
INSERT INTO Employee_City()
	VALUES()
    ;
    
SELECT * FROM Employee_City;

CREATE TABLE Employee(
	Std_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Name VARCHAR(40) NOT NULL,
    Age INT NOT NULL,
    City INT,
    FOREIGN KEY(City) REFERENCES Employee_City (C_id)   
    );
    
INSERT INTO Employee(Name, Age, City)
	VALUES("Abhinash",20,2),
    ("Deepika",18,5),
    ("Karan",19,4),
    ("Sikha",20,3),
    ("Bipin",22,1),
    ("Nidhi",19,5),
    ("Rashmi",21,4),
    ("Udit",25,3)
    ;
    
INSERT INTO Employee(Name, Age) 
	VALUES("Sandi",20), 
    ("Viki",22) 
    ;
    
SELECT * FROM Employee;

--  JOINS
-- INNER JOIN
SELECT Name,Age,City_Name FROM Employee INNER JOIN Employee_City
	ON Employee.City = Employee_City.C_id;
    
SELECT * FROM Employee INNER JOIN Employee_City
	ON Employee.City = Employee_City.C_id;
    
SELECT * FROM Employee INNER JOIN Employee_City
	ON Employee.City = Employee_City.C_id
    WHERE City_Name = "MUMBAI";
    
-- LEFT JOIN
SELECT Name,Age,City_Name FROM Employee LEFT JOIN Employee_City
	ON Employee.City = Employee_City.C_id;
    
SELECT * FROM Employee LEFT JOIN Employee_City
	ON Employee.City = Employee_City.C_id
    WHERE Age > 20;
    
-- RIGHT JOIN
SELECT Name,Age,City_Name FROM Employee RIGHT JOIN Employee_City
	ON Employee.City = Employee_City.C_id;
    
SELECT * FROM Employee LEFT JOIN Employee_City
	ON Employee.City = Employee_City.C_id
    WHERE Age >= 20;
    
-- CROSS JOIN
SELECT Name,Age,City_Name FROM Employee CROSS JOIN Employee_City;

SELECT * FROM Employee, Employee_City;

ALTER TABLE Employee ADD Gender VARCHAR(1);
SELECT * FROM Employee;

ALTER TABLE Employee MODIFY Gender VARCHAR(6) AFTER Name;
SELECT * FROM Employee;

ALTER TABLE Employee DROP Gender;
SELECT * FROM Employee;

ALTER TABLE Employee CHANGE Gender Sex VARCHAR(6);
SELECT * FROM Employee;

TRUNCATE TABLE SecondTable;