USE master;
-- Create database
IF NOT EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = N'SALES'
)
CREATE DATABASE SALES;
GO

IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL
    DROP TABLE dbo.Customers;
GO

USE SALES;
GO

CREATE TABLE Customers (
	id INT NOT NULL IDENTITY,
	name NVARCHAR(50) NOT NULL,
    CONSTRAINT PK_Products PRIMARY KEY(id)
);
GO

IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL
    DROP TABLE dbo.Orders;
GO

CREATE TABLE Orders (
	id INT NOT NULL IDENTITY,
	CustomerId INT NOT NULL,
    CONSTRAINT PK_Categories PRIMARY KEY(id)
);
GO

INSERT INTO Customers (name)
VALUES ('Max'),
        ('Pavel'),
        ('Ivan'),
        ('Leonid')   
        ;
GO

INSERT INTO Orders (CustomerId)
VALUES (2),
       (4)
        ;
GO
