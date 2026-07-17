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

    -- d. Find employees whose city starts with New.

        SELECT *
        FROM Employees
        WHERE City LIKE 'New%';

-- Explanation: This query displays all employees whose city starts with "New".

    -- e. Find employees whose city ends with go.

        SELECT *
        FROM Employees
        WHERE City LIKE '%go';

-- Explanation: This query displays all employees whose city ends with "go".

    -- f. Display employees whose second letter is a.

        SELECT *
        FROM Employees
        WHERE Name LIKE '_a%';

-- Explanation: This query displays all employees whose names have "a" as the second letter.



    -- g. Display employees whose names have exactly 5 letters.

        SELECT *
        FROM Employees
        WHERE Name LIKE '_____';

-- Explanation: This query displays all employees whose names have exactly 5 letters.

    -- h. Display employees whose city contains York.

        SELECT *
        FROM Employees
        WHERE City LIKE '%York%';

-- Explanation: This query displays all employees whose city contains "York".

                        -- Part B: IN Operator


    -- a. Display employees working in HR, IT, or Finance.

        SELECT *
        FROM Employees
        WHERE Department IN ('HR', 'IT', 'Finance');

-- Explanation: This query displays all employees who work in the HR, IT, or Finance departments.

    -- b. Display employees who are not in the Sales department.

        SELECT *
        FROM Employees
        WHERE Department != 'Sales';

-- Explanation: This query displays all employees who are not in the Sales department.

    -- c. Find employees from Chicago, Boston, or Seattle.

        SELECT *
        FROM Employees
        WHERE City IN ('Chicago', 'Boston', 'Seattle');

-- Explanation: This query displays all employees whose city is Chicago, Boston, or Seattle.
            
                    -- Part C: BETWEEN Operator

    -- a. Find employees whose salary is between 45,000 and 60,000.

        SELECT *
        FROM Employees
        WHERE Salary BETWEEN 45000 AND 60000;      

-- Explanation: This query displays all employees whose salary is between 45,000 and 60,000 (inclusive).

    -- b. Display employees aged between 25 and 30.

        SELECT *
        FROM Employees
        WHERE Age BETWEEN 25 AND 30;   

-- Explanation: This query displays all employees whose age is between 25 and 30 (inclusive).        

    -- a. Find employees who joined between 2023-01-01 and 2023-12-31.

        SELECT *
        FROM Employees
        WHERE JoiningDate BETWEEN '2023-01-01' AND '2023-12-31'; 

-- Explanation: This query displays all employees who joined between January 1, 2023 and December 31, 2023.  

    -- b. Display employees whose salary is not between 50,000 and 70,000.

        SELECT *
        FROM Employees
        WHERE Salary NOT BETWEEN 50000 AND 70000;

-- Explanation: This query displays all employees whose salary is not between 50,000 and 70,000.

-- Part D: Aliases
-- Q16

-- Display employee names with the alias Employee_Name.

-- Q17

-- Display salary with the alias Monthly_Salary.

-- Q18

-- Use a table alias to display employee name and department.

-- Q19

-- Display name, salary, and city using column aliases.

-- Part E: Mixed Practice
-- Q20

-- Find employees whose:

-- Name starts with A
-- Department is HR or IT
-- Salary is between 40,000 and 60,000
-- Q21

-- Display employees whose city starts with San or New.

-- Q22

-- Find employees whose names have exactly 4 letters.

-- Q23

-- Display employees whose department is IT and city contains San.

-- Q24

-- Find employees aged between 25 and 35 who work in Finance or HR.

-- Q25 (Challenge)

-- Write a single query that uses:

-- LIKE
-- Wildcard (% or _)
-- IN
-- BETWEEN
-- Column Alias
-- Table Alias
