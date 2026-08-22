##  SQL Lesson :INNER JOIN
 
    This exercise focuses on using SQL INNER JOIN to combine related data from two tables: movies and boxoffice.

    Instead of working with information from only one table, INNER JOIN allows us to connect related records from multiple tables using matching values.

    This lesson also practices table aliases, filtering with WHERE, sorting with ORDER BY, claculations, TOP, BETWEEN, and IN.

##   Introduction to INNER JOIN:
     
     INNER JOIN is used to combine rows from two tables when there is a matching value between them.

     It is useful when the information we need is stored in different tables.

       
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

