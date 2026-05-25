## SQL Lesson 4: Filtering and Sorting Query Results.

    ## Introduction:

        This lesson focuses on organizing  and refining query results  using SQL filtering and sorting techniques.
        These queries help retrieve data in a more meaningful and readable  way by:

        > removing duplicate values,
        > sorting records,
        > limiting returned rows,
        > and skipping unnecessary records.

        This is very useful when working with large databases where thousands of rows may exist.

    ## SQL Clauses Used in This Lesson:

        > DISTINCT Keyword:

            | Keyword    | Meaning                  |
            | ---------- | ------------------------ |
            | `DISTINCT` | Removes duplicate values |

        > Sorting Clauses:

            | Clause     | Meaning             |
            | ---------- | ------------------- |
            | `ORDER BY` | Sorts query results |
            | `ASC`      | Ascending order     |
            | `DESC`     | Descending order    |

        > Result Limiting Clauses:

            | Clause   | Meaning                              |
            | -------- | ------------------------------------ |
            | `LIMIT`  | Restricts number of rows             |
            | `OFFSET` | Skips rows before displaying results |


    ## Table Overview 

    Table Name: movies
    Columns include:
        > title
        > director
        > year
        > length_minutes

    The table is shown below, and the queries of select.sql file are solved based on this dataset.

    Table:movies

        ---------------------------------------------------------------------
        | id | title               | director       | year | length_minutes |
        |----|---------------------|----------------|------|----------------|
        | 1  | Toy Story           | John Lasseter  | 1995 | 81             |
        | 2  | A Bug's Life        | John Lasseter  | 1998 | 95             |
        | 3  | Toy Story 2         | John Lasseter  | 1999 | 93             |
        | 4  | Monsters, Inc.      | Pete Docter    | 2001 | 92             |
        | 5  | Finding Nemo        | Andrew Stanton | 2003 | 107            |
        | 6  | The Incredibles     | Brad Bird      | 2004 | 116            |
        | 7  | Cars                | John Lasseter  | 2006 | 117            |
        | 8  | Ratatouille         | Brad Bird      | 2007 | 115            |
        | 9  | WALL-E              | Andrew Stanton | 2008 | 104            |
        | 10 | Up                  | Pete Docter    | 2009 | 101            |
        | 11 | Toy Story 3         | Lee Unkrich    | 2010 | 103            |
        | 12 | Cars 2              | John Lasseter  | 2011 | 120            |
        | 13 | Brave               | Brenda Chapman | 2012 | 102            |
        | 14 | Monsters University | Dan Scanlon    | 2013 | 110            |
        ---------------------------------------------------------------------

    ##  Queries and Solutions

    All queries are written in:
        📄 filtering-and-sorting.sql

    Example Queries:

     1.List all directors of Pixar movies (alphabetically), without duplicates.

        SELECT DISTINCT DIRECTOR fROM MOVIES
        ORDER BY director ASC;

        Explanation: This query selects the unique directors from the 'movies' table and orders them in ascending alphabetical order. The 'DISTINCT' keyword is used to ensure that duplicate director names are not included in the results, and the 'ORDER BY' clause sorts the results alphabetically.   

     2. List the last four Pixar movies released (ordered from most recent to least).

        SELECT * FROM movies
        OREDER BY year DESC
        LIMIT 4;
        
         Explanation: This query selects all columns from the 'movies' table, orders the results by the 'year' column in descending order (most recent to least), and limits the output to the first four records. The 'ORDER BY' clause sorts the results based on the release year, and the 'LIMIT' clause restricts the number of records returned to four.   


##  What I Learned?

    > How to remove duplicate results using "DISTINCT".
    > How to sort data using "ORDER BY".
    > Difference between "ASC" and "DESC".
    > How to limit query results using "LIMIT".
    > How to skip rows using "OFFSET".
    > How to combine sorting and filtering together.
    > How to write cleaner and more efficient SQL queries.

##  Skills Covered:

    > DISTINCT
    > ORDER BY
    > ASC / DESC
    > LIMIT
    > OFFSET
    > Filtering and Sorting query results
    > SQL result optimization

##  Cheat codes and better understanding:

    ##  Quick understanding of ASC and DESC

        > ASC (Ascending):

            A → Z
            0 → 9
            Old → New
            Small → Large

        Used for:

        > alphabetical sorting,
        > oldest records,
        > shortest values,
        > smallest numbers.

        > DESC (Descending):

            Z → A
            9 → 0
            New → Old
            Large → Small

        Used for:

        > newest records,
        > highest values,
        > longest movies,
        > reverse alphabetical sorting.

##  Goal:
    
    To strengthen SQL querying skills by practicing filtering, sorting, limitng, and organzing query results using real-world movie databases examples.


