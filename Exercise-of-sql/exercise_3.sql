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