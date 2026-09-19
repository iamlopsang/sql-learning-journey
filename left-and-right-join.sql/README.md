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
        
   ###  Introduction to OUTER JOIN

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

    ### Table Overview 

        Table Name: buildings
        Columns include:
            > building_name
            > capacity

        Table name: employees
        Columns include:
            > role
            > name
            > building
            > years_employed

    The table is shown below, and the queries of select.sql file are solved based on this dataset.


        | Table: buildings                        |
        |------------------------------|
        | building_name                | capacity |
        | 1e                           | 24       |
        | 1w                           | 32       |
        | 2e                           | 16       |
        | 2w                           | 20       |


        | Table: employees                                                     |
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

    ### LEFT JOIN
        ## What is LEFT JOIN?

        A LEFT JOIN returns:

        All rows from the left table, plus matching rows from the right table.
        If there is no matching row in the right table, SQL returns NULL for the right table's columns.

            Basic Syntax:

                SELECT columns
                FROM table1 AS t1
                LEFT JOIN table2 AS t2
                ON t1.column = t2.column;

        The table after FROM is the left table.

    The table after LEFT JOIN is the right table.

        Example of LEFT JOIN:
            SQL:-

            SELECT b.building_name, b.capacity, e.name
            FROM buildings AS b
            LEFT JOIN employees AS e
            ON b.building_name = e.building;

    Explanation: Keep every building and match employees who work in each building.

    Here:

        buildings = LEFT table
        employees = RIGHT table

    Therefore, all buildings are preserved.

        If a building has no matching employee, the employee columns will contain NULL.

        LEFT JOIN Visual Idea

        LEFT TABLE                    RIGHT TABLE

        buildings                      employees
        ↓                               ↓
        ALL          +          MATCHING ROWS

        ## Think:

            LEFT JOIN = Keep everything from the LEFT table

    ### RIGHT JOIN
    What is RIGHT JOIN?

        A RIGHT JOIN returns:

        All rows from the right table, plus matching rows from the left table.

        If there is no matching row in the left table, SQL returns NULL for the left table's columns.

            Basic Syntax:

                SELECT columns
                FROM table1 AS t1
                RIGHT JOIN table2 AS t2
                ON t1.column = t2.column;

        The table after RIGHT JOIN is the table that is preserved.

    Example of RIGHT JOIN:
        SQL:-

            SELECT e.name, e.building, b.capacity
            FROM buildings AS b
            RIGHT JOIN employees AS e
            ON b.building_name = e.building;   

        Explanation: Keep every employee and match their building information. 

        Here:

        buildings = LEFT table
        employees = RIGHT table

        Because employees is on the right side:

        "Every employee is preserved."

        If an employee does not have a matching building, the building columns will contain NULL.

    ###  LEFT JOIN vs RIGHT JOIN

        The easiest way to remember the difference:

        JOIN	Preserves
        LEFT JOIN	Left table
        RIGHT JOIN	Right table
        INNER JOIN	Only matching rows

        ## LEFT JOIN:

            FROM buildings AS b
            LEFT JOIN employees AS e

            Keeps:
                ALL buildings

        ## RIGHT JOIN:

            FROM buildings AS b
            RIGHT JOIN employees AS e

            Keeps:
                ALL employees
                    
    ## Important Rule: JOIN Direction

        The word LEFT or RIGHT refers to the position of the table in the query, not whether the table is naturally "important."

            For example:

            FROM buildings AS b
            LEFT JOIN employees AS e

        buildings is the left table.

            FROM buildings AS b
            RIGHT JOIN employees AS e

        employees is the right table.

        Therefore:

            LEFT JOIN  → preserve the table on the LEFT
            RIGHT JOIN → preserve the table on the RIGHT     

    ### RIGHT JOIN Can Be Rewritten as LEFT JOIN:

        A useful SQL concept is that a RIGHT JOIN can usually be rewritten as a LEFT JOIN by switching the order of the tables.

        For example:

            FROM buildings AS b
            RIGHT JOIN employees AS e
            ON b.building_name = e.building;

        can be written as:

            FROM employees AS e
            LEFT JOIN buildings AS b
            ON b.building = e.building_name;

    Both approaches preserve all employees.

    This is useful to understand because many SQL developers prefer LEFT JOIN for consistency, but knowing RIGHT JOIN helps you understand how JOIN direction works.  

    ## Understanding NULL with OUTER JOIN:

        NULL means that SQL could not find a matching value for that side of the JOIN.

        For example:

            SELECT b.building_name, e.name
            FROM buildings AS b
            LEFT JOIN employees AS e
            ON b.building_name = e.building;

    If a building has no employee:

        building_name    name
        -------------    ----
        2e               NULL

    The building still appears because LEFT JOIN preserves the buildings.

        ## Checking for NULL:-

        To check for NULL, use:

        IS NULL

        Example:

            SELECT e.name, b.capacity
            FROM buildings AS b
            RIGHT JOIN employees AS e
            ON b.building_name = e.building
            WHERE b.capacity IS NULL;   

        Explanation: Find employees whose building information did not match a building.

    ##  Note:-

        Do not use:

        = NULL

        Instead use:

        IS NULL

        or:

        IS NOT NULL

    ###  ON vs WHERE with LEFT and RIGHT JOIN:

    This is one of the most important concepts from this lesson.
    A condition placed in ON can control which rows are matched while still preserving the main table.

    A condition placed in WHERE filters the final result.

        Example: Condition in ON
        SELECT e.name, e.building, b.capacity
        FROM buildings AS b
        RIGHT JOIN employees AS e
        ON b.building_name = e.building
        AND b.capacity > 20;

        Explanation: Keep every employee, but match building information only when capacity is above 20.

    Employees whose building has capacity 20 or less can still appear, but the building information can become NULL.

        Example: Condition in WHERE
        SELECT e.name, e.building, b.capacity
        FROM buildings AS b
        RIGHT JOIN employees AS e
        ON b.building_name = e.building
        WHERE b.capacity > 20;

    Explanation: Match employees to buildings first, then keep only rows where capacity is above 20.

    This can remove employees whose building does not satisfy the condition.

    ## Note:- (Important idea)
    
        ON    → controls matching
        WHERE → filters the final result

        This distinction is especially important when working with LEFT JOIN and RIGHT JOIN.

    ### Filtering with WHERE:

        After joining the tables, WHERE can be used to filter the results.

            Example:

                SELECT e.name, e.role, e.building
                FROM buildings AS b
                RIGHT JOIN employees AS e
                ON b.building_name = e.building
                WHERE e.role = 'Engineer';

            Explanation: Match employees to buildings, then show only Engineers.

    ### Using AND:

        AND requires all conditions to be true.

            Example:

                SELECT e.name, e.role, e.years_employed
                FROM buildings AS b
                RIGHT JOIN employees AS e
                ON b.building_name = e.building
                WHERE e.role = 'Engineer'
                AND e.years_employed >= 4;

            Explanation: Show Engineers who have worked for at least 4 years.

    Both conditions must be satisfied.

    ### Using OR:

        OR allows either condition to be true.

            Example:

                SELECT e.name, e.role
                FROM buildings AS b
                RIGHT JOIN employees AS e
                ON b.building_name = e.building
                WHERE e.role = 'Engineer'
                OR e.role = 'Artist';

            Explanation: Show employees who are either Engineers or Artists.

    ### AND + OR with Parentheses:

        Parentheses are important when combining AND and OR.

            Example:

                SELECT e.name, e.role, e.years_employed
                FROM buildings AS b
                RIGHT JOIN employees AS e
                ON b.building_name = e.building
                WHERE (e.role = 'Engineer' AND e.years_employed > 3)
                OR (e.role = 'Artist' AND e.years_employed >= 7);

            Explanation: Find experienced Engineers or experienced Artists using two separate conditions.

        The parentheses make the intended logic clear.

    