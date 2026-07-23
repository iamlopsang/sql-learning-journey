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

-- Explanation: This query displays each director only once and sorts the names in alphabetical order.

    --23. Show movie title and year for movies after 2005, sorted newest first.

        SELECT title, year FROM movies
        WHERE year > 2005
        ORDER BY year DESC;

-- Explanation: This query displays movie titles and release years for movies after 2005, sorted from 
-- newest to oldest.

    -- 24. Show the 3 shortest movies.

        SELECT title, length_minutes
        FROM movies
        ORDER BY length_minutes ASC
        LIMIT 3;

-- Explanation: This query displays the 3 shortest movies with their titles and durations.    
        
    -- 25. Show the 2 longest movies released after 2000.

        SELECT title, length_minutes 
        FROM movies
        WHERE year > 2000
        ORDER BY length_minutes DESC;
        LIMIT 2;

-- Explanation: This query displays the 2 longest movies released after 2000 with their titles and durations.

    -- 26. Show titles alphabetically, but skip first 3 movies and display next 4.

        SELECT title 
        FROM movies
        ORDER BY title ASC
        LIMIT 4 OFFSET 3;
        
-- Explanation: This query sorts movie titles alphabetically, skips the first 3 records, and displays
    --  the next 4 titles.

        -- Challenge Questions

        -- 27. Show unique directors of movies released after 2000.
            
            SELECT DISTINCT director
            FROM movies
            WHERE year  > 2000;

-- Explanation: This query displays unique directors of movies released after 2000.       

        -- 28. Show movie title, year, and length sorted:

        --     by year descending
        --     then by title ascending

            SELECT title, year, length_minutes
            FROM movies
            ORDER BY year DESC, title ASC

-- Explanation: This query displays movie titles, years, and durations, sorted by newest 
-- year first and then title alphabetically.

        -- 29. Find the newest movie.

        --     (Hint: Use ORDER BY + LIMIT)

            SELECT title, year
            FROM movies
            ORDER BY year DESC
            LIMIT 1;

-- Explanation: This query finds and displays the latest released movie by sorting years from newest
--  to oldest and showing the first record.

        -- 30. Find the oldest movie.

            SELECT title, year
            FROM movies
            ORDER BY year ASC
            LIMIT 1;

-- Explanation: This query finds and displays the oldest movie by sorting years from oldest to 
-- newest and showing the first record. 


        -- 31. Show movies sorted by length:

        --     longest first
        --     only top 5 results

            SELECT title, length_minutes
            FROM movies
            ORDER BY length_minutes DESC
            LIMIT 5;

-- Explanation: This query displays the top 5 longest movies with their titles and durations,
-- sorted from longest to shortest.              

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
            WHERE year > 2000
            ORDER BY year DESC
            LIMIT 4;

-- Explanation: This query displays the top 4 newest movies released after 2000 with
-- their titles, directors, and release years.