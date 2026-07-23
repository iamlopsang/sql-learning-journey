-- ##  Exercise 2 — Tasks
-- ##  1.Find the movie with a row id of 6

        SELECT * FROM movies WHERE id = 6;

-- Explanation: This query selects all columns from the 'movies' table where the 'rowid' is equal to 6.
    --  The 'WHERE' clause is used to filter the results based on a specified condition.

-- ##  2.Find the movies released in the year's between 2000 and 2010.

        SELECT * FROM movies 
        WHERE year BETWEEN 2000 AND 2010;

-- Explanation: This query selects all columns from the 'movies' table where the 'year' is between 2000
--  and 2010. The 'BETWEEN' operator is used to filter the results based on a range of values.

-- ##  3.Find the movies not released in the year's 2000 and 2010.

        SELECT * FROM movies 
        WHERE year NOT BETWEEN 2000 AND 2010;

-- Explanation: This query selects all columns from the 'movies' table where the 'year' is not between 
-- 2000 and 2010. The 'NOT BETWEEN' operator is used to filter the results based on a range of values that
--  are excluded.    

-- ##  4. Find the first 5 Pixar movies and their release year.

        SELECT title, year FROM movies
        WHERE id>=5;

-- Explanation: This query displays the titles and release years of movies starting from ID 5.
    
-- ##  5.Find all movies released after the year 2000.

        SELECT * FROM movies
        WHERE year > 2000;

-- Explanation: This query displays all movies released after the year 2000.

-- ##  6.Find all movies directed by John Lasseter.

        SELECT * FROM MOVIES
        WHERE director="John Lasseter";

-- Explanation: This query displays all movies directed by John Lasseter.

-- ##  7.Find all movies with length greater than 100 minutes.

        SELECT * FROM movies
        WHERE length_minutes > 100;

-- Explanation: This query displays all movies that are longer than 100 minutes.

-- ##  8.Find movies that are between 95 and 105 minutes (inclusive).

        SELECT * FROM movies
        WHERE length_minutes BETWEEN 95 AND 105;

-- Explanation: This query displays all movies with a duration between 95 and 105 minutes.

-- ##  9.Find movies directed by Brad Bird OR Andrew Stanton (use IN).

        SELECT * FROM movies
        WHERE director IN ("Brad Bird", "Andrew Stanton");

-- Explanation: This query displays all movies directed by Brad Bird or Andrew Stanton.

-- ##  10.Find movies whose title contains "Toy" (use LIKE — covered in a later lesson, but you can try).

        SELECT *FROM movies
        WHERE title  LIKE "%Toy%";

-- Explanation: This query displays all movies with "Toy" anywhere in the title.