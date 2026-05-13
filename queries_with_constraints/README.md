##  SQL Lesson 3- Queries with Constraints (Pt. 2)

    This exercise focuses on using advanced SQL filtering techniques with the WHERE clause, logical operators, pattern matching, and rage conditions.
    These queries help retrieve specific records from a movies database by applying different constraints and search patterns.


##  Introduction to SQL Constraints:

    SQL constraints in queries are used to limit the rows returned from a table based on conditions.

    Using constraints allows us to:
        > retrieve only meaningful data,
        > combine multiple conditions,
        > search using patterns,
        > improve query accuracy and readability.

##  SQL Operators Used in This Lesson:

    ##  Comparison Operators:

            | Operator | Meaning                  |
            | -------- | ------------------------ |
            | `=`      | Equal to                 |
            | `!=`     | Not equal to             |
            | `>`      | Greater than             |
            | `<`      | Less than                |
            | `>=`     | Greater than or equal to |
            | `<=`     | Less than or equal to    |

    ##  Logical Operators:

            | Operator | Meaning                             |
            | -------- | ----------------------------------- |
            | `AND`    | Both conditions must be true        |
            | `OR`     | At least one condition must be true |
            | `NOT`    | Reverses a condition                |

    ##  Pattern Matching Operators:

            | Operator        | Meaning                |
            | --------------- | ---------------------- |
            | `LIKE 'Text%'`  | Starts with            |
            | `LIKE '%Text%'` | Contains               |
            | `LIKE '%Text'`  | Ends with              |
            | `NOT LIKE`      | Does not match pattern |

    ##  Range and List Operators:

            | Operator              | Meaning                  |
            | --------------------- | ------------------------ |
            | `BETWEEN ... AND ...` | Value within a range     |
            | `IN (...)`            | Matches values in a list |

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
        📄 queries-with-constraints-part-2.sql

    Example Queries:
    1.Find all the Toy Story movies.
       
        SELECT * FROM movies 
        WHERE title LIKE "Toy Story%";

     Explanation: This query selects all columns from the 'movies' table where the 'title' starts with "Toy Story". The 'LIKE' operator is used to filter the results based on a specified pattern, and the '%' wildcard character allows for any characters to follow "Toy Story" in the title.

##  What I Learned?

    > How to use "LIKE" with wildcard patterns.
    > How to combine conditions using "AND" and "OR".
    > How to filter records using IN and BETWEEN.
    > How to exclude results using NOT and !=.
    > How to write cleaner and more efficient SQL queries.

##  Skill Covered:

    > WHERE Clause,
    > Logical Operators(AND, OR, NOT),
    > Pattern Matching with "LIKE",
    > Filtering using "IN",
    > Range filtering using "BETWEEN",
    > SQL Query Constraints.

##  Goal:

    To strengthen SQL querying skills by practicing advanced filtering techniques and constraints using real world movie database examples.