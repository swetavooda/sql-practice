# problem link: https://leetcode.com/problems/employees-earning-more-than-their-managers/

# Write your MySQL query statement below

SELECT Name as Employee FROM Employee e WHERE Salary>(SELECT Salary FROM Employee WHERE e.ManagerId=Id  );

# more efficient
SELECT e1.Name AS Employee
FROM Employee e1
LEFT JOIN Employee e2 ON e2.Id = e1.ManagerId
WHERE (e1.ManagerId IS NOT NULL) AND (e1.Salary > e2.Salary)
