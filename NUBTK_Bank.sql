-- Step 1: Create the Database
CREATE DATABASE Northern_University_of_Business_and_Technology_Bank;

-- Step 2: Use the Database
USE Northern_University_of_Business_and_Technology_Bank;

-- Step 3: Create the Table
CREATE TABLE Customer_Info (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Customer_Address TEXT NOT NULL,
    Customer_Phone_Number VARCHAR(15) NOT NULL,
    Customer_Email VARCHAR(100) NOT NULL
);

-- Step 4: Insert Sample Data (Optional)
INSERT INTO Customer_Info (Customer_ID, Customer_Name, Customer_Address, Customer_Phone_Number, Customer_Email)
VALUES 
(1001, 'John Doe', '123 Main St', '555-1212', 'johndoe@email.com'),
(1002, 'Jane Smith', '456 Elm St', '555-3434', 'janesmith@email.com'),
(1003, 'Michael Johnson', '789 Oak St', '555-5656', 'michaeljohnson@email.com'),
(1004, 'Emily Davis', '234 Pine St', '555-7878', 'emilydavis@email.com'),
(1005, 'David Lee', '567 Cedar St', '555-9090', 'davidlee@email.com');
-- Find the customer phone numbers
SELECT Customer_Name, Customer_Phone_Number
FROM Customer_Info;
-- Find customers whose names start with 'D' or 'M'
SELECT *
FROM Customer_Info
WHERE Customer_Name LIKE 'D%' OR Customer_Name LIKE 'M%';
-- Count the number of customers who live on Main St
SELECT COUNT(*) AS Main_St_Customers
FROM Customer_Info
WHERE Customer_Address LIKE '%Main St%';
