================RIGHT JOIN PRACTICE====================

    -- 1. Display all employees and the building they work in.

    SELECT b.building_name, e.name
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: Use RIGHT JOIN to keep every employee and match their building information.

    -- 2. Display every employee and their building's capacity.

    SELECT b.capacity, e.name
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building;

-- Explanation: Use RIGHT JOIN to keep every employee and match their building capacity.

    -- 3. Display every employee and their building capacity, but only match buildings whose capacity is greater than 20.
    -- Keep every employee, even if their building's capacity is 20 or less.

    SELECT e.name, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND b.capacity > 20;

-- Explanation: Keep every employee and match only buildings with capacity greater than 20.

    -- 4. Display every employee and their building information.
    -- Only match employees whose role is either Artist or Manager.
    -- Keep every employee, including Engineers.

    SELECT e.name, b.capacity, b.building_name, e.role
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND e.role IN ('Artist', 'Manager');

-- Explanation: Keep every employee and match building information only for Artists or Managers.

    --5. Display every employee and their building capacity.
    -- Only match building information when the building's capacity is between 20 and 32, inclusive.
    -- Keep every employee, even if their building capacity is outside that range.

    SELECT e.name, b.capacity, b.building_name, e.role
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND b.capacity BETWEEN 20 AND 32;   

-- Explanation: Keep every employee and match only buildings with capacity between 20 and 32.

    -- 6. Display every employee and their building information.

    -- Only match building information when:
    -- the building capacity is greater than 20
    -- AND the employee has worked for the company for at least 4 years

    -- Keep every employee, regardless of whether they satisfy these conditions.

    SELECT b.building_name, b.capacity, e.name, e.years_employed
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND b.capacity > 20
    AND e.years_employed >= 4;

-- Explanation: Keep every employee and match building information only
--  when capacity is over 20 and employment is 4+ years.

    -- 7. Display every employee and their building name.

    -- Only match building information for employees who:
    -- have worked for the company for more than 5 years
    -- AND their name starts with S or D

    -- Keep every employee, even if they don't meet these conditions.

    SELECT b.building_name, e.name, e.years_employed
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed > 5
    AND (e.name LIKE 'S%' OR e.name LIKE 'D%');

-- Explanation: Keep every employee and match
--  building information for employees over 5 years whose names start with S or D.

    -- 8. Display every employee and their building information.

    -- Only match the building information when the building capacity is NOT between 20 and 32.
    -- Keep every employee, even if there is no match.

    SELECT b.building_name, e.name, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND b.capacity NOT BETWEEN 20 AND 32;

-- Explanation: Keep every employee and match only buildings outside the 20–32 capacity range.

    -- 9. Display every employee's name, role, and building.

    -- Only show building information when the employee:
    -- works in building 1e or 2w
    -- AND has worked for more than 3 years
    -- Keep every employee, even those who don't satisfy these conditions.

    SELECT b.building_name, e.name, e.years_employed
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND b.building_name IN ('1e', '2w')
    AND e.years_employed > 3;

-- Explanation: Keep every employee and match building information 
-- only for employees in 1e or 2w who have worked more than 3 years.

    -- 10. A company wants a list of all buildings and the employees assigned to them.

    -- However, they only want employees who have worked for the company for more than 5 years.
    -- Buildings with no qualifying employees should still appear.

    SELECT b.building_name, e.name, e.years_employed
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND e.years_employed > 5;

-- Explanation: Keep every employee and match building information only for employees with 5+ years.

    -- 11. Find employees who are Engineers or Managers, have worked for the company for more than 5 years,
    -- and whose names do not start with S.

    SELECT e.name, e.role, e.years_employed
    FROM employees AS e
    WHERE e.role IN ('Engineer', 'Manager')
    AND e.years_employed > 5
    AND e.name NOT LIKE 'S%';

-- Explanation: Filter Engineers and Managers with 5+ years whose names don't start with S.

    -- 12. Find employees who do not work in building 1e or 2w, and whose names contain the letter a.

    SELECT name, building
    FROM employees
    WHERE building NOT IN ('1e', '2w')
    AND name LIKE '%a%';

-- Explanation: Find employees outside 1e and 2w whose names contain "a".

    -- 13. Find employees who work in a building with a capacity greater than 20, but exclude Engineers.

    SELECT e.building, e.name, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE b.capacity > 20
    AND e.role != 'Engineer';

-- Explanation: Find non-engineers working in buildings with capacity over 20.

    -- 14. Find all buildings that have at least one employee who has worked for more than 5 years.

    SELECT DISTINCT e.building, e.name, e.years_employed
    FROM buildings AS b
    INNER JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.years_employed > 5;

-- Explanation: Join buildings with employees and keep employees with more than 5 years.

    -- 15. Find employees whose building does not exist in the buildings table.

    SELECT e.name, e.building
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE b.building_name IS NULL;

-- Explanation: Keep employees and find those with no matching building.

    -- 16. Find employees who are assigned to a building, but the building's capacity is missing.

    SELECT e.building, b.capacity, e.name
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE b.capacity IS NULL;

-- Explanation: Keep employees and find those whose building capacity is NULL.

    -- 17. Find all employees who work in building 2w, but display the building's capacity only if the 
    -- capacity is greater than 20.

    SELECT e.name, e.building, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.building = '2w'
    AND b.capacity >= 20;

-- Explanation: Find 2w employees and show the building capacity when it is 20 or more.

    -- 18. Find every employee whose building is 1e, and display their name, role, and building capacity.
    -- Only employees with at least 4 years of employment should have their building capacity displayed.

    SELECT b.capacity, e.building, e.name, e.role, e.years_employed
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.building = '1e'
    AND e.years_employed >= 4;

-- Explanation: Match employees with building 1e and show those who have worked for at least 4 years.

    -- 19. Find the employees who work in a building with the same capacity as building 1e.

    SELECT e.name, e.building, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND b.capacity = (
        SELECT capacity
        FROM buildings
        WHERE building_name = '1e'
    );

-- Explanation: Match employees to buildings whose capacity equals building 1e's capacity.

    -- 20. Find all employees whose building has a capacity of 20 or less.

    SELECT b.capacity, e.building, e.name
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE b.capacity <= 20;

-- Explanation: Match employees with their buildings and keep buildings with capacity 20 or less.

    --21. Find employees who work in building 1e or 2w and have worked for the company for at least 6 years.

    SELECT e.name, e.role, e.building, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.building IN ('1e', '2w')
    AND e.years_employed >= 6;

-- Explanation: Match employees to buildings and filter 1e/2w employees with 6+ years.

    --22. Find employees whose role is Artist or Manager and whose building has a capacity of exactly 20 or 24.

    SELECT e.name, e.role, e.building, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.role IN ('Artist', 'Manager')
    AND b.capacity IN (20, 24);

-- Explanation: Match employees to buildings, then filter Artists/Managers in 20 or 24 capacity buildings.


    --23.  Find employees who work in building 1e or 2w, but exclude employees whose names contain the letter a.

    SELECT e.name, e.building, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.building IN ('1e', '2w')
    AND e.name NOT LIKE '%a%';

-- Explanation: Match employees to buildings, then find 1e/2w employees whose names do not contain "a".

 --24. Find employees who are Engineers with more than 3 years of employment OR Artists with
    --  at least 7 years of employment.

    SELECT e.name, e.building, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    WHERE e.building IN ('1e', '2w')
    AND e.name NOT LIKE '%a%';

-- Explanation: Match employees with their buildings, then filter employees
--  in 1e or 2w whose names do not contain "a".

-- 25. Find every employee and show their building capacity, but only show the capacity when the building's capacity is greater than 20.
    -- If the building's capacity is 20 or less, the capacity should appear as NULL.

    SELECT e.name, e.building, b.capacity
    FROM buildings AS b
    RIGHT JOIN employees AS e
    ON b.building_name = e.building
    AND b.capacity > 20;

-- Explanation: Match each employee to their building only when the building
-- capacity is greater than 20; otherwise, the capacity appears as NULL.
