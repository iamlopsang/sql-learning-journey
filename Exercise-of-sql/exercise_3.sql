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

Display the top 2 highest-paid employees.

select top 2* from employess
order by salary desc
limit 2;