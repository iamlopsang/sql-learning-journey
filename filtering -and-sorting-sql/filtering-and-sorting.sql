-- ## Exercises of SQL Lesson 4: Filtering and sorting Query results.

    -- 1.List all directors of Pixar movies (alphabetically), without duplicates.

        SELECT DISTINCT DIRECTOR fROM MOVIES
        ORDER BY director ASC;
        -- Explanation: This query selects the unique directors from the 'movies' table and orders them in ascending alphabetical order. The 'DISTINCT' keyword is used to ensure that duplicate director names are not included in the results, and the 'ORDER BY' clause sorts the results alphabetically.   

    -- 2. List the last four Pixar movies released (ordered from most recent to least).

        SELECT * FROM movies
        OREDER BY year DESC
        LIMIT 4;
        -- Explanation: This query selects all columns from the 'movies' table, orders the results by the 'year' column in descending order (most recent to least), and limits the output to the first four records. The 'ORDER BY' clause sorts the results based on the release year, and the 'LIMIT' clause restricts the number of records returned to four.    

    -- 3. List the first five Pixar movies sorted alphabetically.

        SELECT * FROM movies
        ORDER BY title ASC
        LIMIT 5;
        -- Explanation: This query selects all columns from the 'movies' table, orders the results by the 'title' column in ascending alphabetical order, and limits the output to the first five records. The 'ORDER BY' clause sorts the results based on the movie titles, and the 'LIMIT' clause restricts the number of records returned to five.  
        
List all Pixar movies released in the 1990s, sorted by release date (oldest to newest)  




List the next five Pixar movies sorted alphabetically

    

List all Pixar movies released in the 2000s, sorted by release date (oldest to newest)



