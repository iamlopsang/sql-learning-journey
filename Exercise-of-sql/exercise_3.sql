## Exercise 3: Basic SQL Queries (SELECT TOP and Aggregate Functions (min(), max(), avg(), sum(), count())):

## Table Overview

    ## Table Name: Employees

    Columns include:

    > EmployeeID
    > Name
    > Department
    > Salary
    > Age
    > City

The table is shown below, and the queries in exercise3.sql are solved based on this dataset.

        CREATE TABLE Employees (
            EmployeeID INT PRIMARY KEY,
            Name VARCHAR(50),
            Department VARCHAR(30),
            Salary DECIMAL(10,2),
            Age INT,
            City VARCHAR(50)
        );

    ## Questions

                    -- SELECT TOP Practice Questions

        -- a. Display the first 3 employees.

            SELECT TOP 3 *
            FROM Employees;

-- Explanation: This query displays the first 3 records from the Employees table.

        -- b. Display the first 5 employees, showing only Name and Salary.

            SELECT TOP 5 Name, Salary
            FROM Employees;

-- Explanation:This query displays the Name and Salary of the first 5 employees.

        -- c. Display the top 2 highest-paid employees.

            SELECT TOP 2 *
            FROM Employees
            ORDER BY Salary DESC;

-- Explanation: This query displays the 2 employees with the highest salaries.


        -- d. Display the top 4 youngest employees.

            SELECT TOP 4 *
            FROM Employees
            ORDER BY Age ASC;

-- Explanation: This query displays the 4 youngest employees by sorting the Age column in ascending order 
-- (smallest to largest) and selecting the first 4 records.


        -- e. Display the top 1 employee from the table.

            SELECT TOP 1 *
            FROM Employees;

-- Explanation:This query displays the first employee record from the Employees table.

                    -- Intermediate

        -- a. Display the top 3 employees from the IT department.












-- Display the top 5 highest salaries.
-- Display the top 2 oldest employees.
-- Display the top 3 employees whose salary is greater than 50,000.
-- Display the top 5 employees ordered alphabetically by name.
-- Part 2: Aggregate Functions Practice
-- MIN()
-- Find the minimum salary.
-- Find the youngest employee's age.
-- Find the smallest EmployeeID.
-- MAX()
-- Find the maximum salary.
-- Find the oldest employee's age.
-- Find the largest EmployeeID.
-- COUNT()
-- Count the total number of employees.
-- Count the employees in the IT department.
-- Count the employees whose salary is greater than 60,000.
-- Count how many employees live in Kathmandu.
-- SUM()
-- Find the total salary of all employees.
-- Find the total salary of employees in the HR department.
-- Find the sum of the ages of all employees.
-- AVG()
-- Find the average salary.
-- Find the average age.
-- Find the average salary of employees in the Finance department.
-- Find the average salary of employees older than 30.
-- Mixed Practice Questions
-- Display the highest salary in the company.
-- Display the lowest salary in the HR department.
-- Count employees whose age is greater than 25.
-- Display the average age of employees from Kathmandu.
-- Display the total salary paid to employees from Pokhara.
-- Find the maximum age among employees in the IT department.
-- Find the minimum salary among employees older than 40.
-- Display the top 3 highest-paid employees and show only their Name and Salary.
-- Display the top 5 youngest employees with their EmployeeID, Name, and Age.
-- Count employees whose salary is between 40,000 and 70,000.
-- Find the average salary of employees whose city is Lalitpur.
-- Display the total number of employees whose name starts with A.
-- Display the top 2 employees with the lowest salaries.
