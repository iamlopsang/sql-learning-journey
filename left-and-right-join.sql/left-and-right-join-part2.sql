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

    