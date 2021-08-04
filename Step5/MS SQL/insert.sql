<<<<<<< HEAD
/*	Henrique Reis Neves
	SID: 100313047

	CPSC 2221 Database Systems: Group Project - Step 4
	
----------------------------------------------------------------------------------------------------------------------
	Insert values into tables 
*/
USE [H&M];
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (1, '1234 Saltwater Lane', 'ABC Plumbing', 10000.99, 'PL', 3);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (2, '201 Marine Way', 'ZYX Mowing', '20000.99', 'LM', 5);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (3, '221b Laker Street', 'S&W Private Eye', '15283.99', 'PI', 10);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (4, 'Wakanda Street', 'Panther Washing', '99999.99', 'PW', 12);

INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6048323466);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6048264823);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6049272842);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (2, 8368268493);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (3, 7264939183);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (3, 7268291042);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (4, 8266359287);

INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (1, 'Hansel', 7362849274);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (2, 'Gretel', 7368132738);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (3, 'Yimir', 9378290384);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (4, 'Eren', 6548266384);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (5, 'Yolinda', 7382734622);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (6, 'Harry', 8274829193);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (7, 'Rimuru', 0382734892);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (8, 'Ron', 8264782823);

INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (1, '2010-02-04', 1);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (2, '2015-10-22', 1);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (3, '2015-11-22', 1);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (4, '2007-01-03', 2);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (5, '2011-07-04', 2);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (6, '2017-10-20', 3);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (7, '2019-09-03', 3);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (8, '2020-11-05', 3);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (9, '2001-01-03', 4);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (10, '2002-02-23', 4);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (11, '2006-05-20', 4);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (12, '2012-10-08', 4);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (13, '2016-11-02', 4);

INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (1, 3, 1, 'Thank you for all your help in unravelling the secret plot!', 5);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (1, 2, 2, 'My lawn looks worse than my neighbors >:( wish I could give negative stars...', 1);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (4, 4, 3, 'My car looks squeeky clean, could have had better service though.', 4);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (6, 1, 4, 'Was smart to let the experts handle this one', 5);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (8, 3, 5, 'Did not have a disclaimer that I might not like what they find... I did not like it and do not like them', 1);

INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (1, 2, 1, '2020-02-01', 20000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (2, 2, 1, '2020-03-01', 20000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (3, 4, 6, '2019-07-02', 99999);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (4, 1, 3, '2010-08-23', 10000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (5, 3, 8, '2018-01-01', 16000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (6, 3, 8, '2020-01-11', 15000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (7, 1, 1, '2008-11-21', 13000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (8, 2, 6, '2021-03-15', 88000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (9, 3, 8, '2020-02-02', 16000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (10, 3, 7, '2021-02-21', 19000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (11, 1, 5, '2010-02-02', 16000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (12, 4, 5, '2021-06-14', 67000);

INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 1, 1, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 2, 2, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (6, 3, 3, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (3, 4, 4, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (8, 5, 5, 3);
/*	Not working??
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 6, 6, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (3, 7, 7, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (4, 8, 8, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (5, 9, 9, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (6, 10, 10, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (7, 11, 11, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (8, 12, 12, 4);
*/
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 2, 1, 1);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (2, 2, 2, 1);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 4, 3, 6);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 1, 4, 3);
=======
/*	Henrique Reis Neves
	SID: 100313047

	CPSC 2221 Database Systems: Group Project - Step 4
	
----------------------------------------------------------------------------------------------------------------------
	Insert values into tables 
*/
USE [H&M];
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (1, '1234 Saltwater Lane', 'ABC Plumbing', 10000.99, 'PL', 3);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (2, '201 Marine Way', 'ZYX Mowing', '20000.99', 'LM', 5);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (3, '221b Laker Street', 'S&W Private Eye', '15283.99', 'PI', 10);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (4, 'Wakanda Street', 'Panther Washing', '99999.99', 'PW', 12);

INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6048323466);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6048264823);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6049272842);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (2, 8368268493);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (3, 7264939183);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (3, 7268291042);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (4, 8266359287);

INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (1, 'Hansel', 7362849274);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (2, 'Gretel', 7368132738);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (3, 'Yimir', 9378290384);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (4, 'Eren', 6548266384);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (5, 'Yolinda', 7382734622);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (6, 'Harry', 8274829193);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (7, 'Rimuru', 0382734892);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (8, 'Ron', 8264782823);

INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (1, '2010-02-04', 1);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (2, '2015-10-22', 1);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (3, '2015-11-22', 1);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (4, '2007-01-03', 2);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (5, '2011-07-04', 2);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (6, '2017-10-20', 3);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (7, '2019-09-03', 3);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (8, '2020-11-05', 3);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (9, '2001-01-03', 4);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (10, '2002-02-23', 4);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (11, '2006-05-20', 4);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (12, '2012-10-08', 4);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID) VALUES (13, '2016-11-02', 4);

INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (1, 3, 1, 'Thank you for all your help in unravelling the secret plot!', 5);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (1, 2, 2, 'My lawn looks worse than my neighbors >:( wish I could give negative stars...', 1);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (4, 4, 3, 'My car looks squeeky clean, could have had better service though.', 4);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (6, 1, 4, 'Was smart to let the experts handle this one', 5);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (8, 3, 5, 'Did not have a disclaimer that I might not like what they find... I did not like it and do not like them', 1);

INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (1, 2, 1, '2020-02-01', 20000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (2, 2, 1, '2020-03-01', 20000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (3, 4, 6, '2019-07-02', 99999);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (4, 1, 3, '2010-08-23', 10000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (5, 3, 8, '2018-01-01', 16000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (6, 3, 8, '2020-01-11', 15000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (7, 1, 1, '2008-11-21', 13000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (8, 2, 6, '2021-03-15', 88000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (9, 3, 8, '2020-02-02', 16000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (10, 3, 7, '2021-02-21', 19000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (11, 1, 5, '2010-02-02', 16000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (12, 4, 5, '2021-06-14', 67000);

INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 1, 1, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 2, 2, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (6, 3, 3, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (3, 4, 4, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (8, 5, 5, 3);
/*	Not working??
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 6, 6, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (3, 7, 7, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (4, 8, 8, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (5, 9, 9, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (6, 10, 10, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (7, 11, 11, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (8, 12, 12, 4);
*/
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 2, 1, 1);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (2, 2, 2, 1);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 4, 3, 6);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 1, 4, 3);
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (2, 3, 5, 8);