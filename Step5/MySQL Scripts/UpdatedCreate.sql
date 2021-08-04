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
    NumOfAddresses INT,
	BusinessName VARCHAR(35) NOT NULL,
	CostAndFees DECIMAL(7,2),
	BusinessServices CHAR(2) NOT NULL,
<<<<<<< HEAD
	NumOfCustomers INT
=======
	NumOfCostumers INT
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
);

CREATE TABLE BusinessPhone (
	BusinessID INT,
<<<<<<< HEAD
	PhoneNumber VARCHAR(10),
=======
	PhoneNumber INT,
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85

	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID) ON DELETE CASCADE
);

CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY,
	CustomerName VARCHAR(35) NOT NULL,
<<<<<<< HEAD
	CustomerPhoneNumber VARCHAR(10),
=======
	CustomerPhoneNumber INT,
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
    LastUseInMonths INT
);

CREATE TABLE Employee (
	EmployeeID INT PRIMARY KEY,
	StartDate DATE NOT NULL,
	BusinessID INT NOT NULL,
    Salary INT, 

	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID) ON DELETE CASCADE
);

CREATE TABLE Reviews (
	CustomerID INT,
	BusinessID INT,
	ReviewID INT,
<<<<<<< HEAD
	Comments VARCHAR(180), /* the word "comment" seems to be a keyword as it is highlighted in blue when used, so in MY Sql it is changed to "Comments" */ 
=======
	Comments CHAR, /* the word "comment" seems to be a keyword as it is highlighted in blue when used, so in MY Sql it is changed to "Comments" */ 
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
	Score INT CHECK(Score >= 0 AND Score <= 5),

	PRIMARY KEY (CustomerID,BusinessID,ReviewID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE,
	FOREIGN KEY (BusinessID) REFERENCES Business(BusinessID) ON DELETE CASCADE
);

CREATE TABLE Contracts (
	ContractID INT,
	BusinessID INT,
	CustomerID INT,
<<<<<<< HEAD
	ContractDate DATE NOT NULL,
=======
	ContactDate DATE NOT NULL,
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
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