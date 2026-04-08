CREATE DATABASE IF NOT EXISTS Retailstore;
USE Retailstore;
SELECT DATABASE();
CREATE TABLE Customers(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100)
);
CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
Product VARCHAR(100),
Amount DECIMAL(10,2),
CustomerID INT , FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID)
);
INSERT INTO Customers
VALUES
(1 , 'Rahul Sharma'),
(2 , 'Anjali Mehtra'),
(3 , 'Amit Verma');


INSERT INTO Customers
VALUES
(4 , 'Nisha Roy');


INSERT INTO Orders
VALUES
(101 , 'Laptop' , 5000 , 2),
(102 , 'Mouse' ,500 , 1),
(103 , 'Keyboard', 700 ,1);

INSERT INTO Orders
VALUES
(104 , 'Monitor', 12000 ,NULL);

SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT Customers.CustomerName,Orders.Product,Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName,Orders.Product,Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName,Orders.Product,Orders.Amount
FROM Customers
RIGHT JOIN  Orders on Customers.CustomerID = Orders.CustomerID;



