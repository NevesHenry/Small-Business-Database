<<<<<<< HEAD
USE HnM;
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers, WorkedAt) VALUES (1, '1234 Saltwater Lane', 'ABC Plumbing', 10000.99, 'PL', 3, 1);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (2, '201 Marine Way', 'ZYX Mowing', '20000.99', 'LM', 5);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (3, '221b Laker Street', 'S&W Private Eye', '15283.99', 'PI', 10);
INSERT INTO Business (BusinessID, BusinessAddress, BusinessName, CostAndFees, BusinessServices, NumOfCustomers) VALUES (4, 'Wakanda Street', 'Panther Washing', '99999.99', 'PW', 12);

=======
INSERT INTO Business (BusinessID, BusinessAddress, NumOfAddresses, BusinessName, CostAndFees, BusinessServices, NumOfCustomers, WorkedAt) VALUES (1, '1234 Saltwater Lane', 15, 'ABC Plumbing', '10000.99', 'PL', 3, 1);
INSERT INTO Business (BusinessID, BusinessAddress, NumOfAddresses, BusinessName, CostAndFees, BusinessServices, NumOfCustomers, WorkedAt) VALUES (2, '201 Marine Way', 21, 'ZYX Mowing', '20000.99', 'LM', 5, 5);
INSERT INTO Business (BusinessID, BusinessAddress, NumOfAddresses, BusinessName, CostAndFees, BusinessServices, NumOfCustomers, WorkedAt) VALUES (3, '221b Laker Street', 30, 'S&W Private Eye', '15283.99', 'PI', 10, 2);
INSERT INTO Business (BusinessID, BusinessAddress, NumOfAddresses, BusinessName, CostAndFees, BusinessServices, NumOfCustomers, WorkedAt) VALUES (4, 'Wakanda Street', 5, 'Panther Washing', '99999.99', 'PW', 12, 3);
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6048323466);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6048264823);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (1, 6049272842);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (2, 8368268493);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (3, 7264939183);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (3, 7268291042);
INSERT INTO BusinessPhone (BusinessID, PhoneNumber) VALUES (4, 8266359287);
<<<<<<< HEAD

INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (1, 'Hansel', 7362849274);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (2, 'Gretel', 7368132738);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (3, 'Yimir', 9378290384);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (4, 'Eren', 6548266384);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (5, 'Yolinda', 7382734622);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (6, 'Harry', 8274829193);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (7, 'Rimuru', 0382734892);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber) VALUES (8, 'Ron', 8264782823);

INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (1, '2010-02-04', 1, 10000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (2, '2015-10-22', 1, 11111);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (3, '2015-11-22', 1, 20000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (4, '2007-01-03', 2, 10000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (5, '2011-07-04', 2, 20000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (6, '2017-10-20', 3, 25000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (7, '2019-09-03', 3, 12345);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (8, '2020-11-05', 3, 14050);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (9, '2001-01-03', 4, 10000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (10, '2002-02-23', 4, 2000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (11, '2006-05-20', 4, 50000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (12, '2012-10-08', 4, 2000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (13, '2016-11-02', 4, 3000);

=======
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber, LastUseInMonths) VALUES (1, 'Hansel', 7362849274, 10);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber, LastUseInMonths) VALUES (2, 'Gretel', 7368132738, 5);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber, LastUseInMonths) VALUES (3, 'Yimir', 9378290384, 2);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber, LastUseInMonths) VALUES (4, 'Eren', 6548266384, 1);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber, LastUseInMonths) VALUES (5, 'Yolinda', 7382734622, 11);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber, LastUseInMonths) VALUES (6, 'Harry', 8274829193, 7);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber, LastUseInMonths) VALUES (7, 'Rimuru', 0382734892, 8);
INSERT INTO Customers (CustomerID, CustomerName, CustomerPhoneNumber, LastUseInMonths) VALUES (8, 'Ron', 8264782823, 1);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (1, 02/04/2010, 1, 10000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (2, 10/22/2015, 1, 16253);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (3, 11/22/2015, 1, 25000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (1, 01/03/2007, 2, 45000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (2, 07/04/2011, 2, 1500);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (1, 10/20/2017, 3, 7500);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (2, 09/03/2019, 3, 32000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (3, 11/05/2020, 3, 30001);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (1, 01/03/2001, 4, 20000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (2, 02/23/2002, 4, 90000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (3, 05/20/2006, 4, 13000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (4, 10/08/2012, 4, 5000);
INSERT INTO Employee (EmployeeID, StartDate, BusinessID, Salary) VALUES (5, 11/02/2016, 4, 8000);
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (1, 3, 1, 'Thank you for all your help in unravelling the secret plot!', 5);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (1, 2, 2, 'My lawn looks worse than my neighbors >:( wish I could give negative stars...', 1);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (4, 4, 3, 'My car looks squeeky clean, could have had better service though.', 4);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (6, 1, 4, 'Was smart to let the experts handle this one', 5);
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (8, 3, 5, 'Did not have a disclaimer that I might not like what they find... I did not like it and do not like them', 1);
<<<<<<< HEAD
INSERT INTO Reviews (CustomerID, BusinessID, ReviewID, Comments, Score) VALUES (1, 1, 6, NULL, NULL);

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

=======
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (1, 2, 1, 02/01/2020, 20000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (2, 2, 1, 03/01/2020, 20000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (3, 4, 6, 07/02/2019, 99999);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (4, 1, 3, 08/23/2010, 10000);
INSERT INTO Contracts (ContractID, BusinessID, CustomerID, ContractDate, ServiceCost) VALUES (5, 3, 8, 01/01/2018, 16000);
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 1, 1, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 2, 2, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (6, 3, 3, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (3, 4, 4, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (8, 5, 5, 3);
<<<<<<< HEAD
/*
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (1, 6, 6, 4);
=======
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (3, 6, 6, 4);
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (3, 7, 7, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (4, 8, 8, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (5, 9, 9, 2);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (6, 10, 10, 1);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (7, 11, 11, 4);
INSERT INTO ContractAddress (CustomerID, AddressID, ContractID, BusinessID) VALUES (8, 12, 12, 4);
<<<<<<< HEAD
*/
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 2, 1, 1);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (2, 2, 2, 1);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 4, 3, 6);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 1, 4, 3);
INSERT INTO EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (2, 3, 5, 8);
=======
INSERT INTO EmpoyeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 2, 1, 1);
INSERT INTO EmpoyeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (2, 2, 2, 1);
INSERT INTO EmpoyeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 4, 3, 6);
INSERT INTO EmpoyeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (1, 1, 4, 3);
INSERT INTO EmpoyeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID) VALUES (2, 3, 5, 8);
>>>>>>> 792b1ad27a54d4a07a19c642054e275a0fd7dd85
