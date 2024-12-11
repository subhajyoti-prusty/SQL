create database Practice4;
show databases;

use Practice4;

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
       
-- show only the cat_id
select cat_id from cats;

-- show the name and breed 
select name,breed from cats;

-- show the name and age whose breed is tabby 
select name,age from cats where breed = 'tabby';

-- show rows where the cat_id is equal to the age of the cat 
select cat_id,age from cats where cat_id = age;

SELECT * FROM cats;

-- change cat name with jackson to jack 
update cats set name = 'Jack' where name = 'jackson';

-- change cats breed of ringon to brtish shorthair
update cats set breed = 'brtish shorthair' where name = 'Ringo';

-- change cats with breed maine coon to age 12
update cats set age = 12 where breed = 'maine coon';

SELECT * FROM cats;

-- delete all cats with age 4
delete from cats where age = 4;

-- delete all cats whose cat_id is equal to their age 
delete from cats where cat_id = age;

-- delete all the cats dont drop the table 
delete from cats;

SELECT * FROM cats;