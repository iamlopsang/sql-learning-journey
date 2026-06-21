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

 --Explanation: INSERT INTO adds a new row to the Students table by inserting values into their 
--  corresponding columns.

    -- 2. Insert a student:
    -- StudentID = 2
    -- Name = 'Sita'
    -- Age = 19
    -- Email = 'sita@gmail.com'
    -- City = 'Pokhara'

        INSERT INTO Students VALUES
        (2, "Sita", 19, "sita@gmail.com.com","Pokhara");

   -- Explanation: This statement inserts another student record into the Students table, with each value
    -- corresponding to its respective column.

        -- 3.Insert a student with only:
        --     StudentID = 3
        --     Name = 'Ram'
        --     Age = 21

        INSERT INTO Students (StudentID, Name, Age)
        VALUES (3, 'Ram', 21);

        -- Explanation: This statement inserts a new student by providing values only for the specified 
        -- columns, while the remaining columns are set to NULL by default.

        -- 4. Insert three students in a single query.

        INSERT INTO Students (StudentID, Name, Age, Email, City)
        VALUES 
        (3, "john", 22, "john@gmail.com", "kathmandu"),
        (4, "hendry", 20, "hendry@gmail.com", "kathmandu"),
        (5, "hari", 25, "hari@gmail.com", "lalitpur"); 

       -- Explanation: This statement inserts multiple student records into the Students table in a single 
       -- query, making the insertion process more efficient.


        2. NULL Values Practice Questions

        a. Insert a student whose Email is unknown.

        INSERT INTO Students
        VALUES
        (11, 'Aaryana', 21, NULL, 'Lalitpur');
       -- Explanation: This statement inserts a new student record and uses NULL for the Email column
        -- because the email address is not available.

        -- or we can write the query as:

        INSERT INTO Students (StudentID, Name, Age, Email, Address)
        VALUES (11, 'Aaryana', 21, NULL, 'Lalitpur');
        -- Explanation: This statement explicitly specifies the columns to insert values into, making the
        --  query clearer and ensuring values are placed in the correct columns.

       b. Insert a student whose City is unknown.

            INSERT INTO Students
            VALUES
            (22, 'Minnie', 21, 'minnie@gmail.com', NULL);

            -- Explanation: This statement inserts a new student record and uses NULL for the City column 
            -- because the city information is not available.

            -- or we can write the query as:

            INSERT INTO Students (StudentID, Name, Age, Email, City)
            VALUES (22, 'Minnie', 21, 'minnie@gmail.com', NULL);

        -- Explanation: This statement explicitly specifies the columns to insert values into and sets the
        --  City column to NULL, ensuring clarity and correct column mapping.


        -- c. Insert a student whose Age and Email are both unknown.

            INSERT INTO Students
            VALUES (33, 'Johnny', NULL, NULL, 'Chicago');

  -- Explanation: This statement inserts a new student record and uses NULL for the Age and Email columns.

            -- or we can write the query as:

            INSERT INTO Students (StudentID, Name, Age, Email, City)
            VALUES (33, 'Johnny', NULL, NULL, 'Chicago');

        -- Explanation: This statement inserts a new student record and uses NULL for the Age and Email
        --  columns because those values are not available.

        -- d. Write a query to display all students whose Email is NULL.

            SELECT * FROM  Students
            WHERE Email IS NULL;

        -- Explanation: This query retrieves all student records from the Students table where the Email
        --  column has a NULL value, allowing us to identify students with unknown email addresses.

            SELECT  Email FROM Students
            WHERE Email IS NULL;
        -- Explanation: This query retrieves only the Email column for students whose Email is NULL,
        --  providing a focused view of the missing email addresses.


        -- e. Write a query to display all students whose City is NOT NULL.

            SELECT * FROM Students
            WHERE City IS NOT NULL;

     -- Explanation: This query retrieves all student records whose City is NOT NULL, providing a complete 
    --  view of students with a recorded city.


        --   f. Count how many students have a NULL Email.

            SELECT COUNT(*)
            FROM Students
            WHERE Email IS NULL;

-- Explanation: This query counts the number of students whose Email is NULL, providing the total number
-- of records with missing email addresses.








        

