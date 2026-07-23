--   ## Exercises of SQL Lesson 3: Queries with constraints (Pt. 2)
  
    -- 1.Find all the Toy Story movies.
       
        SELECT * FROM movies 
        WHERE title LIKE "Toy Story%";
        
-- Explanation: This query displays all movies whose titles start with "Toy Story".

    -- 2.Find all the movies directed by John Lasseter.
       
        SELECT * FROM movies 
        WHERE director = "John Lasseter";
                
-- Explanation: This query displays all movies directed by John Lasseter.

    -- 3.Find all the movies (and director) not directed by John Lasseter.

        SELECT title, director FROM movies
        WHERE director !="John Lasseter";
        
-- Explanation: This query displays movie titles and directors, excluding movies directed by John Lasseter.        

    -- 4.Find all the WALL-* movies.

        SELECT * FROM movies
        WHERE title LIKE "%WALL-%";
        
-- Explanation: This query displays all movies with "WALL-" anywhere in the title.

        -- Summary of LIKE operators:
        -- LIKE "Text%" = Starts with...
        -- LIKE "%Text%" = Contains...

        -- 5.Find all movies directed by Brad Bird.

        SELECT title FROM movies
        WHERE director="Brad Bird";
    
-- Explanation: This query displays the titles of movies directed by Brad Bird.

    -- 6. Find all movies with “Toy” in the title.

        SELECT * FROM movies
        WHERE title LIKE "%Toy%";
        
-- Explanation: This query displays all movies with "Toy" anywhere in the title.

    --    7.Find all movies NOT directed by John Lasseter.

        SELECT *FROM movies
        WHERE director !="John Lasseter";
      
-- Explanation: This query displays all movies not directed by John Lasseter.

    --   8.Find movies released in 1995, 1999, and 2010.

        SELEECT * FROM movies
        WHERE year IN(1995,1999,2010);
        
-- Explanation: This query displays all movies released in 1995, 1999, or 2010.

    --   9.Find movies released after 2005 AND longer than 100 minutes.

        SELECT * FROM movies
        WHERE year > 2005 AND length_minutes > 100;

-- Explanation: This query displays movies released after 2005 that are longer than 100 minutes.       
        
  -- 10. Find movies directed by Pete Docter OR Andrew Stanton.

        SELECT * FROM movies
        WHERE dorector="Pete Docter" OR director="Andrew Stanton";
        
-- Explanation: This query displays all movies directed by Pete Docter or Andrew Stanton.

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
