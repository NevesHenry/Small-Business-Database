/*	Henrique Reis Neves
	SID: 100313047

	CPSC 2221 Database Systems: Group Project - Step 4
	
----------------------------------------------------------------------------------------------------------------------
	CREATE TABLES - Note the order of creation.
	We fisrt create parent tables and then we create child tables with references to its parents
*/
CREATE DATABASE "H&M";
USE [H&M]; /* make it my current working database. (MS SQL command) 
`

 
*/

CREATE TABLE Business (
	BusinessID INT PRIMARY KEY,
	BusinessAddress VARCHAR(100), 
	BusinessName VARCHAR(35) NOT NULL,
	CostAndFees DECIMAL(7,2),
	BusinessServices CHAR(2) NOT NULL,
	NumOfCostumers INT
);

CREATE TABLE BusinessPhone (
	BusinessID INT,
	PhoneNumber INT

	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID)
);

CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY,
	CustomerName VARCHAR(35) NOT NULL,
	CustomerPhoneNumber INT
);

CREATE TABLE Employee (
	EmployeeID INT PRIMARY KEY,
	StartDate DATE NOT NULL,
	BusinessID INT NOT NULL,

	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID)
);

CREATE TABLE Reviews (
	CustomerID INT,
	BusinessID INT,
	ReviewID INT,
	Comment CHAR, 
	Score INT CHECK(Score >= 0 AND Score <= 5),

	PRIMARY KEY (CustomerID,BusinessID,ReviewID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID),
);

CREATE TABLE Contracts (
	ContractID INT,
	BusinessID INT,
	CustomerID INT,
	ContactDate DATE NOT NULL,
	ServiceCost INT NOT NULL,

	PRIMARY KEY (BusinessID, CustomerID,ContractID),
	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE ContractAddress (
	CustomerID INT,
	AddressID INT,
	ContractID INT,
	BusinessID INT

	PRIMARY KEY (CustomerID, AddressID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY (BusinessID, CustomerID,ContractID) REFERENCES Contracts(BusinessID, CustomerID,ContractID)
);

CREATE TABLE EmployeeWorksOnContract (
	EmployeeID INT,
	BusinessID INT, 
	ContractID INT,
	CustomerID INT,
	
	PRIMARY KEY (EmployeeID,ContractID),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
	FOREIGN KEY (BusinessID, CustomerID,ContractID) REFERENCES Contracts(BusinessID, CustomerID,ContractID)
);