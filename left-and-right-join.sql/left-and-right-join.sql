    -- 1. Find the list of all buildings that have employees.

        SELECT *
        FROM buildings
        INNER JOIN employees
        ON buildings.building_name = employees.building;

-- Explanation: Join the buildings and employees tables using the building name.INNER JOIN only 
-- displays buildings that have at least one matching employee.

    -- 2. Find the list of all buildings and their capacity.

        SELECT building_name, capacity
        FROM buildings;

-- Explanation: Display the building name and capacity from the buildings table. No JOIN is needed 
-- because both columns are already in the buildings table.


   -- 3. List all buildings and the distinct employee roles in each building
        -- including empty buildings.

        SELECT DISTINCT b.building_name, e.role
        FROM buildings AS b
        LEFT JOIN employees AS e
        ON b.building_name = e.building;

-- Explanation: Join the buildings and employees tables using the building name. LEFT JOIN displays ALL
--  buildings, including buildings that have no employees. DISTINCT removes duplicate building-role 
--  combinations. Empty buildings will show NULL for the employee role.

                   ==== Basic ===

    -- a. Display all buildings and the names of employees working in each building.
  
    SELECT b.building_name, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: Use LEFT JOIN to display all buildings and the employees working in each building,
-- including buildings that have no employees.

    -- b. Display all buildings and the employee roles working in each building.

    SELECT b.building_name, e.role
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: Use LEFT JOIN to display all buildings and the employee roles in each building,
-- including buildings that have no employees.

    -- c. Display all buildings, their capacity, and the names of employees working in each building.

    SELECT b.building_name, b.capacity, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: Use LEFT JOIN to display all buildings, their capacity, and the names of employees
-- working in each building, including empty buildings.

    -- d. Display all buildings and the years each employee has been employed.

    SELECT b.building_name, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: Use LEFT JOIN to display all buildings and the number of years each employee has been 
--employed, including buildings with no employees.

    -- e. Display all buildings and the names of employees who work in them, but only show employees who have worked for more than 5 years.
            
    SELECT b.building_name, e.name, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.years_employed > 5;

-- Explanation: Use LEFT JOIN to connect buildings with their employees and display employees who 
--have worked for more than 5 years.


        