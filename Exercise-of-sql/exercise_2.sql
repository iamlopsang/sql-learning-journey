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


        -- 3. UPDATE Practice Questions

            a. Change the City of StudentID 2 to 'Lalitpur'.

            UPDATE Students
            SET City = 'Lalitpur'
            WHERE StudentID = 2;

            -- Explanation: This query updates the City of the student with StudentID 2 to 'Lalitpur', modifying only the specified student's record.

            b. Increase the Age of StudentID 1 by 1 year.

            UPDATE Students
            SET Age = Age + 1
            WHERE StudentID = 1;

      -- Explanation: This query increases the Age of the student with StudentID 1 by 1 year by adding 1 to
    --    the current Age value and updating only the specified record.

            -- c. Change the City of all students from 'Pokhara' to 'Kathmandu'.

            UPDATE Students
            SET City = 'Kathmandu'
            WHERE City = 'Pokhara';

     -- Explanation: This query updates the City of all students whose current City is 'Pokhara' to 
    --  'Kathmandu', modifying every matching record in the Students table.


            -- d. Set the Email of StudentID 3 to NULL.

            UPDATE Students
            SET Email = NULL
            WHERE StudentID = 3;

     -- Explanation: This query sets the Email of the student with StudentID 3 to NULL, removing the existing
    --   email value for that specific student record.

            -- e. Update the City to 'Unknown' for all students whose City is NULL.

            UPDATE Students
            SET City = 'Unknown'
            WHERE City IS NULL;

    -- Explanation: This query updates the City to 'Unknown' for all students whose City is NULL, replacing 
    --  missing city values with a default value.

            -- f. Increase the Age of all students by 2 years.

            UPDATE Students
            SET Age = Age + 2;

  -- Explanation: This query increases the Age of all students by 2 years by adding 2 to the current Age
  --value for every record in the Students table.

        -- g. Change both Age and City of StudentID 1 in one query.

            UPDATE Students
            SET Age = 25,
                City = 'London'
            WHERE StudentID = 1;

  -- Explanation: This query updates both the Age and City of the student with StudentID 1 in a single
--   statement by setting Age to 25 and City to 'London' for the specified record.



        -- h. Set Email = 'notprovided@gmail.com' where Email is NULL.

            UPDATE Students
            SET Email = 'notprovided@gmail.com'
            WHERE Email IS NULL;

 -- Explanation: This query updates the Email field to '[notprovided@gmail.com](mailto:notprovided@gmail.com)'
--   for all students whose Email is NULL, replacing missing email addresses with a default value.


        -- Update every student living in Kathmandu to have Age = 25.

            UPDATE Students
            SET Age = 25
            WHERE City = 'Kathmandu';

-- Explanation: This query updates the Age to 25 for all students whose City is 'Kathmandu', modifying
--   every matching student record.


            -- DELETE Practice Questions
          
            -- a. Delete the student whose StudentID is 3.

            DELETE FROM Students
            WHERE StudentID = 3;

-- Explanation: This query deletes the student record whose StudentID is 3, removing that specific student 
-- from the Students table.


         -- b. Delete all students whose City is 'Pokhara'.

            DELETE FROM Students
            WHERE City = 'Pokhara';

-- Explanation: This query deletes all student records whose City is 'Pokhara', removing them from the 
-- Students table.

        -- c. Delete students whose Age is less than 18.

            DELETE FROM Students
            WHERE Age < 18;

-- Explanation: This query deletes all student records whose Age is less than 18, removing every matching 
-- student from the Students table.


        -- d. Delete all students whose Email is NULL.

            DELETE FROM Students
            WHERE Email IS NULL;

-- Explanation: This query deletes all student records whose Email is NULL, removing students with missing 
-- email addresses from the Students table.

        -- e. Delete all students from the table.

            DELETE FROM Students;

-- Explanation: This query deletes all records from the Students table, removing every student while keeping
-- the table structure unchanged.

        -- f. Delete all students except those living in Kathmandu.

            DELETE FROM Students
            WHERE City != 'Kathmandu';

-- Explanation: This query deletes all student records except those whose City is 'Kathmandu', keeping only 
-- students living in Kathmandu.


        -- g. Delete students whose names start with 'A'.

            DELETE FROM Students
            WHERE Name LIKE 'A%';

-- Explanation: This query deletes all student records whose Name starts with the letter 'A', removing every 
-- matching student from the Students table.


        -- h.Delete students whose Age is greater than 25.

-- delete from students
-- where age> 25;


 