USE HnM;

/* This is used to see the comments a customer has left along with the name of 
the customer who left the review
*/
SELECT CustomerName
FROM Customers AS C
WHERE C.CustomerID IN (SELECT Comments
						FROM Reviews AS R
						WHERE C.CustomerID = R.CustomerID);

/* ---------------------------------------------------------------------------------------- */         

/* 
This is used to show the name of the business with the most number of customers
as well as the name of the company
*/
SELECT NumOfCustomers, BusinessName
FROM Business
WHERE NumOfCustomers = (SELECT MAX(NumOfCustomers) AS MostCustomers);

/* ---------------------------------------------------------------------------------------- */    

/*
This shows a list of all customer names and the list of businesses they have
used 
*/
SELECT CustomerName, BusinessName
FROM (Business JOIN Customers)
WHERE BusinessID = 1;

/* ---------------------------------------------------------------------------------------- 
This Query is used to Alter the Business table to add another column to it, based off of addressID, but labels where employees worked
*/ 

ALTER TABLE Business
ADD  WorkedAt INT;

/* ---------------------------------------------------------------------------------------- */ 

/* 
This shows the phone number of the location of the business as long
as the business has two or more location it is operating out of
*/
SELECT PhoneNumber, BusinessAddress
FROM BusinessPhone AS BP NATURAL JOIN Business AS B
WHERE EXISTS (SELECT *
				FROM Business
                WHERE NumOfAddresses > 1);

/* ---------------------------------------------------------------------------------------- */ 

/*
This is used to update an employees salary when they are given a high score on their
reviews from customers, to incentivise hard work, END is used as a keyword
to stop the cases as an error pops up unless used
*/ 
UPDATE Employees, Reviews
SET Salary= 
CASE WHEN Score = 5 THEN Salary + 100 
	WHEN Score = 4 THEN Salary + 50  
	WHEN Score = 3 THEN Salary + 25
END;
   
/* ---------------------------------------------------------------------------------------- */ 

/*
This shows a view of which Employee worked at which contract, 
along with the address, Business name and employee id 
*/
CREATE VIEW WorksOnAndWhere
AS SELECT EmployeeID AS E, ContractID, AddressID AS A, BusinessName
FROM Employees, Contracts, ContractAddress, Business
WHERE A.AddressID = E.WorkAt
GROUP BY EmployeeID;

/* ---------------------------------------------------------------------------------------- */ 

/*
	This shows the average scores of each business in decreasing order
    
*/
SELECT AVG(Score)
FROM Reviews
ORDER BY Score DESC;
/* ---------------------------------------------------------------------------------------- 
This shows the amount of times that each company got a score of 5 in order of who got the most to who got the least
*/ 
SELECT COUNT(Score), BusinessName
FROM Reviews, Business
WHERE Score = 5
GROUP BY BusinessName
ORDER BY COUNT(Score) DESC;



/* ----------------------------------------------------------------------------------------
This is used to update the lastuse column when a customer uses the program
 */ 
CREATE TRIGGER CustomerUsage
AFTER INSERT OF CustomerID, ContractID ON Contracts FOR EACH ROW 
BEGIN
	IF CustomerID = INSERTED.CustomerID
    UPDATE Customer
    SET LastUseInMonths = 0
END;
    
    




/* ---------------------------------------------------------------------------------------- 
This Query sees the highest paid worker of each company
*/ 
SELECT MAX(Salary), EmployeeID
FROM Employee
WHERE (BusinessID, Salary) IN (SELECT BusinessID, MAX(Salary)
								FROM Employee
								GROUP BY BusinessID);
                                

/* ----------------------------------------------------------------------------------------
This query checks how much money each company has made off of all of their contracts where the customer gave them a review of 4 or 5 And also tells them the average of the scores 
*/ 
SELECT SUM(ServiceCost), BusinessID, AVG(Score)
FROM Contracts, Reviews
WHERE Scores >= 4
GROUP BY BusinessID;

/* ---------------------------------------------------------------------------------------- 
This Query Shows the customerID, AddressID, and EmployeeID of contracts done at a speicific address
*/ 
SELECT CustomerID, AddressID, EmployeeID
FROM (ContractAddress NATURAL JOIN
(EmployeeWorksOnContract (EmployeeID, BusinessID, ContractID, CustomerID)))
WHERE AddressID = 1;


/* ---------------------------------------------------------------------------------------- 
This Query uses a left Outer join to show all customers and the businesses that have done contracts for them
*/ 
SELECT CustomerID, BusinessID, ContractID
FROM Customer, Contract
LEFT JOIN Business
ON Customer.CustomerID = Business.CustomerID; 


/* ---------------------------------------------------------------------------------------- 
This Query uses a WITH to show Customers and how many times they have given a score of 0
*/ 
WITH Reviews(CustomerID) AS
					(SELECT Score
					FROM Reviews
                    WHERE Score = 0
                    COUNT(Score)
                    Group BY CustomerID)
SELECT CustomerID, COUNT(Score)
FROM Reviews
Group BY CustomerID
/* ---------------------------------------------------------------------------------------- 
This query checks to make sure an employee is not working on a job they are not assigned to
*/ 
CREATE ASSERTION Employee_Works_At
CHECK (NOT EXISTS (SELECT EmployeeID, ContractID
					FROM Employee AS E, Contracts AS C , EmployeeWorksOnContract AS EM
                    WHERE E.EmployeeID != EM.EmployeeID
						AND C.ContractID != EM.ContractID));
/* ---------------------------------------------------------------------------------------- 
This query shows all of the Customers and their reviews, and shows the businesses where the customer
did not leave a review, this is to show businesses if the customer did not leave
a review due to service or habit
*/ 
SELECT CustomerID, ReviewID, BusinessID
FROM Reviews 
RIGHT JOIN Business ON ReviewID = NULL
GROUP BY CustomerID;
/* ---------------------------------------------------------------------------------------- 
This Query shows whether customers have used a businesses' services more than once
*/ 
SELECT COUNT(CustomerID), BusinessID, CostAndFees
FROM Customer, Business
GROUP BY CustomerID
HAVING COUNT(CustomerID) > 2
AND CostAndFees(BusinessID) = CostAndFees(BusinessID);
/* ---------------------------------------------------------------------------------------- 
This Query shows the amount of contracts that each business that has more than 1 employee gets
*/ 
SELECT COUNT(EmployeeID), BusinessID
FROM Employee, Business
GROUP BY EmployeeID
HAVING COUNT(EmployeeID) > 1 IN
			(SELECT COUNT(ContractID)
            FROM Contracts
			GROUP BY ContractID
            HAVING COUNT(ContractID));

/* ---------------------------------------------------------------------------------------- 
This is used to delete customers from the database if they have not used the service in the last 12 months
*/ 
DELETE 
FROM Customers
WHERE LastUse > 12;




