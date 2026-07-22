-- ## Exercises of SQL Lesson 4: Filtering and sorting Query results.

    -- 1.List all directors of Pixar movies (alphabetically), without duplicates.

        SELECT DISTINCT DIRECTOR fROM MOVIES
        ORDER BY director ASC;

-- Explanation: This query displays each director only once from the movies table and sorts the names in
--  alphabetical order. 

    -- 2. List the last four Pixar movies released (ordered from most recent to least).

        SELECT * FROM movies
        OREDER BY year DESC
        LIMIT 4;
        
-- Explanation: This query displays all columns from the 'movies' table, sorts the movies by release
--  year from newest to oldest, and shows only the first 4 records.

    -- 3. List the first five Pixar movies sorted alphabetically.

        SELECT * FROM movies
        ORDER BY title ASC
        LIMIT 5;

-- Explanation: This query displays all columns from the 'movies' table, sorts the movies by title
--  in alphabetical order, and shows only the first 5 records.

    -- 4. List all Pixar movies released in the 1990s, sorted by release date (oldest to newest).

        SELECT * FROM movies
        WHERE year >=1990 AND year <2000
        ORDER BY year ASC;
        
-- Explanation: This query displays all movies released between 1990 and 1999 and sorts them by 
--  release year from oldest to newest.

    -- 5. List the next five Pixar movies sorted alphabetically.

        SELECT * FROM movies
        ORDER BY title ASC
        LIMIT 5 OFFSET 5;
       
-- Explanation: This query sorts the movies by title, skips the first 5 records, and displays 
-- the next 5 records.    
   
    -- 6. List all Pixar movies released in the 2000s, sorted by release date (oldest to newest).

        SELECT * FROM movies
        WHERE year >= 2000 AND year < 2013
        ORDER BY  year ASC;

-- Explanation: This query displays all movies released between 2000 and 2012 and sorts them by release
--  year from oldest to newest.

            -- Level 1 — Basic Understanding

    -- 7. Show all movie titles only.

        SELECT title 
        FROM movies;

-- Explanation: This query displays the titles of all movies from the 'movies' table.

    -- 8. Show all unique directors.

        SELECT DISTINCT director
        FROM movies;
        
-- Explanation: This query displays each director only once from the 'movies' table.

    -- 9. Show movie titles sorted alphabetically.

        SELECT title
        FROM movies
        ORDER BY year ASC;

-- Explanation: This query selects all movie titles and sorts them from the oldest year to the newest.

    -- 10. Show movie titles sorted reverse alphabetically.

        SELECT title
        FROM movies
        ORDER BY year DESC;

-- Explanation: This query selects all movie titles and sorts them from the newest year to the oldest.

    -- 11. Show all movies from oldest to newest.

        SELECT * FROM movies
        ORDER BY year ASC;

-- Explanation: This query displays all movies and sorts them by release year from oldest to newest.

    -- 12. Show all movies from newest to oldest.

        SELECT * FROM movies
        ORDER BY year DESC;

-- Explanation: This query displays all movies and sorts them by release year from newest to oldest.

    -- 13. Show only the first 5 movies.

        SELECT * FROM movies
        LIMIT 5;

-- Explanation: This query displays the first 5 records from the 'movies' table.        

    -- 14. Show 3 movies after skipping the first 2 rows.

        SELECT * FROM movies
        LIMIT 3 OFFSET 2;

-- Explanation: This query skips the first 2 records and displays the next 3 records from the 'movies' table.

        -- Level 2 — Intermediate Practice

    -- 15. Show movie title and length, sorted by shortest movie first.

        SELECT title, length_minutes
        FROM movies
        ORDER BY length_minutes ASC;

-- Explanation: This query displays movie titles and their durations, sorted from shortest to longest.

    -- 16. Show movie title and length, sorted by longest movie first.

        SELECT title, length_minutes
        FROM movies
        ORDER BY length_minutes DESC;

-- Explanation: This query displays movie titles and their durations, sorted from longest to shortest.

    -- 17. Show the 4 newest movies.

        SELECT * FROM movies
        ORDER BY year DESC
        LIMIT 4;

-- Explanation: This query displays the 4 newest movies from the 'movies' table by sorting 
-- them from newest to oldest.

    -- 18. Show unique years in which movies were released.

        SELECT DISTINCT year 
        FROM movies;

-- Explanation: This query displays each movie release year only once from the 'movies' table.

    -- 19. Show movies sorted by director name alphabetically.

        SELECT * FROM movies
        ORDER BY director ASC;

-- Explanation: This query displays all movies and sorts them by director name in alphabetical order.

    -- 20. Show the 5 oldest movies.

        SELECT * FROM movies
        ORDER BY year ASC
        LIMIT 5;

-- Explanation: This query displays the first 5 movies sorted by release year from oldest to newest.

    -- 21. Skip first 5 movies and show next 5.

        SELECT * FROM movies
        ORDER BY year ASC
        LIMIT 5 OFFSET 5;

-- Explanation: This query sorts movies by release year, skips the first 5 records, and displays 
-- the next 5 records.

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
        ORDER BY length_minutes ASC
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
        LIMIT 4 OFFSET 3;
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
