#problem link : https://leetcode.com/problems/customers-who-never-order/

# Write your MySQL query statement below

#leftjoin
SELECT Name AS Customers from Customers LEFT JOIN Orders
ON Customers.Id=Orders.CustomerId 
WHERE Orders.CustomerId IS NULL;

#subquery
Select Name Customers
From Customers
WHERE Id NOT IN
(SELECT CustomerId
FROM Orders);
