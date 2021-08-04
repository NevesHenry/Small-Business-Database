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
UPDATE Employee, Reviews
SET Salary = 
CASE 
	WHEN Score = 5 THEN Salary + 100 
	WHEN Score = 4 THEN Salary + 50  
	WHEN Score = 3 THEN Salary + 25
END;
   
/* ---------------------------------------------------------------------------------------- */ 

/*
This shows a view of which Employee worked at which contract, 
along with the address, Business name and employee id 
*/
CREATE VIEW WorksOnAndWhere
AS SELECT E.EmployeeID, C.ContractID, AddressID, BusinessName, B.WorkedAt
FROM Employee AS E, Contracts AS C, ContractAddress AS A, Business AS B
WHERE A.AddressID = B.WorkedAt
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
This Query shows which business and which employee worked on which contracts and how muuch the customer liked it
 */ 
    
SELECT EmployeeID, E.BusinessID, ContractID, Score
FROM EmployeeWorksOnContract AS E, Reviews
WHERE Score IN (SELECT CustomerID, Score
				FROM Customers AS C
				WHERE C.CustomerID = E.CustomerID);
    




/* ---------------------------------------------------------------------------------------- 
This Query sees the highest paid worker of each company
*/ 

SELECT EmployeeID, BusinessID, Salary
FROM Employee
WHERE (BusinessID, Salary) IN	(SELECT BusinessID, MAX(Salary)
								FROM Employee
								GROUP BY BusinessID);



/* ----------------------------------------------------------------------------------------
This query checks how much money each company has made off of all of their contracts where the customer gave them a review of 4 or 5 And also tells them the average of the scores 
*/ 
SELECT SUM(ServiceCost), B.BusinessID, AVG(Score)
FROM Contracts, Reviews, Business AS B
WHERE Score >= 4
GROUP BY BusinessID;

/* ---------------------------------------------------------------------------------------- 
This Query Shows the customerID, AddressID, and EmployeeID of contracts done at a speicific address
*/ 
SELECT CustomerID, AddressID, EmployeeID
FROM ContractAddress NATURAL JOIN
EmployeeWorksOnContract
WHERE AddressID = 1;


/* ---------------------------------------------------------------------------------------- 
This Query uses a left Outer join to show all customers and the businesses that have done contracts for them
*/ 


SELECT C.CustomerID, CO.CustomerID, CO.BusinessID, ContractID
FROM Customers AS C, Contracts AS CO
LEFT JOIN Business AS B
ON C.CustomerID = B.CustomerID; 


/* ---------------------------------------------------------------------------------------- 
This Query uses a WITH to show Customers and how many times they have given a score of 0
*/ 
/* ---------------------------------------------------------------------------------------- 
This query checks to make sure an employee is not working on a job they are not assigned to
*/ 
/* ---------------------------------------------------------------------------------------- 

/* ---------------------------------------------------------------------------------------- 
This Query shows customers who have used any businesses' services more than once
*/ 
SELECT CustomerID, Count(CustomerID)
FROM Contracts
GROUP BY CustomerID
HAVING COUNT(CustomerID) > 1;
/*---------------------------------------------------------------------------------- 
This Query shows the amount of contracts that each business that has more than 1 employee gets
*/ 



SELECT COUNT(EmployeeID), B.BusinessID
FROM Employee AS E
JOIN Business AS B
ON B.BusinessID = E.BusinessID
GROUP BY BusinessID;

/* ---------------------------------------------------------------------------------------- 
This is used to delete customers from the database if they have not used the service in the last 12 months
*/ 
DELETE 
FROM Customers
WHERE LastUseInMonths > 12;




