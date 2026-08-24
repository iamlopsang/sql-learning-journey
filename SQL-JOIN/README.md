##  SQL Lesson :INNER JOIN
 
    This exercise focuses on using SQL INNER JOIN to combine related data from two tables: movies and boxoffice.

    Instead of working with information from only one table, INNER JOIN allows us to connect related records from multiple tables using matching values.

    This lesson also practices table aliases, filtering with WHERE, sorting with ORDER BY, claculations, TOP, BETWEEN, and IN.

##   Introduction to INNER JOIN:
     
     INNER JOIN is used to combine rows from two tables when there is a matching value between them.

     It is useful when the information we need is stored in different tables.

##   Why is INNER JOIN necessary?

     The 'movies' table contains information such as:

        > title
        > director
        > year
        > length_minutes

      The 'boxoffice' table contains:

        > rating
        > domestic_sales
        > international_sales

      If we want to display something like:

        Movie Tile + Rating  

      we need information from both tables.
      Therefore, we use INNER JOIN to connect the two tables.

##    How does INNER JOIN work?

      The two tables are connected through related columns:

        movies                         boxoffice
        --------                       ----------------
        id        ←────────────────→   movie_id
        title                          rating
        director                       domestic_sales
        year                           international_sales  
        
       Even though the column names are different, they contain related values.

       For example:
                movies.id = 1
                boxoffice.movie_id = 1
        
        These records belong to the same movie.
        Therefore, we use:
                on movies.id = boxoffice.movie_id

        Basic Syntax:
           SQL:-
             SELECT column_name
             FROM table1
             INNER JOIN table2
             ON table1.common_column = table2.related_column;

          Example:
            SQL:-
              SELECT movies.title, boxoffice.rating
              FROM movies
              INNER JOIN boxoffice
              ON movies.id = boxoffice.movie_id;

            Explanation: This query joins the 'movies' and 'boxoffice' tables using their related movie IDs and displays each movie's title and rating.

    ## TABLE ALIASES :

        Table aliases give tables shorter names, making queries easier to write and read.

          For example:
            SQL:-

              FROM movies AS m
              INNER JOIN boxoffice AS b 
              ON m.id = b.movie_id;

            Here:

              m -> movies
              b -> boxoffice

            So, instead of writing:

                movies.title
                boxoffice.rating 

            we can write:

                 m.title
                 b.rating

          For example:
              SQL:-

                SELECT m.title, b.rating
                FROM movies AS m
                INNER JOIN boxoffice as b
                ON m.id = b.movie_id;

    ##  Important INNER JOIN Concept:

          The columns used in the 'ON' condition "do not have to have the same name".

          For these tables:
            SQL:-
              ON m.id = b.movie_id

              is correct because movies.id and boxoffice.movie_id contain the related movie IDs.
              The important thing is that the values are related, not the column names are identical.

        ## INNER JOIN with WHERE:
            
            INNER JOIN can be combined with WHERE to filter the joined results.

            Example:
              SQL:-

                SELECT m.title, b.rating
                FROM movies AS m
                INNER JOIN boxoffice AS b
                ON m.id = b.movie_id
                WHERE b.rating >= 8.0;

            Explanation: This query joins both tables and displays only movies with a rating of 8.0 or higher.

        ##  INNER JOIN with ORDER BY:

            ORDER BY can be used to sort the joined results.

            Example:
              SQL:-

                SELECT m.title, b.rating
                FROM movies AS m
                INNER JOIN boxoffice AS b
                ON m.id = b.movie_id
                ORDER BY b.rating DESC;

            Explanation: This query joins both tables and sorts the movies from the highest rating to the lowest.

            ASC -> Lowest to Highest
            DESC -> Highest to Lowest

         
        
         

        


       
        | Table: movies (Read-only) |
        |---------------------------|
        | id                        | title               | director       | year | length_minutes |
        | 1                         | Toy Story           | John Lasseter  | 1995 | 81             |
        | 2                         | A Bug's Life        | John Lasseter  | 1998 | 95             |
        | 3                         | Toy Story 2         | John Lasseter  | 1999 | 93             |
        | 4                         | Monsters, Inc.      | Pete Docter    | 2001 | 92             |
        | 5                         | Finding Nemo        | Andrew Stanton | 2003 | 107            |
        | 6                         | The Incredibles     | Brad Bird      | 2004 | 116            |
        | 7                         | Cars                | John Lasseter  | 2006 | 117            |
        | 8                         | Ratatouille         | Brad Bird      | 2007 | 115            |
        | 9                         | WALL-E              | Andrew Stanton | 2008 | 104            |
        | 10                        | Up                  | Pete Docter    | 2009 | 101            |
        | 11                        | Toy Story 3         | Lee Unkrich    | 2010 | 103            |
        | 12                        | Cars 2              | John Lasseter  | 2011 | 120            |
        | 13                        | Brave               | Brenda Chapman | 2012 | 102            |
        | 14                        | Monsters University | Dan Scanlon    | 2013 | 110            |



        | Table: boxoffice (Read-only) |
        |------------------------------|
        | movie_id                     | rating | domestic_sales | international_sales |
        | 5                            | 8.2    | 380843261      | 555900000           |
        | 14                           | 7.4    | 268492764      | 475066843           |
        | 8                            | 8      | 206445654      | 417277164           |
        | 12                           | 6.4    | 191452396      | 368400000           |
        | 3                            | 7.9    | 245852179      | 239163000           |
        | 6                            | 8      | 261441092      | 370001000           |
        | 9                            | 8.5    | 223808164      | 297503696           |
        | 11                           | 8.4    | 415004880      | 648167031           |
        | 1                            | 8.3    | 191796233      | 170162503           |
        | 7                            | 7.2    | 244082982      | 217900167           |
        | 10                           | 8.3    | 293004164      | 438338580           |
        | 4                            | 8.1    | 289916256      | 272900000           |
        | 2                            | 7.2    | 162798565      | 200600000           |
        | 13                           | 7.2    | 237283207      | 301700000           |


        | Query results |
        |---------------|
        | id            | title           | director       | year | length_minutes |
        | 1             | Toy Story       | John Lasseter  | 1995 | 81             |
        | 2             | A Bug's Life    | John Lasseter  | 1998 | 95             |
        | 3             | Toy Story 2     | John Lasseter  | 1999 | 93             |
        | 4             | Monsters, Inc.  | Pete Docter    | 2001 | 92             |
        | 5             | Finding Nemo    | Andrew Stanton | 2003 | 107            |
        | 6             | The Incredibles | Brad Bird      | 2004 | 116            |
        | 7             | Cars            | John Lasseter  | 2006 | 117            |
        | 8             | Ratatouille     | Brad Bird      | 2007 | 115            |
        | 9             | WALL-E          | Andrew Stanton | 2008 | 104            |
        | 10            | Up              | Pete Docter    | 2009 | 101            |

