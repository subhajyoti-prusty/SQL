-- Create a Pastries table in a database
	-- It should include 2 columns Name and Quantity. (Name with mac of 50 characters)
    -- Inspect the table/columns in the CLI
    -- Delete your table
    
CREATE DATABASE Practice1;
show databases;

use Practice1;

CREATE TABLE Pastries(
	Name varchar(50),
    Quantity int
);

show tables;

show columns from Pastries;

DESC Pastries;

DROP TABLE Pastries;

DROP DATABASE Practice1;