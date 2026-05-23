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
        
    -- 4. List all Pixar movies released in the 1990s, sorted by release date (oldest to newest).

        SELECT * FROM movies
        WHERE year >=1990 AND year <2000
        ORDER BY year ASC;
        -- Explanation: This query selects all columns from the 'movies' table, filters the results to include only movies released between 1990 and 1999 using the 'WHERE' clause, and orders the results by the 'year' column in ascending order (oldest to newest). The 'WHERE' clause ensures that only movies from the 1990s are included in the results, and the 'ORDER BY' clause sorts them by their release year.  

    -- 5. List the next five Pixar movies sorted alphabetically.

        SELECT * FROM movies
        ORDER BY title ASC
        LIMIT 5 OFFSET 5;
        -- Explanation: This query selects all columns from the 'movies' table, orders the results alphabetically by the 'title' column in ascending order, and limits the output to five records starting from the sixth record (offset of 5). The 'ORDER BY' clause sorts the results based on the movie titles, the 'LIMIT' clause restricts the number of records returned to five, and the 'OFFSET' clause skips the first five records in the sorted list.

    -- 6. List all Pixar movies released in the 2000s, sorted by release date (oldest to newest).

        SELECT * FROM movvies
        WHERE year > = 2000 AND year < 2013
        ORDER BY  year ASC;
        -- Explanation: This query selects all columns from the 'movies' table, filters the results to include   only movies released between 2000 and 2009 using the 'WHERE' clause, and orders the results by the 'year' column in ascending order (oldest to newest). The 'WHERE' clause ensures that only movies from the 2000s are included in the results, and the 'ORDER BY' clause sorts them by their release year.  

            -- Level 1 — Basic Understanding

    -- 7. Show all movie titles only.

        SELECT title 
        FROM movies;
        -- Explanation: This query selects only the 'title' column from the 'movies' table, which will return a list of all movie titles. The 'SELECT' statement specifies that only the 'title' field should be included in the results, and since there is no 'WHERE' clause or 'ORDER BY' clause, it will return all movie titles in the order they are stored in the database.  

    -- 8. Show all unique directors.

        SELECT DISTINCT director
        FROM movies;
        -- Explanation: This query selects the unique values from the 'director' column in the 'movies' table. The 'DISTINCT' keyword ensures that duplicate director names are not included in the results, so it will return a list of all unique directors from the movies database. 

    -- 9. Show movie titles sorted alphabetically.

        SELECT title
        FROM movies
        ORDER BY year ASC;
         -- Expalnation: This query selects all movie titles and sorts them from the oldest year to the newest.

    -- 10. Show movie titles sorted reverse alphabetically.

        SELECT title
        FROM movies
        ORDER BY year DESC;
        -- Explanation: This query selects all movie titles and sorts them from the newest year to the oldest.

    -- 11. Show all movies from oldest to newest.

        SELECT * FROM movies
        ORDER BY year ASC;
        -- Explanation: This query selects all columns from the 'movies' table and orders the results by the 'year' column in ascending order, which means it will display the movies starting from the oldest release year to the newest. The 'ORDER BY' clause is used to sort the results based on the release year. 

    -- 12. Show all movies from newest to oldest.

        SELECT * FROM movies
        ORDER BY year DESC;
        -- Explanation: This query selects all columns from the 'movies' table and orders the results by the 'year' column in descending order, which means it will display the movies starting from the newest release year to the oldest. The 'ORDER BY' clause is used to sort the results based on the release year.

    -- 13. Show only the first 5 movies.

        SELECT * FROM movies
        LIMIT 5;
        -- Explanation: This query selects all columns from the 'movies' table and limits the output to the first five records. The 'LIMIT' clause is used to specify the maximum number of records to return, so in this case, it will return only the first five movies from the database.    

    -- 14. Show 3 movies after skipping the first 2 rows.

        SELECT * FROM movies
        LIMIT 3 OFFEST 2;
        -- Explanation: This query selects all columns from the 'movies' table, limits the output to three records, and skips the first two records. The 'LIMIT' clause specifies that only three records should be returned, while the 'OFFSET' clause tells the database to skip the first two records in the result set before starting to return records.   


        -- Level 2 — Intermediate Practice

    -- 15. Show movie title and length, sorted by shortest movie first.

        SELECT title, length_minutes
        FROM movies
        ORDER BY lenth_minutes ASC;
        -- Explanation: This query selects the 'title' and 'length_minutes' columns from the 'movies' table and orders the results by the 'length_minutes' column in ascending order, which means it will display the movies starting from the shortest duration to the longest. The 'ORDER BY' clause is used to sort the results based on the length of the movies.   

    -- 16. Show movie title and length, sorted by longest movie first.

        SELECT title, length_minutes
        FROM movies
        ORDER BY length_minutes DESC;
        -- Explanation: This query selects the 'title' and 'length_minutes' columns from the    'movies' table and orders the results by the 'length_minutes' column in descending order, which means it will display the movies starting from the longest duration to the shortest. The 'ORDER BY' clause is used to sort the results based on the length of the movies.   

    -- 17. Show the 4 newest movies.

        SELECT * FROM movies
        ORDER BY year DESC
        LIMIT 4;
        -- Explanation: This query selects all columns from the 'movies' table, orders the results by the 'year' column in descending order (newest to oldest), and limits the output to the first four records. The 'ORDER BY' clause sorts the results based on the release year, and the 'LIMIT' clause restricts the number of records returned to four.    

    -- 18. Show unique years in which movies were released.

        SELECT DISTINCT year 
        FROM movies;
        -- Explanation: This query selects the unique values from the 'year' column in the 'movies' table. The 'DISTINCT' keyword ensures that duplicate years are not included in the results, so it will return a list of all unique years in which movies were released. 
        
    -- 19. Show movies sorted by director name alphabetically.

        SELECT * FROM movies
        ORDER BY director ASC;
        -- Explanation: This query selects all columns from the 'movies' table and orders the results  by the 'director' column in ascending alphabetical order. The 'ORDER BY' clause is used to sort the results based on the director's name.   

    -- 20. Show the 5 oldest movies.

        SELECT * FROM movies
        ORDER BY year ASC
        LIMIT 5;
        -- Explanation: This query selects all columns from the 'movies' table, orders the results by the 'year' column in ascending order (oldest to newest), and limits the output to the first five records. The 'ORDER BY' clause sorts the results based on the release year, and the 'LIMIT' clause restricts the number of records returned to five. 

    -- 21. Skip first 5 movies and show next 5.

        SELECT * FROM movies
        ORDER BY year ASC
        LIMIT 5 OFFEST 5;
        -- Explanation: This query selects all columns from the 'movies' table, orders the results by the 'year' column in ascending order (oldest to newest), limits the output to five records, and skips the first five records. The 'ORDER BY' clause sorts the results based on the release year, the 'LIMIT' clause restricts the number of records returned to five, and the 'OFFSET' clause tells the database to skip the first five records in the sorted list before starting to return records. 
        

        -- Level 3 — Combining Concepts

      --22.Show unique directors sorted alphabetically.


        SELECT DISTINCT director
        FROM movies
        ORDER BY director ASC;
        -- Explanation: This query selects the unique directors from the 'movies' table and orders them in ascending alphabetical order. The 'DISTINCT' keyword is used to ensure that duplicate director names are not included in the results, and the 'ORDER BY' clause sorts the results alphabetically.    

    --23. Show movie title and year for movies after 2005, sorted newest first.

        SELECT title, year FROM movies
        WHERE year > 2005
        ORDER BY year DESC;
        -- Explanation: This query selects the 'title' and 'year' columns from the 'movies' table, filters the results to include only movies released after 2005 using the 'WHERE' clause, and orders the results by the 'year' column in descending order (newest to oldest). The 'WHERE' clause ensures that only movies released after 2005 are included in the results, and the 'ORDER BY' clause sorts them by their release year.    

    -- 24. Show the 3 shortest movies.

        SELECT title, length_minutes
        FROM movies
        ODER BY length_minutes ASC
        LIMIT 3;
        -- Explanation: This query selects the 'title' and 'length_minutes' columns from the 'movies' table, orders the results by the 'length_minutes' column in ascending order (shortest to longest), and limits the output to the first three records. The 'ORDER BY' clause is used to sort the results based on the length of the movies, and the 'LIMIT' clause restricts the number of records returned to three.   
        
    -- 25. Show the 2 longest movies released after 2000.

        SELECT title, length_minutes 
        FROM movies
        WHERE year > 2000
        ORDER BY length_minutes DESC;
        -- Explanation: This query selects the 'title' and 'length_minutes' columns from the 'movies' table, filters the results to include only movies released after 2000 using the 'WHERE' clause, orders the results by the 'length_minutes' column in descending order (longest to shortest), and limits the output to the first two records. The 'WHERE' clause ensures that only movies released after 2000 are included in the results, the 'ORDER BY' clause sorts them by their length, and the 'LIMIT' clause restricts the number of records returned to two.   

    -- 26. Show titles alphabetically, but skip first 3 movies and display next 4.

        SELECT title 
        FROM movies
        ORDER BY title ASC
        MINIT 4 OFFSET 3;
        -- Explanation: This query selects the 'title' column from the 'movies' table, orders the results alphabetically by the 'title' column in ascending order, limits the output to four records, and skips the first three records. The 'ORDER BY' clause sorts the results based on the movie titles, the 'LIMIT' clause restricts the number of records returned to four, and the 'OFFSET' clause tells the database to skip the first three records in the sorted list before starting to return records.   
        

        -- Challenge Questions

        -- 27. Show unique directors of movies released after 2000.
            
            SELECT DISTINCT director
            FROM movies
            WHERE year  > 2000;
        -- Explanation: This query selects the unique directors from the 'movies' table, filters the results to include only movies released after 2000 using the 'WHERE' clause, and returns a list of unique directors. The 'DISTINCT' keyword ensures that duplicate director names are not included in the results, and the 'WHERE' clause ensures that only movies released after 2000 are considered when determining the unique directors.


        -- 28. Show movie title, year, and length sorted:

        --     by year descending
        --     then by title ascending

            SELECT title, year, length_minutes
            FROM movies
            ORDER BY year DESC, title ASC
            -- Explanation: This query selects the 'title', 'year', and 'length_minutes' columns from the 'movies' table and orders the results first by the 'year' column in descending order (newest to oldest) and then by the 'title' column in ascending order (A to Z) for movies released in the same year. The 'ORDER BY' clause is used to specify multiple sorting criteria, with the primary sort being by year and the secondary sort being by title.                               


        -- 29. Find the newest movie.

        --     (Hint: Use ORDER BY + LIMIT)

            SELECT title, year
            FROM movies
            ORDER BY year DESC
            LIMIT 1;
        -- Explanation: This query selects the 'title' and 'year' columns from the 'movies' table, orders the results by the 'year' column in descending order (newest to oldest), and limits the output to the first record. The 'ORDER BY' clause sorts the results based on the release year, and the 'LIMIT' clause restricts the number of records returned to one, which will be the newest movie in the database.    


        -- 30. Find the oldest movie.

            SELECT title, year
            FROM movies
            ORDER BY year ASC
            LIMIT 1;
        -- Explanation: This query selects the 'title' and 'year' columns from the 'movies' table, orders the results by the 'year' column in ascending order (oldest to newest), and limits the output to the first record. The 'ORDER BY' clause sorts the results based on the release year, and the 'LIMIT' clause restricts the number of records returned to one, which will be the oldest movie in the database. 


        -- 31. Show movies sorted by length:

        --     longest first
        --     only top 5 results

            SELECT title, length_minutes
            FROM movies
            ORDER BY length_minutes DESC
            LIMIT 5;
        -- Explanation: This query selects the 'title' and 'length_minutes' columns from the 'movies' table, orders the results by the 'length_minutes' column in descending order (longest to shortest), and limits the output to the first five records. The 'ORDER BY' clause is used to sort the results based on the length of the movies, and the 'LIMIT' clause restricts the number of records returned to five, which will be the top 5 longest movies in the database.        

-- ##  32. Show:

--         movie title
--         director
--         year

--         Conditions:

--         only movies released after 2000
--         sort by year from newest to oldest
--         show only top 4 movies.

            SELECT title, director, year
            FROM movies
            WHERE yerar > 2000
            ORDER BY year DESC
            LIMIT 4;
        -- Explanation: This query selects the 'title', 'director', and 'year' columns from the 'movies' table, filters the results to include only movies released after 2000 using the 'WHERE' clause, orders the results by the 'year' column in descending order (newest to oldest), and limits the output to the first four records. The 'WHERE' clause ensures that only movies released after 2000 are included in the results, the 'ORDER BY' clause sorts them by their release year, and the 'LIMIT' clause restricts the number of records returned to four.         
