=============== SQL LESSON - LEFT AND RIGHT JOIN ===================

    This lesson focuses on using 'LEFT JOIN' and 'RIGHT JOIN' to combine related data from two tables:
        > buildings
        > employees

    The main goal of this lesson is to understand how 'JOIN' direction affects which records are preserved, how unmatched records produce NULL values, and how filtering conditions can change the result of an outer join.

        This lesson also practices:

        > ON
        > WHERE
        > AND
        > OR
        > NOT
        > IN
        > BETWEEN
        > LIKE
        > NOT LIKE
        > IS NULL
        > ORDER BY
        > DISTINCT
        > Table aliases
        > Filtering joined data
        > NULL handling
        
    ##  Introduction to OUTER JOIN

        Unlike INNER JOIN, which returns only matching records from both tables, LEFT JOIN and RIGHT JOIN can keep records that do not have a match.

        The two types covered in this lesson are:

        > LEFT JOIN
        > RIGHT JOIN

        The main difference is which table is preserved.

        ## Tables Used

          This lesson uses two tables:

            buildings
                |
                | building_name = building
                |
            employees

        The tables are related through the building name.

            For example:

            buildings.building_name
                    ↓
            employees.building

        This relationship allows us to find which employees work in which buildings.



        | Table: buildings (Read-only) |
|------------------------------|
| building_name                | capacity |
| 1e                           | 24       |
| 1w                           | 32       |
| 2e                           | 16       |
| 2w                           | 20       |


    | Table: employees (Read-only) |
|-----------------------------|
| role                        | name       | building | years_employed |
| Engineer                    | Becky A.   | 1e       | 4              |
| Engineer                    | Dan B.     | 1e       | 2              |
| Engineer                    | Sharon F.  | 1e       | 6              |
| Engineer                    | Dan M.     | 1e       | 4              |
| Engineer                    | Malcom S.  | 1e       | 1              |
| Artist                      | Tylar S.   | 2w       | 2              |
| Artist                      | Sherman D. | 2w       | 8              |
| Artist                      | Jakob J.   | 2w       | 6              |
| Artist                      | Lillia A.  | 2w       | 7              |
| Artist                      | Brandon J. | 2w       | 7              |
| Manager                     | Scott K.   | 1e       | 9              |
| Manager                     | Shirlee M. | 1e       | 3              |
| Manager                     | Daria O.   | 2w       | 6              |
