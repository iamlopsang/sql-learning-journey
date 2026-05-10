--   ## Exercises of SQL Lesson 3: Queries with constraints (Pt. 2)
  
    -- 1.Find all the Toy Story movies.
       
        SELECT * FROM movies 
        WHERE title LIKE "Toy Story%";
        -- Explanation: This query selects all columns from the 'movies' table where the 'title' starts with "Toy Story". The 'LIKE' operator is used to filter the results based on a specified pattern, and the '%' wildcard character allows for any characters to follow "Toy Story" in the title.

    -- 2.Find all the movies directed by John Lasseter.
       
        SELECT * FROM movies 
        WHERE director = "John Lasseter";
        -- Explanation: This query selects all columns from the 'movies' table where the 'director' is equal to "John Lasseter". The '=' operator is used to filter the results based on a specific value in the 'director' column.


    -- 3.Find all the movies (and director) not directed by John Lasseter.

        SELECT title, director FROM movies
        WHERE director !="John Lasseter";
        -- Explanation: This query selects the 'title' and 'director' columns from the 'movies' table where the 'director' is not equal to "John Lasseter". The '!=' operator is used to filter the results based on a specific value in the 'director' column that should be excluded.

    -- 4.Find all the WALL-* movies.

        SELECT * FROM movies
        WHERE title LIKE "%WALL-%";
        -- Explanation: This query selects all columns from the 'movies' table where the 'title' contains "WALL-". The 'LIKE' operator is used to filter the results based on a specified pattern, and the '%' wildcard character allows for any characters to precede or follow "WALL-" in the title.

        -- Summary of LIKE operators:
        -- LIKE "Text%" = Starts with...
        -- LIKE "%Text%" = Contains...