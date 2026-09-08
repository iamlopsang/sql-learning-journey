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

    