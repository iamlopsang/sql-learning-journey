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

            =====Hard=====

    -- 1. Display all buildings and the names of employees who work in them. Sort the results by building_name in ascending order.

    SELECT b.building_name, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    ORDER BY b.building_name ASC;

-- Explanation: Use LEFT JOIN to display all buildings and the names of employees working in each building, including buildings with no employees.
-- Sort the results by building name in ascending order.

-- 2. Display all buildings, their capacity, and the names and roles of employees working in each building. Include buildings that have no employees.

    SELECT b.building_name, b.capacity, e.name, e.role
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: Use LEFT JOIN to display all buildings, their capacity, and the names and roles of employees working in each building.
-- Buildings with no employees are also included.

-- 3. Display all buildings and the distinct employee roles working in each building. Include buildings that have no employees.

    SELECT DISTINCT b.building_name, e.role
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: Use LEFT JOIN to display all buildings and the distinct employee roles working in 
-- each building, including buildings with no employees.

-- 4. Display all buildings and the names of employees who have worked for more than 5 years. Include all buildings, even 
-- if they don't have employees who meet this condition.

    SELECT b.building_name, e.name, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed > 5;

-- Explanation: Use LEFT JOIN to keep all buildings and match only employees who have worked for more than 5 years. The condition is placed in the
-- ON clause so buildings without qualifying employees are still included.

    -- 5. Display all buildings, their capacity, and the names of employees who have been employed for 4 or more 
    -- years. Include buildings even if they don't have anemployee who meets this condition.

    SELECT b.building_name, b.capacity, e.name, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed >= 4;

-- Explanation: Use LEFT JOIN to keep all buildings and match only employees who have been employed for 4 or more years. The condition is placed in
-- the ON clause so buildings without qualifying employees are still included.

    -- 6. Display all buildings and the names of employees working in them, but only include employees who have worked for 6 or more years.
    -- Keep all buildings, even those with no qualifying employees.

    SELECT b.building_name, e.name, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed >= 6;

-- Explanation: Use LEFT JOIN to keep all buildings and match only employees who have been employed for 6 or more years.
-- Buildings without qualifying employees are also included.

    -- 7. Display all buildings, their capacity, and the roles of employees working in them. Show only 
    -- employees whose role is Engineer or Manager, but keep all buildings.

    SELECT b.building_name, b.capacity, e.role
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.role IN ('Engineer', 'Manager');  

-- Explanation: Use LEFT JOIN to keep all buildings and match only employees whose role is Engineer or Manager. The role condition is placed in the
-- ON clause so buildings without qualifying employees are still included.

    -- 8. Display all buildings and the names of employees working in them, but only include employees whose names start with D. Keep all buildings, 
    -- even if they have no employee whose name starts with D.

    SELECT b.building_name, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.name LIKE 'D%';

-- Explanation: Use LEFT JOIN to keep all buildings and match only employees whose names start with D. The condition is placed in the ON clause so
-- buildings without a matching employee are still included.

    -- 9. Display all buildings, their capacity, and employees who have worked for 4 or more years. Show only employees whose role is Engineer. 
    -- Keep all buildings, even if they don't have a qualifying employee.

    SELECT b.building_name, b.capacity, e.name, e.role, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed >= 4
    AND e.role = 'Engineer';

-- Explanation: Use LEFT JOIN to keep all buildings and match only Engineers who have been employed for 4 or more years. The employee conditions are
-- placed in the ON clause so buildings without qualifying employees remain included.


    -- 10. Display all buildings and the names of employees working in them, but only match employees who: have 
    -- worked for more than 5 years, AND are a Manager.All buildings must still be displayed, including 
    -- buildings with no matching employees.

    SELECT b.building_name, e.name, e.role, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed > 5
    AND e.role = 'Manager';

-- Explanation: Use LEFT JOIN to keep all buildings and match only Managers who have been employed for more than 5 years. The employee conditions are
-- placed in the ON clause so buildings without qualifying employees are included.

    -- 11. Display all buildings and the names of employees who work there, but only match employees whose names end with M.. Keep all buildings, even those without a
    -- matching employee.

    SELECT b.building_name, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.name LIKE '%M';

-- Explanation: Use LEFT JOIN to keep all buildings, even when there is no matching employee. The LIKE condition matches only employee names
-- that end with the letter M, while the ON clause preserves empty buildings.

    -- 12. Display all buildings and employee names, but only match employees who have been employed for more than 
    -- 5 years AND whose role is Manager. Keep all buildings.

    SELECT b.building_name, e.name, e.years_employed, e.role
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed > 5
    AND e.role = 'Manager';

-- Explanation: Use LEFT JOIN to keep all buildings and match only employees who have been employed for more than 5 years and whose role is Manager.
-- The conditions are placed in the ON clause so buildings without a matching employee are still included.

    -- 13. Display all buildings and employee names, but only match employees whose names start with D AND 
    -- who have been employed for at least 4 years. Keep all buildings.

    SELECT b.building_name, e.name, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed >= 4
    AND e.name LIKE 'D%';

-- Explanation: Use LEFT JOIN to keep all buildings and match only employees whose names start with D and who have been employed for at least 4 years.
-- The conditions are placed in the ON clause so buildings without a matching employee are still included.

