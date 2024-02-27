CREATE DATABASE College_one;

CREATE DATABASE IF NOT EXISTS College_one;

USE College_one;

CREATE TABLE Student(
	Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT NOT NULL
);

INSERT INTO Student VALUE (1,"Navneet",42);
INSERT INTO Student VALUE (2,"Subhajyoti",20);

SELECT * FROM Student;
