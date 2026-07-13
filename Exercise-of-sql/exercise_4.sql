    ## Exercise 4: SQL Queries (LIKE, Wildcards, IN, BETWEEN, Aliases)
       
       ## Table Overview

             Table Name: Employees

        ## Columns include:

            > EmployeeID
            > Name
            > Department
            > Salary
            > Age
            > City
            > JoiningDate

        The queries in exercise4.sql are solved based on this dataset.

            CREATE TABLE Employees (
                EmployeeID INT PRIMARY KEY,
                Name VARCHAR(50),
                Department VARCHAR(30),
                Salary DECIMAL(10,2),
                Age INT,
                City VARCHAR(50),
                JoiningDate DATE
            );

    ## Questions:

            -- ## Part A: LIKE and Wildcards ##

  -- a. Display all employees whose names start with A.

        SELECT *
        FROM Employees
        WHERE Name LIKE 'A%';

-- Explanation: This query displays all employees whose names start with the letter A.


    -- b. Display all employees whose names end with n.
        
        SELECT *
        FROM Employees
        WHERE Name LIKE '%n';

-- Explanation: This query displays all employees whose names end with the letter n.

    -- c. Display employees whose names contain ar.
        
        SELECT Name
        FROM Employees
        WHERE Name LIKE '%ar%';

-- Explanation: This query displays the names of employees that contain "ar" anywhere in their names.
