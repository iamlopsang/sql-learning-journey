## Exercise 2: Basic SQL Queries.(INSERT INTO, NULL values, UPDATE, and DELETE.)

## Table Overview

    ## Table Name: Students

        Columns include:
        > StudentID
        > Name
        > Age
        > Email
        > City

The table is shown below, and the queries in exercise2.sql are solved based on this dataset.

            CREATE TABLE Students (
            StudentID INT PRIMARY KEY,
            Name VARCHAR(50),
            Age INT,
            Email VARCHAR(100),
            City VARCHAR(50)
        );

## Questions:

    -- 1. INSERT INTO Practice Questions
    -- Beginner
    -- Insert a student with:
    -- StudentID = 1
    -- Name = 'Aarav'
    -- Age = 20
    -- Email = 'aarav@gmail.com'
    -- City = 'Kathmandu'

        INSERT INTO Students VALUES 
        (1, "Aarav", 20, "aarav@gmail.com","Kathmandu");

        -- Explanation: The INSERT INTO statement is used to add new records to a table. In this case, we are inserting a new student with the specified details into the Students table. Each value corresponds to the respective column in the order they are defined in the table schema.   

    -- 2. Insert a student:
    -- StudentID = 2
    -- Name = 'Sita'
    -- Age = 19
    -- Email = 'sita@gmail.com'
    -- City = 'Pokhara'

        INSERT INTO Students VALUES
        (2, "Sita", 19, "sita@gmail.com.com","Pokhara");

    -- Explanation: Similar to the first question, we are inserting another student into the Students table with the provided details. Each value corresponds to the respective column in the order they are defined in the table schema.      


