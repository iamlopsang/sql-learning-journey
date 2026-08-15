    -- ##  SQL JOIN Exercise: Movie Sales Analysis (INNER JOIN)

    -- a. Find the domestic and international sales for each movie.

    SELECT movies.title, boxoffice.domestic_sales, boxoffice.international_sales
    FROM movies
    INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
    
-- Explanation:Join movies and boxoffice using movie ID to display each movie's title, domestic sales, 
-- and international sales.

    -- b. Show the sales numbers for each movie that did better internationally rather than domestically.

    SELECT movies.title, boxoffice.domestic_sales, boxoffice.international_sales
    FROM movies
    INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
    WHERE boxoffice.international_sales > boxoffice.domestic_sales;

-- Explanation: Join both tables and show movies whose international sales are greater than their
-- domestic sales.

    -- c. List all the movies by their ratings in descending order.