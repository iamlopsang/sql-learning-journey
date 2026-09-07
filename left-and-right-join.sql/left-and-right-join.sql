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

    -- 14. Display all buildings, their capacity, and employee names, but only match employees who:
    -- are Engineers
    -- have been employed for 4 or more years
    -- have names that start with D

    -- Keep all buildings, even if no employee satisfies all three conditions.

    SELECT b.building_name, b.capacity, e.name, e.role, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.role = 'Engineer'
    AND e.years_employed >= 4
    AND e.name LIKE 'D%';

-- Explanation: Keep all buildings and match only Engineers named D with 4+ years.

-- 15. Display all buildings, their capacity, and employee names, but only match employees who:
-- are Artists OR Managers
-- have been employed for more than 5 years
-- have names that start with S or D

-- Keep all buildings, even if no employee matches all conditions.

    SELECT b.building_name, b.capacity, e.name, e.role, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.role IN ('Artist', 'Manager')
    AND e.years_employed > 5
    AND (e.name LIKE 'S%' OR e.name LIKE 'D%');

-- Explanation: Keep all buildings and match Artists or Managers with 5+ years whose names
-- start with S or D.

    -- 16. Display all buildings and the names of employees who work in them, but show only employees whose name 
    -- contains the letter a.Keep all buildings, including buildings with no matching employee.

    SELECT DISTINCT b.building_name, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.name LIKE '%a%';

-- Explanation: Keep all buildings and match only employees whose names contain the letter a.

    -- 17. Display every building and the capacity of the building, along with the names of employees working there.
    -- But only show employees who do NOT work in building 1e.
    -- Keep all buildings, including 1e and the empty buildings.

    SELECT b.building_name, b.capacity, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.building <> '1e';

-- Explanation: Keep all buildings and match only employees who do not work in 1e.

    -- 18. Display every building and its capacity, along with employee names.
    -- For buildings that have employees, show their names.
    -- For buildings with no employees, show the building with NULL for the employee name.

    SELECT b.building_name, b.capacity, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: LEFT JOIN keeps all buildings and shows NULL for buildings with no employees.

    -- 19. Display all buildings and employee names, but only show the buildings where the 
    -- employee name is available.

    SELECT DISTINCT b.building_name, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.name IS NOT NULL;

-- Explanation: Use LEFT JOIN and remove rows where the employee name is NULL.

    -- 20. Display every building, its capacity, and the employee's name.
    -- However:
    -- If a building has no employees, show NULL for the employee name.
    -- Do not show employees who have been employed for less than 3 years.
    -- Keep all buildings, even if they have no employee who meets the condition.

    SELECT b.building_name, b.capacity, e.name, e.years_employed
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed >= 3;

-- Explanation: Keep all buildings and match employees with 3 or more years of experience.

    -- 21. Display all buildings and their capacity, along with the names of employees working in each building.

    -- But:
    -- Show employees who work in building 1e or 2w
    -- Keep all buildings in the result, including 1w and 2e

    SELECT b.building_name, b.capacity, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.building IN ('1e', '2w');     

-- Explanation: Keep all buildings and match employees only from 1e or 2w.

    -- 22. Display all buildings and the names of employees who work there.
    -- But exclude employees whose names contain the letter a.
    -- Keep all buildings, including buildings that have no employees remaining after the condition.

    SELECT b.building_name, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.name NOT LIKE '%a%';

-- Explanation: Keep all buildings and match only employees whose names do not contain the letter a.

    -- 23. Display all buildings and their capacity, along with employee names.
    -- But only match employees whose building is NOT 2w.
    -- Keep all buildings, including 2w.

    SELECT b.building_name, b.capacity, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND e.building <> '2w';

-- Explanation: Keep all buildings and match only employees who are not in 2w.

    -- Display all buildings and their capacity, along with employee names.
    -- Only match employees who work in a building whose capacity is greater than 20.
    -- Keep all buildings, including buildings whose capacity is 20 or less.


    SELECT b.building_name, b.capacity, e.name
    FROM buildings AS b
    LEFT JOIN employees AS e
    ON b.building_name = e.building
    AND b.capacity > 20;

-- Explanation: Keep all buildings and match employees only in buildings with capacity over 20.