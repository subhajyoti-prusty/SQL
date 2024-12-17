create database RS;
show databases;

use RS;

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
select * from books;
desc books;

-- DISTINCT
select distinct author_lname from books;
select distinct released_year from books;

select distinct concat(author_fname,' ',author_lname) as distinct_name from books;
select distinct author_fname, author_lname, released_year from books;

-- ORDER BY 
select book_id, author_fname, author_lname from books order by author_lname;
select book_id, author_fname, author_lname from books order by author_lname desc;

select title, pages from books order by pages; 
select title, pages from books order by released_year; 

select title,author_fname, author_lname from books order by 2; 

Select author_lname, released_year, title from books order by author_lname, released_year;
Select author_lname, released_year, title from books order by author_lname, released_year desc;
Select author_lname, released_year, title from books order by author_lname desc, released_year desc;

select concat(author_fname,' ',author_lname) as Author from books order by Author;

-- LIMIT
select book_id, title, released_year from books order by released_year limit 5;
select book_id, title, released_year from books order by released_year limit 1,5;

SELECT title FROM books LIMIT 10;

-- LIKE
select title, author_fname, author_lname from books where author_fname like '%da%';

select * from books where author_fname like '_____';
select * from books where author_fname like '_a_';

select * from books where author_fname like '%n';

SELECT title, author_fname, author_lname, pages 
FROM books
WHERE title LIKE '%:%';

select * from books where title like '%\%%';
select * from books where title like '%\_%';