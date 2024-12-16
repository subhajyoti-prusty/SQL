create database SF;

show databases;

use SF;

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

select * from books;
desc books;

-- CONCAT()
select concat('h','e','l','l','o');

select concat(author_fname,' ', author_lname) from books;
select concat(author_fname,' ', author_lname) as Author_Name from books;

-- CONCAT_WS()
select concat_ws('!','h','e','y');

select concat_ws('-', title, author_fname, author_lname) from books;

-- SUBSTRING() or SUBSTR()
select substring('Hello World',1,4);

select substring(title,1,15) as Inicial from books;

select substr(author_lname,1,1) as LNAME ,author_lname from books;

select concat(substr(title,1,10),'...') as Short_Title from books;

select concat(substr(author_fname,1,1),'.',author_lname) as Short_Name from books;

-- REPLACE()
select replace('Hello World', 'Hell', '#%&');

select replace(title, ' ','-') as New_Title from books;

-- REVERSE()
select reverse("HELLO");

select reverse(author_fname) from books;

select concat(author_fname, ' ', reverse(author_fname)) from books;

-- Char_Length()
SELECT CHAR_LENGTH('Hello World');
 
SELECT CHAR_LENGTH(title) as length, title FROM books;
 
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

-- UPPER() LOWER()
select upper('hello');
select lower('HELLO');

SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
 
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

-- INSERT()
SELECT INSERT('Hello Bobby', 6, 0, 'There'); 
 
-- LEFT()
SELECT LEFT('omghahalol!', 3);
 
-- RIGHT()
SELECT RIGHT('omghahalol!', 4);
 
-- REPLACE()
SELECT REPEAT('ha', 4);
 
-- TRIM()
SELECT TRIM('  pickle  ');