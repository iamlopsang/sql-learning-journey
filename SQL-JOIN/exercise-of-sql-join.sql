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

    SELECT movies.title, boxoffice.rating
    FROM movies
    INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
    ORDER BY boxoffice.rating DESC;

-- Explanation: Join both tables and list all movies with their ratings, starting from the highest-rated
-- movie.

                ----- Level 1: Basic JOIN-----

    -- a. Display the movie title and its rating.

    SELECT m.title, b.rating
    FROM movies AS m
    INNER JOIN boxoffice AS b
    ON m.id = b.movie_id;

-- Explanation: Join movies with boxoffice using their matching IDs to display each movie's title and 
-- rating.

    -- b. Show the title and year of every movie along with its domestic sales.

    SELECT m.title, m.year, b.domestic_sales
    FROM movies AS m
    INNER JOIN boxoffice AS b
    ON m.id = b.movie_id;

-- Explanation: Join both tables using matching movie IDs to display the movie's title, year, and 
-- domestic sales.

    -- c. Display the title, director, and international sales.

    SELECT m.title, m.director, b.international_sales
    FROM movies AS m
    INNER JOIN boxoffice AS b
    ON m.id = b.movie_id;

-- Explanation: Join both tables using matching movie IDs to display the movie's title, director, and
 --international sales. 

            ----- Level 2: Filtering with JOIN-----

    -- a. Find all movies with a rating of 8.0 or higher.

    SELECT m.title, b.rating
    FROM movies AS m
    INNER JOIN boxoffice AS b
    ON m.id = b.movie_id
    WHERE b.rating >= 8.0;

-- Explanation: Join both tables and display movies with a rating of 8.0 or higher.
    
    -- b. Show movies that earned more than 300,000,000 domestically.

    SELECT m.title, b.domestic_sales
    FROM movies AS m
    INNER JOIN boxoffice AS b
    ON m.id = b.movie_id
    WHERE b.domestic_sales > 300000000;

-- Explanation: Join both tables and show movies with domestic sales above 300 million.

    -- c. Display movies directed by John Lasseter with their ratings.

    SELECT m.title, b.rating
    FROM movies AS m
    INNER JOIN boxoffice AS b
    ON m.id = b.movie_id
    WHERE m.director = 'John Lasseter';

-- Explanation: Join both tables and display John Lasseter's movies with their ratings.

            ----- Level 3: Sorting -----

    -- List all movies by international sales from highest to lowest.

    -- Show the top 5 highest-rated movies with their titles.

    -- Level 4: Calculations

    -- Display each movie's total sales (domestic + international) as a new column named Total_Sales.

    -- Hint: Use + and AS.

    -- Find the movie with the highest total sales.

    -- Hint: Combine ORDER BY and TOP.