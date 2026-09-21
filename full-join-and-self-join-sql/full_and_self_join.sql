
=======================SELF JOIN=======================

    -- 1. Find each employee and their manager.

SELECT e.name AS employee_name,
       m.name AS manager_name
FROM employees AS e, employees AS m
WHERE e.manager_id = m.employee_id;

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match the employee's manager_id with the manager's employee_id.

    -- 2. Find all employees who report directly to Alice.

    SELECT e.name AS employee_name,
    m.name AS manager_name
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND m.name = 'Alice';

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match the employee's manager_id with the manager's employee_id.
-- Filter the manager's name to find employees who report directly to Alice.

    -- 3. Display every employee who has a manager.

    SELECT e.employee_id AS employee_id,
    e.name AS employee_name,
    m.name AS manager_name,
    e.department AS department
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id;

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match e.manager_id with m.employee_id to find each employee's manager.
-- Use e.department because the question asks for the employee's department.

    -- 4. Find employees whose manager works in the IT department.

    SELECT e.name AS employee_name,
    m.name AS manager_name,
    m.department AS manager_department
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND m.department = 'IT';

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match e.manager_id with m.employee_id to find the employee's manager.
-- Filter m.department to find managers who work in the IT department.

