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



    