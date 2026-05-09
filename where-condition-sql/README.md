##  SQL Lesson 2 — Queries with Constraints (Pt. 1)

    > This exercise focuses on using SQL "WHERE" Clauses and Constraints to filter and retrieve specific data from a movies table.
    > Instead of returning every row from a table, constraints help narrow down results based on conditions, making queries more efficient and easier to understand.

##  Introduction to WHERE Clause:

    The WHERE Clause is used in SQL to filter records that match a specific conditon.

    It allows us to:
    > retrieve only the required rows,
    > apply conditions to columns,
    > make queries more efficient.

    BASIC SYNTAX:
        SQL 
            SELECT column_name
            FROM table_name
            WHERE conditon;

    EXAMPLE:
        SELECT title
        FROM movies
        WHERE year > 1995;

    Explanation: this query return the "tiltle" of movies which is produced "year" greater than 1995.

##  SQL operators used in this lesson:

    >>  Comparison operators:
        
        | Operator                  | Meaning                             |
        | ------------------------- | ----------------------------------- |
        | `=`                       | Equal to                            |
        | `!=`                      | Not equal to                        |
        | `>`                       | Greater than                        |
        | `<`                       | Less than                           |
        | `>=`                      | Greater than or equal to            |
        | `<=`                      | Less than or equal to               |
        | `BETWEEN ... AND ...`     | Value is within a range (inclusive) |
        | `NOT BETWEEN ... AND ...` | Value is outside a range            |
        | `IN (...)`                | Value exists in a list              |
        | `NOT IN (...)`            | Value does not exist in a list      |
        | `LIKE`                    | Searches for a pattern in text      |

## Table Overview 

    Table Name: movies
    Columns include:
        > title
        > director
        > year
        > length_minutes

    The table is shown below, and the queries of select.sql file are solved based on this dataset.

    Table:movies

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

##  Queries and solution
    All queries are written in:
    > 📄 where-clause exercise part-1.sql 

        #   Examples:
          1.Find the movie with a row id of 6

            SELECT * FROM movies WHERE id = 6;
            -- Explanation: This query selects all columns from the 'movies' table where the 'rowid' is equal to 6. The 'WHERE' clause is used to filter the results based on a specified condition.

##  What I Learned?
    > How to use the WHERE clause.
    > How to filter rows using conditions.
    > Using BETWEEN, NOT BETWEEN, IN, and LIKE.
    > Working with comparison operators.

##  Skilled Covered
    > WHERE Clause
    > Data filtering
    > Comparison operators
    > BETWEEN and NOT BETWEEN
    > IN
    > LIKE

##  Goal
    To strengthen SQL querying skills by practicing filtering and constraints using real examples.
