/*	Mark Wade Brakstad
	SID: 100344182

	CPSC 2221 Database Systems: Group Project - Step 4
	
----------------------------------------------------------------------------------------------------------------------
	CREATE TABLES - Note the order of creation.
	We first create parent tables and then we create child tables with references to its parents
*/
CREATE DATABASE HnM; /* The & in H&M is giving an error message in MY Sql, so in this case it is changed to 'n'*/
USE HnM;

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
	PhoneNumber INT,

	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID) ON DELETE CASCADE
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

	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID) ON DELETE CASCADE
);

CREATE TABLE Reviews (
	CustomerID INT,
	BusinessID INT,
	ReviewID INT,
	Comments CHAR, /* the word "comment" seems to be a keyword as it is highlighted in blue when used, so in MY Sql it is changed to "Comments" */ 
	Score INT CHECK(Score >= 0 AND Score <= 5),

	PRIMARY KEY (CustomerID,BusinessID,ReviewID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE,
	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID) ON DELETE CASCADE
);

CREATE TABLE Contracts (
	ContractID INT,
	BusinessID INT,
	CustomerID INT,
	ContactDate DATE NOT NULL,
	ServiceCost INT NOT NULL,

	PRIMARY KEY (BusinessID, CustomerID,ContractID),
	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID) ON DELETE CASCADE,
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE
);

CREATE TABLE ContractAddress (
	CustomerID INT,
	AddressID INT,
	ContractID INT,
	BusinessID INT,

	PRIMARY KEY (CustomerID, AddressID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE,
	FOREIGN KEY (BusinessID, CustomerID,ContractID) REFERENCES Contracts(BusinessID, CustomerID,ContractID) ON DELETE CASCADE
);

CREATE TABLE EmployeeWorksOnContract (
	EmployeeID INT,
	BusinessID INT, 
	ContractID INT,
	CustomerID INT,
	
	PRIMARY KEY (EmployeeID,ContractID),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) ON DELETE CASCADE,
	FOREIGN KEY (BusinessID, CustomerID,ContractID) REFERENCES Contracts(BusinessID, CustomerID,ContractID) ON DELETE CASCADE
);
