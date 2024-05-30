create database demo;
use demo;
CREATE TABLE student (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT
);
ALTER TABLE student
MODIFY age int NOT NULL;

-- unique constraints --
CREATE TABLE person (
id int NOT NULL,
last_name varchar(255) NOT NULL,
first_name varchar(255),
age int,
UNIQUE (ID)
);
-- add unique to firstname when table already created --
ALTER TABLE person
ADD UNIQUE (first_name); 
 
 -- primary key constraints --
 CREATE TABLE employee (
    ID INT NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255),
    age INT,
    PRIMARY KEY (ID)
);

-- foreign key constraints --
CREATE TABLE customer (
    C_Id INT NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(25),
    Salary DECIMAL(18 , 2 ),
    PRIMARY KEY (C_Id)
);
CREATE TABLE Orders (
    OrderID INT NOT NULL,
    OrderNumber INT NOT NULL,
    Customer_Id INT,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (Customer_Id)
        REFERENCES customer (C_Id)
); 
 
 -- check constraints --
CREATE TABLE booking (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
CHECK (Age>=18)
);

-- default constraints --
CREATE TABLE student_new (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
City varchar(255) DEFAULT 'Mumbai'
);

-- index constraints --
CREATE INDEX idex_lastname
on Person (LastName);
 

