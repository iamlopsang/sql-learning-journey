##  Exercise 2 — Tasks
##  1.Find the movie with a row id of 6

        SELECT * FROM movies WHERE rowid = 6;
    -- Explanation: This query selects all columns from the 'movies' table where the 'rowid' is equal to 6. The 'WHERE' clause is used to filter the results based on a specified condition.

##  2.Find the movies released in the year's between 2000 and 2010.

        SELECT * FROM movies 
        WHERE year BETWEEN 2000 AND 2010;
    -- Explanation: This query selects all columns from the 'movies' table where the 'year' is between 2000 and 2010. The 'BETWEEN' operator is used to filter the results based on a range of values.

##  3.Find the movies not released in the year's 2000 and 2010.

        SELECT * FROM movies 
        WHERE year NOT BETWEEN 2000 AND 2010;
    -- Explanation: This query selects all columns from the 'movies' table where the 'year' is not between 2000 and 2010. The 'NOT BETWEEN' operator is used to filter the results based on a range of values that are excluded.    

##  4. Find the first 5 Pixar movies and their release year.

        SELECT title, year FROM movies
        WHERE id>=5;
    -- Explanation: This query selects the 'title' and 'year' columns from the 'movies' table where the 'id' is greater than or equal to 5. This assumes that the first 5 Pixar movies have IDs from 1 to 5, so starting from ID 5 will give us the first 5 movies.

    
##  5.Find all movies released after the year 2000.

        SELECT * FROM movies
        WHERE year > 2000;
    -- Explanation: This query selects all columns from the 'movies' table where the 'year' is greater than 2000. The '>' operator is used to filter the results based on a condition that specifies that the year must be greater than 2000.


##  6.Find all movies directed by John Lasseter.

        SELECT * FROM MOVIES
        WHERE director="John Lasseter";
    -- Explanation: This query selects all columns from the 'movies' table where the 'director' is equal to "John Lasseter". The '=' operator is used to filter the results based on a specific value in the 'director' column.

##  7.Find all movies with length greater than 100 minutes.

        SELECT * FROM movies
        WHERE length_minutes > 100;
    -- Explanation: This query selects all columns from the 'movies' table where the 'length_minutes' is greater than 100. The '>' operator is used to filter the results based on a condition that specifies that the length of the movie must be greater than 100 minutes.


##  8.Find movies that are between 95 and 105 minutes (inclusive).

        SELECT * FROM movies
        WHERE length_minutes BETWEEN 95 AND 105;
    -- Explanation: This query selects all columns from the 'movies' table where the 'length_minutes' is between 95 and 105, inclusive. The 'BETWEEN' operator is used to filter the results based on a range of values, and it includes the boundary values (95 and 105) in the results.


##  9.Find movies directed by Brad Bird OR Andrew Stanton (use IN).

        SELECT * FROM movies
        WHERE director IN ("Brad Bird", "Andrew Stanton");
    -- Explanation: This query selects all columns from the 'movies' table where the 'director' is either "Brad Bird" or "Andrew Stanton". The 'IN' operator is used to filter the results based on a list of specified values in the 'director' column.


##  10.Find movies whose title contains "Toy" (use LIKE — covered in a later lesson, but you can try).

        SELECT *FROM movies
        WHERE title  LIKE "%Toy%";
    -- Explanation: This query selects all columns from the 'movies' table where the 'title
