create database CRUD;
show databases;
use CRUD;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT * FROM cats;

select name from cats;
select age from cats;

select name,age from cats;

select * from cats where age = 4;
select name,age from cats where age = 4;

select breed from cats where name = 'egg';

select cat_id as id,name from cats;

update cats set breed = 'shorthair' where breed = 'Tabby';
update cats set age=14 where name='Misty';
SELECT * FROM cats;

delete from cats where name = 'egg';
select * from cats;