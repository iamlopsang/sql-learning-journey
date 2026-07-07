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

            SELECT TOP 3 *
            FROM Employees
            WHERE Department = 'IT';

-- Explanation: This query displays the first 3 employees who work in the IT department by filtering the 
-- records where the Department is 'IT'.

        -- b. Display the top 5 highest salaries.

            SELECT TOP 5 Salary
            FROM Employees
            ORDER BY Salary DESC;

-- Explanation: This query displays the 5 highest salary values from the Employees table.

        -- c. Display the top 2 oldest employees.

            SELECT TOP 2 *
            FROM Employees
            ORDER BY Age DESC;

-- Explanation: This query displays the 2 oldest employees by sorting the Age column in descending order 
-- (highest to lowest) and selecting the first 2 records.

        -- d. Display the top 3 employees whose salary is greater than 50,000.

            SELECT TOP 3 *
            FROM Employees
            WHERE Salary > 50000;

-- Explanation: This query displays the first 3 employees whose salary is greater than 50,000 by filtering
-- the records using the WHERE clause.




        -- e. Display the top 5 employees ordered alphabetically by name.

            SELECT TOP 5 *
            FROM Employees
            ORDER BY Name ASC;

-- Explanation: This query displays the first 5 employees by sorting their names in alphabetical 
-- order (A to Z).

            -- Part 2: Aggregate Functions Practice

            -- MIN()

        -- a. Find the minimum salary.

            SELECT MIN(Salary)
            FROM Employees;

-- Explanation: This query displays the lowest salary in the Employees table using the MIN() aggregate function.

        -- b. Find the youngest employee's age.

            SELECT MIN(Age)
            FROM Employees;

-- Explanation: This query displays the youngest employee's age by finding the minimum value in the Age column.

        -- c. Find the smallest EmployeeID.

            SELECT MIN(EmployeeID)
            FROM Employees;

-- Explanation: This query displays the smallest EmployeeID in the Employees table using the MIN() aggregate
-- function.

                    -- MAX()

        -- a. Find the maximum salary.

            SELECT MAX(Salary)
            FROM Employees;

-- Explanation: This query displays the highest salary in the Employees table using the MAX() aggregate 
-- function.

        -- b.Find the oldest employee's age.
           
            SELECT MAX(Age)
            FROM Employees;

-- Explanation: This query displays the oldest employee's age by finding the maximum value in the Age column.

        -- c. Find the largest EmployeeID.

            SELECT MAX(EmployeeID)
            FROM Employees;

-- Explanation: This query displays the largest EmployeeID in the Employees table using the MAX() aggregate
-- function.

                -- COUNT()

        -- a. Count the total number of employees.
           
            SELECT COUNT(*) AS TotalEmployees
            FROM Employees;

-- Explanation: This query counts the total number of employees in the Employees table using the COUNT(*) 
-- aggregate function.

        -- b. Count the employees in the IT department.
            
            SELECT COUNT(Department)
            FROM Employees
            WHERE Department = 'IT';

-- Explanation: This query counts the number of employees who work in the IT department by filtering the 
-- records where the Department is 'IT'.


-- c. Count the employees whose salary is greater than 60,000.
            
            SELECT COUNT(Salary)
            FROM Employees
            WHERE Salary > 60000;

-- Explanation: This query counts the number of employees whose salary is greater than 60,000 by filtering
-- the records using the WHERE clause.

        -- d. Count how many employees live in Kathmandu.
            
            SELECT COUNT(*) AS TotalNumber
            FROM Employees
            WHERE City = 'Kathmandu';

-- Explanation: This query counts the total number of employees who live in Kathmandu by filtering the records where the City is 'Kathmandu'.

                -- SUM()

        -- a. Find the total salary of all employees.
           
            SELECT SUM(Salary) AS TotalSalary
            FROM Employees;

-- Explanation: This query calculates the total salary of all employees in the Employees table using the SUM() aggregate function.

        -- b. Find the total salary of employees in the HR department.
            
            SELECT SUM(Salary) AS TotalSalary
            FROM Employees
            WHERE Department = 'HR';

-- Explanation: This query calculates the total salary of employees in the HR department by filtering the records where the Department is 'HR'.

        -- c. Find the sum of the ages of all employees.
            
            SELECT SUM(Age) AS TotalAge
            FROM Employees;

-- Explanation: This query calculates the sum of the ages of all employees in the Employees table using the SUM() aggregate function.

                -- AVG()
        -- a. Find the average salary.

            SELECT AVG(Salary) AS AverageSalary
            FROM Employees;

-- Explanation: This query calculates the average salary of all employees by finding the mean value of the
--  Salary column.
  
        -- b.Find the average age.
            
            SELECT AVG(Age) AS AverageAge
            FROM Employees;

-- Explanation: This query calculates the average age of all employees by finding the mean value of the Age 
-- column.

        -- c. Find the average salary of employees in the Finance department.
            
            SELECT AVG(Salary) AS AverageSalary
            FROM Employees
            WHERE Department = 'Finance';
            
-- Explanation: This query calculates the average salary of employees who work in the Finance department by
-- filtering the records where the Department is 'Finance'.

        -- d. Find the average salary of employees older than 30.
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
