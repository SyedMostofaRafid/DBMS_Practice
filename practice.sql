-- create database
CREATE DATABASE database_name;
-- create table into the database
USE database_name;
CREATE TABLE table_name (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25),
    age INT,
    salary DECIMAL(10, 5)
);
-- insert data into the table
INSERT INTO table_name (name, age, salary) 
VALUES ('John Doe', 30, 50000.00), 
       ('Alice Johnson', 25, 40000.00), 
       ('David Lee', 35, 60000.00);
-- find name colums from the table
SELECT name FROM table_name;
-- find a specific name from the table
SELECT name FROM table_name WHERE name = 'David'; 
-- find average of a column
SELECT AVG(salary) AS average_salary FROM table_name;
-- find name that ends with with "id" 
SELECT name FROM table_name WHERE name LIKE 'id%';
-- find name that starts or ends with with "id" 
SELECT name FROM table_name WHERE name LIKE 'id%' OR name LIKE '%id';
