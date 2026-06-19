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

        -- Explanation: The INSERT INTO statement is used to add new records to a table.
        --  In this case, we are inserting a new student with the specified details into the 
        --  Students table. Each value corresponds to the respective column in the order they 
        --  are defined in the table schema.   

    -- 2. Insert a student:
    -- StudentID = 2
    -- Name = 'Sita'
    -- Age = 19
    -- Email = 'sita@gmail.com'
    -- City = 'Pokhara'

        INSERT INTO Students VALUES
        (2, "Sita", 19, "sita@gmail.com.com","Pokhara");

    -- Explanation: Similar to the first question, we are inserting another student into the Students 
    -- table with the provided details. Each value corresponds to the respective column in the order they 
    -- are defined in the table schema.      


        -- 3.Insert a student with only:
        --     StudentID = 3
        --     Name = 'Ram'
        --     Age = 21

        INSERT INTO Students (StudentID, Name, Age)
        VALUES (3, 'Ram', 21);

        -- Explanation: In this case, we are inserting a new student into the Students table, 
        -- but we are only providing values for the StudentID, Name, and Age columns. 
        -- The Email and City columns will be set to NULL by default since we are not providing an
        -- y values for them. The INSERT INTO statement allows us to specify which columns we want to 
        -- insert values into, and the VALUES clause provides the corresponding values for those columns. 


        -- 4. Insert three students in a single query.

        INSERT INTO Students (StudentID, Name, Age, Email, City)
        VALUES 
        (3, "john", 22, "john@gmail.com", "kathmandu"),
        (4, "hendry", 20, "hendry@gmail.com", "kathmandu"),
        (5, "hari", 25, "hari@gmail.com", "lalitpur"); 

        -- Explanation: This query demonstrates how to insert multiple records into the Students table in
        --  a single query.We specify the columns we want to insert values into (StudentID, Name, Age, Email, 
        --  City) and then provide multiple sets of values for each student in the VALUES clause. Each set of 
        --  values corresponds to a new student record that will be added to the table. This approach is more 
        --  efficient than executing separate INSERT INTO statements for each student, as it reduces the number
        --  of queries


        2. NULL Values Practice Questions

        a. Insert a student whose Email is unknown.

        INSERT INTO students
        VALUES
        (11, 'Aaryana', 21, NULL, 'Lalitpur');
        -- Explanation: In this query, we are inserting a new student into the Students table, but
        -- we do not have an email address for the student. Therefore, we use NULL to indicate that the
        -- value for the Email column is unknown. The other values for StudentID, Name, Age, and City are
        -- provided as usual. This allows us to maintain the integrity of the data while acknowledging that
        -- certain information is not available at the time of insertion.   

        -- or we can write the query as:

        INSERT INTO students (StudentID, Name, Age, Email, Address)
        VALUES (11, 'Aaryana', 21, NULL, 'Lalitpur');
        -- Explanation: This query achieves the same result as the previous one, but it explicitly 
        -- specifiesthe columns we are inserting values into. By listing the columns (StudentID, Name, Age, Email,
        -- Address) in the INSERT INTO statement, we can provide values for those specific columns while 
        -- leaving the Email column as NULL. This approach can be useful for clarity and to ensure that the 
        -- correct values are inserted into the intended columns, especially when dealing with tables that
        --  have many columns or when some columns may have default values.   


       b. Insert a student whose City is unknown.

            INSERT INTO students
            VALUES
            (22, 'Minnie', 21, 'minnie@gmail.com', NULL);

            -- Explanation: In this query, we are inserting a new student into the Students table, but we 
            -- do not have information about the student's city. Therefore, we use NULL to indicate that the
            -- value for the City column is unknown. The other values for StudentID, Name, Age, and Email are
            -- provided as usual. This allows us to maintain the integrity of the data while acknowledging 
            -- that certain information is not available at the time of insertion.    

            -- or we can write the query as:

            INSERT INTO students (StudentID, Name, Age, Email, City)
            VALUES (22, 'Minnie', 21, 'minnie@gmail.com', NULL);

        -- Explanation: Similar to the previous query, this version explicitly specifies the columns we are
        -- inserting values into. By listing the columns (StudentID, Name, Age, Email, City) in the INSERT INTO
        -- statement, we can provide values for those specific columns while leaving the City column as NULL. 
        -- This approach can enhance clarity and ensure that the correct values are inserted into the intended
        -- columns, especially when dealing with tables that have many columns or when some columns may have
        -- default values.                   
