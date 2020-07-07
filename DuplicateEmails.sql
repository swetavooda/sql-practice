#problem link: https://leetcode.com/problems/duplicate-emails

# Write your MySQL query statement below
SELECT Email FROM Person GROUP BY Email HAVING COUNT(Email)>1;

#or
SELECT Email FROM Person GROUP BY Email HAVING COUNT(Id)>1;
