# problem link: https://leetcode.com/problems/second-highest-salary/

# Write your MySQL query statement below

# more efficient as we are not sorting the whole table by using "ORDER BY"
SELECT MAX(salary) SecondHighestSalary FROM employee e 
WHERE salary<(select max(salary) FROM employee);

# using ORDER BY and LIMIT
SELECT(SELECT DISTINCT Salary  FROM
Employee ORDER BY Salary DESC
LIMIT 1,1)AS SecondHighestSalary;

