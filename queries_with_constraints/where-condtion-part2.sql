--   ## Exercises of SQL Lesson 3: Queries with constraints (Pt. 2)
  
    -- 1.Find all the Toy Story movies.
       
        SELECT * FROM movies 
        WHERE title LIKE "Toy Story%";
        -- Explanation: This query selects all columns from the 'movies' table where the 'title'
         starts with "Toy Story". The 'LIKE' operator is used to filter the results based on a 
         specified pattern, and the '%' wildcard character allows for any characters to follow 
         "Toy Story" in the title.

    -- 2.Find all the movies directed by John Lasseter.
       
        SELECT * FROM movies 
        WHERE director = "John Lasseter";
        -- Explanation: This query selects all columns from the 'movies' table where the 'director' 
        is equal to "John Lasseter". The '=' operator is used to filter the results based on a specific
         value in the 'director' column.


    -- 3.Find all the movies (and director) not directed by John Lasseter.

        SELECT title, director FROM movies
        WHERE director !="John Lasseter";
        -- Explanation: This query selects the 'title' and 'director' columns from the 'movies' table where the 'director' is not equal to "John Lasseter". The '!=' operator is used to filter the results based on a specific value in the 'director' column that should be excluded.

    -- 4.Find all the WALL-* movies.

        SELECT * FROM movies
        WHERE title LIKE "%WALL-%";
        -- Explanation: This query selects all columns from the 'movies' table where the 'title'
         contains "WALL-". The 'LIKE' operator is used to filter the results based on a specified 
         pattern, and the '%' wildcard character allows for any characters to precede or follow 
         "WALL-" in the title.

        -- Summary of LIKE operators:
        -- LIKE "Text%" = Starts with...
        -- LIKE "%Text%" = Contains...

        -- 5.Find all movies directed by Brad Bird.

        SELECT title FROM movies
        WHERE director="Brad Bird";
    -- Explanation: This query selects the 'title' column from the 'movies' table where the 
    'director' is equal to "Brad Bird". The '=' operator is used to filter the results based on
     a specific value in the 'director' column.

    -- 6. Find all movies with “Toy” in the title.

        SELECT * FROM movies
        WHERE title LIKE "%Toy%";
        -- Explanation: This query selects all columns from the 'movies' table where the 'title' 
        contains "Toy". The 'LIKE' operator is used to filter the results based on a specified pattern,
         and the '%' wildcard character allows for any characters to precede or follow "Toy"
          in the title.
        
    --    7.Find all movies NOT directed by John Lasseter.

        SELECT *FROM movies
        WHERE director !="John Lasseter";
        -- Explanation: This query selects all columns from the 'movies' table where the 'director' is 
        not equal to "John Lasseter". The '!=' operator is used to filter the results based on a 
        specific value in the 'director' column that should be excluded.


    --   8.Find movies released in 1995, 1999, and 2010.

        SELEECT * FROM movies
        WHERE year IN(1995,1999,2010);
        -- Explanation: This query selects all columns from the 'movies' table where the 'year' 
        is either 1995, 1999, or 2010. The 'IN' operator is used to filter the results based on a
         list of specified values in the 'year' column.

    --   9.Find movies released after 2005 AND longer than 100 minutes.

        SELECT * FROM movies
        WHERE year > 2005 AND length_minutes > 100;
        -- Explanation: This query selects all columns from the 'movies' table where the 'year' 
        is greater than 2005 and the 'length_minutes' is greater than 100. The 'AND' operator is 
        used to filter the results based on multiple conditions that must both be true for a movie 
        to be included in the results.
        
  -- 10. Find movies directed by Pete Docter OR Andrew Stanton.

        SELECT * FROM movies
        WHERE dorector="Pete Docter" OR director="Andrew Stanton";
        -- Explanation: This query selects all columns from the 'movies' table where the 'director'
         is either "Pete Docter" or "Andrew Stanton". The 'OR' operator is used to filter the results 
         based on multiple conditions where at least one condition must be true for a movie to be 
         included in the results.

   -- 11. Find movies whose titles start with “Cars”.

        SELECT * FROM movies
        WHERE title LIKE "%Cars%";

-- Explanation: This query displays all movies with "Cars" anywhere in the title.         

   -- 12. Find movies whose titles end with “Story”.

        SELECT * FROM movies
        WHERE title LIKE "Story%";

-- Explanation: This query displays all movies whose titles end with "Story".         

    --  13.Find movies NOT directed by Brad Bird or Pete Docter.

        SELECT * FROM movies
        WHERE director !="Brad Bird" AND director !="Pete Docter";
        
-- Explanation: This query displays all movies not directed by Brad Bird or Pete Docter.

    -- 14.Find movies with “Toy” in the title AND released after 1995.

        SELECT * FROM movies
        WHERE title LIKE "%Toy%" AND year > 1995;

-- Explanation: This query displays movies with "Toy" in the title that were released after 1995. 
        
    -- 15.Find movies released before 2005 OR longer than 110 minutes.

        SELECT * FROM movies
        WHERE year < 2005 or length_minutes > 110;

-- Explanation: This query displays movies released before 2005 or with a duration longer than 110 minutes.

    -- 16.Find movies whose director name starts with “John”.

        SELECT * FROM movies
        WHERE director LIKE "%John%";

-- Explanation: This query displays all movies directed by someone with "John" in their name.

    -- 17. Find movies whose title contains “Monsters”.

        SELECT * FROM movies
        where tile LIKE "%Monsters%";
           
-- Explanation: This query displays all movies with "Monsters" anywhere in the title.

    -- 18. Find movies released between 2000 and 2010.

        SELECT * FROM movies
        WHERE year BETWEEN 2000 AND 2010;
        
-- Explanation: This query displays all movies released between 2000 and 2010.

    -- 19. Find movies with titles that do NOT contain “Cars”.

        SELECT * FROM movies
        WHERE title NOT LIKE "%Cars%";

-- Explanation: This query displays all movies whose titles do not contain "Cars".   
